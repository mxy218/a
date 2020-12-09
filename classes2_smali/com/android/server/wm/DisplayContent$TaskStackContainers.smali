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

.field final synthetic this$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;)V
    .registers 3

    .line 4131
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    .line 4132
    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 4106
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4107
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4108
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4123
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    .line 4127
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    .line 4128
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    .line 4129
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    .line 4133
    return-void
.end method

.method private addChild(Lcom/android/server/wm/TaskStack;Z)V
    .registers 4

    .line 4255
    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowList;->size()I

    move-result p2

    goto :goto_a

    :cond_9
    const/4 p2, 0x0

    :goto_a
    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->findPositionForStack(ILcom/android/server/wm/TaskStack;Z)I

    move-result p2

    .line 4257
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 4258
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 4259
    return-void
.end method

.method private addStackReferenceIfNeeded(Lcom/android/server/wm/TaskStack;)V
    .registers 7

    .line 4213
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->isActivityTypeHome()Z

    move-result v0

    const-string v1, " stack="

    const-string v2, " already exist on display="

    if-eqz v0, :cond_36

    .line 4214
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_11

    .line 4219
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    goto :goto_36

    .line 4215
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

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4221
    :cond_36
    :goto_36
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v0

    .line 4222
    const/4 v3, 0x2

    if-ne v0, v3, :cond_69

    .line 4223
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_44

    .line 4228
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    goto :goto_a0

    .line 4224
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStackReferenceIfNeeded: pinned stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4229
    :cond_69
    const/4 v3, 0x3

    if-ne v0, v3, :cond_a0

    .line 4230
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_7b

    .line 4235
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    .line 4236
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackExistsChanged(Z)V

    goto :goto_a0

    .line 4231
    :cond_7b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStackReferenceIfNeeded: split-screen-primary stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4238
    :cond_a0
    :goto_a0
    return-void
.end method

