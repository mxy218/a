.class final Lcom/android/server/wm/DisplayContent$TaskStackContainers;
.super Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
.source "DisplayContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TaskStackContainers"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer<",
        "Lcom/android/server/wm/TaskStack;",
        ">;"
    }
.end annotation


# instance fields
.field mAppAnimationLayer:Landroid/view/SurfaceControl;

.field mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

.field mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

.field private mHomeStack:Lcom/android/server/wm/TaskStack;

.field private mPinnedStack:Lcom/android/server/wm/TaskStack;

.field mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

.field private mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

.field mWinAppAnimationLayer:Landroid/view/SurfaceControl;

.field final synthetic this$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;)V
    .registers 3
    .param p2, "service"  # Lcom/android/server/wm/WindowManagerService;

    .line 4158
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    .line 4159
    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 4131
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4132
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4133
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4135
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mWinAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4150
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    .line 4154
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    .line 4155
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    .line 4156
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    .line 4160
    return-void
.end method

.method private addChild(Lcom/android/server/wm/TaskStack;Z)V
    .registers 5
    .param p1, "stack"  # Lcom/android/server/wm/TaskStack;
    .param p2, "toTop"  # Z

    .line 4282
    if-eqz p2, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->findPositionForStack(ILcom/android/server/wm/TaskStack;Z)I

    move-result v0

    .line 4284
    .local v0, "addIndex":I
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 4285
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 4286
    return-void
.end method

.method private addStackReferenceIfNeeded(Lcom/android/server/wm/TaskStack;)V
    .registers 8
    .param p1, "stack"  # Lcom/android/server/wm/TaskStack;

    .line 4240
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->isActivityTypeHome()Z

    move-result v0

    const-string v1, " stack="

    const-string v2, " already exist on display="

    if-eqz v0, :cond_36

    .line 4241
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_11

    .line 4246
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    goto :goto_36

    .line 4242
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStackReferenceIfNeeded: home stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4248
    :cond_36
    :goto_36
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v0

    .line 4249
    .local v0, "windowingMode":I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_69

    .line 4250
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    if-nez v3, :cond_44

    .line 4255
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    goto :goto_a0

    .line 4251
    :cond_44
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addStackReferenceIfNeeded: pinned stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4256
    :cond_69
    const/4 v3, 0x3

    if-ne v0, v3, :cond_a0

    .line 4257
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    if-nez v3, :cond_7b

    .line 4262
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    .line 4263
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackExistsChanged(Z)V

    goto :goto_a0

    .line 4258
    :cond_7b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addStackReferenceIfNeeded: split-screen-primary stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4265
    :cond_a0
    :goto_a0
    return-void
.end method

