.class Lcom/android/server/wm/LaunchParamsController;
.super Ljava/lang/Object;
.source "LaunchParamsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier;,
        Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    }
.end annotation


# instance fields
.field private final mModifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier;",
            ">;"
        }
    .end annotation
.end field

.field private final mPersister:Lcom/android/server/wm/LaunchParamsPersister;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mTmpCurrent:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

.field private final mTmpParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

.field private final mTmpResult:Lcom/android/server/wm/LaunchParamsController$LaunchParams;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/LaunchParamsPersister;)V
    .registers 4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController;->mModifiers:Ljava/util/List;

    .line 49
    new-instance v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-direct {v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController;->mTmpParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 51
    new-instance v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-direct {v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController;->mTmpCurrent:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 52
    new-instance v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-direct {v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController;->mTmpResult:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 55
    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 56
    iput-object p2, p0, Lcom/android/server/wm/LaunchParamsController;->mPersister:Lcom/android/server/wm/LaunchParamsPersister;

    .line 57
    return-void
.end method


# virtual methods
.method calculate(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;)V
    .registers 23

    .line 79
    move-object v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p7

    invoke-virtual/range {p7 .. p7}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    .line 81
    if-nez v10, :cond_e

    if-eqz v11, :cond_13

    .line 82
    :cond_e
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController;->mPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v1, v10, v11, v12}, Lcom/android/server/wm/LaunchParamsPersister;->getLaunchParams(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 88
    :cond_13
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController;->mModifiers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v13, 0x1

    sub-int/2addr v1, v13

    move v14, v1

    :goto_1c
    if-ltz v14, :cond_5c

    .line 89
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController;->mTmpCurrent:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v1, v12}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->set(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 90
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController;->mTmpResult:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    .line 91
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController;->mModifiers:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier;

    .line 93
    iget-object v8, v0, Lcom/android/server/wm/LaunchParamsController;->mTmpCurrent:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v9, v0, Lcom/android/server/wm/LaunchParamsController;->mTmpResult:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-interface/range {v1 .. v9}, Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier;->onCalculate(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I

    move-result v1

    if-eqz v1, :cond_58

    if-eq v1, v13, :cond_52

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4c

    goto :goto_59

    .line 104
    :cond_4c
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController;->mTmpResult:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v12, v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->set(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    goto :goto_59

    .line 100
    :cond_52
    iget-object v0, v0, Lcom/android/server/wm/LaunchParamsController;->mTmpResult:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v12, v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->set(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 101
    return-void

    .line 97
    :cond_58
    nop

    .line 88
    :goto_59
    add-int/lit8 v14, v14, -0x1

    goto :goto_1c

    .line 109
    :cond_5c
    if-eqz v11, :cond_66

    iget-object v1, v11, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_66

    .line 111
    const/4 v0, 0x0

    iput v0, v12, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    goto :goto_73

    .line 112
    :cond_66
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mVr2dDisplayId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_73

    .line 115
    iget-object v0, v0, Lcom/android/server/wm/LaunchParamsController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mVr2dDisplayId:I

    iput v0, v12, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    .line 117
    :cond_73
    :goto_73
    return-void
.end method

.method layoutTask(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;)Z
    .registers 9

    .line 124
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result p1

    return p1
.end method

.method layoutTask(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .registers 14

    .line 129
    iget-object v7, p0, Lcom/android/server/wm/LaunchParamsController;->mTmpParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    const/4 v6, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 132
    iget-object p2, p0, Lcom/android/server/wm/LaunchParamsController;->mTmpParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {p2}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->isEmpty()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_16

    .line 133
    return p3

    .line 136
    :cond_16
    iget-object p2, p0, Lcom/android/server/wm/LaunchParamsController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 139
    :try_start_1d
    iget-object p2, p0, Lcom/android/server/wm/LaunchParamsController;->mTmpParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {p2}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasPreferredDisplay()Z

    move-result p2

    if-eqz p2, :cond_42

    iget-object p2, p0, Lcom/android/server/wm/LaunchParamsController;->mTmpParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget p2, p2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    .line 140
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object p4

    iget p4, p4, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    if-eq p2, p4, :cond_42

    .line 141
    iget-object p2, p0, Lcom/android/server/wm/LaunchParamsController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStackId()I

    move-result p4

    iget-object p5, p0, Lcom/android/server/wm/LaunchParamsController;->mTmpParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget p5, p5, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    invoke-virtual {p2, p4, p5}, Lcom/android/server/wm/ActivityTaskManagerService;->moveStackToDisplay(II)V

    .line 144
    :cond_42
    iget-object p2, p0, Lcom/android/server/wm/LaunchParamsController;->mTmpParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {p2}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasWindowingMode()Z

    move-result p2

    if-eqz p2, :cond_63

    iget-object p2, p0, Lcom/android/server/wm/LaunchParamsController;->mTmpParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget p2, p2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 145
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result p4

    if-eq p2, p4, :cond_63

    .line 146
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p2

    iget-object p4, p0, Lcom/android/server/wm/LaunchParamsController;->mTmpParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget p4, p4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    invoke-virtual {p2, p4}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    .line 149
    :cond_63
    iget-object p2, p0, Lcom/android/server/wm/LaunchParamsController;->mTmpParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object p2, p2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2
    :try_end_6b
    .catchall {:try_start_1d .. :try_end_6b} :catchall_a0

    if-eqz p2, :cond_76

    .line 150
    nop

    .line 164
    iget-object p1, p0, Lcom/android/server/wm/LaunchParamsController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 150
    return p3

    .line 153
    :cond_76
    :try_start_76
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->inFreeformWindowingMode()Z

    move-result p2

    if-eqz p2, :cond_90

    .line 155
    iget-object p2, p0, Lcom/android/server/wm/LaunchParamsController;->mTmpParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object p2, p2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z
    :try_end_87
    .catchall {:try_start_76 .. :try_end_87} :catchall_a0

    .line 156
    const/4 p1, 0x1

    .line 164
    iget-object p2, p0, Lcom/android/server/wm/LaunchParamsController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 156
    return p1

    .line 161
    :cond_90
    :try_start_90
    iget-object p2, p0, Lcom/android/server/wm/LaunchParamsController;->mTmpParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object p2, p2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/TaskRecord;->setLastNonFullscreenBounds(Landroid/graphics/Rect;)V
    :try_end_97
    .catchall {:try_start_90 .. :try_end_97} :catchall_a0

    .line 162
    nop

    .line 164
    iget-object p1, p0, Lcom/android/server/wm/LaunchParamsController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 162
    return p3

    .line 164
    :catchall_a0
    move-exception p1

    iget-object p2, p0, Lcom/android/server/wm/LaunchParamsController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw p1
.end method

.method registerDefaultModifiers(Lcom/android/server/wm/ActivityStackSupervisor;)V
    .registers 3

    .line 65
    new-instance v0, Lcom/android/server/wm/TaskLaunchParamsModifier;

    invoke-direct {v0, p1}, Lcom/android/server/wm/TaskLaunchParamsModifier;-><init>(Lcom/android/server/wm/ActivityStackSupervisor;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/LaunchParamsController;->registerModifier(Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier;)V

    .line 66
    return-void
.end method

.method registerModifier(Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier;)V
    .registers 3

    .line 173
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController;->mModifiers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 174
    return-void

    .line 177
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController;->mModifiers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    return-void
.end method
