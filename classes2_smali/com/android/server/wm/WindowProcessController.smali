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

.field private mFrozen:Z

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
    .param p1, "atm"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "info"  # Landroid/content/pm/ApplicationInfo;
    .param p3, "name"  # Ljava/lang/String;
    .param p4, "uid"  # I
    .param p5, "userId"  # I
    .param p6, "owner"  # Ljava/lang/Object;
    .param p7, "listener"  # Lcom/android/server/wm/WindowProcessListener;

    .line 188
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 101
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    .line 110
    const/16 v0, 0x15

    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mCurProcState:I

    .line 112
    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    .line 159
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mBoundClientUids:Landroid/util/ArraySet;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 189
    iput-object p2, p0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 190
    iput-object p3, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 191
    iput p4, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 192
    iput p5, p0, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    .line 193
    iput-object p6, p0, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    .line 194
    iput-object p7, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    .line 195
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 196
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    .line 197
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayId:I

    .line 198
    if-eqz p1, :cond_49

    .line 199
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowProcessController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 201
    :cond_49
    return-void
.end method

.method private hasActivityInVisibleTask()Z
    .registers 6

    .line 559
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_27

    .line 560
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    .line 561
    .local v2, "task":Lcom/android/server/wm/TaskRecord;
    if-nez v2, :cond_19

    .line 562
    goto :goto_24

    .line 564
    :cond_19
    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 565
    .local v3, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_24

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v4, :cond_24

    .line 566
    return v1

    .line 559
    .end local v2  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v3  # "topActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_24
    :goto_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 569
    .end local v0  # "i":I
    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method private isBoundByForegroundUid()Z
    .registers 5

    .line 449
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_22

    .line 450
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

    .line 451
    return v1

    .line 449
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 454
    .end local v0  # "i":I
    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method private setLastReportedConfiguration(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "config"  # Landroid/content/res/Configuration;

    .line 981
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 982
    return-void
.end method

.method private shouldSetProfileProc()Z
    .registers 3

    .line 873
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
    .registers 6

    .line 957
    const-string v0, "ActivityTaskManager"

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 958
    .local v1, "config":Landroid/content/res/Configuration;
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    if-nez v2, :cond_f

    .line 960
    return-void

    .line 964
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    if-nez v2, :cond_14

    .line 965
    return-void

    .line 967
    :cond_14
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v2, :cond_36

    .line 968
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending to proc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " new config "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :cond_36
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->increaseConfigurationSeqLocked()I

    move-result v2

    iput v2, v1, Landroid/content/res/Configuration;->seq:I

    .line 972
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 973
    invoke-static {v1}, Landroid/app/servertransaction/ConfigurationChangeItem;->obtain(Landroid/content/res/Configuration;)Landroid/app/servertransaction/ConfigurationChangeItem;

    move-result-object v4

    .line 972
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 974
    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowProcessController;->setLastReportedConfiguration(Landroid/content/res/Configuration;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_50} :catch_51

    .line 977
    goto :goto_57

    .line 975
    :catch_51
    move-exception v2

    .line 976
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Failed to schedule configuration change"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 978
    .end local v2  # "e":Ljava/lang/Exception;
    :goto_57
    return-void
.end method

.method private updateRunningRemoteOrRecentsAnimation()V
    .registers 5

    .line 1110
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

    .line 1112
    :goto_14
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1110
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1113
    return-void
.end method


# virtual methods
.method addActivityIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 510
    iget-wide v0, p1, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowProcessController;->setLastActivityLaunchTime(J)V

    .line 511
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 512
    return-void

    .line 514
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    return-void
.end method

.method public addPackage(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;

    .line 496
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 497
    :try_start_5
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 498
    monitor-exit v0

    .line 499
    return-void

    .line 498
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1
.end method

.method addRecentTask(Lcom/android/server/wm/TaskRecord;)V
    .registers 3
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;

    .line 994
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 995
    return-void
.end method

.method public appDied()V
    .registers 3

    .line 913
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    if-nez v0, :cond_5

    return-void

    .line 915
    :cond_5
    sget-object v1, Lcom/android/server/wm/-$$Lambda$MGgYXq0deCsjjGP-28PM6ahiI2U;->INSTANCE:Lcom/android/server/wm/-$$Lambda$MGgYXq0deCsjjGP-28PM6ahiI2U;

    invoke-static {v1, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 917
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 918
    return-void
.end method

.method public appEarlyNotResponding(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 8
    .param p1, "annotation"  # Ljava/lang/String;
    .param p2, "killAppCallback"  # Ljava/lang/Runnable;

    .line 1017
    const/4 v0, 0x0

    .line 1018
    .local v0, "controller":Landroid/app/IActivityController;
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1019
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-nez v2, :cond_14

    .line 1020
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_52

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1022
    :cond_14
    :try_start_14
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    move-object v0, v2

    .line 1023
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_52

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1026
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    invoke-interface {v0, v1, v2, p1}, Landroid/app/IActivityController;->appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 1027
    .local v1, "res":I
    if-gez v1, :cond_30

    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    sget v3, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v2, v3, :cond_30

    .line 1028
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_30} :catch_31

    .line 1036
    .end local v1  # "res":I
    :cond_30
    goto :goto_4b

    .line 1030
    :catch_31
    move-exception v1

    move-object v2, v1

    .line 1031
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_38
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1033
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 1034
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 1035
    monitor-exit v3
    :try_end_48
    .catchall {:try_start_38 .. :try_end_48} :catchall_4c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1037
    .end local v2  # "e":Landroid/os/RemoteException;
    :goto_4b
    return-void

    .line 1035
    .restart local v2  # "e":Landroid/os/RemoteException;
    :catchall_4c
    move-exception v1

    :try_start_4d
    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 1023
    .end local v2  # "e":Landroid/os/RemoteException;
    :catchall_52
    move-exception v2

    :try_start_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public appNotResponding(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z
    .registers 10
    .param p1, "info"  # Ljava/lang/String;
    .param p2, "killAppCallback"  # Ljava/lang/Runnable;
    .param p3, "serviceTimeoutCallback"  # Ljava/lang/Runnable;

    .line 1041
    const/4 v0, 0x0

    .line 1042
    .local v0, "targetRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1043
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    const/4 v3, 0x0

    if-nez v2, :cond_15

    .line 1044
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_4d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 1049
    :cond_15
    :try_start_15
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    invoke-interface {v2, v4, v5, p1}, Landroid/app/IActivityController;->appNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 1050
    .local v2, "res":I
    if-eqz v2, :cond_2e

    .line 1051
    if-gez v2, :cond_2d

    iget v4, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_29} :catch_3b
    .catchall {:try_start_15 .. :try_end_29} :catchall_4d

    if-eq v4, v5, :cond_2d

    .line 1052
    move-object v0, p2

    goto :goto_2e

    .line 1054
    :cond_2d
    move-object v0, p3

    .line 1061
    .end local v2  # "res":I
    :cond_2e
    :goto_2e
    nop

    .line 1062
    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_4d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1063
    if-eqz v0, :cond_3a

    .line 1064
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1065
    const/4 v1, 0x1

    return v1

    .line 1067
    :cond_3a
    return v3

    .line 1057
    :catch_3b
    move-exception v2

    .line 1058
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3c
    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 1059
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 1060
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_3c .. :try_end_49} :catchall_4d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 1062
    .end local v2  # "e":Landroid/os/RemoteException;
    :catchall_4d
    move-exception v2

    :try_start_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method areBackgroundActivityStartsAllowed()Z
    .registers 11

    .line 410
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mAllowBackgroundActivityStarts:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 411
    return v1

    .line 415
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 416
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x2710

    cmp-long v0, v4, v6

    const/4 v4, 0x0

    if-ltz v0, :cond_1d

    iget-wide v8, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityFinishTime:J

    sub-long v8, v2, v8

    cmp-long v0, v8, v6

    if-gez v0, :cond_77

    .line 420
    :cond_1d
    iget-wide v5, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLastStopAppSwitchesTime()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-gtz v0, :cond_35

    iget-wide v5, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityFinishTime:J

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 421
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLastStopAppSwitchesTime()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-lez v0, :cond_77

    .line 423
    :cond_35
    iget-wide v5, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    sub-long v5, v2, v5

    const-wide/16 v7, 0x3e8

    cmp-long v0, v5, v7

    if-ltz v0, :cond_4a

    iget-wide v5, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityFinishTime:J

    sub-long v5, v2, v5

    cmp-long v0, v5, v7

    if-gez v0, :cond_48

    goto :goto_4a

    :cond_48
    move v0, v4

    goto :goto_4b

    :cond_4a
    :goto_4a
    move v0, v1

    .line 424
    .local v0, "isGameNotIntercept":Z
    :goto_4b
    if-nez v0, :cond_56

    invoke-static {}, Lmeizu/os/DeviceStateManager;->isCtsRunningStatic()Z

    move-result v5

    if-eqz v5, :cond_54

    goto :goto_56

    :cond_54
    move v5, v4

    goto :goto_57

    :cond_56
    :goto_56
    move v5, v1

    :goto_57
    move v0, v5

    .line 425
    if-nez v0, :cond_6b

    iget-object v5, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->getInstance(Landroid/content/Context;)Lcom/android/server/policy/gamemode/GameModeController;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/policy/gamemode/GameModeController;->isGameMode()Z

    move-result v5

    if-nez v5, :cond_69

    goto :goto_6b

    :cond_69
    move v5, v4

    goto :goto_6c

    :cond_6b
    :goto_6b
    move v5, v1

    :goto_6c
    move v0, v5

    .line 426
    if-eqz v0, :cond_70

    .line 427
    return v1

    .line 429
    :cond_70
    const-string v5, "ActivityTaskManager"

    const-string v6, "not allowed Background Activity Starts in game mode"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    .end local v0  # "isGameNotIntercept":Z
    :cond_77
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumentingWithBackgroundActivityStartPrivileges:Z

    if-eqz v0, :cond_7c

    .line 435
    return v1

    .line 438
    :cond_7c
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->hasActivityInVisibleTask()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 439
    return v1

    .line 442
    :cond_83
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->isBoundByForegroundUid()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 443
    return v1

    .line 445
    :cond_8a
    return v4
.end method

.method clearActivities()V
    .registers 2

    .line 528
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 529
    return-void
.end method

.method public clearPackageList()V
    .registers 3

    .line 503
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 504
    :try_start_5
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 505
    monitor-exit v0

    .line 506
    return-void

    .line 505
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public clearPackagePreferredForHomeActivities()V
    .registers 7

    .line 672
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 673
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_10
    if-ltz v1, :cond_46

    .line 674
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 675
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 676
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

    .line 678
    :try_start_38
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 679
    invoke-interface {v3, v4}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_41} :catch_42
    .catchall {:try_start_38 .. :try_end_41} :catchall_4b

    .line 682
    goto :goto_43

    .line 680
    :catch_42
    move-exception v3

    .line 673
    .end local v2  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_43
    :goto_43
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 685
    .end local v1  # "i":I
    :cond_46
    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 686
    return-void

    .line 685
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

    .line 837
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    if-nez v0, :cond_5

    return-void

    .line 839
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$9Kj79s-YFqaGRhFHazfExnbZExw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$9Kj79s-YFqaGRhFHazfExnbZExw;

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 841
    return-void
.end method

.method clearRecentTasks()V
    .registers 3

    .line 1009
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 1010
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->clearRootProcess()V

    .line 1009
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1012
    .end local v0  # "i":I
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1013
    return-void
.end method

.method public computeOomAdjFromActivities(ILcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;)I
    .registers 10
    .param p1, "minTaskLayer"  # I
    .param p2, "callback"  # Lcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;

    .line 779
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 780
    :try_start_5
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 781
    .local v1, "activitiesSize":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_c
    if-ge v2, v1, :cond_8a

    .line 782
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 783
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq v4, p0, :cond_51

    .line 784
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

    .line 786
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v4, :cond_4e

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v4, v4, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget v5, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    if-ne v4, v5, :cond_87

    .line 788
    :cond_4e
    invoke-virtual {v3, p0}, Lcom/android/server/wm/ActivityRecord;->setProcess(Lcom/android/server/wm/WindowProcessController;)V

    .line 793
    :cond_51
    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v4, :cond_68

    .line 794
    invoke-interface {p2}, Lcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;->onVisibleActivity()V

    .line 795
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    .line 796
    .local v4, "task":Lcom/android/server/wm/TaskRecord;
    if-eqz v4, :cond_8a

    if-lez p1, :cond_8a

    .line 797
    iget v5, v4, Lcom/android/server/wm/TaskRecord;->mLayerRank:I

    .line 798
    .local v5, "layer":I
    if-ltz v5, :cond_67

    if-le p1, v5, :cond_67

    .line 799
    move p1, v5

    .line 801
    .end local v5  # "layer":I
    :cond_67
    goto :goto_8a

    .line 803
    .end local v4  # "task":Lcom/android/server/wm/TaskRecord;
    :cond_68
    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 804
    invoke-interface {p2}, Lcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;->onPausedActivity()V

    goto :goto_87

    .line 805
    :cond_76
    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v4

    if-eqz v4, :cond_84

    .line 806
    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-interface {p2, v4}, Lcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;->onStoppingActivity(Z)V

    goto :goto_87

    .line 808
    :cond_84
    invoke-interface {p2}, Lcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;->onOtherActivity()V

    .line 781
    .end local v3  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_87
    :goto_87
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 811
    .end local v1  # "activitiesSize":I
    .end local v2  # "j":I
    :cond_8a
    :goto_8a
    monitor-exit v0

    .line 813
    return p1

    .line 811
    :catchall_8c
    move-exception v1

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_5 .. :try_end_8e} :catchall_8c

    throw v1
