.class Lcom/android/server/wm/Task;
.super Lcom/android/server/wm/WindowContainer;
.source "Task.java"

# interfaces
.implements Lcom/android/server/wm/ConfigurationContainerListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer<",
        "Lcom/android/server/wm/AppWindowToken;",
        ">;",
        "Lcom/android/server/wm/ConfigurationContainerListener;"
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mCanAffectSystemUiFlags:Z

.field private mDeferRemoval:Z

.field private mDimmer:Lcom/android/server/wm/Dimmer;

.field private mDragResizeMode:I

.field private mDragResizing:Z

.field private mLastRotationDisplayId:I

.field private final mOverrideDisplayedBounds:Landroid/graphics/Rect;

.field final mPreparedFrozenBounds:Landroid/graphics/Rect;

.field final mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

.field private mPreserveNonFloatingState:Z

.field private mResizeMode:I

.field private mRotation:I

.field mStack:Lcom/android/server/wm/TaskStack;

.field private mSupportsPictureInPicture:Z

.field private mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field final mTaskId:I

.field mTaskRecord:Lcom/android/server/wm/TaskRecord;

.field private final mTmpDimBoundsRect:Landroid/graphics/Rect;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRect2:Landroid/graphics/Rect;

.field private mTmpRect3:Landroid/graphics/Rect;

.field final mUserId:I


# direct methods
.method constructor <init>(ILcom/android/server/wm/TaskStack;ILcom/android/server/wm/WindowManagerService;IZLandroid/app/ActivityManager$TaskDescription;Lcom/android/server/wm/TaskRecord;)V
    .registers 11
    .param p1, "taskId"  # I
    .param p2, "stack"  # Lcom/android/server/wm/TaskStack;
    .param p3, "userId"  # I
    .param p4, "service"  # Lcom/android/server/wm/WindowManagerService;
    .param p5, "resizeMode"  # I
    .param p6, "supportsPictureInPicture"  # Z
    .param p7, "taskDescription"  # Landroid/app/ActivityManager$TaskDescription;
    .param p8, "taskRecord"  # Lcom/android/server/wm/TaskRecord;

    .line 122
    invoke-direct {p0, p4}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    .line 70
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/Task;->mPreparedFrozenBounds:Landroid/graphics/Rect;

    .line 71
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    .line 74
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/Task;->mOverrideDisplayedBounds:Landroid/graphics/Rect;

    .line 77
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/Task;->mLastRotationDisplayId:I

    .line 85
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 87
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    .line 89
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect3:Landroid/graphics/Rect;

    .line 108
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    .line 110
    new-instance v0, Lcom/android/server/wm/Dimmer;

    invoke-direct {v0, p0}, Lcom/android/server/wm/Dimmer;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    .line 111
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    .line 123
    iput p1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 124
    iput-object p2, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 125
    iput p3, p0, Lcom/android/server/wm/Task;->mUserId:I

    .line 126
    iput p5, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 127
    iput-boolean p6, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    .line 128
    iput-object p8, p0, Lcom/android/server/wm/Task;->mTaskRecord:Lcom/android/server/wm/TaskRecord;

    .line 129
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskRecord:Lcom/android/server/wm/TaskRecord;

    if-eqz v0, :cond_59

    .line 132
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskRecord;->registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 134
    :cond_59
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 135
    iput-object p7, p0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 138
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setOrientation(I)V

    .line 139
    return-void
.end method

.method private adjustBoundsForDisplayChangeIfNeeded(Lcom/android/server/wm/DisplayContent;)V
    .registers 7
    .param p1, "displayContent"  # Lcom/android/server/wm/DisplayContent;

    .line 545
    if-nez p1, :cond_3

    .line 546
    return-void

    .line 548
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 551
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 552
    return-void

    .line 554
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .line 555
    .local v0, "displayId":I
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 556
    .local v1, "newRotation":I
    iget v2, p0, Lcom/android/server/wm/Task;->mLastRotationDisplayId:I

    if-eq v0, v2, :cond_21

    .line 560
    iput v0, p0, Lcom/android/server/wm/Task;->mLastRotationDisplayId:I

    .line 561
    iput v1, p0, Lcom/android/server/wm/Task;->mRotation:I

    .line 562
    return-void

    .line 566
    :cond_21
    iget v2, p0, Lcom/android/server/wm/Task;->mRotation:I

    if-eq v2, v1, :cond_61

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isMzWindowMode()Z

    move-result v2

    if-eqz v2, :cond_2c

    goto :goto_61

    .line 578
    :cond_2c
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 580
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    move-result v2

    if-nez v2, :cond_45

    .line 581
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 582
    return-void

    .line 585
    :cond_45
    iget v2, p0, Lcom/android/server/wm/Task;->mRotation:I

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    .line 586
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result v2

    if-eqz v2, :cond_60

    .line 587
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTaskRecord:Lcom/android/server/wm/TaskRecord;

    if-eqz v2, :cond_60

    .line 588
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/TaskRecord;->requestResize(Landroid/graphics/Rect;I)V

    .line 591
    :cond_60
    return-void

    .line 570
    :cond_61
    :goto_61
    return-void
