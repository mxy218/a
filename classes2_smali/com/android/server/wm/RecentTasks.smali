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


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 119
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/wm/RecentTasks;->FREEZE_TASK_LIST_TIMEOUT_MS:J

    .line 122
    sget-object v0, Lcom/android/server/wm/-$$Lambda$RecentTasks$KPkDUQ9KJ-vmXlmV8HHAucQJJdQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RecentTasks$KPkDUQ9KJ-vmXlmV8HHAucQJJdQ;

    sput-object v0, Lcom/android/server/wm/RecentTasks;->TASK_ID_COMPARATOR:Ljava/util/Comparator;

    .line 127
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    sput-object v0, Lcom/android/server/wm/RecentTasks;->NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

    .line 128
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    sput-object v0, Lcom/android/server/wm/RecentTasks;->NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;)V
    .registers 11

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    .line 162
    new-instance v0, Landroid/util/SparseBooleanArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    .line 169
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    .line 187
    sget-wide v0, Lcom/android/server/wm/RecentTasks;->FREEZE_TASK_LIST_TIMEOUT_MS:J

    iput-wide v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListTimeoutMs:J

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    .line 193
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    .line 196
    new-instance v0, Lcom/android/server/wm/RecentTasks$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentTasks$1;-><init>(Lcom/android/server/wm/RecentTasks;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 221
    new-instance v0, Lcom/android/server/wm/-$$Lambda$Z9QEXZevRsInPMEXX0zFWg8YGMQ;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$Z9QEXZevRsInPMEXX0zFWg8YGMQ;-><init>(Lcom/android/server/wm/RecentTasks;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    .line 234
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    .line 235
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 236
    iput-object p1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 237
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 238
    new-instance v7, Lcom/android/server/wm/TaskPersister;

    iget-object v6, p2, Lcom/android/server/wm/ActivityStackSupervisor;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    move-object v1, v7

    move-object v3, p2

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/TaskPersister;-><init>(Ljava/io/File;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/RecentTasks;Lcom/android/server/wm/PersisterQueue;)V

    iput-object v7, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    .line 240
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxRecentTasksStatic()I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/RecentTasks;->mGlobalMaxNumTasks:I

    .line 241
    const p1, 0x111008f

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/RecentTasks;->mHasVisibleRecentTasks:Z

    .line 242
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentTasks;->loadParametersFromResources(Landroid/content/res/Resources;)V

    .line 243
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/TaskPersister;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    .line 162
    new-instance v0, Landroid/util/SparseBooleanArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    .line 169
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    .line 187
    sget-wide v0, Lcom/android/server/wm/RecentTasks;->FREEZE_TASK_LIST_TIMEOUT_MS:J

    iput-wide v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListTimeoutMs:J

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    .line 193
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    .line 196
    new-instance v0, Lcom/android/server/wm/RecentTasks$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentTasks$1;-><init>(Lcom/android/server/wm/RecentTasks;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 221
    new-instance v0, Lcom/android/server/wm/-$$Lambda$Z9QEXZevRsInPMEXX0zFWg8YGMQ;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$Z9QEXZevRsInPMEXX0zFWg8YGMQ;-><init>(Lcom/android/server/wm/RecentTasks;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    .line 226
    iput-object p1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 227
    iget-object p1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-object p1, p0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 228
    iput-object p2, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    .line 229
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxRecentTasksStatic()I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/RecentTasks;->mGlobalMaxNumTasks:I

    .line 230
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/RecentTasks;->mHasVisibleRecentTasks:Z

    .line 231
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/RecentTasks;)Z
    .registers 1

    .line 108
    iget-boolean p0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/server/wm/RecentTasks;)Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object p0
.end method

.method private canAddTaskWithoutTrim(Lcom/android/server/wm/TaskRecord;)Z
    .registers 3

    .line 803
    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTasks;->findRemoveIndexForAddTask(Lcom/android/server/wm/TaskRecord;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method private findRemoveIndexForAddTask(Lcom/android/server/wm/TaskRecord;)I
    .registers 16

    .line 1415
    iget-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    .line 1417
    return v1

    .line 1420
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1421
    iget-object v2, p1, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    .line 1422
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Landroid/content/Intent;->isDocument()Z

    move-result v5

    if-eqz v5, :cond_1a

    move v5, v4

    goto :goto_1b

    :cond_1a
    move v5, v3

    .line 1423
    :goto_1b
    iget v6, p1, Lcom/android/server/wm/TaskRecord;->maxRecents:I

    sub-int/2addr v6, v4

    .line 1424
    move v7, v6

    move v6, v3

    :goto_20
    if-ge v6, v0, :cond_b1

    .line 1425
    iget-object v8, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/TaskRecord;

    .line 1426
    if-eq p1, v8, :cond_b0

    .line 1427
    invoke-direct {p0, p1, v8}, Lcom/android/server/wm/RecentTasks;->hasCompatibleActivityTypeAndWindowingMode(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/TaskRecord;)Z

    move-result v9

    if-eqz v9, :cond_ac

    iget v9, p1, Lcom/android/server/wm/TaskRecord;->userId:I

    iget v10, v8, Lcom/android/server/wm/TaskRecord;->userId:I

    if-eq v9, v10, :cond_3a

    .line 1429
    goto/16 :goto_ac

    .line 1431
    :cond_3a
    iget-object v9, v8, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    .line 1432
    iget-object v10, p1, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v10, :cond_4c

    iget-object v10, p1, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v11, v8, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    .line 1433
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4c

    move v10, v4

    goto :goto_4d

    :cond_4c
    move v10, v3

    .line 1434
    :goto_4d
    if-eqz v2, :cond_57

    invoke-virtual {v2, v9}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v11

    if-eqz v11, :cond_57

    move v11, v4

    goto :goto_58

    :cond_57
    move v11, v3

    .line 1435
    :goto_58
    nop

    .line 1436
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v12

    .line 1437
    const/high16 v13, 0x10080000

    and-int/2addr v13, v12

    if-eqz v13, :cond_69

    const/high16 v13, 0x8000000

    and-int/2addr v12, v13

    if-eqz v12, :cond_69

    .line 1439
    move v12, v4

    goto :goto_6a

    .line 1441
    :cond_69
    move v12, v3

    :goto_6a
    if-eqz v9, :cond_74

    invoke-virtual {v9}, Landroid/content/Intent;->isDocument()Z

    move-result v9

    if-eqz v9, :cond_74

    move v9, v4

    goto :goto_75

    :cond_74
    move v9, v3

    .line 1442
    :goto_75
    if-eqz v5, :cond_7b

    if-eqz v9, :cond_7b

    move v13, v4

    goto :goto_7c

    :cond_7b
    move v13, v3

    .line 1443
    :goto_7c
    if-nez v10, :cond_83

    if-nez v11, :cond_83

    if-nez v13, :cond_83

    .line 1444
    goto :goto_ac

    .line 1447
    :cond_83
    if-eqz v13, :cond_a6

    .line 1449
    iget-object v9, p1, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v9, :cond_99

    iget-object v9, v8, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v9, :cond_99

    iget-object v9, p1, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v8, v8, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 1451
    invoke-virtual {v9, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_99

    move v8, v4

    goto :goto_9a

    :cond_99
    move v8, v3

    .line 1452
    :goto_9a
    if-nez v8, :cond_9d

    .line 1455
    goto :goto_ac

    .line 1456
    :cond_9d
    if-lez v7, :cond_ab

    .line 1457
    add-int/lit8 v7, v7, -0x1

    .line 1458
    if-eqz v11, :cond_ac

    if-eqz v12, :cond_ab

    .line 1462
    goto :goto_ac

    .line 1467
    :cond_a6
    if-nez v5, :cond_ac

    if-eqz v9, :cond_ab

    .line 1469
    goto :goto_ac

    .line 1467
    :cond_ab
    goto :goto_b0

    .line 1424
    :cond_ac
    :goto_ac
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_20

    .line 1472
    :cond_b0
    :goto_b0
    return v6

    .line 1474
    :cond_b1
    return v1
.end method

.method private getRecentTasksImpl(IIZZII)Ljava/util/ArrayList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZZII)",
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 870
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    move v0, v1

    .line 872
    :goto_8
    const/4 v2, 0x4

    invoke-virtual {p0, p5, v2}, Lcom/android/server/wm/RecentTasks;->isUserRunning(II)Z

    move-result v2

    if-nez v2, :cond_30

    .line 873
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is still locked. Cannot load recents"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityTaskManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 876
    :cond_30
    invoke-virtual {p0, p5}, Lcom/android/server/wm/RecentTasks;->loadUserRecentsLocked(I)V

    .line 878
    invoke-virtual {p0, p5}, Lcom/android/server/wm/RecentTasks;->getProfileIds(I)Ljava/util/Set;

    move-result-object v2

    .line 879
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {v2, p5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 881
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    .line 882
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 883
    nop

    .line 884
    move v4, v1

    :goto_4b
    if-ge v1, v3, :cond_b6

    .line 885
    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TaskRecord;

    .line 887
    invoke-virtual {p0, v5}, Lcom/android/server/wm/RecentTasks;->isVisibleRecentTask(Lcom/android/server/wm/TaskRecord;)Z

    move-result v6

    if-eqz v6, :cond_b3

    .line 888
    add-int/lit8 v4, v4, 0x1

    .line 889
    invoke-direct {p0, v5, v1, v4, v0}, Lcom/android/server/wm/RecentTasks;->isInVisibleRange(Lcom/android/server/wm/TaskRecord;IIZ)Z

    move-result v6

    if-eqz v6, :cond_b3

    .line 901
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v6, p1, :cond_6a

    .line 902
    goto :goto_b3

    .line 906
    :cond_6a
    iget v6, v5, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_77

    .line 908
    goto :goto_b3

    .line 911
    :cond_77
    iget-boolean v6, v5, Lcom/android/server/wm/TaskRecord;->realActivitySuspended:Z

    if-eqz v6, :cond_7c

    .line 913
    goto :goto_b3

    .line 916
    :cond_7c
    if-nez p3, :cond_89

    .line 919
    invoke-virtual {v5}, Lcom/android/server/wm/TaskRecord;->isActivityTypeHome()Z

    move-result v6

    if-nez v6, :cond_89

    iget v6, v5, Lcom/android/server/wm/TaskRecord;->effectiveUid:I

    if-eq v6, p6, :cond_89

    .line 921
    goto :goto_b3

    .line 925
    :cond_89
    iget-boolean v6, v5, Lcom/android/server/wm/TaskRecord;->autoRemoveRecents:Z

    if-eqz v6, :cond_94

    invoke-virtual {v5}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-nez v6, :cond_94

    .line 930
    goto :goto_b3

    .line 932
    :cond_94
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_9d

    iget-boolean v6, v5, Lcom/android/server/wm/TaskRecord;->isAvailable:Z

    if-nez v6, :cond_9d

    .line 936
    goto :goto_b3

    .line 939
    :cond_9d
    iget-boolean v6, v5, Lcom/android/server/wm/TaskRecord;->mUserSetupComplete:Z

    if-nez v6, :cond_a2

    .line 944
    goto :goto_b3

    .line 947
    :cond_a2
    invoke-virtual {p0, v5}, Lcom/android/server/wm/RecentTasks;->createRecentTaskInfo(Lcom/android/server/wm/TaskRecord;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v5

    .line 948
    if-nez p4, :cond_b0

    .line 949
    iget-object v6, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    const/4 v7, 0x0

    check-cast v7, Landroid/os/Bundle;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 952
    :cond_b0
    invoke-virtual {p5, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    :cond_b3
    :goto_b3
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 954
    :cond_b6
    return-object p5
.end method

.method private hasCompatibleActivityTypeAndWindowingMode(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/TaskRecord;)Z
    .registers 11

    .line 1733
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getActivityType()I

    move-result v0

    .line 1734
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getWindowingMode()I

    move-result p1

    .line 1735
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_e

    move v3, v1

    goto :goto_f

    :cond_e
    move v3, v2

    .line 1736
    :goto_f
    if-nez p1, :cond_13

    move v4, v1

    goto :goto_14

    :cond_13
    move v4, v2

    .line 1737
    :goto_14
    invoke-virtual {p2}, Lcom/android/server/wm/TaskRecord;->getActivityType()I

    move-result v5

    .line 1738
    invoke-virtual {p2}, Lcom/android/server/wm/TaskRecord;->getWindowingMode()I

    move-result p2

    .line 1739
    if-nez v5, :cond_20

    move v6, v1

    goto :goto_21

    :cond_20
    move v6, v2

    .line 1740
    :goto_21
    if-nez p2, :cond_25

    move v7, v1

    goto :goto_26

    :cond_25
    move v7, v2

    .line 1744
    :goto_26
    if-eq v0, v5, :cond_2f

    if-nez v3, :cond_2f

    if-eqz v6, :cond_2d

    goto :goto_2f

    :cond_2d
    move v0, v2

    goto :goto_30

    :cond_2f
    :goto_2f
    move v0, v1

    .line 1746
    :goto_30
    if-eq p1, p2, :cond_39

    if-nez v4, :cond_39

    if-eqz v7, :cond_37

    goto :goto_39

    :cond_37
    move p1, v2

    goto :goto_3a

    :cond_39
    :goto_39
    move p1, v1

    .line 1749
    :goto_3a
    if-eqz v0, :cond_3f

    if-eqz p1, :cond_3f

    goto :goto_40

    :cond_3f
    move v1, v2

    :goto_40
    return v1
.end method

.method private isActiveRecentTask(Lcom/android/server/wm/TaskRecord;Landroid/util/SparseBooleanArray;)Z
    .registers 6

    .line 1246
    iget v0, p1, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 1249
    return v1

    .line 1252
    :cond_a
    iget v0, p1, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_24

    iget v0, p1, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    iget v2, p1, Lcom/android/server/wm/TaskRecord;->taskId:I

    if-eq v0, v2, :cond_24

    .line 1254
    iget p1, p1, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->getTask(I)Lcom/android/server/wm/TaskRecord;

    move-result-object p1

    .line 1255
    if-eqz p1, :cond_24

    .line 1256
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/RecentTasks;->isActiveRecentTask(Lcom/android/server/wm/TaskRecord;Landroid/util/SparseBooleanArray;)Z

    move-result p1

    if-nez p1, :cond_24

    .line 1259
    return v1

    .line 1265
    :cond_24
    const/4 p1, 0x1

    return p1
.end method

.method private isInVisibleRange(Lcom/android/server/wm/TaskRecord;IIZ)Z
    .registers 9

    .line 1332
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p4, :cond_1b

    .line 1334
    nop

    .line 1335
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Intent;->getFlags()I

    move-result p4

    const/high16 v2, 0x800000

    and-int/2addr p4, v2

    if-ne p4, v2, :cond_14

    move p4, v1

    goto :goto_15

    :cond_14
    move p4, v0

    .line 1337
    :goto_15
    if-eqz p4, :cond_1b

    .line 1339
    if-nez p2, :cond_1a

    move v0, v1

    :cond_1a
    return v0

    .line 1343
    :cond_1b
    iget p2, p0, Lcom/android/server/wm/RecentTasks;->mMinNumVisibleTasks:I

    if-ltz p2, :cond_22

    if-gt p3, p2, :cond_22

    .line 1346
    return v1

    .line 1349
    :cond_22
    iget p2, p0, Lcom/android/server/wm/RecentTasks;->mMaxNumVisibleTasks:I

    if-ltz p2, :cond_2a

    .line 1351
    if-gt p3, p2, :cond_29

    move v0, v1

    :cond_29
    return v0

    .line 1354
    :cond_2a
    iget-wide p2, p0, Lcom/android/server/wm/RecentTasks;->mActiveTasksSessionDurationMs:J

    const-wide/16 v2, 0x0

    cmp-long p2, p2, v2

    if-lez p2, :cond_3d

    .line 1357
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getInactiveDuration()J

    move-result-wide p1

    iget-wide p3, p0, Lcom/android/server/wm/RecentTasks;->mActiveTasksSessionDurationMs:J

    cmp-long p1, p1, p3

    if-gtz p1, :cond_3d

    .line 1358
    return v1

    .line 1362
    :cond_3d
    return v0
.end method

.method static synthetic lambda$static$0(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/TaskRecord;)I
    .registers 2

    .line 123
    iget p1, p1, Lcom/android/server/wm/TaskRecord;->taskId:I

    iget p0, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    sub-int/2addr p1, p0

    return p1
.end method

.method private loadPersistedTaskIdsForUserLocked(I)V
    .registers 4

    .line 476
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_29

    .line 477
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskPersister;->loadPersistedTaskIdsForUser(I)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loaded persisted task ids for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_29
    return-void
.end method

.method private moveAffiliatedTasksToFront(Lcom/android/server/wm/TaskRecord;I)Z
    .registers 19

    .line 1551
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1552
    nop

    .line 1553
    move-object v4, v1

    move v5, v2

    .line 1554
    :goto_f
    iget-object v6, v4, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    if-eqz v6, :cond_1a

    if-lez v5, :cond_1a

    .line 1555
    iget-object v4, v4, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    .line 1556
    add-int/lit8 v5, v5, -0x1

    goto :goto_f

    .line 1561
    :cond_1a
    iget v6, v4, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    iget v7, v1, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    if-ne v6, v7, :cond_22

    const/4 v6, 0x1

    goto :goto_23

    :cond_22
    const/4 v6, 0x0

    .line 1562
    :goto_23
    nop

    .line 1563
    move-object v10, v4

    move v7, v5

    .line 1564
    :goto_26
    const-string v11, " @"

    const-string v12, "Bad chain @"

    const-string v13, "ActivityTaskManager"

    if-ge v7, v3, :cond_167

    .line 1565
    iget-object v14, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/TaskRecord;

    .line 1568
    const/4 v15, -0x1

    if-ne v14, v4, :cond_5f

    .line 1570
    iget-object v9, v14, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    if-nez v9, :cond_41

    iget v9, v14, Lcom/android/server/wm/TaskRecord;->mNextAffiliateTaskId:I

    if-eq v9, v15, :cond_6b

    .line 1571
    :cond_41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": first task has next affiliate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    nop

    .line 1574
    const/4 v9, 0x0

    goto/16 :goto_168

    .line 1578
    :cond_5f
    iget-object v9, v14, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    if-ne v9, v10, :cond_128

    iget v9, v14, Lcom/android/server/wm/TaskRecord;->mNextAffiliateTaskId:I

    iget v8, v10, Lcom/android/server/wm/TaskRecord;->taskId:I

    if-eq v9, v8, :cond_6b

    goto/16 :goto_128

    .line 1589
    :cond_6b
    iget v8, v14, Lcom/android/server/wm/TaskRecord;->mPrevAffiliateTaskId:I

    const-string v9, ": last task "

    const-string v10, " has previous affiliate "

    if-ne v8, v15, :cond_9a

    .line 1591
    iget-object v3, v14, Lcom/android/server/wm/TaskRecord;->mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

    if-eqz v3, :cond_167

    .line 1592
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/android/server/wm/TaskRecord;->mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    const/4 v9, 0x0

    goto/16 :goto_168

    .line 1601
    :cond_9a
    iget-object v8, v14, Lcom/android/server/wm/TaskRecord;->mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

    const-string v15, ": task "

    if-nez v8, :cond_ce

    .line 1602
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/android/server/wm/TaskRecord;->mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " but should be id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/android/server/wm/TaskRecord;->mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    nop

    .line 1607
    const/4 v9, 0x0

    goto/16 :goto_168

    .line 1610
    :cond_ce
    iget v8, v14, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    iget v10, v1, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    if-eq v8, v10, :cond_103

    .line 1611
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " has affiliated id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v14, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " but should be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    nop

    .line 1616
    const/4 v9, 0x0

    goto :goto_168

    .line 1618
    :cond_103
    nop

    .line 1619
    add-int/lit8 v7, v7, 0x1

    .line 1620
    if-lt v7, v3, :cond_125

    .line 1621
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad chain ran off index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    nop

    .line 1624
    const/4 v9, 0x0

    goto :goto_168

    .line 1626
    :cond_125
    move-object v10, v14

    goto/16 :goto_26

    .line 1580
    :cond_128
    :goto_128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": middle task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has bad next affiliate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v14, Lcom/android/server/wm/TaskRecord;->mNextAffiliateTaskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    nop

    .line 1586
    const/4 v9, 0x0

    goto :goto_168

    .line 1627
    :cond_167
    move v9, v6

    :goto_168
    if-eqz v9, :cond_18d

    .line 1628
    if-ge v7, v2, :cond_18d

    .line 1629
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": did not extend to task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    const/4 v9, 0x0

    .line 1634
    :cond_18d
    if-eqz v9, :cond_1a6

    .line 1637
    move v1, v5

    :goto_190
    if-gt v1, v7, :cond_1a4

    .line 1640
    iget-object v2, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    .line 1641
    iget-object v3, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    sub-int v4, v1, v5

    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1637
    add-int/lit8 v1, v1, 0x1

    goto :goto_190

    .line 1645
    :cond_1a4
    const/4 v0, 0x1

    return v0

    .line 1649
    :cond_1a6
    const/4 v0, 0x0

    return v0
.end method

.method private notifyTaskAdded(Lcom/android/server/wm/TaskRecord;)V
    .registers 4

    .line 427
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 428
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/RecentTasks$Callbacks;

    invoke-interface {v1, p1}, Lcom/android/server/wm/RecentTasks$Callbacks;->onRecentTaskAdded(Lcom/android/server/wm/TaskRecord;)V

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 430
    :cond_17
    return-void
.end method

.method private notifyTaskRemoved(Lcom/android/server/wm/TaskRecord;ZZ)V
    .registers 6

    .line 433
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 434
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/RecentTasks$Callbacks;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/wm/RecentTasks$Callbacks;->onRecentTaskRemoved(Lcom/android/server/wm/TaskRecord;ZZ)V

    .line 433
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 436
    :cond_17
    return-void
.end method

.method private processNextAffiliateChainLocked(I)I
    .registers 12

    .line 1479
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskRecord;

    .line 1480
    iget v1, v0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    .line 1483
    iget v2, v0, Lcom/android/server/wm/TaskRecord;->taskId:I

    const/4 v3, 0x1

    if-ne v2, v1, :cond_1b

    iget-object v2, v0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

    if-nez v2, :cond_1b

    iget-object v2, v0, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    if-nez v2, :cond_1b

    .line 1488
    iput-boolean v3, v0, Lcom/android/server/wm/TaskRecord;->inRecents:Z

    .line 1489
    add-int/2addr p1, v3

    return p1

    .line 1493
    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1494
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_27
    if-lt v0, p1, :cond_42

    .line 1495
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    .line 1496
    iget v4, v2, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    if-ne v4, v1, :cond_3f

    .line 1497
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1498
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1494
    :cond_3f
    add-int/lit8 v0, v0, -0x1

    goto :goto_27

    .line 1504
    :cond_42
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/wm/RecentTasks;->TASK_ID_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1508
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskRecord;

    .line 1509
    iput-boolean v3, v0, Lcom/android/server/wm/TaskRecord;->inRecents:Z

    .line 1510
    iget-object v2, v0, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    const/4 v4, 0x0

    const-string v5, "ActivityTaskManager"

    if-eqz v2, :cond_77

    .line 1511
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Link error 1 first.next="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    invoke-virtual {v0, v4}, Lcom/android/server/wm/TaskRecord;->setNextAffiliate(Lcom/android/server/wm/TaskRecord;)V

    .line 1513
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/TaskRecord;Z)V

    .line 1516
    :cond_77
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1517
    move v2, v1

    :goto_7e
    add-int/lit8 v6, v0, -0x1

    if-ge v2, v6, :cond_f7

    .line 1518
    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/TaskRecord;

    .line 1519
    iget-object v7, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/TaskRecord;

    .line 1520
    iget-object v8, v6, Lcom/android/server/wm/TaskRecord;->mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

    if-eq v8, v7, :cond_c4

    .line 1521
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Link error 2 next="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " prev="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/android/server/wm/TaskRecord;->mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " setting prev="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    invoke-virtual {v6, v7}, Lcom/android/server/wm/TaskRecord;->setPrevAffiliate(Lcom/android/server/wm/TaskRecord;)V

    .line 1524
    invoke-virtual {p0, v6, v1}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/TaskRecord;Z)V

    .line 1526
    :cond_c4
    iget-object v8, v7, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    if-eq v8, v6, :cond_f4

    .line 1527
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Link error 3 prev="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " next="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " setting next="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    invoke-virtual {v7, v6}, Lcom/android/server/wm/TaskRecord;->setNextAffiliate(Lcom/android/server/wm/TaskRecord;)V

    .line 1530
    invoke-virtual {p0, v7, v1}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/TaskRecord;Z)V

    .line 1532
    :cond_f4
    iput-boolean v3, v7, Lcom/android/server/wm/TaskRecord;->inRecents:Z

    .line 1517
    goto :goto_7e

    .line 1535
    :cond_f7
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    .line 1536
    iget-object v3, v2, Lcom/android/server/wm/TaskRecord;->mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

    if-eqz v3, :cond_11f

    .line 1537
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Link error 4 last.prev="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/wm/TaskRecord;->mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    invoke-virtual {v2, v4}, Lcom/android/server/wm/TaskRecord;->setPrevAffiliate(Lcom/android/server/wm/TaskRecord;)V

    .line 1539
    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/TaskRecord;Z)V

    .line 1543
    :cond_11f
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 1544
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1547
    add-int/2addr p1, v0

    return p1
.end method

.method private removeForAddTask(Lcom/android/server/wm/TaskRecord;)V
    .registers 4

    .line 1392
    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTasks;->findRemoveIndexForAddTask(Lcom/android/server/wm/TaskRecord;)I

    move-result v0

    .line 1393
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 1395
    return-void

    .line 1401
    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskRecord;

    .line 1402
    const/4 v1, 0x0

    if-eq v0, p1, :cond_16

    .line 1403
    invoke-direct {p0, v0, v1, v1}, Lcom/android/server/wm/RecentTasks;->notifyTaskRemoved(Lcom/android/server/wm/TaskRecord;ZZ)V

    .line 1407
    :cond_16
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/TaskRecord;Z)V

    .line 1408
    return-void
.end method

.method private removeTasksForUserLocked(I)V
    .registers 5

    .line 599
    if-gtz p1, :cond_19

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t remove recent task on user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    return-void

    .line 604
    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_21
    if-ltz v0, :cond_35

    .line 605
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    .line 606
    iget v2, v1, Lcom/android/server/wm/TaskRecord;->userId:I

    if-ne v2, p1, :cond_32

    .line 609
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/TaskRecord;)V

    .line 604
    :cond_32
    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    .line 612
    :cond_35
    return-void