.end method

.method public computeRelaunchReason()I
    .registers 6

    .line 817
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 818
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 819
    .local v1, "activitiesSize":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_10
    if-ltz v2, :cond_28

    .line 820
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 821
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    iget v4, v3, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    if-eqz v4, :cond_25

    .line 822
    iget v4, v3, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 819
    .end local v3  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_25
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 825
    .end local v1  # "activitiesSize":I
    .end local v2  # "i":I
    :cond_28
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 826
    const/4 v0, 0x0

    return v0

    .line 825
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

    .line 878
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 879
    .local v0, "currentProfilerInfo":Landroid/app/ProfilerInfo;
    if-eqz v0, :cond_28

    iget-object v1, v0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    if-eqz v1, :cond_28

    .line 880
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->shouldSetProfileProc()Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_28

    .line 883
    :cond_11
    iget-object v1, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_22

    .line 885
    :try_start_15
    iget-object v1, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1d} :catch_1e

    .line 888
    goto :goto_22

    .line 886
    :catch_1e
    move-exception v1

    .line 887
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Landroid/app/ProfilerInfo;->closeFd()V

    .line 890
    .end local v1  # "e":Ljava/io/IOException;
    :cond_22
    :goto_22
    new-instance v1, Landroid/app/ProfilerInfo;

    invoke-direct {v1, v0}, Landroid/app/ProfilerInfo;-><init>(Landroid/app/ProfilerInfo;)V

    return-object v1

    .line 881
    :cond_28
    :goto_28
    const/4 v1, 0x0

    return-object v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 1121
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1122
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_36

    .line 1123
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Activities:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1124
    move v1, v2

    .local v1, "i":I
    :goto_1a
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_36

    .line 1125
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  - "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1124
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 1129
    .end local v1  # "i":I
    :cond_36
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7b

    .line 1130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Recent Tasks:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1131
    move v1, v2

    .restart local v1  # "i":I
    :goto_53
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7b

    .line 1132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1131
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 1136
    .end local v1  # "i":I
    :cond_7b
    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    if-eqz v1, :cond_8c

    .line 1137
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mVrThreadTid="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1139
    :cond_8c
    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_5 .. :try_end_8d} :catchall_e0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1140
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

    .line 1141
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

    .line 1142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mLastReportedConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1143
    return-void

    .line 1139
    :catchall_e0
    move-exception v1

    :try_start_e1
    monitor-exit v0
    :try_end_e2
    .catchall {:try_start_e1 .. :try_end_e2} :catchall_e0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method finishActivities()V
    .registers 10

    .line 636
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 637
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 638
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 639
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v3, :cond_2b

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 640
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    const-string v7, "finish-heavy"

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 637
    .end local v2  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 644
    .end local v1  # "i":I
    :cond_2e
    return-void
