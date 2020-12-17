.class Lcom/android/server/wm/RecentTasks;
.super Ljava/lang/Object;
.source "RecentTasks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RecentTasks$Callbacks;
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x5

.field private static final FREEZE_TASK_LIST_TIMEOUT_MS:J

.field private static final NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

.field private static final NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_TASKS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TASK_ID_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/wm/TaskRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveTasksSessionDurationMs:J

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/RecentTasks$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mFreezeTaskListReordering:Z

.field private mFreezeTaskListTimeoutMs:J

.field private mGlobalMaxNumTasks:I

.field private mHasVisibleRecentTasks:Z

.field private final mListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

.field private mMaxNumVisibleTasks:I

.field private mMinNumVisibleTasks:I

.field private final mPersistedTaskIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentsComponent:Landroid/content/ComponentName;

.field private mRecentsUid:I

.field private final mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field private final mTaskPersister:Lcom/android/server/wm/TaskPersister;

.field private final mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpAvailActCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpAvailAppCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

.field private final mTmpRecents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

.field private final mUxPerf:Landroid/util/BoostFramework;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 121
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/wm/RecentTasks;->FREEZE_TASK_LIST_TIMEOUT_MS:J

    .line 124
    sget-object v0, Lcom/android/server/wm/-$$Lambda$RecentTasks$KPkDUQ9KJ-vmXlmV8HHAucQJJdQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RecentTasks$KPkDUQ9KJ-vmXlmV8HHAucQJJdQ;

    sput-object v0, Lcom/android/server/wm/RecentTasks;->TASK_ID_COMPARATOR:Ljava/util/Comparator;

    .line 129
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    sput-object v0, Lcom/android/server/wm/RecentTasks;->NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

    .line 130
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    sput-object v0, Lcom/android/server/wm/RecentTasks;->NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;)V
    .registers 12
    .param p1, "service"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "stackSupervisor"  # Lcom/android/server/wm/ActivityStackSupervisor;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    .line 164
    new-instance v0, Landroid/util/SparseBooleanArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    .line 171
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    .line 189
    sget-wide v0, Lcom/android/server/wm/RecentTasks;->FREEZE_TASK_LIST_TIMEOUT_MS:J

    iput-wide v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListTimeoutMs:J

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    .line 195
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    .line 196
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUxPerf:Landroid/util/BoostFramework;

    .line 199
    new-instance v0, Lcom/android/server/wm/RecentTasks$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentTasks$1;-><init>(Lcom/android/server/wm/RecentTasks;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 224
    new-instance v0, Lcom/android/server/wm/-$$Lambda$Z9QEXZevRsInPMEXX0zFWg8YGMQ;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$Z9QEXZevRsInPMEXX0zFWg8YGMQ;-><init>(Lcom/android/server/wm/RecentTasks;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    .line 237
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    .line 238
    .local v0, "systemDir":Ljava/io/File;
    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 239
    .local v7, "res":Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 240
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 241
    new-instance v8, Lcom/android/server/wm/TaskPersister;

    iget-object v6, p2, Lcom/android/server/wm/ActivityStackSupervisor;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    move-object v1, v8

    move-object v2, v0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/TaskPersister;-><init>(Ljava/io/File;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/RecentTasks;Lcom/android/server/wm/PersisterQueue;)V

    iput-object v8, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    .line 243
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxRecentTasksStatic()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/RecentTasks;->mGlobalMaxNumTasks:I

    .line 244
    const v1, 0x1110089

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/RecentTasks;->mHasVisibleRecentTasks:Z

    .line 245
    invoke-virtual {p0, v7}, Lcom/android/server/wm/RecentTasks;->loadParametersFromResources(Landroid/content/res/Resources;)V

    .line 246
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/TaskPersister;)V
    .registers 5
    .param p1, "service"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "taskPersister"  # Lcom/android/server/wm/TaskPersister;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    .line 164
    new-instance v0, Landroid/util/SparseBooleanArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    .line 171
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    .line 189
    sget-wide v0, Lcom/android/server/wm/RecentTasks;->FREEZE_TASK_LIST_TIMEOUT_MS:J

    iput-wide v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListTimeoutMs:J

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    .line 195
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    .line 196
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUxPerf:Landroid/util/BoostFramework;

    .line 199
    new-instance v0, Lcom/android/server/wm/RecentTasks$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentTasks$1;-><init>(Lcom/android/server/wm/RecentTasks;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 224
    new-instance v0, Lcom/android/server/wm/-$$Lambda$Z9QEXZevRsInPMEXX0zFWg8YGMQ;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$Z9QEXZevRsInPMEXX0zFWg8YGMQ;-><init>(Lcom/android/server/wm/RecentTasks;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    .line 229
    iput-object p1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 230
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 231
    iput-object p2, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    .line 232
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxRecentTasksStatic()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mGlobalMaxNumTasks:I

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mHasVisibleRecentTasks:Z

    .line 234
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/RecentTasks;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/RecentTasks;

    .line 110
    iget-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/RecentTasks;)Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/RecentTasks;

    .line 110
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object v0
.end method

.method private canAddTaskWithoutTrim(Lcom/android/server/wm/TaskRecord;)Z
    .registers 4
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;

    .line 806
    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTasks;->findRemoveIndexForAddTask(Lcom/android/server/wm/TaskRecord;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private findRemoveIndexForAddTask(Lcom/android/server/wm/TaskRecord;)I
    .registers 20
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;

    .line 1459
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_a

    .line 1461
    return v3

    .line 1464
    :cond_a
    iget-object v2, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1465
    .local v2, "recentsCount":I
    iget-object v4, v1, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    .line 1466
    .local v4, "intent":Landroid/content/Intent;
    const/4 v6, 0x1

    if-eqz v4, :cond_1d

    invoke-virtual {v4}, Landroid/content/Intent;->isDocument()Z

    move-result v7

    if-eqz v7, :cond_1d

    move v7, v6

    goto :goto_1e

    :cond_1d
    const/4 v7, 0x0

    .line 1467
    .local v7, "document":Z
    :goto_1e
    iget v8, v1, Lcom/android/server/wm/TaskRecord;->maxRecents:I

    sub-int/2addr v8, v6

    .line 1468
    .local v8, "maxRecents":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_22
    if-ge v9, v2, :cond_b8

    .line 1469
    iget-object v10, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/TaskRecord;

    .line 1470
    .local v10, "tr":Lcom/android/server/wm/TaskRecord;
    if-eq v1, v10, :cond_b7

    .line 1471
    invoke-direct {v0, v1, v10}, Lcom/android/server/wm/RecentTasks;->hasCompatibleActivityTypeAndWindowingMode(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/TaskRecord;)Z

    move-result v11

    if-eqz v11, :cond_b2

    iget v11, v1, Lcom/android/server/wm/TaskRecord;->userId:I

    iget v12, v10, Lcom/android/server/wm/TaskRecord;->userId:I

    if-eq v11, v12, :cond_3c

    .line 1473
    goto/16 :goto_b2

    .line 1475
    :cond_3c
    iget-object v11, v10, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    .line 1476
    .local v11, "trIntent":Landroid/content/Intent;
    iget-object v12, v1, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v12, :cond_4e

    iget-object v12, v1, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v13, v10, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    .line 1477
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4e

    move v12, v6

    goto :goto_4f

    :cond_4e
    const/4 v12, 0x0

    .line 1478
    .local v12, "sameAffinity":Z
    :goto_4f
    if-eqz v4, :cond_59

    invoke-virtual {v4, v11}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v13

    if-eqz v13, :cond_59

    move v13, v6

    goto :goto_5a

    :cond_59
    const/4 v13, 0x0

    .line 1479
    .local v13, "sameIntent":Z
    :goto_5a
    const/4 v14, 0x0

    .line 1480
    .local v14, "multiTasksAllowed":Z
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v15

    .line 1481
    .local v15, "flags":I
    const/high16 v16, 0x10080000

    and-int v16, v15, v16

    if-eqz v16, :cond_6c

    const/high16 v16, 0x8000000

    and-int v16, v15, v16

    if-eqz v16, :cond_6c

    .line 1483
    const/4 v14, 0x1

    .line 1485
    :cond_6c
    if-eqz v11, :cond_77

    invoke-virtual {v11}, Landroid/content/Intent;->isDocument()Z

    move-result v16

    if-eqz v16, :cond_77

    move/from16 v16, v6

    goto :goto_79

    :cond_77
    const/16 v16, 0x0

    .line 1486
    .local v16, "trIsDocument":Z
    :goto_79
    if-eqz v7, :cond_80

    if-eqz v16, :cond_80

    move/from16 v17, v6

    goto :goto_82

    :cond_80
    const/16 v17, 0x0

    .line 1487
    .local v17, "bothDocuments":Z
    :goto_82
    if-nez v12, :cond_89

    if-nez v13, :cond_89

    if-nez v17, :cond_89

    .line 1488
    goto :goto_b2

    .line 1491
    :cond_89
    if-eqz v17, :cond_ad

    .line 1493
    iget-object v5, v1, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_9f

    iget-object v5, v10, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_9f

    iget-object v5, v1, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v6, v10, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 1495
    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9f

    const/4 v5, 0x1

    goto :goto_a0

    :cond_9f
    const/4 v5, 0x0

    .line 1496
    .local v5, "sameActivity":Z
    :goto_a0
    if-nez v5, :cond_a3

    .line 1499
    goto :goto_b2

    .line 1500
    :cond_a3
    if-lez v8, :cond_ac

    .line 1501
    add-int/lit8 v8, v8, -0x1

    .line 1502
    if-eqz v13, :cond_b2

    if-eqz v14, :cond_ac

    .line 1506
    goto :goto_b2

    .line 1511
    .end local v5  # "sameActivity":Z
    :cond_ac
    goto :goto_b7

    :cond_ad
    if-nez v7, :cond_b2

    if-eqz v16, :cond_ac

    .line 1513
    nop

    .line 1468
    .end local v10  # "tr":Lcom/android/server/wm/TaskRecord;
    .end local v11  # "trIntent":Landroid/content/Intent;
    .end local v12  # "sameAffinity":Z
    .end local v13  # "sameIntent":Z
    .end local v14  # "multiTasksAllowed":Z
    .end local v15  # "flags":I
    .end local v16  # "trIsDocument":Z
    .end local v17  # "bothDocuments":Z
    :cond_b2
    :goto_b2
    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x1

    goto/16 :goto_22

    .line 1516
    .restart local v10  # "tr":Lcom/android/server/wm/TaskRecord;
    :cond_b7
    :goto_b7
    return v9

    .line 1518
    .end local v9  # "i":I
    .end local v10  # "tr":Lcom/android/server/wm/TaskRecord;
    :cond_b8
    return v3
.end method

.method private getRecentTasksImpl(IIZZII)Ljava/util/ArrayList;
    .registers 22
    .param p1, "maxNum"  # I
    .param p2, "flags"  # I
    .param p3, "getTasksAllowed"  # Z
    .param p4, "getDetailedTasks"  # Z
    .param p5, "userId"  # I
    .param p6, "callingUid"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZZII)",
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 873
    move-object v6, p0

    move/from16 v7, p5

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    move v4, v0

    .line 875
    .local v4, "withExcluded":Z
    const/4 v0, 0x4

    invoke-virtual {p0, v7, v0}, Lcom/android/server/wm/RecentTasks;->isUserRunning(II)Z

    move-result v0

    const-string v8, "ActivityTaskManager"

    if-nez v0, :cond_33

    .line 876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is still locked. Cannot load recents"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 879
    :cond_33
    invoke-virtual {p0, v7}, Lcom/android/server/wm/RecentTasks;->loadUserRecentsLocked(I)V

    .line 881
    invoke-virtual {p0, v7}, Lcom/android/server/wm/RecentTasks;->getProfileIds(I)Ljava/util/Set;

    move-result-object v9

    .line 882
    .local v9, "includedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 884
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 885
    .local v10, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    iget-object v0, v6, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 886
    .local v11, "size":I
    const/4 v0, 0x0

    .line 887
    .local v0, "numVisibleTasks":I
    const/4 v1, 0x0

    move v12, v1

    .local v12, "i":I
    :goto_50
    if-ge v12, v11, :cond_171

    .line 888
    iget-object v1, v6, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/server/wm/TaskRecord;

    .line 890
    .local v13, "tr":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {p0, v13}, Lcom/android/server/wm/RecentTasks;->isVisibleRecentTask(Lcom/android/server/wm/TaskRecord;)Z

    move-result v1

    if-eqz v1, :cond_169

    .line 891
    add-int/lit8 v14, v0, 0x1

    .line 894
    .end local v0  # "numVisibleTasks":I
    .local v14, "numVisibleTasks":I
    move-object v0, p0

    move-object v1, v13

    move v2, v12

    move v3, v14

    move/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/RecentTasks;->isInVisibleRange(Lcom/android/server/wm/TaskRecord;IIZI)Z

    move-result v0

    if-eqz v0, :cond_163

    .line 907
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    move/from16 v1, p1

    if-lt v0, v1, :cond_7b

    .line 908
    move/from16 v2, p6

    goto/16 :goto_167

    .line 912
    :cond_7b
    iget v0, v13, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    .line 913
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v0, :cond_9f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping, not user: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9f
    move/from16 v2, p6

    goto/16 :goto_167

    .line 917
    :cond_a3
    iget-boolean v0, v13, Lcom/android/server/wm/TaskRecord;->realActivitySuspended:Z

    if-eqz v0, :cond_c3

    .line 918
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v0, :cond_bf

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping, activity suspended: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bf
    move/from16 v2, p6

    goto/16 :goto_167

    .line 922
    :cond_c3
    if-nez p3, :cond_ee

    .line 925
    invoke-virtual {v13}, Lcom/android/server/wm/TaskRecord;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_eb

    iget v0, v13, Lcom/android/server/wm/TaskRecord;->effectiveUid:I

    move/from16 v2, p6

    if-eq v0, v2, :cond_f0

    .line 926
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v0, :cond_167

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping, not allowed: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_167

    .line 925
    :cond_eb
    move/from16 v2, p6

    goto :goto_f0

    .line 922
    :cond_ee
    move/from16 v2, p6

    .line 931
    :cond_f0
    :goto_f0
    iget-boolean v0, v13, Lcom/android/server/wm/TaskRecord;->autoRemoveRecents:Z

    if-eqz v0, :cond_113

    invoke-virtual {v13}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_113

    .line 933
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v0, :cond_167

    .line 934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping, auto-remove without activity: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_167

    .line 938
    :cond_113
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_134

    iget-boolean v0, v13, Lcom/android/server/wm/TaskRecord;->isAvailable:Z

    if-nez v0, :cond_134

    .line 939
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v0, :cond_167

    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping, unavail real act: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_167

    .line 945
    :cond_134
    iget-boolean v0, v13, Lcom/android/server/wm/TaskRecord;->mUserSetupComplete:Z

    if-nez v0, :cond_151

    .line 947
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v0, :cond_167

    .line 948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping, user setup not complete: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_167

    .line 953
    :cond_151
    invoke-virtual {p0, v13}, Lcom/android/server/wm/RecentTasks;->createRecentTaskInfo(Lcom/android/server/wm/TaskRecord;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    .line 954
    .local v0, "rti":Landroid/app/ActivityManager$RecentTaskInfo;
    if-nez p4, :cond_15f

    .line 955
    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 958
    :cond_15f
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_167

    .line 894
    .end local v0  # "rti":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_163
    move/from16 v1, p1

    move/from16 v2, p6

    .line 887
    .end local v13  # "tr":Lcom/android/server/wm/TaskRecord;
    :cond_167
    :goto_167
    move v0, v14

    goto :goto_16d

    .line 890
    .end local v14  # "numVisibleTasks":I
    .local v0, "numVisibleTasks":I
    .restart local v13  # "tr":Lcom/android/server/wm/TaskRecord;
    :cond_169
    move/from16 v1, p1

    move/from16 v2, p6

    .line 887
    .end local v13  # "tr":Lcom/android/server/wm/TaskRecord;
    :goto_16d
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_50

    :cond_171
    move/from16 v1, p1

    move/from16 v2, p6

    .line 960
    .end local v12  # "i":I
    return-object v10
.end method

.method private hasCompatibleActivityTypeAndWindowingMode(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/TaskRecord;)Z
    .registers 15
    .param p1, "t1"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "t2"  # Lcom/android/server/wm/TaskRecord;

    .line 1777
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getActivityType()I

    move-result v0

    .line 1778
    .local v0, "activityType":I
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getWindowingMode()I

    move-result v1

    .line 1779
    .local v1, "windowingMode":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_e

    move v4, v2

    goto :goto_f

    :cond_e
    move v4, v3

    .line 1780
    .local v4, "isUndefinedType":Z
    :goto_f
    if-nez v1, :cond_13

    move v5, v2

    goto :goto_14

    :cond_13
    move v5, v3

    .line 1781
    .local v5, "isUndefinedMode":Z
    :goto_14
    invoke-virtual {p2}, Lcom/android/server/wm/TaskRecord;->getActivityType()I

    move-result v6

    .line 1782
    .local v6, "otherActivityType":I
    invoke-virtual {p2}, Lcom/android/server/wm/TaskRecord;->getWindowingMode()I

    move-result v7

    .line 1783
    .local v7, "otherWindowingMode":I
    if-nez v6, :cond_20

    move v8, v2

    goto :goto_21

    :cond_20
    move v8, v3

    .line 1784
    .local v8, "isOtherUndefinedType":Z
    :goto_21
    if-nez v7, :cond_25

    move v9, v2

    goto :goto_26

    :cond_25
    move v9, v3

    .line 1788
    .local v9, "isOtherUndefinedMode":Z
    :goto_26
    if-eq v0, v6, :cond_2f

    if-nez v4, :cond_2f

    if-eqz v8, :cond_2d

    goto :goto_2f

    :cond_2d
    move v10, v3

    goto :goto_30

    :cond_2f
    :goto_2f
    move v10, v2

    .line 1790
    .local v10, "isCompatibleType":Z
    :goto_30
    if-eq v1, v7, :cond_39

    if-nez v5, :cond_39

    if-eqz v9, :cond_37

    goto :goto_39

    :cond_37
    move v11, v3

    goto :goto_3a

    :cond_39
    :goto_39
    move v11, v2

    .line 1793
    .local v11, "isCompatibleMode":Z
    :goto_3a
    if-eqz v10, :cond_3f

    if-eqz v11, :cond_3f

    goto :goto_40

    :cond_3f
    move v2, v3

    :goto_40
    return v2
.end method

.method private isActiveRecentTask(Lcom/android/server/wm/TaskRecord;Landroid/util/SparseBooleanArray;)Z
    .registers 8
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "quietProfileUserIds"  # Landroid/util/SparseBooleanArray;

    .line 1276
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isActiveRecentTask: task="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " globalMax="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/RecentTasks;->mGlobalMaxNumTasks:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    :cond_24
    iget v0, p1, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_37

    .line 1281
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v0, :cond_36

    const-string v0, "\tisQuietProfileTask=true"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    :cond_36
    return v2

    .line 1285
    :cond_37
    iget v0, p1, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_6e

    iget v0, p1, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    iget v3, p1, Lcom/android/server/wm/TaskRecord;->taskId:I

    if-eq v0, v3, :cond_6e

    .line 1287
    iget v0, p1, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentTasks;->getTask(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 1288
    .local v0, "affiliatedTask":Lcom/android/server/wm/TaskRecord;
    if-eqz v0, :cond_6e

    .line 1289
    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/RecentTasks;->isActiveRecentTask(Lcom/android/server/wm/TaskRecord;Landroid/util/SparseBooleanArray;)Z

    move-result v3

    if-nez v3, :cond_6e

    .line 1290
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v3, :cond_6d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\taffiliatedWithTask="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is not active"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    :cond_6d
    return v2

    .line 1298
    .end local v0  # "affiliatedTask":Lcom/android/server/wm/TaskRecord;
    :cond_6e
    const/4 v0, 0x1

    return v0
.end method

.method private isInVisibleRange(Lcom/android/server/wm/TaskRecord;IIZ)Z
    .registers 11
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "taskIndex"  # I
    .param p3, "numVisibleTasks"  # I
    .param p4, "skipExcludedCheck"  # Z

    .line 1366
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/RecentTasks;->isInVisibleRange(Lcom/android/server/wm/TaskRecord;IIZI)Z

    move-result v0

    return v0
.end method

.method private isInVisibleRange(Lcom/android/server/wm/TaskRecord;IIZI)Z
    .registers 13
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "taskIndex"  # I
    .param p3, "numVisibleTasks"  # I
    .param p4, "skipExcludedCheck"  # Z
    .param p5, "flags"  # I

    .line 1371
    iget v0, p1, Lcom/android/server/wm/TaskRecord;->mInvisibleFlag:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    and-int/lit8 v0, p5, 0x40

    if-nez v0, :cond_c

    .line 1373
    return v2

    .line 1376
    :cond_c
    if-nez p4, :cond_31

    .line 1378
    nop

    .line 1379
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v3, 0x800000

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_1e

    move v0, v1

    goto :goto_1f

    :cond_1e
    move v0, v2

    .line 1381
    .local v0, "isExcludeFromRecents":Z
    :goto_1f
    if-eqz v0, :cond_31

    .line 1382
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v3, :cond_2c

    const-string v3, "ActivityTaskManager"

    const-string v4, "\texcludeFromRecents=true"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    :cond_2c
    if-nez p2, :cond_2f

    goto :goto_30

    :cond_2f
    move v1, v2

    :goto_30
    return v1

    .line 1387
    .end local v0  # "isExcludeFromRecents":Z
    :cond_31
    iget v0, p0, Lcom/android/server/wm/RecentTasks;->mMinNumVisibleTasks:I

    if-ltz v0, :cond_38

    if-gt p3, v0, :cond_38

    .line 1390
    return v1

    .line 1393
    :cond_38
    iget v0, p0, Lcom/android/server/wm/RecentTasks;->mMaxNumVisibleTasks:I

    if-ltz v0, :cond_41

    .line 1395
    if-gt p3, v0, :cond_3f

    goto :goto_40

    :cond_3f
    move v1, v2

    :goto_40
    return v1

    .line 1398
    :cond_41
    iget-wide v3, p0, Lcom/android/server/wm/RecentTasks;->mActiveTasksSessionDurationMs:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_54

    .line 1401
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getInactiveDuration()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/wm/RecentTasks;->mActiveTasksSessionDurationMs:J

    cmp-long v0, v3, v5

    if-gtz v0, :cond_54

    .line 1402
    return v1

    .line 1406
    :cond_54
    return v2
.end method

.method private isTaskExistInRecent(Lcom/android/server/wm/TaskRecord;)Z
    .registers 6
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;

    .line 1799
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    .line 1800
    .local v1, "record":Lcom/android/server/wm/TaskRecord;
    iget-object v2, p1, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_36

    iget-object v2, v1, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_36

    iget-object v2, p1, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    .line 1801
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_36

    iget-object v2, p1, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    .line 1802
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1803
    const/4 v0, 0x1

    return v0

    .line 1805
    .end local v1  # "record":Lcom/android/server/wm/TaskRecord;
    :cond_36
    goto :goto_6

    .line 1806
    :cond_37
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$static$0(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/TaskRecord;)I
    .registers 4
    .param p0, "lhs"  # Lcom/android/server/wm/TaskRecord;
    .param p1, "rhs"  # Lcom/android/server/wm/TaskRecord;

    .line 125
    iget v0, p1, Lcom/android/server/wm/TaskRecord;->taskId:I

    iget v1, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private loadPersistedTaskIdsForUserLocked(I)V
    .registers 4
    .param p1, "userId"  # I

    .line 479
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_29

    .line 480
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskPersister;->loadPersistedTaskIdsForUser(I)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loaded persisted task ids for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_29
    return-void
.end method

.method private moveAffiliatedTasksToFront(Lcom/android/server/wm/TaskRecord;I)Z
    .registers 20
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "taskIndex"  # I

    .line 1595
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1596
    .local v3, "recentsCount":I
    move-object/from16 v4, p1

    .line 1597
    .local v4, "top":Lcom/android/server/wm/TaskRecord;
    move/from16 v5, p2

    .line 1598
    .local v5, "topIndex":I
    :goto_10
    iget-object v6, v4, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    if-eqz v6, :cond_1b

    if-lez v5, :cond_1b

    .line 1599
    iget-object v4, v4, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    .line 1600
    add-int/lit8 v5, v5, -0x1

    goto :goto_10

    .line 1602
    :cond_1b
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    const-string v7, "ActivityTaskManager"

    if-eqz v6, :cond_3d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addRecent: adding affilliates starting at "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " from intial "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    :cond_3d
    iget v6, v4, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    iget v8, v1, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    if-ne v6, v8, :cond_45

    const/4 v6, 0x1

    goto :goto_46

    :cond_45
    const/4 v6, 0x0

    .line 1606
    .local v6, "sane":Z
    :goto_46
    move v8, v5

    .line 1607
    .local v8, "endIndex":I
    move-object v11, v4

    .line 1608
    .local v11, "prev":Lcom/android/server/wm/TaskRecord;
    :goto_48
    const-string v12, " @"

    const-string v13, "Bad chain @"

    if-ge v8, v3, :cond_1c3

    .line 1609
    iget-object v14, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/TaskRecord;

    .line 1610
    .local v14, "cur":Lcom/android/server/wm/TaskRecord;
    sget-boolean v15, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v15, :cond_76

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addRecent: looking at next chain @"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    :cond_76
    const/4 v9, -0x1

    if-ne v14, v4, :cond_a0

    .line 1614
    iget-object v15, v14, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    if-nez v15, :cond_81

    iget v15, v14, Lcom/android/server/wm/TaskRecord;->mNextAffiliateTaskId:I

    if-eq v15, v9, :cond_ae

    .line 1615
    :cond_81
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ": first task has next affiliate: "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    const/4 v6, 0x0

    .line 1618
    move-object/from16 v16, v4

    goto/16 :goto_1c5

    .line 1622
    :cond_a0
    iget-object v15, v14, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    if-ne v15, v11, :cond_183

    iget v15, v14, Lcom/android/server/wm/TaskRecord;->mNextAffiliateTaskId:I

    iget v10, v11, Lcom/android/server/wm/TaskRecord;->taskId:I

    if-eq v15, v10, :cond_ae

    move-object/from16 v16, v4

    goto/16 :goto_185

    .line 1633
    :cond_ae
    iget v10, v14, Lcom/android/server/wm/TaskRecord;->mPrevAffiliateTaskId:I

    const-string v15, ": last task "

    move-object/from16 v16, v4

    .end local v4  # "top":Lcom/android/server/wm/TaskRecord;
    .local v16, "top":Lcom/android/server/wm/TaskRecord;
    const-string v4, " has previous affiliate "

    if-ne v10, v9, :cond_f7

    .line 1635
    iget-object v9, v14, Lcom/android/server/wm/TaskRecord;->mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

    if-eqz v9, :cond_dd

    .line 1636
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/android/server/wm/TaskRecord;->mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    const/4 v6, 0x0

    .line 1641
    :cond_dd
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v4, :cond_1c5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addRecent: end of chain @"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c5

    .line 1645
    :cond_f7
    iget-object v9, v14, Lcom/android/server/wm/TaskRecord;->mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

    const-string v10, ": task "

    if-nez v9, :cond_12a

    .line 1646
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/android/server/wm/TaskRecord;->mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " but should be id "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/android/server/wm/TaskRecord;->mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    const/4 v6, 0x0

    .line 1651
    goto/16 :goto_1c5

    .line 1654
    :cond_12a
    iget v4, v14, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    iget v9, v1, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    if-eq v4, v9, :cond_15e

    .line 1655
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " has affiliated id "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v14, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " but should be "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    const/4 v6, 0x0

    .line 1660
    goto :goto_1c5

    .line 1662
    :cond_15e
    move-object v11, v14

    .line 1663
    add-int/lit8 v8, v8, 0x1

    .line 1664
    if-lt v8, v3, :cond_17f

    .line 1665
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad chain ran off index "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    const/4 v6, 0x0

    .line 1668
    goto :goto_1c5

    .line 1670
    .end local v14  # "cur":Lcom/android/server/wm/TaskRecord;
    :cond_17f
    move-object/from16 v4, v16

    goto/16 :goto_48

    .line 1622
    .end local v16  # "top":Lcom/android/server/wm/TaskRecord;
    .restart local v4  # "top":Lcom/android/server/wm/TaskRecord;
    .restart local v14  # "cur":Lcom/android/server/wm/TaskRecord;
    :cond_183
    move-object/from16 v16, v4

    .line 1624
    .end local v4  # "top":Lcom/android/server/wm/TaskRecord;
    .restart local v16  # "top":Lcom/android/server/wm/TaskRecord;
    :goto_185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ": middle task "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " has bad next affiliate "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v14, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " id "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v14, Lcom/android/server/wm/TaskRecord;->mNextAffiliateTaskId:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", expected "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    const/4 v6, 0x0

    .line 1630
    goto :goto_1c5

    .line 1608
    .end local v14  # "cur":Lcom/android/server/wm/TaskRecord;
    .end local v16  # "top":Lcom/android/server/wm/TaskRecord;
    .restart local v4  # "top":Lcom/android/server/wm/TaskRecord;
    :cond_1c3
    move-object/from16 v16, v4

    .line 1671
    .end local v4  # "top":Lcom/android/server/wm/TaskRecord;
    .restart local v16  # "top":Lcom/android/server/wm/TaskRecord;
    :cond_1c5
    :goto_1c5
    if-eqz v6, :cond_1ea

    .line 1672
    if-ge v8, v2, :cond_1ea

    .line 1673
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ": did not extend to task "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    const/4 v6, 0x0

    .line 1678
    :cond_1ea
    if-eqz v6, :cond_24b

    .line 1681
    move v4, v5

    .local v4, "i":I
    :goto_1ed
    const-string v9, " to "

    if-gt v4, v8, :cond_22b

    .line 1682
    sget-boolean v10, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v10, :cond_219

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addRecent: moving affiliated "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " from "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v9, v4, v5

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    :cond_219
    iget-object v9, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/TaskRecord;

    .line 1685
    .local v9, "cur":Lcom/android/server/wm/TaskRecord;
    iget-object v10, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    sub-int v12, v4, v5

    invoke-virtual {v10, v12, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1681
    .end local v9  # "cur":Lcom/android/server/wm/TaskRecord;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1ed

    .line 1687
    .end local v4  # "i":I
    :cond_22b
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v4, :cond_249

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addRecent: done moving tasks  "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    :cond_249
    const/4 v4, 0x1

    return v4

    .line 1693
    :cond_24b
    const/4 v4, 0x0

    return v4
.end method

.method private notifyTaskAdded(Lcom/android/server/wm/TaskRecord;)V
    .registers 4
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;

    .line 430
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 431
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/RecentTasks$Callbacks;

    invoke-interface {v1, p1}, Lcom/android/server/wm/RecentTasks$Callbacks;->onRecentTaskAdded(Lcom/android/server/wm/TaskRecord;)V

    .line 430
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 433
    .end local v0  # "i":I
    :cond_17
    return-void
.end method

.method private notifyTaskRemoved(Lcom/android/server/wm/TaskRecord;ZZ)V
    .registers 6
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "wasTrimmed"  # Z
    .param p3, "killProcess"  # Z

    .line 436
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 437
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/RecentTasks$Callbacks;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/wm/RecentTasks$Callbacks;->onRecentTaskRemoved(Lcom/android/server/wm/TaskRecord;ZZ)V

    .line 436
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 439
    .end local v0  # "i":I
    :cond_17
    return-void
.end method

.method private processNextAffiliateChainLocked(I)I
    .registers 15
    .param p1, "start"  # I

    .line 1523
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskRecord;

    .line 1524
    .local v0, "startTask":Lcom/android/server/wm/TaskRecord;
    iget v1, v0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    .line 1527
    .local v1, "affiliateId":I
    iget v2, v0, Lcom/android/server/wm/TaskRecord;->taskId:I

    const/4 v3, 0x1

    if-ne v2, v1, :cond_1c

    iget-object v2, v0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

    if-nez v2, :cond_1c

    iget-object v2, v0, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    if-nez v2, :cond_1c

    .line 1532
    iput-boolean v3, v0, Lcom/android/server/wm/TaskRecord;->inRecents:Z

    .line 1533
    add-int/lit8 v2, p1, 0x1

    return v2

    .line 1537
    :cond_1c
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1538
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_28
    if-lt v2, p1, :cond_43

    .line 1539
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskRecord;

    .line 1540
    .local v4, "task":Lcom/android/server/wm/TaskRecord;
    iget v5, v4, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    if-ne v5, v1, :cond_40

    .line 1541
    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1542
    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1538
    .end local v4  # "task":Lcom/android/server/wm/TaskRecord;
    :cond_40
    add-int/lit8 v2, v2, -0x1

    goto :goto_28

    .line 1548
    .end local v2  # "i":I
    :cond_43
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/server/wm/RecentTasks;->TASK_ID_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1552
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    .line 1553
    .local v2, "first":Lcom/android/server/wm/TaskRecord;
    iput-boolean v3, v2, Lcom/android/server/wm/TaskRecord;->inRecents:Z

    .line 1554
    iget-object v5, v2, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    const/4 v6, 0x0

    const-string v7, "ActivityTaskManager"

    if-eqz v5, :cond_78

    .line 1555
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Link error 1 first.next="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    invoke-virtual {v2, v6}, Lcom/android/server/wm/TaskRecord;->setNextAffiliate(Lcom/android/server/wm/TaskRecord;)V

    .line 1557
    invoke-virtual {p0, v2, v4}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/TaskRecord;Z)V

    .line 1560
    :cond_78
    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1561
    .local v5, "tmpSize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_7f
    add-int/lit8 v9, v5, -0x1

    if-ge v8, v9, :cond_fa

    .line 1562
    iget-object v9, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/TaskRecord;

    .line 1563
    .local v9, "next":Lcom/android/server/wm/TaskRecord;
    iget-object v10, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/TaskRecord;

    .line 1564
    .local v10, "prev":Lcom/android/server/wm/TaskRecord;
    iget-object v11, v9, Lcom/android/server/wm/TaskRecord;->mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

    if-eq v11, v10, :cond_c5

    .line 1565
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Link error 2 next="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " prev="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v9, Lcom/android/server/wm/TaskRecord;->mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " setting prev="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    invoke-virtual {v9, v10}, Lcom/android/server/wm/TaskRecord;->setPrevAffiliate(Lcom/android/server/wm/TaskRecord;)V

    .line 1568
    invoke-virtual {p0, v9, v4}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/TaskRecord;Z)V

    .line 1570
    :cond_c5
    iget-object v11, v10, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    if-eq v11, v9, :cond_f5

    .line 1571
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Link error 3 prev="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " next="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " setting next="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    invoke-virtual {v10, v9}, Lcom/android/server/wm/TaskRecord;->setNextAffiliate(Lcom/android/server/wm/TaskRecord;)V

    .line 1574
    invoke-virtual {p0, v10, v4}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/TaskRecord;Z)V

    .line 1576
    :cond_f5
    iput-boolean v3, v10, Lcom/android/server/wm/TaskRecord;->inRecents:Z

    .line 1561
    .end local v9  # "next":Lcom/android/server/wm/TaskRecord;
    .end local v10  # "prev":Lcom/android/server/wm/TaskRecord;
    add-int/lit8 v8, v8, 0x1

    goto :goto_7f

    .line 1579
    .end local v8  # "i":I
    :cond_fa
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    .line 1580
    .local v3, "last":Lcom/android/server/wm/TaskRecord;
    iget-object v8, v3, Lcom/android/server/wm/TaskRecord;->mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

    if-eqz v8, :cond_124

    .line 1581
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Link error 4 last.prev="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Lcom/android/server/wm/TaskRecord;->mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    invoke-virtual {v3, v6}, Lcom/android/server/wm/TaskRecord;->setPrevAffiliate(Lcom/android/server/wm/TaskRecord;)V

    .line 1583
    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/TaskRecord;Z)V

    .line 1587
    :cond_124
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, v6}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 1588
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1591
    add-int v4, p1, v5

    return v4
