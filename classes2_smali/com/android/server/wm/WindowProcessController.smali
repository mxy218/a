.class public Lcom/android/server/wm/WindowProcessController;
.super Lcom/android/server/wm/ConfigurationContainer;
.source "WindowProcessController.java"

# interfaces
.implements Lcom/android/server/wm/ConfigurationContainerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/ConfigurationContainer<",
        "Lcom/android/server/wm/ConfigurationContainer;",
        ">;",
        "Lcom/android/server/wm/ConfigurationContainerListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RELEASE:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field private final mActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mAllowBackgroundActivityStarts:Z

.field private final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field private volatile mBoundClientUids:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mCrashing:Z

.field private volatile mCurProcState:I

.field private volatile mCurSchedGroup:I

.field private volatile mDebugging:Z

.field private mDisplayId:I

.field private volatile mFgInteractionTime:J

.field private volatile mHasClientActivities:Z

.field private volatile mHasForegroundActivities:Z

.field private volatile mHasForegroundServices:Z

.field private volatile mHasOverlayUi:Z

.field private volatile mHasTopUi:Z

.field final mInfo:Landroid/content/pm/ApplicationInfo;

.field private volatile mInstrumenting:Z

.field private volatile mInstrumentingWithBackgroundActivityStartPrivileges:Z

.field private volatile mInteractionEventTime:J

.field private mLastActivityFinishTime:J

.field private mLastActivityLaunchTime:J

.field private final mLastReportedConfiguration:Landroid/content/res/Configuration;

.field private final mListener:Lcom/android/server/wm/WindowProcessListener;

.field final mName:Ljava/lang/String;

.field private volatile mNotResponding:Z

.field public final mOwner:Ljava/lang/Object;

.field private volatile mPendingUiClean:Z

.field private volatile mPerceptible:Z

.field private volatile mPersistent:Z

.field private volatile mPid:I

.field final mPkgList:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field private final mRecentTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mRepProcState:I

.field private volatile mRequiredAbi:Ljava/lang/String;

.field private mRunningRecentsAnimation:Z

.field private mRunningRemoteAnimation:Z

.field private mThread:Landroid/app/IApplicationThread;

.field final mUid:I

.field final mUserId:I

.field private volatile mUsingWrapper:Z

.field mVrThreadTid:I

.field private volatile mWhenUnimportant:J


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;IILjava/lang/Object;Lcom/android/server/wm/WindowProcessListener;)V
    .registers 9

    .line 186
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 99
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    .line 108
    const/16 v0, 0x15

    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mCurProcState:I

    .line 110
    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    .line 157
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mBoundClientUids:Landroid/util/ArraySet;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 187
    iput-object p2, p0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 188
    iput-object p3, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 189
    iput p4, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 190
    iput p5, p0, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    .line 191
    iput-object p6, p0, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    .line 192
    iput-object p7, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    .line 193
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 194
    new-instance p2, Landroid/content/res/Configuration;

    invoke-direct {p2}, Landroid/content/res/Configuration;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    .line 195
    const/4 p2, -0x1

    iput p2, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayId:I

    .line 196
    if-eqz p1, :cond_49

    .line 197
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 199
    :cond_49
    return-void
.end method