.end method

.method private getAdjustedAddPosition(I)I
    .registers 5
    .param p1, "suggestedPosition"  # I

    .line 147
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 148
    .local v0, "size":I
    if-lt p1, v0, :cond_d

    .line 149
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    .line 152
    :cond_d
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_e
    if-ge v1, v0, :cond_23

    if-ge v1, p1, :cond_23

    .line 154
    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v2, :cond_20

    .line 156
    add-int/lit8 p1, p1, 0x1

    .line 152
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 159
    .end local v1  # "pos":I
    :cond_23
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method private getMaxVisibleBounds(Landroid/graphics/Rect;)Z
    .registers 6
    .param p1, "out"  # Landroid/graphics/Rect;

    .line 462
    const/4 v0, 0x0

    .line 463
    .local v0, "foundTop":Z
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_35

    .line 464
    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 466
    .local v2, "token":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-nez v3, :cond_32

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v3

    if-nez v3, :cond_32

    iget-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v3, :cond_22

    .line 467
    goto :goto_32

    .line 469
    :cond_22
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 470
    .local v3, "win":Lcom/android/server/wm/WindowState;
    if-nez v3, :cond_29

    .line 471
    goto :goto_32

    .line 473
    :cond_29
    if-nez v0, :cond_2f

    .line 474
    const/4 v0, 0x1

    .line 475
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 478
    :cond_2f
    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowState;->getMaxVisibleBounds(Landroid/graphics/Rect;)V

    .line 463
    .end local v2  # "token":Lcom/android/server/wm/AppWindowToken;
    .end local v3  # "win":Lcom/android/server/wm/WindowState;
    :cond_32
    :goto_32
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 480
    .end local v1  # "i":I
    :cond_35
    return v0
.end method

.method private hasWindowsAlive()Z
    .registers 4

    .line 177
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 178
    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->hasWindowsAlive()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 179
    return v1

    .line 177
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 182
    .end local v0  # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method addChild(Lcom/android/server/wm/AppWindowToken;I)V
    .registers 4
    .param p1, "wtoken"  # Lcom/android/server/wm/AppWindowToken;
    .param p2, "position"  # I

    .line 164
    invoke-direct {p0, p2}, Lcom/android/server/wm/Task;->getAdjustedAddPosition(I)I

    move-result p2

    .line 165
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    .line 167
    return-void
.end method

.method bridge synthetic addChild(Lcom/android/server/wm/WindowContainer;I)V
    .registers 3

    .line 61
    check-cast p1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/AppWindowToken;I)V

    return-void
.end method

.method alignToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 7
    .param p1, "adjustedBounds"  # Landroid/graphics/Rect;
    .param p2, "tempInsetBounds"  # Landroid/graphics/Rect;
    .param p3, "alignBottom"  # Z

    .line 420
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_4d

    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_4d

    .line 424
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 425
    if-eqz p3, :cond_28

    .line 426
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    .line 427
    .local v0, "offsetY":I
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 428
    .end local v0  # "offsetY":I
    goto :goto_31

    .line 429
    :cond_28
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 431
    :goto_31
    if-eqz p2, :cond_43

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3a

    goto :goto_43

    .line 435
    :cond_3a
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setOverrideDisplayedBounds(Landroid/graphics/Rect;)V

    .line 436
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    goto :goto_4c

    .line 432
    :cond_43
    :goto_43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setOverrideDisplayedBounds(Landroid/graphics/Rect;)V

    .line 433
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 438
    :goto_4c
    return-void

    .line 421
    :cond_4d
    :goto_4d
    return-void