.end method

.method private static shouldPersistTaskLocked(Lcom/android/server/wm/TaskRecord;)Z
    .registers 2

    .line 536
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 537
    iget-boolean p0, p0, Lcom/android/server/wm/TaskRecord;->isPersistable:Z

    if-eqz p0, :cond_12

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isHomeOrRecentsStack()Z

    move-result p0

    if-nez p0, :cond_12

    :cond_10
    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private syncPersistentTaskIdsLocked()V
    .registers 7

    .line 512
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_26

    .line 513
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 514
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 517
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 512
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 520
    :cond_26
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_2d
    if-ltz v0, :cond_8f

    .line 521
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    .line 522
    invoke-static {v2}, Lcom/android/server/wm/RecentTasks;->shouldPersistTaskLocked(Lcom/android/server/wm/TaskRecord;)Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 525
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_7d

    .line 526
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

    .line 528
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/wm/TaskRecord;->userId:I

    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 530
    :cond_7d
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    iget v2, v2, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 520
    :cond_8c
    add-int/lit8 v0, v0, -0x1

    goto :goto_2d

    .line 533
    :cond_8f
    return-void
.end method

.method private trimInactiveRecentTasks()V
    .registers 9

    .line 1169
    iget-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    if-eqz v0, :cond_5

    .line 1171
    return-void

    .line 1174
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1177
    :goto_b
    iget v1, p0, Lcom/android/server/wm/RecentTasks;->mGlobalMaxNumTasks:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_21

    .line 1178
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    .line 1179
    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/wm/RecentTasks;->notifyTaskRemoved(Lcom/android/server/wm/TaskRecord;ZZ)V

    .line 1180
    add-int/lit8 v0, v0, -0x1

    .line 1183
    goto :goto_b

    .line 1186
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/wm/RecentTasks;->getCurrentProfileIds()[I

    move-result-object v0

    .line 1187
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1188
    array-length v1, v0

    move v4, v2

    :goto_2c
    if-ge v4, v1, :cond_4a

    aget v5, v0, v4

    .line 1189
    invoke-virtual {p0, v5}, Lcom/android/server/wm/RecentTasks;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 1190
    if-eqz v6, :cond_47

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_47

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_47

    .line 1191
    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1188
    :cond_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 1198
    :cond_4a
    nop

    .line 1199
    move v0, v2

    move v1, v0

    :goto_4d
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_92

    .line 1200
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskRecord;

    .line 1202
    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v4, v5}, Lcom/android/server/wm/RecentTasks;->isActiveRecentTask(Lcom/android/server/wm/TaskRecord;Landroid/util/SparseBooleanArray;)Z

    move-result v5

    if-eqz v5, :cond_86

    .line 1203
    iget-boolean v5, p0, Lcom/android/server/wm/RecentTasks;->mHasVisibleRecentTasks:Z

    if-nez v5, :cond_6c

    .line 1205
    add-int/lit8 v0, v0, 0x1

    .line 1206
    goto :goto_4d

    .line 1209
    :cond_6c
    invoke-virtual {p0, v4}, Lcom/android/server/wm/RecentTasks;->isVisibleRecentTask(Lcom/android/server/wm/TaskRecord;)Z

    move-result v5

    if-nez v5, :cond_75

    .line 1211
    add-int/lit8 v0, v0, 0x1

    .line 1212
    goto :goto_4d

    .line 1214
    :cond_75
    add-int/lit8 v1, v1, 0x1

    .line 1215
    invoke-direct {p0, v4, v0, v1, v2}, Lcom/android/server/wm/RecentTasks;->isInVisibleRange(Lcom/android/server/wm/TaskRecord;IIZ)Z

    move-result v5

    if-nez v5, :cond_83

    .line 1216
    invoke-virtual {p0, v4}, Lcom/android/server/wm/RecentTasks;->isTrimmable(Lcom/android/server/wm/TaskRecord;)Z

    move-result v5

    if-nez v5, :cond_86

    .line 1218
    :cond_83
    add-int/lit8 v0, v0, 0x1

    .line 1219
    goto :goto_4d

    .line 1233
    :cond_86
    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1234
    invoke-direct {p0, v4, v3, v2}, Lcom/android/server/wm/RecentTasks;->notifyTaskRemoved(Lcom/android/server/wm/TaskRecord;ZZ)V

    .line 1235
    invoke-virtual {p0, v4, v2}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/TaskRecord;Z)V

    .line 1236
    goto :goto_4d

    .line 1237
    :cond_92
    return-void