.method private hasActivityInVisibleTask()Z
    .registers 4

    .line 549
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_27

    .line 550
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    .line 551
    if-nez v2, :cond_19

    .line 552
    goto :goto_24

    .line 554
    :cond_19
    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 555
    if-eqz v2, :cond_24

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v2, :cond_24

    .line 556
    return v1

    .line 549
    :cond_24
    :goto_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 559
    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method private isBoundByForegroundUid()Z
    .registers 5

    .line 439
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_22

    .line 440
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->isUidForeground(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 441
    return v1

    .line 439
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 444
    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method private setLastReportedConfiguration(Landroid/content/res/Configuration;)V
    .registers 3

    .line 976
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 977
    return-void
.end method

.method private shouldSetProfileProc()Z
    .registers 3

    .line 868
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileApp:Ljava/lang/String;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileApp:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileProc:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileProc:Lcom/android/server/wm/WindowProcessController;

    if-ne v0, p0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0
.end method

.method private updateConfiguration()V
    .registers 5

    .line 952
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 953
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    if-nez v1, :cond_d

    .line 955
    return-void

    .line 959
    :cond_d
    :try_start_d
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    if-nez v1, :cond_12

    .line 960
    return-void

    .line 966
    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->increaseConfigurationSeqLocked()I

    move-result v1

    iput v1, v0, Landroid/content/res/Configuration;->seq:I

    .line 967
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 968
    invoke-static {v0}, Landroid/app/servertransaction/ConfigurationChangeItem;->obtain(Landroid/content/res/Configuration;)Landroid/app/servertransaction/ConfigurationChangeItem;

    move-result-object v3

    .line 967
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 969
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowProcessController;->setLastReportedConfiguration(Landroid/content/res/Configuration;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2c} :catch_2d

    .line 972
    goto :goto_35

    .line 970
    :catch_2d
    move-exception v0

    .line 971
    const-string v1, "ActivityTaskManager"

    const-string v2, "Failed to schedule configuration change"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 973
    :goto_35
    return-void
.end method

.method private updateRunningRemoteOrRecentsAnimation()V
    .registers 5

    .line 1100
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$uwO6wQlqU3CG7OTdH7NBCKnHs64;->INSTANCE:Lcom/android/server/wm/-$$Lambda$uwO6wQlqU3CG7OTdH7NBCKnHs64;

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    iget-boolean v3, p0, Lcom/android/server/wm/WindowProcessController;->mRunningRecentsAnimation:Z

    if-nez v3, :cond_13

    iget-boolean v3, p0, Lcom/android/server/wm/WindowProcessController;->mRunningRemoteAnimation:Z

    if-eqz v3, :cond_11

    goto :goto_13

    :cond_11
    const/4 v3, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v3, 0x1

    .line 1102
    :goto_14
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1100
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1103
    return-void
.end method


# virtual methods
.method addActivityIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 500
    iget-wide v0, p1, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowProcessController;->setLastActivityLaunchTime(J)V

    .line 501
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 502
    return-void

    .line 504
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    return-void
.end method

.method public addPackage(Ljava/lang/String;)V
    .registers 4

    .line 486
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 487
    :try_start_5
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 488
    monitor-exit v0

    .line 489
    return-void

    .line 488
    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p1
.end method

.method addRecentTask(Lcom/android/server/wm/TaskRecord;)V
    .registers 3

    .line 989
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 990
    return-void
.end method

.method public appDied()V
    .registers 3

    .line 908
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    if-nez v0, :cond_5

    return-void

    .line 910
    :cond_5
    sget-object v1, Lcom/android/server/wm/-$$Lambda$MGgYXq0deCsjjGP-28PM6ahiI2U;->INSTANCE:Lcom/android/server/wm/-$$Lambda$MGgYXq0deCsjjGP-28PM6ahiI2U;

    invoke-static {v1, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 912
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 913
    return-void
.end method

.method public appEarlyNotResponding(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 7

    .line 1011
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1012
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-nez v1, :cond_13

    .line 1013
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_3d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1018
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    invoke-interface {v1, v2, v3, p1}, Landroid/app/IActivityController;->appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    .line 1019
    if-gez p1, :cond_2a

    iget p1, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq p1, v1, :cond_2a

    .line 1020
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_2a} :catch_2b
    .catchall {:try_start_13 .. :try_end_2a} :catchall_3d

    .line 1025
    :cond_2a
    goto :goto_38

    .line 1022
    :catch_2b
    move-exception p1

    .line 1023
    :try_start_2c
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 1024
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 1026
    :goto_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_2c .. :try_end_39} :catchall_3d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1027
    return-void

    .line 1026
    :catchall_3d
    move-exception p1

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public appNotResponding(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z
    .registers 10

    .line 1031
    nop

    .line 1032
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1033
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 1034
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_4e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1039
    :cond_15
    const/4 v1, 0x0

    :try_start_16
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    invoke-interface {v3, v4, v5, p1}, Landroid/app/IActivityController;->appNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    .line 1040
    if-eqz p1, :cond_2f

    .line 1041
    if-gez p1, :cond_2d

    iget p1, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_2a} :catch_3d
    .catchall {:try_start_16 .. :try_end_2a} :catchall_4e

    if-eq p1, v1, :cond_2d

    .line 1042
    goto :goto_30

    .line 1044
    :cond_2d
    move-object p2, p3

    goto :goto_30

    .line 1040
    :cond_2f
    move-object p2, v1

    .line 1051
    :goto_30
    nop

    .line 1052
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_4e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1053
    if-eqz p2, :cond_3c

    .line 1054
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 1055
    const/4 p1, 0x1

    return p1

    .line 1057
    :cond_3c
    return v2

    .line 1047
    :catch_3d
    move-exception p1

    .line 1048
    :try_start_3e
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 1049
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 1050
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3e .. :try_end_4a} :catchall_4e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1052
    :catchall_4e
    move-exception p1

    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method areBackgroundActivityStartsAllowed()Z
    .registers 9

    .line 408
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mAllowBackgroundActivityStarts:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 409
    return v1

    .line 413
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 414
    iget-wide v4, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x2710

    cmp-long v0, v4, v6

    if-ltz v0, :cond_1b

    iget-wide v4, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityFinishTime:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v6

    if-gez v0, :cond_34

    .line 418
    :cond_1b
    iget-wide v2, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLastStopAppSwitchesTime()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_49

    iget-wide v2, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityFinishTime:J

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 419
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLastStopAppSwitchesTime()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_34

    goto :goto_49

    .line 424
    :cond_34
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumentingWithBackgroundActivityStartPrivileges:Z

    if-eqz v0, :cond_39

    .line 425
    return v1

    .line 428
    :cond_39
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->hasActivityInVisibleTask()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 429
    return v1

    .line 432
    :cond_40
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->isBoundByForegroundUid()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 433
    return v1

    .line 435
    :cond_47
    const/4 v0, 0x0

    return v0

    .line 420
    :cond_49
    :goto_49
    return v1