.end method

.method canAffectSystemUiFlags()Z
    .registers 2

    .line 725
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    return v0
.end method

.method cancelTaskWindowTransition()V
    .registers 3

    .line 595
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 596
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->cancelAnimation()V

    .line 595
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 598
    .end local v0  # "i":I
    :cond_18
    return-void
.end method

.method clearPreserveNonFloatingState()V
    .registers 2

    .line 742
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    .line 743
    return-void
.end method

.method cropWindowsToStackBounds()Z
    .registers 2

    .line 398
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    return v0
.end method

.method dontAnimateDimExit()V
    .registers 2

    .line 729
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->dontAnimateExit()V

    .line 730
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 11
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;
    .param p3, "dumpAll"  # Z

    .line 789
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 792
    .local v0, "doublePrefix":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 793
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mBounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 794
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mdr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 795
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "appTokens="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 796
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mDisplayedBounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/Task;->mOverrideDisplayedBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 798
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 799
    .local v2, "triplePrefix":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 801
    .local v1, "quadruplePrefix":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_c1
    if-ltz v3, :cond_f0

    .line 802
    iget-object v4, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    .line 803
    .local v4, "wtoken":Lcom/android/server/wm/AppWindowToken;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Activity #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 804
    invoke-virtual {v4, p1, v1, p3}, Lcom/android/server/wm/AppWindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 801
    .end local v4  # "wtoken":Lcom/android/server/wm/AppWindowToken;
    add-int/lit8 v3, v3, -0x1

    goto :goto_c1

    .line 806
    .end local v3  # "i":I
    :cond_f0
    return-void
.end method

