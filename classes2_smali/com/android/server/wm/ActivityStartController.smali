.class public Lcom/android/server/wm/ActivityStartController;
.super Ljava/lang/Object;
.source "ActivityStartController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityStartController$StartHandler;
    }
.end annotation


# static fields
.field private static final DO_PENDING_ACTIVITY_LAUNCHES_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field mCheckedForSetup:Z

.field private final mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

.field private final mHandler:Landroid/os/Handler;

.field private mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

.field private mLastHomeActivityStartResult:I

.field private mLastStarter:Lcom/android/server/wm/ActivityStarter;

.field private final mPendingActivityLaunches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field private tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 7

    .line 123
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    new-instance v1, Lcom/android/server/wm/ActivityStarter$DefaultFactory;

    iget-object v2, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    new-instance v3, Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v4, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-direct {v3, p1, v4}, Lcom/android/server/wm/ActivityStartInterceptor;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;)V

    invoke-direct {v1, p1, v2, v3}, Lcom/android/server/wm/ActivityStarter$DefaultFactory;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityStartInterceptor;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityStartController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityStarter$Factory;)V

    .line 126
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityStarter$Factory;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartController;->tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStartController;->mCheckedForSetup:Z

    .line 131
    iput-object p1, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 132
    iput-object p2, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 133
    new-instance p2, Lcom/android/server/wm/ActivityStartController$StartHandler;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/android/server/wm/ActivityStartController$StartHandler;-><init>(Lcom/android/server/wm/ActivityStartController;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/wm/ActivityStartController;->mHandler:Landroid/os/Handler;

    .line 134
    iput-object p3, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    .line 135
    iget-object p2, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    invoke-interface {p2, p0}, Lcom/android/server/wm/ActivityStarter$Factory;->setController(Lcom/android/server/wm/ActivityStartController;)V

    .line 136
    new-instance p2, Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    iget-object p3, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {p2, p1, p3}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/wm/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/ActivityStartController;)Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object p0
.end method

.method static synthetic lambda$startActivities$0(I)[Landroid/content/Intent;
    .registers 1

    .line 377
    new-array p0, p0, [Landroid/content/Intent;

    return-object p0
.end method


# virtual methods
.method addPendingActivityLaunch(Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;)V
    .registers 3

    .line 474
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    return-void
.end method

.method checkTargetUser(IZIILjava/lang/String;)I
    .registers 6

    .line 257
    if-eqz p2, :cond_9

    .line 258
    iget-object p2, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2, p3, p4, p1, p5}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p1

    return p1

    .line 261
    :cond_9
    iget-object p2, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p2, p1}, Landroid/app/ActivityManagerInternal;->ensureNotSpecialUser(I)V

    .line 262
    return p1
.end method

.method clearPendingActivityLaunches(Ljava/lang/String;)Z
    .registers 5

    .line 478
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 480
    add-int/lit8 v1, v0, -0x1

    :goto_8
    if-ltz v1, :cond_26

    .line 481
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;

    .line 482
    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/wm/ActivityRecord;

    .line 483
    if-eqz v2, :cond_23

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 484
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 480
    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 487
    :cond_26
    iget-object p1, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p1, v0, :cond_30

    const/4 p1, 0x1

    goto :goto_31

    :cond_30
    const/4 p1, 0x0

    :goto_31
    return p1
.end method