.end method

.method clearActivities()V
    .registers 2

    .line 518
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 519
    return-void
.end method

.method public clearPackageList()V
    .registers 3

    .line 493
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 494
    :try_start_5
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 495
    monitor-exit v0

    .line 496
    return-void

    .line 495
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public clearPackagePreferredForHomeActivities()V
    .registers 7

    .line 667
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 668
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_10
    if-ltz v1, :cond_46

    .line 669
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 670
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 671
    const-string v3, "ActivityTaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clearing package preferred activities from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_4b

    .line 673
    :try_start_38
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 674
    invoke-interface {v3, v2}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_41} :catch_42
    .catchall {:try_start_38 .. :try_end_41} :catchall_4b

    .line 677
    goto :goto_43

    .line 675
    :catch_42
    move-exception v2

    .line 668
    :cond_43
    :goto_43
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 680
    :cond_46
    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 681
    return-void

    .line 680
    :catchall_4b
    move-exception v1

    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method clearProfilerIfNeeded()V
    .registers 4

    .line 832
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    if-nez v0, :cond_5

    return-void

    .line 834
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$9Kj79s-YFqaGRhFHazfExnbZExw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$9Kj79s-YFqaGRhFHazfExnbZExw;

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 836
    return-void
.end method

.method clearRecentTasks()V
    .registers 3

    .line 1004
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1005
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->clearRootProcess()V

    .line 1004
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1007
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1008
    return-void
.end method

.method public computeOomAdjFromActivities(ILcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;)I
    .registers 10

    .line 774
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 775
    :try_start_5
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 776
    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_8a

    .line 777
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 778
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq v4, p0, :cond_51

    .line 779
    const-string v4, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " in proc activity list using "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " instead of expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v4, :cond_4e

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v4, v4, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget v5, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    if-ne v4, v5, :cond_87

    .line 783
    :cond_4e
    invoke-virtual {v3, p0}, Lcom/android/server/wm/ActivityRecord;->setProcess(Lcom/android/server/wm/WindowProcessController;)V

    .line 788
    :cond_51
    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v4, :cond_68

    .line 789
    invoke-interface {p2}, Lcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;->onVisibleActivity()V

    .line 790
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object p2

    .line 791
    if-eqz p2, :cond_8a

    if-lez p1, :cond_8a

    .line 792
    iget p2, p2, Lcom/android/server/wm/TaskRecord;->mLayerRank:I

    .line 793
    if-ltz p2, :cond_67

    if-le p1, p2, :cond_67

    .line 794
    move p1, p2

    .line 796
    :cond_67
    goto :goto_8a

    .line 798
    :cond_68
    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 799
    invoke-interface {p2}, Lcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;->onPausedActivity()V

    goto :goto_87

    .line 800
    :cond_76
    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v4

    if-eqz v4, :cond_84

    .line 801
    iget-boolean v3, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-interface {p2, v3}, Lcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;->onStoppingActivity(Z)V

    goto :goto_87

    .line 803
    :cond_84
    invoke-interface {p2}, Lcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;->onOtherActivity()V

    .line 776
    :cond_87
    :goto_87
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 806
    :cond_8a
    :goto_8a
    monitor-exit v0

    .line 808
    return p1

    .line 806
    :catchall_8c
    move-exception p1

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_5 .. :try_end_8e} :catchall_8c

    throw p1
.end method