.end method

.method protected getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .registers 3
    .param p1, "index"  # I

    .line 486
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getChildCount()I
    .registers 2

    .line 481
    const/4 v0, 0x0

    return v0
.end method

.method public getCpuTime()J
    .registers 3

    .line 990
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

    .line 239
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mCurProcState:I

    return v0
.end method

.method getCurrentSchedulingGroup()I
    .registers 2

    .line 231
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mCurSchedGroup:I

    return v0
.end method

.method getDisplayId()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 371
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayId:I

    return v0
.end method

.method getFgInteractionTime()J
    .registers 3

    .line 348
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mFgInteractionTime:J

    return-wide v0
.end method

.method public getInputDispatchingTimeout()J
    .registers 4

    .line 830
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 831
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->isInstrumenting()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->isUsingWrapper()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_18

    .line 832
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

    .line 831
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-wide v1

    .line 833
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

    .line 340
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mInteractionEventTime:J

    return-wide v0
.end method

.method getLastReportedConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 985
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method protected getParent()Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 491
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPid()I
    .registers 2

    .line 208
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

    .line 730
    const/4 v0, 0x0

    .line 732
    .local v0, "firstTask":Lcom/android/server/wm/TaskRecord;
    const/4 v1, 0x0

    .line 733
    .local v1, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/TaskRecord;>;"
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RELEASE:Z

    const-string v3, "ActivityTaskManager"

    if-eqz v2, :cond_1c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to release some activities in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :cond_1c
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_c9

    .line 735
    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 739
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v5, :cond_af

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v5

    if-eqz v5, :cond_3d

    goto/16 :goto_af

    .line 745
    :cond_3d
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez v5, :cond_93

    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-eqz v5, :cond_93

    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->haveState:Z

    if-eqz v5, :cond_93

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 746
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v5

    if-eqz v5, :cond_58

    goto :goto_93

    .line 751
    :cond_58
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v5

    .line 752
    .local v5, "task":Lcom/android/server/wm/TaskRecord;
    if-eqz v5, :cond_ab

    .line 753
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RELEASE:Z

    if-eqz v6, :cond_7e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Collecting release task "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_7e
    if-nez v0, :cond_82

    .line 756
    move-object v0, v5

    goto :goto_ab

    .line 757
    :cond_82
    if-eq v0, v5, :cond_ab

    .line 758
    if-nez v1, :cond_8f

    .line 759
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v6

    .line 760
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 762
    :cond_8f
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_ab

    .line 747
    .end local v5  # "task":Lcom/android/server/wm/TaskRecord;
    :cond_93
    :goto_93
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RELEASE:Z

    if-eqz v5, :cond_ab

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not releasing in-use activity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    .end local v4  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_ab
    :goto_ab
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1d

    .line 740
    .restart local v4  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_af
    :goto_af
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RELEASE:Z

    if-eqz v5, :cond_c7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Abort release; already destroying: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_c7
    const/4 v3, 0x0

    return-object v3

    .line 767
    .end local v2  # "i":I
    .end local v4  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_c9
    return-object v1