.end method

.method private removeForAddTask(Lcom/android/server/wm/TaskRecord;)V
    .registers 7
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;

    .line 1436
    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTasks;->findRemoveIndexForAddTask(Lcom/android/server/wm/TaskRecord;)I

    move-result v0

    .line 1437
    .local v0, "removeIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 1439
    return-void

    .line 1445
    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    .line 1446
    .local v1, "removedTask":Lcom/android/server/wm/TaskRecord;
    const/4 v2, 0x0

    if-eq v1, p1, :cond_38

    .line 1447
    invoke-direct {p0, v1, v2, v2}, Lcom/android/server/wm/RecentTasks;->notifyTaskRemoved(Lcom/android/server/wm/TaskRecord;ZZ)V

    .line 1448
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v3, :cond_38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trimming task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for addition of task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    :cond_38
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/TaskRecord;Z)V

    .line 1452
    return-void
.end method

.method private removeTasksForUserLocked(I)V
    .registers 7
    .param p1, "userId"  # I

    .line 602
    const-string v0, "ActivityTaskManager"

    if-gtz p1, :cond_19

    .line 603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t remove recent task on user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    return-void

    .line 607
    :cond_19
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_21
    if-ltz v1, :cond_55

    .line 608
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    .line 609
    .local v2, "tr":Lcom/android/server/wm/TaskRecord;
    iget v3, v2, Lcom/android/server/wm/TaskRecord;->userId:I

    if-ne v3, p1, :cond_52

    .line 610
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v3, :cond_4f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove RecentTask "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " when finishing user"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_4f
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/TaskRecord;)V

    .line 607
    .end local v2  # "tr":Lcom/android/server/wm/TaskRecord;
    :cond_52
    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    .line 615
    .end local v1  # "i":I
    :cond_55
    return-void