.method public computeRelaunchReason()I
    .registers 5

    .line 812
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 813
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 814
    add-int/lit8 v1, v1, -0x1

    :goto_10
    if-ltz v1, :cond_28

    .line 815
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 816
    iget v3, v2, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    if-eqz v3, :cond_25

    .line 817
    iget v1, v2, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 814
    :cond_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 820
    :cond_28
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 821
    const/4 v0, 0x0

    return v0

    .line 820
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method createProfilerInfoIfNeeded()Landroid/app/ProfilerInfo;
    .registers 3

    .line 873
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 874
    if-eqz v0, :cond_28

    iget-object v1, v0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    if-eqz v1, :cond_28

    .line 875
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->shouldSetProfileProc()Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_28

    .line 878
    :cond_11
    iget-object v1, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_22

    .line 880
    :try_start_15
    iget-object v1, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1d} :catch_1e

    .line 883
    goto :goto_22

    .line 881
    :catch_1e
    move-exception v1

    .line 882
    invoke-virtual {v0}, Landroid/app/ProfilerInfo;->closeFd()V

    .line 885
    :cond_22
    :goto_22
    new-instance v1, Landroid/app/ProfilerInfo;

    invoke-direct {v1, v0}, Landroid/app/ProfilerInfo;-><init>(Landroid/app/ProfilerInfo;)V

    return-object v1

    .line 876
    :cond_28
    :goto_28
    const/4 v0, 0x0

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 1111
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1112
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_36

    .line 1113
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Activities:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1114
    move v1, v2

    :goto_1a
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_36

    .line 1115
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  - "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1114
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 1119
    :cond_36
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7b

    .line 1120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Recent Tasks:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1121
    nop

    :goto_53
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_7b

    .line 1122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1121
    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    .line 1126
    :cond_7b
    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    if-eqz v1, :cond_8c

    .line 1127
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mVrThreadTid="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1129
    :cond_8c
    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_5 .. :try_end_8d} :catchall_e0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Configuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " OverrideConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " mLastReportedConfiguration="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1133
    return-void

    .line 1129
    :catchall_e0
    move-exception p1

    :try_start_e1
    monitor-exit v0
    :try_end_e2
    .catchall {:try_start_e1 .. :try_end_e2} :catchall_e0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method finishActivities()V
    .registers 10

    .line 631
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 632
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 633
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 634
    iget-boolean v2, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v2, :cond_2b

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 635
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    const-string v7, "finish-heavy"

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 632
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 639
    :cond_2e
    return-void
.end method

.method protected getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 476
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getChildCount()I
    .registers 2

    .line 471
    const/4 v0, 0x0

    return v0
.end method

.method public getCpuTime()J
    .registers 3

    .line 985
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/android/server/wm/WindowProcessListener;->getCpuTime()J

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x0

    :goto_b
    return-wide v0
.end method

.method getCurrentProcState()I
    .registers 2

    .line 237
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mCurProcState:I

    return v0
.end method

.method getCurrentSchedulingGroup()I
    .registers 2

    .line 229
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mCurSchedGroup:I

    return v0
.end method

.method getDisplayId()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 369
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayId:I

    return v0
.end method

.method getFgInteractionTime()J
    .registers 3

    .line 346
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mFgInteractionTime:J

    return-wide v0
.end method

.method public getInputDispatchingTimeout()J
    .registers 4

    .line 825
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 826
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->isInstrumenting()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->isUsingWrapper()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_18

    .line 827
    :cond_15
    const-wide/16 v1, 0x1388

    goto :goto_1b

    :cond_18
    :goto_18
    const-wide/32 v1, 0xea60

    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_20

    .line 826
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-wide v1

    .line 828
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getInteractionEventTime()J
    .registers 3

    .line 338
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mInteractionEventTime:J

    return-wide v0
.end method

.method getLastReportedConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 980
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method protected getParent()Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 481
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPid()I
    .registers 2

    .line 206
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    return v0
.end method

.method getReleaseSomeActivitiesTasks()Landroid/util/ArraySet;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/TaskRecord;",
            ">;"
        }
    .end annotation

    .line 725
    nop

    .line 727
    nop

    .line 729
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move-object v3, v2

    :goto_6
    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5d

    .line 730
    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 734
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v5, :cond_5c

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v5

    if-eqz v5, :cond_25

    goto :goto_5c

    .line 740
    :cond_25
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez v5, :cond_59

    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-eqz v5, :cond_59

    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->haveState:Z

    if-eqz v5, :cond_59

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 741
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 743
    goto :goto_59

    .line 746
    :cond_40
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    .line 747
    if-eqz v4, :cond_59

    .line 750
    if-nez v3, :cond_4a

    .line 751
    move-object v3, v4

    goto :goto_59

    .line 752
    :cond_4a
    if-eq v3, v4, :cond_59

    .line 753
    if-nez v2, :cond_56

    .line 754
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 755
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 757
    :cond_56
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 729
    :cond_59
    :goto_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 736
    :cond_5c
    :goto_5c
    return-object v0

    .line 762
    :cond_5d
    return-object v2
