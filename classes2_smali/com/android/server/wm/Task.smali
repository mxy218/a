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
    .registers 10

    .line 122
    invoke-direct {p0, p4}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 68
    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mPreparedFrozenBounds:Landroid/graphics/Rect;

    .line 71
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mOverrideDisplayedBounds:Landroid/graphics/Rect;

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/Task;->mLastRotationDisplayId:I

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect3:Landroid/graphics/Rect;

    .line 108
    iput-boolean p4, p0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    .line 110
    new-instance p4, Lcom/android/server/wm/Dimmer;

    invoke-direct {p4, p0}, Lcom/android/server/wm/Dimmer;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object p4, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    .line 111
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    iput-object p4, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    .line 114
    const/4 p4, 0x1

    iput-boolean p4, p0, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

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
    iget-object p1, p0, Lcom/android/server/wm/Task;->mTaskRecord:Lcom/android/server/wm/TaskRecord;

    if-eqz p1, :cond_59

    .line 132
    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskRecord;->registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 134
    :cond_59
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 135
    iput-object p7, p0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 138
    const/4 p1, -0x2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setOrientation(I)V

    .line 139
    return-void
.end method

.method private adjustBoundsForDisplayChangeIfNeeded(Lcom/android/server/wm/DisplayContent;)V
    .registers 5

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
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 552
    return-void

    .line 554
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .line 555
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 556
    iget v2, p0, Lcom/android/server/wm/Task;->mLastRotationDisplayId:I

    if-eq v0, v2, :cond_21

    .line 560
    iput v0, p0, Lcom/android/server/wm/Task;->mLastRotationDisplayId:I

    .line 561
    iput v1, p0, Lcom/android/server/wm/Task;->mRotation:I

    .line 562
    return-void

    .line 565
    :cond_21
    iget v0, p0, Lcom/android/server/wm/Task;->mRotation:I

    if-ne v0, v1, :cond_26

    .line 568
    return-void

    .line 576
    :cond_26
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 578
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 579
    iget-object p1, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 580
    return-void

    .line 583
    :cond_3f
    iget v0, p0, Lcom/android/server/wm/Task;->mRotation:I

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    .line 584
    iget-object p1, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result p1

    if-eqz p1, :cond_5a

    .line 585
    iget-object p1, p0, Lcom/android/server/wm/Task;->mTaskRecord:Lcom/android/server/wm/TaskRecord;

    if-eqz p1, :cond_5a

    .line 586
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/TaskRecord;->requestResize(Landroid/graphics/Rect;I)V

    .line 589
    :cond_5a
    return-void
.end method

.method private getAdjustedAddPosition(I)I
    .registers 5

    .line 147
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 148
    if-lt p1, v0, :cond_d

    .line 149
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    .line 152
    :cond_d
    const/4 v1, 0x0

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
    :cond_23
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private getMaxVisibleBounds(Landroid/graphics/Rect;)Z
    .registers 7

    .line 462
    nop

    .line 463
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_a
    if-ltz v0, :cond_37

    .line 464
    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 466
    iget-boolean v4, v3, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-nez v4, :cond_34

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v4

    if-nez v4, :cond_34

    iget-boolean v4, v3, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v4, :cond_23

    .line 467
    goto :goto_34

    .line 469
    :cond_23
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 470
    if-nez v3, :cond_2a

    .line 471
    goto :goto_34

    .line 473
    :cond_2a
    if-nez v2, :cond_31

    .line 474
    nop

    .line 475
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    move v2, v1

    .line 478
    :cond_31
    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowState;->getMaxVisibleBounds(Landroid/graphics/Rect;)V

    .line 463
    :cond_34
    :goto_34
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 480
    :cond_37
    return v2
.end method