.end method


# virtual methods
.method add(Lcom/android/server/wm/TaskRecord;)V
    .registers 7

    .line 1022
    iget v0, p1, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    iget v1, p1, Lcom/android/server/wm/TaskRecord;->taskId:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_14

    iget v0, p1, Lcom/android/server/wm/TaskRecord;->mNextAffiliateTaskId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    iget v0, p1, Lcom/android/server/wm/TaskRecord;->mPrevAffiliateTaskId:I

    if-eq v0, v1, :cond_12

    goto :goto_14

    :cond_12
    move v0, v3

    goto :goto_15

    :cond_14
    :goto_14
    move v0, v2

    .line 1026
    :goto_15
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1030
    iget-object v4, p1, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v4, :cond_20

    .line 1033
    return-void

    .line 1036
    :cond_20
    if-nez v0, :cond_2d

    if-lez v1, :cond_2d

    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_2d

    .line 1038
    return-void

    .line 1042
    :cond_2d
    if-eqz v0, :cond_44

    if-lez v1, :cond_44

    iget-boolean v1, p1, Lcom/android/server/wm/TaskRecord;->inRecents:Z

    if-eqz v1, :cond_44

    iget v1, p1, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 1043
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskRecord;

    iget v4, v4, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    if-ne v1, v4, :cond_44

    .line 1046
    return-void

    .line 1049
    :cond_44
    nop

    .line 1053
    iget-boolean v1, p1, Lcom/android/server/wm/TaskRecord;->inRecents:Z

    if-eqz v1, :cond_7d

    .line 1054
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1055
    if-ltz v1, :cond_65

    .line 1056
    if-nez v0, :cond_7d

    .line 1057
    iget-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    if-nez v0, :cond_61

    .line 1060
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1061
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1068
    :cond_61
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/TaskRecord;Z)V

    .line 1069
    return-void

    .line 1072
    :cond_65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Task with inRecent not in recents: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    move v1, v2

    goto :goto_7e

    .line 1078
    :cond_7d
    move v1, v3

    :goto_7e
    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTasks;->removeForAddTask(Lcom/android/server/wm/TaskRecord;)V

    .line 1080
    iput-boolean v2, p1, Lcom/android/server/wm/TaskRecord;->inRecents:Z

    .line 1081
    if-eqz v0, :cond_b6

    if-eqz v1, :cond_88

    goto :goto_b6

    .line 1087
    :cond_88
    if-eqz v0, :cond_be

    .line 1090
    iget-object v0, p1, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    .line 1091
    if-nez v0, :cond_90

    .line 1092
    iget-object v0, p1, Lcom/android/server/wm/TaskRecord;->mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

    .line 1094
    :cond_90
    if-eqz v0, :cond_b5

    .line 1095
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1096
    if-ltz v1, :cond_b3

    .line 1099
    iget-object v3, p1, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    if-ne v0, v3, :cond_a1

    .line 1102
    add-int/lit8 v1, v1, 0x1

    goto :goto_a2

    .line 1106
    :cond_a1
    nop

    .line 1110
    :goto_a2
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1111
    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTasks;->notifyTaskAdded(Lcom/android/server/wm/TaskRecord;)V

    .line 1114
    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/RecentTasks;->moveAffiliatedTasksToFront(Lcom/android/server/wm/TaskRecord;I)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 1116
    return-void

    .line 1121
    :cond_b1
    nop

    .line 1122
    goto :goto_b4

    .line 1125
    :cond_b3
    nop

    .line 1127
    :goto_b4
    goto :goto_bf

    .line 1130
    :cond_b5
    goto :goto_bf

    .line 1084
    :cond_b6
    :goto_b6
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1085
    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTasks;->notifyTaskAdded(Lcom/android/server/wm/TaskRecord;)V

    .line 1134
    :cond_be
    move v2, v1

    :goto_bf
    if-eqz v2, :cond_c6

    .line 1136
    iget p1, p1, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->cleanupLocked(I)V

    .line 1140
    :cond_c6
    invoke-direct {p0}, Lcom/android/server/wm/RecentTasks;->trimInactiveRecentTasks()V

    .line 1141
    return-void
