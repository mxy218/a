.class Lcom/android/server/wm/RootActivityContainer;
.super Lcom/android/server/wm/ConfigurationContainer;
.source "RootActivityContainer.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;,
        Lcom/android/server/wm/RootActivityContainer$FindTaskResult;,
        Lcom/android/server/wm/RootActivityContainer$AnyTaskForIdMatchTaskMode;
    }
.end annotation


# static fields
.field static final MATCH_TASK_IN_STACKS_ONLY:I = 0x0

.field static final MATCH_TASK_IN_STACKS_OR_RECENT_TASKS:I = 0x1

.field static final MATCH_TASK_IN_STACKS_OR_RECENT_TASKS_AND_RESTORE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RELEASE:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_STATES:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_TASKS:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field private final mActivityDisplays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityDisplay;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentUser:I

.field private mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

.field mDefaultMinSizeOfResizeableTaskDp:I

.field private final mDisplayAccessUIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/IntArray;",
            ">;"
        }
    .end annotation
.end field

.field mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field mIsDockMinimized:Z

.field private mPowerHintSent:Z

.field private mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field final mSleepTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;",
            ">;"
        }
    .end annotation
.end field

.field mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field private mTaskLayersChanged:Z

.field private final mTmpActivityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

.field mUserStackInFront:Landroid/util/SparseIntArray;

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 4

    .line 224
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    .line 179
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    .line 184
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mUserStackInFront:Landroid/util/SparseIntArray;

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mSleepTokens:Ljava/util/ArrayList;

    .line 201
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/RootActivityContainer;->mDefaultMinSizeOfResizeableTaskDp:I

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RootActivityContainer;->mTaskLayersChanged:Z

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mTmpActivityList:Ljava/util/ArrayList;

    .line 208
    new-instance v0, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    invoke-direct {v0}, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    .line 225
    iput-object p1, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 226
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-object p1, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 227
    iget-object p1, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-object p0, p1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 228
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/RootActivityContainer;Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;)V
    .registers 2

    .line 135
    invoke-direct {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->removeSleepToken(Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;)V

    return-void
.end method

.method private calculateDefaultMinimalSizeOfResizeableTasks()V
    .registers 3

    .line 2327
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2328
    const v1, 0x10500e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 2330
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2332
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/android/server/wm/RootActivityContainer;->mDefaultMinSizeOfResizeableTaskDp:I

    .line 2333
    return-void
.end method

.method private canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;I)Z
    .registers 3

    .line 1788
    if-nez p1, :cond_4

    .line 1789
    const/4 p1, 0x1

    return p1

    .line 1791
    :cond_4
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result p1

    return p1
.end method