.end method

.method getReportedProcState()I
    .registers 2

    .line 247
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    return v0
.end method

.method getRequiredAbi()Ljava/lang/String;
    .registers 2

    .line 364
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRequiredAbi:Ljava/lang/String;

    return-object v0
.end method

.method getThread()Landroid/app/IApplicationThread;
    .registers 2

    .line 219
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    return-object v0
.end method

.method getWhenUnimportant()J
    .registers 3

    .line 356
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mWhenUnimportant:J

    return-wide v0
.end method

.method public hasActivities()Z
    .registers 3

    .line 533
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 534
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

    .line 535
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public hasActivitiesOrRecentTasks()Z
    .registers 3

    .line 553
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 554
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

    .line 555
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method hasClientActivities()Z
    .registers 2

    .line 295
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasClientActivities:Z

    return v0
.end method

.method hasForegroundActivities()Z
    .registers 2

    .line 287
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasForegroundActivities:Z

    return v0
.end method

.method hasForegroundServices()Z
    .registers 2

    .line 279
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasForegroundServices:Z

    return v0
.end method

.method hasOverlayUi()Z
    .registers 2

    .line 311
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasOverlayUi:Z

    return v0
.end method

.method hasPendingUiClean()Z
    .registers 2

    .line 319
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mPendingUiClean:Z

    return v0
