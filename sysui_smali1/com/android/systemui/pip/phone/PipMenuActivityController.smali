.class public Lcom/android/systemui/pip/phone/PipMenuActivityController;
.super Ljava/lang/Object;
.source "PipMenuActivityController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;
    }
.end annotation


# instance fields
.field private mActivityManager:Landroid/app/IActivityManager;

.field private mAppActions:Landroid/content/pm/ParceledListSlice;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaActionListener:Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;

.field private mMediaActions:Landroid/content/pm/ParceledListSlice;

.field private mMediaController:Lcom/android/systemui/pip/phone/PipMediaController;

.field private mMenuState:I

.field private mMessenger:Landroid/os/Messenger;

.field private mOnAnimationEndRunnable:Ljava/lang/Runnable;

.field private mStartActivityRequested:Z

.field private mStartActivityRequestedTime:J

.field private mStartActivityRequestedTimeoutRunnable:Ljava/lang/Runnable;

.field private mTmpDismissFractionData:Landroid/os/Bundle;

.field private mToActivityMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Lcom/android/systemui/pip/phone/PipMediaController;Lcom/android/systemui/shared/system/InputConsumerController;)V
    .registers 7

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mListeners:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mTmpDismissFractionData:Landroid/os/Bundle;

    .line 135
    new-instance v0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivityController;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mHandler:Landroid/os/Handler;

    .line 176
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMessenger:Landroid/os/Messenger;

    .line 178
    new-instance v0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$46Yr3xVHMZsGyZiGhSKF_IPBnzk;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$46Yr3xVHMZsGyZiGhSKF_IPBnzk;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivityController;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequestedTimeoutRunnable:Ljava/lang/Runnable;

    .line 187
    new-instance v0, Lcom/android/systemui/pip/phone/PipMenuActivityController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController$2;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivityController;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaActionListener:Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;

    .line 197
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mContext:Landroid/content/Context;

    .line 198
    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mActivityManager:Landroid/app/IActivityManager;

    .line 199
    iput-object p3, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaController:Lcom/android/systemui/pip/phone/PipMediaController;

    .line 200
    iput-object p4, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/pip/phone/PipMenuActivityController;IZ)V
    .registers 3

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->onMenuStateChanged(IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Ljava/util/ArrayList;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Landroid/os/Messenger;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/pip/phone/PipMenuActivityController;Landroid/os/Messenger;)Landroid/os/Messenger;
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/pip/phone/PipMenuActivityController;Z)V
    .registers 2

    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->setStartActivityRequested(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Ljava/lang/Runnable;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mOnAnimationEndRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/systemui/pip/phone/PipMenuActivityController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mOnAnimationEndRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/systemui/pip/phone/PipMenuActivityController;Landroid/content/pm/ParceledListSlice;)Landroid/content/pm/ParceledListSlice;
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaActions:Landroid/content/pm/ParceledListSlice;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/pip/phone/PipMenuActivityController;)V
    .registers 1

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->updateMenuActions()V

    return-void
.end method