.end method

.method addToBottom(Lcom/android/server/wm/TaskRecord;)Z
    .registers 3

    .line 1147
    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTasks;->canAddTaskWithoutTrim(Lcom/android/server/wm/TaskRecord;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1150
    const/4 p1, 0x0

    return p1

    .line 1153
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/TaskRecord;)V

    .line 1154
    const/4 p1, 0x1

    return p1
.end method

.method cleanupDisabledPackageTasksLocked(Ljava/lang/String;Ljava/util/Set;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 671
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_50

    .line 672
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    .line 673
    const/4 v3, -0x1

    if-eq p3, v3, :cond_1a

    iget v3, v2, Lcom/android/server/wm/TaskRecord;->userId:I

    if-eq v3, p3, :cond_1a

    .line 674
    goto :goto_4d

    .line 677
    :cond_1a
    iget-object v3, v2, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_25

    iget-object v3, v2, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_26

    :cond_25
    const/4 v3, 0x0

    .line 678
    :goto_26
    const/4 v4, 0x0

    if-eqz v3, :cond_41

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    if-eqz p2, :cond_3f

    .line 679
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    :cond_3f
    move v3, v1

    goto :goto_42

    :cond_41
    move v3, v4

    .line 680
    :goto_42
    if-eqz v3, :cond_4d

    .line 681
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v2, v2, Lcom/android/server/wm/TaskRecord;->taskId:I

    const-string v5, "disabled-package"

    invoke-virtual {v3, v2, v4, v1, v5}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    .line 671
    :cond_4d
    :goto_4d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 685
    :cond_50
    return-void
.end method

.method cleanupLocked(I)V
    .registers 12

    .line 693
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 694
    if-nez v0, :cond_9

    .line 697
    return-void

    .line 701
    :cond_9
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 702
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 704
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 705
    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_19
    const/4 v3, 0x0

    if-ltz v0, :cond_f0

    .line 706
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskRecord;

    .line 707
    const/4 v5, -0x1

    if-eq p1, v5, :cond_2d

    iget v5, v4, Lcom/android/server/wm/TaskRecord;->userId:I

    if-eq v5, p1, :cond_2d

    .line 709
    goto/16 :goto_ec

    .line 711
    :cond_2d
    iget-boolean v5, v4, Lcom/android/server/wm/TaskRecord;->autoRemoveRecents:Z

    const-string v6, "ActivityTaskManager"

    if-eqz v5, :cond_52

    invoke-virtual {v4}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-nez v5, :cond_52

    .line 713
    invoke-virtual {p0, v4}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/TaskRecord;)V

    .line 714
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing auto-remove without activity: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    goto/16 :goto_ec

    .line 718
    :cond_52
    iget-object v5, v4, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_ec

    .line 719
    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    iget-object v7, v4, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ActivityInfo;

    .line 720
    if-nez v5, :cond_7b

    .line 725
    :try_start_62
    iget-object v5, v4, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    const v7, 0x10000400

    invoke-interface {v1, v5, v7, p1}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v5
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_6b} :catch_78

    .line 731
    nop

    .line 732
    if-nez v5, :cond_70

    .line 733
    sget-object v5, Lcom/android/server/wm/RecentTasks;->NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

    .line 735
    :cond_70
    iget-object v7, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    iget-object v8, v4, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7b

    .line 728
    :catch_78
    move-exception v3

    .line 730
    goto/16 :goto_ec

    .line 737
    :cond_7b
    :goto_7b
    sget-object v7, Lcom/android/server/wm/RecentTasks;->NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

    const/high16 v8, 0x800000

    if-ne v5, v7, :cond_d5

    .line 741
    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    iget-object v7, v4, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 742
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 743
    if-nez v5, :cond_b0

    .line 745
    :try_start_91
    iget-object v5, v4, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x2000

    invoke-interface {v1, v5, v7, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_91 .. :try_end_9d} :catch_ae

    .line 750
    nop

    .line 751
    if-nez v5, :cond_a2

    .line 752
    sget-object v5, Lcom/android/server/wm/RecentTasks;->NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

    .line 754
    :cond_a2
    iget-object v7, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    iget-object v9, v4, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b0

    .line 747
    :catch_ae
    move-exception v3

    .line 749
    goto :goto_ec

    .line 756
    :cond_b0
    :goto_b0
    sget-object v7, Lcom/android/server/wm/RecentTasks;->NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

    if-eq v5, v7, :cond_bd

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, v8

    if-nez v5, :cond_ba

    goto :goto_bd

    .line 766
    :cond_ba
    iput-boolean v3, v4, Lcom/android/server/wm/TaskRecord;->isAvailable:Z

    .line 768
    goto :goto_ec

    .line 759
    :cond_bd
    :goto_bd
    invoke-virtual {p0, v4}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/TaskRecord;)V

    .line 760
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing no longer valid recent: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    goto :goto_ec

    .line 769
    :cond_d5
    iget-boolean v6, v5, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v6, :cond_ea

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v6, :cond_ea

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, v8

    if-nez v5, :cond_e7

    goto :goto_ea

    .line 783
    :cond_e7
    iput-boolean v2, v4, Lcom/android/server/wm/TaskRecord;->isAvailable:Z

    goto :goto_ec

    .line 779
    :cond_ea
    :goto_ea
    iput-boolean v3, v4, Lcom/android/server/wm/TaskRecord;->isAvailable:Z

    .line 705
    :cond_ec
    :goto_ec
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_19

    .line 790
    :cond_f0
    nop

    .line 791
    iget-object p1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 792
    :goto_f7
    if-ge v3, p1, :cond_fe

    .line 793
    invoke-direct {p0, v3}, Lcom/android/server/wm/RecentTasks;->processNextAffiliateChainLocked(I)I

    move-result v3

    goto :goto_f7

    .line 796
    :cond_fe
    return-void