.end method

.method private static shouldPersistTaskLocked(Lcom/android/server/wm/TaskRecord;)Z
    .registers 3
    .param p0, "task"  # Lcom/android/server/wm/TaskRecord;

    .line 539
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 540
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    iget-boolean v1, p0, Lcom/android/server/wm/TaskRecord;->isPersistable:Z

    if-eqz v1, :cond_12

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v1

    if-nez v1, :cond_12

    :cond_10
    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method private syncPersistentTaskIdsLocked()V
    .registers 7

    .line 515
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_26

    .line 516
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 517
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 520
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 515
    .end local v2  # "userId":I
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 523
    .end local v0  # "i":I
    :cond_26
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .restart local v0  # "i":I
    :goto_2d
    if-ltz v0, :cond_8f

    .line 524
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    .line 525
    .local v2, "task":Lcom/android/server/wm/TaskRecord;
    invoke-static {v2}, Lcom/android/server/wm/RecentTasks;->shouldPersistTaskLocked(Lcom/android/server/wm/TaskRecord;)Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 528
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_7d

    .line 529
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No task ids found for userId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mPersistedTaskIds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/wm/TaskRecord;->userId:I

    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 533
    :cond_7d
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    iget v4, v2, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 523
    .end local v2  # "task":Lcom/android/server/wm/TaskRecord;
    :cond_8c
    add-int/lit8 v0, v0, -0x1

    goto :goto_2d

    .line 536
    .end local v0  # "i":I
    :cond_8f
    return-void