.method private findPositionForStack(ILcom/android/server/wm/TaskStack;Z)I
    .registers 11
    .param p1, "requestedPosition"  # I
    .param p2, "stack"  # Lcom/android/server/wm/TaskStack;
    .param p3, "adding"  # Z

    .line 4341
    invoke-virtual {p2}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4342
    const v0, 0x7fffffff

    return v0

    .line 4345
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 4346
    .local v0, "topChildPosition":I
    const/high16 v1, -0x80000000

    .line 4347
    .local v1, "belowAlwaysOnTopPosition":I
    move v2, v0

    .local v2, "i":I
    :goto_15
    if-ltz v2, :cond_3a

    .line 4348
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getStacks()Lcom/android/server/wm/WindowList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p2, :cond_37

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getStacks()Lcom/android/server/wm/WindowList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->isAlwaysOnTop()Z

    move-result v3

    if-nez v3, :cond_37

    .line 4349
    move v1, v2

    .line 4350
    goto :goto_3a

    .line 4347
    :cond_37
    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    .line 4355
    .end local v2  # "i":I
    :cond_3a
    :goto_3a
    const v2, 0x7fffffff

    .line 4357
    .local v2, "maxPosition":I
    const/high16 v3, -0x80000000

    .line 4359
    .local v3, "minPosition":I
    invoke-virtual {p2}, Lcom/android/server/wm/TaskStack;->isAlwaysOnTop()Z

    move-result v4

    const/high16 v5, -0x80000000

    if-eqz v4, :cond_64

    .line 4360
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v4}, Lcom/android/server/wm/DisplayContent;->access$300(Lcom/android/server/wm/DisplayContent;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 4362
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getStacks()Lcom/android/server/wm/WindowList;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 4365
    :cond_5d
    if-eq v1, v5, :cond_61

    .line 4366
    move v4, v1

    goto :goto_62

    :cond_61
    move v4, v0

    :goto_62
    move v3, v4

    goto :goto_6a

    .line 4369
    :cond_64
    if-eq v1, v5, :cond_68

    .line 4370
    move v4, v1

    goto :goto_69

    :cond_68
    const/4 v4, 0x0

    :goto_69
    move v2, v4

    .line 4373
    :goto_6a
    move v4, p1

    .line 4374
    .local v4, "targetPosition":I
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 4375
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 4377
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getStacks()Lcom/android/server/wm/WindowList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 4383
    .local v5, "prevPosition":I
    if-eq v4, p1, :cond_85

    if-nez p3, :cond_83

    if-ge v4, v5, :cond_85

    .line 4385
    :cond_83
    add-int/lit8 v4, v4, 0x1

    .line 4388
    :cond_85
    return v4
.end method

.method private forAllExitingAppTokenWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 10
    .param p2, "traverseTopToBottom"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 4418
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x1

    if-eqz p2, :cond_31

    .line 4419
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_30

    .line 4420
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskStack;

    iget-object v2, v2, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 4421
    .local v2, "appTokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    .local v3, "j":I
    :goto_1b
    if-ltz v3, :cond_2d

    .line 4422
    invoke-virtual {v2, v3}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/AppWindowToken;->forAllWindowsUnchecked(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 4424
    return v0

    .line 4421
    :cond_2a
    add-int/lit8 v3, v3, -0x1

    goto :goto_1b

    .line 4419
    .end local v2  # "appTokens":Lcom/android/server/wm/AppTokenList;
    .end local v3  # "j":I
    :cond_2d
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .end local v1  # "i":I
    :cond_30
    goto :goto_5e

    .line 4429
    :cond_31
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 4430
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_38
    if-ge v2, v1, :cond_5e

    .line 4431
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    iget-object v3, v3, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 4432
    .local v3, "appTokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v3}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v4

    .line 4433
    .local v4, "appTokensCount":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_49
    if-ge v5, v4, :cond_5b

    .line 4434
    invoke-virtual {v3, v5}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v6, p1, p2}, Lcom/android/server/wm/AppWindowToken;->forAllWindowsUnchecked(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 4436
    return v0

    .line 4433
    :cond_58
    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    .line 4430
    .end local v3  # "appTokens":Lcom/android/server/wm/AppTokenList;
    .end local v4  # "appTokensCount":I
    .end local v5  # "j":I
    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 4441
    .end local v1  # "count":I
    .end local v2  # "i":I
    :cond_5e
    :goto_5e
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$getVisibleTasks$0(Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 3
    .param p0, "visibleTasks"  # Ljava/util/ArrayList;
    .param p1, "task"  # Lcom/android/server/wm/Task;

    .line 4214
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4215
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4217
    :cond_9
    return-void
.end method

.method private removeStackReferenceIfNeeded(Lcom/android/server/wm/TaskStack;)V
    .registers 5
    .param p1, "stack"  # Lcom/android/server/wm/TaskStack;

    .line 4268
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_8

    .line 4269
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    goto :goto_22

    .line 4270
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    if-ne p1, v0, :cond_f

    .line 4271
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    goto :goto_22

    .line 4272
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    if-ne p1, v0, :cond_22

    .line 4273
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    .line 4275
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowManagerService;->setDockedStackCreateStateLocked(ILandroid/graphics/Rect;)V

    .line 4277
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackExistsChanged(Z)V

    .line 4279
    :cond_22
    :goto_22
    return-void
.end method


# virtual methods
.method addStackToDisplay(Lcom/android/server/wm/TaskStack;Z)V
    .registers 4
    .param p1, "stack"  # Lcom/android/server/wm/TaskStack;
    .param p2, "onTop"  # Z

    .line 4225
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->addStackReferenceIfNeeded(Lcom/android/server/wm/TaskStack;)V

    .line 4226
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->addChild(Lcom/android/server/wm/TaskStack;Z)V

    .line 4227
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskStack;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 4228
    return-void
.end method

.method assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;

    .line 4534
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->assignStackOrdering(Landroid/view/SurfaceControl$Transaction;)V

    .line 4536
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 4537
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 4538
    .local v1, "s":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskStack;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 4536
    .end local v1  # "s":Lcom/android/server/wm/TaskStack;
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4540
    .end local v0  # "i":I
    :cond_1a
    return-void
.end method

.method assignStackOrdering(Landroid/view/SurfaceControl$Transaction;)V
    .registers 15
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;

    .line 4544
    const/4 v0, 0x0

    .line 4545
    .local v0, "HOME_STACK_STATE":I
    const/4 v1, 0x1

    .line 4546
    .local v1, "NORMAL_STACK_STATE":I
    const/4 v2, 0x2

    .line 4548
    .local v2, "ALWAYS_ON_TOP_STATE":I
    const/4 v3, 0x0

    .line 4549
    .local v3, "layer":I
    const/4 v4, 0x0

    .line 4550
    .local v4, "layerForAnimationLayer":I
    const/4 v5, 0x0

    .line 4551
    .local v5, "layerForBoostedAnimationLayer":I
    const/4 v6, 0x0

    .line 4553
    .local v6, "layerForHomeAnimationLayer":I
    const/4 v7, 0x0

    .local v7, "state":I
    :goto_8
    const/4 v8, 0x2

    if-gt v7, v8, :cond_78

    .line 4554
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_c
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowList;->size()I

    move-result v10

    if-ge v9, v10, :cond_6f

    .line 4555
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v10, v9}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/TaskStack;

    .line 4556
    .local v10, "s":Lcom/android/server/wm/TaskStack;
    if-nez v7, :cond_25

    invoke-virtual {v10}, Lcom/android/server/wm/TaskStack;->isActivityTypeHome()Z

    move-result v11

    if-nez v11, :cond_25

    .line 4557
    goto :goto_6c

    .line 4559
    :cond_25
    const/4 v11, 0x1

    if-ne v7, v11, :cond_35

    invoke-virtual {v10}, Lcom/android/server/wm/TaskStack;->isActivityTypeHome()Z

    move-result v12

    if-nez v12, :cond_6c

    .line 4560
    invoke-virtual {v10, v11}, Lcom/android/server/wm/TaskStack;->isAlwaysOnTop(Z)Z

    move-result v12

    if-eqz v12, :cond_35

    .line 4561
    goto :goto_6c

    .line 4562
    :cond_35
    if-ne v7, v8, :cond_3e

    invoke-virtual {v10, v11}, Lcom/android/server/wm/TaskStack;->isAlwaysOnTop(Z)Z

    move-result v11

    if-nez v11, :cond_3e

    .line 4563
    goto :goto_6c

    .line 4566
    :cond_3e
    add-int/lit8 v11, v3, 0x1

    .end local v3  # "layer":I
    .local v11, "layer":I
    invoke-virtual {v10, p1, v3}, Lcom/android/server/wm/TaskStack;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 4567
    invoke-virtual {v10}, Lcom/android/server/wm/TaskStack;->inSplitScreenWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_53

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_53

    .line 4568
    add-int/lit8 v12, v11, 0x1

    .end local v11  # "layer":I
    .local v12, "layer":I
    invoke-virtual {p1, v3, v11}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move v11, v12

    .line 4570
    .end local v12  # "layer":I
    .restart local v11  # "layer":I
    :cond_53
    invoke-virtual {v10}, Lcom/android/server/wm/TaskStack;->isTaskAnimating()Z

    move-result v3

    if-nez v3, :cond_5f

    invoke-virtual {v10}, Lcom/android/server/wm/TaskStack;->isAppAnimating()Z

    move-result v3

    if-eqz v3, :cond_65

    :cond_5f
    if-eq v7, v8, :cond_65

    .line 4574
    add-int/lit8 v3, v11, 0x1

    .end local v11  # "layer":I
    .restart local v3  # "layer":I
    move v4, v11

    goto :goto_66

    .line 4576
    .end local v3  # "layer":I
    .restart local v11  # "layer":I
    :cond_65
    move v3, v11

    .end local v11  # "layer":I
    .restart local v3  # "layer":I
    :goto_66
    if-eq v7, v8, :cond_6c

    .line 4577
    add-int/lit8 v11, v3, 0x1

    .end local v3  # "layer":I
    .restart local v11  # "layer":I
    move v5, v3

    move v3, v11

    .line 4554
    .end local v10  # "s":Lcom/android/server/wm/TaskStack;
    .end local v11  # "layer":I
    .restart local v3  # "layer":I
    :cond_6c
    :goto_6c
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 4580
    .end local v9  # "i":I
    :cond_6f
    if-nez v7, :cond_75

    .line 4581
    add-int/lit8 v8, v3, 0x1

    .end local v3  # "layer":I
    .local v8, "layer":I
    move v6, v3

    move v3, v8

    .line 4553
    .end local v8  # "layer":I
    .restart local v3  # "layer":I
    :cond_75
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 4584
    .end local v7  # "state":I
    :cond_78
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    if-eqz v7, :cond_7f

    .line 4585
    invoke-virtual {p1, v7, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 4587
    :cond_7f
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    if-eqz v7, :cond_86

    .line 4588
    invoke-virtual {p1, v7, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 4590
    :cond_86
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    if-eqz v7, :cond_8d

    .line 4591
    invoke-virtual {p1, v7, v6}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 4594
    :cond_8d
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mWinAppAnimationLayer:Landroid/view/SurfaceControl;

    if-eqz v7, :cond_94

    .line 4595
    invoke-virtual {p1, v7, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 4598
    :cond_94
    return-void
.end method

.method forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 5
    .param p2, "traverseTopToBottom"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 4394
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x1

    if-eqz p2, :cond_11

    .line 4395
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4396
    return v0

    .line 4398
    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->forAllExitingAppTokenWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 4399
    return v0

    .line 4402
    :cond_11
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->forAllExitingAppTokenWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 4403
    return v0

    .line 4405
    :cond_18
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 4406
    return v0

    .line 4409
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method getAppAnimationLayer(I)Landroid/view/SurfaceControl;
    .registers 3
    .param p1, "animationLayer"  # I
        .annotation build Lcom/android/server/wm/WindowContainer$AnimationLayer;
        .end annotation
    .end param

    .line 4602
    const/4 v0, 0x1

    if-eq p1, v0, :cond_12

    const/4 v0, 0x2

    if-eq p1, v0, :cond_f

    const/4 v0, 0x3

    if-eq p1, v0, :cond_c

    .line 4613
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    return-object v0

    .line 4607
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mWinAppAnimationLayer:Landroid/view/SurfaceControl;

    return-object v0

    .line 4610
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    return-object v0

    .line 4604
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method getHomeStack()Lcom/android/server/wm/TaskStack;
    .registers 3

    .line 4197
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->access$200(Lcom/android/server/wm/DisplayContent;)I

    move-result v0

    if-nez v0, :cond_22

    .line 4198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHomeStack: Returning null from this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4200
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    return-object v0
.end method

.method getOrientation()I
    .registers 7

    .line 4475
    const-string v0, "vendor.meizu.sys.cts_state"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_29

    .line 4476
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->isStackVisible(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 4477
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 4478
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_29

    .line 4479
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 4480
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 4481
    const/4 v1, 0x1

    return v1

    .line 4486
    .end local v0  # "stack":Lcom/android/server/wm/TaskStack;
    :cond_29
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->isStackVisible(I)Z

    move-result v0

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-nez v0, :cond_d7

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    const/4 v4, 0x5

    .line 4487
    invoke-virtual {v0, v4}, Lcom/android/server/wm/DisplayContent;->isStackVisible(I)Z

    move-result v0

    if-eqz v0, :cond_3e

    goto/16 :goto_d7

    .line 4504
    :cond_3e
    invoke-super {p0}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->getOrientation()I

    move-result v0

    .line 4505
    .local v0, "orientation":I
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.type.automotive"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 4507
    .local v4, "isCar":Z
    const-string v5, "WindowManager"

    if-eqz v4, :cond_7b

    .line 4510
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v1, :cond_7a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forcing UNSPECIFIED orientation in car for display id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    .line 4511
    invoke-static {v2}, Lcom/android/server/wm/DisplayContent;->access$200(Lcom/android/server/wm/DisplayContent;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4510
    invoke-static {v5, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4513
    :cond_7a
    return v3

    .line 4516
    :cond_7b
    const-string v3, " for display id="

    if-eq v0, v2, :cond_a6

    if-eq v0, v1, :cond_a6

    .line 4518
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v1, :cond_a5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App is requesting an orientation, return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    .line 4520
    invoke-static {v2}, Lcom/android/server/wm/DisplayContent;->access$200(Lcom/android/server/wm/DisplayContent;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4518
    invoke-static {v5, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4521
    :cond_a5
    return v0

    .line 4524
    :cond_a6
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v1, :cond_d0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No app is requesting an orientation, return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    .line 4525
    invoke-static {v2}, Lcom/android/server/wm/DisplayContent;->access$400(Lcom/android/server/wm/DisplayContent;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    .line 4526
    invoke-static {v2}, Lcom/android/server/wm/DisplayContent;->access$200(Lcom/android/server/wm/DisplayContent;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4524
    invoke-static {v5, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4529
    :cond_d0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v1}, Lcom/android/server/wm/DisplayContent;->access$400(Lcom/android/server/wm/DisplayContent;)I

    move-result v1

    return v1

    .line 4492
    .end local v0  # "orientation":I
    .end local v4  # "isCar":Z
    :cond_d7
    :goto_d7
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_106

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_106

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 4493
    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v0

    if-eqz v0, :cond_106

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 4494
    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isHomeStackResizable()Z

    move-result v0

    if-eqz v0, :cond_fd

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    .line 4495
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->matchParentBounds()Z

    move-result v0

    if-nez v0, :cond_106

    .line 4496
    :cond_fd
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getOrientation()I

    move-result v0

    .line 4497
    .restart local v0  # "orientation":I
    if-eq v0, v2, :cond_106

    .line 4498
    return v0

    .line 4501
    .end local v0  # "orientation":I
    :cond_106
    return v3
.end method

.method getPinnedStack()Lcom/android/server/wm/TaskStack;
    .registers 2

    .line 4204
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    return-object v0
.end method

.method getSplitScreenDividerAnchor()Landroid/view/SurfaceControl;
    .registers 2

    .line 4618
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;
    .registers 2

    .line 4208
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    return-object v0
.end method

.method getStack(II)Lcom/android/server/wm/TaskStack;
    .registers 6
    .param p1, "windowingMode"  # I
    .param p2, "activityType"  # I

    .line 4167
    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    .line 4168
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    return-object v0

    .line 4170
    :cond_6
    if-ne p1, v0, :cond_b

    .line 4171
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    return-object v0

    .line 4172
    :cond_b
    const/4 v0, 0x3

    if-ne p1, v0, :cond_11

    .line 4173
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    return-object v0

    .line 4175
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->access$100(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1d
    if-ltz v0, :cond_3e

    .line 4176
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v1}, Lcom/android/server/wm/DisplayContent;->access$100(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 4177
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-nez p2, :cond_34

    .line 4178
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v2

    if-ne p1, v2, :cond_34

    .line 4181
    return-object v1

    .line 4183
    :cond_34
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/TaskStack;->isCompatible(II)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 4184
    return-object v1

    .line 4175
    .end local v1  # "stack":Lcom/android/server/wm/TaskStack;
    :cond_3b
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    .line 4187
    .end local v0  # "i":I
    :cond_3e
    const/4 v0, 0x0

    return-object v0
.end method

.method getTopStack()Lcom/android/server/wm/TaskStack;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4192
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->access$100(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v0

    if-lez v0, :cond_25

    .line 4193
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->access$100(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v1}, Lcom/android/server/wm/DisplayContent;->access$100(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    .line 4192
    :goto_26
    return-object v0
.end method

.method getVisibleTasks()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    .line 4212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4213
    .local v0, "visibleTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayContent$TaskStackContainers$rQnI0Y8R9ptQ09cGHwbCHDiG2FY;

    invoke-direct {v1, v0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$TaskStackContainers$rQnI0Y8R9ptQ09cGHwbCHDiG2FY;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 4218
    return-object v0
.end method

.method isOnTop()Z
    .registers 2

    .line 4297
    const/4 v0, 0x1

    return v0
.end method

.method onParentChanged()V
    .registers 4

    .line 4623
    invoke-super {p0}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->onParentChanged()V

    .line 4624
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7f

    .line 4625
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 4626
    const-string v2, "animationLayer"

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 4627
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4628
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 4629
    const-string v2, "boostedAnimationLayer"

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 4630
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4631
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 4632
    const-string v2, "homeAnimationLayer"

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 4633
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4634
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 4635
    const-string v2, "splitScreenDividerAnchor"

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 4636
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    .line 4638
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 4639
    const-string v1, "winAnimationLayer"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 4640
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mWinAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4642
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4643
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mWinAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4645
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4647
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4648
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    .line 4649
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 4650
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->scheduleAnimation()V

    goto :goto_a2

    .line 4652
    :cond_7f
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->remove()V

    .line 4653
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4654
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->remove()V

    .line 4655
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4656
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->remove()V

    .line 4657
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4658
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->remove()V

    .line 4659
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    .line 4661
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mWinAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->remove()V

    .line 4662
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mWinAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4665
    :goto_a2
    return-void
.end method

.method onStackWindowingModeChanged(Lcom/android/server/wm/TaskStack;)V
    .registers 4
    .param p1, "stack"  # Lcom/android/server/wm/TaskStack;

    .line 4231
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->removeStackReferenceIfNeeded(Lcom/android/server/wm/TaskStack;)V

    .line 4232
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->addStackReferenceIfNeeded(Lcom/android/server/wm/TaskStack;)V

    .line 4233
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    if-ne p1, v0, :cond_17

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getTopStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eq v0, p1, :cond_17

    .line 4235
    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->positionChildAt(ILcom/android/server/wm/TaskStack;Z)V

    .line 4237
    :cond_17
    return-void
.end method

.method positionChildAt(ILcom/android/server/wm/TaskStack;Z)V
    .registers 9
    .param p1, "position"  # I
    .param p2, "child"  # Lcom/android/server/wm/TaskStack;
    .param p3, "includingParents"  # Z

    .line 4302
    invoke-virtual {p2}, Lcom/android/server/wm/TaskStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    if-eqz v0, :cond_35

    if-eq p1, v1, :cond_35

    .line 4305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring move of always-on-top stack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to bottom"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4309
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 4310
    .local v0, "currentPosition":I
    invoke-super {p0, v0, p2, v2}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 4311
    return-void

    .line 4314
    .end local v0  # "currentPosition":I
    :cond_35
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->findPositionForStack(ILcom/android/server/wm/TaskStack;Z)I

    move-result v0

    .line 4315
    .local v0, "targetPosition":I
    invoke-super {p0, v0, p2, p3}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 4317
    if-eqz p3, :cond_4f

    .line 4322
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 4323
    .local v2, "topChildPosition":I
    if-ge v0, v2, :cond_4f

    if-lt p1, v2, :cond_4f

    .line 4324
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4, v1, p0, v3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 4329
    .end local v2  # "topChildPosition":I
    :cond_4f
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 4330
    return-void
.end method

.method bridge synthetic positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .registers 4

    .line 4127
    check-cast p2, Lcom/android/server/wm/TaskStack;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->positionChildAt(ILcom/android/server/wm/TaskStack;Z)V

    return-void
.end method

.method protected removeChild(Lcom/android/server/wm/TaskStack;)V
    .registers 2
    .param p1, "stack"  # Lcom/android/server/wm/TaskStack;

    .line 4290
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 4291
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->removeStackReferenceIfNeeded(Lcom/android/server/wm/TaskStack;)V

    .line 4292
    return-void
.end method

.method protected bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 4127
    check-cast p1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->removeChild(Lcom/android/server/wm/TaskStack;)V

    return-void
.end method

.method removeExistingAppTokensIfPossible()V
    .registers 7

    .line 4454
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_64

    .line 4455
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    iget-object v1, v1, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 4456
    .local v1, "appTokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_1a
    if-ltz v2, :cond_61

    .line 4457
    invoke-virtual {v1, v2}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 4458
    .local v3, "token":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v4, v3, Lcom/android/server/wm/AppWindowToken;->hasVisible:Z

    if-nez v4, :cond_5e

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5e

    iget-boolean v4, v3, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-eqz v4, :cond_3a

    .line 4459
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 4463
    :cond_3a
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->cancelAnimation()V

    .line 4464
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-nez v4, :cond_45

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TOKEN_MOVEMENT:Z

    if-eqz v4, :cond_5b

    :cond_45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "performLayout: App token exiting now removed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WindowManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4466
    :cond_5b
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->removeIfPossible()V

    .line 4456
    .end local v3  # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_5e
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 4454
    .end local v1  # "appTokens":Lcom/android/server/wm/AppTokenList;
    .end local v2  # "j":I
    :cond_61
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 4470
    .end local v0  # "i":I
    :cond_64
    return-void
.end method

.method setExitingTokensHasVisible(Z)V
    .registers 6
    .param p1, "hasVisible"  # Z

    .line 4445
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_2a

    .line 4446
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    iget-object v1, v1, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 4447
    .local v1, "appTokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_1a
    if-ltz v2, :cond_27

    .line 4448
    invoke-virtual {v1, v2}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    iput-boolean p1, v3, Lcom/android/server/wm/AppWindowToken;->hasVisible:Z

    .line 4447
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 4445
    .end local v1  # "appTokens":Lcom/android/server/wm/AppTokenList;
    .end local v2  # "j":I
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 4451
    .end local v0  # "i":I
    :cond_2a
    return-void
.end method