.method fillsParent()Z
    .registers 2

    .line 705
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method forAllTasks(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 710
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/Task;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 711
    return-void
.end method

.method forceWindowsScaleable(Z)V
    .registers 5
    .param p1, "force"  # Z

    .line 681
    const-string v0, "forceWindowsScaleable"

    iget-object v1, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 683
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_f
    if-ltz v1, :cond_1f

    .line 684
    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/AppWindowToken;->forceWindowsScaleableInTransaction(Z)V
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_26

    .line 683
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 687
    .end local v1  # "i":I
    :cond_1f
    iget-object v1, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 688
    nop

    .line 689
    return-void

    .line 687
    :catchall_26
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw v1
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .registers 2

    .line 621
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getAppAnimationLayer(I)Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public getDimBounds(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "out"  # Landroid/graphics/Rect;

    .line 485
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 488
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_12

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 489
    invoke-virtual {v1}, Lcom/android/server/wm/DockedStackDividerController;->isResizing()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 490
    .local v1, "dockedResizing":Z
    :goto_13
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-direct {p0, p1}, Lcom/android/server/wm/Task;->getMaxVisibleBounds(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 491
    return-void

    .line 494
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result v2

    if-nez v2, :cond_44

    .line 501
    if-eqz v1, :cond_2e

    .line 502
    iget-object v2, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    goto :goto_4b

    .line 504
    :cond_2e
    iget-object v2, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 505
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 506
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_4b

    .line 509
    :cond_44
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 511
    :goto_4b
    return-void
.end method

.method getDimmer()Lcom/android/server/wm/Dimmer;
    .registers 2

    .line 747
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object v0
.end method

.method getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getDisplayedBounds()Landroid/graphics/Rect;
    .registers 2

    .line 442
    iget-object v0, p0, Lcom/android/server/wm/Task;->mOverrideDisplayedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 443
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayedBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 445
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/Task;->mOverrideDisplayedBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method getDragResizeMode()I
    .registers 2

    .line 532
    iget v0, p0, Lcom/android/server/wm/Task;->mDragResizeMode:I

    return v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .line 738
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->toShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getOverrideDisplayedBounds()Landroid/graphics/Rect;
    .registers 2

    .line 374
    iget-object v0, p0, Lcom/android/server/wm/Task;->mOverrideDisplayedBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method getTaskDescription()Landroid/app/ActivityManager$TaskDescription;
    .registers 2

    .line 700
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-object v0
.end method

.method getTopFullscreenAppToken()Lcom/android/server/wm/AppWindowToken;
    .registers 5

    .line 645
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_24

    .line 646
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 647
    .local v1, "token":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 648
    .local v2, "win":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_21

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 649
    return-object v1

    .line 645
    .end local v1  # "token":Lcom/android/server/wm/AppWindowToken;
    .end local v2  # "win":Lcom/android/server/wm/WindowState;
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 652
    .end local v0  # "i":I
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;
    .registers 3

    .line 640
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 641
    .local v0, "token":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;
    .registers 4

    .line 656
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_24

    .line 657
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 659
    .local v1, "token":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-nez v2, :cond_21

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v2

    if-nez v2, :cond_21

    iget-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v2, :cond_21

    .line 660
    return-object v1

    .line 656
    .end local v1  # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 663
    .end local v0  # "i":I
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method isDragResizing()Z
    .registers 2

    .line 528
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    return v0
.end method

.method isFloating()Z
    .registers 2

    .line 612
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 613
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isAnimatingBoundsToFullscreen()Z

    move-result v0

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 612
    :goto_19
    return v0
.end method

.method isResizeable()Z
    .registers 2

    .line 382
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mForceResizableTasks:Z

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method isTaskAnimating()Z
    .registers 3

    .line 630
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    .line 631
    .local v0, "recentsAnim":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v0, :cond_10

    .line 632
    invoke-virtual {v0, p0}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 633
    const/4 v1, 0x1

    return v1

    .line 636
    :cond_10
    const/4 v1, 0x0

    return v1
.end method

.method makeSurface()Landroid/view/SurfaceControl$Builder;
    .registers 4

    .line 626
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->makeSurface()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public onDescendantOrientationChanged(Landroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)Z
    .registers 6
    .param p1, "freezeDisplayToken"  # Landroid/os/IBinder;
    .param p2, "requestingContainer"  # Lcom/android/server/wm/ConfigurationContainer;

    .line 327
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onDescendantOrientationChanged(Landroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 328
    return v1

    .line 334
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskRecord:Lcom/android/server/wm/TaskRecord;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 335
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskRecord:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskRecord;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 336
    return v1

    .line 338
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 5
    .param p1, "dc"  # Lcom/android/server/wm/DisplayContent;

    .line 349
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task;->adjustBoundsForDisplayChangeIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 350
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 351
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, -0x1

    .line 352
    .local v0, "displayId":I
    :goto_e
    iget-object v1, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskDisplayChanged(II)V

    .line 354
    return-void
.end method

.method onParentChanged()V
    .registers 2

    .line 257
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onParentChanged()V

    .line 260
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->adjustBoundsForDisplayChangeIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 262
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->windowsAreScaleable()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 265
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forceWindowsScaleable(Z)V

    goto :goto_1d

    .line 267
    :cond_19
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forceWindowsScaleable(Z)V

    .line 269
    :goto_1d
    return-void
.end method

.method onSnapshotChanged(Landroid/app/ActivityManager$TaskSnapshot;)V
    .registers 3
    .param p1, "snapshot"  # Landroid/app/ActivityManager$TaskSnapshot;

    .line 696
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskRecord:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskRecord;->onSnapshotChanged(Landroid/app/ActivityManager$TaskSnapshot;)V

    .line 697
    return-void
.end method

.method positionAt(I)V
    .registers 4
    .param p1, "position"  # I

    .line 252
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Lcom/android/server/wm/TaskStack;->positionChildAt(ILcom/android/server/wm/Task;Z)V

    .line 253
    return-void
.end method

.method positionChildAt(ILcom/android/server/wm/AppWindowToken;Z)V
    .registers 5
    .param p1, "position"  # I
    .param p2, "child"  # Lcom/android/server/wm/AppWindowToken;
    .param p3, "includingParents"  # Z

    .line 171
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task;->getAdjustedAddPosition(I)I

    move-result p1

    .line 172
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    .line 174
    return-void
.end method

.method bridge synthetic positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .registers 4

    .line 61
    check-cast p2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/AppWindowToken;Z)V

    return-void
.end method

.method positionChildAt(Lcom/android/server/wm/AppWindowToken;I)V
    .registers 5
    .param p1, "aToken"  # Lcom/android/server/wm/AppWindowToken;
    .param p2, "position"  # I

    .line 671
    if-nez p1, :cond_a

    .line 672
    const-string v0, "WindowManager"

    const-string v1, "Attempted to position of non-existing app"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    return-void

    .line 677
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/AppWindowToken;Z)V

    .line 678
    return-void
.end method

.method positionChildAtTop(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3
    .param p1, "aToken"  # Lcom/android/server/wm/AppWindowToken;

    .line 667
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->positionChildAt(Lcom/android/server/wm/AppWindowToken;I)V

    .line 668
    return-void
.end method

.method prepareFreezingBounds()V
    .registers 3

    .line 406
    iget-object v0, p0, Lcom/android/server/wm/Task;->mPreparedFrozenBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 407
    iget-object v0, p0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 408
    return-void
.end method

.method prepareSurfaces()V
    .registers 4

    .line 752
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    .line 753
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 754
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 757
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 758
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 759
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->scheduleAnimation()V

    .line 761
    :cond_24
    return-void
.end method

.method preserveOrientationOnResize()Z
    .registers 3

    .line 392
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_e

    const/4 v1, 0x5

    if-eq v0, v1, :cond_e

    const/4 v1, 0x7

    if-ne v0, v1, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    return v0
.end method

.method removeChild(Lcom/android/server/wm/AppWindowToken;)V
    .registers 6
    .param p1, "token"  # Lcom/android/server/wm/AppWindowToken;

    .line 273
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeChild: token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not found."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void

    .line 278
    :cond_24
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 280
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 281
    const/16 v0, 0x791b

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "removeAppToken: last token"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 282
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    if-eqz v0, :cond_4c

    .line 283
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->removeIfPossible()V

    .line 286
    :cond_4c
    return-void
.end method

.method bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 61
    check-cast p1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->removeChild(Lcom/android/server/wm/AppWindowToken;)V

    return-void
.end method

.method removeIfPossible()V
    .registers 3

    .line 194
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->shouldDeferRemoval()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 195
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeTask: deferring removing taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    .line 197
    return-void

    .line 199
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->removeImmediately()V

    .line 200
    return-void
.end method

.method removeImmediately()V
    .registers 6

    .line 204
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeTask: removing taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_1c
    const/16 v0, 0x791b

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "removeTask"

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 206
    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    .line 207
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskRecord:Lcom/android/server/wm/TaskRecord;

    if-eqz v0, :cond_3b

    .line 208
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskRecord;->unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 211
    :cond_3b
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 212
    return-void
.end method

.method reparent(Lcom/android/server/wm/TaskStack;IZ)V
    .registers 9
    .param p1, "stack"  # Lcom/android/server/wm/TaskStack;
    .param p2, "position"  # I
    .param p3, "moveParents"  # Z

    .line 215
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eq p1, v0, :cond_7e

    .line 219
    if-eqz p1, :cond_76

    .line 222
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reParentTask: removing taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " from stack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_2c
    const/16 v0, 0x791b

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "reParentTask"

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 225
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 231
    .local v0, "prevDisplayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 232
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    goto :goto_51

    .line 234
    :cond_4f
    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    .line 237
    :goto_51
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 238
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v1

    invoke-virtual {p1, p0, p2, v1, p3}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;IZZ)V

    .line 241
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 242
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 243
    if-eq v0, v1, :cond_6e

    .line 244
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 245
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 247
    :cond_6e
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 248
    return-void

    .line 220
    .end local v0  # "prevDisplayContent":Lcom/android/server/wm/DisplayContent;
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "reparent: could not find stack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_7e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " already child of stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method resize(ZZ)V
    .registers 4
    .param p1, "relayout"  # Z
    .param p2, "forced"  # Z

    .line 342
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Z)I

    move-result v0

    if-eqz v0, :cond_13

    if-eqz p1, :cond_13

    .line 343
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 345
    :cond_13
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)I
    .registers 5
    .param p1, "bounds"  # Landroid/graphics/Rect;

    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, "rotation":I
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 310
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_10

    .line 311
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v0, v2, Landroid/view/DisplayInfo;->rotation:I

    goto :goto_17

    .line 312
    :cond_10
    if-nez p1, :cond_17

    .line 313
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setBounds(Landroid/graphics/Rect;)I

    move-result v2

    return v2

    .line 316
    :cond_17
    :goto_17
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setBounds(Landroid/graphics/Rect;)I

    move-result v2

    .line 318
    .local v2, "boundsChange":I
    iput v0, p0, Lcom/android/server/wm/Task;->mRotation:I

    .line 320
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateSurfacePosition()V

    .line 321
    return v2