.end method

.method private trimInactiveRecentTasks()V
    .registers 12

    .line 1202
    iget-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    if-eqz v0, :cond_5

    .line 1204
    return-void

    .line 1207
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1210
    .local v0, "recentsCount":I
    :goto_b
    iget v1, p0, Lcom/android/server/wm/RecentTasks;->mGlobalMaxNumTasks:I

    const-string v2, "ActivityTaskManager"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v0, v1, :cond_45

    .line 1211
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    .line 1212
    .local v1, "tr":Lcom/android/server/wm/TaskRecord;
    invoke-direct {p0, v1, v4, v3}, Lcom/android/server/wm/RecentTasks;->notifyTaskRemoved(Lcom/android/server/wm/TaskRecord;ZZ)V

    .line 1213
    add-int/lit8 v0, v0, -0x1

    .line 1214
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v3, :cond_44

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trimming over max-recents task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " max="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/RecentTasks;->mGlobalMaxNumTasks:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    .end local v1  # "tr":Lcom/android/server/wm/TaskRecord;
    :cond_44
    goto :goto_b

    .line 1219
    :cond_45
    invoke-virtual {p0}, Lcom/android/server/wm/RecentTasks;->getCurrentProfileIds()[I

    move-result-object v1

    .line 1220
    .local v1, "profileUserIds":[I
    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1221
    array-length v5, v1

    move v6, v3

    :goto_50
    if-ge v6, v5, :cond_94

    aget v7, v1, v6

    .line 1222
    .local v7, "userId":I
    invoke-virtual {p0, v7}, Lcom/android/server/wm/RecentTasks;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    .line 1223
    .local v8, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v8, :cond_6b

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v9

    if-eqz v9, :cond_6b

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v9

    if-eqz v9, :cond_6b

    .line 1224
    iget-object v9, p0, Lcom/android/server/wm/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v7, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1226
    :cond_6b
    sget-boolean v9, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v9, :cond_91

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "User: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " quiet="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/wm/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    .line 1227
    invoke-virtual {v10, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1226
    invoke-static {v2, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    .end local v7  # "userId":I
    .end local v8  # "userInfo":Landroid/content/pm/UserInfo;
    :cond_91
    add-int/lit8 v6, v6, 0x1

    goto :goto_50

    .line 1231
    :cond_94
    const/4 v5, 0x0

    .line 1232
    .local v5, "numVisibleTasks":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_96
    iget-object v7, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_10d

    .line 1233
    iget-object v7, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/TaskRecord;

    .line 1235
    .local v7, "task":Lcom/android/server/wm/TaskRecord;
    iget-object v8, p0, Lcom/android/server/wm/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v7, v8}, Lcom/android/server/wm/RecentTasks;->isActiveRecentTask(Lcom/android/server/wm/TaskRecord;Landroid/util/SparseBooleanArray;)Z

    move-result v8

    if-eqz v8, :cond_e9

    .line 1236
    iget-boolean v8, p0, Lcom/android/server/wm/RecentTasks;->mHasVisibleRecentTasks:Z

    if-nez v8, :cond_b5

    .line 1238
    add-int/lit8 v6, v6, 0x1

    .line 1239
    goto :goto_96

    .line 1242
    :cond_b5
    invoke-virtual {p0, v7}, Lcom/android/server/wm/RecentTasks;->isVisibleRecentTask(Lcom/android/server/wm/TaskRecord;)Z

    move-result v8

    if-nez v8, :cond_be

    .line 1244
    add-int/lit8 v6, v6, 0x1

    .line 1245
    goto :goto_96

    .line 1247
    :cond_be
    add-int/lit8 v5, v5, 0x1

    .line 1248
    invoke-direct {p0, v7, v6, v5, v3}, Lcom/android/server/wm/RecentTasks;->isInVisibleRange(Lcom/android/server/wm/TaskRecord;IIZ)Z

    move-result v8

    if-nez v8, :cond_e6

    .line 1249
    invoke-virtual {p0, v7}, Lcom/android/server/wm/RecentTasks;->isTrimmable(Lcom/android/server/wm/TaskRecord;)Z

    move-result v8

    if-nez v8, :cond_cd

    goto :goto_e6

    .line 1256
    :cond_cd
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v8, :cond_101

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Trimming out-of-range visible task="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_101

    .line 1251
    :cond_e6
    :goto_e6
    add-int/lit8 v6, v6, 0x1

    .line 1252
    goto :goto_96

    .line 1262
    :cond_e9
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v8, :cond_101

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Trimming inactive task="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    :cond_101
    :goto_101
    iget-object v8, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1267
    invoke-direct {p0, v7, v4, v3}, Lcom/android/server/wm/RecentTasks;->notifyTaskRemoved(Lcom/android/server/wm/TaskRecord;ZZ)V

    .line 1268
    invoke-virtual {p0, v7, v3}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/TaskRecord;Z)V

    .line 1269
    .end local v7  # "task":Lcom/android/server/wm/TaskRecord;
    goto :goto_96

    .line 1270
    .end local v6  # "i":I
    :cond_10d
    return-void
.end method


# virtual methods
.method add(Lcom/android/server/wm/TaskRecord;)V
    .registers 11
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;

    .line 1026
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: task="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootActivityContainer;->isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 1029
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 1030
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isAccessApplication()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1033
    return-void

    .line 1037
    :cond_39
    iget v0, p1, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    iget v2, p1, Lcom/android/server/wm/TaskRecord;->taskId:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_4d

    iget v0, p1, Lcom/android/server/wm/TaskRecord;->mNextAffiliateTaskId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_4d

    iget v0, p1, Lcom/android/server/wm/TaskRecord;->mPrevAffiliateTaskId:I

    if-eq v0, v2, :cond_4b

    goto :goto_4d

    :cond_4b
    move v0, v4

    goto :goto_4e

    :cond_4d
    :goto_4d
    move v0, v3

    .line 1042
    .local v0, "isAffiliated":Z
    :goto_4e
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->isMzWindowMode()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 1043
    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTasks;->isTaskExistInRecent(Lcom/android/server/wm/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 1044
    return-void

    .line 1046
    :cond_5b
    iget v2, p1, Lcom/android/server/wm/TaskRecord;->mInvisibleFlag:I

    or-int/2addr v2, v3

    iput v2, p1, Lcom/android/server/wm/TaskRecord;->mInvisibleFlag:I

    goto :goto_6c

    .line 1047
    :cond_61
    iget v2, p1, Lcom/android/server/wm/TaskRecord;->mInvisibleFlag:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_6c

    .line 1048
    iget v2, p1, Lcom/android/server/wm/TaskRecord;->mInvisibleFlag:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p1, Lcom/android/server/wm/TaskRecord;->mInvisibleFlag:I

    .line 1052
    :cond_6c
    :goto_6c
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1056
    .local v2, "recentsCount":I
    iget-object v5, p1, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v5, :cond_8f

    .line 1057
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v3, :cond_8e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addRecent: not adding voice interaction "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    :cond_8e
    return-void

    .line 1062
    :cond_8f
    if-nez v0, :cond_b4

    if-lez v2, :cond_b4

    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_b4

    .line 1063
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v3, :cond_b3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addRecent: already at top: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    :cond_b3
    return-void

    .line 1068
    :cond_b4
    if-eqz v0, :cond_f1

    if-lez v2, :cond_f1

    iget-boolean v5, p1, Lcom/android/server/wm/TaskRecord;->inRecents:Z

    if-eqz v5, :cond_f1

    iget v5, p1, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 1069
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/TaskRecord;

    iget v6, v6, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    if-ne v5, v6, :cond_f1

    .line 1070
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v3, :cond_f0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addRecent: affiliated "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " at top when adding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    :cond_f0
    return-void

    .line 1075
    :cond_f1
    const/4 v5, 0x0

    .line 1079
    .local v5, "needAffiliationFix":Z
    iget-boolean v6, p1, Lcom/android/server/wm/TaskRecord;->inRecents:Z

    if-eqz v6, :cond_147

    .line 1080
    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 1081
    .local v6, "taskIndex":I
    if-ltz v6, :cond_132

    .line 1082
    if-nez v0, :cond_147

    .line 1083
    iget-boolean v3, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    if-nez v3, :cond_12e

    .line 1086
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1087
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1089
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v3, :cond_12e

    .line 1090
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addRecent: moving to top "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " from "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :cond_12e
    invoke-virtual {p0, p1, v4}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/TaskRecord;Z)V

    .line 1095
    return-void

    .line 1098
    :cond_132
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Task with inRecent not in recents: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    const/4 v5, 0x1

    .line 1103
    .end local v6  # "taskIndex":I
    :cond_147
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v6, :cond_15f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addRecent: trimming tasks for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    :cond_15f
    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTasks;->removeForAddTask(Lcom/android/server/wm/TaskRecord;)V

    .line 1106
    iput-boolean v3, p1, Lcom/android/server/wm/TaskRecord;->inRecents:Z

    .line 1107
    if-eqz v0, :cond_1e9

    if-eqz v5, :cond_16a

    goto/16 :goto_1e9

    .line 1113
    :cond_16a
    if-eqz v0, :cond_209

    .line 1116
    iget-object v3, p1, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    .line 1117
    .local v3, "other":Lcom/android/server/wm/TaskRecord;
    if-nez v3, :cond_172

    .line 1118
    iget-object v3, p1, Lcom/android/server/wm/TaskRecord;->mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

    .line 1120
    :cond_172
    if-eqz v3, :cond_1cf

    .line 1121
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 1122
    .local v4, "otherIndex":I
    if-ltz v4, :cond_1b5

    .line 1125
    iget-object v6, p1, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    if-ne v3, v6, :cond_183

    .line 1128
    add-int/lit8 v6, v4, 0x1

    .restart local v6  # "taskIndex":I
    goto :goto_184

    .line 1132
    .end local v6  # "taskIndex":I
    :cond_183
    move v6, v4

    .line 1134
    .restart local v6  # "taskIndex":I
    :goto_184
    sget-boolean v7, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v7, :cond_1a4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addRecent: new affiliated task added at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    :cond_1a4
    iget-object v7, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, v6, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1137
    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTasks;->notifyTaskAdded(Lcom/android/server/wm/TaskRecord;)V

    .line 1140
    invoke-direct {p0, p1, v6}, Lcom/android/server/wm/RecentTasks;->moveAffiliatedTasksToFront(Lcom/android/server/wm/TaskRecord;I)Z

    move-result v7

    if-eqz v7, :cond_1b3

    .line 1142
    return-void

    .line 1147
    :cond_1b3
    const/4 v5, 0x1

    .line 1148
    .end local v6  # "taskIndex":I
    goto :goto_1ce

    .line 1149
    :cond_1b5
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v6, :cond_1cd

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addRecent: couldn\'t find other affiliation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    :cond_1cd
    const/4 v5, 0x1

    .line 1153
    .end local v4  # "otherIndex":I
    :goto_1ce
    goto :goto_209

    .line 1154
    :cond_1cf
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v4, :cond_1e7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addRecent: adding affiliated task without next/prev:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    :cond_1e7
    const/4 v5, 0x1

    goto :goto_209

    .line 1110
    .end local v3  # "other":Lcom/android/server/wm/TaskRecord;
    :cond_1e9
    :goto_1e9
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1111
    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTasks;->notifyTaskAdded(Lcom/android/server/wm/TaskRecord;)V

    .line 1112
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v3, :cond_209

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addRecent: adding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    :cond_209
    :goto_209
    if-eqz v5, :cond_219

    .line 1161
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v3, :cond_214

    const-string v3, "addRecent: regrouping affiliations"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    :cond_214
    iget v1, p1, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RecentTasks;->cleanupLocked(I)V

    .line 1166
    :cond_219
    invoke-direct {p0}, Lcom/android/server/wm/RecentTasks;->trimInactiveRecentTasks()V

    .line 1167
    return-void
.end method

.method public addTaskOnMoveToFullscreen(Lcom/android/server/wm/TaskRecord;)V
    .registers 3
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;

    .line 1811
    if-eqz p1, :cond_11

    .line 1812
    iget v0, p1, Lcom/android/server/wm/TaskRecord;->mInvisibleFlag:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_e

    .line 1813
    iget v0, p1, Lcom/android/server/wm/TaskRecord;->mInvisibleFlag:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Lcom/android/server/wm/TaskRecord;->mInvisibleFlag:I

    .line 1815
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/TaskRecord;)V

    .line 1817
    :cond_11
    return-void
.end method

.method addToBottom(Lcom/android/server/wm/TaskRecord;)Z
    .registers 3
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;

    .line 1173
    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTasks;->canAddTaskWithoutTrim(Lcom/android/server/wm/TaskRecord;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1176
    const/4 v0, 0x0

    return v0

    .line 1179
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/TaskRecord;)V

    .line 1180
    const/4 v0, 0x1

    return v0
.end method

.method cleanupDisabledPackageTasksLocked(Ljava/lang/String;Ljava/util/Set;I)V
    .registers 13
    .param p1, "packageName"  # Ljava/lang/String;
    .param p3, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 674
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_50

    .line 675
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    .line 676
    .local v2, "tr":Lcom/android/server/wm/TaskRecord;
    const/4 v3, -0x1

    if-eq p3, v3, :cond_1a

    iget v3, v2, Lcom/android/server/wm/TaskRecord;->userId:I

    if-eq v3, p3, :cond_1a

    .line 677
    goto :goto_4d

    .line 680
    :cond_1a
    iget-object v3, v2, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_25

    iget-object v3, v2, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_26

    :cond_25
    const/4 v3, 0x0

    .line 681
    .local v3, "cn":Landroid/content/ComponentName;
    :goto_26
    const/4 v4, 0x0

    if-eqz v3, :cond_41

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    if-eqz p2, :cond_3f

    .line 682
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    :cond_3f
    move v5, v1

    goto :goto_42

    :cond_41
    move v5, v4

    .line 683
    .local v5, "sameComponent":Z
    :goto_42
    if-eqz v5, :cond_4d

    .line 684
    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v7, v2, Lcom/android/server/wm/TaskRecord;->taskId:I

    const-string v8, "disabled-package"

    invoke-virtual {v6, v7, v4, v1, v8}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    .line 674
    .end local v2  # "tr":Lcom/android/server/wm/TaskRecord;
    .end local v3  # "cn":Landroid/content/ComponentName;
    .end local v5  # "sameComponent":Z
    :cond_4d
    :goto_4d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 688
    .end local v0  # "i":I
    :cond_50
    return-void
.end method

.method cleanupLocked(I)V
    .registers 14
    .param p1, "userId"  # I

    .line 696
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 697
    .local v0, "recentsCount":I
    if-nez v0, :cond_9

    .line 700
    return-void

    .line 704
    :cond_9
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 705
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 707
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 708
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_19
    if-ltz v2, :cond_173

    .line 709
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    .line 710
    .local v3, "task":Lcom/android/server/wm/TaskRecord;
    const/4 v4, -0x1

    if-eq p1, v4, :cond_2c

    iget v4, v3, Lcom/android/server/wm/TaskRecord;->userId:I

    if-eq v4, p1, :cond_2c

    .line 712
    goto/16 :goto_16f

    .line 714
    :cond_2c
    iget-boolean v4, v3, Lcom/android/server/wm/TaskRecord;->autoRemoveRecents:Z

    const-string v5, "ActivityTaskManager"

    if-eqz v4, :cond_51

    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_51

    .line 716
    invoke-virtual {p0, v3}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/TaskRecord;)V

    .line 717
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing auto-remove without activity: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    goto/16 :goto_16f

    .line 721
    :cond_51
    iget-object v4, v3, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_16f

    .line 722
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    iget-object v6, v3, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ActivityInfo;

    .line 723
    .local v4, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v4, :cond_7b

    .line 728
    :try_start_61
    iget-object v6, v3, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    const v7, 0x10000400

    invoke-interface {v1, v6, v7, p1}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v6
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_6a} :catch_78

    move-object v4, v6

    .line 734
    nop

    .line 735
    if-nez v4, :cond_70

    .line 736
    sget-object v4, Lcom/android/server/wm/RecentTasks;->NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

    .line 738
    :cond_70
    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    iget-object v7, v3, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7b

    .line 731
    :catch_78
    move-exception v5

    .line 733
    .local v5, "e":Landroid/os/RemoteException;
    goto/16 :goto_16f

    .line 740
    .end local v5  # "e":Landroid/os/RemoteException;
    :cond_7b
    :goto_7b
    sget-object v6, Lcom/android/server/wm/RecentTasks;->NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

    const-string v7, "Making recent unavailable: "

    const/high16 v8, 0x800000

    const/4 v9, 0x0

    if-ne v4, v6, :cond_f6

    .line 744
    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    iget-object v10, v3, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 745
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 746
    .local v6, "app":Landroid/content/pm/ApplicationInfo;
    if-nez v6, :cond_b5

    .line 748
    :try_start_94
    iget-object v10, v3, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x2000

    invoke-interface {v1, v10, v11, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v10
    :try_end_a0
    .catch Landroid/os/RemoteException; {:try_start_94 .. :try_end_a0} :catch_b2

    move-object v6, v10

    .line 753
    nop

    .line 754
    if-nez v6, :cond_a6

    .line 755
    sget-object v6, Lcom/android/server/wm/RecentTasks;->NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

    .line 757
    :cond_a6
    iget-object v10, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    iget-object v11, v3, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b5

    .line 750
    :catch_b2
    move-exception v5

    .line 752
    .restart local v5  # "e":Landroid/os/RemoteException;
    goto/16 :goto_16f

    .line 759
    .end local v5  # "e":Landroid/os/RemoteException;
    :cond_b5
    :goto_b5
    sget-object v10, Lcom/android/server/wm/RecentTasks;->NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

    if-eq v6, v10, :cond_dd

    iget v10, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v8, v10

    if-nez v8, :cond_bf

    goto :goto_dd

    .line 767
    :cond_bf
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v8, :cond_d9

    iget-boolean v8, v3, Lcom/android/server/wm/TaskRecord;->isAvailable:Z

    if-eqz v8, :cond_d9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :cond_d9
    iput-boolean v9, v3, Lcom/android/server/wm/TaskRecord;->isAvailable:Z

    .line 771
    .end local v6  # "app":Landroid/content/pm/ApplicationInfo;
    goto/16 :goto_16f

    .line 762
    .restart local v6  # "app":Landroid/content/pm/ApplicationInfo;
    :cond_dd
    :goto_dd
    invoke-virtual {p0, v3}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/TaskRecord;)V

    .line 763
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing no longer valid recent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    goto/16 :goto_16f

    .line 772
    .end local v6  # "app":Landroid/content/pm/ApplicationInfo;
    :cond_f6
    iget-boolean v6, v4, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v6, :cond_128

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v6, :cond_128

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v6, v8

    if-nez v6, :cond_108

    goto :goto_128

    .line 784
    :cond_108
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v6, :cond_124

    iget-boolean v6, v3, Lcom/android/server/wm/TaskRecord;->isAvailable:Z

    if-nez v6, :cond_124

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Making recent available: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_124
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/server/wm/TaskRecord;->isAvailable:Z

    goto :goto_16f

    .line 775
    :cond_128
    :goto_128
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v6, :cond_16d

    iget-boolean v6, v3, Lcom/android/server/wm/TaskRecord;->isAvailable:Z

    if-eqz v6, :cond_16d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " (enabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v4, Landroid/content/pm/ActivityInfo;->enabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v7, v7, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " flags="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 780
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 775
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_16d
    iput-boolean v9, v3, Lcom/android/server/wm/TaskRecord;->isAvailable:Z

    .line 708
    .end local v3  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v4  # "ai":Landroid/content/pm/ActivityInfo;
    :cond_16f
    :goto_16f
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_19

    .line 793
    .end local v2  # "i":I
    :cond_173
    const/4 v2, 0x0

    .line 794
    .restart local v2  # "i":I
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 795
    :goto_17a
    if-ge v2, v0, :cond_181

    .line 796
    invoke-direct {p0, v2}, Lcom/android/server/wm/RecentTasks;->processNextAffiliateChainLocked(I)I

    move-result v2

    goto :goto_17a

    .line 799
    :cond_181
    return-void