.method private hasWindowsAlive()Z
    .registers 4

    .line 177
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

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
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method addChild(Lcom/android/server/wm/AppWindowToken;I)V
    .registers 3

    .line 164
    invoke-direct {p0, p2}, Lcom/android/server/wm/Task;->getAdjustedAddPosition(I)I

    move-result p2

    .line 165
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 166
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

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
    .registers 6

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
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p3, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p3

    .line 427
    iget-object p3, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-virtual {p3, v0, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 428
    goto :goto_31

    .line 429
    :cond_28
    iget-object p3, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3, v0, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 431
    :goto_31
    if-eqz p2, :cond_43

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3a

    goto :goto_43

    .line 435
    :cond_3a
    iget-object p1, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setOverrideDisplayedBounds(Landroid/graphics/Rect;)V

    .line 436
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    goto :goto_4c

    .line 432
    :cond_43
    :goto_43
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setOverrideDisplayedBounds(Landroid/graphics/Rect;)V

    .line 433
    iget-object p1, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

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

    .line 723
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    return v0
.end method

.method cancelTaskWindowTransition()V
    .registers 3

    .line 593
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 594
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->cancelAnimation()V

    .line 593
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 596
    :cond_18
    return-void
.end method

.method clearPreserveNonFloatingState()V
    .registers 2

    .line 740
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    .line 741
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

    .line 727
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->dontAnimateExit()V

    .line 728
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 9

    .line 787
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 790
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "taskId="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 791
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mBounds="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 792
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mdr="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 793
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "appTokens="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 794
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mDisplayedBounds="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mOverrideDisplayedBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 796
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 799
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_c1
    if-ltz v1, :cond_f0

    .line 800
    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 801
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Activity #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 802
    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/wm/AppWindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 799
    add-int/lit8 v1, v1, -0x1

    goto :goto_c1

    .line 804
    :cond_f0
    return-void
.end method

.method fillsParent()Z
    .registers 2

    .line 703
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

    .line 708
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 709
    return-void
.end method

.method forceWindowsScaleable(Z)V
    .registers 5

    .line 679
    const-string v0, "forceWindowsScaleable"

    iget-object v1, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 681
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_f
    if-ltz v1, :cond_1f

    .line 682
    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/AppWindowToken;->forceWindowsScaleableInTransaction(Z)V
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_26

    .line 681
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 685
    :cond_1f
    iget-object p1, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 686
    nop

    .line 687
    return-void

    .line 685
    :catchall_26
    move-exception p1

    iget-object v1, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw p1
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .registers 2

    .line 619
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getAppAnimationLayer(I)Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public getDimBounds(Landroid/graphics/Rect;)V
    .registers 4

    .line 485
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 488
    if-eqz v0, :cond_12

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 489
    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isResizing()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 490
    :goto_13
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-direct {p0, p1}, Lcom/android/server/wm/Task;->getMaxVisibleBounds(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 491
    return-void

    .line 494
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result v1

    if-nez v1, :cond_44

    .line 501
    if-eqz v0, :cond_2e

    .line 502
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    goto :goto_4b

    .line 504
    :cond_2e
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 505
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 506
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_4b

    .line 509
    :cond_44
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 511
    :goto_4b
    return-void
.end method

.method getDimmer()Lcom/android/server/wm/Dimmer;
    .registers 2

    .line 745
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

    .line 736
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

    .line 698
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-object v0
.end method

.method getTopFullscreenAppToken()Lcom/android/server/wm/AppWindowToken;
    .registers 4

    .line 643
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_24

    .line 644
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 645
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 646
    if-eqz v2, :cond_21

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 647
    return-object v1

    .line 643
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 650
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 638
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 639
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;
    .registers 4

    .line 654
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_24

    .line 655
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 657
    iget-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-nez v2, :cond_21

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v2

    if-nez v2, :cond_21

    iget-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v2, :cond_21

    .line 658
    return-object v1

    .line 654
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 661
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

    .line 610
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 611
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isAnimatingBoundsToFullscreen()Z

    move-result v0

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 610
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
    .registers 2

    .line 628
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    .line 629
    if-eqz v0, :cond_10

    .line 630
    invoke-virtual {v0, p0}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 631
    const/4 v0, 0x1

    return v0

    .line 634
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method makeSurface()Landroid/view/SurfaceControl$Builder;
    .registers 4

    .line 624
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->makeSurface()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public onDescendantOrientationChanged(Landroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)Z
    .registers 4

    .line 327
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onDescendantOrientationChanged(Landroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_8

    .line 328
    return p2

    .line 334
    :cond_8
    iget-object p1, p0, Lcom/android/server/wm/Task;->mTaskRecord:Lcom/android/server/wm/TaskRecord;

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 335
    iget-object p1, p0, Lcom/android/server/wm/Task;->mTaskRecord:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskRecord;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 336
    return p2

    .line 338
    :cond_20
    const/4 p1, 0x0

    return p1
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 349
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task;->adjustBoundsForDisplayChangeIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 350
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 351
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p1

    goto :goto_e

    :cond_d
    const/4 p1, -0x1

    .line 352
    :goto_e
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskDisplayChanged(II)V

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

    .line 694
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskRecord:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskRecord;->onSnapshotChanged(Landroid/app/ActivityManager$TaskSnapshot;)V

    .line 695
    return-void
.end method

.method positionAt(I)V
    .registers 4

    .line 252
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Lcom/android/server/wm/TaskStack;->positionChildAt(ILcom/android/server/wm/Task;Z)V

    .line 253
    return-void
.end method

.method positionChildAt(ILcom/android/server/wm/AppWindowToken;Z)V
    .registers 4

    .line 171
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task;->getAdjustedAddPosition(I)I

    move-result p1

    .line 172
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 173
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

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
    .registers 4

    .line 669
    if-nez p1, :cond_a

    .line 670
    const-string p1, "WindowManager"

    const-string p2, "Attempted to position of non-existing app"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    return-void

    .line 675
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/AppWindowToken;Z)V

    .line 676
    return-void
.end method

.method positionChildAtTop(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3

    .line 665
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->positionChildAt(Lcom/android/server/wm/AppWindowToken;I)V

    .line 666
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

    .line 750
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    .line 751
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 752
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 755
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 756
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 757
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->scheduleAnimation()V

    .line 759
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
    .registers 5

    .line 273
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 274
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeChild: token="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not found."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WindowManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void

    .line 278
    :cond_24
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 280
    iget-object p1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 281
    const/16 p1, 0x791b

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "removeAppToken: last token"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 282
    iget-boolean p1, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    if-eqz p1, :cond_4c

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
    .registers 2

    .line 194
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->shouldDeferRemoval()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    .line 197
    return-void

    .line 199
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->removeImmediately()V

    .line 200
    return-void
.end method

.method removeImmediately()V
    .registers 5

    .line 205
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v3, "removeTask"

    aput-object v3, v0, v1

    const/16 v1, 0x791b

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 206
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    .line 207
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskRecord:Lcom/android/server/wm/TaskRecord;

    if-eqz v0, :cond_1f

    .line 208
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskRecord;->unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 211
    :cond_1f
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 212
    return-void
.end method

.method reparent(Lcom/android/server/wm/TaskStack;IZ)V
    .registers 9

    .line 215
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eq p1, v0, :cond_58

    .line 219
    if-eqz p1, :cond_50

    .line 224
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
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 232
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    goto :goto_2b

    .line 234
    :cond_29
    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    .line 237
    :goto_2b
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 238
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v1

    invoke-virtual {p1, p0, p2, v1, p3}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;IZZ)V

    .line 241
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 242
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 243
    if-eq v0, p1, :cond_48

    .line 244
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 245
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 247
    :cond_48
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 248
    return-void

    .line 220
    :cond_50
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "reparent: could not find stack."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 216
    :cond_58
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "task="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " already child of stack="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method resize(ZZ)V
    .registers 4

    .line 342
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Z)I

    move-result p2

    if-eqz p2, :cond_13

    if-eqz p1, :cond_13

    .line 343
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 345
    :cond_13
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)I
    .registers 3

    .line 308
    nop

    .line 309
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_10

    .line 311
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    goto :goto_18

    .line 312
    :cond_10
    if-nez p1, :cond_17

    .line 313
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setBounds(Landroid/graphics/Rect;)I

    move-result p1

    return p1

    .line 312
    :cond_17
    const/4 v0, 0x0

    .line 316
    :goto_18
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setBounds(Landroid/graphics/Rect;)I

    move-result p1

    .line 318
    iput v0, p0, Lcom/android/server/wm/Task;->mRotation:I

    .line 320
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateSurfacePosition()V

    .line 321
    return p1