.method private findPositionForStack(ILcom/android/server/wm/TaskStack;Z)I
    .registers 9

    .line 4314
    invoke-virtual {p2}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v0

    const v1, 0x7fffffff

    if-eqz v0, :cond_a

    .line 4315
    return v1

    .line 4318
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 4319
    nop

    .line 4320
    move v2, v0

    :goto_14
    const/high16 v3, -0x80000000

    if-ltz v2, :cond_3b

    .line 4321
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getStacks()Lcom/android/server/wm/WindowList;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, p2, :cond_38

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getStacks()Lcom/android/server/wm/WindowList;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->isAlwaysOnTop()Z

    move-result v4

    if-nez v4, :cond_38

    .line 4322
    nop

    .line 4323
    goto :goto_3c

    .line 4320
    :cond_38
    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    :cond_3b
    move v2, v3

    .line 4328
    :goto_3c
    nop

    .line 4330
    nop

    .line 4332
    invoke-virtual {p2}, Lcom/android/server/wm/TaskStack;->isAlwaysOnTop()Z

    move-result v4

    if-eqz v4, :cond_60

    .line 4333
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v4}, Lcom/android/server/wm/DisplayContent;->access$300(Lcom/android/server/wm/DisplayContent;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 4335
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getStacks()Lcom/android/server/wm/WindowList;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 4338
    :cond_5a
    if-eq v2, v3, :cond_5e

    .line 4339
    move v3, v2

    goto :goto_65

    :cond_5e
    move v3, v0

    goto :goto_65

    .line 4342
    :cond_60
    if-eq v2, v3, :cond_63

    .line 4343
    goto :goto_64

    :cond_63
    const/4 v2, 0x0

    :goto_64
    move v1, v2

    .line 4346
    :goto_65
    nop

    .line 4347
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4348
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4350
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getStacks()Lcom/android/server/wm/WindowList;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 4356
    if-eq v0, p1, :cond_80

    if-nez p3, :cond_7e

    if-ge v0, p2, :cond_80

    .line 4358
    :cond_7e
    add-int/lit8 v0, v0, 0x1

    .line 4361
    :cond_80
    return v0
.end method

.method private forAllExitingAppTokenWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 4391
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_31

    .line 4392
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_b
    if-ltz v2, :cond_5e

    .line 4393
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    iget-object v3, v3, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 4394
    invoke-virtual {v3}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_1c
    if-ltz v4, :cond_2e

    .line 4395
    invoke-virtual {v3, v4}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/wm/AppWindowToken;->forAllWindowsUnchecked(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 4397
    return v1

    .line 4394
    :cond_2b
    add-int/lit8 v4, v4, -0x1

    goto :goto_1c

    .line 4392
    :cond_2e
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 4402
    :cond_31
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 4403
    move v3, v0

    :goto_38
    if-ge v3, v2, :cond_5e

    .line 4404
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskStack;

    iget-object v4, v4, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 4405
    invoke-virtual {v4}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v5

    .line 4406
    move v6, v0

    :goto_49
    if-ge v6, v5, :cond_5b

    .line 4407
    invoke-virtual {v4, v6}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v7, p1, p2}, Lcom/android/server/wm/AppWindowToken;->forAllWindowsUnchecked(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 4409
    return v1

    .line 4406
    :cond_58
    add-int/lit8 v6, v6, 0x1

    goto :goto_49

    .line 4403
    :cond_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 4414
    :cond_5e
    return v0
.end method

.method static synthetic lambda$getVisibleTasks$0(Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 3

    .line 4187
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4188
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4190
    :cond_9
    return-void
.end method

.method private removeStackReferenceIfNeeded(Lcom/android/server/wm/TaskStack;)V
    .registers 4

    .line 4241
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_8

    .line 4242
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    goto :goto_22

    .line 4243
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    if-ne p1, v0, :cond_f

    .line 4244
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    goto :goto_22

    .line 4245
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    if-ne p1, v0, :cond_22

    .line 4246
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    .line 4248
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/WindowManagerService;->setDockedStackCreateStateLocked(ILandroid/graphics/Rect;)V

    .line 4250
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackExistsChanged(Z)V

    .line 4252
    :cond_22
    :goto_22
    return-void
.end method


# virtual methods
.method addStackToDisplay(Lcom/android/server/wm/TaskStack;Z)V
    .registers 3

    .line 4198
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->addStackReferenceIfNeeded(Lcom/android/server/wm/TaskStack;)V

    .line 4199
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->addChild(Lcom/android/server/wm/TaskStack;Z)V

    .line 4200
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/TaskStack;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 4201
    return-void
.end method

.method assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    .line 4495
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->assignStackOrdering(Landroid/view/SurfaceControl$Transaction;)V

    .line 4497
    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 4498
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 4499
    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskStack;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 4497
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4501
    :cond_1a
    return-void
.end method

.method assignStackOrdering(Landroid/view/SurfaceControl$Transaction;)V
    .registers 14

    .line 4509
    nop

    .line 4510
    nop

    .line 4511
    nop

    .line 4512
    nop

    .line 4514
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_a
    const/4 v6, 0x2

    if-gt v1, v6, :cond_82

    .line 4515
    move v7, v3

    move v3, v2

    move v2, v0

    :goto_10
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowList;->size()I

    move-result v8

    if-ge v2, v8, :cond_77

    .line 4516
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v8, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/TaskStack;

    .line 4517
    if-nez v1, :cond_29

    invoke-virtual {v8}, Lcom/android/server/wm/TaskStack;->isActivityTypeHome()Z

    move-result v9

    if-nez v9, :cond_29

    .line 4518
    goto :goto_74

    .line 4519
    :cond_29
    const/4 v9, 0x1

    if-ne v1, v9, :cond_39

    invoke-virtual {v8}, Lcom/android/server/wm/TaskStack;->isActivityTypeHome()Z

    move-result v9

    if-nez v9, :cond_74

    .line 4520
    invoke-virtual {v8}, Lcom/android/server/wm/TaskStack;->isAlwaysOnTop()Z

    move-result v9

    if-eqz v9, :cond_39

    .line 4521
    goto :goto_74

    .line 4522
    :cond_39
    if-ne v1, v6, :cond_42

    invoke-virtual {v8}, Lcom/android/server/wm/TaskStack;->isAlwaysOnTop()Z

    move-result v9

    if-nez v9, :cond_42

    .line 4523
    goto :goto_74

    .line 4525
    :cond_42
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v8, p1, v5}, Lcom/android/server/wm/TaskStack;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 4526
    invoke-virtual {v8}, Lcom/android/server/wm/TaskStack;->inSplitScreenWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_57

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    if-eqz v5, :cond_57

    .line 4527
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {p1, v5, v9}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move v9, v10

    .line 4529
    :cond_57
    invoke-virtual {v8}, Lcom/android/server/wm/TaskStack;->isTaskAnimating()Z

    move-result v5

    if-nez v5, :cond_63

    invoke-virtual {v8}, Lcom/android/server/wm/TaskStack;->isAppAnimating()Z

    move-result v5

    if-eqz v5, :cond_68

    :cond_63
    if-eq v1, v6, :cond_68

    .line 4533
    add-int/lit8 v3, v9, 0x1

    goto :goto_6b

    .line 4535
    :cond_68
    move v11, v9

    move v9, v3

    move v3, v11

    :goto_6b
    if-eq v1, v6, :cond_72

    .line 4536
    add-int/lit8 v5, v3, 0x1

    move v7, v3

    move v3, v9

    goto :goto_74

    .line 4535
    :cond_72
    move v5, v3

    move v3, v9

    .line 4515
    :cond_74
    :goto_74
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 4539
    :cond_77
    if-nez v1, :cond_7d

    .line 4540
    add-int/lit8 v2, v5, 0x1

    move v4, v5

    move v5, v2

    .line 4514
    :cond_7d
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    move v3, v7

    goto :goto_a

    .line 4543
    :cond_82
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_89

    .line 4544
    invoke-virtual {p1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 4546
    :cond_89
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_90

    .line 4547
    invoke-virtual {p1, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 4549
    :cond_90
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_97

    .line 4550
    invoke-virtual {p1, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 4552
    :cond_97
    return-void
.end method

.method forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 4367
    const/4 v0, 0x1

    if-eqz p2, :cond_11

    .line 4368
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4369
    return v0

    .line 4371
    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->forAllExitingAppTokenWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 4372
    return v0

    .line 4375
    :cond_11
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->forAllExitingAppTokenWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 4376
    return v0

    .line 4378
    :cond_18
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 4379
    return v0

    .line 4382
    :cond_1f
    const/4 p1, 0x0

    return p1
.end method

.method getAppAnimationLayer(I)Landroid/view/SurfaceControl;
    .registers 3
    .param p1  # I
        .annotation build Lcom/android/server/wm/WindowContainer$AnimationLayer;
        .end annotation
    .end param

    .line 4556
    const/4 v0, 0x1

    if-eq p1, v0, :cond_c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    .line 4563
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    return-object p1

    .line 4560
    :cond_9
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    return-object p1

    .line 4558
    :cond_c
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    return-object p1
.end method

.method getHomeStack()Lcom/android/server/wm/TaskStack;
    .registers 3

    .line 4170
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->access$200(Lcom/android/server/wm/DisplayContent;)I

    move-result v0

    if-nez v0, :cond_22

    .line 4171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHomeStack: Returning null from this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4173
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    return-object v0
.end method

.method getOrientation()I
    .registers 7

    .line 4447
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->isStackVisible(I)Z

    move-result v0

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    const/4 v4, 0x5

    .line 4448
    invoke-virtual {v0, v4}, Lcom/android/server/wm/DisplayContent;->isStackVisible(I)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_36

    .line 4465
    :cond_15
    invoke-super {p0}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->getOrientation()I

    move-result v0

    .line 4466
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.type.automotive"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 4468
    if-eqz v4, :cond_2a

    .line 4474
    return v3

    .line 4477
    :cond_2a
    if-eq v0, v2, :cond_2f

    if-eq v0, v1, :cond_2f

    .line 4482
    return v0

    .line 4490
    :cond_2f
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->access$400(Lcom/android/server/wm/DisplayContent;)I

    move-result v0

    return v0

    .line 4453
    :cond_36
    :goto_36
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_65

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 4454
    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 4455
    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isHomeStackResizable()Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    .line 4456
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->matchParentBounds()Z

    move-result v0

    if-nez v0, :cond_65

    .line 4457
    :cond_5c
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getOrientation()I

    move-result v0

    .line 4458
    if-eq v0, v2, :cond_65

    .line 4459
    return v0

    .line 4462
    :cond_65
    return v3
.end method

.method getPinnedStack()Lcom/android/server/wm/TaskStack;
    .registers 2

    .line 4177
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    return-object v0
.end method

.method getSplitScreenDividerAnchor()Landroid/view/SurfaceControl;
    .registers 2

    .line 4568
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;
    .registers 2

    .line 4181
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    return-object v0
.end method

.method getStack(II)Lcom/android/server/wm/TaskStack;
    .registers 6

    .line 4140
    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    .line 4141
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    return-object p1

    .line 4143
    :cond_6
    if-ne p1, v0, :cond_b

    .line 4144
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    return-object p1

    .line 4145
    :cond_b
    const/4 v0, 0x3

    if-ne p1, v0, :cond_11

    .line 4146
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    return-object p1

    .line 4148
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->access$100(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1d
    if-ltz v0, :cond_3e

    .line 4149
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v1}, Lcom/android/server/wm/DisplayContent;->access$100(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 4150
    if-nez p2, :cond_34

    .line 4151
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v2

    if-ne p1, v2, :cond_34

    .line 4154
    return-object v1

    .line 4156
    :cond_34
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/TaskStack;->isCompatible(II)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 4157
    return-object v1

    .line 4148
    :cond_3b
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    .line 4160
    :cond_3e
    const/4 p1, 0x0

    return-object p1
.end method

.method getTopStack()Lcom/android/server/wm/TaskStack;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4165
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->access$100(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v0

    if-lez v0, :cond_25

    .line 4166
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

    .line 4165
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

    .line 4185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4186
    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayContent$TaskStackContainers$rQnI0Y8R9ptQ09cGHwbCHDiG2FY;

    invoke-direct {v1, v0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$TaskStackContainers$rQnI0Y8R9ptQ09cGHwbCHDiG2FY;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 4191
    return-object v0
.end method

.method isOnTop()Z
    .registers 2

    .line 4270
    const/4 v0, 0x1

    return v0
.end method

.method onParentChanged()V
    .registers 4

    .line 4573
    invoke-super {p0}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->onParentChanged()V

    .line 4574
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_69

    .line 4575
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 4576
    const-string v2, "animationLayer"

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 4577
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4578
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 4579
    const-string v2, "boostedAnimationLayer"

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 4580
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4581
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 4582
    const-string v2, "homeAnimationLayer"

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 4583
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4584
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 4585
    const-string v1, "splitScreenDividerAnchor"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 4586
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    .line 4587
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4588
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4589
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4590
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    .line 4591
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 4592
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->scheduleAnimation()V

    goto :goto_94

    .line 4594
    :cond_69
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Lcom/android/server/wm/TransactionFactory;

    invoke-interface {v0}, Lcom/android/server/wm/TransactionFactory;->make()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4595
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4596
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4597
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    .line 4598
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 4599
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 4600
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4601
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4602
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4603
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    .line 4605
    :goto_94
    return-void
.end method

.method onStackWindowingModeChanged(Lcom/android/server/wm/TaskStack;)V
    .registers 4

    .line 4204
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->removeStackReferenceIfNeeded(Lcom/android/server/wm/TaskStack;)V

    .line 4205
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->addStackReferenceIfNeeded(Lcom/android/server/wm/TaskStack;)V

    .line 4206
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    if-ne p1, v0, :cond_17

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getTopStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eq v0, p1, :cond_17

    .line 4208
    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->positionChildAt(ILcom/android/server/wm/TaskStack;Z)V

    .line 4210
    :cond_17
    return-void
.end method

.method positionChildAt(ILcom/android/server/wm/TaskStack;Z)V
    .registers 7

    .line 4275
    invoke-virtual {p2}, Lcom/android/server/wm/TaskStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    if-eqz v0, :cond_35

    if-eq p1, v1, :cond_35

    .line 4278
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring move of always-on-top stack="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " to bottom"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "WindowManager"

    invoke-static {p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4282
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 4283
    invoke-super {p0, p1, p2, v2}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 4284
    return-void

    .line 4287
    :cond_35
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->findPositionForStack(ILcom/android/server/wm/TaskStack;Z)I

    move-result v0

    .line 4288
    invoke-super {p0, v0, p2, p3}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 4290
    if-eqz p3, :cond_4f

    .line 4295
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    .line 4296
    if-ge v0, p2, :cond_4f

    if-lt p1, p2, :cond_4f

    .line 4297
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    invoke-virtual {p1, v1, p0, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 4302
    :cond_4f
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 4303
    return-void
.end method

.method bridge synthetic positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .registers 4

    .line 4102
    check-cast p2, Lcom/android/server/wm/TaskStack;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->positionChildAt(ILcom/android/server/wm/TaskStack;Z)V

    return-void
.end method

.method protected removeChild(Lcom/android/server/wm/TaskStack;)V
    .registers 2

    .line 4263
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 4264
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->removeStackReferenceIfNeeded(Lcom/android/server/wm/TaskStack;)V

    .line 4265
    return-void
.end method

.method protected bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 4102
    check-cast p1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->removeChild(Lcom/android/server/wm/TaskStack;)V

    return-void
.end method

.method removeExistingAppTokensIfPossible()V
    .registers 6

    .line 4427
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_46

    .line 4428
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    iget-object v1, v1, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 4429
    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1a
    if-ltz v2, :cond_43

    .line 4430
    invoke-virtual {v1, v2}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 4431
    iget-boolean v4, v3, Lcom/android/server/wm/AppWindowToken;->hasVisible:Z

    if-nez v4, :cond_40

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    iget-boolean v4, v3, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-eqz v4, :cond_3a

    .line 4432
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 4436
    :cond_3a
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->cancelAnimation()V

    .line 4439
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->removeIfPossible()V

    .line 4429
    :cond_40
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 4427
    :cond_43
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 4443
    :cond_46
    return-void
.end method

.method setExitingTokensHasVisible(Z)V
    .registers 6

    .line 4418
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_2a

    .line 4419
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    iget-object v1, v1, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 4420
    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1a
    if-ltz v2, :cond_27

    .line 4421
    invoke-virtual {v1, v2}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    iput-boolean p1, v3, Lcom/android/server/wm/AppWindowToken;->hasVisible:Z

    .line 4420
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 4418
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 4424
    :cond_2a
    return-void
.end method
