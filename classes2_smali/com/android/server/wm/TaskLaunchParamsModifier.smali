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
    .registers 9

    .line 687
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 688
    const/4 v1, 0x0

    move v2, v1

    :goto_7
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_30

    .line 689
    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 690
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->inFreeformWindowingMode()Z

    move-result v4

    if-nez v4, :cond_18

    .line 691
    goto :goto_2d

    .line 694
    :cond_18
    move v4, v1

    :goto_19
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_2d

    .line 695
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStack;->getChildAt(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/TaskRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 688
    :cond_2d
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 698
    :cond_30
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityDisplay;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToAvoidConflict(Landroid/graphics/Rect;Ljava/util/List;Landroid/graphics/Rect;)V

    .line 699
    return-void
.end method

.method private adjustBoundsToFitInDisplay(Lcom/android/server/wm/ActivityDisplay;Landroid/graphics/Rect;)V
    .registers 7

    .line 632
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityDisplay;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 634
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_52

    .line 635
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ge v0, v1, :cond_1a

    goto :goto_52

    .line 648
    :cond_1a
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_26

    .line 650
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_33

    .line 651
    :cond_26
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_32

    .line 653
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    goto :goto_33

    .line 656
    :cond_32
    move v0, v2

    .line 660
    :goto_33
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-ge v1, v3, :cond_40

    .line 662
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int v2, p1, v1

    goto :goto_4e

    .line 663
    :cond_40
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-le v1, v3, :cond_4d

    .line 665
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p1, v1

    goto :goto_4e

    .line 668
    :cond_4d
    nop

    .line 670
    :goto_4e
    invoke-virtual {p2, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 671
    return-void

    .line 638
    :cond_52
    :goto_52
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 639
    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    .line 640
    const/4 v1, 0x1

    if-ne v0, v1, :cond_6b

    .line 641
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_6c

    .line 642
    :cond_6b
    move p1, v2

    .line 643
    :goto_6c
    invoke-virtual {p2, p1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 644
    return-void
.end method

.method private appendLog(Ljava/lang/String;)V
    .registers 2

    .line 858
    return-void
.end method

.method private boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z
    .registers 11
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
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 801
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ge v2, v3, :cond_20

    move v2, v4

    goto :goto_21

    :cond_20
    move v2, v1

    .line 803
    :goto_21
    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v3, :cond_2e

    move v5, v4

    goto :goto_2f

    :cond_2e
    move v5, v1

    .line 805
    :goto_2f
    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v3, :cond_3c

    move v6, v4

    goto :goto_3d

    :cond_3c
    move v6, v1

    .line 807
    :goto_3d
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v3, :cond_49

    move v1, v4

    .line 810
    :cond_49
    if-eqz v2, :cond_4d

    if-nez v5, :cond_59

    :cond_4d
    if-eqz v2, :cond_51

    if-nez v1, :cond_59

    :cond_51
    if-eqz v6, :cond_55

    if-nez v5, :cond_59

    :cond_55
    if-eqz v6, :cond_5a

    if-eqz v1, :cond_5a

    .line 812
    :cond_59
    return v4

    .line 814
    :cond_5a
    goto :goto_4

    .line 816
    :cond_5b
    return v1
.end method

.method private calculate(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .registers 25

    .line 129
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v2, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    if-eqz v1, :cond_20

    .line 130
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    if-nez v8, :cond_1b

    move-object/from16 v8, p3

    goto :goto_22

    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    goto :goto_22

    .line 132
    :cond_20
    move-object/from16 v8, p3

    .line 139
    :goto_22
    const/4 v9, 0x0

    if-nez v8, :cond_26

    .line 145
    return v9

    .line 149
    :cond_26
    invoke-direct {v0, v1, v4, v2, v6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getPreferredLaunchDisplay(Lcom/android/server/wm/TaskRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I

    move-result v1

    .line 150
    iput v1, v7, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    .line 151
    iget-object v10, v0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v10, v1}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v10

    .line 157
    const/4 v11, 0x2

    if-nez v5, :cond_38

    .line 158
    return v11

    .line 165
    :cond_38
    if-eqz v4, :cond_3f

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v12

    goto :goto_40

    .line 166
    :cond_3f
    move v12, v9

    .line 169
    :goto_40
    nop

    .line 170
    invoke-direct {v0, v10, v12}, Lcom/android/server/wm/TaskLaunchParamsModifier;->canApplyFreeformWindowPolicy(Lcom/android/server/wm/ActivityDisplay;I)Z

    move-result v13

    .line 171
    iget-object v14, v0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v14, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z

    move-result v14

    const/4 v15, 0x5

    const/4 v9, 0x1

    if-eqz v14, :cond_69

    if-nez v13, :cond_57

    .line 172
    invoke-direct {v0, v12}, Lcom/android/server/wm/TaskLaunchParamsModifier;->canApplyPipWindowPolicy(I)Z

    move-result v14

    if-eqz v14, :cond_69

    .line 173
    :cond_57
    nop

    .line 174
    if-nez v12, :cond_5c

    .line 175
    move v12, v15

    goto :goto_5d

    .line 176
    :cond_5c
    nop

    .line 177
    :goto_5d
    iget-object v13, v7, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move v4, v12

    move v12, v9

    goto :goto_8d

    .line 179
    :cond_69
    if-ne v12, v11, :cond_6c

    goto :goto_8b

    .line 182
    :cond_6c
    if-ne v12, v9, :cond_6f

    goto :goto_8b

    .line 184
    :cond_6f
    if-eqz v3, :cond_8b

    if-eqz v13, :cond_8b

    .line 185
    iget-object v4, v0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v10, v8, v3, v4}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getLayoutBounds(Lcom/android/server/wm/ActivityDisplay;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    .line 186
    iget-object v4, v0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8b

    .line 187
    nop

    .line 188
    iget-object v4, v7, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v12, v0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 189
    move v12, v9

    move v4, v15

    goto :goto_8d

    .line 207
    :cond_8b
    :goto_8b
    move v4, v12

    const/4 v12, 0x0

    :goto_8d
    nop

    .line 211
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_c2

    if-nez v12, :cond_c2

    .line 212
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasPreferredDisplay()Z

    move-result v13

    if-eqz v13, :cond_a0

    iget v13, v6, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    if-ne v1, v13, :cond_c2

    .line 214
    :cond_a0
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasWindowingMode()Z

    move-result v13

    if-eqz v13, :cond_ae

    .line 215
    iget v4, v6, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 216
    if-eq v4, v15, :cond_ac

    move v13, v9

    goto :goto_af

    :cond_ac
    const/4 v13, 0x0

    goto :goto_af

    .line 214
    :cond_ae
    const/4 v13, 0x0

    .line 222
    :goto_af
    iget-object v14, v6, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_c3

    .line 227
    iget-object v14, v7, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v9, v6, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v14, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 228
    if-ne v4, v15, :cond_c3

    .line 229
    const/4 v13, 0x1

    goto :goto_c3

    .line 239
    :cond_c2
    const/4 v13, 0x0

    :cond_c3
    :goto_c3
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityDisplay;->inFreeformWindowingMode()Z

    move-result v9

    if-eqz v9, :cond_da

    .line 240
    if-ne v4, v11, :cond_cc

    goto :goto_da

    .line 242
    :cond_cc
    invoke-direct {v0, v8}, Lcom/android/server/wm/TaskLaunchParamsModifier;->isTaskForcedMaximized(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v9

    if-eqz v9, :cond_da

    .line 246
    nop

    .line 247
    iget-object v4, v7, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v9, 0x1

    goto :goto_db

    .line 254
    :cond_da
    :goto_da
    move v9, v4

    :goto_db
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityDisplay;->getWindowingMode()I

    move-result v4

    if-ne v9, v4, :cond_e3

    .line 255
    const/4 v4, 0x0

    goto :goto_e4

    :cond_e3
    move v4, v9

    :goto_e4
    iput v4, v7, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 257
    const/4 v4, 0x1

    if-ne v5, v4, :cond_ea

    .line 258
    return v11

    .line 267
    :cond_ea
    if-eqz v9, :cond_ee

    move v4, v9

    goto :goto_f2

    .line 268
    :cond_ee
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityDisplay;->getWindowingMode()I

    move-result v4

    .line 269
    :goto_f2
    if-eqz v13, :cond_105

    .line 270
    if-ne v4, v15, :cond_134

    .line 272
    iget v2, v6, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    if-eq v2, v1, :cond_ff

    .line 273
    iget-object v1, v7, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v10, v1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToFitInDisplay(Lcom/android/server/wm/ActivityDisplay;Landroid/graphics/Rect;)V

    .line 277
    :cond_ff
    iget-object v1, v7, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v10, v1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToAvoidConflictInDisplay(Lcom/android/server/wm/ActivityDisplay;Landroid/graphics/Rect;)V

    goto :goto_134

    .line 280
    :cond_105
    if-eqz v2, :cond_128

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_128

    if-ne v4, v15, :cond_128

    iget-object v1, v7, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 282
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_128

    .line 283
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v1

    iget v5, v10, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    if-ne v1, v5, :cond_128

    .line 285
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, v7, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1, v10, v2}, Lcom/android/server/wm/TaskLaunchParamsModifier;->cascadeBounds(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityDisplay;Landroid/graphics/Rect;)V

    .line 287
    :cond_128
    iget-object v6, v7, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v10

    move-object/from16 v3, p2

    move v5, v12

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityDisplay;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    .line 290
    :cond_134
    :goto_134
    return v11
.end method

.method private calculateCandidateShiftDirections(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 9

    .line 764
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    array-length v3, v2

    if-ge v1, v3, :cond_c

    .line 765
    aput v0, v2, v1

    .line 764
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 768
    :cond_c
    iget v1, p1, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    const/4 v2, 0x3

    div-int/2addr v1, v2

    .line 769
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    div-int/2addr v3, v2

    .line 770
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    .line 771
    const/4 v5, 0x5

    if-ge v4, v1, :cond_29

    .line 773
    iget-object p1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    aput v5, p1, v0

    .line 774
    return-void

    .line 775
    :cond_29
    if-le v4, v3, :cond_30

    .line 777
    iget-object p1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    aput v2, p1, v0

    .line 778
    return-void

    .line 781
    :cond_30
    iget v1, p1, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v1, v1, 0x2

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v3

    div-int/2addr v1, v2

    .line 782
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr v3, p1

    div-int/2addr v3, v2

    .line 783
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    .line 784
    const/4 p2, 0x1

    if-lt p1, v1, :cond_55

    if-le p1, v3, :cond_4a

    goto :goto_55

    .line 794
    :cond_4a
    iget-object p1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    const/16 v1, 0x55

    aput v1, p1, v0

    .line 795
    const/16 v0, 0x33

    aput v0, p1, p2

    .line 796
    return-void

    .line 787
    :cond_55
    :goto_55
    iget-object p1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    aput v5, p1, v0

    .line 788
    aput v2, p1, p2

    .line 789
    return-void
.end method

.method private canApplyFreeformWindowPolicy(Lcom/android/server/wm/ActivityDisplay;I)Z
    .registers 4

    .line 338
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v0, :cond_13

    .line 339
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityDisplay;->inFreeformWindowingMode()Z

    move-result p1

    if-nez p1, :cond_11

    const/4 p1, 0x5

    if-ne p2, p1, :cond_13

    :cond_11
    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    .line 338
    :goto_14
    return p1
.end method

.method private canApplyPipWindowPolicy(I)Z
    .registers 3

    .line 343
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x2

    if-ne p1, v0, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    return p1
.end method

.method private cascadeBounds(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityDisplay;Landroid/graphics/Rect;)V
    .registers 7

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
    const/high16 v1, 0x42960000  # 75.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000  # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 482
    iget-object v1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Lcom/android/server/wm/ActivityDisplay;->getBounds(Landroid/graphics/Rect;)V

    .line 483
    iget-object p2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, v1

    const/4 v1, 0x0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 484
    iget-object v2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 485
    invoke-virtual {p3, p2, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 486
    return-void
.end method

.method private centerBounds(Lcom/android/server/wm/ActivityDisplay;IILandroid/graphics/Rect;)V
    .registers 7

    .line 622
    invoke-virtual {p4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 623
    invoke-virtual {p1, p4}, Lcom/android/server/wm/ActivityDisplay;->getBounds(Landroid/graphics/Rect;)V

    .line 625
    :cond_9
    invoke-virtual {p4}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    div-int/lit8 v0, p2, 0x2

    sub-int/2addr p1, v0

    .line 626
    invoke-virtual {p4}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    div-int/lit8 v1, p3, 0x2

    sub-int/2addr v0, v1

    .line 627
    add-int/2addr p2, p1

    add-int/2addr p3, v0

    invoke-virtual {p4, p1, v0, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 628
    return-void
.end method

.method private convertOrientationToScreenOrientation(I)I
    .registers 3

    .line 545
    const/4 v0, 0x1

    if-eq p1, v0, :cond_a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    .line 551
    const/4 p1, -0x1

    return p1

    .line 547
    :cond_8
    const/4 p1, 0x0

    return p1

    .line 549
    :cond_a
    return v0
.end method

.method private getDefaultFreeformSize(Lcom/android/server/wm/ActivityDisplay;Landroid/content/pm/ActivityInfo$WindowLayout;ILandroid/graphics/Rect;)V
    .registers 10

    .line 586
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityDisplay;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 587
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 588
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 589
    mul-int v2, v1, v1

    div-int v0, v2, v0

    .line 590
    if-nez p3, :cond_24

    move v2, v1

    goto :goto_25

    .line 591
    :cond_24
    move v2, v0

    .line 592
    :goto_25
    if-nez p3, :cond_28

    goto :goto_29

    .line 593
    :cond_28
    move v0, v1

    .line 597
    :goto_29
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityDisplay;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p1, p1

    const/high16 v1, 0x43200000  # 160.0f

    div-float/2addr p1, v1

    .line 598
    const/high16 v1, 0x43ce0000  # 412.0f

    mul-float/2addr v1, p1

    const/high16 v3, 0x3f000000  # 0.5f

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 599
    const/high16 v4, 0x44370000  # 732.0f

    mul-float/2addr p1, v4

    add-float/2addr p1, v3

    float-to-int p1, p1

    .line 600
    if-nez p3, :cond_43

    move v3, p1

    goto :goto_44

    .line 601
    :cond_43
    move v3, v1

    .line 602
    :goto_44
    if-nez p3, :cond_48

    move p1, v1

    goto :goto_49

    .line 603
    :cond_48
    nop

    .line 606
    :goto_49
    const/4 p3, -0x1

    if-nez p2, :cond_4e

    move v1, p3

    goto :goto_50

    :cond_4e
    iget v1, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    .line 607
    :goto_50
    if-nez p2, :cond_53

    goto :goto_55

    :cond_53
    iget p3, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    .line 610
    :goto_55
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 611
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 613
    const/4 p3, 0x0

    invoke-virtual {p4, p3, p3, p2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 614
    return-void
.end method

.method private getLayoutBounds(Lcom/android/server/wm/ActivityDisplay;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V
    .registers 19

    .line 349
    move-object/from16 v3, p3

    move-object/from16 v7, p4

    iget v0, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v8, v0, 0x70

    .line 350
    iget v0, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v9, v0, 0x7

    .line 351
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    move-result v0

    if-nez v0, :cond_1a

    if-nez v8, :cond_1a

    if-nez v9, :cond_1a

    .line 352
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->setEmpty()V

    .line 353
    return-void

    .line 356
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityDisplay;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 358
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 362
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    move-result v0

    const/high16 v12, 0x3f800000  # 1.0f

    const/4 v13, 0x0

    if-nez v0, :cond_48

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
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_86

    .line 369
    :cond_48
    nop

    .line 370
    iget v0, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    if-lez v0, :cond_54

    iget v0, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    if-ge v0, v10, :cond_54

    .line 371
    iget v0, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    goto :goto_67

    .line 372
    :cond_54
    iget v0, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    cmpl-float v0, v0, v13

    if-lez v0, :cond_66

    iget v0, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    cmpg-float v0, v0, v12

    if-gez v0, :cond_66

    .line 373
    int-to-float v0, v10

    iget v1, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_67

    .line 376
    :cond_66
    move v0, v10

    :goto_67
    nop

    .line 377
    iget v1, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-lez v1, :cond_73

    iget v1, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-ge v1, v11, :cond_73

    .line 378
    iget v1, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    goto :goto_86

    .line 379
    :cond_73
    iget v1, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    cmpl-float v1, v1, v13

    if-lez v1, :cond_85

    iget v1, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    cmpg-float v1, v1, v12

    if-gez v1, :cond_85

    .line 380
    int-to-float v1, v11

    iget v2, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_86

    .line 385
    :cond_85
    move v1, v11

    :goto_86
    const/4 v2, 0x3

    const/high16 v3, 0x3f000000  # 0.5f

    if-eq v9, v2, :cond_93

    const/4 v2, 0x5

    if-eq v9, v2, :cond_90

    .line 393
    move v2, v3

    goto :goto_95

    .line 390
    :cond_90
    nop

    .line 391
    move v2, v12

    goto :goto_95

    .line 387
    :cond_93
    nop

    .line 388
    move v2, v13

    .line 397
    :goto_95
    const/16 v4, 0x30

    if-eq v8, v4, :cond_a1

    const/16 v4, 0x50

    if-eq v8, v4, :cond_9f

    .line 405
    move v12, v3

    goto :goto_a3

    .line 402
    :cond_9f
    nop

    .line 403
    goto :goto_a3

    .line 399
    :cond_a1
    nop

    .line 400
    move v12, v13

    .line 408
    :goto_a3
    const/4 v3, 0x0

    invoke-virtual {v7, v3, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 409
    sub-int/2addr v10, v0

    int-to-float v0, v10

    mul-float/2addr v2, v0

    float-to-int v0, v2

    .line 410
    sub-int/2addr v11, v1

    int-to-float v1, v11

    mul-float/2addr v12, v1

    float-to-int v1, v12

    .line 411
    invoke-virtual {v7, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 412
    return-void
.end method

.method private getPreferredLaunchDisplay(Lcom/android/server/wm/TaskRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .registers 8

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
    nop

    .line 300
    const/4 v0, -0x1

    if-eqz p2, :cond_13

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result p2

    goto :goto_14

    :cond_13
    move p2, v0

    .line 301
    :goto_14
    if-eq p2, v0, :cond_17

    .line 303
    goto :goto_18

    .line 301
    :cond_17
    move p2, v0

    .line 308
    :goto_18
    if-ne p2, v0, :cond_22

    if-eqz p3, :cond_22

    iget-boolean v2, p3, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-eqz v2, :cond_22

    .line 309
    iget p2, p3, Lcom/android/server/wm/ActivityRecord;->mHandoverLaunchDisplayId:I

    .line 314
    :cond_22
    if-ne p2, v0, :cond_2b

    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    goto :goto_2c

    :cond_2b
    const/4 p1, 0x0

    .line 315
    :goto_2c
    if-eqz p1, :cond_30

    .line 317
    iget p2, p1, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    .line 320
    :cond_30
    if-ne p2, v0, :cond_38

    if-eqz p3, :cond_38

    .line 321
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result p2

    .line 326
    :cond_38
    if-eq p2, v0, :cond_46

    iget-object p1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 327
    invoke-virtual {p1, p2}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object p1

    if-nez p1, :cond_46

    .line 328
    iget p2, p4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    .line 330
    :cond_46
    if-ne p2, v0, :cond_4b

    iget p1, p4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    goto :goto_4c

    :cond_4b
    move p1, p2

    .line 332
    :goto_4c
    if-eq p1, v0, :cond_59

    iget-object p2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p2, p2, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 333
    invoke-virtual {p2, p1}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object p2

    if-eqz p2, :cond_59

    .line 334
    goto :goto_5a

    :cond_59
    move p1, v1

    .line 332
    :goto_5a
    return p1
.end method

.method private getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityDisplay;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V
    .registers 9

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

    move-result p1

    .line 508
    if-eq p1, v0, :cond_2f

    if-nez p1, :cond_14

    goto :goto_2f

    .line 510
    :cond_14
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Orientation must be one of portrait or landscape, but it\'s "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 516
    :cond_2f
    :goto_2f
    iget-object p4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p2, p3, p1, p4}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getDefaultFreeformSize(Lcom/android/server/wm/ActivityDisplay;Landroid/content/pm/ActivityInfo$WindowLayout;ILandroid/graphics/Rect;)V

    .line 517
    if-nez p5, :cond_52

    iget-object p3, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-static {p6, p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->sizeMatches(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p3

    if-eqz p3, :cond_3f

    goto :goto_52

    .line 535
    :cond_3f
    iget-object p1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p3, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-direct {p0, p2, p1, p3, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->centerBounds(Lcom/android/server/wm/ActivityDisplay;IILandroid/graphics/Rect;)V

    .line 536
    invoke-direct {p0, p2, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToFitInDisplay(Lcom/android/server/wm/ActivityDisplay;Landroid/graphics/Rect;)V

    goto :goto_64

    .line 522
    :cond_52
    :goto_52
    invoke-static {p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    move-result p3

    if-ne p1, p3, :cond_59

    goto :goto_64

    .line 526
    :cond_59
    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-direct {p0, p2, p1, p3, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->centerBounds(Lcom/android/server/wm/ActivityDisplay;IILandroid/graphics/Rect;)V

    .line 541
    :goto_64
    invoke-direct {p0, p2, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToAvoidConflictInDisplay(Lcom/android/server/wm/ActivityDisplay;Landroid/graphics/Rect;)V

    .line 542
    return-void
.end method

.method private initLogBuilder(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 854
    return-void
.end method

.method private isTaskForcedMaximized(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5

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

    move-result p1

    xor-int/2addr p1, v1

    return p1

    .line 430
    :cond_19
    :goto_19
    return v1
.end method

.method private static orientationFromBounds(Landroid/graphics/Rect;)I
    .registers 2

    .line 865
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-le v0, p0, :cond_c

    const/4 p0, 0x0

    goto :goto_d

    .line 866
    :cond_c
    const/4 p0, 0x1

    .line 865
    :goto_d
    return p0
.end method

.method private outputLog()V
    .registers 1

    .line 862
    return-void
.end method

.method private resolveOrientation(Lcom/android/server/wm/ActivityRecord;)I
    .registers 5

    .line 449
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p1, p1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 450
    const/16 v0, 0xe

    const/4 v1, 0x1

    if-eqz p1, :cond_1f

    if-eq p1, v1, :cond_1c

    const/16 v2, 0xb

    if-eq p1, v2, :cond_1f

    const/16 v2, 0xc

    if-eq p1, v2, :cond_1c

    if-eq p1, v0, :cond_1a

    packed-switch p1, :pswitch_data_22

    .line 470
    const/4 v0, -0x1

    goto :goto_21

    .line 453
    :cond_1a
    :pswitch_1a  #0x5
    nop

    .line 454
    goto :goto_21

    .line 467
    :cond_1c
    :pswitch_1c  #0x7, 0x9
    nop

    .line 468
    move v0, v1

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
        :pswitch_1c  #00000007
        :pswitch_1f  #00000008
        :pswitch_1c  #00000009
    .end packed-switch
.end method

.method private resolveOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityDisplay;Landroid/graphics/Rect;)I
    .registers 5

    .line 557
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->resolveOrientation(Lcom/android/server/wm/ActivityRecord;)I

    move-result p1

    .line 559
    const/16 v0, 0xe

    if-ne p1, v0, :cond_1d

    .line 560
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 561
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityDisplay;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->convertOrientationToScreenOrientation(I)I

    move-result p1

    goto :goto_1d

    .line 562
    :cond_19
    invoke-static {p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    move-result p1

    .line 569
    :cond_1d
    :goto_1d
    const/4 p2, -0x1

    if-ne p1, p2, :cond_2c

    .line 570
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 p1, 0x1

    goto :goto_2c

    .line 571
    :cond_28
    invoke-static {p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    move-result p1

    .line 578
    :cond_2c
    :goto_2c
    return p1
.end method

.method private shiftBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 8

    .line 822
    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_17

    const/4 v1, 0x5

    if-eq v0, v1, :cond_c

    .line 831
    move v0, v2

    goto :goto_24

    .line 828
    :cond_c
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 829
    goto :goto_24

    .line 824
    :cond_17
    nop

    .line 825
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    .line 824
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    neg-int v0, v0

    .line 826
    nop

    .line 835
    :goto_24
    and-int/lit8 p1, p1, 0x70

    const/16 v1, 0x30

    if-eq p1, v1, :cond_3a

    const/16 v1, 0x50

    if-eq p1, v1, :cond_2f

    .line 843
    goto :goto_46

    .line 840
    :cond_2f
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x10

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 841
    goto :goto_46

    .line 837
    :cond_3a
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x10

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    neg-int v2, p1

    .line 838
    nop

    .line 846
    :goto_46
    invoke-virtual {p3, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 847
    return-void
.end method

.method private static sizeMatches(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 4

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

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-ge p0, v1, :cond_21

    const/4 p0, 0x1

    goto :goto_22

    :cond_21
    const/4 p0, 0x0

    .line 870
    :goto_22
    return p0
.end method


# virtual methods
.method adjustBoundsToAvoidConflict(Landroid/graphics/Rect;Ljava/util/List;Landroid/graphics/Rect;)V
    .registers 9
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
    iget-object v3, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_4d

    iget-object v3, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 743
    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 745
    iget-object p1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 747
    return-void

    .line 730
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 754
    :cond_50
    :goto_50
    return-void
.end method

.method public onCalculate(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .registers 9

    .line 118
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->initLogBuilder(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 119
    invoke-direct/range {p0 .. p8}, Lcom/android/server/wm/TaskLaunchParamsModifier;->calculate(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I

    move-result p1

    .line 121
    invoke-direct {p0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->outputLog()V

    .line 122
    return p1
.end method

.method onCalculate(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .registers 17
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