.end method

.method getReportedProcState()I
    .registers 2

    .line 245
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    return v0
.end method

.method getRequiredAbi()Ljava/lang/String;
    .registers 2

    .line 362
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRequiredAbi:Ljava/lang/String;

    return-object v0
.end method

.method getThread()Landroid/app/IApplicationThread;
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    return-object v0
.end method

.method getWhenUnimportant()J
    .registers 3

    .line 354
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mWhenUnimportant:J

    return-wide v0
.end method

.method public hasActivities()Z
    .registers 3

    .line 523
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 524
    :try_start_5
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    monitor-exit v0

    return v1

    .line 525
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public hasActivitiesOrRecentTasks()Z
    .registers 3

    .line 543
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 544
    :try_start_5
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_18

    :cond_16
    const/4 v1, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v1, 0x1

    :goto_19
    monitor-exit v0

    return v1

    .line 545
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method hasClientActivities()Z
    .registers 2

    .line 293
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasClientActivities:Z

    return v0
.end method

.method hasForegroundActivities()Z
    .registers 2

    .line 285
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasForegroundActivities:Z

    return v0
.end method

.method hasForegroundServices()Z
    .registers 2

    .line 277
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasForegroundServices:Z

    return v0
.end method

.method hasOverlayUi()Z
    .registers 2

    .line 309
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasOverlayUi:Z

    return v0
.end method

.method hasPendingUiClean()Z
    .registers 2

    .line 317
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mPendingUiClean:Z

    return v0
.end method

.method public hasRecentTasks()Z
    .registers 3

    .line 998
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 999
    :try_start_5
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    monitor-exit v0

    return v1

    .line 1000
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public hasRunningActivity(Ljava/lang/String;)Z
    .registers 6

    .line 655
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 656
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_10
    if-ltz v1, :cond_2a

    .line 657
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 658
    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 659
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 656
    :cond_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 662
    :cond_2a
    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 663
    const/4 p1, 0x0

    return p1

    .line 662
    :catchall_30
    move-exception p1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method hasStartedActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5

    .line 684
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1d

    .line 685
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 686
    if-ne p1, v2, :cond_15

    .line 687
    goto :goto_1a

    .line 689
    :cond_15
    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-nez v2, :cond_1a

    .line 690
    return v1

    .line 684
    :cond_1a
    :goto_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 693
    :cond_1d
    const/4 p1, 0x0

    return p1
.end method

.method hasThread()Z
    .registers 2

    .line 221
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method hasTopUi()Z
    .registers 2

    .line 301
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasTopUi:Z

    return v0
.end method

.method public hasVisibleActivities()Z
    .registers 5

    .line 530
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 531
    :try_start_5
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_d
    if-ltz v1, :cond_20

    .line 532
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 533
    iget-boolean v3, v3, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v3, :cond_1d

    .line 534
    monitor-exit v0

    return v2

    .line 531
    :cond_1d
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 537
    :cond_20
    monitor-exit v0

    .line 538
    const/4 v0, 0x0

    return v0

    .line 537
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_23

    throw v1
.end method

.method isCrashing()Z
    .registers 2

    .line 253
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mCrashing:Z

    return v0
.end method

.method isDebugging()Z
    .registers 2

    .line 377
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mDebugging:Z

    return v0
.end method

.method public isHomeProcess()Z
    .registers 3

    .line 1069
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 1070
    :try_start_5
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne p0, v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    .line 1071
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_10

    throw v1
.end method

.method isInstrumenting()Z
    .registers 2

    .line 458
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumenting:Z

    return v0
.end method

.method public isInterestingToUser()Z
    .registers 6

    .line 642
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 643
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 644
    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v1, :cond_29

    .line 645
    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 646
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isInterestingToUserLocked()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 647
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x1

    return v0

    .line 644
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 650
    :cond_29
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 651
    return v2

    .line 650
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method isNotResponding()Z
    .registers 2

    .line 261
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mNotResponding:Z

    return v0
.end method

.method isPerceptible()Z
    .registers 2

    .line 466
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mPerceptible:Z

    return v0
.end method