.end method

.method public setBounds(Landroid/graphics/Rect;Z)I
    .registers 6
    .param p1, "bounds"  # Landroid/graphics/Rect;
    .param p2, "forceResize"  # Z

    .line 295
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result v0

    .line 297
    .local v0, "boundsChanged":I
    if-eqz p2, :cond_11

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_11

    .line 298
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->onResize()V

    .line 299
    or-int/lit8 v1, v0, 0x2

    return v1

    .line 302
    :cond_11
    return v0
.end method

.method setCanAffectSystemUiFlags(Z)V
    .registers 2
    .param p1, "canAffectSystemUiFlags"  # Z

    .line 718
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    .line 719
    return-void
.end method

.method setDragResizing(ZI)V
    .registers 6
    .param p1, "dragResizing"  # Z
    .param p2, "dragResizeMode"  # I

    .line 515
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    if-eq v0, p1, :cond_39

    .line 517
    if-eqz p1, :cond_32

    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-static {v0, p2}, Lcom/android/server/wm/DragResizeMode;->isModeAllowedForStack(Lcom/android/server/wm/TaskStack;I)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_32

    .line 518
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drag resize mode not allow for stack stackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v2, v2, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dragResizeMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :cond_32
    :goto_32
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    .line 522
    iput p2, p0, Lcom/android/server/wm/Task;->mDragResizeMode:I

    .line 523
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->resetDragResizingChangeReported()V

    .line 525
    :cond_39
    return-void