.end method

.method containsTaskId(II)Z
    .registers 4

    .line 486
    invoke-direct {p0, p2}, Lcom/android/server/wm/RecentTasks;->loadPersistedTaskIdsForUserLocked(I)V

    .line 487
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method createRecentTaskInfo(Lcom/android/server/wm/TaskRecord;)Landroid/app/ActivityManager$RecentTaskInfo;
    .registers 3

    .line 1719
    new-instance v0, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    .line 1720
    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskRecord;->fillTaskInfo(Landroid/app/TaskInfo;)V

    .line 1722
    iget-boolean p1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isRunning:Z

    if-eqz p1, :cond_f

    iget p1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    goto :goto_10

    :cond_f
    const/4 p1, -0x1

    :goto_10
    iput p1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 1723
    iget p1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    iput p1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    .line 1724
    return-object v0
.end method

.method dump(Ljava/io/PrintWriter;ZLjava/lang/String;)V
    .registers 17

    .line 1653
    move-object v0, p0

    move-object v7, p1

    move-object/from16 v1, p3

    const-string v2, "ACTIVITY MANAGER RECENT TASKS (dumpsys activity recents)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1654
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRecentsUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1655
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRecentsComponent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1656
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFreezeTaskListReordering="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1657
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFreezeTaskListReorderingPendingTimeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v4, v0, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    .line 1658
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService$H;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1657
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1659
    iget-object v2, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_72

    .line 1660
    return-void

    .line 1664
    :cond_72
    nop

    .line 1665
    nop

    .line 1666
    iget-object v2, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1667
    const/4 v8, 0x0

    move v3, v8

    move v4, v3

    move v9, v4

    :goto_7e
    const-string v10, "    "

    const-string v11, ": "

    const/4 v12, 0x1

    if-ge v3, v2, :cond_c2

    .line 1668
    iget-object v5, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TaskRecord;

    .line 1669
    if-eqz v1, :cond_a0

    iget-object v6, v5, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_bf

    iget-object v6, v5, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 1670
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a0

    .line 1671
    goto :goto_bf

    .line 1674
    :cond_a0
    if-nez v4, :cond_aa

    .line 1675
    const-string v4, "  Recent tasks:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1676
    nop

    .line 1677
    move v4, v12

    goto :goto_ab

    .line 1674
    :cond_aa
    move v12, v9

    .line 1679
    :goto_ab
    const-string v6, "  * Recent #"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1680
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1681
    if-eqz p2, :cond_be

    .line 1682
    invoke-virtual {v5, p1, v10}, Lcom/android/server/wm/TaskRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1667
    :cond_be
    move v9, v12

    :cond_bf
    :goto_bf
    add-int/lit8 v3, v3, 0x1

    goto :goto_7e

    .line 1687
    :cond_c2
    iget-boolean v1, v0, Lcom/android/server/wm/RecentTasks;->mHasVisibleRecentTasks:Z

    if-eqz v1, :cond_107

    .line 1689
    nop

    .line 1690
    const v1, 0x7fffffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1692
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v5

    const/16 v6, 0x3e8

    .line 1690
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/RecentTasks;->getRecentTasksImpl(IIZZII)Ljava/util/ArrayList;

    move-result-object v0

    .line 1693
    move v1, v8

    :goto_db
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_107

    .line 1694
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 1695
    if-nez v1, :cond_f6

    .line 1696
    if-eqz v9, :cond_ee

    .line 1698
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1700
    :cond_ee
    const-string v1, "  Visible recent tasks (most recent first):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1701
    nop

    .line 1702
    move v1, v12

    move v9, v1

    .line 1705
    :cond_f6
    const-string v3, "  * RecentTaskInfo #"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1706
    invoke-virtual {v2, p1, v10}, Landroid/app/ActivityManager$RecentTaskInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1693
    add-int/lit8 v8, v8, 0x1

    goto :goto_db

    .line 1710
    :cond_107
    if-nez v9, :cond_10e

    .line 1711
    const-string v0, "  (nothing)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1713
    :cond_10e
    return-void