.method doPendingActivityLaunches(Z)V
    .registers 13

    .line 458
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_54

    .line 459
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;

    .line 460
    if-eqz p1, :cond_1c

    iget-object v2, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    move v8, v1

    .line 461
    const/4 v1, 0x0

    const-string v2, "pendingActivityLaunch"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 464
    :try_start_24
    iget-object v3, v0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->sourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->startFlags:I

    iget-object v1, v0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/wm/ActivityRecord;

    iget-object v9, v1, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/wm/ActivityStarter;->startResolvedActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;)I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_34} :catch_35

    .line 469
    goto :goto_53

    .line 466
    :catch_35
    move-exception v1

    .line 467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception during pending activity launch pal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 468
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->sendErrorResult(Ljava/lang/String;)V

    .line 470
    :goto_53
    goto :goto_0

    .line 471
    :cond_54
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 500
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 501
    const-string v0, "mLastHomeActivityStartResult="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 502
    iget v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartResult:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 504
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    const-string v1, "  "

    if-eqz v0, :cond_2f

    .line 505
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 506
    const-string v0, "mLastHomeActivityStartRecord:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 510
    :cond_2f
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_35

    move v3, v0

    goto :goto_36

    :cond_35
    move v3, v2

    .line 512
    :goto_36
    iget-object v4, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    if-eqz v4, :cond_6e

    .line 513
    if-eqz v3, :cond_51

    .line 514
    invoke-virtual {v4, p3}, Lcom/android/server/wm/ActivityStarter;->relatedToPackage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_51

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_4f

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 516
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4f

    goto :goto_51

    :cond_4f
    move v0, v2

    goto :goto_52

    :cond_51
    :goto_51
    nop

    .line 518
    :goto_52
    if-eqz v0, :cond_6e

    .line 519
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 520
    iget-object p3, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Lcom/android/server/wm/ActivityStarter;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 522
    if-eqz v3, :cond_6e

    .line 523
    return-void

    .line 528
    :cond_6e
    if-eqz v3, :cond_78

    .line 529
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 530
    const-string p2, "(nothing)"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 532
    :cond_78
    return-void
.end method

.method getPendingRemoteAnimationRegistry()Lcom/android/server/wm/PendingRemoteAnimationRegistry;
    .registers 2

    .line 496
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    return-object v0
.end method