.end method

.method public setBounds(Landroid/graphics/Rect;Z)I
    .registers 4

    .line 295
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result p1

    .line 297
    if-eqz p2, :cond_10

    and-int/lit8 p2, p1, 0x2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_10

    .line 298
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->onResize()V

    .line 299
    or-int/2addr p1, v0

    return p1

    .line 302
    :cond_10
    return p1
.end method

.method setCanAffectSystemUiFlags(Z)V
    .registers 2

    .line 716
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    .line 717
    return-void
.end method

.method setDragResizing(ZI)V
    .registers 5

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
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Drag resize mode not allow for stack stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dragResizeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

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

    .line 361
    if-eqz p1, :cond_8

    .line 362
    iget-object v0, p0, Lcom/android/server/wm/Task;->mOverrideDisplayedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_d

    .line 364
    :cond_8
    iget-object p1, p0, Lcom/android/server/wm/Task;->mOverrideDisplayedBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 366
    :goto_d
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateSurfacePosition()V

    .line 367
    return-void
.end method

.method setResizeable(I)V
    .registers 2

    .line 378
    iput p1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 379
    return-void
.end method

.method setSendingToBottom(Z)V
    .registers 4

    .line 289
    const/4 v0, 0x0

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
    :cond_16
    return-void
.end method

