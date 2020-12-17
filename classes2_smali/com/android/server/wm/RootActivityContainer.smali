.class public Lcom/android/server/wm/RootActivityContainer;
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
    .param p1, "service"  # Lcom/android/server/wm/ActivityTaskManagerService;

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
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 227
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-object p0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 228
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/RootActivityContainer;Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/RootActivityContainer;
    .param p1, "x1"  # Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;

    .line 135
    invoke-direct {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->removeSleepToken(Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;)V

    return-void
.end method

.method private calculateDefaultMinimalSizeOfResizeableTasks()V
    .registers 5

    .line 2312
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2313
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x10500e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 2315
    .local v1, "minimalSize":F
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 2317
    .local v2, "dm":Landroid/util/DisplayMetrics;
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    div-float v3, v1, v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/server/wm/RootActivityContainer;->mDefaultMinSizeOfResizeableTaskDp:I

    .line 2318
    return-void
.end method

.method private canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;I)Z
    .registers 4
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "displayId"  # I

    .line 1773
    if-nez p1, :cond_4

    .line 1774
    const/4 v0, 0x1

    return v0

    .line 1776
    :cond_4
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v0

    return v0
.end method

.method private getStack(II)Lcom/android/server/wm/ActivityStack;
    .registers 5
    .param p1, "windowingMode"  # I
    .param p2, "activityType"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/wm/ActivityStack;",
            ">(II)TT;"
        }
    .end annotation

    .line 1265
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 1266
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/ActivityDisplay;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1267
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;, "TT;"
    if-eqz v1, :cond_19

    .line 1268
    return-object v1

    .line 1265
    .end local v1  # "stack":Lcom/android/server/wm/ActivityStack;, "TT;"
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1271
    .end local v0  # "i":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method private getStackInfo(Lcom/android/server/wm/ActivityStack;)Landroid/app/ActivityManager$StackInfo;
    .registers 15
    .param p1, "stack"  # Lcom/android/server/wm/ActivityStack;

    .line 1275
    iget v0, p1, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    .line 1276
    .local v0, "displayId":I
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    .line 1277
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    new-instance v2, Landroid/app/ActivityManager$StackInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$StackInfo;-><init>()V

    .line 1278
    .local v2, "info":Landroid/app/ActivityManager$StackInfo;
    iget-object v3, v2, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Lcom/android/server/wm/ActivityStack;->getWindowContainerBounds(Landroid/graphics/Rect;)V

    .line 1279
    iput v0, v2, Landroid/app/ActivityManager$StackInfo;->displayId:I

    .line 1280
    iget v3, p1, Lcom/android/server/wm/ActivityStack;->mStackId:I

    iput v3, v2, Landroid/app/ActivityManager$StackInfo;->stackId:I

    .line 1281
    iget v3, p1, Lcom/android/server/wm/ActivityStack;->mCurrentUser:I

    iput v3, v2, Landroid/app/ActivityManager$StackInfo;->userId:I

    .line 1282
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    iput-boolean v4, v2, Landroid/app/ActivityManager$StackInfo;->visible:Z

    .line 1284
    if-eqz v1, :cond_28

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityDisplay;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result v4

    goto :goto_29

    :cond_28
    const/4 v4, 0x0

    :goto_29
    iput v4, v2, Landroid/app/ActivityManager$StackInfo;->position:I

    .line 1285
    iget-object v4, v2, Landroid/app/ActivityManager$StackInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1287
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 1288
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1289
    .local v5, "numTasks":I
    new-array v6, v5, [I

    .line 1290
    .local v6, "taskIds":[I
    new-array v7, v5, [Ljava/lang/String;

    .line 1291
    .local v7, "taskNames":[Ljava/lang/String;
    new-array v8, v5, [Landroid/graphics/Rect;

    .line 1292
    .local v8, "taskBounds":[Landroid/graphics/Rect;
    new-array v9, v5, [I

    .line 1293
    .local v9, "taskUserIds":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_45
    if-ge v10, v5, :cond_8b

    .line 1294
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/TaskRecord;

    .line 1295
    .local v11, "task":Lcom/android/server/wm/TaskRecord;
    iget v12, v11, Lcom/android/server/wm/TaskRecord;->taskId:I

    aput v12, v6, v10

    .line 1296
    iget-object v12, v11, Lcom/android/server/wm/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v12, :cond_5c

    iget-object v12, v11, Lcom/android/server/wm/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    goto :goto_76

    .line 1297
    :cond_5c
    iget-object v12, v11, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v12, :cond_67

    iget-object v12, v11, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    goto :goto_76

    .line 1298
    :cond_67
    invoke-virtual {v11}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    if-eqz v12, :cond_74

    invoke-virtual {v11}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_76

    .line 1299
    :cond_74
    const-string v12, "unknown"

    :goto_76
    aput-object v12, v7, v10

    .line 1300
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    aput-object v12, v8, v10

    .line 1301
    aget-object v12, v8, v10

    invoke-virtual {v11, v12}, Lcom/android/server/wm/TaskRecord;->getWindowContainerBounds(Landroid/graphics/Rect;)V

    .line 1302
    iget v12, v11, Lcom/android/server/wm/TaskRecord;->userId:I

    aput v12, v9, v10

    .line 1293
    .end local v11  # "task":Lcom/android/server/wm/TaskRecord;
    add-int/lit8 v10, v10, 0x1

    goto :goto_45

    .line 1304
    .end local v10  # "i":I
    :cond_8b
    iput-object v6, v2, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    .line 1305
    iput-object v7, v2, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    .line 1306
    iput-object v8, v2, Landroid/app/ActivityManager$StackInfo;->taskBounds:[Landroid/graphics/Rect;

    .line 1307
    iput-object v9, v2, Landroid/app/ActivityManager$StackInfo;->taskUserIds:[I

    .line 1309
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    .line 1310
    .local v10, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v10, :cond_9f

    iget-object v3, v10, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    :cond_9f
    iput-object v3, v2, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    .line 1311
    return-object v2
.end method

.method private getValidLaunchStackOnDisplay(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Lcom/android/server/wm/ActivityStack;
    .registers 13
    .param p1, "displayId"  # I
    .param p2, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p3, "candidateTask"  # Lcom/android/server/wm/TaskRecord;
    .param p4, "options"  # Landroid/app/ActivityOptions;
    .param p5, "launchParams"  # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 1790
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplayOrCreate(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1791
    .local v0, "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v0, :cond_68

    .line 1796
    invoke-virtual {p2, p1}, Lcom/android/server/wm/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 1797
    return-object v2

    .line 1803
    :cond_e
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v1

    if-ne v1, p1, :cond_1f

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    if-ne v1, p3, :cond_1f

    .line 1804
    invoke-virtual {p3}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    return-object v1

    .line 1808
    :cond_1f
    if-eqz p5, :cond_24

    .line 1812
    iget v1, p5, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .local v1, "windowingMode":I
    goto :goto_30

    .line 1814
    .end local v1  # "windowingMode":I
    :cond_24
    if-eqz p4, :cond_2b

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    goto :goto_2f

    .line 1815
    :cond_2b
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v1

    :goto_2f
    nop

    .line 1817
    .restart local v1  # "windowingMode":I
    :goto_30
    nop

    .line 1818
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v3

    .line 1817
    invoke-virtual {v0, v1, p2, p3, v3}, Lcom/android/server/wm/ActivityDisplay;->validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;I)I

    move-result v1

    .line 1821
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_3f
    if-ltz v3, :cond_4f

    .line 1822
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 1823
    .local v5, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-direct {p0, v5, p2, v1}, Lcom/android/server/wm/RootActivityContainer;->isValidLaunchStack(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 1824
    return-object v5

    .line 1821
    .end local v5  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_4c
    add-int/lit8 v3, v3, -0x1

    goto :goto_3f

    .line 1829
    .end local v3  # "i":I
    :cond_4f
    if-eqz p1, :cond_67

    .line 1831
    if-eqz p4, :cond_5e

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v2

    if-eqz v2, :cond_5e

    .line 1832
    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v2

    goto :goto_62

    :cond_5e
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v2

    .line 1833
    .local v2, "activityType":I
    :goto_62
    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/wm/ActivityDisplay;->createStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    return-object v3

    .line 1836
    .end local v2  # "activityType":I
    :cond_67
    return-object v2

    .line 1792
    .end local v1  # "windowingMode":I
    :cond_68
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display with displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private isValidLaunchStack(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;I)Z
    .registers 7
    .param p1, "stack"  # Lcom/android/server/wm/ActivityStack;
    .param p2, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p3, "windowingMode"  # I

    .line 1848
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_26

    const/4 v2, 0x4

    if-eq v0, v2, :cond_21

    .line 1855
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    if-ne v0, v1, :cond_1f

    .line 1856
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->supportsSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_1f

    if-eq p3, v1, :cond_1d

    if-nez p3, :cond_1f

    .line 1859
    :cond_1d
    const/4 v0, 0x1

    return v0

    .line 1861
    :cond_1f
    const/4 v0, 0x0

    return v0

    .line 1851
    :cond_21
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeAssistant()Z

    move-result v0

    return v0

    .line 1850
    :cond_26
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeRecents()Z

    move-result v0

    return v0

    .line 1849
    :cond_2b
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    return v0
.end method

.method private positionChildAt(Lcom/android/server/wm/ActivityDisplay;I)V
    .registers 4
    .param p1, "display"  # Lcom/android/server/wm/ActivityDisplay;
    .param p2, "position"  # I

    .line 1456
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_11

    .line 1457
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 p2, v0, -0x1

    goto :goto_14

    .line 1458
    :cond_11
    if-gez p2, :cond_14

    .line 1459
    const/4 p2, 0x0

    .line 1462
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1463
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 1464
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_34

    .line 1465
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1466
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1468
    :cond_34
    :goto_34
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->updateTopResumedActivityIfNeeded()V

    .line 1469
    return-void
.end method

.method private removeSleepToken(Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;)V
    .registers 4
    .param p1, "token"  # Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;

    .line 1520
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1522
    invoke-static {p1}, Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;->access$000(Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1523
    .local v0, "display":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v0, :cond_21

    .line 1524
    iget-object v1, v0, Lcom/android/server/wm/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1525
    iget-object v1, v0, Lcom/android/server/wm/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1526
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 1529
    :cond_21
    return-void
.end method

.method private startSystemDecorations(Lcom/android/server/wm/DisplayContent;)V
    .registers 5
    .param p1, "displayContent"  # Lcom/android/server/wm/DisplayContent;

    .line 1371
    iget v0, p0, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    const-string v2, "displayAdded"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/wm/RootActivityContainer;->startHomeOnDisplay(ILjava/lang/String;I)Z

    .line 1372
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->notifyDisplayReady()V

    .line 1373
    return-void
.end method

.method private taskTopActivityIsUser(Lcom/android/server/wm/TaskRecord;I)Z
    .registers 6
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "userId"  # I

    .line 2149
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2150
    .local v0, "activityRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_9

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    .line 2152
    .local v1, "resultTo":Lcom/android/server/wm/ActivityRecord;
    :goto_a
    if-eqz v0, :cond_10

    iget v2, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eq v2, p2, :cond_16

    :cond_10
    if-eqz v1, :cond_18

    iget v2, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v2, p2, :cond_18

    :cond_16
    const/4 v2, 0x1

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    return v2
.end method


# virtual methods
.method addChild(Lcom/android/server/wm/ActivityDisplay;I)V
    .registers 5
    .param p1, "activityDisplay"  # Lcom/android/server/wm/ActivityDisplay;
    .param p2, "position"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1473
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/RootActivityContainer;->positionChildAt(Lcom/android/server/wm/ActivityDisplay;I)V

    .line 1474
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, p1, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p2, v1}, Lcom/android/server/wm/RootWindowContainer;->positionChildAt(ILcom/android/server/wm/DisplayContent;)V

    .line 1475
    return-void
.end method

.method addStartingWindowsForVisibleActivities(Z)V
    .registers 6
    .param p1, "taskSwitch"  # Z

    .line 1532
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_27

    .line 1533
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 1534
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_18
    if-ltz v2, :cond_24

    .line 1535
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1536
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityStack;->addStartingWindowsForVisibleActivities(Z)V

    .line 1534
    .end local v3  # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 1532
    .end local v1  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v2  # "stackNdx":I
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1539
    .end local v0  # "displayNdx":I
    :cond_27
    return-void
.end method

.method allPausedActivitiesComplete()Z
    .registers 10

    .line 2084
    const/4 v0, 0x1

    .line 2085
    .local v0, "pausing":Z
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_9
    if-ltz v1, :cond_5f

    .line 2086
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    .line 2087
    .local v2, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_19
    if-ltz v3, :cond_5c

    .line 2088
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 2089
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    iget-object v5, v4, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2090
    .local v5, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_59

    sget-object v6, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v6

    if-nez v6, :cond_59

    .line 2091
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v6, :cond_57

    .line 2092
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allPausedActivitiesComplete: r="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2093
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2092
    const-string v7, "ActivityTaskManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    const/4 v0, 0x0

    goto :goto_59

    .line 2096
    :cond_57
    const/4 v6, 0x0

    return v6

    .line 2087
    .end local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v5  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_59
    :goto_59
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 2085
    .end local v2  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v3  # "stackNdx":I
    :cond_5c
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 2101
    .end local v1  # "displayNdx":I
    :cond_5f
    return v0
.end method

.method allResumedActivitiesIdle()Z
    .registers 7

    .line 2037
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_5e

    .line 2039
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    .line 2040
    .local v2, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->isSleeping()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2042
    goto :goto_5b

    .line 2047
    :cond_19
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 2048
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v3, :cond_5b

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->numActivities()I

    move-result v4

    if-nez v4, :cond_26

    .line 2049
    goto :goto_5b

    .line 2051
    :cond_26
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 2052
    .local v4, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_30

    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->idle:Z

    if-nez v5, :cond_5b

    .line 2053
    :cond_30
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v1, :cond_59

    .line 2054
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allResumedActivitiesIdle: stack="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " not idle"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    :cond_59
    const/4 v1, 0x0

    return v1

    .line 2037
    .end local v2  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v3  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v4  # "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_5b
    :goto_5b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2061
    .end local v0  # "displayNdx":I
    :cond_5e
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->sendPowerHintForLaunchEndIfNeeded()V

    .line 2062
    return v1
.end method

.method allResumedActivitiesVisible()Z
    .registers 8

    .line 2066
    const/4 v0, 0x0

    .line 2067
    .local v0, "foundResumed":Z
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_9
    if-ltz v1, :cond_32

    .line 2068
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    .line 2069
    .local v2, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_19
    if-ltz v3, :cond_2f

    .line 2070
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 2071
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 2072
    .local v5, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_2c

    .line 2073
    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-nez v6, :cond_2b

    .line 2074
    const/4 v6, 0x0

    return v6

    .line 2076
    :cond_2b
    const/4 v0, 0x1

    .line 2069
    .end local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v5  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_2c
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 2067
    .end local v2  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v3  # "stackNdx":I
    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 2080
    .end local v1  # "displayNdx":I
    :cond_32
    return v0
.end method

.method anyTaskForId(I)Lcom/android/server/wm/TaskRecord;
    .registers 3
    .param p1, "id"  # I

    .line 2167
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method anyTaskForId(II)Lcom/android/server/wm/TaskRecord;
    .registers 5
    .param p1, "id"  # I
    .param p2, "matchMode"  # I

    .line 2171
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/TaskRecord;
    .registers 25
    .param p1, "id"  # I
    .param p2, "matchMode"  # I
    .param p3, "aOptions"  # Landroid/app/ActivityOptions;
    .param p4, "onTop"  # Z

    .line 2184
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v11, p4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_18

    if-nez v3, :cond_10

    goto :goto_18

    .line 2185
    :cond_10
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Should not specify activity options for non-restore lookup"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2189
    :cond_18
    :goto_18
    iget-object v5, v0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 2190
    .local v12, "numDisplays":I
    const/4 v5, 0x0

    move v13, v5

    .local v13, "displayNdx":I
    :goto_20
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ge v13, v12, :cond_7d

    .line 2191
    iget-object v7, v0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Lcom/android/server/wm/ActivityDisplay;

    .line 2192
    .local v14, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v14}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v5

    move v15, v7

    .local v15, "stackNdx":I
    :goto_33
    if-ltz v15, :cond_7a

    .line 2193
    invoke-virtual {v14, v15}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v10

    .line 2194
    .local v10, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v10, v1}, Lcom/android/server/wm/ActivityStack;->taskForIdLocked(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v9

    .line 2195
    .local v9, "task":Lcom/android/server/wm/TaskRecord;
    if-nez v9, :cond_43

    .line 2196
    nop

    .line 2192
    .end local v9  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v10  # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v15, v15, -0x1

    goto :goto_33

    .line 2198
    .restart local v9  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v10  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_43
    if-eqz v3, :cond_75

    .line 2201
    nop

    .line 2202
    invoke-virtual {v0, v6, v3, v9, v11}, Lcom/android/server/wm/RootActivityContainer;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v8

    .line 2203
    .local v8, "launchStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v8, :cond_6e

    if-eq v10, v8, :cond_6e

    .line 2204
    if-eqz v11, :cond_52

    .line 2205
    const/4 v4, 0x0

    goto :goto_53

    :cond_52
    nop

    :goto_53
    move v7, v4

    .line 2206
    .local v7, "reparentMode":I
    const/16 v16, 0x1

    const/16 v17, 0x1

    const-string v18, "anyTaskForId"

    move-object v4, v9

    move-object v5, v8

    move/from16 v6, p4

    move-object/from16 v19, v8

    .end local v8  # "launchStack":Lcom/android/server/wm/ActivityStack;
    .local v19, "launchStack":Lcom/android/server/wm/ActivityStack;
    move/from16 v8, v16

    move-object/from16 v16, v9

    .end local v9  # "task":Lcom/android/server/wm/TaskRecord;
    .local v16, "task":Lcom/android/server/wm/TaskRecord;
    move/from16 v9, v17

    move-object/from16 v17, v10

    .end local v10  # "stack":Lcom/android/server/wm/ActivityStack;
    .local v17, "stack":Lcom/android/server/wm/ActivityStack;
    move-object/from16 v10, v18

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    goto :goto_79

    .line 2203
    .end local v7  # "reparentMode":I
    .end local v16  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v17  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v19  # "launchStack":Lcom/android/server/wm/ActivityStack;
    .restart local v8  # "launchStack":Lcom/android/server/wm/ActivityStack;
    .restart local v9  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v10  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_6e
    move-object/from16 v19, v8

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    .end local v8  # "launchStack":Lcom/android/server/wm/ActivityStack;
    .end local v9  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v10  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v16  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v17  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v19  # "launchStack":Lcom/android/server/wm/ActivityStack;
    goto :goto_79

    .line 2198
    .end local v16  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v17  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v19  # "launchStack":Lcom/android/server/wm/ActivityStack;
    .restart local v9  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v10  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_75
    move-object/from16 v16, v9

    move-object/from16 v17, v10

    .line 2210
    .end local v9  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v10  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v16  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v17  # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_79
    return-object v16

    .line 2190
    .end local v14  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v15  # "stackNdx":I
    .end local v16  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v17  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_7a
    add-int/lit8 v13, v13, 0x1

    goto :goto_20

    .line 2215
    .end local v13  # "displayNdx":I
    :cond_7d
    if-nez v2, :cond_80

    .line 2216
    return-object v6

    .line 2221
    :cond_80
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    const-string v7, " in recents"

    const-string v8, "ActivityTaskManager"

    if-eqz v4, :cond_9f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Looking for task id="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    :cond_9f
    iget-object v4, v0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/RecentTasks;->getTask(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    .line 2224
    .local v4, "task":Lcom/android/server/wm/TaskRecord;
    if-nez v4, :cond_c5

    .line 2225
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v5, :cond_c4

    .line 2226
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\tDidn\'t find task id="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    :cond_c4
    return-object v6

    .line 2232
    :cond_c5
    if-ne v2, v5, :cond_c8

    .line 2233
    return-object v4

    .line 2237
    :cond_c8
    iget-object v5, v0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v5, v4, v3, v11}, Lcom/android/server/wm/ActivityStackSupervisor;->restoreRecentTaskLocked(Lcom/android/server/wm/TaskRecord;Landroid/app/ActivityOptions;Z)Z

    move-result v5

    if-nez v5, :cond_ee

    .line 2238
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v5, :cond_ed

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t restore task id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " found in recents"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    :cond_ed
    return-object v6

    .line 2242
    :cond_ee
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v5, :cond_10b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restored task id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " from in recents"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    :cond_10b
    return-object v4
.end method

.method applySleepTokens(Z)V
    .registers 9
    .param p1, "applyToStacks"  # Z

    .line 1207
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_83

    .line 1209
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 1210
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->shouldSleep()Z

    move-result v2

    .line 1211
    .local v2, "displayShouldSleep":Z
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->isSleeping()Z

    move-result v3

    if-ne v2, v3, :cond_1d

    .line 1212
    goto :goto_80

    .line 1214
    :cond_1d
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityDisplay;->setIsSleeping(Z)V

    .line 1216
    if-nez p1, :cond_23

    .line 1217
    goto :goto_80

    .line 1221
    :cond_23
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_29
    if-ltz v3, :cond_53

    .line 1222
    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 1223
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v2, :cond_36

    .line 1224
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityStack;->goToSleepIfPossible(Z)Z

    goto :goto_50

    .line 1226
    :cond_36
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->awakeFromSleepingLocked()V

    .line 1227
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->isFocusedStackOnDisplay()Z

    move-result v5

    if-eqz v5, :cond_50

    iget-object v5, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 1228
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v5

    iget v6, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    .line 1229
    invoke-virtual {v5, v6}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v5

    if-nez v5, :cond_50

    .line 1234
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 1221
    .end local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_50
    :goto_50
    add-int/lit8 v3, v3, -0x1

    goto :goto_29

    .line 1239
    .end local v3  # "stackNdx":I
    :cond_53
    if-nez v2, :cond_80

    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_60

    .line 1240
    goto :goto_80

    .line 1243
    :cond_60
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    .line 1244
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wm/ActivityRecord;>;"
    :goto_68
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_80

    .line 1245
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 1246
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v5

    iget v6, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    if-ne v5, v6, :cond_7f

    .line 1247
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 1249
    .end local v4  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_7f
    goto :goto_68

    .line 1207
    .end local v1  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v2  # "displayShouldSleep":Z
    .end local v3  # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wm/ActivityRecord;>;"
    :cond_80
    :goto_80
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1251
    .end local v0  # "displayNdx":I
    :cond_83
    return-void
.end method

.method attachApplication(Lcom/android/server/wm/WindowProcessController;)Z
    .registers 15
    .param p1, "app"  # Lcom/android/server/wm/WindowProcessController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 775
    iget-object v0, p1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 776
    .local v0, "processName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 777
    .local v1, "didSomething":Z
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "displayNdx":I
    :goto_b
    const/4 v4, 0x0

    if-ltz v2, :cond_83

    .line 778
    iget-object v5, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityDisplay;

    .line 779
    .local v5, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 780
    .local v6, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v6, :cond_80

    .line 781
    iget-object v7, p0, Lcom/android/server/wm/RootActivityContainer;->mTmpActivityList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/ActivityStack;->getAllRunningVisibleActivitiesLocked(Ljava/util/ArrayList;)V

    .line 782
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    .line 783
    .local v7, "top":Lcom/android/server/wm/ActivityRecord;
    iget-object v8, p0, Lcom/android/server/wm/RootActivityContainer;->mTmpActivityList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 784
    .local v8, "size":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2c
    if-ge v9, v8, :cond_80

    .line 785
    iget-object v10, p0, Lcom/android/server/wm/RootActivityContainer;->mTmpActivityList:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/ActivityRecord;

    .line 786
    .local v10, "activity":Lcom/android/server/wm/ActivityRecord;
    iget-object v11, v10, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v11, :cond_7d

    iget v11, p1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget-object v12, v10, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v11, v12, :cond_7d

    iget-object v11, v10, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 787
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7d

    .line 789
    :try_start_4c
    iget-object v11, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    if-ne v7, v10, :cond_52

    move v12, v3

    goto :goto_53

    :cond_52
    move v12, v4

    :goto_53
    invoke-virtual {v11, v10, p1, v12, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->realStartActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;ZZ)Z

    move-result v11
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_57} :catch_5b

    if-eqz v11, :cond_5a

    .line 791
    const/4 v1, 0x1

    .line 797
    :cond_5a
    goto :goto_7d

    .line 793
    :catch_5b
    move-exception v3

    .line 794
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception in new application when starting activity "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 795
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 794
    const-string v11, "ActivityTaskManager"

    invoke-static {v11, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 796
    throw v3

    .line 784
    .end local v3  # "e":Landroid/os/RemoteException;
    .end local v10  # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_7d
    :goto_7d
    add-int/lit8 v9, v9, 0x1

    goto :goto_2c

    .line 777
    .end local v5  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v6  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v7  # "top":Lcom/android/server/wm/ActivityRecord;
    .end local v8  # "size":I
    .end local v9  # "i":I
    :cond_80
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 802
    .end local v2  # "displayNdx":I
    :cond_83
    if-nez v1, :cond_89

    .line 803
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4, v4}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 805
    :cond_89
    return v1
.end method

.method canStartHomeOnDisplay(Landroid/content/pm/ActivityInfo;IZ)Z
    .registers 9
    .param p1, "homeInfo"  # Landroid/content/pm/ActivityInfo;
    .param p2, "displayId"  # I
    .param p3, "allowInstrumenting"  # Z

    .line 590
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopAction:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 594
    return v2

    .line 597
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 598
    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 599
    .local v0, "app":Lcom/android/server/wm/WindowProcessController;
    if-nez p3, :cond_26

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isInstrumenting()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 601
    return v2

    .line 604
    :cond_26
    if-eqz p2, :cond_4a

    const/4 v3, -0x1

    if-eq p2, v3, :cond_32

    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mVr2dDisplayId:I

    if-ne p2, v3, :cond_32

    goto :goto_4a

    .line 610
    :cond_32
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootActivityContainer;->shouldPlaceSecondaryHomeOnDisplay(I)Z

    move-result v3

    if-nez v3, :cond_39

    .line 611
    return v2

    .line 614
    :cond_39
    iget v3, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_45

    iget v3, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_45

    move v3, v1

    goto :goto_46

    :cond_45
    move v3, v2

    .line 616
    .local v3, "supportMultipleInstance":Z
    :goto_46
    if-nez v3, :cond_49

    .line 618
    return v2

    .line 621
    :cond_49
    return v1

    .line 607
    .end local v3  # "supportMultipleInstance":Z
    :cond_4a
    :goto_4a
    return v1
.end method

.method cancelInitializingActivities()V
    .registers 5

    .line 2157
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_27

    .line 2158
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 2159
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_18
    if-ltz v2, :cond_24

    .line 2160
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 2161
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->cancelInitializingActivities()V

    .line 2159
    .end local v3  # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 2157
    .end local v1  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v2  # "stackNdx":I
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2164
    .end local v0  # "displayNdx":I
    :cond_27
    return-void
.end method

.method public changedTargetUid(Ljava/lang/String;I)I
    .registers 10
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "resultToUserId"  # I

    .line 2460
    const/4 v0, -0x1

    .line 2462
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_42

    .line 2463
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    .line 2465
    .local v2, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_19
    if-ltz v3, :cond_3f

    .line 2466
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 2468
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 2469
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 2470
    .local v5, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_3c

    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v6, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 2471
    iget v6, v5, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eq v6, p2, :cond_3b

    .line 2472
    iget v6, v5, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    return v6

    .line 2475
    :cond_3b
    return v0

    .line 2465
    .end local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v5  # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_3c
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 2462
    .end local v2  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v3  # "j":I
    :cond_3f
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 2480
    .end local v1  # "i":I
    :cond_42
    return v0
.end method

.method clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V
    .registers 6
    .param p1, "except"  # Lcom/android/server/am/AppTimeTracker;

    .line 1561
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_27

    .line 1562
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 1563
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_18
    if-ltz v2, :cond_24

    .line 1564
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1565
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityStack;->clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V

    .line 1563
    .end local v3  # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 1561
    .end local v1  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v2  # "stackNdx":I
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1568
    .end local v0  # "displayNdx":I
    :cond_27
    return-void
.end method

.method closeSystemDialogs()V
    .registers 5

    .line 1963
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_27

    .line 1964
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 1965
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_18
    if-ltz v2, :cond_24

    .line 1966
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1967
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->closeSystemDialogsLocked()V

    .line 1965
    .end local v3  # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 1963
    .end local v1  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v2  # "stackNdx":I
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1970
    .end local v0  # "displayNdx":I
    :cond_27
    return-void
.end method

.method continueUpdateBounds(I)V
    .registers 3
    .param p1, "activityType"  # I

    .line 1347
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/RootActivityContainer;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1348
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_a

    .line 1349
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->continueUpdateBounds()V

    .line 1351
    :cond_a
    return-void
.end method

.method createSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;
    .registers 7
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "displayId"  # I

    .line 1508
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1509
    .local v0, "display":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v0, :cond_16

    .line 1513
    new-instance v1, Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;-><init>(Lcom/android/server/wm/RootActivityContainer;Ljava/lang/String;I)V

    .line 1514
    .local v1, "token":Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1515
    iget-object v2, v0, Lcom/android/server/wm/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1516
    return-object v1

    .line 1510
    .end local v1  # "token":Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method deferUpdateBounds(I)V
    .registers 3
    .param p1, "activityType"  # I

    .line 1340
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/RootActivityContainer;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1341
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_a

    .line 1342
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->deferUpdateBounds()V

    .line 1344
    :cond_a
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 2345
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2346
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

    .line 2347
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_23
    if-ltz v0, :cond_33

    .line 2348
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 2349
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/ActivityDisplay;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2347
    .end local v1  # "display":Lcom/android/server/wm/ActivityDisplay;
    add-int/lit8 v0, v0, -0x1

    goto :goto_23

    .line 2351
    .end local v0  # "i":I
    :cond_33
    return-void
.end method

.method dumpActivities(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;)Z
    .registers 23
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "dumpAll"  # Z
    .param p4, "dumpClient"  # Z
    .param p5, "dumpPackage"  # Ljava/lang/String;

    .line 2378
    move-object/from16 v0, p0

    move-object/from16 v13, p2

    const/4 v1, 0x0

    .line 2379
    .local v1, "printed":Z
    const/4 v2, 0x0

    .line 2380
    .local v2, "needSep":Z
    iget-object v3, v0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v14, v1

    move v15, v2

    move v8, v3

    .end local v1  # "printed":Z
    .end local v2  # "needSep":Z
    .local v8, "displayNdx":I
    .local v14, "printed":Z
    .local v15, "needSep":Z
    :goto_11
    if-ltz v8, :cond_66

    .line 2381
    iget-object v1, v0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/server/wm/ActivityDisplay;

    .line 2382
    .local v9, "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    const-string v1, "Display #"

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v9, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2383
    const-string v1, " (activities from top to bottom):"

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2384
    iget-object v1, v0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/server/wm/ActivityDisplay;

    .line 2385
    .local v10, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v11, v1

    .local v11, "stackNdx":I
    :goto_3b
    if-ltz v11, :cond_58

    .line 2386
    invoke-virtual {v10, v11}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v12

    .line 2387
    .local v12, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2388
    move-object v1, v12

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move v7, v15

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ActivityStack;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;Z)Z

    move-result v14

    .line 2389
    move v15, v14

    .line 2385
    .end local v12  # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v11, v11, -0x1

    goto :goto_3b

    .line 2391
    .end local v11  # "stackNdx":I
    :cond_58
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityDisplay;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    const-string v2, " ResumedActivity:"

    move-object/from16 v12, p5

    invoke-static {v13, v1, v12, v15, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    .line 2380
    .end local v9  # "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    .end local v10  # "display":Lcom/android/server/wm/ActivityDisplay;
    add-int/lit8 v8, v8, -0x1

    goto :goto_11

    :cond_66
    move-object/from16 v12, p5

    .line 2395
    .end local v8  # "displayNdx":I
    iget-object v1, v0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    const/4 v6, 0x0

    xor-int/lit8 v7, p3, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/16 v16, 0x0

    const-string v4, "  "

    const-string v5, "Fin"

    const-string v11, "  Activities waiting to finish:"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p5

    move-object/from16 v12, v16

    invoke-static/range {v1 .. v12}, Lcom/android/server/wm/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/wm/TaskRecord;)Z

    move-result v1

    or-int/2addr v14, v1

    .line 2398
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

    or-int/2addr v14, v1

    .line 2401
    iget-object v1, v0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    const/4 v6, 0x0

    xor-int/lit8 v7, p3, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    const-string v4, "  "

    const-string v5, "Sleep"

    const-string v11, "  Activities waiting to sleep:"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p5

    invoke-static/range {v1 .. v12}, Lcom/android/server/wm/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/wm/TaskRecord;)Z

    move-result v1

    or-int/2addr v1, v14

    .line 2405
    .end local v14  # "printed":Z
    .restart local v1  # "printed":Z
    return v1
.end method

.method dumpDisplayConfigs(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 2358
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Display override configurations:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2359
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2360
    .local v0, "displayCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_35

    .line 2361
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    .line 2362
    .local v2, "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2363
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2360
    .end local v2  # "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 2365
    .end local v1  # "i":I
    :cond_35
    return-void
.end method

.method public dumpDisplays(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 2368
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_38

    .line 2369
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 2370
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
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

    .line 2371
    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityDisplay;->dumpStacks(Ljava/io/PrintWriter;)V

    .line 2372
    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2368
    .end local v1  # "display":Lcom/android/server/wm/ActivityDisplay;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2374
    .end local v0  # "i":I
    :cond_38
    return-void
.end method

.method ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V
    .registers 5
    .param p1, "starting"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"  # I
    .param p3, "preserveWindows"  # Z

    .line 814
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 815
    return-void
.end method

.method ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .registers 7
    .param p1, "starting"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"  # I
    .param p3, "preserveWindows"  # Z
    .param p4, "notifyClients"  # Z

    .line 822
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardController;->beginActivityVisibilityUpdate()V

    .line 825
    :try_start_9
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_11
    if-ltz v0, :cond_21

    .line 826
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 827
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/ActivityDisplay;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_2c

    .line 825
    .end local v1  # "display":Lcom/android/server/wm/ActivityDisplay;
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 831
    .end local v0  # "displayNdx":I
    :cond_21
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardController;->endActivityVisibilityUpdate()V

    .line 832
    nop

    .line 833
    return-void

    .line 831
    :catchall_2c
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/KeyguardController;->endActivityVisibilityUpdate()V

    throw v0
.end method

.method ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z
    .registers 11
    .param p1, "starting"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "displayId"  # I
    .param p3, "markFrozenIfConfigChanged"  # Z
    .param p4, "deferResume"  # Z

    .line 641
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 644
    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_a

    .line 646
    return v1

    .line 651
    :cond_a
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 652
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v3, 0x0

    .line 653
    .local v3, "config":Landroid/content/res/Configuration;
    if-eqz v2, :cond_2a

    .line 654
    nop

    .line 655
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootActivityContainer;->getDisplayOverrideConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v4

    .line 656
    if-eqz p1, :cond_25

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1, v5}, Lcom/android/server/wm/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 657
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    goto :goto_26

    :cond_25
    nop

    .line 654
    :goto_26
    invoke-virtual {v2, v4, v0, v1}, Lcom/android/server/wm/DisplayContent;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;Z)Landroid/content/res/Configuration;

    move-result-object v3

    .line 660
    :cond_2a
    if-eqz p1, :cond_32

    if-eqz p3, :cond_32

    if-eqz v3, :cond_32

    .line 661
    iput-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->frozenBeforeDestroy:Z

    .line 665
    :cond_32
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, v3, p1, p4, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZI)Z

    move-result v0

    return v0
.end method

.method executeAppTransitionForAllDisplay()V
    .registers 4

    .line 1076
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_1a

    .line 1077
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 1078
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    iget-object v2, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 1076
    .end local v1  # "display":Lcom/android/server/wm/ActivityDisplay;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1080
    .end local v0  # "displayNdx":I
    :cond_1a
    return-void
.end method

.method findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;
    .registers 9
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "info"  # Landroid/content/pm/ActivityInfo;
    .param p3, "compareIntentFilters"  # Z

    .line 1640
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_2b

    .line 1641
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 1642
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_18
    if-ltz v2, :cond_28

    .line 1643
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1644
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/wm/ActivityStack;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 1646
    .local v4, "ar":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_25

    .line 1647
    return-object v4

    .line 1642
    .end local v3  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v4  # "ar":Lcom/android/server/wm/ActivityRecord;
    :cond_25
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 1640
    .end local v1  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v2  # "stackNdx":I
    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1651
    .end local v0  # "displayNdx":I
    :cond_2b
    const/4 v0, 0x0

    return-object v0
.end method

.method findStackBehind(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityStack;
    .registers 6
    .param p1, "stack"  # Lcom/android/server/wm/ActivityStack;

    .line 1419
    iget v0, p1, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1420
    .local v0, "display":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v0, :cond_22

    .line 1421
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_22

    .line 1422
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    if-ne v2, p1, :cond_1f

    if-lez v1, :cond_1f

    .line 1423
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    return-object v2

    .line 1421
    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 1427
    .end local v1  # "i":I
    :cond_22
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find a stack behind stack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method findTask(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;
    .registers 9
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "preferredDisplayId"  # I

    .line 1098
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Looking for task of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->clear()V

    .line 1102
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1103
    .local v0, "preferredDisplay":Lcom/android/server/wm/ActivityDisplay;
    const/4 v2, 0x1

    if-eqz v0, :cond_36

    .line 1104
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/server/wm/ActivityDisplay;->findTaskLocked(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/RootActivityContainer$FindTaskResult;)V

    .line 1105
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    iget-boolean v3, v3, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mIdealMatch:Z

    if-eqz v3, :cond_36

    .line 1106
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    iget-object v1, v1, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    return-object v1

    .line 1110
    :cond_36
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "displayNdx":I
    :goto_3d
    if-ltz v3, :cond_60

    .line 1111
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    .line 1112
    .local v2, "display":Lcom/android/server/wm/ActivityDisplay;
    iget v4, v2, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    if-ne v4, p2, :cond_4c

    .line 1113
    goto :goto_5d

    .line 1116
    :cond_4c
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/wm/RootActivityContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    invoke-virtual {v2, p1, v4, v5}, Lcom/android/server/wm/ActivityDisplay;->findTaskLocked(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/RootActivityContainer$FindTaskResult;)V

    .line 1117
    iget-object v4, p0, Lcom/android/server/wm/RootActivityContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    iget-boolean v4, v4, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mIdealMatch:Z

    if-eqz v4, :cond_5d

    .line 1118
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    iget-object v1, v1, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    return-object v1

    .line 1110
    .end local v2  # "display":Lcom/android/server/wm/ActivityDisplay;
    :cond_5d
    :goto_5d
    add-int/lit8 v3, v3, -0x1

    goto :goto_3d

    .line 1122
    .end local v3  # "displayNdx":I
    :cond_60
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v2, :cond_6f

    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    iget-object v2, v2, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v2, :cond_6f

    const-string v2, "No task found"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    :cond_6f
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    iget-object v1, v1, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    return-object v1
.end method

.method finishDisabledPackageActivities(Ljava/lang/String;Ljava/util/Set;ZZI)Z
    .registers 18
    .param p1, "packageName"  # Ljava/lang/String;
    .param p3, "doit"  # Z
    .param p4, "evenPersistent"  # Z
    .param p5, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZI)Z"
        }
    .end annotation

    .line 1975
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, p0

    const/4 v1, 0x0

    .line 1976
    .local v1, "didSomething":Z
    iget-object v2, v0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "displayNdx":I
    :goto_a
    if-ltz v2, :cond_35

    .line 1977
    iget-object v3, v0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityDisplay;

    .line 1978
    .local v3, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "stackNdx":I
    :goto_1a
    if-ltz v4, :cond_32

    .line 1979
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v11

    .line 1980
    .local v11, "stack":Lcom/android/server/wm/ActivityStack;
    move-object v5, v11

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/ActivityStack;->finishDisabledPackageActivitiesLocked(Ljava/lang/String;Ljava/util/Set;ZZI)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 1982
    const/4 v1, 0x1

    .line 1978
    .end local v11  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_2f
    add-int/lit8 v4, v4, -0x1

    goto :goto_1a

    .line 1976
    .end local v3  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v4  # "stackNdx":I
    :cond_32
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 1986
    .end local v2  # "displayNdx":I
    :cond_35
    return v1
.end method

.method finishTopCrashedActivities(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)I
    .registers 10
    .param p1, "app"  # Lcom/android/server/wm/WindowProcessController;
    .param p2, "reason"  # Ljava/lang/String;

    .line 1133
    const/4 v0, 0x0

    .line 1134
    .local v0, "finishedTask":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1135
    .local v1, "focusedStack":Lcom/android/server/wm/ActivityStack;
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "displayNdx":I
    :goto_d
    if-ltz v2, :cond_31

    .line 1136
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityDisplay;

    .line 1139
    .local v3, "display":Lcom/android/server/wm/ActivityDisplay;
    const/4 v4, 0x0

    .local v4, "stackNdx":I
    :goto_18
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_2e

    .line 1140
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 1141
    .local v5, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v5, p1, p2}, Lcom/android/server/wm/ActivityStack;->finishTopCrashedActivityLocked(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    .line 1142
    .local v6, "t":Lcom/android/server/wm/TaskRecord;
    if-eq v5, v1, :cond_2a

    if-nez v0, :cond_2b

    .line 1143
    :cond_2a
    move-object v0, v6

    .line 1139
    .end local v5  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v6  # "t":Lcom/android/server/wm/TaskRecord;
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 1135
    .end local v3  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v4  # "stackNdx":I
    :cond_2e
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 1147
    .end local v2  # "displayNdx":I
    :cond_31
    if-eqz v0, :cond_36

    iget v2, v0, Lcom/android/server/wm/TaskRecord;->taskId:I

    goto :goto_37

    :cond_36
    const/4 v2, -0x1

    :goto_37
    return v2
.end method

.method finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .registers 7
    .param p1, "session"  # Landroid/service/voice/IVoiceInteractionSession;

    .line 2000
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_26

    .line 2001
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 2002
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v2

    .line 2003
    .local v2, "numStacks":I
    const/4 v3, 0x0

    .local v3, "stackNdx":I
    :goto_17
    if-ge v3, v2, :cond_23

    .line 2004
    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 2005
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v4, p1}, Lcom/android/server/wm/ActivityStack;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 2003
    .end local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 2000
    .end local v1  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v2  # "numStacks":I
    .end local v3  # "stackNdx":I
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2008
    .end local v0  # "displayNdx":I
    :cond_26
    return-void
.end method

.method getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;
    .registers 5
    .param p1, "displayId"  # I

    .line 286
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1a

    .line 287
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 288
    .local v1, "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    iget v2, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    if-ne v2, p1, :cond_17

    .line 289
    return-object v1

    .line 286
    .end local v1  # "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 292
    .end local v0  # "i":I
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method getActivityDisplay(Ljava/lang/String;)Lcom/android/server/wm/ActivityDisplay;
    .registers 6
    .param p1, "uniqueId"  # Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_2a

    .line 274
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 275
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    iget-object v2, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->isValid()Z

    move-result v2

    .line 276
    .local v2, "isValid":Z
    if-eqz v2, :cond_27

    iget-object v3, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 277
    return-object v1

    .line 273
    .end local v1  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v2  # "isValid":Z
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 281
    .end local v0  # "i":I
    :cond_2a
    const/4 v0, 0x0

    return-object v0
.end method

.method getActivityDisplayOrCreate(I)Lcom/android/server/wm/ActivityDisplay;
    .registers 5
    .param p1, "displayId"  # I

    .line 301
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 302
    .local v0, "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v0, :cond_7

    .line 303
    return-object v0

    .line 305
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    if-nez v1, :cond_d

    .line 307
    return-object v2

    .line 309
    :cond_d
    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 310
    .local v1, "display":Landroid/view/Display;
    if-nez v1, :cond_14

    .line 312
    return-object v2

    .line 315
    :cond_14
    new-instance v2, Lcom/android/server/wm/ActivityDisplay;

    invoke-direct {v2, p0, v1}, Lcom/android/server/wm/ActivityDisplay;-><init>(Lcom/android/server/wm/RootActivityContainer;Landroid/view/Display;)V

    move-object v0, v2

    .line 316
    const/high16 v2, -0x80000000

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/RootActivityContainer;->addChild(Lcom/android/server/wm/ActivityDisplay;I)V

    .line 317
    return-object v0
.end method

.method getAllStackInfos()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManager$StackInfo;",
            ">;"
        }
    .end annotation

    .line 1328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1329
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$StackInfo;>;"
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_6
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 1330
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    .line 1331
    .local v2, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_1c
    if-ltz v3, :cond_2c

    .line 1332
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 1333
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-direct {p0, v4}, Lcom/android/server/wm/RootActivityContainer;->getStackInfo(Lcom/android/server/wm/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1331
    .end local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    .line 1329
    .end local v2  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v3  # "stackNdx":I
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1336
    .end local v1  # "displayNdx":I
    :cond_2f
    return-object v0
.end method

.method protected getChildAt(I)Lcom/android/server/wm/ActivityDisplay;
    .registers 3
    .param p1, "index"  # I

    .line 1438
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityDisplay;

    return-object v0
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

    .line 1433
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
    .param p1, "userId"  # I

    .line 330
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityDisplay;->getHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getDisplayOverrideConfiguration(I)Landroid/content/res/Configuration;
    .registers 6
    .param p1, "displayId"  # I

    .line 1484
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplayOrCreate(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1485
    .local v0, "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v0, :cond_b

    .line 1489
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    return-object v1

    .line 1486
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No display found with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getDumpActivities(Ljava/lang/String;ZZ)Ljava/util/ArrayList;
    .registers 11
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "dumpVisibleStacksOnly"  # Z
    .param p3, "dumpFocusedStackOnly"  # Z
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

    .line 2326
    if-eqz p3, :cond_b

    .line 2327
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStack;->getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 2329
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2330
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2331
    .local v1, "numDisplays":I
    const/4 v2, 0x0

    .local v2, "displayNdx":I
    :goto_17
    if-ge v2, v1, :cond_43

    .line 2332
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityDisplay;

    .line 2333
    .local v3, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "stackNdx":I
    :goto_27
    if-ltz v4, :cond_40

    .line 2334
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 2335
    .local v5, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz p2, :cond_36

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 2336
    :cond_36
    invoke-virtual {v5, p1}, Lcom/android/server/wm/ActivityStack;->getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2333
    .end local v5  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_3d
    add-int/lit8 v4, v4, -0x1

    goto :goto_27

    .line 2331
    .end local v3  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v4  # "stackNdx":I
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 2340
    .end local v2  # "displayNdx":I
    :cond_43
    return-object v0
.end method

.method getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;Z)Lcom/android/server/wm/ActivityStack;
    .registers 11
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"  # Landroid/app/ActivityOptions;
    .param p3, "candidateTask"  # Lcom/android/server/wm/TaskRecord;
    .param p4, "onTop"  # Z
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

    .line 1666
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RootActivityContainer;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;ZLcom/android/server/wm/LaunchParamsController$LaunchParams;)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;ZLcom/android/server/wm/LaunchParamsController$LaunchParams;)Lcom/android/server/wm/ActivityStack;
    .registers 23
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"  # Landroid/app/ActivityOptions;
    .param p3, "candidateTask"  # Lcom/android/server/wm/TaskRecord;
    .param p4, "onTop"  # Z
    .param p5, "launchParams"  # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
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
            ")TT;"
        }
    .end annotation

    .line 1682
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    const/4 v0, -0x1

    .line 1683
    .local v0, "taskId":I
    const/4 v1, -0x1

    .line 1687
    .local v1, "displayId":I
    if-eqz v8, :cond_18

    .line 1688
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v0

    .line 1689
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v1

    move v11, v0

    goto :goto_19

    .line 1687
    :cond_18
    move v11, v0

    .line 1694
    .end local v0  # "taskId":I
    .local v11, "taskId":I
    :goto_19
    const/4 v0, -0x1

    if-eq v11, v0, :cond_30

    .line 1696
    invoke-virtual {v8, v0}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 1697
    const/4 v2, 0x2

    move/from16 v12, p4

    invoke-virtual {v6, v11, v2, v8, v12}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    .line 1699
    .local v2, "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v8, v11}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 1700
    if-eqz v2, :cond_32

    .line 1701
    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0

    .line 1694
    .end local v2  # "task":Lcom/android/server/wm/TaskRecord;
    :cond_30
    move/from16 v12, p4

    .line 1705
    :cond_32
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/wm/RootActivityContainer;->resolveActivityType(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;)I

    move-result v13

    .line 1709
    .local v13, "activityType":I
    if-eqz v10, :cond_40

    iget v2, v10, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    if-eq v2, v0, :cond_40

    .line 1710
    iget v1, v10, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    move v14, v1

    goto :goto_41

    .line 1712
    :cond_40
    move v14, v1

    .end local v1  # "displayId":I
    .local v14, "displayId":I
    :goto_41
    if-eq v14, v0, :cond_74

    invoke-direct {v6, v7, v14}, Lcom/android/server/wm/RootActivityContainer;->canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 1713
    if-eqz v7, :cond_5d

    .line 1714
    move-object/from16 v0, p0

    move v1, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/RootActivityContainer;->getValidLaunchStackOnDisplay(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1716
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;, "TT;"
    if-eqz v0, :cond_5d

    .line 1717
    return-object v0

    .line 1720
    .end local v0  # "stack":Lcom/android/server/wm/ActivityStack;, "TT;"
    :cond_5d
    invoke-virtual {v6, v14}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplayOrCreate(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v15

    .line 1721
    .local v15, "display":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v15, :cond_74

    .line 1722
    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v4, v13

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityDisplay;->getOrCreateStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;IZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1723
    .restart local v0  # "stack":Lcom/android/server/wm/ActivityStack;, "TT;"
    if-eqz v0, :cond_74

    .line 1724
    return-object v0

    .line 1731
    .end local v0  # "stack":Lcom/android/server/wm/ActivityStack;, "TT;"
    .end local v15  # "display":Lcom/android/server/wm/ActivityDisplay;
    :cond_74
    const/4 v0, 0x0

    .line 1732
    .restart local v0  # "stack":Lcom/android/server/wm/ActivityStack;, "TT;"
    const/4 v1, 0x0

    .line 1733
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v9, :cond_7c

    .line 1734
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1736
    :cond_7c
    if-nez v0, :cond_86

    if-eqz v7, :cond_86

    .line 1737
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    move-object v15, v0

    goto :goto_87

    .line 1739
    :cond_86
    move-object v15, v0

    .end local v0  # "stack":Lcom/android/server/wm/ActivityStack;, "TT;"
    .local v15, "stack":Lcom/android/server/wm/ActivityStack;, "TT;"
    :goto_87
    if-eqz v15, :cond_bb

    .line 1740
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    .line 1741
    if-eqz v1, :cond_bb

    iget v0, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-direct {v6, v7, v0}, Lcom/android/server/wm/RootActivityContainer;->canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 1742
    if-eqz v10, :cond_9c

    iget v0, v10, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    goto :goto_9d

    .line 1743
    :cond_9c
    const/4 v0, 0x0

    :goto_9d
    nop

    .line 1744
    .local v0, "windowingMode":I
    if-nez v0, :cond_a4

    .line 1745
    invoke-virtual {v1, v7, v8, v9, v13}, Lcom/android/server/wm/ActivityDisplay;->resolveWindowingMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;I)I

    move-result v0

    .line 1748
    :cond_a4
    invoke-virtual {v15, v0, v13}, Lcom/android/server/wm/ActivityStack;->isCompatible(II)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 1749
    return-object v15

    .line 1751
    :cond_ab
    const/4 v2, 0x4

    if-ne v0, v2, :cond_bb

    .line 1752
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    if-ne v2, v15, :cond_bb

    .line 1753
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    if-ne v9, v2, :cond_bb

    .line 1759
    return-object v15

    .line 1764
    .end local v0  # "windowingMode":I
    :cond_bb
    if-eqz v1, :cond_c9

    iget v0, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-direct {v6, v7, v0}, Lcom/android/server/wm/RootActivityContainer;->canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v0

    if-nez v0, :cond_c6

    goto :goto_c9

    :cond_c6
    move-object/from16 v16, v1

    goto :goto_cf

    .line 1765
    :cond_c9
    :goto_c9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    move-object/from16 v16, v0

    .line 1768
    .end local v1  # "display":Lcom/android/server/wm/ActivityDisplay;
    .local v16, "display":Lcom/android/server/wm/ActivityDisplay;
    :goto_cf
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v4, v13

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityDisplay;->getOrCreateStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;IZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;
    .registers 9
    .param p1, "currentFocus"  # Lcom/android/server/wm/ActivityStack;
    .param p2, "ignoreCurrent"  # Z

    .line 1895
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1896
    .local v0, "preferredDisplay":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityDisplay;->getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1898
    .local v1, "preferredFocusableStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_b

    .line 1899
    return-object v1

    .line 1901
    :cond_b
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->supportsSystemDecorations()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_13

    .line 1905
    return-object v3

    .line 1909
    :cond_13
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1b
    if-ltz v2, :cond_32

    .line 1910
    iget-object v4, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityDisplay;

    .line 1911
    .local v4, "display":Lcom/android/server/wm/ActivityDisplay;
    if-ne v4, v0, :cond_28

    .line 1913
    goto :goto_2f

    .line 1915
    :cond_28
    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/ActivityDisplay;->getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 1917
    .local v5, "nextFocusableStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v5, :cond_2f

    .line 1918
    return-object v5

    .line 1909
    .end local v4  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v5  # "nextFocusableStack":Lcom/android/server/wm/ActivityStack;
    :cond_2f
    :goto_2f
    add-int/lit8 v2, v2, -0x1

    goto :goto_1b

    .line 1922
    .end local v2  # "i":I
    :cond_32
    return-object v3
.end method

.method getNextValidLaunchStack(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityStack;
    .registers 7
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "currentFocus"  # I

    .line 1936
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    const/4 v1, 0x0

    if-ltz v0, :cond_24

    .line 1937
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    .line 1938
    .local v2, "display":Lcom/android/server/wm/ActivityDisplay;
    iget v3, v2, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    if-ne v3, p2, :cond_18

    .line 1939
    goto :goto_21

    .line 1941
    :cond_18
    iget v3, v2, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {p0, v3, p1, v1, v1}, Lcom/android/server/wm/RootActivityContainer;->getValidLaunchStackOnDisplay(ILcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1943
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_21

    .line 1944
    return-object v1

    .line 1936
    .end local v1  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v2  # "display":Lcom/android/server/wm/ActivityDisplay;
    :cond_21
    :goto_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1947
    .end local v0  # "i":I
    :cond_24
    return-object v1
.end method

.method protected getParent()Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 1443
    const/4 v0, 0x0

    return-object v0
.end method

.method getRunningTasks(ILjava/util/List;IIIZ)V
    .registers 16
    .param p1, "maxNum"  # I
    .param p3, "ignoreActivityType"  # I
        .annotation build Landroid/app/WindowConfiguration$ActivityType;
        .end annotation
    .end param
    .param p4, "ignoreWindowingMode"  # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param
    .param p5, "callingUid"  # I
    .param p6, "allowed"  # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;IIIZ)V"
        }
    .end annotation

    .line 2266
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRunningTasks:Lcom/android/server/wm/RunningTasks;

    iget-object v6, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/RunningTasks;->getTasks(ILjava/util/List;IILjava/util/ArrayList;IZ)V

    .line 2268
    return-void
.end method

.method protected getStack(I)Lcom/android/server/wm/ActivityStack;
    .registers 4
    .param p1, "stackId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/wm/ActivityStack;",
            ">(I)TT;"
        }
    .end annotation

    .line 1254
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 1255
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityDisplay;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1256
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;, "TT;"
    if-eqz v1, :cond_19

    .line 1257
    return-object v1

    .line 1254
    .end local v1  # "stack":Lcom/android/server/wm/ActivityStack;, "TT;"
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1260
    .end local v0  # "i":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method getStackInfo(I)Landroid/app/ActivityManager$StackInfo;
    .registers 4
    .param p1, "stackId"  # I

    .line 1315
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1316
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_b

    .line 1317
    invoke-direct {p0, v0}, Lcom/android/server/wm/RootActivityContainer;->getStackInfo(Lcom/android/server/wm/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    return-object v1

    .line 1319
    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method getStackInfo(II)Landroid/app/ActivityManager$StackInfo;
    .registers 5
    .param p1, "windowingMode"  # I
    .param p2, "activityType"  # I

    .line 1323
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/RootActivityContainer;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1324
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_b

    invoke-direct {p0, v0}, Lcom/android/server/wm/RootActivityContainer;->getStackInfo(Lcom/android/server/wm/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method public getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;
    .registers 3

    .line 699
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 700
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 701
    .local v1, "focusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_19

    .line 702
    return-object v1

    .line 699
    .end local v1  # "focusedStack":Lcom/android/server/wm/ActivityStack;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 705
    .end local v0  # "i":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 7

    .line 709
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 710
    .local v0, "focusedStack":Lcom/android/server/wm/ActivityStack;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 711
    return-object v1

    .line 713
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 714
    .local v2, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_13

    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v3, :cond_13

    .line 715
    return-object v2

    .line 719
    :cond_13
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1b
    if-ltz v3, :cond_2f

    .line 720
    iget-object v4, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityDisplay;

    .line 721
    .local v4, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityDisplay;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 722
    .local v5, "resumedActivityOnDisplay":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_2c

    .line 723
    return-object v5

    .line 719
    .end local v4  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v5  # "resumedActivityOnDisplay":Lcom/android/server/wm/ActivityRecord;
    :cond_2c
    add-int/lit8 v3, v3, -0x1

    goto :goto_1b

    .line 726
    .end local v3  # "i":I
    :cond_2f
    return-object v1
.end method

.method getTopVisibleActivities()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 674
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 675
    .local v0, "topActivityTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 677
    .local v1, "topFocusedStack":Lcom/android/server/wm/ActivityStack;
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_11
    if-ltz v2, :cond_48

    .line 678
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityDisplay;

    .line 680
    .local v3, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_21
    if-ltz v4, :cond_45

    .line 681
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 683
    .local v5, "stack":Lcom/android/server/wm/ActivityStack;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 684
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 685
    .local v6, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v6, :cond_42

    .line 686
    if-ne v5, v1, :cond_3d

    .line 687
    const/4 v7, 0x0

    iget-object v8, v6, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_42

    .line 689
    :cond_3d
    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    .end local v5  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v6  # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_42
    :goto_42
    add-int/lit8 v4, v4, -0x1

    goto :goto_21

    .line 677
    .end local v3  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v4  # "j":I
    :cond_45
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 695
    .end local v2  # "i":I
    :cond_48
    return-object v0
.end method

.method getValidLaunchStackOnDisplay(ILcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Lcom/android/server/wm/ActivityStack;
    .registers 11
    .param p1, "displayId"  # I
    .param p2, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p3, "options"  # Landroid/app/ActivityOptions;
    .param p4, "launchParams"  # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 1842
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/RootActivityContainer;->getValidLaunchStackOnDisplay(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method handleAppCrash(Lcom/android/server/wm/WindowProcessController;)V
    .registers 6
    .param p1, "app"  # Lcom/android/server/wm/WindowProcessController;

    .line 1630
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_27

    .line 1631
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 1632
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_18
    if-ltz v2, :cond_24

    .line 1633
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1634
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityStack;->handleAppCrash(Lcom/android/server/wm/WindowProcessController;)V

    .line 1632
    .end local v3  # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 1630
    .end local v1  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v2  # "stackNdx":I
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1637
    .end local v0  # "displayNdx":I
    :cond_27
    return-void
.end method

.method handleAppDied(Lcom/android/server/wm/WindowProcessController;)Z
    .registers 8
    .param p1, "app"  # Lcom/android/server/wm/WindowProcessController;

    .line 1951
    const/4 v0, 0x0

    .line 1952
    .local v0, "hasVisibleActivities":Z
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_9
    if-ltz v1, :cond_2a

    .line 1953
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    .line 1954
    .local v2, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_19
    if-ltz v3, :cond_27

    .line 1955
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 1956
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v4, p1}, Lcom/android/server/wm/ActivityStack;->handleAppDiedLocked(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1954
    .end local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 1952
    .end local v2  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v3  # "stackNdx":I
    :cond_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1959
    .end local v1  # "displayNdx":I
    :cond_2a
    return v0
.end method

.method hasAwakeDisplay()Z
    .registers 5

    .line 1655
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 1656
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    .line 1657
    .local v2, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->shouldSleep()Z

    move-result v3

    if-nez v3, :cond_19

    .line 1658
    return v1

    .line 1655
    .end local v2  # "display":Lcom/android/server/wm/ActivityDisplay;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1661
    .end local v0  # "displayNdx":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method invalidateTaskLayers()V
    .registers 2

    .line 1542
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RootActivityContainer;->mTaskLayersChanged:Z

    .line 1543
    return-void
.end method

.method isDisplayAdded(I)Z
    .registers 3
    .param p1, "displayId"  # I

    .line 322
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplayOrCreate(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isFocusable(Lcom/android/server/wm/ConfigurationContainer;Z)Z
    .registers 5
    .param p1, "container"  # Lcom/android/server/wm/ConfigurationContainer;
    .param p2, "alwaysFocusable"  # Z

    .line 730
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/wm/RootActivityContainer;->mIsDockMinimized:Z

    if-eqz v0, :cond_c

    .line 731
    return v1

    .line 734
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->canReceiveKeys()Z

    move-result v0

    if-nez v0, :cond_18

    if-eqz p2, :cond_19

    :cond_18
    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method isInAnyStack(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .registers 8
    .param p1, "token"  # Landroid/os/IBinder;

    .line 2247
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2248
    .local v0, "numDisplays":I
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_7
    if-ge v1, v0, :cond_2a

    .line 2249
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    .line 2250
    .local v2, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_17
    if-ltz v3, :cond_27

    .line 2251
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 2252
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v4, p1}, Lcom/android/server/wm/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 2253
    .local v5, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_24

    .line 2254
    return-object v5

    .line 2250
    .end local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v5  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_24
    add-int/lit8 v3, v3, -0x1

    goto :goto_17

    .line 2248
    .end local v2  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v3  # "stackNdx":I
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2258
    .end local v1  # "displayNdx":I
    :cond_2a
    const/4 v1, 0x0

    return-object v1
.end method

.method isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z
    .registers 3
    .param p1, "stack"  # Lcom/android/server/wm/ActivityStack;

    .line 738
    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-ne p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method lockAllProfileTasks(I)V
    .registers 11
    .param p1, "userId"  # I

    .line 2111
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 2113
    :try_start_5
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_d
    if-ltz v0, :cond_4f

    .line 2114
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 2115
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_1d
    if-ltz v2, :cond_4c

    .line 2116
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 2117
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 2118
    .local v4, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/TaskRecord;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "taskNdx":I
    :goto_2d
    if-ltz v5, :cond_49

    .line 2119
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/TaskRecord;

    .line 2124
    .local v6, "task":Lcom/android/server/wm/TaskRecord;
    invoke-direct {p0, v6, p1}, Lcom/android/server/wm/RootActivityContainer;->taskTopActivityIsUser(Lcom/android/server/wm/TaskRecord;I)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 2125
    iget-object v7, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v7

    iget v8, v6, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v7, v8, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskProfileLocked(II)V
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_56

    .line 2118
    .end local v6  # "task":Lcom/android/server/wm/TaskRecord;
    :cond_46
    add-int/lit8 v5, v5, -0x1

    goto :goto_2d

    .line 2115
    .end local v3  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v4  # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/TaskRecord;>;"
    .end local v5  # "taskNdx":I
    :cond_49
    add-int/lit8 v2, v2, -0x1

    goto :goto_1d

    .line 2113
    .end local v1  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v2  # "stackNdx":I
    :cond_4c
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 2132
    .end local v0  # "displayNdx":I
    :cond_4f
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 2133
    nop

    .line 2134
    return-void

    .line 2132
    :catchall_56
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method moveActivityToPinnedStack(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;FLjava/lang/String;)V
    .registers 28
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "sourceHintBounds"  # Landroid/graphics/Rect;
    .param p3, "aspectRatio"  # F
    .param p4, "reason"  # Ljava/lang/String;

    .line 1005
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    iget-object v0, v9, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 1007
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v11

    .line 1008
    .local v11, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityDisplay;->getPinnedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1012
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    const/4 v12, 0x0

    if-eqz v0, :cond_1d

    .line 1013
    iget-object v1, v9, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1, v0, v12}, Lcom/android/server/wm/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;Z)V

    .line 1017
    :cond_1d
    const/4 v1, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v2

    const/4 v13, 0x1

    invoke-virtual {v11, v1, v2, v13}, Lcom/android/server/wm/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v15

    .line 1021
    .end local v0  # "stack":Lcom/android/server/wm/ActivityStack;
    .local v15, "stack":Lcom/android/server/wm/ActivityStack;
    move/from16 v14, p3

    invoke-virtual {v15, v14}, Lcom/android/server/wm/ActivityStack;->getDefaultPictureInPictureBounds(F)Landroid/graphics/Rect;

    move-result-object v8

    .line 1024
    .local v8, "destBounds":Landroid/graphics/Rect;
    :try_start_2d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 1028
    .local v0, "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v3
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_c4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v22, v8

    .end local v8  # "destBounds":Landroid/graphics/Rect;
    .local v22, "destBounds":Landroid/graphics/Rect;
    move/from16 v8, v16

    :try_start_42
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/RootActivityContainer;->resizeStack(Lcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    .line 1032
    iget-object v1, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_4b
    .catchall {:try_start_42 .. :try_end_4b} :catchall_bd

    if-ne v1, v13, :cond_65

    .line 1034
    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object v14, v0

    move-object v1, v15

    .end local v15  # "stack":Lcom/android/server/wm/ActivityStack;
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    move-object/from16 v21, p4

    :try_start_5b
    invoke-virtual/range {v14 .. v21}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZZLjava/lang/String;)Z
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_5f

    goto :goto_96

    .line 1059
    .end local v0  # "task":Lcom/android/server/wm/TaskRecord;
    :catchall_5f
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v3, v22

    goto :goto_c9

    .line 1045
    .end local v1  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v0  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v15  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_65
    move-object v1, v15

    .end local v15  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v1  # "stack":Lcom/android/server/wm/ActivityStack;
    :try_start_66
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    iget-object v3, v9, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v4, v10, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 1046
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v3

    iget-object v4, v10, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v10, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1045
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    .line 1048
    .local v2, "newTask":Lcom/android/server/wm/TaskRecord;
    const v3, 0x7fffffff

    const-string v4, "moveActivityToStack"

    invoke-virtual {v10, v2, v3, v4}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskRecord;ILjava/lang/String;)V

    .line 1051
    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object v14, v2

    move-object v15, v1

    move-object/from16 v21, p4

    invoke-virtual/range {v14 .. v21}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZZLjava/lang/String;)Z

    .line 1057
    .end local v2  # "newTask":Lcom/android/server/wm/TaskRecord;
    :goto_96
    iput-boolean v12, v10, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z
    :try_end_98
    .catchall {:try_start_66 .. :try_end_98} :catchall_b7

    .line 1059
    .end local v0  # "task":Lcom/android/server/wm/TaskRecord;
    iget-object v0, v9, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1060
    nop

    .line 1062
    const/4 v0, -0x1

    move-object/from16 v2, p2

    move-object/from16 v3, v22

    .end local v22  # "destBounds":Landroid/graphics/Rect;
    .local v3, "destBounds":Landroid/graphics/Rect;
    invoke-virtual {v1, v2, v3, v0, v13}, Lcom/android/server/wm/ActivityStack;->animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    .line 1069
    const/4 v0, 0x0

    invoke-virtual {v9, v0, v12, v12}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1070
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 1072
    iget-object v0, v9, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityPinned(Lcom/android/server/wm/ActivityRecord;)V

    .line 1073
    return-void

    .line 1059
    .end local v3  # "destBounds":Landroid/graphics/Rect;
    .restart local v22  # "destBounds":Landroid/graphics/Rect;
    :catchall_b7
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v3, v22

    .end local v22  # "destBounds":Landroid/graphics/Rect;
    .restart local v3  # "destBounds":Landroid/graphics/Rect;
    goto :goto_c9

    .end local v1  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v3  # "destBounds":Landroid/graphics/Rect;
    .restart local v15  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v22  # "destBounds":Landroid/graphics/Rect;
    :catchall_bd
    move-exception v0

    move-object/from16 v2, p2

    move-object v1, v15

    move-object/from16 v3, v22

    .end local v15  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v22  # "destBounds":Landroid/graphics/Rect;
    .restart local v1  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v3  # "destBounds":Landroid/graphics/Rect;
    goto :goto_c9

    .end local v1  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v3  # "destBounds":Landroid/graphics/Rect;
    .restart local v8  # "destBounds":Landroid/graphics/Rect;
    .restart local v15  # "stack":Lcom/android/server/wm/ActivityStack;
    :catchall_c4
    move-exception v0

    move-object/from16 v2, p2

    move-object v3, v8

    move-object v1, v15

    .end local v8  # "destBounds":Landroid/graphics/Rect;
    .end local v15  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v1  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v3  # "destBounds":Landroid/graphics/Rect;
    :goto_c9
    iget-object v4, v9, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method moveStackToDisplay(IIZ)V
    .registers 10
    .param p1, "stackId"  # I
    .param p2, "displayId"  # I
    .param p3, "onTop"  # Z

    .line 944
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplayOrCreate(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 945
    .local v0, "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v0, :cond_98

    .line 949
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 950
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_81

    .line 955
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    .line 956
    .local v2, "currentDisplay":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v2, :cond_65

    .line 961
    iget v3, v2, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    if-eq v3, p2, :cond_46

    .line 966
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->isSingleTaskInstance()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v3

    if-lez v3, :cond_41

    .line 968
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not move stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to single task instance display="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    return-void

    .line 973
    :cond_41
    const/4 v3, 0x0

    invoke-virtual {v1, v0, p3, v3}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/ActivityDisplay;ZZ)V

    .line 975
    return-void

    .line 962
    :cond_46
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to move stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to its current displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 957
    :cond_65
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveStackToDisplay: Stack with stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is not attached to any display."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 951
    .end local v2  # "currentDisplay":Lcom/android/server/wm/ActivityDisplay;
    :cond_81
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveStackToDisplay: Unknown stackId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 946
    .end local v1  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_98
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveStackToDisplay: Unknown displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method moveTopStackActivityToPinnedStack(I)Z
    .registers 8
    .param p1, "stackId"  # I

    .line 978
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 979
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_4e

    .line 984
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 985
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v2, 0x0

    const-string v3, "ActivityTaskManager"

    if-nez v1, :cond_24

    .line 986
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveTopStackActivityToPinnedStack: No top running activity in stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    return v2

    .line 991
    :cond_24
    iget-object v4, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    if-nez v4, :cond_45

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->supportsPictureInPicture()Z

    move-result v4

    if-nez v4, :cond_45

    .line 992
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveTopStackActivityToPinnedStack: Picture-In-Picture not supported for  r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    return v2

    .line 997
    :cond_45
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "moveTopActivityToPinnedStack"

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/wm/RootActivityContainer;->moveActivityToPinnedStack(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;FLjava/lang/String;)V

    .line 999
    const/4 v2, 0x1

    return v2

    .line 980
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_4e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveTopStackActivityToPinnedStack: Unknown stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method onChildPositionChanged(Lcom/android/server/wm/ActivityDisplay;I)V
    .registers 3
    .param p1, "display"  # Lcom/android/server/wm/ActivityDisplay;
    .param p2, "position"  # I

    .line 1449
    if-eqz p1, :cond_5

    .line 1450
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/RootActivityContainer;->positionChildAt(Lcom/android/server/wm/ActivityDisplay;I)V

    .line 1452
    :cond_5
    return-void
.end method

.method public onDisplayAdded(I)V
    .registers 5
    .param p1, "displayId"  # I

    .line 1355
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display added displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_1f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1357
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplayOrCreate(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    .line 1358
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    if-nez v1, :cond_2d

    .line 1359
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_47

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1364
    :cond_2d
    :try_start_2d
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v2

    if-nez v2, :cond_3d

    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 1365
    :cond_3d
    iget-object v2, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {p0, v2}, Lcom/android/server/wm/RootActivityContainer;->startSystemDecorations(Lcom/android/server/wm/DisplayContent;)V

    .line 1367
    .end local v1  # "display":Lcom/android/server/wm/ActivityDisplay;
    :cond_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_2d .. :try_end_43} :catchall_47

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1368
    return-void

    .line 1367
    :catchall_47
    move-exception v1

    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onDisplayChanged(I)V
    .registers 4
    .param p1, "displayId"  # I

    .line 1394
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display changed displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_1f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1396
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    .line 1397
    .local v1, "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v1, :cond_2b

    .line 1398
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->onDisplayChanged()V

    .line 1400
    .end local v1  # "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    :cond_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1401
    return-void

    .line 1400
    :catchall_30
    move-exception v1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onDisplayRemoved(I)V
    .registers 4
    .param p1, "displayId"  # I

    .line 1377
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display removed displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :cond_1a
    if-eqz p1, :cond_3d

    .line 1382
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1383
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    .line 1384
    .local v1, "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    if-nez v1, :cond_2f

    .line 1385
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1388
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->remove()V

    .line 1389
    .end local v1  # "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1390
    return-void

    .line 1389
    :catchall_37
    move-exception v1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 1379
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t remove the primary display."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method prepareForShutdown()V
    .registers 4

    .line 1502
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 1503
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    iget v1, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    const-string v2, "shutdown"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/RootActivityContainer;->createSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    .line 1502
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1505
    .end local v0  # "i":I
    :cond_1b
    return-void
.end method

.method putStacksToSleep(ZZ)Z
    .registers 9
    .param p1, "allowDelay"  # Z
    .param p2, "shuttingDown"  # Z

    .line 1607
    const/4 v0, 0x1

    .line 1608
    .local v0, "allSleep":Z
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_9
    if-ltz v1, :cond_37

    .line 1609
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    .line 1610
    .local v2, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_19
    if-ltz v3, :cond_34

    .line 1614
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v4

    if-lt v3, v4, :cond_22

    .line 1615
    goto :goto_31

    .line 1618
    :cond_22
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 1619
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz p1, :cond_2e

    .line 1620
    invoke-virtual {v4, p2}, Lcom/android/server/wm/ActivityStack;->goToSleepIfPossible(Z)Z

    move-result v5

    and-int/2addr v0, v5

    goto :goto_31

    .line 1622
    :cond_2e
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->goToSleep()V

    .line 1610
    .end local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_31
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 1608
    .end local v2  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v3  # "stackNdx":I
    :cond_34
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1626
    .end local v1  # "displayNdx":I
    :cond_37
    return v0
.end method

.method rankTaskLayersIfNeeded()V
    .registers 7

    .line 1546
    iget-boolean v0, p0, Lcom/android/server/wm/RootActivityContainer;->mTaskLayersChanged:Z

    if-nez v0, :cond_5

    .line 1547
    return-void

    .line 1549
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/RootActivityContainer;->mTaskLayersChanged:Z

    .line 1550
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_9
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 1551
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 1552
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    const/4 v2, 0x0

    .line 1553
    .local v2, "baseLayer":I
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_20
    if-ltz v3, :cond_2e

    .line 1554
    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 1555
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v4, v2}, Lcom/android/server/wm/ActivityStack;->rankTaskLayers(I)I

    move-result v5

    add-int/2addr v2, v5

    .line 1553
    .end local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v3, v3, -0x1

    goto :goto_20

    .line 1550
    .end local v1  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v2  # "baseLayer":I
    .end local v3  # "stackNdx":I
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1558
    .end local v0  # "displayNdx":I
    :cond_31
    return-void
.end method

.method releaseSomeActivitiesLocked(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V
    .registers 11
    .param p1, "app"  # Lcom/android/server/wm/WindowProcessController;
    .param p2, "reason"  # Ljava/lang/String;

    .line 1582
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getReleaseSomeActivitiesTasks()Landroid/util/ArraySet;

    move-result-object v0

    .line 1583
    .local v0, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/TaskRecord;>;"
    if-nez v0, :cond_12

    .line 1584
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RELEASE:Z

    if-eqz v1, :cond_11

    const-string v1, "ActivityTaskManager"

    const-string v2, "Didn\'t find two or more tasks to release"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    :cond_11
    return-void

    .line 1589
    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1590
    .local v1, "numDisplays":I
    const/4 v2, 0x0

    .local v2, "displayNdx":I
    :goto_19
    if-ge v2, v1, :cond_3b

    .line 1591
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityDisplay;

    .line 1592
    .local v3, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v4

    .line 1594
    .local v4, "stackCount":I
    const/4 v5, 0x0

    .local v5, "stackNdx":I
    :goto_28
    if-ge v5, v4, :cond_38

    .line 1595
    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 1597
    .local v6, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v6, p1, v0, p2}, Lcom/android/server/wm/ActivityStack;->releaseSomeActivitiesLocked(Lcom/android/server/wm/WindowProcessController;Landroid/util/ArraySet;Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_35

    .line 1598
    return-void

    .line 1594
    .end local v6  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_35
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 1590
    .end local v3  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v4  # "stackCount":I
    .end local v5  # "stackNdx":I
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 1602
    .end local v2  # "displayNdx":I
    :cond_3b
    return-void
.end method

.method removeChild(Lcom/android/server/wm/ActivityDisplay;)V
    .registers 3
    .param p1, "activityDisplay"  # Lcom/android/server/wm/ActivityDisplay;

    .line 1480
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1481
    return-void
.end method

.method varargs removeStacksInWindowingModes([I)V
    .registers 4
    .param p1, "windowingModes"  # [I

    .line 2015
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 2016
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityDisplay;->removeStacksInWindowingModes([I)V

    .line 2015
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2018
    .end local v0  # "i":I
    :cond_18
    return-void
.end method

.method varargs removeStacksWithActivityTypes([I)V
    .registers 4
    .param p1, "activityTypes"  # [I

    .line 2021
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 2022
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityDisplay;->removeStacksWithActivityTypes([I)V

    .line 2021
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2024
    .end local v0  # "i":I
    :cond_18
    return-void
.end method

.method removeUser(I)V
    .registers 3
    .param p1, "userId"  # I

    .line 881
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 882
    return-void
.end method

.method resizeStack(Lcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V
    .registers 19
    .param p1, "stack"  # Lcom/android/server/wm/ActivityStack;
    .param p2, "bounds"  # Landroid/graphics/Rect;
    .param p3, "tempTaskBounds"  # Landroid/graphics/Rect;
    .param p4, "tempTaskInsetBounds"  # Landroid/graphics/Rect;
    .param p5, "preserveWindows"  # Z
    .param p6, "allowResizeInDockedMode"  # Z
    .param p7, "deferResume"  # Z

    .line 899
    move-object v1, p0

    move-object v2, p1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 900
    iget-object v3, v1, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move/from16 v9, p5

    move/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/wm/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 902
    return-void

    .line 905
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->hasSplitScreenPrimaryStack()Z

    move-result v3

    .line 906
    .local v3, "splitScreenActive":Z
    if-nez p6, :cond_2e

    .line 907
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v0

    if-nez v0, :cond_2e

    if-eqz v3, :cond_2e

    .line 910
    return-void

    .line 913
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "am.resizeStack_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 914
    iget-object v0, v1, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 916
    :try_start_4b
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->affectedBySplitScreenResize()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 917
    if-nez p2, :cond_5e

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 919
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    goto :goto_64

    .line 920
    :cond_5e
    if-eqz v3, :cond_64

    .line 923
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    .line 926
    :cond_64
    :goto_64
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/wm/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 927
    if-nez p7, :cond_76

    .line 928
    nop

    .line 929
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0
    :try_end_6e
    .catchall {:try_start_4b .. :try_end_6e} :catchall_82

    .line 928
    move/from16 v6, p5

    :try_start_70
    invoke-virtual {p1, v0, v6}, Lcom/android/server/wm/ActivityStack;->ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/wm/ActivityRecord;Z)V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_74

    goto :goto_78

    .line 932
    :catchall_74
    move-exception v0

    goto :goto_85

    .line 927
    :cond_76
    move/from16 v6, p5

    .line 932
    :goto_78
    iget-object v0, v1, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 933
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 934
    nop

    .line 935
    return-void

    .line 932
    :catchall_82
    move-exception v0

    move/from16 v6, p5

    :goto_85
    iget-object v7, v1, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 933
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method resolveActivities(ILandroid/content/Intent;)Ljava/util/List;
    .registers 6
    .param p1, "userId"  # I
    .param p2, "homeIntent"  # Landroid/content/Intent;
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

    .line 509
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 510
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "resolvedType":Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/16 v2, 0x400

    invoke-interface {v1, p2, v0, v2, p1}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 512
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1a} :catch_1c

    move-object v0, v1

    .line 516
    .local v0, "resolutions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_23

    .line 514
    .end local v0  # "resolutions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_1c
    move-exception v0

    .line 515
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 517
    .local v0, "resolutions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_23
    return-object v0
.end method

.method resolveActivityType(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;)I
    .registers 6
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"  # Landroid/app/ActivityOptions;
    .param p3, "task"  # Lcom/android/server/wm/TaskRecord;

    .line 1868
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 1869
    .local v0, "activityType":I
    :goto_8
    if-nez v0, :cond_10

    if-eqz p3, :cond_10

    .line 1870
    invoke-virtual {p3}, Lcom/android/server/wm/TaskRecord;->getActivityType()I

    move-result v0

    .line 1872
    :cond_10
    if-eqz v0, :cond_13

    .line 1873
    return v0

    .line 1875
    :cond_13
    if-eqz p2, :cond_19

    .line 1876
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v0

    .line 1878
    :cond_19
    if-eqz v0, :cond_1d

    move v1, v0

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x1

    :goto_1e
    return v1
.end method

.method resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .registers 9
    .param p1, "userId"  # I
    .param p2, "homeIntent"  # Landroid/content/Intent;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 414
    const/16 v0, 0x400

    .line 415
    .local v0, "flags":I
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 416
    .local v1, "comp":Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 418
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    const/16 v3, 0x400

    if-eqz v1, :cond_15

    .line 420
    :try_start_b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, v1, v3, p1}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    move-object v2, v3

    goto :goto_2e

    .line 422
    :cond_15
    iget-object v4, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 423
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 424
    .local v4, "resolvedType":Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 425
    invoke-interface {v5, p2, v4, v3, p1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 426
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_2e

    .line 427
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_2d} :catch_2f

    move-object v2, v5

    .line 432
    .end local v3  # "info":Landroid/content/pm/ResolveInfo;
    .end local v4  # "resolvedType":Ljava/lang/String;
    :cond_2e
    :goto_2e
    goto :goto_30

    .line 430
    :catch_2f
    move-exception v3

    .line 434
    :goto_30
    if-nez v2, :cond_4f

    .line 435
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No home screen found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 436
    const/4 v3, 0x0

    return-object v3

    .line 439
    :cond_4f
    new-instance v3, Landroid/content/pm/ActivityInfo;

    invoke-direct {v3, v2}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    move-object v2, v3

    .line 440
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 441
    return-object v2
.end method

.method resolveSecondaryHomeActivity(II)Landroid/util/Pair;
    .registers 12
    .param p1, "userId"  # I
    .param p2, "displayId"  # I
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
    if-eqz p2, :cond_84

    .line 451
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    .line 452
    .local v0, "homeIntent":Landroid/content/Intent;
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootActivityContainer;->resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 453
    .local v1, "aInfo":Landroid/content/pm/ActivityInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_69

    .line 454
    const-class v3, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 456
    const/4 v1, 0x0

    goto :goto_69

    .line 458
    :cond_1f
    const-class v3, Lcom/android/internal/app/MzResolverActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 460
    const/4 v1, 0x0

    goto :goto_69

    .line 465
    :cond_2f
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getSecondaryHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 466
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootActivityContainer;->resolveActivities(ILandroid/content/Intent;)Ljava/util/List;

    move-result-object v3

    .line 467
    .local v3, "resolutions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 468
    .local v4, "size":I
    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 469
    .local v5, "targetName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 470
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_45
    if-ge v6, v4, :cond_5d

    .line 471
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 474
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5a

    .line 475
    iget-object v1, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 476
    goto :goto_5d

    .line 470
    .end local v7  # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_5a
    add-int/lit8 v6, v6, 0x1

    goto :goto_45

    .line 479
    .end local v6  # "i":I
    :cond_5d
    :goto_5d
    if-nez v1, :cond_69

    if-lez v4, :cond_69

    .line 481
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v1, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 486
    .end local v3  # "resolutions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4  # "size":I
    .end local v5  # "targetName":Ljava/lang/String;
    :cond_69
    :goto_69
    if-eqz v1, :cond_72

    .line 487
    invoke-virtual {p0, v1, p2, v2}, Lcom/android/server/wm/RootActivityContainer;->canStartHomeOnDisplay(Landroid/content/pm/ActivityInfo;IZ)Z

    move-result v2

    if-nez v2, :cond_72

    .line 488
    const/4 v1, 0x0

    .line 493
    :cond_72
    if-nez v1, :cond_7f

    .line 494
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getSecondaryHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 495
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootActivityContainer;->resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 497
    :cond_7f
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    .line 447
    .end local v0  # "homeIntent":Landroid/content/Intent;
    .end local v1  # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "resolveSecondaryHomeActivity: Should not be DEFAULT_DISPLAY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method resumeFocusedStacksTopActivities()Z
    .registers 2

    .line 1151
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0
.end method

.method resumeFocusedStacksTopActivities(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .registers 12
    .param p1, "targetStack"  # Lcom/android/server/wm/ActivityStack;
    .param p2, "target"  # Lcom/android/server/wm/ActivityRecord;
    .param p3, "targetOptions"  # Landroid/app/ActivityOptions;

    .line 1157
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->readyToResume()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1158
    const/4 v0, 0x0

    return v0

    .line 1161
    :cond_a
    const/4 v0, 0x0

    .line 1162
    .local v0, "result":Z
    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isTopStackOnDisplay()Z

    move-result v1

    if-nez v1, :cond_19

    .line 1163
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    if-ne v1, p1, :cond_1d

    .line 1164
    :cond_19
    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/ActivityStack;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    .line 1167
    :cond_1d
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_25
    if-ltz v1, :cond_75

    .line 1168
    const/4 v2, 0x0

    .line 1169
    .local v2, "resumedOnDisplay":Z
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityDisplay;

    .line 1170
    .local v3, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "stackNdx":I
    :goto_36
    if-ltz v4, :cond_67

    .line 1171
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 1172
    .local v5, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 1173
    .local v6, "topRunningActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result v7

    if-eqz v7, :cond_64

    if-nez v6, :cond_49

    .line 1174
    goto :goto_64

    .line 1176
    :cond_49
    if-ne v5, p1, :cond_4d

    .line 1180
    or-int/2addr v2, v0

    .line 1181
    goto :goto_64

    .line 1183
    :cond_4d
    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityDisplay;->isTopStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v7

    if-eqz v7, :cond_5f

    sget-object v7, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 1186
    invoke-virtual {v5, p3}, Lcom/android/server/wm/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    goto :goto_64

    .line 1188
    :cond_5f
    invoke-virtual {v6, p2}, Lcom/android/server/wm/ActivityRecord;->makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v7

    or-int/2addr v2, v7

    .line 1170
    .end local v5  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v6  # "topRunningActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_64
    :goto_64
    add-int/lit8 v4, v4, -0x1

    goto :goto_36

    .line 1191
    .end local v4  # "stackNdx":I
    :cond_67
    if-nez v2, :cond_72

    .line 1196
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 1197
    .local v4, "focusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v4, :cond_72

    .line 1198
    invoke-virtual {v4, p2, p3}, Lcom/android/server/wm/ActivityStack;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    .line 1167
    .end local v2  # "resumedOnDisplay":Z
    .end local v3  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v4  # "focusedStack":Lcom/android/server/wm/ActivityStack;
    :cond_72
    add-int/lit8 v1, v1, -0x1

    goto :goto_25

    .line 1203
    .end local v1  # "displayNdx":I
    :cond_75
    return v0
.end method

.method resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)Z
    .registers 8
    .param p1, "prev"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "reason"  # Ljava/lang/String;
    .param p3, "displayId"  # I

    .line 521
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v0

    if-nez v0, :cond_12

    .line 523
    const/4 v0, 0x0

    return v0

    .line 526
    :cond_12
    const/4 v0, -0x1

    if-ne p3, v0, :cond_16

    .line 527
    const/4 p3, 0x0

    .line 530
    :cond_16
    invoke-virtual {p0, p3}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getHomeActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 531
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " resumeHomeActivity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 534
    .local v1, "myReason":Ljava/lang/String;
    if-eqz v0, :cond_42

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v2, :cond_42

    .line 535
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    .line 536
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v2

    return v2

    .line 538
    :cond_42
    iget v2, p0, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    invoke-virtual {p0, v2, v1, p3}, Lcom/android/server/wm/RootActivityContainer;->startHomeOnDisplay(ILjava/lang/String;I)Z

    move-result v2

    return v2
.end method

.method scheduleDestroyAllActivities(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V
    .registers 7
    .param p1, "app"  # Lcom/android/server/wm/WindowProcessController;
    .param p2, "reason"  # Ljava/lang/String;

    .line 1571
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_27

    .line 1572
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 1573
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_18
    if-ltz v2, :cond_24

    .line 1574
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1575
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/ActivityStack;->scheduleDestroyActivities(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    .line 1573
    .end local v3  # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 1571
    .end local v1  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v2  # "stackNdx":I
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1578
    .end local v0  # "displayNdx":I
    :cond_27
    return-void
.end method

.method sendPowerHintForLaunchEndIfNeeded()V
    .registers 4

    .line 2305
    iget-boolean v0, p0, Lcom/android/server/wm/RootActivityContainer;->mPowerHintSent:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_16

    .line 2306
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 2307
    iput-boolean v2, p0, Lcom/android/server/wm/RootActivityContainer;->mPowerHintSent:Z

    .line 2309
    :cond_16
    return-void
.end method

.method sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V
    .registers 13
    .param p1, "forceSend"  # Z
    .param p2, "targetActivity"  # Lcom/android/server/wm/ActivityRecord;

    .line 2271
    move v0, p1

    .line 2273
    .local v0, "sendHint":Z
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    .line 2275
    if-eqz p2, :cond_e

    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v3, :cond_c

    goto :goto_e

    :cond_c
    move v3, v1

    goto :goto_f

    :cond_e
    :goto_e
    move v3, v2

    :goto_f
    move v0, v3

    .line 2278
    :cond_10
    if-nez v0, :cond_48

    .line 2281
    const/4 v3, 0x1

    .line 2282
    .local v3, "noResumedActivities":Z
    const/4 v4, 0x1

    .line 2283
    .local v4, "allFocusedProcessesDiffer":Z
    const/4 v5, 0x0

    .local v5, "displayNdx":I
    :goto_15
    iget-object v6, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_42

    .line 2284
    iget-object v6, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityDisplay;

    .line 2285
    .local v6, "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityDisplay;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    .line 2287
    .local v7, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-nez v7, :cond_2d

    const/4 v8, 0x0

    goto :goto_2f

    :cond_2d
    iget-object v8, v7, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 2289
    .local v8, "resumedActivityProcess":Lcom/android/server/wm/WindowProcessController;
    :goto_2f
    if-nez v8, :cond_33

    move v9, v2

    goto :goto_34

    :cond_33
    move v9, v1

    :goto_34
    and-int/2addr v3, v9

    .line 2290
    if-eqz v8, :cond_3f

    .line 2291
    iget-object v9, p2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/2addr v9, v2

    and-int/2addr v4, v9

    .line 2283
    .end local v6  # "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    .end local v7  # "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v8  # "resumedActivityProcess":Lcom/android/server/wm/WindowProcessController;
    :cond_3f
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 2294
    .end local v5  # "displayNdx":I
    :cond_42
    if-nez v3, :cond_46

    if-eqz v4, :cond_47

    :cond_46
    move v1, v2

    :cond_47
    move v0, v1

    .line 2297
    .end local v3  # "noResumedActivities":Z
    .end local v4  # "allFocusedProcessesDiffer":Z
    :cond_48
    if-eqz v0, :cond_5b

    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_5b

    .line 2298
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 2299
    iput-boolean v2, p0, Lcom/android/server/wm/RootActivityContainer;->mPowerHintSent:Z

    .line 2301
    :cond_5b
    return-void
.end method

.method setDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)V
    .registers 7
    .param p1, "overrideConfiguration"  # Landroid/content/res/Configuration;
    .param p2, "displayId"  # I

    .line 1493
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplayOrCreate(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1494
    .local v0, "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v0, :cond_a

    .line 1498
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityDisplay;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1499
    return-void

    .line 1495
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No display found with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setDockedStackMinimized(Z)V
    .registers 4
    .param p1, "minimized"  # Z

    .line 1086
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1087
    .local v0, "current":Lcom/android/server/wm/ActivityStack;
    iput-boolean p1, p0, Lcom/android/server/wm/RootActivityContainer;->mIsDockMinimized:Z

    .line 1088
    iget-boolean v1, p0, Lcom/android/server/wm/RootActivityContainer;->mIsDockMinimized:Z

    if-eqz v1, :cond_15

    .line 1089
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1092
    const-string v1, "setDockedStackMinimized"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;)Lcom/android/server/wm/ActivityStack;

    .line 1095
    :cond_15
    return-void
.end method

.method setWindowContainer(Lcom/android/server/wm/RootWindowContainer;)V
    .registers 3
    .param p1, "container"  # Lcom/android/server/wm/RootWindowContainer;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 232
    iput-object p1, p0, Lcom/android/server/wm/RootActivityContainer;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 233
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/RootWindowContainer;->setRootActivityContainer(Lcom/android/server/wm/RootActivityContainer;)V

    .line 234
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 8
    .param p1, "wm"  # Lcom/android/server/wm/WindowManagerService;

    .line 237
    iput-object p1, p0, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 238
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootActivityContainer;->setWindowContainer(Lcom/android/server/wm/RootWindowContainer;)V

    .line 239
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 240
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 241
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 243
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 244
    .local v0, "displays":[Landroid/view/Display;
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_31
    array-length v2, v0

    const v3, 0x7fffffff

    if-ge v1, v2, :cond_4a

    .line 245
    aget-object v2, v0, v1

    .line 246
    .local v2, "display":Landroid/view/Display;
    new-instance v4, Lcom/android/server/wm/ActivityDisplay;

    invoke-direct {v4, p0, v2}, Lcom/android/server/wm/ActivityDisplay;-><init>(Lcom/android/server/wm/RootActivityContainer;Landroid/view/Display;)V

    .line 247
    .local v4, "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    iget v5, v4, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    if-nez v5, :cond_44

    .line 248
    iput-object v4, p0, Lcom/android/server/wm/RootActivityContainer;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    .line 250
    :cond_44
    invoke-virtual {p0, v4, v3}, Lcom/android/server/wm/RootActivityContainer;->addChild(Lcom/android/server/wm/ActivityDisplay;I)V

    .line 244
    .end local v2  # "display":Landroid/view/Display;
    .end local v4  # "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 252
    .end local v1  # "displayNdx":I
    :cond_4a
    invoke-direct {p0}, Lcom/android/server/wm/RootActivityContainer;->calculateDefaultMinimalSizeOfResizeableTasks()V

    .line 254
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    .line 256
    .local v1, "defaultDisplay":Lcom/android/server/wm/ActivityDisplay;
    const/4 v2, 0x2

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2, v4}, Lcom/android/server/wm/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/wm/ActivityStack;

    .line 257
    invoke-direct {p0, v1, v3}, Lcom/android/server/wm/RootActivityContainer;->positionChildAt(Lcom/android/server/wm/ActivityDisplay;I)V

    .line 258
    return-void
.end method

.method shouldPlaceSecondaryHomeOnDisplay(I)Z
    .registers 7
    .param p1, "displayId"  # I

    .line 547
    if-eqz p1, :cond_43

    .line 550
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_7

    .line 551
    return v1

    .line 554
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    if-nez v0, :cond_e

    .line 556
    return v1

    .line 559
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 560
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 559
    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_21

    move v0, v2

    goto :goto_22

    :cond_21
    move v0, v1

    .line 562
    .local v0, "deviceProvisioned":Z
    :goto_22
    if-nez v0, :cond_25

    .line 564
    return v1

    .line 567
    :cond_25
    iget v3, p0, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    invoke-static {v3}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 569
    return v1

    .line 572
    :cond_2e
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    .line 573
    .local v3, "display":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v3, :cond_42

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_42

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->supportsSystemDecorations()Z

    move-result v4

    if-nez v4, :cond_41

    goto :goto_42

    .line 578
    :cond_41
    return v2

    .line 575
    :cond_42
    :goto_42
    return v1

    .line 548
    .end local v0  # "deviceProvisioned":Z
    .end local v3  # "display":Lcom/android/server/wm/ActivityDisplay;
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "shouldPlaceSecondaryHomeOnDisplay: Should not be DEFAULT_DISPLAY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method startHomeOnAllDisplays(ILjava/lang/String;)Z
    .registers 7
    .param p1, "userId"  # I
    .param p2, "reason"  # Ljava/lang/String;

    .line 334
    const/4 v0, 0x0

    .line 335
    .local v0, "homeStarted":Z
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_1d

    .line 336
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    iget v2, v2, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    .line 337
    .local v2, "displayId":I
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/wm/RootActivityContainer;->startHomeOnDisplay(ILjava/lang/String;I)Z

    move-result v3

    or-int/2addr v0, v3

    .line 335
    .end local v2  # "displayId":I
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 339
    .end local v1  # "i":I
    :cond_1d
    return v0
.end method

.method startHomeOnDisplay(ILjava/lang/String;I)Z
    .registers 10
    .param p1, "userId"  # I
    .param p2, "reason"  # Ljava/lang/String;
    .param p3, "displayId"  # I

    .line 352
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RootActivityContainer;->startHomeOnDisplay(ILjava/lang/String;IZZ)Z

    move-result v0

    return v0
.end method

.method startHomeOnDisplay(ILjava/lang/String;IZZ)Z
    .registers 12
    .param p1, "userId"  # I
    .param p2, "reason"  # Ljava/lang/String;
    .param p3, "displayId"  # I
    .param p4, "allowInstrumenting"  # Z
    .param p5, "fromHomeKey"  # Z

    .line 370
    const/4 v0, -0x1

    if-ne p3, v0, :cond_9

    .line 371
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iget p3, v0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    .line 374
    :cond_9
    const/4 v0, 0x0

    .line 375
    .local v0, "homeIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 376
    .local v1, "aInfo":Landroid/content/pm/ActivityInfo;
    if-nez p3, :cond_18

    .line 377
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    .line 378
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootActivityContainer;->resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    goto :goto_2c

    .line 379
    :cond_18
    invoke-virtual {p0, p3}, Lcom/android/server/wm/RootActivityContainer;->shouldPlaceSecondaryHomeOnDisplay(I)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 380
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/RootActivityContainer;->resolveSecondaryHomeActivity(II)Landroid/util/Pair;

    move-result-object v2

    .line 381
    .local v2, "info":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ActivityInfo;Landroid/content/Intent;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, Landroid/content/pm/ActivityInfo;

    .line 382
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/content/Intent;

    .line 384
    .end local v2  # "info":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ActivityInfo;Landroid/content/Intent;>;"
    :cond_2c
    :goto_2c
    const/4 v2, 0x0

    if-eqz v1, :cond_8b

    if-nez v0, :cond_32

    goto :goto_8b

    .line 388
    :cond_32
    invoke-virtual {p0, v1, p3, p4}, Lcom/android/server/wm/RootActivityContainer;->canStartHomeOnDisplay(Landroid/content/pm/ActivityInfo;IZ)Z

    move-result v3

    if-nez v3, :cond_39

    .line 389
    return v2

    .line 393
    :cond_39
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 394
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x10000000

    or-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 396
    const/4 v2, 0x1

    if-eqz p5, :cond_59

    .line 397
    const-string v3, "android.intent.extra.FROM_HOME_KEY"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 401
    :cond_59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 403
    .local v3, "myReason":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v3, p3}, Lcom/android/server/wm/ActivityStartController;->startHomeActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;I)V

    .line 405
    return v2

    .line 385
    .end local v3  # "myReason":Ljava/lang/String;
    :cond_8b
    :goto_8b
    return v2
.end method

.method startHomeOnEmptyDisplays(Ljava/lang/String;)V
    .registers 6
    .param p1, "reason"  # Ljava/lang/String;

    .line 343
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_22

    .line 344
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 345
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_1f

    .line 346
    iget v2, p0, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    iget v3, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/wm/RootActivityContainer;->startHomeOnDisplay(ILjava/lang/String;I)Z

    .line 343
    .end local v1  # "display":Lcom/android/server/wm/ActivityDisplay;
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 349
    .end local v0  # "i":I
    :cond_22
    return-void
.end method

.method switchUser(ILcom/android/server/am/UserState;)Z
    .registers 13
    .param p1, "userId"  # I
    .param p2, "uss"  # Lcom/android/server/am/UserState;

    .line 836
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getStackId()I

    move-result v0

    .line 838
    .local v0, "focusStackId":I
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 839
    .local v1, "dockedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_1b

    .line 840
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 841
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isFocusedStackOnDisplay()Z

    move-result v3

    .line 840
    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;Z)V

    .line 846
    :cond_1b
    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-virtual {p0, v3}, Lcom/android/server/wm/RootActivityContainer;->removeStacksInWindowingModes([I)V

    .line 848
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mUserStackInFront:Landroid/util/SparseIntArray;

    iget v4, p0, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 849
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mUserStackInFront:Landroid/util/SparseIntArray;

    .line 850
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityDisplay;->getHomeStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 851
    .local v3, "restoreStackId":I
    iput p1, p0, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    .line 853
    iget-object v4, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 854
    iget-object v4, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .local v4, "displayNdx":I
    :goto_4c
    if-ltz v4, :cond_73

    .line 855
    iget-object v6, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityDisplay;

    .line 856
    .local v6, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v2

    .local v7, "stackNdx":I
    :goto_5b
    if-ltz v7, :cond_70

    .line 857
    invoke-virtual {v6, v7}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v8

    .line 858
    .local v8, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v8, p1}, Lcom/android/server/wm/ActivityStack;->switchUserLocked(I)V

    .line 859
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v9

    .line 860
    .local v9, "task":Lcom/android/server/wm/TaskRecord;
    if-eqz v9, :cond_6d

    .line 861
    invoke-virtual {v8, v9}, Lcom/android/server/wm/ActivityStack;->positionChildWindowContainerAtTop(Lcom/android/server/wm/TaskRecord;)V

    .line 856
    .end local v8  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v9  # "task":Lcom/android/server/wm/TaskRecord;
    :cond_6d
    add-int/lit8 v7, v7, -0x1

    goto :goto_5b

    .line 854
    .end local v6  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v7  # "stackNdx":I
    :cond_70
    add-int/lit8 v4, v4, -0x1

    goto :goto_4c

    .line 866
    .end local v4  # "displayNdx":I
    :cond_73
    invoke-virtual {p0, v3}, Lcom/android/server/wm/RootActivityContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 867
    .local v2, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v2, :cond_81

    .line 868
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityDisplay;->getHomeStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 870
    :cond_81
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v4

    .line 871
    .local v4, "homeInFront":Z
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->isOnHomeDisplay()Z

    move-result v6

    if-eqz v6, :cond_91

    .line 872
    const-string v5, "switchUserOnHomeDisplay"

    invoke-virtual {v2, v5}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    goto :goto_97

    .line 875
    :cond_91
    const/4 v6, 0x0

    const-string v7, "switchUserOnOtherDisplay"

    invoke-virtual {p0, v6, v7, v5}, Lcom/android/server/wm/RootActivityContainer;->resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)Z

    .line 877
    :goto_97
    return v4
.end method

.method topRunningActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 3

    .line 2027
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 2028
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2029
    .local v1, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_19

    .line 2030
    return-object v1

    .line 2027
    .end local v1  # "topActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2033
    .end local v0  # "i":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method updateActivityApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .registers 6
    .param p1, "aInfo"  # Landroid/content/pm/ApplicationInfo;

    .line 1990
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_27

    .line 1991
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 1992
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_18
    if-ltz v2, :cond_24

    .line 1993
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1994
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityStack;->updateActivityApplicationInfoLocked(Landroid/content/pm/ApplicationInfo;)V

    .line 1992
    .end local v3  # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 1990
    .end local v1  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v2  # "stackNdx":I
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1997
    .end local v0  # "displayNdx":I
    :cond_27
    return-void
.end method

.method updatePreviousProcess(Lcom/android/server/wm/ActivityRecord;)V
    .registers 9
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 748
    const/4 v0, 0x0

    .line 749
    .local v0, "fgApp":Lcom/android/server/wm/WindowProcessController;
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_9
    if-ltz v1, :cond_3d

    .line 750
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    .line 751
    .local v2, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_19
    if-ltz v3, :cond_3a

    .line 752
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 753
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {p0, v4}, Lcom/android/server/wm/RootActivityContainer;->isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 754
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 755
    .local v5, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_2e

    .line 756
    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    goto :goto_3a

    .line 757
    :cond_2e
    iget-object v6, v4, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_3a

    .line 758
    iget-object v6, v4, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    goto :goto_3a

    .line 751
    .end local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v5  # "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_37
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 749
    .end local v2  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v3  # "stackNdx":I
    :cond_3a
    :goto_3a
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 766
    .end local v1  # "displayNdx":I
    :cond_3d
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v1

    if-eqz v1, :cond_67

    if-eqz v0, :cond_67

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq v1, v0, :cond_67

    iget-wide v1, p1, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-wide v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcessVisibleTime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_67

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-eq v1, v2, :cond_67

    .line 769
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iput-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    .line 770
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-wide v2, p1, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    iput-wide v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcessVisibleTime:J

    .line 772
    :cond_67
    return-void
.end method

.method updateUIDsPresentOnDisplay()V
    .registers 6

    .line 1405
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1406
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_d
    if-ltz v0, :cond_2b

    .line 1407
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 1409
    .local v1, "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->isPrivate()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1410
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    iget v3, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    .line 1411
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getPresentUIDs()Landroid/util/IntArray;

    move-result-object v4

    .line 1410
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1406
    .end local v1  # "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 1415
    .end local v0  # "displayNdx":I
    :cond_2b
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayAccessUIDs(Landroid/util/SparseArray;)V

    .line 1416
    return-void
.end method

.method updateUserStack(ILcom/android/server/wm/ActivityStack;)V
    .registers 5
    .param p1, "userId"  # I
    .param p2, "stack"  # Lcom/android/server/wm/ActivityStack;

    .line 889
    iget v0, p0, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    if-eq p1, v0, :cond_1a

    .line 890
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mUserStackInFront:Landroid/util/SparseIntArray;

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getStackId()I

    move-result v1

    goto :goto_17

    .line 891
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getHomeStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/ActivityStack;->mStackId:I

    .line 890
    :goto_17
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 893
    :cond_1a
    return-void
.end method

.method protected writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 12
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J
    .param p4, "logLevel"  # I

    .line 2410
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2411
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/ConfigurationContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2412
    const/4 v2, 0x0

    .local v2, "displayNdx":I
    :goto_d
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_28

    .line 2413
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityDisplay;

    .line 2414
    .local v3, "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    const-wide v4, 0x20b00000002L

    invoke-virtual {v3, p1, v4, v5, p4}, Lcom/android/server/wm/ActivityDisplay;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2412
    .end local v3  # "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 2416
    .end local v2  # "displayNdx":I
    :cond_28
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v2

    const-wide v3, 0x10b00000003L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/KeyguardController;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2418
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 2419
    .local v2, "focusedStack":Lcom/android/server/wm/ActivityStack;
    const-wide v3, 0x10500000004L

    if-eqz v2, :cond_59

    .line 2420
    iget v5, v2, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2421
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 2422
    .local v3, "focusedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_58

    .line 2423
    const-wide v4, 0x10b00000005L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2425
    .end local v3  # "focusedActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_58
    goto :goto_5d

    .line 2426
    :cond_59
    const/4 v5, -0x1

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2428
    :goto_5d
    const-wide v3, 0x10800000006L

    iget-object v5, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget v6, p0, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    .line 2429
    invoke-virtual {v5, v6}, Lcom/android/server/wm/RecentTasks;->isRecentsComponentHomeActivity(I)Z

    move-result v5

    .line 2428
    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2430
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v3

    const-wide v4, 0x20b00000007L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/wm/ActivityStartController;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2431
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2432
    return-void
.end method