.end method

.method containsTaskId(II)Z
    .registers 4
    .param p1, "taskId"  # I
    .param p2, "userId"  # I

    .line 489
    invoke-direct {p0, p2}, Lcom/android/server/wm/RecentTasks;->loadPersistedTaskIdsForUserLocked(I)V

    .line 490
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method createRecentTaskInfo(Lcom/android/server/wm/TaskRecord;)Landroid/app/ActivityManager$RecentTaskInfo;
    .registers 4
    .param p1, "tr"  # Lcom/android/server/wm/TaskRecord;

    .line 1763
    new-instance v0, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    .line 1764
    .local v0, "rti":Landroid/app/ActivityManager$RecentTaskInfo;
    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskRecord;->fillTaskInfo(Landroid/app/TaskInfo;)V

    .line 1766
    iget-boolean v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isRunning:Z

    if-eqz v1, :cond_f

    iget v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    goto :goto_10

    :cond_f
    const/4 v1, -0x1

    :goto_10
    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 1767
    iget v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    .line 1768
    return-object v0
.end method

.method dump(Ljava/io/PrintWriter;ZLjava/lang/String;)V
    .registers 19
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "dumpAll"  # Z
    .param p3, "dumpPackage"  # Ljava/lang/String;

    .line 1697
    move-object v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    const-string v0, "ACTIVITY MANAGER RECENT TASKS (dumpsys activity recents)"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRecentsUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRecentsComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFreezeTaskListReordering="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v7, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFreezeTaskListReorderingPendingTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v2, v7, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    .line 1702
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1701
    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1703
    iget-object v0, v7, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 1704
    return-void

    .line 1708
    :cond_73
    const/4 v0, 0x0

    .line 1709
    .local v0, "printedAnything":Z
    const/4 v1, 0x0

    .line 1710
    .local v1, "printedHeader":Z
    iget-object v2, v7, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1711
    .local v10, "size":I
    const/4 v2, 0x0

    move v11, v0

    .end local v0  # "printedAnything":Z
    .local v2, "i":I
    .local v11, "printedAnything":Z
    :goto_7d
    const-string v12, "    "

    const-string v13, ": "

    if-ge v2, v10, :cond_bd

    .line 1712
    iget-object v0, v7, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskRecord;

    .line 1713
    .local v0, "tr":Lcom/android/server/wm/TaskRecord;
    if-eqz v9, :cond_9e

    iget-object v3, v0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_ba

    iget-object v3, v0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 1714
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9e

    .line 1715
    goto :goto_ba

    .line 1718
    :cond_9e
    if-nez v1, :cond_a7

    .line 1719
    const-string v3, "  Recent tasks:"

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1720
    const/4 v1, 0x1

    .line 1721
    const/4 v11, 0x1

    .line 1723
    :cond_a7
    const-string v3, "  * Recent #"

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v8, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1724
    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1725
    if-eqz p2, :cond_ba

    .line 1726
    invoke-virtual {v0, v8, v12}, Lcom/android/server/wm/TaskRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1711
    .end local v0  # "tr":Lcom/android/server/wm/TaskRecord;
    :cond_ba
    :goto_ba
    add-int/lit8 v2, v2, 0x1

    goto :goto_7d

    .line 1731
    .end local v2  # "i":I
    :cond_bd
    iget-boolean v0, v7, Lcom/android/server/wm/RecentTasks;->mHasVisibleRecentTasks:Z

    if-eqz v0, :cond_101

    .line 1733
    const/4 v14, 0x0

    .line 1734
    .end local v1  # "printedHeader":Z
    .local v14, "printedHeader":Z
    const v1, 0x7fffffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, v7, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1736
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v5

    const/16 v6, 0x3e8

    .line 1734
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/RecentTasks;->getRecentTasksImpl(IIZZII)Ljava/util/ArrayList;

    move-result-object v0

    .line 1737
    .local v0, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_102

    .line 1738
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 1739
    .local v2, "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    if-nez v14, :cond_f0

    .line 1740
    if-eqz v11, :cond_e9

    .line 1742
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1744
    :cond_e9
    const-string v3, "  Visible recent tasks (most recent first):"

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1745
    const/4 v14, 0x1

    .line 1746
    const/4 v11, 0x1

    .line 1749
    :cond_f0
    const-string v3, "  * RecentTaskInfo #"

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v8, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1750
    invoke-virtual {v2, v8, v12}, Landroid/app/ActivityManager$RecentTaskInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1737
    .end local v2  # "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_d6

    .line 1731
    .end local v0  # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v14  # "printedHeader":Z
    .local v1, "printedHeader":Z
    :cond_101
    move v14, v1

    .line 1754
    .end local v1  # "printedHeader":Z
    .restart local v14  # "printedHeader":Z
    :cond_102
    if-nez v11, :cond_109

    .line 1755
    const-string v0, "  (nothing)"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1757
    :cond_109
    return-void
