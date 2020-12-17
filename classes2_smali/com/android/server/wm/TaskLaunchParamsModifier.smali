.class Lcom/android/server/wm/TaskLaunchParamsModifier;
.super Ljava/lang/Object;
.source "TaskLaunchParamsModifier.java"

# interfaces
.implements Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier;


# static fields
.field private static final BOUNDS_CONFLICT_THRESHOLD:I = 0x4

.field private static final CASCADING_OFFSET_DP:I = 0x4b

.field private static final DEBUG:Z = false

.field private static final DEFAULT_PORTRAIT_PHONE_HEIGHT_DP:I = 0x2dc

.field private static final DEFAULT_PORTRAIT_PHONE_WIDTH_DP:I = 0x19c

.field private static final EPSILON:I = 0x2

.field private static final MINIMAL_STEP:I = 0x1

.field private static final STEP_DENOMINATOR:I = 0x10

.field private static final SUPPORTS_SCREEN_RESIZEABLE_MASK:I = 0x83a00

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field private mLogBuilder:Ljava/lang/StringBuilder;

.field private final mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTmpDirections:[I


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityStackSupervisor;)V
    .registers 3
    .param p1, "supervisor"  # Lcom/android/server/wm/ActivityStackSupervisor;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 98
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    .line 103
    iput-object p1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 104
    return-void
.end method