.method isPersistent()Z
    .registers 2

    .line 269
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mPersistent:Z

    return v0
.end method

.method public isPreviousProcess()Z
    .registers 3

    .line 1076
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 1077
    :try_start_5
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne p0, v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    .line 1078
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_10

    throw v1
.end method

.method isRemoved()Z
    .registers 2

    .line 864
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0}, Lcom/android/server/wm/WindowProcessListener;->isRemoved()Z

    move-result v0

    :goto_a
    return v0
.end method

.method isUsingWrapper()Z
    .registers 2

    .line 385
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mUsingWrapper:Z

    return v0
.end method

.method makeFinishingForProcessRemoved()V
    .registers 3

    .line 512
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 513
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->makeFinishingLocked()V

    .line 512
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 515
    :cond_18
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 941
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 942
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->updateConfiguration()V

    .line 943
    return-void
.end method

.method public onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 947
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 948
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->updateConfiguration()V

    .line 949
    return-void
.end method

.method onStartActivity(ILandroid/content/pm/ActivityInfo;)V
    .registers 10

    .line 889
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    if-nez v0, :cond_5

    return-void

    .line 890
    :cond_5
    const/4 v0, 0x0

    .line 891
    iget v1, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_19

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 892
    const-string v2, "android"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_19

    :cond_17
    move-object v5, v0

    goto :goto_1c

    .line 896
    :cond_19
    :goto_19
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object v5, v0

    .line 901
    :goto_1c
    sget-object v1, Lcom/android/server/wm/-$$Lambda$VY87MmFWaCLMkNa2qHGaPrThyrI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$VY87MmFWaCLMkNa2qHGaPrThyrI;

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    .line 902
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->shouldSetProfileProc()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object p1, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide p1, p1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 903
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 901
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 904
    iget-object p2, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 905
    return-void
.end method

.method public onTopProcChanged()V
    .registers 3

    .line 1062
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 1063
    :try_start_5
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/VrController;->onTopProcChangedLocked(Lcom/android/server/wm/WindowProcessController;)V

    .line 1064
    monitor-exit v0

    .line 1065
    return-void

    .line 1064
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v1
.end method