.method setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .registers 2

    .line 690
    iput-object p1, p0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 691
    return-void
.end method

.method public setTaskDockedResizing(Z)V
    .registers 3

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

    .line 599
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 600
    const/4 v1, 0x1

    if-eqz v0, :cond_17

    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->mShowForAllUsers:Z

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return v1
.end method

.method toShortString()Ljava/lang/String;
    .registers 3

    .line 807
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

    .line 732
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
    .registers 9

    .line 765
    const/4 v0, 0x2

    if-ne p4, v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    .line 766
    return-void

    .line 769
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 770
    const-wide v0, 0x10b00000001L

    invoke-super {p0, p1, v0, v1, p4}, Lcom/android/server/wm/WindowContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 771
    const-wide v0, 0x10500000002L

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 772
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_28
    if-ltz v0, :cond_3d

    .line 773
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 774
    const-wide v2, 0x20b00000003L

    invoke-virtual {v1, p1, v2, v3, p4}, Lcom/android/server/wm/AppWindowToken;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 772
    add-int/lit8 v0, v0, -0x1

    goto :goto_28

    .line 776
    :cond_3d
    const-wide v0, 0x10800000004L

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result p4

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 777
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    const-wide v0, 0x10b00000005L

    invoke-virtual {p4, p1, v0, v1}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 778
    iget-object p4, p0, Lcom/android/server/wm/Task;->mOverrideDisplayedBounds:Landroid/graphics/Rect;

    const-wide v0, 0x10b00000006L

    invoke-virtual {p4, p1, v0, v1}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 779
    const-wide v0, 0x10800000007L

    iget-boolean p4, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 780
    const-wide v0, 0x10500000008L

    iget-object p4, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p4}, Landroid/view/SurfaceControl;->getWidth()I

    move-result p4

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 781
    const-wide v0, 0x10500000009L

    iget-object p4, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p4}, Landroid/view/SurfaceControl;->getHeight()I

    move-result p4

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 782
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 783
    return-void
.end method