.method private adjustBoundsToAvoidConflictInDisplay(Lcom/android/server/wm/ActivityDisplay;Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "display"  # Lcom/android/server/wm/ActivityDisplay;
    .param p2, "inOutBounds"  # Landroid/graphics/Rect;

    .line 687
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 688
    .local v0, "taskBoundsToCheck":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 689
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 690
    .local v2, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->inFreeformWindowingMode()Z

    move-result v3

    if-nez v3, :cond_17

    .line 691
    goto :goto_2c

    .line 694
    :cond_17
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_18
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2c

    .line 695
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStack;->getChildAt(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 688
    .end local v2  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v3  # "j":I
    :cond_2c
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 698
    .end local v1  # "i":I
    :cond_2f
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityDisplay;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p2}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToAvoidConflict(Landroid/graphics/Rect;Ljava/util/List;Landroid/graphics/Rect;)V

    .line 699
    return-void
.end method

.method private adjustBoundsToFitInDisplay(Lcom/android/server/wm/ActivityDisplay;Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "display"  # Lcom/android/server/wm/ActivityDisplay;
    .param p2, "inOutBounds"  # Landroid/graphics/Rect;

    .line 632
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityDisplay;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 634
    .local v0, "displayBounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lt v1, v2, :cond_4f

    .line 635
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v1, v2, :cond_19

    goto :goto_4f

    .line 648
    :cond_19
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_25

    .line 650
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .local v1, "dx":I
    goto :goto_32

    .line 651
    .end local v1  # "dx":I
    :cond_25
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_31

    .line 653
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .restart local v1  # "dx":I
    goto :goto_32

    .line 656
    .end local v1  # "dx":I
    :cond_31
    const/4 v1, 0x0

    .line 660
    .restart local v1  # "dx":I
    :goto_32
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_3e

    .line 662
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .local v2, "dy":I
    goto :goto_4b

    .line 663
    .end local v2  # "dy":I
    :cond_3e
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-le v2, v3, :cond_4a

    .line 665
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    .restart local v2  # "dy":I
    goto :goto_4b

    .line 668
    .end local v2  # "dy":I
    :cond_4a
    const/4 v2, 0x0

    .line 670
    .restart local v2  # "dy":I
    :goto_4b
    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 671
    return-void

    .line 638
    .end local v1  # "dx":I
    .end local v2  # "dy":I
    :cond_4f
    :goto_4f
    iget-object v1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 639
    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    .line 640
    .local v1, "layoutDirection":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_69

    .line 641
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v2, v4

    goto :goto_6a

    .line 642
    :cond_69
    move v2, v3

    :goto_6a
    nop

    .line 643
    .local v2, "left":I
    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 644
    return-void
.end method

.method private appendLog(Ljava/lang/String;)V
    .registers 2
    .param p1, "log"  # Ljava/lang/String;

    .line 858
    return-void
.end method

.method private boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z
    .registers 13
    .param p2, "candidateBounds"  # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/graphics/Rect;",
            ")Z"
        }
    .end annotation

    .line 800
    .local p1, "taskBoundsToCheck":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 801
    .local v1, "taskBounds":Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_20

    move v3, v5

    goto :goto_21

    :cond_20
    move v3, v2

    .line 803
    .local v3, "leftClose":Z
    :goto_21
    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v4, :cond_2e

    move v6, v5

    goto :goto_2f

    :cond_2e
    move v6, v2

    .line 805
    .local v6, "topClose":Z
    :goto_2f
    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget v8, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v7, v4, :cond_3c

    move v7, v5

    goto :goto_3d

    :cond_3c
    move v7, v2

    .line 807
    .local v7, "rightClose":Z
    :goto_3d
    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ge v8, v4, :cond_49

    move v2, v5

    .line 810
    .local v2, "bottomClose":Z
    :cond_49
    if-eqz v3, :cond_4d

    if-nez v6, :cond_59

    :cond_4d
    if-eqz v3, :cond_51

    if-nez v2, :cond_59

    :cond_51
    if-eqz v7, :cond_55

    if-nez v6, :cond_59

    :cond_55
    if-eqz v7, :cond_5a

    if-eqz v2, :cond_5a

    .line 812
    :cond_59
    return v5

    .line 814
    .end local v1  # "taskBounds":Landroid/graphics/Rect;
    .end local v2  # "bottomClose":Z
    .end local v3  # "leftClose":Z
    .end local v6  # "topClose":Z
    .end local v7  # "rightClose":Z
    :cond_5a
    goto :goto_4

    .line 816
    :cond_5b
    return v2
.end method

.method private calculate(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .registers 34
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "layout"  # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p3, "activity"  # Lcom/android/server/wm/ActivityRecord;
    .param p4, "source"  # Lcom/android/server/wm/ActivityRecord;
    .param p5, "options"  # Landroid/app/ActivityOptions;
    .param p6, "phase"  # I
    .param p7, "currentParams"  # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .param p8, "outParams"  # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 129
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    if-eqz v8, :cond_21

    .line 130
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_1b

    move-object/from16 v0, p3

    goto :goto_1f

    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :goto_1f
    move-object v15, v0

    .local v0, "root":Lcom/android/server/wm/ActivityRecord;
    goto :goto_24

    .line 132
    .end local v0  # "root":Lcom/android/server/wm/ActivityRecord;
    :cond_21
    move-object/from16 v0, p3

    move-object v15, v0

    .line 139
    .local v15, "root":Lcom/android/server/wm/ActivityRecord;
    :goto_24
    const/4 v0, 0x0

    if-nez v15, :cond_28

    .line 145
    return v0

    .line 149
    :cond_28
    invoke-direct {v7, v8, v11, v10, v13}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getPreferredLaunchDisplay(Lcom/android/server/wm/TaskRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I

    move-result v6

    .line 150
    .local v6, "displayId":I
    iput v6, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    .line 151
    iget-object v1, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1, v6}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v5

    .line 157
    .local v5, "display":Lcom/android/server/wm/ActivityDisplay;
    const/4 v4, 0x2

    if-nez v12, :cond_3a

    .line 158
    return v4

    .line 165
    :cond_3a
    if-eqz v11, :cond_41

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    goto :goto_42

    .line 166
    :cond_41
    move v1, v0

    :goto_42
    nop

    .line 169
    .local v1, "launchMode":I
    const/4 v2, 0x0

    .line 170
    .local v2, "hasInitialBounds":Z
    invoke-direct {v7, v5, v1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->canApplyFreeformWindowPolicy(Lcom/android/server/wm/ActivityDisplay;I)Z

    move-result v16

    .line 171
    .local v16, "canApplyFreeformPolicy":Z
    iget-object v3, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3, v11}, Lcom/android/server/wm/ActivityStackSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z

    move-result v3

    if-eqz v3, :cond_6b

    if-nez v16, :cond_58

    .line 172
    invoke-direct {v7, v1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->canApplyPipWindowPolicy(I)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 173
    :cond_58
    const/4 v2, 0x1

    .line 174
    if-nez v1, :cond_5d

    .line 175
    const/4 v3, 0x5

    goto :goto_5e

    .line 176
    :cond_5d
    move v3, v1

    :goto_5e
    move v1, v3

    .line 177
    iget-object v3, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v20, v2

    goto :goto_91

    .line 179
    :cond_6b
    if-ne v1, v4, :cond_6e

    goto :goto_8f

    .line 182
    :cond_6e
    const/4 v0, 0x1

    if-ne v1, v0, :cond_72

    goto :goto_8f

    .line 184
    :cond_72
    if-eqz v9, :cond_8f

    if-eqz v16, :cond_8f

    .line 185
    iget-object v0, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {v7, v5, v15, v9, v0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getLayoutBounds(Lcom/android/server/wm/ActivityDisplay;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    .line 186
    iget-object v0, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8f

    .line 187
    const/4 v1, 0x5

    .line 188
    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v3, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 189
    const/4 v0, 0x1

    move/from16 v20, v0

    .end local v2  # "hasInitialBounds":Z
    .local v0, "hasInitialBounds":Z
    goto :goto_91

    .line 207
    .end local v0  # "hasInitialBounds":Z
    .restart local v2  # "hasInitialBounds":Z
    :cond_8f
    :goto_8f
    move/from16 v20, v2

    .end local v2  # "hasInitialBounds":Z
    .local v20, "hasInitialBounds":Z
    :goto_91
    const/4 v0, 0x0

    .line 211
    .local v0, "fullyResolvedCurrentParam":Z
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c9

    if-nez v20, :cond_c9

    .line 212
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasPreferredDisplay()Z

    move-result v2

    if-eqz v2, :cond_a4

    iget v2, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    if-ne v6, v2, :cond_c9

    .line 214
    :cond_a4
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_b3

    .line 215
    iget v1, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 216
    const/4 v2, 0x5

    if-eq v1, v2, :cond_b1

    const/4 v2, 0x1

    goto :goto_b2

    :cond_b1
    const/4 v2, 0x0

    :goto_b2
    move v0, v2

    .line 222
    :cond_b3
    iget-object v2, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c9

    .line 227
    iget-object v2, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v3, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 228
    const/4 v2, 0x5

    if-ne v1, v2, :cond_c9

    .line 229
    const/4 v0, 0x1

    move/from16 v21, v0

    goto :goto_cb

    .line 239
    :cond_c9
    move/from16 v21, v0

    .end local v0  # "fullyResolvedCurrentParam":Z
    .local v21, "fullyResolvedCurrentParam":Z
    :goto_cb
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityDisplay;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 240
    if-ne v1, v4, :cond_d4

    goto :goto_e2

    .line 242
    :cond_d4
    invoke-direct {v7, v15}, Lcom/android/server/wm/TaskLaunchParamsModifier;->isTaskForcedMaximized(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 246
    const/4 v0, 0x1

    .line 247
    .end local v1  # "launchMode":I
    .local v0, "launchMode":I
    iget-object v1, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    move v3, v0

    goto :goto_e3

    .line 254
    .end local v0  # "launchMode":I
    .restart local v1  # "launchMode":I
    :cond_e2
    :goto_e2
    move v3, v1

    .end local v1  # "launchMode":I
    .local v3, "launchMode":I
    :goto_e3
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityDisplay;->getWindowingMode()I

    move-result v0

    if-ne v3, v0, :cond_eb

    .line 255
    const/4 v0, 0x0

    goto :goto_ec

    :cond_eb
    move v0, v3

    :goto_ec
    iput v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 257
    const/4 v0, 0x1

    if-ne v12, v0, :cond_f2

    .line 258
    return v4

    .line 267
    :cond_f2
    if-eqz v3, :cond_f6

    move v0, v3

    goto :goto_fa

    .line 268
    :cond_f6
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityDisplay;->getWindowingMode()I

    move-result v0

    :goto_fa
    move v2, v0

    .line 269
    .local v2, "resolvedMode":I
    if-eqz v21, :cond_124

    .line 270
    const/4 v0, 0x5

    if-ne v2, v0, :cond_119

    .line 272
    iget v0, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    if-eq v0, v6, :cond_109

    .line 273
    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v7, v5, v0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToFitInDisplay(Lcom/android/server/wm/ActivityDisplay;Landroid/graphics/Rect;)V

    .line 277
    :cond_109
    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v7, v5, v0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToAvoidConflictInDisplay(Lcom/android/server/wm/ActivityDisplay;Landroid/graphics/Rect;)V

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v22, v4

    move-object/from16 v23, v5

    move/from16 v24, v6

    goto :goto_165

    .line 270
    :cond_119
    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v22, v4

    move-object/from16 v23, v5

    move/from16 v24, v6

    goto :goto_165

    .line 280
    :cond_124
    if-eqz v10, :cond_148

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_148

    const/4 v0, 0x5

    if-ne v2, v0, :cond_148

    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 282
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_148

    .line 283
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v0

    iget v1, v5, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    if-ne v0, v1, :cond_148

    .line 285
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v7, v0, v5, v1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->cascadeBounds(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityDisplay;Landroid/graphics/Rect;)V

    .line 287
    :cond_148
    iget-object v1, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v17, v1

    move-object v1, v15

    move/from16 v18, v2

    .end local v2  # "resolvedMode":I
    .local v18, "resolvedMode":I
    move-object v2, v5

    move/from16 v19, v3

    .end local v3  # "launchMode":I
    .local v19, "launchMode":I
    move-object/from16 v3, p2

    move/from16 v22, v4

    move/from16 v4, v18

    move-object/from16 v23, v5

    .end local v5  # "display":Lcom/android/server/wm/ActivityDisplay;
    .local v23, "display":Lcom/android/server/wm/ActivityDisplay;
    move/from16 v5, v20

    move/from16 v24, v6

    .end local v6  # "displayId":I
    .local v24, "displayId":I
    move-object/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityDisplay;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    .line 290
    :goto_165
    return v22
.end method

.method private calculateCandidateShiftDirections(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 14
    .param p1, "availableBounds"  # Landroid/graphics/Rect;
    .param p2, "initialBounds"  # Landroid/graphics/Rect;

    .line 764
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_c

    .line 765
    aput v3, v1, v0

    .line 764
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 768
    .end local v0  # "i":I
    :cond_c
    iget v0, p1, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    const/4 v1, 0x3

    div-int/2addr v0, v1

    .line 769
    .local v0, "oneThirdWidth":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    div-int/2addr v2, v1

    .line 770
    .local v2, "twoThirdWidth":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    .line 771
    .local v4, "centerX":I
    const/4 v5, 0x5

    if-ge v4, v0, :cond_29

    .line 773
    iget-object v1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    aput v5, v1, v3

    .line 774
    return-void

    .line 775
    :cond_29
    if-le v4, v2, :cond_30

    .line 777
    iget-object v5, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    aput v1, v5, v3

    .line 778
    return-void

    .line 781
    :cond_30
    iget v6, p1, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v6, v6, 0x2

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    div-int/2addr v6, v1

    .line 782
    .local v6, "oneThirdHeight":I
    iget v7, p1, Landroid/graphics/Rect;->top:I

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    div-int/2addr v7, v1

    .line 783
    .local v7, "twoThirdHeight":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    .line 784
    .local v8, "centerY":I
    const/4 v9, 0x1

    if-lt v8, v6, :cond_55

    if-le v8, v7, :cond_4a

    goto :goto_55

    .line 794
    :cond_4a
    iget-object v1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    const/16 v5, 0x55

    aput v5, v1, v3

    .line 795
    const/16 v3, 0x33

    aput v3, v1, v9

    .line 796
    return-void

    .line 787
    :cond_55
    :goto_55
    iget-object v10, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    aput v5, v10, v3

    .line 788
    aput v1, v10, v9

    .line 789
    return-void
.end method

.method private canApplyFreeformWindowPolicy(Lcom/android/server/wm/ActivityDisplay;I)Z
    .registers 4
    .param p1, "display"  # Lcom/android/server/wm/ActivityDisplay;
    .param p2, "launchMode"  # I

    .line 338
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v0, :cond_13

    .line 339
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityDisplay;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x5

    if-ne p2, v0, :cond_13

    :cond_11
    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 338
    :goto_14
    return v0
.end method

.method private canApplyPipWindowPolicy(I)Z
    .registers 3
    .param p1, "launchMode"  # I

    .line 343
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x2

    if-ne p1, v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method private cascadeBounds(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityDisplay;Landroid/graphics/Rect;)V
    .registers 10
    .param p1, "srcBounds"  # Landroid/graphics/Rect;
    .param p2, "display"  # Lcom/android/server/wm/ActivityDisplay;
    .param p3, "outBounds"  # Landroid/graphics/Rect;

    .line 478
    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 479
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityDisplay;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000  # 160.0f

    div-float/2addr v0, v1

    .line 480
    .local v0, "density":F
    const/high16 v1, 0x42960000  # 75.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000  # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 482
    .local v1, "defaultOffset":I
    iget-object v2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Lcom/android/server/wm/ActivityDisplay;->getBounds(Landroid/graphics/Rect;)V

    .line 483
    iget-object v2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 484
    .local v2, "dx":I
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 485
    .local v3, "dy":I
    invoke-virtual {p3, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 486
    return-void
.end method

.method private centerBounds(Lcom/android/server/wm/ActivityDisplay;IILandroid/graphics/Rect;)V
    .registers 9
    .param p1, "display"  # Lcom/android/server/wm/ActivityDisplay;
    .param p2, "width"  # I
    .param p3, "height"  # I
    .param p4, "inOutBounds"  # Landroid/graphics/Rect;

    .line 622
    invoke-virtual {p4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 623
    invoke-virtual {p1, p4}, Lcom/android/server/wm/ActivityDisplay;->getBounds(Landroid/graphics/Rect;)V

    .line 625
    :cond_9
    invoke-virtual {p4}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    div-int/lit8 v1, p2, 0x2

    sub-int/2addr v0, v1

    .line 626
    .local v0, "left":I
    invoke-virtual {p4}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    div-int/lit8 v2, p3, 0x2

    sub-int/2addr v1, v2

    .line 627
    .local v1, "top":I
    add-int v2, v0, p2

    add-int v3, v1, p3

    invoke-virtual {p4, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 628
    return-void
.end method

.method private convertOrientationToScreenOrientation(I)I
    .registers 3
    .param p1, "orientation"  # I

    .line 545
    const/4 v0, 0x1

    if-eq p1, v0, :cond_a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    .line 551
    const/4 v0, -0x1

    return v0

    .line 547
    :cond_8
    const/4 v0, 0x0

    return v0

    .line 549
    :cond_a
    return v0
.end method

.method private getDefaultFreeformSize(Lcom/android/server/wm/ActivityDisplay;Landroid/content/pm/ActivityInfo$WindowLayout;ILandroid/graphics/Rect;)V
    .registers 22
    .param p1, "display"  # Lcom/android/server/wm/ActivityDisplay;
    .param p2, "layout"  # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p3, "orientation"  # I
    .param p4, "bounds"  # Landroid/graphics/Rect;

    .line 586
    move-object/from16 v0, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityDisplay;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 587
    .local v1, "displayBounds":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 588
    .local v2, "portraitHeight":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 589
    .local v3, "otherDimension":I
    mul-int v4, v2, v2

    div-int/2addr v4, v3

    .line 590
    .local v4, "portraitWidth":I
    if-nez p3, :cond_25

    move v5, v2

    goto :goto_26

    .line 591
    :cond_25
    move v5, v4

    :goto_26
    nop

    .line 592
    .local v5, "defaultWidth":I
    if-nez p3, :cond_2b

    move v6, v4

    goto :goto_2c

    .line 593
    :cond_2b
    move v6, v2

    :goto_2c
    nop

    .line 597
    .local v6, "defaultHeight":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityDisplay;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v7, v7

    const/high16 v8, 0x43200000  # 160.0f

    div-float/2addr v7, v8

    .line 598
    .local v7, "density":F
    const/high16 v8, 0x43ce0000  # 412.0f

    mul-float/2addr v8, v7

    const/high16 v9, 0x3f000000  # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    .line 599
    .local v8, "phonePortraitWidth":I
    const/high16 v10, 0x44370000  # 732.0f

    mul-float/2addr v10, v7

    add-float/2addr v10, v9

    float-to-int v9, v10

    .line 600
    .local v9, "phonePortraitHeight":I
    if-nez p3, :cond_47

    move v10, v9

    goto :goto_48

    .line 601
    :cond_47
    move v10, v8

    :goto_48
    nop

    .line 602
    .local v10, "phoneWidth":I
    if-nez p3, :cond_4d

    move v11, v8

    goto :goto_4e

    .line 603
    :cond_4d
    move v11, v9

    :goto_4e
    nop

    .line 606
    .local v11, "phoneHeight":I
    const/4 v12, -0x1

    if-nez v0, :cond_54

    move v13, v12

    goto :goto_56

    :cond_54
    iget v13, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    .line 607
    .local v13, "layoutMinWidth":I
    :goto_56
    if-nez v0, :cond_59

    goto :goto_5b

    :cond_59
    iget v12, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    .line 610
    .local v12, "layoutMinHeight":I
    :goto_5b
    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-static {v5, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 611
    .local v14, "width":I
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-static {v6, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 613
    .local v15, "height":I
    const/4 v0, 0x0

    move-object/from16 v16, v1

    move-object/from16 v1, p4

    .end local v1  # "displayBounds":Landroid/graphics/Rect;
    .local v16, "displayBounds":Landroid/graphics/Rect;
    invoke-virtual {v1, v0, v0, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 614
    return-void
.end method

.method private getLayoutBounds(Lcom/android/server/wm/ActivityDisplay;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V
    .registers 19
    .param p1, "display"  # Lcom/android/server/wm/ActivityDisplay;
    .param p2, "root"  # Lcom/android/server/wm/ActivityRecord;
    .param p3, "windowLayout"  # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p4, "outBounds"  # Landroid/graphics/Rect;

    .line 349
    move-object/from16 v7, p3

    move-object/from16 v8, p4

    iget v0, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v9, v0, 0x70

    .line 350
    .local v9, "verticalGravity":I
    iget v0, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v10, v0, 0x7

    .line 351
    .local v10, "horizontalGravity":I
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    move-result v0

    if-nez v0, :cond_1a

    if-nez v9, :cond_1a

    if-nez v10, :cond_1a

    .line 352
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->setEmpty()V

    .line 353
    return-void

    .line 356
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityDisplay;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 357
    .local v11, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v12

    .line 358
    .local v12, "defaultWidth":I
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v13

    .line 362
    .local v13, "defaultHeight":I
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    move-result v0

    if-nez v0, :cond_45

    .line 363
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->setEmpty()V

    .line 364
    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p2

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityDisplay;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    .line 366
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 367
    .local v0, "width":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v1

    .local v1, "height":I
    goto :goto_82

    .line 369
    .end local v0  # "width":I
    .end local v1  # "height":I
    :cond_45
    move v0, v12

    .line 370
    .restart local v0  # "width":I
    iget v1, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    if-lez v1, :cond_54

    iget v1, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    if-ge v1, v12, :cond_54

    .line 371
    iget v0, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    goto :goto_65

    .line 372
    :cond_54
    iget v1, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_65

    iget v1, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_65

    .line 373
    int-to-float v1, v0

    iget v4, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    mul-float/2addr v1, v4

    float-to-int v0, v1

    .line 376
    :cond_65
    :goto_65
    move v1, v13

    .line 377
    .restart local v1  # "height":I
    iget v4, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-lez v4, :cond_71

    iget v4, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-ge v4, v13, :cond_71

    .line 378
    iget v1, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    goto :goto_82

    .line 379
    :cond_71
    iget v4, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    cmpl-float v3, v4, v3

    if-lez v3, :cond_82

    iget v3, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    cmpg-float v2, v3, v2

    if-gez v2, :cond_82

    .line 380
    int-to-float v2, v1

    iget v3, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 385
    :cond_82
    :goto_82
    const/4 v2, 0x3

    if-eq v10, v2, :cond_8e

    const/4 v2, 0x5

    if-eq v10, v2, :cond_8b

    .line 393
    const/high16 v2, 0x3f000000  # 0.5f

    .local v2, "fractionOfHorizontalOffset":F
    goto :goto_90

    .line 390
    .end local v2  # "fractionOfHorizontalOffset":F
    :cond_8b
    const/high16 v2, 0x3f800000  # 1.0f

    .line 391
    .restart local v2  # "fractionOfHorizontalOffset":F
    goto :goto_90

    .line 387
    .end local v2  # "fractionOfHorizontalOffset":F
    :cond_8e
    const/4 v2, 0x0

    .line 388
    .restart local v2  # "fractionOfHorizontalOffset":F
    nop

    .line 397
    :goto_90
    const/16 v3, 0x30

    if-eq v9, v3, :cond_9e

    const/16 v3, 0x50

    if-eq v9, v3, :cond_9b

    .line 405
    const/high16 v3, 0x3f000000  # 0.5f

    .local v3, "fractionOfVerticalOffset":F
    goto :goto_a0

    .line 402
    .end local v3  # "fractionOfVerticalOffset":F
    :cond_9b
    const/high16 v3, 0x3f800000  # 1.0f

    .line 403
    .restart local v3  # "fractionOfVerticalOffset":F
    goto :goto_a0

    .line 399
    .end local v3  # "fractionOfVerticalOffset":F
    :cond_9e
    const/4 v3, 0x0

    .line 400
    .restart local v3  # "fractionOfVerticalOffset":F
    nop

    .line 408
    :goto_a0
    const/4 v4, 0x0

    invoke-virtual {v8, v4, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 409
    sub-int v4, v12, v0

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    .line 410
    .local v4, "xOffset":I
    sub-int v5, v13, v1

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    .line 411
    .local v5, "yOffset":I
    invoke-virtual {v8, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 412
    return-void
.end method

.method private getPreferredLaunchDisplay(Lcom/android/server/wm/TaskRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .registers 11
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "options"  # Landroid/app/ActivityOptions;
    .param p3, "source"  # Lcom/android/server/wm/ActivityRecord;
    .param p4, "currentParams"  # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 295
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 296
    return v1

    .line 299
    :cond_a
    const/4 v0, -0x1

    .line 300
    .local v0, "displayId":I
    const/4 v2, -0x1

    if-eqz p2, :cond_13

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v3

    goto :goto_14

    :cond_13
    move v3, v2

    .line 301
    .local v3, "optionLaunchId":I
    :goto_14
    if-eq v3, v2, :cond_17

    .line 303
    move v0, v3

    .line 308
    :cond_17
    if-ne v0, v2, :cond_21

    if-eqz p3, :cond_21

    iget-boolean v4, p3, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-eqz v4, :cond_21

    .line 309
    iget v0, p3, Lcom/android/server/wm/ActivityRecord;->mHandoverLaunchDisplayId:I

    .line 314
    :cond_21
    if-ne v0, v2, :cond_2a

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    goto :goto_2b

    :cond_2a
    const/4 v4, 0x0

    .line 315
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    :goto_2b
    if-eqz v4, :cond_2f

    .line 317
    iget v0, v4, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    .line 320
    :cond_2f
    if-ne v0, v2, :cond_38

    if-eqz p3, :cond_38

    .line 321
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v5

    .line 323
    .local v5, "sourceDisplayId":I
    move v0, v5

    .line 326
    .end local v5  # "sourceDisplayId":I
    :cond_38
    if-eq v0, v2, :cond_46

    iget-object v5, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 327
    invoke-virtual {v5, v0}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v5

    if-nez v5, :cond_46

    .line 328
    iget v0, p4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    .line 330
    :cond_46
    if-ne v0, v2, :cond_4b

    iget v5, p4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    goto :goto_4c

    :cond_4b
    move v5, v0

    :goto_4c
    move v0, v5

    .line 332
    if-eq v0, v2, :cond_5b

    iget-object v2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 333
    invoke-virtual {v2, v0}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    if-eqz v2, :cond_5b

    .line 334
    move v1, v0

    goto :goto_5c

    :cond_5b
    nop

    .line 332
    :goto_5c
    return v1
.end method

.method private getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityDisplay;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V
    .registers 11
    .param p1, "root"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "display"  # Lcom/android/server/wm/ActivityDisplay;
    .param p3, "layout"  # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p4, "resolvedMode"  # I
    .param p5, "hasInitialBounds"  # Z
    .param p6, "inOutBounds"  # Landroid/graphics/Rect;

    .line 491
    const/4 v0, 0x1

    if-ne p4, v0, :cond_7

    .line 494
    invoke-virtual {p6}, Landroid/graphics/Rect;->setEmpty()V

    .line 496
    return-void

    .line 499
    :cond_7
    const/4 v1, 0x5

    if-eq p4, v1, :cond_b

    .line 504
    return-void

    .line 507
    :cond_b
    invoke-direct {p0, p1, p2, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->resolveOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityDisplay;Landroid/graphics/Rect;)I

    move-result v1

    .line 508
    .local v1, "orientation":I
    if-eq v1, v0, :cond_2f

    if-nez v1, :cond_14

    goto :goto_2f

    .line 510
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Orientation must be one of portrait or landscape, but it\'s "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p2, p3, v1, v0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getDefaultFreeformSize(Lcom/android/server/wm/ActivityDisplay;Landroid/content/pm/ActivityInfo$WindowLayout;ILandroid/graphics/Rect;)V

    .line 517
    if-nez p5, :cond_52

    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-static {p6, v0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->sizeMatches(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_3f

    goto :goto_52

    .line 535
    :cond_3f
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {p0, p2, v0, v2, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->centerBounds(Lcom/android/server/wm/ActivityDisplay;IILandroid/graphics/Rect;)V

    .line 536
    invoke-direct {p0, p2, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToFitInDisplay(Lcom/android/server/wm/ActivityDisplay;Landroid/graphics/Rect;)V

    goto :goto_64

    .line 522
    :cond_52
    :goto_52
    invoke-static {p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    move-result v0

    if-ne v1, v0, :cond_59

    goto :goto_64

    .line 526
    :cond_59
    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-direct {p0, p2, v0, v2, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->centerBounds(Lcom/android/server/wm/ActivityDisplay;IILandroid/graphics/Rect;)V

    .line 541
    :goto_64
    invoke-direct {p0, p2, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToAvoidConflictInDisplay(Lcom/android/server/wm/ActivityDisplay;Landroid/graphics/Rect;)V

    .line 542
    return-void
.end method

.method private initLogBuilder(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "activity"  # Lcom/android/server/wm/ActivityRecord;

    .line 854
    return-void
.end method

.method private isTaskForcedMaximized(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5
    .param p1, "root"  # Lcom/android/server/wm/ActivityRecord;

    .line 428
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-lt v0, v2, :cond_19

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v2, 0x83a00

    and-int/2addr v0, v2

    if-nez v0, :cond_13

    goto :goto_19

    .line 433
    :cond_13
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 430
    :cond_19
    :goto_19
    return v1
.end method

.method private static orientationFromBounds(Landroid/graphics/Rect;)I
    .registers 3
    .param p0, "bounds"  # Landroid/graphics/Rect;

    .line 865
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v0, v1, :cond_c

    const/4 v0, 0x0

    goto :goto_d

    .line 866
    :cond_c
    const/4 v0, 0x1

    .line 865
    :goto_d
    return v0
.end method

.method private outputLog()V
    .registers 1

    .line 862
    return-void
.end method

.method private resolveOrientation(Lcom/android/server/wm/ActivityRecord;)I
    .registers 4
    .param p1, "activity"  # Lcom/android/server/wm/ActivityRecord;

    .line 449
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 450
    .local v0, "orientation":I
    if-eqz v0, :cond_1f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1f

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1d

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1a

    packed-switch v0, :pswitch_data_22

    .line 470
    const/4 v0, -0x1

    goto :goto_21

    .line 453
    :cond_1a
    :pswitch_1a  #0x5
    const/16 v0, 0xe

    .line 454
    goto :goto_21

    .line 467
    :cond_1d
    :pswitch_1d  #0x7, 0x9
    const/4 v0, 0x1

    .line 468
    goto :goto_21

    .line 460
    :cond_1f
    :pswitch_1f  #0x6, 0x8
    const/4 v0, 0x0

    .line 461
    nop

    .line 473
    :goto_21
    return v0

    :pswitch_data_22
    .packed-switch 0x5
        :pswitch_1a  #00000005
        :pswitch_1f  #00000006
        :pswitch_1d  #00000007
        :pswitch_1f  #00000008
        :pswitch_1d  #00000009
    .end packed-switch
.end method

.method private resolveOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityDisplay;Landroid/graphics/Rect;)I
    .registers 6
    .param p1, "root"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "display"  # Lcom/android/server/wm/ActivityDisplay;
    .param p3, "bounds"  # Landroid/graphics/Rect;

    .line 557
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->resolveOrientation(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    .line 559
    .local v0, "orientation":I
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1e

    .line 560
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 561
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityDisplay;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->convertOrientationToScreenOrientation(I)I

    move-result v1

    goto :goto_1d

    .line 562
    :cond_19
    invoke-static {p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    move-result v1

    :goto_1d
    move v0, v1

    .line 569
    :cond_1e
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2e

    .line 570
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_29

    const/4 v1, 0x1

    goto :goto_2d

    .line 571
    :cond_29
    invoke-static {p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    move-result v1

    :goto_2d
    move v0, v1

    .line 578
    :cond_2e
    return v0
.end method

.method private shiftBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "direction"  # I
    .param p2, "availableRect"  # Landroid/graphics/Rect;
    .param p3, "inOutBounds"  # Landroid/graphics/Rect;

    .line 822
    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_16

    const/4 v1, 0x5

    if-eq v0, v1, :cond_b

    .line 831
    const/4 v0, 0x0

    .local v0, "horizontalOffset":I
    goto :goto_23

    .line 828
    .end local v0  # "horizontalOffset":I
    :cond_b
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 829
    .restart local v0  # "horizontalOffset":I
    goto :goto_23

    .line 824
    .end local v0  # "horizontalOffset":I
    :cond_16
    nop

    .line 825
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    .line 824
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    neg-int v0, v0

    .line 826
    .restart local v0  # "horizontalOffset":I
    nop

    .line 835
    :goto_23
    and-int/lit8 v1, p1, 0x70

    const/16 v3, 0x30

    if-eq v1, v3, :cond_3a

    const/16 v3, 0x50

    if-eq v1, v3, :cond_2f

    .line 843
    const/4 v1, 0x0

    .local v1, "verticalOffset":I
    goto :goto_46

    .line 840
    .end local v1  # "verticalOffset":I
    :cond_2f
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x10

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 841
    .restart local v1  # "verticalOffset":I
    goto :goto_46

    .line 837
    .end local v1  # "verticalOffset":I
    :cond_3a
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x10

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    neg-int v1, v1

    .line 838
    .restart local v1  # "verticalOffset":I
    nop

    .line 846
    :goto_46
    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 847
    return-void
.end method

.method private static sizeMatches(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 5
    .param p0, "left"  # Landroid/graphics/Rect;
    .param p1, "right"  # Landroid/graphics/Rect;

    .line 870
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_21

    .line 871
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    .line 870
    :goto_22
    return v0
.end method


# virtual methods
.method adjustBoundsToAvoidConflict(Landroid/graphics/Rect;Ljava/util/List;Landroid/graphics/Rect;)V
    .registers 9
    .param p1, "displayBounds"  # Landroid/graphics/Rect;
    .param p3, "inOutBounds"  # Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 717
    .local p2, "taskBoundsToCheck":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 720
    return-void

    .line 723
    :cond_7
    invoke-direct {p0, p2, p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 726
    return-void

    .line 729
    :cond_e
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->calculateCandidateShiftDirections(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 730
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_50

    aget v3, v0, v2

    .line 731
    .local v3, "direction":I
    if-nez v3, :cond_1c

    .line 733
    goto :goto_50

    .line 736
    :cond_1c
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 737
    :goto_21
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v4}, Lcom/android/server/wm/TaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_37

    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 738
    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 739
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v3, p1, v4}, Lcom/android/server/wm/TaskLaunchParamsModifier;->shiftBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_21

    .line 742
    :cond_37
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v4}, Lcom/android/server/wm/TaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_4d

    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 743
    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 745
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 747
    return-void

    .line 730
    .end local v3  # "direction":I
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 754
    :cond_50
    :goto_50
    return-void
.end method

.method public onCalculate(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .registers 10
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "layout"  # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p3, "activity"  # Lcom/android/server/wm/ActivityRecord;
    .param p4, "source"  # Lcom/android/server/wm/ActivityRecord;
    .param p5, "options"  # Landroid/app/ActivityOptions;
    .param p6, "phase"  # I
    .param p7, "currentParams"  # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .param p8, "outParams"  # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 118
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->initLogBuilder(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 119
    invoke-direct/range {p0 .. p8}, Lcom/android/server/wm/TaskLaunchParamsModifier;->calculate(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I

    move-result v0

    .line 121
    .local v0, "result":I
    invoke-direct {p0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->outputLog()V

    .line 122
    return v0
.end method

.method onCalculate(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .registers 17
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "layout"  # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p3, "activity"  # Lcom/android/server/wm/ActivityRecord;
    .param p4, "source"  # Lcom/android/server/wm/ActivityRecord;
    .param p5, "options"  # Landroid/app/ActivityOptions;
    .param p6, "currentParams"  # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .param p7, "outParams"  # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 110
    const/4 v6, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/TaskLaunchParamsModifier;->onCalculate(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I

    move-result v0

    return v0
.end method