.method postPendingUiCleanMsg(Z)V
    .registers 4

    .line 326
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    if-nez v0, :cond_5

    return-void

    .line 328
    :cond_5
    sget-object v1, Lcom/android/server/wm/-$$Lambda$zP5AObb0-v-Zzwr-v8NXOg4Yt1c;->INSTANCE:Lcom/android/server/wm/-$$Lambda$zP5AObb0-v-Zzwr-v8NXOg4Yt1c;

    .line 329
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 328
    invoke-static {v1, v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 330
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 331
    return-void
.end method

.method registerDisplayConfigurationListenerLocked(Lcom/android/server/wm/ActivityDisplay;)V
    .registers 3

    .line 916
    if-nez p1, :cond_3

    .line 917
    return-void

    .line 921
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->unregisterDisplayConfigurationListenerLocked()V

    .line 922
    iget v0, p1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayId:I

    .line 923
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityDisplay;->registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 924
    return-void
.end method

.method registeredForDisplayConfigChanges()Z
    .registers 3

    .line 322
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method removeActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 508
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 509
    return-void
.end method

.method removeRecentTask(Lcom/android/server/wm/TaskRecord;)V
    .registers 3

    .line 993
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 994
    return-void
.end method

.method public setAllowBackgroundActivityStarts(Z)V
    .registers 2

    .line 403
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mAllowBackgroundActivityStarts:Z

    .line 404
    return-void
.end method

.method public setBoundClientUids(Landroid/util/ArraySet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 448
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mBoundClientUids:Landroid/util/ArraySet;

    .line 449
    return-void
.end method

.method public setCrashing(Z)V
    .registers 2

    .line 249
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mCrashing:Z

    .line 250
    return-void
.end method

.method public setCurrentProcState(I)V
    .registers 2

    .line 233
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mCurProcState:I

    .line 234
    return-void
.end method

.method public setCurrentSchedulingGroup(I)V
    .registers 2

    .line 225
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mCurSchedGroup:I

    .line 226
    return-void
.end method

.method public setDebugging(Z)V
    .registers 2

    .line 373
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mDebugging:Z

    .line 374
    return-void
.end method

.method public setFgInteractionTime(J)V
    .registers 3

    .line 342
    iput-wide p1, p0, Lcom/android/server/wm/WindowProcessController;->mFgInteractionTime:J

    .line 343
    return-void
.end method

.method public setHasClientActivities(Z)V
    .registers 2

    .line 289
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasClientActivities:Z

    .line 290
    return-void
.end method

.method public setHasForegroundActivities(Z)V
    .registers 2

    .line 281
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasForegroundActivities:Z

    .line 282
    return-void
.end method

.method public setHasForegroundServices(Z)V
    .registers 2

    .line 273
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasForegroundServices:Z

    .line 274
    return-void
.end method

.method public setHasOverlayUi(Z)V
    .registers 2

    .line 305
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasOverlayUi:Z

    .line 306
    return-void
.end method

.method public setHasTopUi(Z)V
    .registers 2

    .line 297
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasTopUi:Z

    .line 298
    return-void
.end method

.method public setInstrumenting(ZZ)V
    .registers 3

    .line 453
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumenting:Z

    .line 454
    iput-boolean p2, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumentingWithBackgroundActivityStartPrivileges:Z

    .line 455
    return-void
.end method

.method public setInteractionEventTime(J)V
    .registers 3

    .line 334
    iput-wide p1, p0, Lcom/android/server/wm/WindowProcessController;->mInteractionEventTime:J

    .line 335
    return-void
.end method

.method setLastActivityFinishTimeIfNeeded(J)V
    .registers 5

    .line 396
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityFinishTime:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_10

    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->hasActivityInVisibleTask()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_10

    .line 399
    :cond_d
    iput-wide p1, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityFinishTime:J

    .line 400
    return-void

    .line 397
    :cond_10
    :goto_10
    return-void
.end method

.method setLastActivityLaunchTime(J)V
    .registers 5

    .line 389
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_7

    .line 390
    return-void

    .line 392
    :cond_7
    iput-wide p1, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    .line 393
    return-void
.end method

.method public setNotResponding(Z)V
    .registers 2

    .line 257
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mNotResponding:Z

    .line 258
    return-void
.end method

.method public setPendingUiClean(Z)V
    .registers 2

    .line 313
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mPendingUiClean:Z

    .line 314
    return-void
.end method

.method setPendingUiCleanAndForceProcessStateUpTo(I)V
    .registers 4

    .line 855
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    if-nez v0, :cond_5

    return-void

    .line 857
    :cond_5
    sget-object v1, Lcom/android/server/wm/-$$Lambda$LI60v4Y5Me6khV12IZ-zEQtSx7A;->INSTANCE:Lcom/android/server/wm/-$$Lambda$LI60v4Y5Me6khV12IZ-zEQtSx7A;

    .line 859
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 857
    invoke-static {v1, v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 860
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 861
    return-void
.end method

.method public setPerceptible(Z)V
    .registers 2

    .line 462
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mPerceptible:Z

    .line 463
    return-void
.end method

.method public setPersistent(Z)V
    .registers 2

    .line 265
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mPersistent:Z

    .line 266
    return-void
.end method

.method public setPid(I)V
    .registers 2

    .line 202
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 203
    return-void
.end method

.method public setReportedProcState(I)V
    .registers 2

    .line 241
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    .line 242
    return-void
.end method

.method public setRequiredAbi(Ljava/lang/String;)V
    .registers 2

    .line 358
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mRequiredAbi:Ljava/lang/String;

    .line 359
    return-void
.end method

.method setRunningRecentsAnimation(Z)V
    .registers 3

    .line 1082
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mRunningRecentsAnimation:Z

    if-ne v0, p1, :cond_5

    .line 1083
    return-void

    .line 1085
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mRunningRecentsAnimation:Z

    .line 1086
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->updateRunningRemoteOrRecentsAnimation()V

    .line 1087
    return-void
.end method

.method setRunningRemoteAnimation(Z)V
    .registers 3

    .line 1090
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mRunningRemoteAnimation:Z

    if-ne v0, p1, :cond_5

    .line 1091
    return-void

    .line 1093
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mRunningRemoteAnimation:Z

    .line 1094
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->updateRunningRemoteOrRecentsAnimation()V

    .line 1095
    return-void
.end method

.method public setThread(Landroid/app/IApplicationThread;)V
    .registers 3

    .line 211
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_5
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 213
    monitor-exit v0

    .line 214
    return-void

    .line 213
    :catchall_9
    move-exception p1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_9

    throw p1
.end method

.method public setUsingWrapper(Z)V
    .registers 2

    .line 381
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mUsingWrapper:Z

    .line 382
    return-void
.end method

.method public setWhenUnimportant(J)V
    .registers 3

    .line 350
    iput-wide p1, p0, Lcom/android/server/wm/WindowProcessController;->mWhenUnimportant:J

    .line 351
    return-void
.end method

.method shouldKillProcessForRemovedTask(Lcom/android/server/wm/TaskRecord;)Z
    .registers 7

    .line 707
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 708
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 709
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-nez v3, :cond_17

    .line 711
    return v0

    .line 713
    :cond_17
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    .line 714
    iget v3, p1, Lcom/android/server/wm/TaskRecord;->taskId:I

    iget v4, v2, Lcom/android/server/wm/TaskRecord;->taskId:I

    if-eq v3, v4, :cond_26

    iget-boolean v2, v2, Lcom/android/server/wm/TaskRecord;->inRecents:Z

    if-eqz v2, :cond_26

    .line 717
    return v0

    .line 707
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 720
    :cond_29
    const/4 p1, 0x1

    return p1
.end method

.method public stopFreezingActivities()V
    .registers 5

    .line 621
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 622
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 623
    :goto_e
    if-lez v1, :cond_1f

    .line 624
    add-int/lit8 v1, v1, -0x1

    .line 625
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto :goto_e

    .line 627
    :cond_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 628
    return-void

    .line 627
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1107
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method unregisterDisplayConfigurationListenerLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 928
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 929
    return-void

    .line 931
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayId:I

    .line 932
    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 933
    if-eqz v0, :cond_15

    .line 934
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityDisplay;->unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 936
    :cond_15
    iput v1, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayId:I

    .line 937
    return-void
.end method

.method updateIntentForHeavyWeightActivity(Landroid/content/Intent;)V
    .registers 5

    .line 698
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 699
    return-void

    .line 701
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 702
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v2, "cur_app"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 703
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/TaskRecord;->taskId:I

    const-string v1, "cur_task"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 704
    return-void
.end method

.method updateProcessInfo(ZZZ)V
    .registers 6

    .line 840
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    if-nez v0, :cond_5

    return-void

    .line 842
    :cond_5
    sget-object v1, Lcom/android/server/wm/-$$Lambda$BEx3OWenCvYAaV5h_J2ZkZXhEcY;->INSTANCE:Lcom/android/server/wm/-$$Lambda$BEx3OWenCvYAaV5h_J2ZkZXhEcY;

    .line 843
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 842
    invoke-static {v1, v0, p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 844
    iget-object p2, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 845
    return-void
.end method

.method updateServiceConnectionActivities()V
    .registers 4

    .line 848
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    if-nez v0, :cond_5

    return-void

    .line 850
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$HLz_SQuxQoIiuaK5SB5xJ6FnoxY;->INSTANCE:Lcom/android/server/wm/-$$Lambda$HLz_SQuxQoIiuaK5SB5xJ6FnoxY;

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 852
    return-void
.end method

.method updateTopResumingActivityInProcessIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 10

    .line 571
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x1

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_78

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_f

    goto/16 :goto_78

    .line 575
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 576
    const/4 v2, 0x0

    if-nez v0, :cond_17

    .line 578
    return v2

    .line 581
    :cond_17
    nop

    .line 583
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v4, 0x0

    if-eqz v3, :cond_22

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    goto :goto_23

    :cond_22
    move-object v3, v4

    .line 588
    :goto_23
    if-eqz v3, :cond_36

    iget-object v5, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v5, v5, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v5, :cond_36

    iget-object v5, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 590
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_34

    goto :goto_36

    :cond_34
    move v5, v2

    goto :goto_37

    .line 591
    :cond_36
    :goto_36
    move v5, v1

    .line 595
    :goto_37
    if-nez v5, :cond_44

    iget-object v6, v3, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/DisplayContent;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v6

    if-gez v6, :cond_44

    .line 596
    move v5, v1

    .line 600
    :cond_44
    if-ne v0, v3, :cond_5b

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 601
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    .line 602
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    .line 601
    invoke-virtual {v0, v3}, Lcom/android/server/wm/TaskStack;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v0

    if-gtz v0, :cond_5b

    .line 603
    goto :goto_5c

    .line 606
    :cond_5b
    move v1, v5

    :goto_5c
    if-eqz v1, :cond_77

    .line 608
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_75

    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 609
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 610
    if-eqz v0, :cond_75

    .line 611
    invoke-virtual {v0, v2, v2, v4, v2}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Z)Z

    .line 615
    :cond_75
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 617
    :cond_77
    return v1

    .line 572
    :cond_78
    :goto_78
    return v1
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 5

    .line 1136
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    if-eqz v0, :cond_7

    .line 1137
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/wm/WindowProcessListener;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1139
    :cond_7
    return-void
.end method