.method private isStartActivityRequestedElapsed()Z
    .registers 5

    .line 475
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequestedTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long p0, v0, v2

    if-ltz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method private isValidActions(Landroid/content/pm/ParceledListSlice;)Z
    .registers 2

    if-eqz p1, :cond_e

    .line 468
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method static synthetic lambda$onMenuStateChanged$1(IZLcom/android/systemui/pip/phone/PipMenuActivityController$Listener;)V
    .registers 3

    .line 489
    invoke-interface {p2, p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;->onPipMenuStateChanged(IZ)V

    return-void
.end method

.method private onMenuStateChanged(IZ)V
    .registers 5

    .line 488
    iget v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMenuState:I

    if-eq p1, v0, :cond_20

    .line 489
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$oZuzXTzYX29YiUgUX8-q8QZcGtw;

    invoke-direct {v1, p1, p2}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$oZuzXTzYX29YiUgUX8-q8QZcGtw;-><init>(IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_19

    .line 493
    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaController:Lcom/android/systemui/pip/phone/PipMediaController;

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaActionListener:Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;

    invoke-virtual {p2, v0}, Lcom/android/systemui/pip/phone/PipMediaController;->addListener(Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;)V

    goto :goto_20

    .line 497
    :cond_19
    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaController:Lcom/android/systemui/pip/phone/PipMediaController;

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaActionListener:Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;

    invoke-virtual {p2, v0}, Lcom/android/systemui/pip/phone/PipMediaController;->removeListener(Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;)V

    .line 500
    :cond_20
    :goto_20
    iput p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMenuState:I

    return-void
.end method

.method private resolveMenuActions()Landroid/content/pm/ParceledListSlice;
    .registers 2

    .line 390
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mAppActions:Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->isValidActions(Landroid/content/pm/ParceledListSlice;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 391
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mAppActions:Landroid/content/pm/ParceledListSlice;

    return-object p0

    .line 393
    :cond_b
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaActions:Landroid/content/pm/ParceledListSlice;

    return-object p0
.end method

.method private setStartActivityRequested(Z)V
    .registers 4

    .line 504
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequestedTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 505
    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequested:Z

    if-eqz p1, :cond_10

    .line 506
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    goto :goto_12

    :cond_10
    const-wide/16 v0, 0x0

    :goto_12
    iput-wide v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequestedTime:J

    return-void
.end method

.method private startMenuActivity(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .registers 12

    const-string v0, "PipMenuActController"

    const/4 v1, 0x0

    .line 402
    :try_start_3
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3, v1}, Landroid/app/IActivityTaskManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    if-eqz v2, :cond_72

    .line 404
    iget-object v3, v2, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    if-eqz v3, :cond_72

    iget-object v3, v2, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v3, v3

    if-lez v3, :cond_72

    .line 406
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/systemui/pip/phone/PipMenuActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "messenger"

    .line 407
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "actions"

    .line 408
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->resolveMenuActions()Landroid/content/pm/ParceledListSlice;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p2, :cond_38

    const-string/jumbo v4, "stack_bounds"

    .line 410
    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_38
    if-eqz p3, :cond_3f

    const-string p2, "movement_bounds"

    .line 413
    invoke-virtual {v3, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_3f
    const-string p2, "menu_state"

    .line 415
    invoke-virtual {v3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "allow_timeout"

    .line 416
    invoke-virtual {v3, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "resize_menu_on_show"

    .line 417
    invoke-virtual {v3, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 418
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mContext:Landroid/content/Context;

    invoke-static {p1, v1, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 419
    iget-object p2, v2, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    iget-object p3, v2, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length p3, p3

    const/4 p4, 0x1

    sub-int/2addr p3, p4

    aget p2, p2, p3

    invoke-virtual {p1, p2}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 421
    invoke-virtual {p1, p4, p4}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    .line 422
    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    sget-object p3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p2, v3, p1, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 423
    invoke-direct {p0, p4}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->setStartActivityRequested(Z)V

    goto :goto_81

    :cond_72
    const-string p1, "No PIP tasks found"

    .line 425
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_77} :catch_78

    goto :goto_81

    :catch_78
    move-exception p1

    .line 428
    invoke-direct {p0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->setStartActivityRequested(Z)V

    const-string p0, "Error showing PIP menu activity"

    .line 429
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_81
    return-void
.end method

.method private updateMenuActions()V
    .registers 6

    const-string v0, "PipMenuActController"

    .line 437
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_45

    const/4 v1, 0x0

    .line 441
    :try_start_7
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/app/IActivityTaskManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 444
    iget-object v1, v2, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_16

    goto :goto_1c

    :catch_16
    move-exception v2

    const-string v3, "Error showing PIP menu activity"

    .line 447
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 450
    :cond_1c
    :goto_1c
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "stack_bounds"

    .line 451
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 452
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->resolveMenuActions()Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    const-string v3, "actions"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 453
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v3, 0x4

    .line 454
    iput v3, v1, Landroid/os/Message;->what:I

    .line 455
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 457
    :try_start_39
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {p0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3e} :catch_3f

    goto :goto_45

    :catch_3f
    move-exception p0

    const-string v1, "Could not notify menu activity to update actions"

    .line 459
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_45
    :goto_45
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;)V
    .registers 3

    .line 234
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 235
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "PipMenuActController"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 528
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mMenuState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMenuState:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 529
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mToActivityMessenger="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 530
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mListeners="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 531
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mStartActivityRequested="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequested:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 532
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mStartActivityRequestedTime="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequestedTime:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method handleTouchEvent(Landroid/view/MotionEvent;)V
    .registers 4

    .line 513
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_1b

    .line 514
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x7

    .line 515
    iput v1, v0, Landroid/os/Message;->what:I

    .line 516
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 518
    :try_start_d
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    goto :goto_1b

    :catch_13
    move-exception p0

    const-string p1, "PipMenuActController"

    const-string v0, "Could not dispatch touch event"

    .line 520
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1b
    :goto_1b
    return-void
.end method

.method public hideMenu()V
    .registers 3

    .line 328
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_19

    .line 329
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 330
    iput v1, v0, Landroid/os/Message;->what:I

    .line 332
    :try_start_b
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11

    goto :goto_19

    :catch_11
    move-exception p0

    const-string v0, "PipMenuActController"

    const-string v1, "Could not notify menu to hide"

    .line 334
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19
    :goto_19
    return-void
.end method

.method public hideMenuWithoutResize()V
    .registers 2

    const/4 v0, 0x0

    .line 375
    invoke-direct {p0, v0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->onMenuStateChanged(IZ)V

    return-void
.end method

.method public isMenuActivityVisible()Z
    .registers 1

    .line 204
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public synthetic lambda$new$0$PipMenuActivityController()V
    .registers 2

    const/4 v0, 0x0

    .line 179
    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->setStartActivityRequested(Z)V

    .line 180
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mOnAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    .line 181
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 182
    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mOnAnimationEndRunnable:Ljava/lang/Runnable;

    :cond_e
    const-string p0, "PipMenuActController"

    const-string v0, "Expected start menu activity request timed out"

    .line 184
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivityPinned()V
    .registers 1

    .line 208
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/InputConsumerController;->registerInputConsumer()V

    return-void
.end method

.method public onActivityUnpinned()V
    .registers 2

    .line 212
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->hideMenu()V

    .line 213
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/InputConsumerController;->unregisterInputConsumer()V

    const/4 v0, 0x0

    .line 214
    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->setStartActivityRequested(Z)V

    return-void
.end method

.method public onPinnedStackAnimationEnded()V
    .registers 3

    .line 219
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_19

    .line 220
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    .line 221
    iput v1, v0, Landroid/os/Message;->what:I

    .line 223
    :try_start_b
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11

    goto :goto_19

    :catch_11
    move-exception p0

    const-string v0, "PipMenuActController"

    const-string v1, "Could not notify menu pinned animation ended"

    .line 225
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19
    :goto_19
    return-void
.end method

.method public pokeMenu()V
    .registers 3

    .line 308
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_19

    .line 309
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 310
    iput v1, v0, Landroid/os/Message;->what:I

    .line 312
    :try_start_b
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11

    goto :goto_19

    :catch_11
    move-exception p0

    const-string v0, "PipMenuActController"

    const-string v1, "Could not notify poke menu"

    .line 314
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19
    :goto_19
    return-void
.end method

.method public setAppActions(Landroid/content/pm/ParceledListSlice;)V
    .registers 2

    .line 382
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mAppActions:Landroid/content/pm/ParceledListSlice;

    .line 383
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->updateMenuActions()V

    return-void
.end method

.method public setDismissFraction(F)V
    .registers 8

    .line 247
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_2a

    .line 248
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mTmpDismissFractionData:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 249
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mTmpDismissFractionData:Landroid/os/Bundle;

    const-string v1, "dismiss_fraction"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 250
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x5

    .line 251
    iput v0, p1, Landroid/os/Message;->what:I

    .line 252
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mTmpDismissFractionData:Landroid/os/Bundle;

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 254
    :try_start_1b
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21

    goto :goto_3d

    :catch_21
    move-exception p0

    const-string p1, "PipMenuActController"

    const-string v0, "Could not notify menu to update dismiss fraction"

    .line 256
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d

    .line 258
    :cond_2a
    iget-boolean p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequested:Z

    if-eqz p1, :cond_34

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->isStartActivityRequestedElapsed()Z

    move-result p1

    if-eqz p1, :cond_3d

    :cond_34
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 261
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->startMenuActivity(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method public showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .registers 8

    .line 278
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_3b

    .line 279
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "menu_state"

    .line 280
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "stack_bounds"

    .line 281
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "movement_bounds"

    .line 282
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "allow_timeout"

    .line 283
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "resize_menu_on_show"

    .line 284
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 285
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x1

    .line 286
    iput p2, p1, Landroid/os/Message;->what:I

    .line 287
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 289
    :try_start_2c
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_31} :catch_32

    goto :goto_48

    :catch_32
    move-exception p0

    const-string p1, "PipMenuActController"

    const-string p2, "Could not notify menu to show"

    .line 291
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_48

    .line 293
    :cond_3b
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequested:Z

    if-eqz v0, :cond_45

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->isStartActivityRequestedElapsed()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 296
    :cond_45
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->startMenuActivity(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    :cond_48
    :goto_48
    return-void
.end method