.end method

.method flush()V
    .registers 3

    .line 557
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 558
    invoke-direct {p0}, Lcom/android/server/wm/RecentTasks;->syncPersistentTaskIdsLocked()V

    .line 559
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 560
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskPersister;->flush()V

    .line 561
    return-void

    .line 559
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getAppTasksList(ILjava/lang/String;)Ljava/util/ArrayList;
    .registers 11
    .param p1, "callingUid"  # I
    .param p2, "callingPackage"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 813
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 814
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 815
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_43

    .line 816
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    .line 820
    .local v3, "tr":Lcom/android/server/wm/TaskRecord;
    iget v4, v3, Lcom/android/server/wm/TaskRecord;->effectiveUid:I

    if-eq v4, p1, :cond_1b

    .line 821
    goto :goto_40

    .line 823
    :cond_1b
    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v4

    .line 824
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_40

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 825
    goto :goto_40

    .line 827
    :cond_30
    new-instance v5, Lcom/android/server/wm/AppTaskImpl;

    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v7, v3, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-direct {v5, v6, v7, p1}, Lcom/android/server/wm/AppTaskImpl;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;II)V

    .line 828
    .local v5, "taskImpl":Lcom/android/server/wm/AppTaskImpl;
    invoke-virtual {v5}, Lcom/android/server/wm/AppTaskImpl;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    .end local v3  # "tr":Lcom/android/server/wm/TaskRecord;
    .end local v4  # "intent":Landroid/content/Intent;
    .end local v5  # "taskImpl":Lcom/android/server/wm/AppTaskImpl;
    :cond_40
    :goto_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 830
    .end local v2  # "i":I
    :cond_43
    return-object v0