.method obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .registers 4

    .line 146
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    invoke-interface {v0}, Lcom/android/server/wm/ActivityStarter$Factory;->obtain()Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStarter;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityStarter;->setReason(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    return-object p1
.end method

.method onExecutionComplete(Lcom/android/server/wm/ActivityStarter;)V
    .registers 3

    .line 150
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    if-nez v0, :cond_c

    .line 151
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    invoke-interface {v0}, Lcom/android/server/wm/ActivityStarter$Factory;->obtain()Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    .line 154
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStarter;->set(Lcom/android/server/wm/ActivityStarter;)V

    .line 155
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    invoke-interface {v0, p1}, Lcom/android/server/wm/ActivityStarter$Factory;->recycle(Lcom/android/server/wm/ActivityStarter;)V

    .line 156
    return-void
.end method

.method postStartActivityProcessingForLastStarter(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityStack;)V
    .registers 5

    .line 164
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    if-nez v0, :cond_5

    .line 165
    return-void

    .line 168
    :cond_5
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/ActivityStarter;->postStartActivityProcessing(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityStack;)V

    .line 169
    return-void
.end method

.method registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V
    .registers 4

    .line 492
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->addPendingAnimation(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V

    .line 493
    return-void
.end method

.method schedulePendingActivityLaunches(J)V
    .registers 5

    .line 452
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 453
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 454
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 455
    return-void
.end method

.method startActivities(Landroid/app/IApplicationThread;IIILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;ILjava/lang/String;Lcom/android/server/am/PendingIntentRecord;Z)I
    .registers 38

    .line 349
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    if-eqz v2, :cond_174

    .line 352
    if-eqz v3, :cond_16c

    .line 355
    array-length v4, v2

    array-length v5, v3

    if-ne v4, v5, :cond_164

    .line 359
    if-eqz p3, :cond_15

    .line 360
    move/from16 v4, p3

    goto :goto_19

    .line 361
    :cond_15
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 362
    :goto_19
    const/4 v5, -0x1

    move/from16 v6, p4

    if-eq v6, v5, :cond_1f

    .line 363
    goto :goto_23

    .line 364
    :cond_1f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 367
    :goto_23
    if-ltz p2, :cond_29

    .line 368
    move/from16 v8, p2

    move v7, v5

    goto :goto_31

    .line 369
    :cond_29
    if-nez v1, :cond_2f

    .line 370
    nop

    .line 371
    move v7, v4

    move v8, v6

    goto :goto_31

    .line 373
    :cond_2f
    move v7, v5

    move v8, v7

    .line 375
    :goto_31
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 377
    :try_start_35
    sget-object v11, Lcom/android/server/wm/-$$Lambda$ActivityStartController$6bTAPCVeDq_D4Y53Y5WNfMK4xBE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStartController$6bTAPCVeDq_D4Y53Y5WNfMK4xBE;

    invoke-static {v2, v11}, Lcom/android/internal/util/ArrayUtils;->filterNotNull([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/Intent;

    .line 378
    array-length v11, v2

    new-array v11, v11, [Lcom/android/server/wm/ActivityStarter;

    .line 381
    const/4 v13, 0x0

    :goto_41
    array-length v14, v2

    if-ge v13, v14, :cond_10a

    .line 382
    aget-object v14, v2, v13

    .line 385
    invoke-virtual {v14}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v16

    if-nez v16, :cond_100

    .line 390
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12, v14}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 393
    iget-object v14, v0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    aget-object v19, v3, v13

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v5, -0x2710

    .line 395
    invoke-static {v8, v6, v5}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v23

    .line 393
    move-object/from16 v17, v14

    move-object/from16 v18, v12

    move/from16 v22, p10

    invoke-virtual/range {v17 .. v23}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 397
    iget-object v14, v0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v14, v14, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    move/from16 v15, p10

    invoke-virtual {v14, v5, v15}, Landroid/app/ActivityManagerInternal;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 399
    if-eqz v5, :cond_86

    iget-object v14, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v14, v14, 0x2

    if-nez v14, :cond_7e

    goto :goto_86

    .line 401
    :cond_7e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FLAG_CANT_SAVE_STATE not supported here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_86
    :goto_86
    array-length v14, v2
    :try_end_87
    .catchall {:try_start_35 .. :try_end_87} :catchall_15d

    const/16 v16, 0x1

    add-int/lit8 v14, v14, -0x1

    if-ne v13, v14, :cond_8f

    const/4 v14, 0x1

    goto :goto_90

    :cond_8f
    const/4 v14, 0x0

    .line 405
    :goto_90
    if-eqz v14, :cond_97

    .line 406
    move-object/from16 p6, v2

    move-object/from16 v2, p9

    goto :goto_9d

    .line 407
    :cond_97
    const/16 v16, 0x0

    move-object/from16 p6, v2

    move-object/from16 v2, v16

    .line 408
    :goto_9d
    move-object/from16 v15, p11

    move-wide/from16 v16, v9

    :try_start_a1
    invoke-virtual {v0, v12, v15}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v9

    .line 409
    invoke-virtual {v9, v1}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v9

    aget-object v10, v3, v13

    .line 410
    invoke-virtual {v9, v10}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v9

    .line 411
    invoke-virtual {v9, v5}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 412
    move-object/from16 v9, p8

    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 413
    const/4 v10, -0x1

    invoke-virtual {v5, v10}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 414
    invoke-virtual {v5, v7}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 415
    invoke-virtual {v5, v8}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 416
    move-object/from16 v10, p5

    invoke-virtual {v5, v10}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 417
    invoke-virtual {v5, v4}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 418
    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 419
    invoke-virtual {v5, v2}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 420
    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_e0

    const/4 v5, 0x1

    goto :goto_e1

    :cond_e0
    const/4 v5, 0x0

    :goto_e1
    invoke-virtual {v2, v5}, Lcom/android/server/wm/ActivityStarter;->setComponentSpecified(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 424
    invoke-virtual {v2, v14}, Lcom/android/server/wm/ActivityStarter;->setAllowPendingRemoteAnimationRegistryLookup(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 425
    move-object/from16 v5, p12

    invoke-virtual {v2, v5}, Lcom/android/server/wm/ActivityStarter;->setOriginatingPendingIntent(Lcom/android/server/am/PendingIntentRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 426
    move/from16 v12, p13

    invoke-virtual {v2, v12}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    aput-object v2, v11, v13

    .line 381
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p6

    move-wide/from16 v9, v16

    const/4 v5, -0x1

    goto/16 :goto_41

    .line 386
    :cond_100
    move-wide/from16 v16, v9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File descriptors passed in Intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_10a
    move-wide/from16 v16, v9

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/android/server/wm/ActivityRecord;

    .line 431
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1
    :try_end_114
    .catchall {:try_start_a1 .. :try_end_114} :catchall_15b

    :try_start_114
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 432
    const/4 v3, 0x0

    :goto_118
    array-length v4, v11

    if-ge v3, v4, :cond_14b

    .line 433
    aget-object v4, v11, v3

    invoke-virtual {v4, v2}, Lcom/android/server/wm/ActivityStarter;->setOutActivity([Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v4

    .line 434
    if-gez v4, :cond_13e

    .line 436
    const/4 v5, 0x1

    add-int/2addr v3, v5

    :goto_129
    array-length v2, v11

    if-ge v3, v2, :cond_136

    .line 437
    iget-object v2, v0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    aget-object v5, v11, v3

    invoke-interface {v2, v5}, Lcom/android/server/wm/ActivityStarter$Factory;->recycle(Lcom/android/server/wm/ActivityStarter;)V

    .line 436
    add-int/lit8 v3, v3, 0x1

    goto :goto_129

    .line 439
    :cond_136
    monitor-exit v1
    :try_end_137
    .catchall {:try_start_114 .. :try_end_137} :catchall_155

    .line 445
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 439
    return v4

    .line 441
    :cond_13e
    const/4 v5, 0x1

    const/4 v4, 0x0

    :try_start_140
    aget-object v6, v2, v4

    if-eqz v6, :cond_148

    aget-object v6, v2, v4

    iget-object v4, v6, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 432
    :cond_148
    add-int/lit8 v3, v3, 0x1

    goto :goto_118

    .line 443
    :cond_14b
    monitor-exit v1
    :try_end_14c
    .catchall {:try_start_140 .. :try_end_14c} :catchall_155

    :try_start_14c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_14f
    .catchall {:try_start_14c .. :try_end_14f} :catchall_15b

    .line 445
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 446
    nop

    .line 448
    const/4 v0, 0x0

    return v0

    .line 443
    :catchall_155
    move-exception v0

    :try_start_156
    monitor-exit v1
    :try_end_157
    .catchall {:try_start_156 .. :try_end_157} :catchall_155

    :try_start_157
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_15b
    .catchall {:try_start_157 .. :try_end_15b} :catchall_15b

    .line 445
    :catchall_15b
    move-exception v0

    goto :goto_160

    :catchall_15d
    move-exception v0

    move-wide/from16 v16, v9

    :goto_160
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 356
    :cond_164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "intents are length different than resolvedTypes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_16c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "resolvedTypes is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_174
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "intents is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final startActivitiesInPackage(IIILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I
    .registers 33

    .line 335
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 336
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 335
    const-string v5, "startActivityInPackage"

    move-object/from16 v0, p0

    move/from16 v1, p9

    move/from16 v2, p10

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStartController;->checkTargetUser(IZIILjava/lang/String;)I

    move-result v16

    .line 339
    const/4 v7, 0x0

    const-string v17, "startActivityInPackage"

    move-object/from16 v6, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    move-object/from16 v18, p11

    move/from16 v19, p12

    invoke-virtual/range {v6 .. v19}, Lcom/android/server/wm/ActivityStartController;->startActivities(Landroid/app/IApplicationThread;IIILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;ILjava/lang/String;Lcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0

    return v0
.end method

.method final startActivitiesInPackage(ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I
    .registers 24

    .line 309
    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/wm/ActivityStartController;->startActivitiesInPackage(IIILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0

    return v0
.end method

.method final startActivityInPackage(IIILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/TaskRecord;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I
    .registers 24

    .line 272
    move-object v0, p0

    move/from16 v1, p12

    move/from16 v2, p15

    move v3, p2

    move v4, p3

    move-object/from16 v5, p14

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStartController;->checkTargetUser(IZIILjava/lang/String;)I

    move-result v0

    .line 276
    move-object v1, p0

    move-object v2, p5

    move-object/from16 v3, p14

    invoke-virtual {p0, p5, v3}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 277
    move v2, p1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 278
    move v2, p2

    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 279
    move v2, p3

    invoke-virtual {v1, p3}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 280
    move-object v2, p4

    invoke-virtual {v1, p4}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 281
    move-object v2, p6

    invoke-virtual {v1, p6}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 282
    move-object v2, p7

    invoke-virtual {v1, p7}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 283
    move-object v2, p8

    invoke-virtual {v1, p8}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 284
    move v2, p9

    invoke-virtual {v1, p9}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 285
    move/from16 v2, p10

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 286
    move-object/from16 v2, p11

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 287
    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityStarter;->setMayWait(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 288
    move-object/from16 v1, p13

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setInTask(Lcom/android/server/wm/TaskRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 289
    move-object/from16 v1, p16

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setOriginatingPendingIntent(Lcom/android/server/am/PendingIntentRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 290
    move/from16 v1, p17

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v0

    .line 276
    return v0
.end method

.method startHomeActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;I)V
    .registers 8

    .line 172
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 173
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 174
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/wm/ActivityRecord;->isResolverActivity(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 178
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    .line 180
    :cond_14
    invoke-virtual {v0, p4}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startHomeActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/wm/ActivityStartController;->tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;

    .line 182
    invoke-virtual {p1, p3}, Lcom/android/server/wm/ActivityStarter;->setOutActivity([Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 183
    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 184
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 185
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 186
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartResult:I

    .line 187
    iget-object p1, p0, Lcom/android/server/wm/ActivityStartController;->tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;

    aget-object p1, p1, p3

    iput-object p1, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    .line 188
    iget-object p1, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 189
    invoke-virtual {p1, p4}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object p1

    .line 190
    if-eqz p1, :cond_5e

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityDisplay;->getHomeStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    goto :goto_5f

    :cond_5e
    const/4 p1, 0x0

    .line 191
    :goto_5f
    if-eqz p1, :cond_6a

    iget-boolean p1, p1, Lcom/android/server/wm/ActivityStack;->mInResumeTopActivity:Z

    if-eqz p1, :cond_6a

    .line 195
    iget-object p1, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleResumeTopActivities()V

    .line 197
    :cond_6a
    return-void
.end method

.method startSetupActivity()V
    .registers 8

    .line 204
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStartController;->mCheckedForSetup:Z

    if-eqz v0, :cond_5

    .line 205
    return-void

    .line 211
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9d

    .line 213
    const/4 v1, 0x0

    const-string v3, "device_provisioned"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_9d

    .line 214
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStartController;->mCheckedForSetup:Z

    .line 217
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.UPGRADE_SETUP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 219
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const v4, 0x100480

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 222
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9d

    .line 223
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 224
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "android.SETUP_VERSION"

    if-eqz v4, :cond_52

    .line 225
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_53

    .line 226
    :cond_52
    const/4 v4, 0x0

    .line 227
    :goto_53
    if-nez v4, :cond_67

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_67

    .line 228
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 231
    :cond_67
    const-string v5, "last_setup_shown"

    invoke-static {v0, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    if-eqz v4, :cond_9d

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9d

    .line 234
    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 235
    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 237
    const-string v0, "startSetupActivity"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 238
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 239
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    .line 244
    :cond_9d
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 6

    .line 535
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;

    .line 536
    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 537
    goto :goto_6

    .line 538
    :cond_18
    return-void
.end method
