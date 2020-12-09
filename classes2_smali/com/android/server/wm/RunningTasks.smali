.class Lcom/android/server/wm/RunningTasks;
.super Ljava/lang/Object;
.source "RunningTasks.java"


# static fields
.field private static final LAST_ACTIVE_TIME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/wm/TaskRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mTmpSortedSet:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/android/server/wm/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpStackTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    sget-object v0, Lcom/android/server/wm/-$$Lambda$RunningTasks$B8bQN-i7MO0XIePhmkVnejRGNp0;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RunningTasks$B8bQN-i7MO0XIePhmkVnejRGNp0;

    sput-object v0, Lcom/android/server/wm/RunningTasks;->LAST_ACTIVE_TIME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcom/android/server/wm/RunningTasks;->LAST_ACTIVE_TIME_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/server/wm/RunningTasks;->mTmpSortedSet:Ljava/util/TreeSet;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RunningTasks;->mTmpStackTasks:Ljava/util/ArrayList;

    return-void
.end method

.method private createRunningTaskInfo(Lcom/android/server/wm/TaskRecord;)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 3

    .line 81
    new-instance v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    .line 82
    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskRecord;->fillTaskInfo(Landroid/app/TaskInfo;)V

    .line 84
    iget p1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput p1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 85
    return-object v0
.end method

.method static synthetic lambda$static$0(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/TaskRecord;)I
    .registers 4

    .line 37
    iget-wide v0, p1, Lcom/android/server/wm/TaskRecord;->lastActiveTime:J

    iget-wide p0, p0, Lcom/android/server/wm/TaskRecord;->lastActiveTime:J

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result p0

    return p0
.end method


# virtual methods
.method getTasks(ILjava/util/List;IILjava/util/ArrayList;IZZLandroid/util/ArraySet;)V
    .registers 24
    .param p3  # I
        .annotation build Landroid/app/WindowConfiguration$ActivityType;
        .end annotation
    .end param
    .param p4  # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;II",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityDisplay;",
            ">;IZZ",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 46
    move-object v0, p0

    if-gtz p1, :cond_4

    .line 47
    return-void

    .line 51
    :cond_4
    iget-object v1, v0, Lcom/android/server/wm/RunningTasks;->mTmpSortedSet:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->clear()V

    .line 52
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 53
    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_47

    .line 54
    move-object/from16 v3, p5

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityDisplay;

    .line 55
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_1e
    if-ltz v5, :cond_44

    .line 56
    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 57
    iget-object v7, v0, Lcom/android/server/wm/RunningTasks;->mTmpStackTasks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 58
    iget-object v7, v0, Lcom/android/server/wm/RunningTasks;->mTmpStackTasks:Ljava/util/ArrayList;

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p9

    invoke-virtual/range {v6 .. v13}, Lcom/android/server/wm/ActivityStack;->getRunningTasks(Ljava/util/List;IIIZZLandroid/util/ArraySet;)V

    .line 60
    iget-object v6, v0, Lcom/android/server/wm/RunningTasks;->mTmpSortedSet:Ljava/util/TreeSet;

    iget-object v7, v0, Lcom/android/server/wm/RunningTasks;->mTmpStackTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 55
    add-int/lit8 v5, v5, -0x1

    goto :goto_1e

    .line 53
    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 65
    :cond_47
    iget-object v1, v0, Lcom/android/server/wm/RunningTasks;->mTmpSortedSet:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, p1

    .line 66
    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_69

    .line 67
    if-nez v2, :cond_57

    .line 68
    goto :goto_69

    .line 71
    :cond_57
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    .line 72
    invoke-direct {p0, v3}, Lcom/android/server/wm/RunningTasks;->createRunningTaskInfo(Lcom/android/server/wm/TaskRecord;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    add-int/lit8 v2, v2, -0x1

    .line 74
    goto :goto_4e

    .line 75
    :cond_69
    :goto_69
    return-void
.end method