.end method

.method setOverrideDisplayedBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "overrideDisplayedBounds"  # Landroid/graphics/Rect;

    .line 361
    if-eqz p1, :cond_8

    .line 362
    iget-object v0, p0, Lcom/android/server/wm/Task;->mOverrideDisplayedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_d

    .line 364
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/Task;->mOverrideDisplayedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 366
    :goto_d
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateSurfacePosition()V

    .line 367
    return-void
.end method

.method setResizeable(I)V
    .registers 2
    .param p1, "resizeMode"  # I

    .line 378
    iput p1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 379
    return-void
.end method

.method setSendingToBottom(Z)V
    .registers 4
    .param p1, "toBottom"  # Z

    .line 289
    const/4 v0, 0x0

    .local v0, "appTokenNdx":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 290
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iput-boolean p1, v1, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 292
    .end local v0  # "appTokenNdx":I
    :cond_16
    return-void
.end method

.method setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .registers 2
    .param p1, "taskDescription"  # Landroid/app/ActivityManager$TaskDescription;

    .line 692
    iput-object p1, p0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 693
    return-void
.end method

.method public setTaskDockedResizing(Z)V
    .registers 3
    .param p1, "resizing"  # Z

    .line 541
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    .line 542
    return-void
.end method

.method shouldDeferRemoval()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 189
    invoke-direct {p0}, Lcom/android/server/wm/Task;->hasWindowsAlive()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isSelfOrChildAnimating()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method showForAllUsers()Z
    .registers 4

    .line 601
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 602
    .local v0, "tokensCount":I
    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->mShowForAllUsers:Z

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method

.method toShortString()Ljava/lang/String;
    .registers 3

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " appTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mdr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 11
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J
    .param p4, "logLevel"  # I

    .line 767
    const/4 v0, 0x2

    if-ne p4, v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    .line 768
    return-void

    .line 771
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 772
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/WindowContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 773
    const-wide v2, 0x10500000002L

    iget v4, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 774
    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_28
    if-ltz v2, :cond_3d

    .line 775
    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 776
    .local v3, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    const-wide v4, 0x20b00000003L

    invoke-virtual {v3, p1, v4, v5, p4}, Lcom/android/server/wm/AppWindowToken;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 774
    .end local v3  # "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    add-int/lit8 v2, v2, -0x1

    goto :goto_28

    .line 778
    .end local v2  # "i":I
    :cond_3d
    const-wide v2, 0x10800000004L

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 779
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 780
    iget-object v2, p0, Lcom/android/server/wm/Task;->mOverrideDisplayedBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000006L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 781
    const-wide v2, 0x10800000007L

    iget-boolean v4, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 782
    const-wide v2, 0x10500000008L

    iget-object v4, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 783
    const-wide v2, 0x10500000009L

    iget-object v4, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 784
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 785
    return-void
.end method