.method private getStack(II)Lcom/android/server/wm/ActivityStack;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/wm/ActivityStack;",
            ">(II)TT;"
        }
    .end annotation

    .line 1269
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    .line 1270
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/ActivityDisplay;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1271
    if-eqz v1, :cond_19

    .line 1272
    return-object v1

    .line 1269
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1275
    :cond_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method private getStackInfo(Lcom/android/server/wm/ActivityStack;)Landroid/app/ActivityManager$StackInfo;
    .registers 13

    .line 1279
    iget v0, p1, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    .line 1280
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    .line 1281
    new-instance v2, Landroid/app/ActivityManager$StackInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$StackInfo;-><init>()V

    .line 1282
    iget-object v3, v2, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Lcom/android/server/wm/ActivityStack;->getWindowContainerBounds(Landroid/graphics/Rect;)V

    .line 1283
    iput v0, v2, Landroid/app/ActivityManager$StackInfo;->displayId:I

    .line 1284
    iget v0, p1, Lcom/android/server/wm/ActivityStack;->mStackId:I

    iput v0, v2, Landroid/app/ActivityManager$StackInfo;->stackId:I

    .line 1285
    iget v0, p1, Lcom/android/server/wm/ActivityStack;->mCurrentUser:I

    iput v0, v2, Landroid/app/ActivityManager$StackInfo;->userId:I

    .line 1286
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    iput-boolean v3, v2, Landroid/app/ActivityManager$StackInfo;->visible:Z

    .line 1288
    const/4 v3, 0x0

    if-eqz v1, :cond_29

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityDisplay;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result v1

    goto :goto_2a

    :cond_29
    move v1, v3

    :goto_2a
    iput v1, v2, Landroid/app/ActivityManager$StackInfo;->position:I

    .line 1289
    iget-object v1, v2, Landroid/app/ActivityManager$StackInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1291
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    .line 1292
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1293
    new-array v5, v4, [I

    .line 1294
    new-array v6, v4, [Ljava/lang/String;

    .line 1295
    new-array v7, v4, [Landroid/graphics/Rect;

    .line 1296
    new-array v8, v4, [I

    .line 1297
    nop

    :goto_46
    if-ge v3, v4, :cond_8c

    .line 1298
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/TaskRecord;

    .line 1299
    iget v10, v9, Lcom/android/server/wm/TaskRecord;->taskId:I

    aput v10, v5, v3

    .line 1300
    iget-object v10, v9, Lcom/android/server/wm/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v10, :cond_5d

    iget-object v10, v9, Lcom/android/server/wm/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    goto :goto_77

    .line 1301
    :cond_5d
    iget-object v10, v9, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v10, :cond_68

    iget-object v10, v9, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    goto :goto_77

    .line 1302
    :cond_68
    invoke-virtual {v9}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    if-eqz v10, :cond_75

    invoke-virtual {v9}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_77

    .line 1303
    :cond_75
    const-string v10, "unknown"

    :goto_77
    aput-object v10, v6, v3

    .line 1304
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    aput-object v10, v7, v3

    .line 1305
    aget-object v10, v7, v3

    invoke-virtual {v9, v10}, Lcom/android/server/wm/TaskRecord;->getWindowContainerBounds(Landroid/graphics/Rect;)V

    .line 1306
    iget v9, v9, Lcom/android/server/wm/TaskRecord;->userId:I

    aput v9, v8, v3

    .line 1297
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 1308
    :cond_8c
    iput-object v5, v2, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    .line 1309
    iput-object v6, v2, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    .line 1310
    iput-object v7, v2, Landroid/app/ActivityManager$StackInfo;->taskBounds:[Landroid/graphics/Rect;

    .line 1311
    iput-object v8, v2, Landroid/app/ActivityManager$StackInfo;->taskUserIds:[I

    .line 1313
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 1314
    if-eqz p1, :cond_a0

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    :cond_a0
    iput-object v0, v2, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    .line 1315
    return-object v2
.end method

.method private getValidLaunchStackOnDisplay(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Lcom/android/server/wm/ActivityStack;
    .registers 11

    .line 1805
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplayOrCreate(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1806
    if-eqz v0, :cond_68

    .line 1811
    invoke-virtual {p2, p1}, Lcom/android/server/wm/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 1812
    return-object v2

    .line 1818
    :cond_e
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v1

    if-ne v1, p1, :cond_1f

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    if-ne v1, p3, :cond_1f

    .line 1819
    invoke-virtual {p3}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    return-object p1

    .line 1823
    :cond_1f
    if-eqz p5, :cond_24

    .line 1827
    iget p5, p5, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    goto :goto_30

    .line 1829
    :cond_24
    if-eqz p4, :cond_2b

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result p5

    goto :goto_2f

    .line 1830
    :cond_2b
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result p5

    :goto_2f
    nop

    .line 1832
    :goto_30
    nop

    .line 1833
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v1

    .line 1832
    invoke-virtual {v0, p5, p2, p3, v1}, Lcom/android/server/wm/ActivityDisplay;->validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;I)I

    move-result p3

    .line 1836
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result p5

    const/4 v1, 0x1

    sub-int/2addr p5, v1

    :goto_3f
    if-ltz p5, :cond_4f

    .line 1837
    invoke-virtual {v0, p5}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1838
    invoke-direct {p0, v3, p2, p3}, Lcom/android/server/wm/RootActivityContainer;->isValidLaunchStack(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 1839
    return-object v3

    .line 1836
    :cond_4c
    add-int/lit8 p5, p5, -0x1

    goto :goto_3f

    .line 1844
    :cond_4f
    if-eqz p1, :cond_67

    .line 1846
    if-eqz p4, :cond_5e

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result p1

    if-eqz p1, :cond_5e

    .line 1847
    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result p1

    goto :goto_62

    :cond_5e
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result p1

    .line 1848
    :goto_62
    invoke-virtual {v0, p3, p1, v1}, Lcom/android/server/wm/ActivityDisplay;->createStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    return-object p1

    .line 1851
    :cond_67
    return-object v2

    .line 1807
    :cond_68
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Display with displayId="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private isValidLaunchStack(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;I)Z
    .registers 7

    .line 1863
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_26

    const/4 v2, 0x4

    if-eq v0, v2, :cond_21

    .line 1870
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result p1

    if-ne p1, v1, :cond_1f

    .line 1871
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->supportsSplitScreenWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_1f

    if-eq p3, v1, :cond_1d

    if-nez p3, :cond_1f

    .line 1874
    :cond_1d
    const/4 p1, 0x1

    return p1

    .line 1876
    :cond_1f
    const/4 p1, 0x0

    return p1

    .line 1866
    :cond_21
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeAssistant()Z

    move-result p1

    return p1

    .line 1865
    :cond_26
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeRecents()Z

    move-result p1

    return p1

    .line 1864
    :cond_2b
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result p1

    return p1
.end method

.method private positionChildAt(Lcom/android/server/wm/ActivityDisplay;I)V
    .registers 4

    .line 1460
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_11

    .line 1461
    iget-object p2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    goto :goto_14

    .line 1462
    :cond_11
    if-gez p2, :cond_14

    .line 1463
    const/4 p2, 0x0

    .line 1466
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1467
    iget-object p2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 1468
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_34

    .line 1469
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1470
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1472
    :cond_34
    :goto_34
    iget-object p1, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStackSupervisor;->updateTopResumedActivityIfNeeded()V

    .line 1473
    return-void
.end method

.method private removeSleepToken(Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;)V
    .registers 4

    .line 1524
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1526
    invoke-static {p1}, Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;->access$000(Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1527
    if-eqz v0, :cond_21

    .line 1528
    iget-object v1, v0, Lcom/android/server/wm/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1529
    iget-object p1, v0, Lcom/android/server/wm/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 1530
    iget-object p1, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 1533
    :cond_21
    return-void
.end method

.method private startSystemDecorations(Lcom/android/server/wm/DisplayContent;)V
    .registers 5

    .line 1375
    iget v0, p0, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    const-string v2, "displayAdded"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/wm/RootActivityContainer;->startHomeOnDisplay(ILjava/lang/String;I)Z

    .line 1376
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->notifyDisplayReady()V

    .line 1377
    return-void
.end method

.method private taskTopActivityIsUser(Lcom/android/server/wm/TaskRecord;I)Z
    .registers 4

    .line 2164
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 2165
    if-eqz p1, :cond_9

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 2167
    :goto_a
    if-eqz p1, :cond_10

    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eq p1, p2, :cond_16

    :cond_10
    if-eqz v0, :cond_18

    iget p1, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne p1, p2, :cond_18

    :cond_16
    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1
.end method


# virtual methods
.method addChild(Lcom/android/server/wm/ActivityDisplay;I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1477
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/RootActivityContainer;->positionChildAt(Lcom/android/server/wm/ActivityDisplay;I)V

    .line 1478
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object p1, p1, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/wm/RootWindowContainer;->positionChildAt(ILcom/android/server/wm/DisplayContent;)V

    .line 1479
    return-void
.end method

.method addStartingWindowsForVisibleActivities(Z)V
    .registers 6

    .line 1536
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_27

    .line 1537
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 1538
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_18
    if-ltz v2, :cond_24

    .line 1539
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1540
    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityStack;->addStartingWindowsForVisibleActivities(Z)V

    .line 1538
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 1536
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1543
    :cond_27
    return-void
.end method

.method allPausedActivitiesComplete()Z
    .registers 9

    .line 2099
    nop

    .line 2100
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_9
    if-ltz v0, :cond_36

    .line 2101
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    .line 2102
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_18
    if-ltz v3, :cond_33

    .line 2103
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 2104
    iget-object v4, v4, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2105
    if-eqz v4, :cond_30

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 2111
    const/4 v0, 0x0

    return v0

    .line 2102
    :cond_30
    add-int/lit8 v3, v3, -0x1

    goto :goto_18

    .line 2100
    :cond_33
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 2116
    :cond_36
    return v1
.end method

.method allResumedActivitiesIdle()Z
    .registers 5

    .line 2052
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_35

    .line 2054
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    .line 2055
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->isSleeping()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2057
    goto :goto_32

    .line 2062
    :cond_19
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 2063
    if-eqz v2, :cond_32

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->numActivities()I

    move-result v3

    if-nez v3, :cond_26

    .line 2064
    goto :goto_32

    .line 2066
    :cond_26
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 2067
    if-eqz v2, :cond_30

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->idle:Z

    if-nez v2, :cond_32

    .line 2072
    :cond_30
    const/4 v0, 0x0

    return v0

    .line 2052
    :cond_32
    :goto_32
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2076
    :cond_35
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->sendPowerHintForLaunchEndIfNeeded()V

    .line 2077
    return v1
.end method

.method allResumedActivitiesVisible()Z
    .registers 8

    .line 2081
    nop

    .line 2082
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ltz v0, :cond_32

    .line 2083
    iget-object v4, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityDisplay;

    .line 2084
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v1

    :goto_1a
    if-ltz v5, :cond_2f

    .line 2085
    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 2086
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 2087
    if-eqz v6, :cond_2c

    .line 2088
    iget-boolean v3, v6, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-nez v3, :cond_2b

    .line 2089
    return v2

    .line 2091
    :cond_2b
    move v3, v1

    .line 2084
    :cond_2c
    add-int/lit8 v5, v5, -0x1

    goto :goto_1a

    .line 2082
    :cond_2f
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 2095
    :cond_32
    return v3
.end method

.method anyTaskForId(I)Lcom/android/server/wm/TaskRecord;
    .registers 3

    .line 2182
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object p1

    return-object p1
.end method

.method anyTaskForId(II)Lcom/android/server/wm/TaskRecord;
    .registers 5

    .line 2186
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/TaskRecord;

    move-result-object p1

    return-object p1
.end method

.method anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/TaskRecord;
    .registers 19

    .line 2199
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    const/4 v5, 0x2

    if-eq v2, v5, :cond_16

    if-nez v3, :cond_e

    goto :goto_16

    .line 2200
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Should not specify activity options for non-restore lookup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2204
    :cond_16
    :goto_16
    iget-object v6, v0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2205
    const/4 v7, 0x0

    move v8, v7

    :goto_1e
    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ge v8, v6, :cond_60

    .line 2206
    iget-object v11, v0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/ActivityDisplay;

    .line 2207
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v12

    sub-int/2addr v12, v9

    :goto_2f
    if-ltz v12, :cond_5d

    .line 2208
    invoke-virtual {v11, v12}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v9

    .line 2209
    invoke-virtual {v9, p1}, Lcom/android/server/wm/ActivityStack;->taskForIdLocked(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v13

    .line 2210
    if-nez v13, :cond_3f

    .line 2211
    nop

    .line 2207
    add-int/lit8 v12, v12, -0x1

    goto :goto_2f

    .line 2213
    :cond_3f
    if-eqz v3, :cond_5c

    .line 2216
    nop

    .line 2217
    invoke-virtual {p0, v10, v3, v13, v4}, Lcom/android/server/wm/RootActivityContainer;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2218
    if-eqz v1, :cond_5c

    if-eq v9, v1, :cond_5c

    .line 2219
    if-eqz v4, :cond_4e

    .line 2220
    move v3, v7

    goto :goto_4f

    :cond_4e
    move v3, v5

    .line 2221
    :goto_4f
    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v7, "anyTaskForId"

    move-object v0, v13

    move/from16 v2, p4

    move v4, v5

    move v5, v6

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2225
    :cond_5c
    return-object v13

    .line 2205
    :cond_5d
    add-int/lit8 v8, v8, 0x1

    goto :goto_1e

    .line 2230
    :cond_60
    if-nez v2, :cond_63

    .line 2231
    return-object v10

    .line 2237
    :cond_63
    iget-object v5, v0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v5, p1}, Lcom/android/server/wm/RecentTasks;->getTask(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    .line 2239
    if-nez v1, :cond_6e

    .line 2244
    return-object v10

    .line 2247
    :cond_6e
    if-ne v2, v9, :cond_71

    .line 2248
    return-object v1

    .line 2252
    :cond_71
    iget-object v0, v0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->restoreRecentTaskLocked(Lcom/android/server/wm/TaskRecord;Landroid/app/ActivityOptions;Z)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 2255
    return-object v10

    .line 2258
    :cond_7a
    return-object v1
.end method

.method applySleepTokens(Z)V
    .registers 10

    .line 1202
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_92

    .line 1204
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 1205
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->shouldSleep()Z

    move-result v2

    .line 1206
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->isSleeping()Z

    move-result v3

    if-ne v2, v3, :cond_1e

    .line 1207
    goto/16 :goto_8e

    .line 1209
    :cond_1e
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityDisplay;->setIsSleeping(Z)V

    .line 1211
    if-nez p1, :cond_24

    .line 1212
    goto :goto_8e

    .line 1216
    :cond_24
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_2a
    if-ltz v3, :cond_61

    .line 1217
    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 1218
    const/4 v5, 0x0

    if-eqz v2, :cond_37

    .line 1219
    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityStack;->goToSleepIfPossible(Z)Z

    goto :goto_5e

    .line 1226
    :cond_37
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->isSingleTaskInstance()Z

    move-result v6

    if-eqz v6, :cond_44

    .line 1227
    iget-object v6, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v7, 0x1c

    invoke-virtual {v6, v7, v5}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 1230
    :cond_44
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->awakeFromSleepingLocked()V

    .line 1231
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->isFocusedStackOnDisplay()Z

    move-result v4

    if-eqz v4, :cond_5e

    iget-object v4, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 1232
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v4

    iget v5, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    .line 1233
    invoke-virtual {v4, v5}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v4

    if-nez v4, :cond_5e

    .line 1238
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 1216
    :cond_5e
    :goto_5e
    add-int/lit8 v3, v3, -0x1

    goto :goto_2a

    .line 1243
    :cond_61
    if-nez v2, :cond_8e

    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 1244
    goto :goto_8e

    .line 1247
    :cond_6e
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    .line 1248
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_76
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 1249
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1250
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v3

    iget v4, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    if-ne v3, v4, :cond_8d

    .line 1251
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 1253
    :cond_8d
    goto :goto_76

    .line 1202
    :cond_8e
    :goto_8e
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_8

    .line 1255
    :cond_92
    return-void
.end method

.method attachApplication(Lcom/android/server/wm/WindowProcessController;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 770
    iget-object v0, p1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 771
    nop

    .line 772
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_d
    if-ltz v1, :cond_86

    .line 773
    iget-object v5, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityDisplay;

    .line 774
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 775
    if-eqz v5, :cond_83

    .line 776
    iget-object v6, p0, Lcom/android/server/wm/RootActivityContainer;->mTmpActivityList:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityStack;->getAllRunningVisibleActivitiesLocked(Ljava/util/ArrayList;)V

    .line 777
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 778
    iget-object v6, p0, Lcom/android/server/wm/RootActivityContainer;->mTmpActivityList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 779
    move v7, v4

    move v4, v3

    :goto_2e
    if-ge v4, v6, :cond_82

    .line 780
    iget-object v8, p0, Lcom/android/server/wm/RootActivityContainer;->mTmpActivityList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/ActivityRecord;

    .line 781
    iget-object v9, v8, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v9, :cond_7f

    iget v9, p1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget-object v10, v8, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v9, v10, :cond_7f

    iget-object v9, v8, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 782
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7f

    .line 784
    :try_start_4e
    iget-object v9, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    if-ne v5, v8, :cond_54

    move v10, v2

    goto :goto_55

    :cond_54
    move v10, v3

    :goto_55
    invoke-virtual {v9, v8, p1, v10, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->realStartActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;ZZ)Z

    move-result v8
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_59} :catch_5d

    if-eqz v8, :cond_5c

    .line 786
    move v7, v2

    .line 792
    :cond_5c
    goto :goto_7f

    .line 788
    :catch_5d
    move-exception p1

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception in new application when starting activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v5, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 790
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 789
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 791
    throw p1

    .line 779
    :cond_7f
    :goto_7f
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    :cond_82
    move v4, v7

    .line 772
    :cond_83
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 797
    :cond_86
    if-nez v4, :cond_8c

    .line 798
    const/4 p1, 0x0

    invoke-virtual {p0, p1, v3, v3}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 800
    :cond_8c
    return v4
.end method

.method canStartHomeOnDisplay(Landroid/content/pm/ActivityInfo;IZ)Z
    .registers 9

    .line 585
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopAction:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 589
    return v2

    .line 592
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 593
    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 594
    if-nez p3, :cond_26

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isInstrumenting()Z

    move-result p3

    if-eqz p3, :cond_26

    .line 596
    return v2

    .line 599
    :cond_26
    if-eqz p2, :cond_4a

    const/4 p3, -0x1

    if-eq p2, p3, :cond_32

    iget-object p3, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mVr2dDisplayId:I

    if-ne p2, p3, :cond_32

    goto :goto_4a

    .line 605
    :cond_32
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootActivityContainer;->shouldPlaceSecondaryHomeOnDisplay(I)Z

    move-result p2

    if-nez p2, :cond_39

    .line 606
    return v2

    .line 609
    :cond_39
    iget p2, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 p3, 0x2

    if-eq p2, p3, :cond_45

    iget p1, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_45

    move p1, v1

    goto :goto_46

    :cond_45
    move p1, v2

    .line 611
    :goto_46
    if-nez p1, :cond_49

    .line 613
    return v2

    .line 616
    :cond_49
    return v1

    .line 602
    :cond_4a
    :goto_4a
    return v1
.end method

.method cancelInitializingActivities()V
    .registers 5

    .line 2172
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_27

    .line 2173
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 2174
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_18
    if-ltz v2, :cond_24

    .line 2175
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 2176
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->cancelInitializingActivities()V

    .line 2174
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 2172
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2179
    :cond_27
    return-void
.end method

.method clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V
    .registers 6

    .line 1565
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_27

    .line 1566
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 1567
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_18
    if-ltz v2, :cond_24

    .line 1568
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1569
    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityStack;->clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V

    .line 1567
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 1565
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1572
    :cond_27
    return-void
.end method

.method closeSystemDialogs()V
    .registers 5

    .line 1978
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_27

    .line 1979
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 1980
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_18
    if-ltz v2, :cond_24

    .line 1981
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1982
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->closeSystemDialogsLocked()V

    .line 1980
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 1978
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1985
    :cond_27
    return-void
.end method

.method continueUpdateBounds(I)V
    .registers 3

    .line 1351
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/RootActivityContainer;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    .line 1352
    if-eqz p1, :cond_a

    .line 1353
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->continueUpdateBounds()V

    .line 1355
    :cond_a
    return-void
.end method

.method createSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;
    .registers 5

    .line 1512
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1513
    if-eqz v0, :cond_16

    .line 1517
    new-instance v1, Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;-><init>(Lcom/android/server/wm/RootActivityContainer;Ljava/lang/String;I)V

    .line 1518
    iget-object p1, p0, Lcom/android/server/wm/RootActivityContainer;->mSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1519
    iget-object p1, v0, Lcom/android/server/wm/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1520
    return-object v1

    .line 1514
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid display: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method deferUpdateBounds(I)V
    .registers 3

    .line 1344
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/RootActivityContainer;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    .line 1345
    if-eqz p1, :cond_a

    .line 1346
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->deferUpdateBounds()V

    .line 1348
    :cond_a
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 2360
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "topDisplayFocusedStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2362
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_23
    if-ltz v0, :cond_33

    .line 2363
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 2364
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/ActivityDisplay;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2362
    add-int/lit8 v0, v0, -0x1

    goto :goto_23

    .line 2366
    :cond_33
    return-void
.end method

.method dumpActivities(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;)Z
    .registers 22

    .line 2393
    move-object/from16 v0, p0

    move-object/from16 v13, p2

    .line 2394
    nop

    .line 2395
    iget-object v1, v0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    move v8, v1

    move v14, v2

    :goto_10
    if-ltz v8, :cond_66

    .line 2396
    iget-object v1, v0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/server/wm/ActivityDisplay;

    .line 2397
    const-string v1, "Display #"

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v9, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2398
    const-string v1, " (activities from top to bottom):"

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2399
    iget-object v1, v0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/server/wm/ActivityDisplay;

    .line 2400
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v11, v1

    move v7, v2

    :goto_3b
    if-ltz v11, :cond_57

    .line 2401
    invoke-virtual {v10, v11}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2402
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2403
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ActivityStack;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;Z)Z

    move-result v14

    .line 2404
    nop

    .line 2400
    add-int/lit8 v11, v11, -0x1

    move v7, v14

    goto :goto_3b

    .line 2406
    :cond_57
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityDisplay;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    const-string v2, " ResumedActivity:"

    move-object/from16 v15, p5

    invoke-static {v13, v1, v15, v7, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    .line 2395
    add-int/lit8 v8, v8, -0x1

    move v2, v7

    goto :goto_10

    .line 2410
    :cond_66
    move-object/from16 v15, p5

    iget-object v1, v0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    const/4 v6, 0x0

    xor-int/lit8 v7, p3, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    const-string v4, "  "

    const-string v5, "Fin"

    const-string v11, "  Activities waiting to finish:"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p5

    invoke-static/range {v1 .. v12}, Lcom/android/server/wm/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/wm/TaskRecord;)Z

    move-result v1

    or-int/2addr v14, v1

    .line 2413
    iget-object v1, v0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    const/4 v6, 0x0

    xor-int/lit8 v7, p3, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    const-string v4, "  "

    const-string v5, "Stop"

    const-string v11, "  Activities waiting to stop:"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p5

    invoke-static/range {v1 .. v12}, Lcom/android/server/wm/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/wm/TaskRecord;)Z

    move-result v1

    or-int v12, v14, v1

    .line 2416
    iget-object v0, v0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    const/4 v5, 0x0

    xor-int/lit8 v6, p3, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x0

    const-string v3, "  "

    const-string v4, "Sleep"

    const-string v10, "  Activities waiting to sleep:"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v8, p5

    invoke-static/range {v0 .. v11}, Lcom/android/server/wm/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/wm/TaskRecord;)Z

    move-result v0

    or-int/2addr v0, v12

    .line 2420
    return v0
.end method

.method dumpDisplayConfigs(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 2373
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Display override configurations:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2374
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2375
    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_35

    .line 2376
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    .line 2377
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2378
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2375
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 2380
    :cond_35
    return-void
.end method

.method public dumpDisplays(Ljava/io/PrintWriter;)V
    .registers 6

    .line 2383
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_38

    .line 2384
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 2385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " stacks:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2386
    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityDisplay;->dumpStacks(Ljava/io/PrintWriter;)V

    .line 2387
    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2383
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2389
    :cond_38
    return-void
.end method

.method ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V
    .registers 5

    .line 809
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 810
    return-void
.end method

.method ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .registers 7

    .line 817
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardController;->beginActivityVisibilityUpdate()V

    .line 820
    :try_start_9
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_11
    if-ltz v0, :cond_21

    .line 821
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 822
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/ActivityDisplay;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_2c

    .line 820
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 826
    :cond_21
    iget-object p1, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/KeyguardController;->endActivityVisibilityUpdate()V

    .line 827
    nop

    .line 828
    return-void

    .line 826
    :catchall_2c
    move-exception p1

    iget-object p2, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/KeyguardController;->endActivityVisibilityUpdate()V

    throw p1
.end method

.method ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z
    .registers 10

    .line 636
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v0, v0}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 639
    const/4 v0, 0x1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_a

    .line 641
    return v0

    .line 646
    :cond_a
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 647
    nop

    .line 648
    if-eqz v2, :cond_2a

    .line 649
    nop

    .line 650
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootActivityContainer;->getDisplayOverrideConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v3

    .line 651
    if-eqz p1, :cond_25

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1, v4}, Lcom/android/server/wm/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 652
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    goto :goto_26

    :cond_25
    nop

    .line 649
    :goto_26
    invoke-virtual {v2, v3, v1, v0}, Lcom/android/server/wm/DisplayContent;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;Z)Landroid/content/res/Configuration;

    move-result-object v1

    .line 655
    :cond_2a
    if-eqz p1, :cond_32

    if-eqz p3, :cond_32

    if-eqz v1, :cond_32

    .line 656
    iput-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->frozenBeforeDestroy:Z

    .line 660
    :cond_32
    iget-object p3, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p3, v1, p1, p4, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZI)Z

    move-result p1

    return p1
.end method

.method executeAppTransitionForAllDisplay()V
    .registers 3

    .line 1071
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    .line 1072
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 1073
    iget-object v1, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 1071
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1075
    :cond_1a
    return-void
.end method

.method findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;
    .registers 8

    .line 1644
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_2b

    .line 1645
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 1646
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_18
    if-ltz v2, :cond_28

    .line 1647
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1648
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/wm/ActivityStack;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1650
    if-eqz v3, :cond_25

    .line 1651
    return-object v3

    .line 1646
    :cond_25
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 1644
    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1655
    :cond_2b
    const/4 p1, 0x0

    return-object p1
.end method

.method findStackBehind(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityStack;
    .registers 6

    .line 1423
    iget v0, p1, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1424
    if-eqz v0, :cond_22

    .line 1425
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_e
    if-ltz v1, :cond_22

    .line 1426
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    if-ne v2, p1, :cond_1f

    if-lez v1, :cond_1f

    .line 1427
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    return-object p1

    .line 1425
    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 1431
    :cond_22
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find a stack behind stack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method findTask(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;
    .registers 7

    .line 1094
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->clear()V

    .line 1097
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1098
    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    .line 1099
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/ActivityDisplay;->findTaskLocked(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/RootActivityContainer$FindTaskResult;)V

    .line 1100
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    iget-boolean v0, v0, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mIdealMatch:Z

    if-eqz v0, :cond_1c

    .line 1101
    iget-object p1, p0, Lcom/android/server/wm/RootActivityContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    iget-object p1, p1, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    return-object p1

    .line 1105
    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_23
    if-ltz v0, :cond_46

    .line 1106
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 1107
    iget v2, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    if-ne v2, p2, :cond_32

    .line 1108
    goto :goto_43

    .line 1111
    :cond_32
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/wm/ActivityDisplay;->findTaskLocked(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/RootActivityContainer$FindTaskResult;)V

    .line 1112
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    iget-boolean v1, v1, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mIdealMatch:Z

    if-eqz v1, :cond_43

    .line 1113
    iget-object p1, p0, Lcom/android/server/wm/RootActivityContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    iget-object p1, p1, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    return-object p1

    .line 1105
    :cond_43
    :goto_43
    add-int/lit8 v0, v0, -0x1

    goto :goto_23

    .line 1118
    :cond_46
    iget-object p1, p0, Lcom/android/server/wm/RootActivityContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    iget-object p1, p1, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    return-object p1
.end method

.method finishDisabledPackageActivities(Ljava/lang/String;Ljava/util/Set;ZZI)Z
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZI)Z"
        }
    .end annotation

    .line 1990
    move-object v0, p0

    .line 1991
    iget-object v1, v0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_a
    if-ltz v1, :cond_33

    .line 1992
    iget-object v4, v0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityDisplay;

    .line 1993
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_19
    if-ltz v5, :cond_30

    .line 1994
    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 1995
    move-object v7, p1

    move-object v8, p2

    move v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/ActivityStack;->finishDisabledPackageActivitiesLocked(Ljava/lang/String;Ljava/util/Set;ZZI)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 1997
    move v3, v2

    .line 1993
    :cond_2d
    add-int/lit8 v5, v5, -0x1

    goto :goto_19

    .line 1991
    :cond_30
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 2001
    :cond_33
    return v3
.end method

.method finishTopCrashedActivities(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)I
    .registers 10

    .line 1128
    nop

    .line 1129
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1130
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_e
    if-ltz v1, :cond_32

    .line 1131
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityDisplay;

    .line 1134
    const/4 v4, 0x0

    :goto_19
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_2f

    .line 1135
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 1136
    invoke-virtual {v5, p1, p2}, Lcom/android/server/wm/ActivityStack;->finishTopCrashedActivityLocked(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    .line 1137
    if-eq v5, v0, :cond_2b

    if-nez v2, :cond_2c

    .line 1138
    :cond_2b
    move-object v2, v6

    .line 1134
    :cond_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 1130
    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 1142
    :cond_32
    if-eqz v2, :cond_37

    iget p1, v2, Lcom/android/server/wm/TaskRecord;->taskId:I

    goto :goto_38

    :cond_37
    const/4 p1, -0x1

    :goto_38
    return p1
.end method

.method finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .registers 7

    .line 2015
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_26

    .line 2016
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 2017
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v2

    .line 2018
    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_23

    .line 2019
    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 2020
    invoke-virtual {v4, p1}, Lcom/android/server/wm/ActivityStack;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 2018
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 2015
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2023
    :cond_26
    return-void
.end method

.method getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;
    .registers 5

    .line 286
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    .line 287
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 288
    iget v2, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    if-ne v2, p1, :cond_17

    .line 289
    return-object v1

    .line 286
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 292
    :cond_1a
    const/4 p1, 0x0

    return-object p1
.end method

.method getActivityDisplay(Ljava/lang/String;)Lcom/android/server/wm/ActivityDisplay;
    .registers 5

    .line 273
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_2a

    .line 274
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 275
    iget-object v2, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->isValid()Z

    move-result v2

    .line 276
    if-eqz v2, :cond_27

    iget-object v2, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 277
    return-object v1

    .line 273
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 281
    :cond_2a
    const/4 p1, 0x0

    return-object p1
.end method

.method getActivityDisplayOrCreate(I)Lcom/android/server/wm/ActivityDisplay;
    .registers 4

    .line 301
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 302
    if-eqz v0, :cond_7

    .line 303
    return-object v0

    .line 305
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 307
    return-object v1

    .line 309
    :cond_d
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    .line 310
    if-nez p1, :cond_14

    .line 312
    return-object v1

    .line 315
    :cond_14
    new-instance v0, Lcom/android/server/wm/ActivityDisplay;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/ActivityDisplay;-><init>(Lcom/android/server/wm/RootActivityContainer;Landroid/view/Display;)V

    .line 316
    const/high16 p1, -0x80000000

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/RootActivityContainer;->addChild(Lcom/android/server/wm/ActivityDisplay;I)V

    .line 317
    return-object v0
.end method

.method getAllStackInfos()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManager$StackInfo;",
            ">;"
        }
    .end annotation

    .line 1332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1333
    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 1334
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    .line 1335
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1c
    if-ltz v3, :cond_2c

    .line 1336
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 1337
    invoke-direct {p0, v4}, Lcom/android/server/wm/RootActivityContainer;->getStackInfo(Lcom/android/server/wm/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1335
    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    .line 1333
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1340
    :cond_2f
    return-object v0
.end method

.method protected getChildAt(I)Lcom/android/server/wm/ActivityDisplay;
    .registers 3

    .line 1442
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityDisplay;

    return-object p1
.end method

.method protected bridge synthetic getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->getChildAt(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object p1

    return-object p1
.end method

.method protected getChildCount()I
    .registers 2

    .line 1437
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;
    .registers 2

    .line 262
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    return-object v0
.end method

.method getDefaultDisplayHomeActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 326
    iget v0, p0, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplayHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getDefaultDisplayHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;
    .registers 3

    .line 330
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityDisplay;->getHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    return-object p1
.end method

.method getDisplayOverrideConfiguration(I)Landroid/content/res/Configuration;
    .registers 5

    .line 1488
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplayOrCreate(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1489
    if-eqz v0, :cond_b

    .line 1493
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    return-object p1

    .line 1490
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No display found with id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getDumpActivities(Ljava/lang/String;ZZ)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation

    .line 2341
    if-eqz p3, :cond_b

    .line 2342
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/wm/ActivityStack;->getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 2344
    :cond_b
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 2345
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2346
    const/4 v1, 0x0

    :goto_17
    if-ge v1, v0, :cond_43

    .line 2347
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    .line 2348
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_27
    if-ltz v3, :cond_40

    .line 2349
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 2350
    if-eqz p2, :cond_36

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 2351
    :cond_36
    invoke-virtual {v4, p1}, Lcom/android/server/wm/ActivityStack;->getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2348
    :cond_3d
    add-int/lit8 v3, v3, -0x1

    goto :goto_27

    .line 2346
    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 2355
    :cond_43
    return-object p3
.end method

.method getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;Z)Lcom/android/server/wm/ActivityStack;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/wm/ActivityStack;",
            ">(",
            "Lcom/android/server/wm/ActivityRecord;",
            "Landroid/app/ActivityOptions;",
            "Lcom/android/server/wm/TaskRecord;",
            "Z)TT;"
        }
    .end annotation

    .line 1670
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/RootActivityContainer;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;ZLcom/android/server/wm/LaunchParamsController$LaunchParams;II)Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    return-object p1
.end method

.method getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;ZLcom/android/server/wm/LaunchParamsController$LaunchParams;II)Lcom/android/server/wm/ActivityStack;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/wm/ActivityStack;",
            ">(",
            "Lcom/android/server/wm/ActivityRecord;",
            "Landroid/app/ActivityOptions;",
            "Lcom/android/server/wm/TaskRecord;",
            "Z",
            "Lcom/android/server/wm/LaunchParamsController$LaunchParams;",
            "II)TT;"
        }
    .end annotation

    .line 1690
    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    move/from16 v0, p6

    move/from16 v1, p7

    .line 1691
    nop

    .line 1695
    const/4 v2, -0x1

    if-eqz v8, :cond_1a

    .line 1696
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v3

    .line 1697
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v4

    goto :goto_1c

    .line 1695
    :cond_1a
    move v3, v2

    move v4, v3

    .line 1702
    :goto_1c
    if-eq v3, v2, :cond_32

    .line 1704
    invoke-virtual {v8, v2}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 1705
    const/4 v5, 0x2

    move/from16 v11, p4

    invoke-virtual {p0, v3, v5, v8, v11}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/TaskRecord;

    move-result-object v5

    .line 1707
    invoke-virtual {v8, v3}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 1708
    if-eqz v5, :cond_34

    .line 1709
    invoke-virtual {v5}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0

    .line 1702
    :cond_32
    move/from16 v11, p4

    .line 1713
    :cond_34
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/wm/RootActivityContainer;->resolveActivityType(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;)I

    move-result v12

    .line 1717
    if-eqz v10, :cond_42

    iget v3, v10, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    if-eq v3, v2, :cond_42

    .line 1718
    iget v3, v10, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    move v13, v3

    goto :goto_43

    .line 1720
    :cond_42
    move v13, v4

    :goto_43
    const/4 v14, 0x0

    if-eqz v0, :cond_56

    if-lez v1, :cond_56

    if-eqz v7, :cond_56

    iget-object v3, v6, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1722
    invoke-virtual {v3, v13, v0, v1, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->canPlaceEntityOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v0

    if-eqz v0, :cond_56

    const/4 v0, 0x1

    goto :goto_57

    :cond_56
    move v0, v14

    .line 1726
    :goto_57
    if-eq v13, v2, :cond_8a

    invoke-direct {p0, v7, v13}, Lcom/android/server/wm/RootActivityContainer;->canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v1

    if-nez v1, :cond_61

    if-eqz v0, :cond_8a

    .line 1728
    :cond_61
    if-eqz v7, :cond_74

    .line 1729
    move-object v0, p0

    move v1, v13

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/RootActivityContainer;->getValidLaunchStackOnDisplay(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1731
    if-eqz v0, :cond_74

    .line 1732
    return-object v0

    .line 1735
    :cond_74
    invoke-virtual {p0, v13}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplayOrCreate(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1736
    if-eqz v0, :cond_8a

    .line 1737
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v4, v12

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityDisplay;->getOrCreateStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;IZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1738
    if-eqz v0, :cond_8a

    .line 1739
    return-object v0

    .line 1746
    :cond_8a
    nop

    .line 1747
    nop

    .line 1748
    const/4 v0, 0x0

    if-eqz v9, :cond_94

    .line 1749
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    goto :goto_95

    .line 1748
    :cond_94
    move-object v1, v0

    .line 1751
    :goto_95
    if-nez v1, :cond_9d

    if-eqz v7, :cond_9d

    .line 1752
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1754
    :cond_9d
    if-eqz v1, :cond_d0

    .line 1755
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1756
    if-eqz v0, :cond_d0

    iget v2, v0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-direct {p0, v7, v2}, Lcom/android/server/wm/RootActivityContainer;->canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v2

    if-eqz v2, :cond_d0

    .line 1757
    if-eqz v10, :cond_b2

    iget v14, v10, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    goto :goto_b3

    .line 1758
    :cond_b2
    nop

    .line 1759
    :goto_b3
    if-nez v14, :cond_b9

    .line 1760
    invoke-virtual {v0, v7, v8, v9, v12}, Lcom/android/server/wm/ActivityDisplay;->resolveWindowingMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;I)I

    move-result v14

    .line 1763
    :cond_b9
    invoke-virtual {v1, v14, v12}, Lcom/android/server/wm/ActivityStack;->isCompatible(II)Z

    move-result v2

    if-eqz v2, :cond_c0

    .line 1764
    return-object v1

    .line 1766
    :cond_c0
    const/4 v2, 0x4

    if-ne v14, v2, :cond_d0

    .line 1767
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    if-ne v2, v1, :cond_d0

    .line 1768
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    if-ne v9, v2, :cond_d0

    .line 1774
    return-object v1

    .line 1779
    :cond_d0
    if-eqz v0, :cond_da

    iget v1, v0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-direct {p0, v7, v1}, Lcom/android/server/wm/RootActivityContainer;->canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v1

    if-nez v1, :cond_de

    .line 1780
    :cond_da
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1783
    :cond_de
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v4, v12

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityDisplay;->getOrCreateStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;IZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;
    .registers 7

    .line 1910
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1911
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityDisplay;->getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1913
    if-eqz v1, :cond_b

    .line 1914
    return-object v1

    .line 1916
    :cond_b
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->supportsSystemDecorations()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 1920
    return-object v2

    .line 1924
    :cond_13
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1b
    if-ltz v1, :cond_32

    .line 1925
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityDisplay;

    .line 1926
    if-ne v3, v0, :cond_28

    .line 1928
    goto :goto_2f

    .line 1930
    :cond_28
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/ActivityDisplay;->getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1932
    if-eqz v3, :cond_2f

    .line 1933
    return-object v3

    .line 1924
    :cond_2f
    :goto_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_1b

    .line 1937
    :cond_32
    return-object v2
.end method

.method getNextValidLaunchStack(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityStack;
    .registers 7

    .line 1951
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    const/4 v1, 0x0

    if-ltz v0, :cond_24

    .line 1952
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    .line 1953
    iget v3, v2, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    if-ne v3, p2, :cond_18

    .line 1954
    goto :goto_21

    .line 1956
    :cond_18
    iget v2, v2, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {p0, v2, p1, v1, v1}, Lcom/android/server/wm/RootActivityContainer;->getValidLaunchStackOnDisplay(ILcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1958
    if-eqz v1, :cond_21

    .line 1959
    return-object v1

    .line 1951
    :cond_21
    :goto_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1962
    :cond_24
    return-object v1
.end method

.method protected getParent()Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 1447
    const/4 v0, 0x0

    return-object v0
.end method

.method getRunningTasks(ILjava/util/List;IIIZZLandroid/util/ArraySet;)V
    .registers 21
    .param p3  # I
        .annotation build Landroid/app/WindowConfiguration$ActivityType;
        .end annotation
    .end param
    .param p4  # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;IIIZZ",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2281
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRunningTasks:Lcom/android/server/wm/RunningTasks;

    iget-object v7, v0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    move v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/wm/RunningTasks;->getTasks(ILjava/util/List;IILjava/util/ArrayList;IZZLandroid/util/ArraySet;)V

    .line 2283
    return-void
.end method

.method protected getStack(I)Lcom/android/server/wm/ActivityStack;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/wm/ActivityStack;",
            ">(I)TT;"
        }
    .end annotation

    .line 1258
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    .line 1259
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityDisplay;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1260
    if-eqz v1, :cond_19

    .line 1261
    return-object v1

    .line 1258
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1264
    :cond_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method getStackInfo(I)Landroid/app/ActivityManager$StackInfo;
    .registers 2

    .line 1319
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    .line 1320
    if-eqz p1, :cond_b

    .line 1321
    invoke-direct {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->getStackInfo(Lcom/android/server/wm/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object p1

    return-object p1

    .line 1323
    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method getStackInfo(II)Landroid/app/ActivityManager$StackInfo;
    .registers 3

    .line 1327
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/RootActivityContainer;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    .line 1328
    if-eqz p1, :cond_b

    invoke-direct {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->getStackInfo(Lcom/android/server/wm/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;
    .registers 3

    .line 694
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    .line 695
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 696
    if-eqz v1, :cond_19

    .line 697
    return-object v1

    .line 694
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 700
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 4

    .line 704
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 705
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 706
    return-object v1

    .line 708
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 709
    if-eqz v0, :cond_13

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v2, :cond_13

    .line 710
    return-object v0

    .line 714
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1b
    if-ltz v0, :cond_2f

    .line 715
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    .line 716
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 717
    if-eqz v2, :cond_2c

    .line 718
    return-object v2

    .line 714
    :cond_2c
    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    .line 721
    :cond_2f
    return-object v1
.end method

.method getTopVisibleActivities()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 669
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 670
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 672
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_11
    if-ltz v2, :cond_48

    .line 673
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityDisplay;

    .line 675
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_21
    if-ltz v4, :cond_45

    .line 676
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 678
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 679
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 680
    if-eqz v6, :cond_42

    .line 681
    if-ne v5, v1, :cond_3d

    .line 682
    const/4 v5, 0x0

    iget-object v6, v6, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_42

    .line 684
    :cond_3d
    iget-object v5, v6, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    :cond_42
    :goto_42
    add-int/lit8 v4, v4, -0x1

    goto :goto_21

    .line 672
    :cond_45
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 690
    :cond_48
    return-object v0
.end method

.method getValidLaunchStackOnDisplay(ILcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Lcom/android/server/wm/ActivityStack;
    .registers 11

    .line 1857
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/RootActivityContainer;->getValidLaunchStackOnDisplay(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    return-object p1
.end method

.method handleAppCrash(Lcom/android/server/wm/WindowProcessController;)V
    .registers 6

    .line 1634
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_27

    .line 1635
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 1636
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_18
    if-ltz v2, :cond_24

    .line 1637
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1638
    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityStack;->handleAppCrash(Lcom/android/server/wm/WindowProcessController;)V

    .line 1636
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 1634
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1641
    :cond_27
    return-void
.end method

.method handleAppDied(Lcom/android/server/wm/WindowProcessController;)Z
    .registers 7

    .line 1966
    nop

    .line 1967
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_a
    if-ltz v0, :cond_2b

    .line 1968
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    .line 1969
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1a
    if-ltz v3, :cond_28

    .line 1970
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 1971
    invoke-virtual {v4, p1}, Lcom/android/server/wm/ActivityStack;->handleAppDiedLocked(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 1969
    add-int/lit8 v3, v3, -0x1

    goto :goto_1a

    .line 1967
    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 1974
    :cond_2b
    return v1
.end method

.method hasAwakeDisplay()Z
    .registers 4

    .line 1659
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1c

    .line 1660
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    .line 1661
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->shouldSleep()Z

    move-result v2

    if-nez v2, :cond_19

    .line 1662
    return v1

    .line 1659
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1665
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method invalidateTaskLayers()V
    .registers 2

    .line 1546
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RootActivityContainer;->mTaskLayersChanged:Z

    .line 1547
    return-void
.end method

.method isDisplayAdded(I)Z
    .registers 2

    .line 322
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplayOrCreate(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method isFocusable(Lcom/android/server/wm/ConfigurationContainer;Z)Z
    .registers 5

    .line 725
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/wm/RootActivityContainer;->mIsDockMinimized:Z

    if-eqz v0, :cond_c

    .line 726
    return v1

    .line 729
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->canReceiveKeys()Z

    move-result p1

    if-nez p1, :cond_18

    if-eqz p2, :cond_19

    :cond_18
    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method isInAnyStack(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .registers 7

    .line 2262
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2263
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_2a

    .line 2264
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    .line 2265
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_17
    if-ltz v3, :cond_27

    .line 2266
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 2267
    invoke-virtual {v4, p1}, Lcom/android/server/wm/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 2268
    if-eqz v4, :cond_24

    .line 2269
    return-object v4

    .line 2265
    :cond_24
    add-int/lit8 v3, v3, -0x1

    goto :goto_17

    .line 2263
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2273
    :cond_2a
    const/4 p1, 0x0

    return-object p1
.end method

.method isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z
    .registers 3

    .line 733
    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-ne p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method lockAllProfileTasks(I)V
    .registers 9

    .line 2126
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 2128
    :try_start_5
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-ltz v0, :cond_4f

    .line 2129
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 2130
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1d
    if-ltz v2, :cond_4c

    .line 2131
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 2132
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v3

    .line 2133
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_2d
    if-ltz v4, :cond_49

    .line 2134
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TaskRecord;

    .line 2139
    invoke-direct {p0, v5, p1}, Lcom/android/server/wm/RootActivityContainer;->taskTopActivityIsUser(Lcom/android/server/wm/TaskRecord;I)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 2140
    iget-object v6, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v6

    iget v5, v5, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v6, v5, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskProfileLocked(II)V
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_56

    .line 2133
    :cond_46
    add-int/lit8 v4, v4, -0x1

    goto :goto_2d

    .line 2130
    :cond_49
    add-int/lit8 v2, v2, -0x1

    goto :goto_1d

    .line 2128
    :cond_4c
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 2147
    :cond_4f
    iget-object p1, p0, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 2148
    nop

    .line 2149
    return-void

    .line 2147
    :catchall_56
    move-exception p1

    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw p1
.end method

.method moveActivityToPinnedStack(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;FLjava/lang/String;)V
    .registers 31

    .line 1000
    move-object/from16 v9, p0

    move-object/from16 v0, p1

    iget-object v1, v9, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 1002
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    .line 1003
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getPinnedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1007
    const/4 v10, 0x0

    if-eqz v2, :cond_1d

    .line 1008
    iget-object v3, v9, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3, v2, v10}, Lcom/android/server/wm/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;Z)V

    .line 1012
    :cond_1d
    const/4 v2, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v3

    const/4 v11, 0x1

    invoke-virtual {v1, v2, v3, v11}, Lcom/android/server/wm/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v15

    .line 1016
    move/from16 v1, p3

    invoke-virtual {v15, v1}, Lcom/android/server/wm/ActivityStack;->getDefaultPictureInPictureBounds(F)Landroid/graphics/Rect;

    move-result-object v14

    .line 1019
    :try_start_2d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v12

    .line 1023
    invoke-virtual {v12}, Lcom/android/server/wm/TaskRecord;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/RootActivityContainer;->resizeStack(Lcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    .line 1027
    iget-object v1, v12, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v11, :cond_5b

    .line 1029
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v13, v15

    move-object v3, v14

    move v14, v1

    move-object v1, v15

    move v15, v2

    move-object/from16 v19, p4

    invoke-virtual/range {v12 .. v19}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZZLjava/lang/String;)Z

    goto :goto_91

    .line 1040
    :cond_5b
    move-object v3, v14

    move-object v1, v15

    invoke-virtual {v12}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v19

    iget-object v2, v9, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v4, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 1041
    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v20

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    .line 1040
    move-object/from16 v21, v2

    move-object/from16 v22, v4

    invoke-virtual/range {v19 .. v25}, Lcom/android/server/wm/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/wm/TaskRecord;

    move-result-object v12

    .line 1043
    const v2, 0x7fffffff

    const-string v4, "moveActivityToStack"

    invoke-virtual {v0, v12, v2, v4}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskRecord;ILjava/lang/String;)V

    .line 1046
    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v13, v1

    move-object/from16 v19, p4

    invoke-virtual/range {v12 .. v19}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZZLjava/lang/String;)Z

    .line 1052
    :goto_91
    iput-boolean v10, v0, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z
    :try_end_93
    .catchall {:try_start_2d .. :try_end_93} :catchall_b0

    .line 1054
    iget-object v2, v9, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1055
    nop

    .line 1057
    const/4 v2, -0x1

    move-object/from16 v4, p2

    invoke-virtual {v1, v4, v3, v2, v11}, Lcom/android/server/wm/ActivityStack;->animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    .line 1064
    const/4 v1, 0x0

    invoke-virtual {v9, v1, v10, v10}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1065
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 1067
    iget-object v1, v9, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityPinned(Lcom/android/server/wm/ActivityRecord;)V

    .line 1068
    return-void

    .line 1054
    :catchall_b0
    move-exception v0

    iget-object v1, v9, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method moveStackToDisplay(IIZ)V
    .registers 6

    .line 939
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplayOrCreate(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 940
    if-eqz v0, :cond_98

    .line 944
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 945
    if-eqz v1, :cond_81

    .line 950
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object p1

    .line 951
    if-eqz p1, :cond_65

    .line 956
    iget p1, p1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    if-eq p1, p2, :cond_46

    .line 961
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->isSingleTaskInstance()Z

    move-result p1

    if-eqz p1, :cond_41

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result p1

    if-lez p1, :cond_41

    .line 963
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can not move stack="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to single task instance display="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityTaskManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    return-void

    .line 968
    :cond_41
    const/4 p1, 0x0

    invoke-virtual {v1, v0, p3, p1}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/ActivityDisplay;ZZ)V

    .line 970
    return-void

    .line 957
    :cond_46
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Trying to move stack="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to its current displayId="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 952
    :cond_65
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "moveStackToDisplay: Stack with stack="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " is not attached to any display."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 946
    :cond_81
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "moveStackToDisplay: Unknown stackId="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 941
    :cond_98
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "moveStackToDisplay: Unknown displayId="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method moveTopStackActivityToPinnedStack(I)Z
    .registers 6

    .line 973
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 974
    if-eqz v0, :cond_4e

    .line 979
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 980
    const/4 v1, 0x0

    const-string v2, "ActivityTaskManager"

    if-nez p1, :cond_24

    .line 981
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveTopStackActivityToPinnedStack: No top running activity in stack="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    return v1

    .line 986
    :cond_24
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    if-nez v0, :cond_45

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->supportsPictureInPicture()Z

    move-result v0

    if-nez v0, :cond_45

    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveTopStackActivityToPinnedStack: Picture-In-Picture not supported for  r="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    return v1

    .line 992
    :cond_45
    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "moveTopActivityToPinnedStack"

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/wm/RootActivityContainer;->moveActivityToPinnedStack(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;FLjava/lang/String;)V

    .line 994
    const/4 p1, 0x1

    return p1

    .line 975
    :cond_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveTopStackActivityToPinnedStack: Unknown stackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method onChildPositionChanged(Lcom/android/server/wm/ActivityDisplay;I)V
    .registers 3

    .line 1453
    if-eqz p1, :cond_5

    .line 1454
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/RootActivityContainer;->positionChildAt(Lcom/android/server/wm/ActivityDisplay;I)V

    .line 1456
    :cond_5
    return-void
.end method

.method public onDisplayAdded(I)V
    .registers 4

    .line 1360
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1361
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplayOrCreate(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object p1

    .line 1362
    if-nez p1, :cond_13

    .line 1363
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1368
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1369
    :cond_23
    iget-object p1, p1, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->startSystemDecorations(Lcom/android/server/wm/DisplayContent;)V

    .line 1371
    :cond_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_13 .. :try_end_29} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1372
    return-void

    .line 1371
    :catchall_2d
    move-exception p1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public onDisplayChanged(I)V
    .registers 3

    .line 1399
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1400
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object p1

    .line 1401
    if-eqz p1, :cond_11

    .line 1402
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityDisplay;->onDisplayChanged()V

    .line 1404
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1405
    return-void

    .line 1404
    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public onDisplayRemoved(I)V
    .registers 3

    .line 1382
    if-eqz p1, :cond_23

    .line 1386
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1387
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object p1

    .line 1388
    if-nez p1, :cond_15

    .line 1389
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1392
    :cond_15
    :try_start_15
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityDisplay;->remove()V

    .line 1393
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1394
    return-void

    .line 1393
    :catchall_1d
    move-exception p1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 1383
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t remove the primary display."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method prepareForShutdown()V
    .registers 4

    .line 1506
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 1507
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    iget v1, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    const-string v2, "shutdown"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/RootActivityContainer;->createSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    .line 1506
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1509
    :cond_1b
    return-void
.end method

.method putStacksToSleep(ZZ)Z
    .registers 9

    .line 1611
    nop

    .line 1612
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v2, v1

    :goto_a
    if-ltz v0, :cond_37

    .line 1613
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityDisplay;

    .line 1614
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_19
    if-ltz v4, :cond_34

    .line 1618
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v5

    if-lt v4, v5, :cond_22

    .line 1619
    goto :goto_31

    .line 1622
    :cond_22
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 1623
    if-eqz p1, :cond_2e

    .line 1624
    invoke-virtual {v5, p2}, Lcom/android/server/wm/ActivityStack;->goToSleepIfPossible(Z)Z

    move-result v5

    and-int/2addr v2, v5

    goto :goto_31

    .line 1626
    :cond_2e
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->goToSleep()V

    .line 1614
    :goto_31
    add-int/lit8 v4, v4, -0x1

    goto :goto_19

    .line 1612
    :cond_34
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 1630
    :cond_37
    return v2
.end method

.method rankTaskLayersIfNeeded()V
    .registers 7

    .line 1550
    iget-boolean v0, p0, Lcom/android/server/wm/RootActivityContainer;->mTaskLayersChanged:Z

    if-nez v0, :cond_5

    .line 1551
    return-void

    .line 1553
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/RootActivityContainer;->mTaskLayersChanged:Z

    .line 1554
    move v1, v0

    :goto_9
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_32

    .line 1555
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    .line 1556
    nop

    .line 1557
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v4, v0

    :goto_21
    if-ltz v3, :cond_2f

    .line 1558
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 1559
    invoke-virtual {v5, v4}, Lcom/android/server/wm/ActivityStack;->rankTaskLayers(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 1557
    add-int/lit8 v3, v3, -0x1

    goto :goto_21

    .line 1554
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1562
    :cond_32
    return-void
.end method

.method releaseSomeActivitiesLocked(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V
    .registers 11

    .line 1586
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getReleaseSomeActivitiesTasks()Landroid/util/ArraySet;

    move-result-object v0

    .line 1587
    if-nez v0, :cond_7

    .line 1589
    return-void

    .line 1593
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1594
    const/4 v2, 0x0

    move v3, v2

    :goto_f
    if-ge v3, v1, :cond_31

    .line 1595
    iget-object v4, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityDisplay;

    .line 1596
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v5

    .line 1598
    move v6, v2

    :goto_1e
    if-ge v6, v5, :cond_2e

    .line 1599
    invoke-virtual {v4, v6}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v7

    .line 1601
    invoke-virtual {v7, p1, v0, p2}, Lcom/android/server/wm/ActivityStack;->releaseSomeActivitiesLocked(Lcom/android/server/wm/WindowProcessController;Landroid/util/ArraySet;Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_2b

    .line 1602
    return-void

    .line 1598
    :cond_2b
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    .line 1594
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1606
    :cond_31
    return-void
.end method

.method removeChild(Lcom/android/server/wm/ActivityDisplay;)V
    .registers 3

    .line 1484
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1485
    return-void
.end method

.method varargs removeStacksInWindowingModes([I)V
    .registers 4

    .line 2030
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 2031
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityDisplay;->removeStacksInWindowingModes([I)V

    .line 2030
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2033
    :cond_18
    return-void
.end method

.method varargs removeStacksWithActivityTypes([I)V
    .registers 4

    .line 2036
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 2037
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityDisplay;->removeStacksWithActivityTypes([I)V

    .line 2036
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2039
    :cond_18
    return-void
.end method

.method removeUser(I)V
    .registers 3

    .line 876
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 877
    return-void
.end method

.method resizeStack(Lcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V
    .registers 19

    .line 894
    move-object v1, p0

    move-object v0, p1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 895
    iget-object v3, v1, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move/from16 v9, p5

    move/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/wm/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 897
    return-void

    .line 900
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->hasSplitScreenPrimaryStack()Z

    move-result v2

    .line 901
    if-nez p6, :cond_2e

    .line 902
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v3

    if-nez v3, :cond_2e

    if-eqz v2, :cond_2e

    .line 905
    return-void

    .line 908
    :cond_2e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "am.resizeStack_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 909
    iget-object v3, v1, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 911
    :try_start_4b
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->affectedBySplitScreenResize()Z

    move-result v3

    if-eqz v3, :cond_64

    .line 912
    if-nez p2, :cond_5e

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 914
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    goto :goto_64

    .line 915
    :cond_5e
    if-eqz v2, :cond_64

    .line 918
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    .line 921
    :cond_64
    :goto_64
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/wm/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 922
    if-nez p7, :cond_73

    .line 923
    nop

    .line 924
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 923
    move/from16 v3, p5

    invoke-virtual {p1, v2, v3}, Lcom/android/server/wm/ActivityStack;->ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/wm/ActivityRecord;Z)V
    :try_end_73
    .catchall {:try_start_4b .. :try_end_73} :catchall_7d

    .line 927
    :cond_73
    iget-object v0, v1, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 928
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 929
    nop

    .line 930
    return-void

    .line 927
    :catchall_7d
    move-exception v0

    iget-object v1, v1, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 928
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method resolveActivities(ILandroid/content/Intent;)Ljava/util/List;
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 504
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 505
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 506
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/16 v2, 0x400

    invoke-interface {v1, p2, v0, v2, p1}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 507
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 511
    goto :goto_21

    .line 509
    :catch_1b
    move-exception p1

    .line 510
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 512
    :goto_21
    return-object p1
.end method

.method resolveActivityType(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;)I
    .registers 4

    .line 1883
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    .line 1884
    :goto_8
    if-nez p1, :cond_10

    if-eqz p3, :cond_10

    .line 1885
    invoke-virtual {p3}, Lcom/android/server/wm/TaskRecord;->getActivityType()I

    move-result p1

    .line 1887
    :cond_10
    if-eqz p1, :cond_13

    .line 1888
    return p1

    .line 1890
    :cond_13
    if-eqz p2, :cond_19

    .line 1891
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result p1

    .line 1893
    :cond_19
    if-eqz p1, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x1

    :goto_1d
    return p1
.end method

.method resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 415
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 416
    nop

    .line 418
    const/16 v1, 0x400

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    .line 420
    :try_start_a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-interface {v3, v0, v1, p1}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    goto :goto_2d

    .line 422
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 423
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 424
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 425
    invoke-interface {v3, p2, v0, v1, p1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 426
    if-eqz v0, :cond_2c

    .line 427
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_2b} :catch_2e

    goto :goto_2d

    .line 426
    :cond_2c
    move-object v0, v2

    .line 432
    :goto_2d
    goto :goto_30

    .line 430
    :catch_2e
    move-exception v0

    move-object v0, v2

    .line 434
    :goto_30
    if-nez v0, :cond_4e

    .line 435
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No home screen found for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 436
    return-object v2

    .line 439
    :cond_4e
    new-instance p2, Landroid/content/pm/ActivityInfo;

    invoke-direct {p2, v0}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 440
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iput-object p1, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 441
    return-object p2
.end method

.method resolveSecondaryHomeActivity(II)Landroid/util/Pair;
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Pair<",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 446
    if-eqz p2, :cond_75

    .line 451
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    .line 452
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootActivityContainer;->resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 453
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_5b

    .line 454
    const-class v4, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 456
    move-object v1, v3

    goto :goto_5b

    .line 460
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getSecondaryHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 461
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootActivityContainer;->resolveActivities(ILandroid/content/Intent;)Ljava/util/List;

    move-result-object v4

    .line 462
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 463
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 464
    nop

    .line 465
    move v6, v2

    :goto_36
    if-ge v6, v5, :cond_4e

    .line 466
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 469
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 470
    iget-object v1, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 471
    goto :goto_4f

    .line 465
    :cond_4b
    add-int/lit8 v6, v6, 0x1

    goto :goto_36

    :cond_4e
    move-object v1, v3

    .line 474
    :goto_4f
    if-nez v1, :cond_5b

    if-lez v5, :cond_5b

    .line 476
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 481
    :cond_5b
    :goto_5b
    if-eqz v1, :cond_64

    .line 482
    invoke-virtual {p0, v1, p2, v2}, Lcom/android/server/wm/RootActivityContainer;->canStartHomeOnDisplay(Landroid/content/pm/ActivityInfo;IZ)Z

    move-result p2

    if-nez p2, :cond_64

    .line 483
    move-object v1, v3

    .line 488
    :cond_64
    if-nez v1, :cond_70

    .line 489
    iget-object p2, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getSecondaryHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 490
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootActivityContainer;->resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 492
    :cond_70
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 447
    :cond_75
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "resolveSecondaryHomeActivity: Should not be DEFAULT_DISPLAY"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method resumeFocusedStacksTopActivities()Z
    .registers 2

    .line 1146
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0
.end method

.method resumeFocusedStacksTopActivities(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .registers 13

    .line 1152
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->readyToResume()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1153
    return v1

    .line 1156
    :cond_a
    nop

    .line 1157
    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isTopStackOnDisplay()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1158
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-ne v0, p1, :cond_1e

    .line 1159
    :cond_19
    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/ActivityStack;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    goto :goto_1f

    .line 1162
    :cond_1e
    move v0, v1

    :goto_1f
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_27
    if-ltz v2, :cond_78

    .line 1163
    nop

    .line 1164
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityDisplay;

    .line 1165
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move v5, v1

    :goto_39
    if-ltz v4, :cond_6a

    .line 1166
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 1167
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    .line 1168
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result v8

    if-eqz v8, :cond_67

    if-nez v7, :cond_4c

    .line 1169
    goto :goto_67

    .line 1171
    :cond_4c
    if-ne v6, p1, :cond_50

    .line 1175
    or-int/2addr v5, v0

    .line 1176
    goto :goto_67

    .line 1178
    :cond_50
    invoke-virtual {v3, v6}, Lcom/android/server/wm/ActivityDisplay;->isTopStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v8

    if-eqz v8, :cond_62

    sget-object v8, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v7, v8}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v8

    if-eqz v8, :cond_62

    .line 1181
    invoke-virtual {v6, p3}, Lcom/android/server/wm/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    goto :goto_67

    .line 1183
    :cond_62
    invoke-virtual {v7, p2}, Lcom/android/server/wm/ActivityRecord;->makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v6

    or-int/2addr v5, v6

    .line 1165
    :cond_67
    :goto_67
    add-int/lit8 v4, v4, -0x1

    goto :goto_39

    .line 1186
    :cond_6a
    if-nez v5, :cond_75

    .line 1191
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1192
    if-eqz v3, :cond_75

    .line 1193
    invoke-virtual {v3, p2, p3}, Lcom/android/server/wm/ActivityStack;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    .line 1162
    :cond_75
    add-int/lit8 v2, v2, -0x1

    goto :goto_27

    .line 1198
    :cond_78
    return v0
.end method

.method resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)Z
    .registers 6

    .line 516
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v0

    if-nez v0, :cond_12

    .line 518
    return v1

    .line 521
    :cond_12
    const/4 v0, -0x1

    if-ne p3, v0, :cond_16

    .line 522
    move p3, v1

    .line 525
    :cond_16
    invoke-virtual {p0, p3}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getHomeActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " resumeHomeActivity"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 529
    if-eqz v0, :cond_42

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v1, :cond_42

    .line 530
    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    .line 531
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result p1

    return p1

    .line 533
    :cond_42
    iget p1, p0, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/RootActivityContainer;->startHomeOnDisplay(ILjava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method scheduleDestroyAllActivities(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V
    .registers 7

    .line 1575
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_27

    .line 1576
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 1577
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_18
    if-ltz v2, :cond_24

    .line 1578
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1579
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/ActivityStack;->scheduleDestroyActivities(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    .line 1577
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 1575
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1582
    :cond_27
    return-void
.end method

.method sendPowerHintForLaunchEndIfNeeded()V
    .registers 4

    .line 2320
    iget-boolean v0, p0, Lcom/android/server/wm/RootActivityContainer;->mPowerHintSent:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_16

    .line 2321
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 2322
    iput-boolean v2, p0, Lcom/android/server/wm/RootActivityContainer;->mPowerHintSent:Z

    .line 2324
    :cond_16
    return-void
.end method

.method sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V
    .registers 9

    .line 2286
    nop

    .line 2288
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_f

    .line 2290
    if-eqz p2, :cond_e

    iget-object p1, p2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez p1, :cond_c

    goto :goto_e

    :cond_c
    move p1, v0

    goto :goto_f

    :cond_e
    :goto_e
    move p1, v1

    .line 2293
    :cond_f
    :goto_f
    if-nez p1, :cond_4b

    .line 2296
    nop

    .line 2297
    nop

    .line 2298
    move p1, v0

    move v2, v1

    move v3, v2

    :goto_16
    iget-object v4, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_43

    .line 2299
    iget-object v4, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityDisplay;

    .line 2300
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityDisplay;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 2302
    if-nez v4, :cond_2e

    const/4 v4, 0x0

    goto :goto_30

    :cond_2e
    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 2304
    :goto_30
    if-nez v4, :cond_34

    move v5, v1

    goto :goto_35

    :cond_34
    move v5, v0

    :goto_35
    and-int/2addr v2, v5

    .line 2305
    if-eqz v4, :cond_40

    .line 2306
    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v1

    and-int/2addr v3, v4

    .line 2298
    :cond_40
    add-int/lit8 p1, p1, 0x1

    goto :goto_16

    .line 2309
    :cond_43
    if-nez v2, :cond_4a

    if-eqz v3, :cond_48

    goto :goto_4a

    :cond_48
    move p1, v0

    goto :goto_4b

    :cond_4a
    :goto_4a
    move p1, v1

    .line 2312
    :cond_4b
    :goto_4b
    if-eqz p1, :cond_5e

    iget-object p1, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-eqz p1, :cond_5e

    .line 2313
    iget-object p1, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 p2, 0x8

    invoke-virtual {p1, p2, v1}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 2314
    iput-boolean v1, p0, Lcom/android/server/wm/RootActivityContainer;->mPowerHintSent:Z

    .line 2316
    :cond_5e
    return-void
.end method

.method setDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)V
    .registers 5

    .line 1497
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplayOrCreate(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1498
    if-eqz v0, :cond_a

    .line 1502
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityDisplay;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1503
    return-void

    .line 1499
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No display found with id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setDockedStackMinimized(Z)V
    .registers 3

    .line 1081
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1082
    iput-boolean p1, p0, Lcom/android/server/wm/RootActivityContainer;->mIsDockMinimized:Z

    .line 1083
    iget-boolean p1, p0, Lcom/android/server/wm/RootActivityContainer;->mIsDockMinimized:Z

    if-eqz p1, :cond_15

    .line 1084
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 1087
    const-string p1, "setDockedStackMinimized"

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;)Lcom/android/server/wm/ActivityStack;

    .line 1090
    :cond_15
    return-void
.end method

.method setWindowContainer(Lcom/android/server/wm/RootWindowContainer;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 232
    iput-object p1, p0, Lcom/android/server/wm/RootActivityContainer;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 233
    iget-object p1, p0, Lcom/android/server/wm/RootActivityContainer;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/RootWindowContainer;->setRootActivityContainer(Lcom/android/server/wm/RootActivityContainer;)V

    .line 234
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 6

    .line 237
    iput-object p1, p0, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 238
    iget-object p1, p0, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->setWindowContainer(Lcom/android/server/wm/RootWindowContainer;)V

    .line 239
    iget-object p1, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/server/wm/RootActivityContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 240
    iget-object p1, p0, Lcom/android/server/wm/RootActivityContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    invoke-virtual {p1, p0, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 241
    const-class p1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManagerInternal;

    iput-object p1, p0, Lcom/android/server/wm/RootActivityContainer;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 243
    iget-object p1, p0, Lcom/android/server/wm/RootActivityContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p1

    .line 244
    const/4 v0, 0x0

    :goto_31
    array-length v1, p1

    const v2, 0x7fffffff

    if-ge v0, v1, :cond_4a

    .line 245
    aget-object v1, p1, v0

    .line 246
    new-instance v3, Lcom/android/server/wm/ActivityDisplay;

    invoke-direct {v3, p0, v1}, Lcom/android/server/wm/ActivityDisplay;-><init>(Lcom/android/server/wm/RootActivityContainer;Landroid/view/Display;)V

    .line 247
    iget v1, v3, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    if-nez v1, :cond_44

    .line 248
    iput-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    .line 250
    :cond_44
    invoke-virtual {p0, v3, v2}, Lcom/android/server/wm/RootActivityContainer;->addChild(Lcom/android/server/wm/ActivityDisplay;I)V

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 252
    :cond_4a
    invoke-direct {p0}, Lcom/android/server/wm/RootActivityContainer;->calculateDefaultMinimalSizeOfResizeableTasks()V

    .line 254
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object p1

    .line 256
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0, v1}, Lcom/android/server/wm/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/wm/ActivityStack;

    .line 257
    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/RootActivityContainer;->positionChildAt(Lcom/android/server/wm/ActivityDisplay;I)V

    .line 258
    return-void
.end method

.method shouldPlaceSecondaryHomeOnDisplay(I)Z
    .registers 5

    .line 542
    if-eqz p1, :cond_43

    .line 545
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_7

    .line 546
    return v1

    .line 549
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    if-nez v0, :cond_e

    .line 551
    return v1

    .line 554
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 555
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 554
    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_21

    move v0, v2

    goto :goto_22

    :cond_21
    move v0, v1

    .line 557
    :goto_22
    if-nez v0, :cond_25

    .line 559
    return v1

    .line 562
    :cond_25
    iget v0, p0, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    invoke-static {v0}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 564
    return v1

    .line 567
    :cond_2e
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object p1

    .line 568
    if-eqz p1, :cond_42

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityDisplay;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_42

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityDisplay;->supportsSystemDecorations()Z

    move-result p1

    if-nez p1, :cond_41

    goto :goto_42

    .line 573
    :cond_41
    return v2

    .line 570
    :cond_42
    :goto_42
    return v1

    .line 543
    :cond_43
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "shouldPlaceSecondaryHomeOnDisplay: Should not be DEFAULT_DISPLAY"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method startHomeOnAllDisplays(ILjava/lang/String;)Z
    .registers 6

    .line 334
    nop

    .line 335
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_a
    if-ltz v0, :cond_1e

    .line 336
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    iget v2, v2, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    .line 337
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/wm/RootActivityContainer;->startHomeOnDisplay(ILjava/lang/String;I)Z

    move-result v2

    or-int/2addr v1, v2

    .line 335
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 339
    :cond_1e
    return v1
.end method

.method startHomeOnDisplay(ILjava/lang/String;I)Z
    .registers 10

    .line 352
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RootActivityContainer;->startHomeOnDisplay(ILjava/lang/String;IZZ)Z

    move-result p1

    return p1
.end method

.method startHomeOnDisplay(ILjava/lang/String;IZZ)Z
    .registers 10

    .line 370
    const/4 v0, -0x1

    if-ne p3, v0, :cond_9

    .line 371
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p3

    iget p3, p3, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    .line 374
    :cond_9
    nop

    .line 375
    nop

    .line 376
    const/4 v0, 0x0

    if-nez p3, :cond_19

    .line 377
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    .line 378
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootActivityContainer;->resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    goto :goto_2d

    .line 379
    :cond_19
    invoke-virtual {p0, p3}, Lcom/android/server/wm/RootActivityContainer;->shouldPlaceSecondaryHomeOnDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 380
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/RootActivityContainer;->resolveSecondaryHomeActivity(II)Landroid/util/Pair;

    move-result-object v0

    .line 381
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/ActivityInfo;

    .line 382
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    goto :goto_2d

    .line 379
    :cond_2c
    move-object v1, v0

    .line 384
    :goto_2d
    const/4 v2, 0x0

    if-eqz v1, :cond_8c

    if-nez v0, :cond_33

    goto :goto_8c

    .line 388
    :cond_33
    invoke-virtual {p0, v1, p3, p4}, Lcom/android/server/wm/RootActivityContainer;->canStartHomeOnDisplay(Landroid/content/pm/ActivityInfo;IZ)Z

    move-result p4

    if-nez p4, :cond_3a

    .line 389
    return v2

    .line 393
    :cond_3a
    new-instance p4, Landroid/content/ComponentName;

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p4, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 394
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result p4

    const/high16 v2, 0x10000000

    or-int/2addr p4, v2

    invoke-virtual {v0, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 396
    const/4 p4, 0x1

    if-eqz p5, :cond_5a

    .line 397
    const-string p5, "android.intent.extra.FROM_HOME_KEY"

    invoke-virtual {v0, p5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 401
    :cond_5a
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 403
    iget-object p2, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object p2

    invoke-virtual {p2, v0, v1, p1, p3}, Lcom/android/server/wm/ActivityStartController;->startHomeActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;I)V

    .line 405
    return p4

    .line 385
    :cond_8c
    :goto_8c
    return v2
.end method

.method startHomeOnEmptyDisplays(Ljava/lang/String;)V
    .registers 5

    .line 343
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_22

    .line 344
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 345
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_1f

    .line 346
    iget v2, p0, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    iget v1, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {p0, v2, p1, v1}, Lcom/android/server/wm/RootActivityContainer;->startHomeOnDisplay(ILjava/lang/String;I)Z

    .line 343
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 349
    :cond_22
    return-void
.end method

.method switchUser(ILcom/android/server/am/UserState;)Z
    .registers 10

    .line 831
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getStackId()I

    move-result v0

    .line 833
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 834
    if-eqz v1, :cond_1b

    .line 835
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 836
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isFocusedStackOnDisplay()Z

    move-result v3

    .line 835
    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;Z)V

    .line 841
    :cond_1b
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootActivityContainer;->removeStacksInWindowingModes([I)V

    .line 843
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mUserStackInFront:Landroid/util/SparseIntArray;

    iget v3, p0, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 844
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mUserStackInFront:Landroid/util/SparseIntArray;

    .line 845
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getHomeStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 846
    iput p1, p0, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    .line 848
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 849
    iget-object p2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_4c
    if-ltz p2, :cond_73

    .line 850
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    .line 851
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_5b
    if-ltz v3, :cond_70

    .line 852
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 853
    invoke-virtual {v5, p1}, Lcom/android/server/wm/ActivityStack;->switchUserLocked(I)V

    .line 854
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    .line 855
    if-eqz v6, :cond_6d

    .line 856
    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityStack;->positionChildWindowContainerAtTop(Lcom/android/server/wm/TaskRecord;)V

    .line 851
    :cond_6d
    add-int/lit8 v3, v3, -0x1

    goto :goto_5b

    .line 849
    :cond_70
    add-int/lit8 p2, p2, -0x1

    goto :goto_4c

    .line 861
    :cond_73
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootActivityContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    .line 862
    if-nez p1, :cond_81

    .line 863
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityDisplay;->getHomeStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    .line 865
    :cond_81
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result p2

    .line 866
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isOnHomeDisplay()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 867
    const-string v0, "switchUserOnHomeDisplay"

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    goto :goto_97

    .line 870
    :cond_91
    const/4 p1, 0x0

    const-string v0, "switchUserOnOtherDisplay"

    invoke-virtual {p0, p1, v0, v4}, Lcom/android/server/wm/RootActivityContainer;->resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)Z

    .line 872
    :goto_97
    return p2
.end method

.method topRunningActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 3

    .line 2042
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    .line 2043
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2044
    if-eqz v1, :cond_19

    .line 2045
    return-object v1

    .line 2042
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2048
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method updateActivityApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .registers 6

    .line 2005
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_27

    .line 2006
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 2007
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_18
    if-ltz v2, :cond_24

    .line 2008
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 2009
    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityStack;->updateActivityApplicationInfoLocked(Landroid/content/pm/ApplicationInfo;)V

    .line 2007
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 2005
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2012
    :cond_27
    return-void
.end method

.method updatePreviousProcess(Lcom/android/server/wm/ActivityRecord;)V
    .registers 8

    .line 743
    nop

    .line 744
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_a
    if-ltz v0, :cond_3e

    .line 745
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    .line 746
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1a
    if-ltz v3, :cond_3b

    .line 747
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 748
    invoke-virtual {p0, v4}, Lcom/android/server/wm/RootActivityContainer;->isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 749
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 750
    if-eqz v2, :cond_2f

    .line 751
    iget-object v1, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    goto :goto_3b

    .line 752
    :cond_2f
    iget-object v2, v4, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_3b

    .line 753
    iget-object v1, v4, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    goto :goto_3b

    .line 746
    :cond_38
    add-int/lit8 v3, v3, -0x1

    goto :goto_1a

    .line 744
    :cond_3b
    :goto_3b
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 761
    :cond_3e
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v0

    if-eqz v0, :cond_68

    if-eqz v1, :cond_68

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq v0, v1, :cond_68

    iget-wide v0, p1, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-wide v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcessVisibleTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_68

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-eq v0, v1, :cond_68

    .line 764
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iput-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    .line 765
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-wide v1, p1, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    iput-wide v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcessVisibleTime:J

    .line 767
    :cond_68
    return-void
.end method

.method updateUIDsPresentOnDisplay()V
    .registers 5

    .line 1409
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1410
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-ltz v0, :cond_2b

    .line 1411
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 1413
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->isPrivate()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1414
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    iget v3, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    .line 1415
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getPresentUIDs()Landroid/util/IntArray;

    move-result-object v1

    .line 1414
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1410
    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 1419
    :cond_2b
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayAccessUIDs(Landroid/util/SparseArray;)V

    .line 1420
    return-void
.end method

.method updateUserStack(ILcom/android/server/wm/ActivityStack;)V
    .registers 4

    .line 884
    iget v0, p0, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    if-eq p1, v0, :cond_1a

    .line 885
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mUserStackInFront:Landroid/util/SparseIntArray;

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getStackId()I

    move-result p2

    goto :goto_17

    .line 886
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityDisplay;->getHomeStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p2

    iget p2, p2, Lcom/android/server/wm/ActivityStack;->mStackId:I

    .line 885
    :goto_17
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 888
    :cond_1a
    return-void
.end method

.method protected writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 9

    .line 2425
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 2426
    const-wide v0, 0x10b00000001L

    invoke-super {p0, p1, v0, v1, p4}, Lcom/android/server/wm/ConfigurationContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2427
    const/4 v0, 0x0

    :goto_d
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 2428
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 2429
    const-wide v2, 0x20b00000002L

    invoke-virtual {v1, p1, v2, v3, p4}, Lcom/android/server/wm/ActivityDisplay;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2427
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 2431
    :cond_28
    iget-object p4, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object p4

    const-wide v0, 0x10b00000003L

    invoke-virtual {p4, p1, v0, v1}, Lcom/android/server/wm/KeyguardController;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2433
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p4

    .line 2434
    const-wide v0, 0x10500000004L

    if-eqz p4, :cond_59

    .line 2435
    iget v2, p4, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2436
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityDisplay;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p4

    .line 2437
    if-eqz p4, :cond_58

    .line 2438
    const-wide v0, 0x10b00000005L

    invoke-virtual {p4, p1, v0, v1}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2440
    :cond_58
    goto :goto_5d

    .line 2441
    :cond_59
    const/4 p4, -0x1

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2443
    :goto_5d
    const-wide v0, 0x10800000006L

    iget-object p4, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p4, p4, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget v2, p0, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    .line 2444
    invoke-virtual {p4, v2}, Lcom/android/server/wm/RecentTasks;->isRecentsComponentHomeActivity(I)Z

    move-result p4

    .line 2443
    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2445
    iget-object p4, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object p4

    const-wide v0, 0x20b00000007L

    invoke-virtual {p4, p1, v0, v1}, Lcom/android/server/wm/ActivityStartController;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2446
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2447
    return-void
.end method