.end method

.method flush()V
    .registers 3

    .line 554
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 555
    invoke-direct {p0}, Lcom/android/server/wm/RecentTasks;->syncPersistentTaskIdsLocked()V

    .line 556
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 557
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskPersister;->flush()V

    .line 558
    return-void

    .line 556
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
    .registers 9
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

    .line 810
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 811
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 812
    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_43

    .line 813
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    .line 817
    iget v4, v3, Lcom/android/server/wm/TaskRecord;->effectiveUid:I

    if-eq v4, p1, :cond_1b

    .line 818
    goto :goto_40

    .line 820
    :cond_1b
    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v4

    .line 821
    if-eqz v4, :cond_40

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 822
    goto :goto_40

    .line 824
    :cond_30
    new-instance v4, Lcom/android/server/wm/AppTaskImpl;

    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v3, v3, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-direct {v4, v5, v3, p1}, Lcom/android/server/wm/AppTaskImpl;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;II)V

    .line 825
    invoke-virtual {v4}, Lcom/android/server/wm/AppTaskImpl;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    :cond_40
    :goto_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 827
    :cond_43
    return-object v0
.end method

.method getCurrentProfileIds()[I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 848
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentProfileIds()[I

    move-result-object v0

    return-object v0
.end method

.method getInputListener()Landroid/view/WindowManagerPolicyConstants$PointerEventListener;
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    return-object v0
.end method

.method getPersistableTaskIds(Landroid/util/ArraySet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 961
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 962
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_31

    .line 963
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    .line 966
    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 967
    iget-boolean v4, v2, Lcom/android/server/wm/TaskRecord;->isPersistable:Z

    if-nez v4, :cond_1d

    iget-boolean v4, v2, Lcom/android/server/wm/TaskRecord;->inRecents:Z

    if-eqz v4, :cond_2e

    :cond_1d
    if-eqz v3, :cond_25

    .line 968
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v3

    if-nez v3, :cond_2e

    .line 970
    :cond_25
    iget v2, v2, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 962
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 976
    :cond_31
    return-void
.end method

.method getProfileIds(I)Ljava/util/Set;
    .registers 5
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

    .line 832
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 833
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object p1

    .line 835
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_16
    if-ltz v1, :cond_2a

    .line 836
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 835
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 838
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

    .line 980
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method getRecentTaskIds()Landroid/util/SparseBooleanArray;
    .registers 8

    .line 987
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 988
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 989
    nop

    .line 990
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_f
    if-ge v3, v1, :cond_30

    .line 991
    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TaskRecord;

    .line 992
    invoke-virtual {p0, v5}, Lcom/android/server/wm/RecentTasks;->isVisibleRecentTask(Lcom/android/server/wm/TaskRecord;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 993
    add-int/lit8 v4, v4, 0x1

    .line 994
    invoke-direct {p0, v5, v3, v4, v2}, Lcom/android/server/wm/RecentTasks;->isInVisibleRange(Lcom/android/server/wm/TaskRecord;IIZ)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 995
    iget v5, v5, Lcom/android/server/wm/TaskRecord;->taskId:I

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 990
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 999
    :cond_30
    return-object v0
.end method

.method getRecentTasks(IIZZII)Landroid/content/pm/ParceledListSlice;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZZII)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 861
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct/range {p0 .. p6}, Lcom/android/server/wm/RecentTasks;->getRecentTasksImpl(IIZZII)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method getRecentsComponent()Landroid/content/ComponentName;
    .registers 2

    .line 408
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method getRecentsComponentUid()I
    .registers 2

    .line 415
    iget v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    return v0
.end method

.method getTask(I)Lcom/android/server/wm/TaskRecord;
    .registers 6

    .line 1006
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1007
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    .line 1008
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    .line 1009
    iget v3, v2, Lcom/android/server/wm/TaskRecord;->taskId:I

    if-ne v3, p1, :cond_16

    .line 1010
    return-object v2

    .line 1007
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1013
    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    .line 546
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskPersister;->getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method getTaskIdsForUser(I)Landroid/util/SparseBooleanArray;
    .registers 3

    .line 494
    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTasks;->loadPersistedTaskIdsForUserLocked(I)V

    .line 495
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseBooleanArray;

    return-object p1
.end method

.method getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 843
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    return-object p1
.end method

.method isCallerRecents(I)Z
    .registers 3

    .line 383
    iget v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p1

    return p1
.end method

.method isFreezeTaskListReorderingSet()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 322
    iget-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    return v0
.end method

.method isRecentsComponent(Landroid/content/ComponentName;I)Z
    .registers 4

    .line 391
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget p1, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    invoke-static {p2, p1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method isRecentsComponentHomeActivity(I)Z
    .registers 3

    .line 398
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 399
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object p1

    .line 400
    if-eqz p1, :cond_22

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_22

    .line 401
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    .line 400
    :goto_23
    return p1
.end method

.method protected isTrimmable(Lcom/android/server/wm/TaskRecord;)Z
    .registers 6

    .line 1369
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    .line 1372
    const/4 v0, 0x1

    if-nez p1, :cond_8

    .line 1373
    return v0

    .line 1378
    :cond_8
    iget v1, p1, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 1379
    return v2

    .line 1383
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    .line 1384
    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityDisplay;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result p1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getHomeStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityDisplay;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result v1

    if-ge p1, v1, :cond_21

    goto :goto_22

    :cond_21
    move v0, v2

    :goto_22
    return v0
.end method

.method isUserRunning(II)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 853
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityManagerInternal;->isUserRunning(II)Z

    move-result p1

    return p1
.end method

.method isVisibleRecentTask(Lcom/android/server/wm/TaskRecord;)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1281
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getActivityType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_56

    const/4 v3, 0x3

    if-eq v0, v3, :cond_56

    const/4 v4, 0x4

    if-eq v0, v4, :cond_f

    goto :goto_1d

    .line 1289
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v4, 0x800000

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_1d

    .line 1291
    return v2

    .line 1296
    :cond_1d
    :goto_1d
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getWindowingMode()I

    move-result v0

    if-eq v0, v1, :cond_55

    if-eq v0, v3, :cond_26

    goto :goto_33

    .line 1301
    :cond_26
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1302
    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    if-ne v0, p1, :cond_33

    .line 1304
    return v2

    .line 1311
    :cond_33
    :goto_33
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1312
    if-eqz v0, :cond_46

    .line 1313
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1314
    if-eqz v0, :cond_46

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->isSingleTaskInstance()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1315
    return v2

    .line 1320
    :cond_46
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/LockTaskController;->getRootTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    if-ne p1, v0, :cond_53

    .line 1321
    return v2

    .line 1324
    :cond_53
    const/4 p1, 0x1

    return p1

    .line 1298
    :cond_55
    return v2

    .line 1285
    :cond_56
    return v2
.end method

.method loadParametersFromResources(Landroid/content/res/Resources;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 330
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 331
    const v0, 0x10e007c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mMinNumVisibleTasks:I

    .line 333
    const v0, 0x10e0073

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mMaxNumVisibleTasks:I

    goto :goto_47

    .line 335
    :cond_19
    const/4 v0, 0x0

    const-string v1, "ro.recents.grid"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 336
    const v0, 0x10e007b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mMinNumVisibleTasks:I

    .line 338
    const v0, 0x10e0072

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mMaxNumVisibleTasks:I

    goto :goto_47

    .line 341
    :cond_35
    const v0, 0x10e007a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mMinNumVisibleTasks:I

    .line 343
    const v0, 0x10e0071

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mMaxNumVisibleTasks:I

    .line 346
    :goto_47
    const v0, 0x10e0009

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 348
    if-lez p1, :cond_58

    .line 349
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    goto :goto_5a

    .line 350
    :cond_58
    const-wide/16 v0, -0x1

    :goto_5a
    iput-wide v0, p0, Lcom/android/server/wm/RecentTasks;->mActiveTasksSessionDurationMs:J

    .line 351
    return-void
.end method

.method loadRecentsComponent(Landroid/content/res/Resources;)V
    .registers 6

    .line 358
    const v0, 0x104019e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 360
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 361
    return-void

    .line 364
    :cond_e
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 365
    if-eqz p1, :cond_49

    .line 367
    :try_start_14
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 368
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 369
    if-eqz v0, :cond_31

    .line 370
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    .line 371
    iput-object p1, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_31} :catch_32

    .line 375
    :cond_31
    goto :goto_49

    .line 373
    :catch_32
    move-exception v0

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not load application info for recents component: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_49
    :goto_49
    return-void
.end method

.method loadUserRecentsLocked(I)V
    .registers 7

    .line 445
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 447
    return-void

    .line 451
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTasks;->loadPersistedTaskIdsForUserLocked(I)V

    .line 454
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 455
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

    .line 456
    iget v4, v2, Lcom/android/server/wm/TaskRecord;->userId:I

    if-ne v4, p1, :cond_33

    invoke-static {v2}, Lcom/android/server/wm/RecentTasks;->shouldPersistTaskLocked(Lcom/android/server/wm/TaskRecord;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 457
    iget v2, v2, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 459
    :cond_33
    goto :goto_17

    .line 461
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

    .line 462
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/wm/TaskPersister;->restoreTasksForUserLocked(ILandroid/util/SparseBooleanArray;)Ljava/util/List;

    move-result-object v1

    .line 463
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 464
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->cleanupLocked(I)V

    .line 465
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 468
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    if-lez p1, :cond_6b

    .line 469
    invoke-direct {p0}, Lcom/android/server/wm/RecentTasks;->syncPersistentTaskIdsLocked()V

    .line 471
    :cond_6b
    return-void
.end method

.method notifyTaskPersisterLocked(Lcom/android/server/wm/TaskRecord;Z)V
    .registers 4

    .line 502
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 503
    :goto_8
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 505
    return-void

    .line 507
    :cond_11
    invoke-direct {p0}, Lcom/android/server/wm/RecentTasks;->syncPersistentTaskIdsLocked()V

    .line 508
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskPersister;->wakeup(Lcom/android/server/wm/TaskRecord;Z)V

    .line 509
    return-void
.end method

.method onLockTaskModeStateChanged(II)V
    .registers 5

    .line 633
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    .line 634
    return-void

    .line 636
    :cond_4
    iget-object p1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v0

    :goto_b
    if-ltz p1, :cond_2b

    .line 637
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskRecord;

    .line 638
    iget v1, v0, Lcom/android/server/wm/TaskRecord;->userId:I

    if-ne v1, p2, :cond_28

    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/LockTaskController;->isTaskWhitelisted(Lcom/android/server/wm/TaskRecord;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 639
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/TaskRecord;)V

    .line 636
    :cond_28
    add-int/lit8 p1, p1, -0x1

    goto :goto_b

    .line 642
    :cond_2b
    return-void
.end method

.method onPackagesSuspendedChanged([Ljava/lang/String;ZI)V
    .registers 11

    .line 615
    invoke-static {p1}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p1

    .line 616
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_c
    if-ltz v0, :cond_42

    .line 617
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    .line 618
    iget-object v3, v2, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_3f

    iget-object v3, v2, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 619
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    iget v3, v2, Lcom/android/server/wm/TaskRecord;->userId:I

    if-ne v3, p3, :cond_3f

    iget-boolean v3, v2, Lcom/android/server/wm/TaskRecord;->realActivitySuspended:Z

    if-eq v3, p2, :cond_3f

    .line 622
    iput-boolean p2, v2, Lcom/android/server/wm/TaskRecord;->realActivitySuspended:Z

    .line 623
    const/4 v3, 0x0

    if-eqz p2, :cond_3c

    .line 624
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v5, v2, Lcom/android/server/wm/TaskRecord;->taskId:I

    const-string v6, "suspended-package"

    invoke-virtual {v4, v5, v3, v1, v6}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    .line 627
    :cond_3c
    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/TaskRecord;Z)V

    .line 616
    :cond_3f
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 630
    :cond_42
    return-void
.end method

.method onSystemReadyLocked()V
    .registers 2

    .line 541
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentTasks;->loadRecentsComponent(Landroid/content/res/Resources;)V

    .line 542
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 543
    return-void
.end method

.method registerCallback(Lcom/android/server/wm/RecentTasks$Callbacks;)V
    .registers 3

    .line 419
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    return-void
.end method

.method remove(Lcom/android/server/wm/TaskRecord;)V
    .registers 3

    .line 1161
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1162
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/wm/RecentTasks;->notifyTaskRemoved(Lcom/android/server/wm/TaskRecord;ZZ)V

    .line 1163
    return-void
.end method

.method removeAllVisibleTasks(I)V
    .registers 6

    .line 658
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->getProfileIds(I)Ljava/util/Set;

    move-result-object p1

    .line 659
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_c
    if-ltz v0, :cond_34

    .line 660
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    .line 661
    iget v3, v2, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    goto :goto_31

    .line 662
    :cond_23
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RecentTasks;->isVisibleRecentTask(Lcom/android/server/wm/TaskRecord;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 663
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 664
    invoke-direct {p0, v2, v1, v1}, Lcom/android/server/wm/RecentTasks;->notifyTaskRemoved(Lcom/android/server/wm/TaskRecord;ZZ)V

    .line 659
    :cond_31
    :goto_31
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 667
    :cond_34
    return-void
.end method

.method removeTasksByPackageName(Ljava/lang/String;I)V
    .registers 8

    .line 645
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_37

    .line 646
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    .line 647
    nop

    .line 648
    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 649
    iget v4, v2, Lcom/android/server/wm/TaskRecord;->userId:I

    if-eq v4, p2, :cond_24

    goto :goto_34

    .line 650
    :cond_24
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    goto :goto_34

    .line 652
    :cond_2b
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v2, v2, Lcom/android/server/wm/TaskRecord;->taskId:I

    const-string v4, "remove-package-task"

    invoke-virtual {v3, v2, v1, v1, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    .line 645
    :goto_34
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 655
    :cond_37
    return-void
.end method

.method resetFreezeTaskListReordering(Lcom/android/server/wm/TaskRecord;)V
    .registers 5

    .line 284
    iget-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    if-nez v0, :cond_5

    .line 285
    return-void

    .line 289
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    .line 290
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 293
    if-eqz p1, :cond_1d

    .line 294
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 295
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 299
    :cond_1d
    invoke-direct {p0}, Lcom/android/server/wm/RecentTasks;->trimInactiveRecentTasks()V

    .line 301
    iget-object p1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 302
    return-void
.end method

.method resetFreezeTaskListReorderingOnTimeout()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 312
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 313
    if-eqz v1, :cond_15

    .line 314
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    goto :goto_16

    .line 315
    :cond_15
    const/4 v1, 0x0

    .line 316
    :goto_16
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RecentTasks;->resetFreezeTaskListReordering(Lcom/android/server/wm/TaskRecord;)V

    .line 317
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 318
    return-void

    .line 317
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 4

    .line 550
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskPersister;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 551
    return-void
.end method

.method setFreezeTaskListReordering()V
    .registers 5

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    .line 275
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 276
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListTimeoutMs:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 277
    return-void
.end method

.method setFreezeTaskListTimeout(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 260
    iput-wide p1, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListTimeoutMs:J

    .line 261
    return-void
.end method

.method setGlobalMaxNumTasks(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 255
    iput p1, p0, Lcom/android/server/wm/RecentTasks;->mGlobalMaxNumTasks:I

    .line 256
    return-void
.end method

.method setParameters(IIJ)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 248
    iput p1, p0, Lcom/android/server/wm/RecentTasks;->mMinNumVisibleTasks:I

    .line 249
    iput p2, p0, Lcom/android/server/wm/RecentTasks;->mMaxNumVisibleTasks:I

    .line 250
    iput-wide p3, p0, Lcom/android/server/wm/RecentTasks;->mActiveTasksSessionDurationMs:J

    .line 251
    return-void
.end method

.method unloadUserDataFromMemoryLocked(I)V
    .registers 4

    .line 588
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 589
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

    .line 590
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 591
    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTasks;->removeTasksForUserLocked(I)V

    .line 593
    :cond_2b
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 594
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskPersister;->unloadUserDataFromMemory(I)V

    .line 595
    return-void
.end method

.method unregisterCallback(Lcom/android/server/wm/RecentTasks$Callbacks;)V
    .registers 3

    .line 423
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 424
    return-void
.end method

.method usersWithRecentsLoadedLocked()[I
    .registers 6

    .line 566
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 567
    nop

    .line 568
    const/4 v1, 0x0

    move v2, v1

    :goto_b
    array-length v3, v0

    if-ge v1, v3, :cond_24

    .line 569
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 570
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 571
    add-int/lit8 v4, v2, 0x1

    aput v3, v0, v2

    move v2, v4

    .line 568
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 574
    :cond_24
    array-length v1, v0

    if-ge v2, v1, :cond_2c

    .line 576
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0

    .line 578
    :cond_2c
    return-object v0
.end method