.end method

.method public hasRecentTasks()Z
    .registers 3

    .line 1003
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 1004
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

    .line 1005
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public hasRunningActivity(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;

    .line 660
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 661
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_10
    if-ltz v1, :cond_2a

    .line 662
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 663
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 664
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 661
    .end local v3  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 667
    .end local v1  # "i":I
    :cond_2a
    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 668
    const/4 v0, 0x0

    return v0

    .line 667
    :catchall_30
    move-exception v1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method hasStartedActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 6
    .param p1, "launchedActivity"  # Lcom/android/server/wm/ActivityRecord;

    .line 689
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1d

    .line 690
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 691
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    if-ne p1, v2, :cond_15

    .line 692
    goto :goto_1a

    .line 694
    :cond_15
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-nez v3, :cond_1a

    .line 695
    return v1

    .line 689
    .end local v2  # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_1a
    :goto_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 698
    .end local v0  # "i":I
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method hasThread()Z
    .registers 2

    .line 223
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

    .line 303
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasTopUi:Z

    return v0
.end method

.method public hasVisibleActivities()Z
    .registers 6

    .line 540
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 541
    :try_start_5
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_20

    .line 542
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 543
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v4, :cond_1d

    .line 544
    monitor-exit v0

    return v2

    .line 541
    .end local v3  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1d
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 547
    .end local v1  # "i":I
    :cond_20
    monitor-exit v0

    .line 548
    const/4 v0, 0x0

    return v0

    .line 547
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_23

    throw v1
.end method

.method isCrashing()Z
    .registers 2

    .line 255
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mCrashing:Z

    return v0
.end method

.method isDebugging()Z
    .registers 2

    .line 379
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mDebugging:Z

    return v0
.end method

.method isFrozen()Z
    .registers 2

    .line 1160
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mFrozen:Z

    return v0
.end method

.method public isHomeProcess()Z
    .registers 3

    .line 1079
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 1080
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

    .line 1081
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_10

    throw v1
.end method

.method isInstrumenting()Z
    .registers 2

    .line 468
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumenting:Z

    return v0
.end method

.method public isInterestingToUser()Z
    .registers 6

    .line 647
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 648
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 649
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_28

    .line 650
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 651
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isInterestingToUserLocked()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 652
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x1

    return v0

    .line 649
    .end local v3  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 655
    .end local v1  # "size":I
    .end local v2  # "i":I
    :cond_28
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 656
    const/4 v0, 0x0

    return v0

    .line 655
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

    .line 263
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mNotResponding:Z

    return v0
.end method

.method isPerceptible()Z
    .registers 2

    .line 476
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mPerceptible:Z

    return v0
.end method

.method isPersistent()Z
    .registers 2

    .line 271
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mPersistent:Z

    return v0
.end method

.method public isPreviousProcess()Z
    .registers 3

    .line 1086
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 1087
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

    .line 1088
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_10

    throw v1
.end method

.method isRemoved()Z
    .registers 2

    .line 869
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

    .line 387
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mUsingWrapper:Z

    return v0
.end method

.method makeFinishingForProcessRemoved()V
    .registers 3

    .line 522
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 523
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->makeFinishingLocked()V

    .line 522
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 525
    .end local v0  # "i":I
    :cond_18
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newGlobalConfig"  # Landroid/content/res/Configuration;

    .line 946
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 947
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->updateConfiguration()V

    .line 948
    return-void
.end method

.method public onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newOverrideConfig"  # Landroid/content/res/Configuration;

    .line 952
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 953
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->updateConfiguration()V

    .line 954
    return-void
.end method

.method onStartActivity(ILandroid/content/pm/ActivityInfo;)V
    .registers 10
    .param p1, "topProcessState"  # I
    .param p2, "info"  # Landroid/content/pm/ActivityInfo;

    .line 894
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    if-nez v0, :cond_5

    return-void

    .line 895
    :cond_5
    const/4 v0, 0x0

    .line 896
    .local v0, "packageName":Ljava/lang/String;
    iget v1, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_16

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 897
    const-string v2, "android"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 901
    :cond_16
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 906
    :cond_18
    sget-object v1, Lcom/android/server/wm/-$$Lambda$VY87MmFWaCLMkNa2qHGaPrThyrI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$VY87MmFWaCLMkNa2qHGaPrThyrI;

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    .line 907
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->shouldSetProfileProc()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v5, v5, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 908
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 906
    move-object v5, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 909
    .local v1, "m":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 910
    return-void
.end method

.method public onTopProcChanged()V
    .registers 3

    .line 1072
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 1073
    :try_start_5
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/VrController;->onTopProcChangedLocked(Lcom/android/server/wm/WindowProcessController;)V

    .line 1074
    monitor-exit v0

    .line 1075
    return-void

    .line 1074
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v1
.end method

.method postPendingUiCleanMsg(Z)V
    .registers 5
    .param p1, "pendingUiClean"  # Z

    .line 328
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    if-nez v0, :cond_5

    return-void

    .line 330
    :cond_5
    sget-object v1, Lcom/android/server/wm/-$$Lambda$zP5AObb0-v-Zzwr-v8NXOg4Yt1c;->INSTANCE:Lcom/android/server/wm/-$$Lambda$zP5AObb0-v-Zzwr-v8NXOg4Yt1c;

    .line 331
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 330
    invoke-static {v1, v0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 332
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 333
    return-void
.end method

.method registerDisplayConfigurationListenerLocked(Lcom/android/server/wm/ActivityDisplay;)V
    .registers 3
    .param p1, "activityDisplay"  # Lcom/android/server/wm/ActivityDisplay;

    .line 921
    if-nez p1, :cond_3

    .line 922
    return-void

    .line 926
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->unregisterDisplayConfigurationListenerLocked()V

    .line 927
    iget v0, p1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayId:I

    .line 928
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityDisplay;->registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 929
    return-void
.end method

.method registeredForDisplayConfigChanges()Z
    .registers 3

    .line 324
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
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 518
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 519
    return-void
.end method

.method removeRecentTask(Lcom/android/server/wm/TaskRecord;)V
    .registers 3
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;

    .line 998
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 999
    return-void
.end method

.method public setAllowBackgroundActivityStarts(Z)V
    .registers 2
    .param p1, "allowBackgroundActivityStarts"  # Z

    .line 405
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mAllowBackgroundActivityStarts:Z

    .line 406
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

    .line 458
    .local p1, "boundClientUids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mBoundClientUids:Landroid/util/ArraySet;

    .line 459
    return-void
.end method

.method public setCrashing(Z)V
    .registers 2
    .param p1, "crashing"  # Z

    .line 251
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mCrashing:Z

    .line 252
    return-void
.end method

.method public setCurrentProcState(I)V
    .registers 2
    .param p1, "curProcState"  # I

    .line 235
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mCurProcState:I

    .line 236
    return-void
.end method

.method public setCurrentSchedulingGroup(I)V
    .registers 2
    .param p1, "curSchedGroup"  # I

    .line 227
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mCurSchedGroup:I

    .line 228
    return-void
.end method

.method public setDebugging(Z)V
    .registers 2
    .param p1, "debugging"  # Z

    .line 375
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mDebugging:Z

    .line 376
    return-void
.end method

.method public setFgInteractionTime(J)V
    .registers 3
    .param p1, "fgInteractionTime"  # J

    .line 344
    iput-wide p1, p0, Lcom/android/server/wm/WindowProcessController;->mFgInteractionTime:J

    .line 345
    return-void
.end method

.method public setFrozen(Z)V
    .registers 2
    .param p1, "frozen"  # Z

    .line 1156
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mFrozen:Z

    .line 1157
    return-void
.end method

.method public setHasClientActivities(Z)V
    .registers 2
    .param p1, "hasClientActivities"  # Z

    .line 291
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasClientActivities:Z

    .line 292
    return-void
.end method

.method public setHasForegroundActivities(Z)V
    .registers 2
    .param p1, "hasForegroundActivities"  # Z

    .line 283
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasForegroundActivities:Z

    .line 284
    return-void
.end method

.method public setHasForegroundServices(Z)V
    .registers 2
    .param p1, "hasForegroundServices"  # Z

    .line 275
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasForegroundServices:Z

    .line 276
    return-void
.end method

.method public setHasOverlayUi(Z)V
    .registers 2
    .param p1, "hasOverlayUi"  # Z

    .line 307
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasOverlayUi:Z

    .line 308
    return-void
.end method

.method public setHasTopUi(Z)V
    .registers 2
    .param p1, "hasTopUi"  # Z

    .line 299
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasTopUi:Z

    .line 300
    return-void
.end method

.method public setInstrumenting(ZZ)V
    .registers 3
    .param p1, "instrumenting"  # Z
    .param p2, "hasBackgroundActivityStartPrivileges"  # Z

    .line 463
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumenting:Z

    .line 464
    iput-boolean p2, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumentingWithBackgroundActivityStartPrivileges:Z

    .line 465
    return-void
.end method

.method public setInteractionEventTime(J)V
    .registers 3
    .param p1, "interactionEventTime"  # J

    .line 336
    iput-wide p1, p0, Lcom/android/server/wm/WindowProcessController;->mInteractionEventTime:J

    .line 337
    return-void
.end method

.method setLastActivityFinishTimeIfNeeded(J)V
    .registers 5
    .param p1, "finishTime"  # J

    .line 398
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityFinishTime:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_10

    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->hasActivityInVisibleTask()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_10

    .line 401
    :cond_d
    iput-wide p1, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityFinishTime:J

    .line 402
    return-void

    .line 399
    :cond_10
    :goto_10
    return-void
.end method

.method setLastActivityLaunchTime(J)V
    .registers 5
    .param p1, "launchTime"  # J

    .line 391
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_7

    .line 392
    return-void

    .line 394
    :cond_7
    iput-wide p1, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    .line 395
    return-void
.end method

.method public setNotResponding(Z)V
    .registers 2
    .param p1, "notResponding"  # Z

    .line 259
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mNotResponding:Z

    .line 260
    return-void
.end method

.method public setPendingUiClean(Z)V
    .registers 2
    .param p1, "hasPendingUiClean"  # Z

    .line 315
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mPendingUiClean:Z

    .line 316
    return-void
.end method

.method setPendingUiCleanAndForceProcessStateUpTo(I)V
    .registers 5
    .param p1, "newState"  # I

    .line 860
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    if-nez v0, :cond_5

    return-void

    .line 862
    :cond_5
    sget-object v1, Lcom/android/server/wm/-$$Lambda$LI60v4Y5Me6khV12IZ-zEQtSx7A;->INSTANCE:Lcom/android/server/wm/-$$Lambda$LI60v4Y5Me6khV12IZ-zEQtSx7A;

    .line 864
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 862
    invoke-static {v1, v0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 865
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 866
    return-void
.end method

.method public setPerceptible(Z)V
    .registers 2
    .param p1, "perceptible"  # Z

    .line 472
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mPerceptible:Z

    .line 473
    return-void
.end method

.method public setPersistent(Z)V
    .registers 2
    .param p1, "persistent"  # Z

    .line 267
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mPersistent:Z

    .line 268
    return-void
.end method

.method public setPid(I)V
    .registers 2
    .param p1, "pid"  # I

    .line 204
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 205
    return-void
.end method

.method public setReportedProcState(I)V
    .registers 2
    .param p1, "repProcState"  # I

    .line 243
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    .line 244
    return-void
.end method

.method public setRequiredAbi(Ljava/lang/String;)V
    .registers 2
    .param p1, "requiredAbi"  # Ljava/lang/String;

    .line 360
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mRequiredAbi:Ljava/lang/String;

    .line 361
    return-void
.end method

.method setRunningRecentsAnimation(Z)V
    .registers 3
    .param p1, "running"  # Z

    .line 1092
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mRunningRecentsAnimation:Z

    if-ne v0, p1, :cond_5

    .line 1093
    return-void

    .line 1095
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mRunningRecentsAnimation:Z

    .line 1096
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->updateRunningRemoteOrRecentsAnimation()V

    .line 1097
    return-void
.end method

.method setRunningRemoteAnimation(Z)V
    .registers 3
    .param p1, "running"  # Z

    .line 1100
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mRunningRemoteAnimation:Z

    if-ne v0, p1, :cond_5

    .line 1101
    return-void

    .line 1103
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mRunningRemoteAnimation:Z

    .line 1104
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->updateRunningRemoteOrRecentsAnimation()V

    .line 1105
    return-void
.end method

.method public setThread(Landroid/app/IApplicationThread;)V
    .registers 4
    .param p1, "thread"  # Landroid/app/IApplicationThread;

    .line 213
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_5
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 215
    monitor-exit v0

    .line 216
    return-void

    .line 215
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public setUsingWrapper(Z)V
    .registers 2
    .param p1, "usingWrapper"  # Z

    .line 383
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mUsingWrapper:Z

    .line 384
    return-void
.end method

.method public setWhenUnimportant(J)V
    .registers 3
    .param p1, "whenUnimportant"  # J

    .line 352
    iput-wide p1, p0, Lcom/android/server/wm/WindowProcessController;->mWhenUnimportant:J

    .line 353
    return-void
.end method

.method shouldKillProcessForRemovedTask(Lcom/android/server/wm/TaskRecord;)Z
    .registers 8
    .param p1, "tr"  # Lcom/android/server/wm/TaskRecord;

    .line 712
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 713
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 714
    .local v1, "activity":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    const/4 v3, 0x0

    if-nez v2, :cond_17

    .line 716
    return v3

    .line 718
    :cond_17
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    .line 719
    .local v2, "otherTask":Lcom/android/server/wm/TaskRecord;
    iget v4, p1, Lcom/android/server/wm/TaskRecord;->taskId:I

    iget v5, v2, Lcom/android/server/wm/TaskRecord;->taskId:I

    if-eq v4, v5, :cond_26

    iget-boolean v4, v2, Lcom/android/server/wm/TaskRecord;->inRecents:Z

    if-eqz v4, :cond_26

    .line 722
    return v3

    .line 712
    .end local v1  # "activity":Lcom/android/server/wm/ActivityRecord;
    .end local v2  # "otherTask":Lcom/android/server/wm/TaskRecord;
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 725
    .end local v0  # "k":I
    :cond_29
    const/4 v0, 0x1

    return v0
.end method

.method public stopFreezingActivities()V
    .registers 5

    .line 626
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 627
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 628
    .local v1, "i":I
    :goto_e
    if-lez v1, :cond_1f

    .line 629
    add-int/lit8 v1, v1, -0x1

    .line 630
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto :goto_e

    .line 632
    .end local v1  # "i":I
    :cond_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 633
    return-void

    .line 632
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

    .line 1117
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

    .line 933
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 934
    return-void

    .line 936
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayId:I

    .line 937
    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 938
    .local v0, "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v0, :cond_15

    .line 939
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityDisplay;->unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 941
    :cond_15
    iput v1, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayId:I

    .line 942
    return-void
.end method

.method updateIntentForHeavyWeightActivity(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"  # Landroid/content/Intent;

    .line 703
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 704
    return-void

    .line 706
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 707
    .local v0, "hist":Lcom/android/server/wm/ActivityRecord;
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v2, "cur_app"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/TaskRecord;->taskId:I

    const-string v2, "cur_task"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 709
    return-void
.end method

.method updateProcessInfo(ZZZ)V
    .registers 9
    .param p1, "updateServiceConnectionActivities"  # Z
    .param p2, "activityChange"  # Z
    .param p3, "updateOomAdj"  # Z

    .line 845
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    if-nez v0, :cond_5

    return-void

    .line 847
    :cond_5
    sget-object v1, Lcom/android/server/wm/-$$Lambda$BEx3OWenCvYAaV5h_J2ZkZXhEcY;->INSTANCE:Lcom/android/server/wm/-$$Lambda$BEx3OWenCvYAaV5h_J2ZkZXhEcY;

    .line 848
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 847
    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 849
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 850
    return-void
.end method

.method updateServiceConnectionActivities()V
    .registers 4

    .line 853
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    if-nez v0, :cond_5

    return-void

    .line 855
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$HLz_SQuxQoIiuaK5SB5xJ6FnoxY;->INSTANCE:Lcom/android/server/wm/-$$Lambda$HLz_SQuxQoIiuaK5SB5xJ6FnoxY;

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 857
    return-void
.end method

.method updateTopResumingActivityInProcessIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 9
    .param p1, "activity"  # Lcom/android/server/wm/ActivityRecord;

    .line 580
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_6a

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_d

    goto :goto_6a

    .line 584
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 585
    .local v0, "display":Lcom/android/server/wm/ActivityDisplay;
    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 587
    return v1

    .line 590
    :cond_15
    const/4 v2, 0x0

    .line 592
    .local v2, "canUpdate":Z
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v4, 0x0

    if-eqz v3, :cond_20

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    goto :goto_21

    :cond_20
    move-object v3, v4

    .line 595
    .local v3, "topDisplay":Lcom/android/server/wm/ActivityDisplay;
    :goto_21
    if-eqz v3, :cond_29

    iget-object v5, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v5, v5, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez v5, :cond_2a

    .line 596
    :cond_29
    const/4 v2, 0x1

    .line 600
    :cond_2a
    if-nez v2, :cond_37

    iget-object v5, v3, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/DisplayContent;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v5

    if-gez v5, :cond_37

    .line 601
    const/4 v2, 0x1

    .line 605
    :cond_37
    if-ne v0, v3, :cond_4e

    iget-object v5, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 606
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    .line 607
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    .line 606
    invoke-virtual {v5, v6}, Lcom/android/server/wm/TaskStack;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v5

    if-gtz v5, :cond_4e

    .line 608
    const/4 v2, 0x1

    .line 611
    :cond_4e
    if-eqz v2, :cond_69

    .line 613
    iget-object v5, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_67

    sget-object v6, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 614
    iget-object v5, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 615
    .local v5, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v5, :cond_67

    .line 616
    invoke-virtual {v5, v1, v1, v4, v1}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Z)Z

    .line 620
    .end local v5  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_67
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 622
    :cond_69
    return v2

    .line 581
    .end local v0  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v2  # "canUpdate":Z
    .end local v3  # "topDisplay":Lcom/android/server/wm/ActivityDisplay;
    :cond_6a
    :goto_6a
    const/4 v0, 0x1

    return v0
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 5
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J

    .line 1146
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    if-eqz v0, :cond_7

    .line 1147
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/wm/WindowProcessListener;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1149
    :cond_7
    return-void
.end method