.end method

.method getCurrentProfileIds()[I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 851
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentProfileIds()[I

    move-result-object v0

    return-object v0
.end method

.method getInputListener()Landroid/view/WindowManagerPolicyConstants$PointerEventListener;
    .registers 2

    .line 267
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    return-object v0
.end method

.method getPersistableTaskIds(Landroid/util/ArraySet;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 967
    .local p1, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 968
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_7b

    .line 969
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    .line 970
    .local v2, "task":Lcom/android/server/wm/TaskRecord;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LazyTaskWriter: task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " persistable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v2, Lcom/android/server/wm/TaskRecord;->isPersistable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 973
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    iget-boolean v5, v2, Lcom/android/server/wm/TaskRecord;->isPersistable:Z

    if-nez v5, :cond_3d

    iget-boolean v5, v2, Lcom/android/server/wm/TaskRecord;->inRecents:Z

    if-eqz v5, :cond_46

    :cond_3d
    if-eqz v3, :cond_5b

    .line 974
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v5

    if-nez v5, :cond_46

    goto :goto_5b

    .line 978
    :cond_46
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "omitting from persistentTaskIds task="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    .line 975
    :cond_5b
    :goto_5b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adding to persistentTaskIds task="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iget v4, v2, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 968
    .end local v2  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v3  # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_78
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 982
    .end local v1  # "i":I
    :cond_7b
    return-void
.end method

.method getProfileIds(I)Ljava/util/Set;
    .registers 6
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 835
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 836
    .local v0, "userIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v1

    .line 838
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_16
    if-ltz v2, :cond_2a

    .line 839
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 838
    add-int/lit8 v2, v2, -0x1

    goto :goto_16

    .line 841
    .end local v2  # "i":I
    :cond_2a
    return-object v0
.end method

.method getRawTasks()Ljava/util/ArrayList;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskRecord;",
            ">;"
        }
    .end annotation

    .line 986
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method getRecentTaskIds()Landroid/util/SparseBooleanArray;
    .registers 8

    .line 993
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 994
    .local v0, "res":Landroid/util/SparseBooleanArray;
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 995
    .local v1, "size":I
    const/4 v2, 0x0

    .line 996
    .local v2, "numVisibleTasks":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v1, :cond_2f

    .line 997
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskRecord;

    .line 998
    .local v4, "tr":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {p0, v4}, Lcom/android/server/wm/RecentTasks;->isVisibleRecentTask(Lcom/android/server/wm/TaskRecord;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 999
    add-int/lit8 v2, v2, 0x1

    .line 1000
    const/4 v5, 0x0

    invoke-direct {p0, v4, v3, v2, v5}, Lcom/android/server/wm/RecentTasks;->isInVisibleRange(Lcom/android/server/wm/TaskRecord;IIZ)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 1001
    iget v5, v4, Lcom/android/server/wm/TaskRecord;->taskId:I

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 996
    .end local v4  # "tr":Lcom/android/server/wm/TaskRecord;
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1005
    .end local v3  # "i":I
    :cond_2f
    return-object v0
.end method

.method getRecentTasks(IIZZII)Landroid/content/pm/ParceledListSlice;
    .registers 9
    .param p1, "maxNum"  # I
    .param p2, "flags"  # I
    .param p3, "getTasksAllowed"  # Z
    .param p4, "getDetailedTasks"  # Z
    .param p5, "userId"  # I
    .param p6, "callingUid"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZZII)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 864
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct/range {p0 .. p6}, Lcom/android/server/wm/RecentTasks;->getRecentTasksImpl(IIZZII)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method getRecentsComponent()Landroid/content/ComponentName;
    .registers 2

    .line 411
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method getRecentsComponentUid()I
    .registers 2

    .line 418
    iget v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    return v0
.end method

.method getTask(I)Lcom/android/server/wm/TaskRecord;
    .registers 6
    .param p1, "id"  # I

    .line 1012
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1013
    .local v0, "recentsCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 1014
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    .line 1015
    .local v2, "tr":Lcom/android/server/wm/TaskRecord;
    iget v3, v2, Lcom/android/server/wm/TaskRecord;->taskId:I

    if-ne v3, p1, :cond_16

    .line 1016
    return-object v2

    .line 1013
    .end local v2  # "tr":Lcom/android/server/wm/TaskRecord;
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1019
    .end local v1  # "i":I
    :cond_19
    const/4 v1, 0x0

    return-object v1
.end method

.method getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "path"  # Ljava/lang/String;

    .line 549
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskPersister;->getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getTaskIdsForUser(I)Landroid/util/SparseBooleanArray;
    .registers 3
    .param p1, "userId"  # I

    .line 497
    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTasks;->loadPersistedTaskIdsForUserLocked(I)V

    .line 498
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 3
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 846
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method isCallerRecents(I)Z
    .registers 3
    .param p1, "callingUid"  # I

    .line 386
    iget v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    return v0
.end method

.method isFreezeTaskListReorderingSet()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 325
    iget-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    return v0
.end method

.method isRecentsComponent(Landroid/content/ComponentName;I)Z
    .registers 4
    .param p1, "cn"  # Landroid/content/ComponentName;
    .param p2, "uid"  # I

    .line 394
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    invoke-static {p2, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method isRecentsComponentHomeActivity(I)Z
    .registers 5
    .param p1, "userId"  # I

    .line 401
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 402
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 403
    .local v0, "defaultHomeActivity":Landroid/content/ComponentName;
    if-eqz v0, :cond_22

    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_22

    .line 404
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    .line 403
    :goto_23
    return v1
.end method

.method protected isTrimmable(Lcom/android/server/wm/TaskRecord;)Z
    .registers 8
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;

    .line 1413
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1416
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 1417
    return v1

    .line 1422
    :cond_8
    iget v2, v0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    const/4 v3, 0x0

    if-eqz v2, :cond_e

    .line 1423
    return v3

    .line 1427
    :cond_e
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    .line 1428
    .local v2, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityDisplay;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result v4

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getHomeStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/wm/ActivityDisplay;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result v5

    if-ge v4, v5, :cond_21

    goto :goto_22

    :cond_21
    move v1, v3

    :goto_22
    return v1
.end method

.method isUserRunning(II)Z
    .registers 4
    .param p1, "userId"  # I
    .param p2, "flags"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 856
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityManagerInternal;->isUserRunning(II)Z

    move-result v0

    return v0
.end method

.method isVisibleRecentTask(Lcom/android/server/wm/TaskRecord;)Z
    .registers 8
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1306
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_6c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVisibleRecentTask: task="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " minVis="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/RecentTasks;->mMinNumVisibleTasks:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " maxVis="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/RecentTasks;->mMaxNumVisibleTasks:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sessionDuration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/wm/RecentTasks;->mActiveTasksSessionDurationMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " inactiveDuration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1309
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getInactiveDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " activityType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1310
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getActivityType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " windowingMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1311
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getWindowingMode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " intentFlags="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1312
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1306
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    :cond_6c
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getActivityType()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_e2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_e2

    const/4 v5, 0x4

    if-eq v0, v5, :cond_7b

    goto :goto_89

    .line 1322
    :cond_7b
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v5, 0x800000

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_89

    .line 1324
    return v3

    .line 1329
    :cond_89
    :goto_89
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getWindowingMode()I

    move-result v0

    if-eq v0, v2, :cond_e1

    if-eq v0, v4, :cond_92

    goto :goto_bf

    .line 1333
    :cond_92
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v0, :cond_b2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ttop="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    :cond_b2
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1335
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_bf

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    if-ne v1, p1, :cond_bf

    .line 1337
    return v3

    .line 1344
    .end local v0  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_bf
    :goto_bf
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1345
    .restart local v0  # "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_d2

    .line 1346
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    .line 1347
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v1, :cond_d2

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->isSingleTaskInstance()Z

    move-result v2

    if-eqz v2, :cond_d2

    .line 1348
    return v3

    .line 1353
    .end local v1  # "display":Lcom/android/server/wm/ActivityDisplay;
    :cond_d2
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/LockTaskController;->getRootTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    if-ne p1, v1, :cond_df

    .line 1354
    return v3

    .line 1357
    :cond_df
    const/4 v1, 0x1

    return v1

    .line 1331
    .end local v0  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_e1
    return v3

    .line 1318
    :cond_e2
    return v3
.end method

.method loadParametersFromResources(Landroid/content/res/Resources;)V
    .registers 6
    .param p1, "res"  # Landroid/content/res/Resources;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 333
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 334
    const v0, 0x10e007a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mMinNumVisibleTasks:I

    .line 336
    const v0, 0x10e0071

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mMaxNumVisibleTasks:I

    goto :goto_47

    .line 338
    :cond_19
    const/4 v0, 0x0

    const-string v1, "ro.recents.grid"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 339
    const v0, 0x10e0079

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mMinNumVisibleTasks:I

    .line 341
    const v0, 0x10e0070

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mMaxNumVisibleTasks:I

    goto :goto_47

    .line 344
    :cond_35
    const v0, 0x10e0078

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mMinNumVisibleTasks:I

    .line 346
    const v0, 0x10e006f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mMaxNumVisibleTasks:I

    .line 349
    :goto_47
    const v0, 0x10e0009

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 351
    .local v0, "sessionDurationHrs":I
    if-lez v0, :cond_58

    .line 352
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    goto :goto_5a

    .line 353
    :cond_58
    const-wide/16 v1, -0x1

    :goto_5a
    iput-wide v1, p0, Lcom/android/server/wm/RecentTasks;->mActiveTasksSessionDurationMs:J

    .line 354
    return-void
.end method

.method loadRecentsComponent(Landroid/content/res/Resources;)V
    .registers 8
    .param p1, "res"  # Landroid/content/res/Resources;

    .line 361
    const v0, 0x1040199

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "rawRecentsComponent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 364
    return-void

    .line 367
    :cond_e
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 368
    .local v1, "cn":Landroid/content/ComponentName;
    if-eqz v1, :cond_49

    .line 370
    :try_start_14
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 371
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 372
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_31

    .line 373
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    .line 374
    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_31} :catch_32

    .line 378
    .end local v2  # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_31
    goto :goto_49

    .line 376
    :catch_32
    move-exception v2

    .line 377
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not load application info for recents component: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .end local v2  # "e":Landroid/os/RemoteException;
    :cond_49
    :goto_49
    return-void
.end method

.method loadUserRecentsLocked(I)V
    .registers 7
    .param p1, "userId"  # I

    .line 448
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 450
    return-void

    .line 454
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTasks;->loadPersistedTaskIdsForUserLocked(I)V

    .line 457
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 458
    .local v0, "preaddedTasks":Landroid/util/SparseBooleanArray;
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    .line 459
    .local v2, "task":Lcom/android/server/wm/TaskRecord;
    iget v4, v2, Lcom/android/server/wm/TaskRecord;->userId:I

    if-ne v4, p1, :cond_33

    invoke-static {v2}, Lcom/android/server/wm/RecentTasks;->shouldPersistTaskLocked(Lcom/android/server/wm/TaskRecord;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 460
    iget v4, v2, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 462
    .end local v2  # "task":Lcom/android/server/wm/TaskRecord;
    :cond_33
    goto :goto_17

    .line 464
    :cond_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading recents for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " into memory."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/wm/TaskPersister;->restoreTasksForUserLocked(ILandroid/util/SparseBooleanArray;)Ljava/util/List;

    move-result-object v1

    .line 466
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/TaskRecord;>;"
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 467
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->cleanupLocked(I)V

    .line 468
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 471
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-lez v2, :cond_6b

    .line 472
    invoke-direct {p0}, Lcom/android/server/wm/RecentTasks;->syncPersistentTaskIdsLocked()V

    .line 474
    :cond_6b
    return-void
.end method

.method notifyTaskPersisterLocked(Lcom/android/server/wm/TaskRecord;Z)V
    .registers 5
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "flush"  # Z

    .line 505
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 506
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    :goto_8
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 508
    return-void

    .line 510
    :cond_11
    invoke-direct {p0}, Lcom/android/server/wm/RecentTasks;->syncPersistentTaskIdsLocked()V

    .line 511
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/TaskPersister;->wakeup(Lcom/android/server/wm/TaskRecord;Z)V

    .line 512
    return-void
.end method

.method onLockTaskModeStateChanged(II)V
    .registers 6
    .param p1, "lockTaskModeState"  # I
    .param p2, "userId"  # I

    .line 636
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    .line 637
    return-void

    .line 639
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_2b

    .line 640
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskRecord;

    .line 641
    .local v0, "tr":Lcom/android/server/wm/TaskRecord;
    iget v2, v0, Lcom/android/server/wm/TaskRecord;->userId:I

    if-ne v2, p2, :cond_28

    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/wm/LockTaskController;->isTaskWhitelisted(Lcom/android/server/wm/TaskRecord;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 642
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/TaskRecord;)V

    .line 639
    .end local v0  # "tr":Lcom/android/server/wm/TaskRecord;
    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 645
    .end local v1  # "i":I
    :cond_2b
    return-void
.end method

.method onPackagesSuspendedChanged([Ljava/lang/String;ZI)V
    .registers 12
    .param p1, "packages"  # [Ljava/lang/String;
    .param p2, "suspended"  # Z
    .param p3, "userId"  # I

    .line 618
    invoke-static {p1}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    .line 619
    .local v0, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_42

    .line 620
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    .line 621
    .local v3, "tr":Lcom/android/server/wm/TaskRecord;
    iget-object v4, v3, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_3f

    iget-object v4, v3, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 622
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    iget v4, v3, Lcom/android/server/wm/TaskRecord;->userId:I

    if-ne v4, p3, :cond_3f

    iget-boolean v4, v3, Lcom/android/server/wm/TaskRecord;->realActivitySuspended:Z

    if-eq v4, p2, :cond_3f

    .line 625
    iput-boolean p2, v3, Lcom/android/server/wm/TaskRecord;->realActivitySuspended:Z

    .line 626
    const/4 v4, 0x0

    if-eqz p2, :cond_3c

    .line 627
    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v6, v3, Lcom/android/server/wm/TaskRecord;->taskId:I

    const-string v7, "suspended-package"

    invoke-virtual {v5, v6, v4, v2, v7}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    .line 630
    :cond_3c
    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/TaskRecord;Z)V

    .line 619
    .end local v3  # "tr":Lcom/android/server/wm/TaskRecord;
    :cond_3f
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 633
    .end local v1  # "i":I
    :cond_42
    return-void
.end method

.method onSystemReadyLocked()V
    .registers 2

    .line 544
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentTasks;->loadRecentsComponent(Landroid/content/res/Resources;)V

    .line 545
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 546
    return-void
.end method

.method registerCallback(Lcom/android/server/wm/RecentTasks$Callbacks;)V
    .registers 3
    .param p1, "callback"  # Lcom/android/server/wm/RecentTasks$Callbacks;

    .line 422
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    return-void
.end method

.method remove(Lcom/android/server/wm/TaskRecord;)V
    .registers 6
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;

    .line 1187
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1188
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/wm/RecentTasks;->notifyTaskRemoved(Lcom/android/server/wm/TaskRecord;ZZ)V

    .line 1189
    if-eqz p1, :cond_20

    .line 1190
    nop

    .line 1191
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1192
    .local v1, "taskPkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mUxPerf:Landroid/util/BoostFramework;

    if-eqz v2, :cond_20

    .line 1193
    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0, v1, v0}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;I)I

    .line 1196
    .end local v1  # "taskPkgName":Ljava/lang/String;
    :cond_20
    return-void
.end method

.method removeAllVisibleTasks(I)V
    .registers 7
    .param p1, "userId"  # I

    .line 661
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->getProfileIds(I)Ljava/util/Set;

    move-result-object v0

    .line 662
    .local v0, "profileIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_34

    .line 663
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    .line 664
    .local v3, "tr":Lcom/android/server/wm/TaskRecord;
    iget v4, v3, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    goto :goto_31

    .line 665
    :cond_23
    invoke-virtual {p0, v3}, Lcom/android/server/wm/RecentTasks;->isVisibleRecentTask(Lcom/android/server/wm/TaskRecord;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 666
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 667
    invoke-direct {p0, v3, v2, v2}, Lcom/android/server/wm/RecentTasks;->notifyTaskRemoved(Lcom/android/server/wm/TaskRecord;ZZ)V

    .line 662
    .end local v3  # "tr":Lcom/android/server/wm/TaskRecord;
    :cond_31
    :goto_31
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 670
    .end local v1  # "i":I
    :cond_34
    return-void
.end method

.method removeTasksByPackageName(Ljava/lang/String;I)V
    .registers 10
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 648
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_37

    .line 649
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    .line 650
    .local v2, "tr":Lcom/android/server/wm/TaskRecord;
    nop

    .line 651
    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 652
    .local v3, "taskPackageName":Ljava/lang/String;
    iget v4, v2, Lcom/android/server/wm/TaskRecord;->userId:I

    if-eq v4, p2, :cond_24

    goto :goto_34

    .line 653
    :cond_24
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    goto :goto_34

    .line 655
    :cond_2b
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v5, v2, Lcom/android/server/wm/TaskRecord;->taskId:I

    const-string v6, "remove-package-task"

    invoke-virtual {v4, v5, v1, v1, v6}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    .line 648
    .end local v2  # "tr":Lcom/android/server/wm/TaskRecord;
    .end local v3  # "taskPackageName":Ljava/lang/String;
    :goto_34
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 658
    .end local v0  # "i":I
    :cond_37
    return-void
.end method

.method resetFreezeTaskListReordering(Lcom/android/server/wm/TaskRecord;)V
    .registers 5
    .param p1, "topTask"  # Lcom/android/server/wm/TaskRecord;

    .line 287
    iget-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    if-nez v0, :cond_5

    .line 288
    return-void

    .line 292
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    .line 293
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 296
    if-eqz p1, :cond_1d

    .line 297
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 298
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 302
    :cond_1d
    invoke-direct {p0}, Lcom/android/server/wm/RecentTasks;->trimInactiveRecentTasks()V

    .line 304
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 305
    return-void
.end method

.method resetFreezeTaskListReorderingOnTimeout()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 315
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 316
    .local v1, "focusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_15

    .line 317
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    goto :goto_16

    .line 318
    :cond_15
    const/4 v2, 0x0

    :goto_16
    nop

    .line 319
    .local v2, "topTask":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RecentTasks;->resetFreezeTaskListReordering(Lcom/android/server/wm/TaskRecord;)V

    .line 320
    .end local v1  # "focusedStack":Lcom/android/server/wm/ActivityStack;
    .end local v2  # "topTask":Lcom/android/server/wm/TaskRecord;
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 321
    return-void

    .line 320
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 4
    .param p1, "image"  # Landroid/graphics/Bitmap;
    .param p2, "path"  # Ljava/lang/String;

    .line 553
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskPersister;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 554
    return-void
.end method

.method setFreezeTaskListReordering()V
    .registers 5

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    .line 278
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 279
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListTimeoutMs:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 280
    return-void
.end method

.method setFreezeTaskListTimeout(J)V
    .registers 3
    .param p1, "timeoutMs"  # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 263
    iput-wide p1, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListTimeoutMs:J

    .line 264
    return-void
.end method

.method setGlobalMaxNumTasks(I)V
    .registers 2
    .param p1, "globalMaxNumTasks"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 258
    iput p1, p0, Lcom/android/server/wm/RecentTasks;->mGlobalMaxNumTasks:I

    .line 259
    return-void
.end method

.method setParameters(IIJ)V
    .registers 5
    .param p1, "minNumVisibleTasks"  # I
    .param p2, "maxNumVisibleTasks"  # I
    .param p3, "activeSessionDurationMs"  # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 251
    iput p1, p0, Lcom/android/server/wm/RecentTasks;->mMinNumVisibleTasks:I

    .line 252
    iput p2, p0, Lcom/android/server/wm/RecentTasks;->mMaxNumVisibleTasks:I

    .line 253
    iput-wide p3, p0, Lcom/android/server/wm/RecentTasks;->mActiveTasksSessionDurationMs:J

    .line 254
    return-void
.end method

.method unloadUserDataFromMemoryLocked(I)V
    .registers 4
    .param p1, "userId"  # I

    .line 591
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unloading recents for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " from memory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 594
    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTasks;->removeTasksForUserLocked(I)V

    .line 596
    :cond_2b
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 597
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskPersister;->unloadUserDataFromMemory(I)V

    .line 598
    return-void
.end method

.method unregisterCallback(Lcom/android/server/wm/RecentTasks$Callbacks;)V
    .registers 3
    .param p1, "callback"  # Lcom/android/server/wm/RecentTasks$Callbacks;

    .line 426
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 427
    return-void
.end method

.method usersWithRecentsLoadedLocked()[I
    .registers 6

    .line 569
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 570
    .local v0, "usersWithRecentsLoaded":[I
    const/4 v1, 0x0

    .line 571
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    array-length v3, v0

    if-ge v2, v3, :cond_23

    .line 572
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 573
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 574
    add-int/lit8 v4, v1, 0x1

    .end local v1  # "len":I
    .local v4, "len":I
    aput v3, v0, v1

    move v1, v4

    .line 571
    .end local v3  # "userId":I
    .end local v4  # "len":I
    .restart local v1  # "len":I
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 577
    .end local v2  # "i":I
    :cond_23
    array-length v2, v0

    if-ge v1, v2, :cond_2b

    .line 579
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    return-object v2

    .line 581
    :cond_2b
    return-object v0
.end method
