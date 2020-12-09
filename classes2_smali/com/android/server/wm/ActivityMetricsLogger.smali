.class Lcom/android/server/wm/ActivityMetricsLogger;
.super Ljava/lang/Object;
.source "ActivityMetricsLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;,
        Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;,
        Lcom/android/server/wm/ActivityMetricsLogger$H;
    }
.end annotation


# static fields
.field private static final INVALID_DELAY:I = -0x1

.field private static final INVALID_START_TIME:J = -0x1L

.field private static final INVALID_TRANSITION_TYPE:I = -0x1

.field static final LAUNCH_OBSERVER_ACTIVITY_RECORD_PROTO_CHUNK_SIZE:I = 0x200
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MSG_CHECK_VISIBILITY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

.field private static final WINDOW_STATE_ASSISTANT:I = 0x3

.field private static final WINDOW_STATE_FREEFORM:I = 0x2

.field private static final WINDOW_STATE_INVALID:I = -0x1

.field private static final WINDOW_STATE_SIDE_BY_SIDE:I = 0x1

.field private static final WINDOW_STATE_STANDARD:I


# instance fields
.field private mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

.field private final mContext:Landroid/content/Context;

.field private mCurrentTransitionDelayMs:I

.field private mCurrentTransitionDeviceUptime:I

.field private mCurrentTransitionStartTime:J

.field private final mHandler:Lcom/android/server/wm/ActivityMetricsLogger$H;

.field private mLastLogTimeSecs:J

.field private mLastTransitionStartTime:J

.field private final mLastWindowingModeTransitionInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

.field private mLoggedTransitionStarting:Z

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field private final mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field private mWindowState:I

.field private final mWindowingModeTransitionInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 124
    const-string v0, "window_time_0"

    const-string v1, "window_time_1"

    const-string v2, "window_time_2"

    const-string v3, "window_time_3"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityMetricsLogger;->TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityStackSupervisor;Landroid/content/Context;Landroid/os/Looper;)V
    .registers 8

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    .line 131
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 135
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    .line 136
    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionStartTime:J

    .line 145
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 148
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 264
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastLogTimeSecs:J

    .line 265
    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 266
    iput-object p2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mContext:Landroid/content/Context;

    .line 267
    new-instance p1, Lcom/android/server/wm/ActivityMetricsLogger$H;

    invoke-direct {p1, p0, p3}, Lcom/android/server/wm/ActivityMetricsLogger$H;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mHandler:Lcom/android/server/wm/ActivityMetricsLogger$H;

    .line 268
    new-instance p1, Lcom/android/server/wm/LaunchObserverRegistryImpl;

    invoke-direct {p1, p3}, Lcom/android/server/wm/LaunchObserverRegistryImpl;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    .line 269
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->checkVisibility(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I
    .registers 2

    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->getTransitionType(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/WindowProcessController;
    .registers 2

    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->findProcessForActivity(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    return-object p0
.end method

.method private allWindowsDrawn()Z
    .registers 4

    .line 592
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1d

    .line 593
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    invoke-static {v2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 594
    const/4 v0, 0x0

    return v0

    .line 592
    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 597
    :cond_1d
    return v1
.end method

.method private calculateCurrentDelay()I
    .registers 5

    .line 632
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private calculateDelay(J)I
    .registers 5

    .line 637
    iget-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    sub-long/2addr p1, v0

    long-to-int p1, p1

    return p1
.end method

.method private checkVisibility(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;)V
    .registers 6

    .line 540
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 542
    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 543
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v2

    .line 542
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 549
    if-nez v1, :cond_1d

    .line 550
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_52

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 555
    :cond_1d
    :try_start_1d
    invoke-static {v1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eq v2, p2, :cond_28

    .line 556
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_52

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 562
    :cond_28
    :try_start_28
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->hasVisibleNonFinishingActivity(Lcom/android/server/wm/TaskRecord;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 563
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_52

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 567
    :cond_33
    :try_start_33
    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppTransitionCancel(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    .line 568
    iget-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 569
    iget-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_4d

    .line 570
    const/4 p1, 0x1

    const-string p2, "notifyVisibilityChanged to invisible"

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->reset(ZLcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Ljava/lang/String;)V

    .line 572
    :cond_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_33 .. :try_end_4e} :catchall_52

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 573
    return-void

    .line 572
    :catchall_52
    move-exception p1

    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method static convertActivityRecordToProto(Lcom/android/server/wm/ActivityRecord;)[B
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1086
    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:convertActivityRecordToProto"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1091
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    const/16 v3, 0x200

    invoke-direct {v2, v3}, Landroid/util/proto/ProtoOutputStream;-><init>(I)V

    .line 1094
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 1095
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    .line 1097
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1099
    return-object p0
.end method

.method private convertAppStartTransitionType(I)I
    .registers 3

    .line 785
    const/4 v0, 0x7

    if-ne p1, v0, :cond_5

    .line 786
    const/4 p1, 0x3

    return p1

    .line 788
    :cond_5
    const/16 v0, 0x8

    if-ne p1, v0, :cond_b

    .line 789
    const/4 p1, 0x1

    return p1

    .line 791
    :cond_b
    const/16 v0, 0x9

    if-ne p1, v0, :cond_11

    .line 792
    const/4 p1, 0x2

    return p1

    .line 794
    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method private static convertTransitionTypeToLaunchObserverTemperature(I)I
    .registers 2

    .line 1104
    const/4 v0, 0x7

    if-eq p0, v0, :cond_11

    const/16 v0, 0x8

    if-eq p0, v0, :cond_f

    const/16 v0, 0x9

    if-eq p0, v0, :cond_d

    .line 1112
    const/4 p0, -0x1

    return p0

    .line 1108
    :cond_d
    const/4 p0, 0x3

    return p0

    .line 1106
    :cond_f
    const/4 p0, 0x2

    return p0

    .line 1110
    :cond_11
    const/4 p0, 0x1

    return p0
.end method

.method private findProcessForActivity(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/WindowProcessController;
    .registers 4

    .line 962
    if-eqz p1, :cond_15

    .line 963
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowProcessController;

    goto :goto_16

    .line 965
    :cond_15
    const/4 p1, 0x0

    .line 962
    :goto_16
    return-object p1
.end method

.method private getArtManagerInternal()Landroid/content/pm/dex/ArtManagerInternal;
    .registers 2

    .line 969
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    if-nez v0, :cond_e

    .line 973
    const-class v0, Landroid/content/pm/dex/ArtManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/dex/ArtManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    .line 975
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    return-object v0
.end method

.method private getTransitionType(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I
    .registers 4

    .line 920
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$900(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_19

    .line 921
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1000(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    if-nez v0, :cond_10

    .line 922
    const/16 p1, 0x8

    return p1

    .line 923
    :cond_10
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1000(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result p1

    if-ne p1, v1, :cond_26

    .line 924
    const/16 p1, 0x9

    return p1

    .line 926
    :cond_19
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1000(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    if-eqz v0, :cond_28

    .line 927
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1000(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result p1

    if-ne p1, v1, :cond_26

    goto :goto_28

    .line 932
    :cond_26
    const/4 p1, -0x1

    return p1

    .line 930
    :cond_28
    :goto_28
    const/4 p1, 0x7

    return p1
.end method

.method private hasVisibleNonFinishingActivity(Lcom/android/server/wm/TaskRecord;)Z
    .registers 6

    .line 530
    iget-object v0, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1e

    .line 531
    iget-object v2, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 532
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v3, :cond_1b

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v2, :cond_1b

    .line 533
    return v1

    .line 530
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 536
    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method private isAnyTransitionActive()Z
    .registers 5

    .line 601
    iget-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 602
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 601
    :goto_13
    return v0
.end method

.method private isLoggableResultCode(I)Z
    .registers 3

    .line 437
    if-eqz p1, :cond_8

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 p1, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 p1, 0x1

    :goto_9
    return p1
.end method

.method private launchObserverNotifyActivityLaunchCancelled(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V
    .registers 5

    .line 1056
    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:launchObserverNotifyActivityLaunchCancelled"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1060
    if-eqz p1, :cond_12

    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger;->convertActivityRecordToProto(Lcom/android/server/wm/ActivityRecord;)[B

    move-result-object p1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    .line 1062
    :goto_13
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onActivityLaunchCancelled([B)V

    .line 1064
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1065
    return-void
.end method

.method private launchObserverNotifyActivityLaunchFinished(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V
    .registers 5

    .line 1072
    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:launchObserverNotifyActivityLaunchFinished"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1075
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    .line 1076
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger;->convertActivityRecordToProto(Lcom/android/server/wm/ActivityRecord;)[B

    move-result-object p1

    .line 1075
    invoke-virtual {v2, p1}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onActivityLaunchFinished([B)V

    .line 1078
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1079
    return-void
.end method

.method private launchObserverNotifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V
    .registers 6

    .line 1038
    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:launchObserverNotifyActivityLaunched"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1041
    nop

    .line 1042
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->getTransitionType(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v2

    invoke-static {v2}, Lcom/android/server/wm/ActivityMetricsLogger;->convertTransitionTypeToLaunchObserverTemperature(I)I

    move-result v2

    .line 1045
    iget-object v3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger;->convertActivityRecordToProto(Lcom/android/server/wm/ActivityRecord;)[B

    move-result-object p1

    invoke-virtual {v3, p1, v2}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onActivityLaunched([BI)V

    .line 1048
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1049
    return-void
.end method

.method private launchObserverNotifyIntentFailed()V
    .registers 4

    .line 1025
    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:launchObserverNotifyIntentFailed"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1028
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    invoke-virtual {v2}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onIntentFailed()V

    .line 1030
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1031
    return-void
.end method

.method private launchObserverNotifyIntentStarted(Landroid/content/Intent;)V
    .registers 5

    .line 1010
    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:launchObserverNotifyIntentStarted"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1014
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onIntentStarted(Landroid/content/Intent;)V

    .line 1016
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1017
    return-void
.end method

.method private logAppDisplayed(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .registers 7

    .line 767
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_c

    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_c

    .line 768
    return-void

    .line 771
    :cond_c
    const/16 v0, 0x7539

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->userId:I

    .line 772
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget v4, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->activityRecordIdHashCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x2

    iget-object v4, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    aput-object v4, v1, v2

    const/4 v2, 0x3

    iget v4, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    .line 773
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    .line 771
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 775
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 776
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 777
    const-string v1, "Displayed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    iget-object v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    iget p1, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    int-to-long v1, p1

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 781
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    return-void
.end method

.method private logAppFullyDrawn(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .registers 5

    .line 844
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_c

    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_c

    .line 845
    return-void

    .line 848
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 849
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 850
    const-string v1, "Fully drawn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    iget-object v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    iget p1, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsFullyDrawnDelayMs:I

    int-to-long v1, p1

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 854
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    return-void
.end method

.method private logAppStartMemoryStateCapture(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .registers 18

    .line 936
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$2200(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    if-nez v0, :cond_7

    .line 938
    return-void

    .line 941
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$2200(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v0

    .line 942
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1400(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 943
    invoke-static {v3, v0}, Lcom/android/server/am/MemoryStatUtil;->readMemoryStatFromFilesystem(II)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    move-result-object v0

    .line 944
    if-nez v0, :cond_1c

    .line 946
    return-void

    .line 949
    :cond_1c
    const/16 v2, 0x37

    .line 952
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$2300(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p1

    iget-object v5, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    iget-wide v6, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgfault:J

    iget-wide v8, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgmajfault:J

    iget-wide v10, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->rssInBytes:J

    iget-wide v12, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->cacheInBytes:J

    iget-wide v14, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->swapInBytes:J

    .line 949
    invoke-static/range {v2 .. v15}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;JJJJJ)I

    .line 959
    return-void
.end method

.method private logAppTransition(IILcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .registers 25

    .line 696
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    new-instance v2, Landroid/metrics/LogMaker;

    const/16 v3, 0x2f9

    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 697
    iget-object v3, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 698
    iget v3, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 699
    iget-object v3, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    const/16 v4, 0x367

    invoke-virtual {v2, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 700
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1400(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v10

    .line 701
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1500(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 702
    const/16 v3, 0x388

    .line 703
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1500(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v4

    .line 702
    invoke-virtual {v2, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 705
    :cond_33
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1600(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v3

    .line 706
    if-eqz v3, :cond_3e

    .line 707
    const/16 v4, 0x387

    invoke-virtual {v2, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 709
    :cond_3e
    const/16 v4, 0x389

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 710
    const/16 v4, 0x145

    .line 711
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 710
    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 712
    const/16 v4, 0x13f

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 713
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1700(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 714
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1800(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_74

    .line 715
    const/16 v4, 0x141

    .line 716
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1800(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 715
    invoke-virtual {v2, v4, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 718
    :cond_74
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1900(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v4

    if-eq v4, v5, :cond_87

    .line 719
    const/16 v4, 0x3b1

    .line 720
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1900(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 719
    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 722
    :cond_87
    const/16 v4, 0x142

    iget v5, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 723
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityMetricsLogger;->getArtManagerInternal()Landroid/content/pm/dex/ArtManagerInternal;

    move-result-object v4

    .line 725
    if-eqz v4, :cond_ae

    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$2000(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_9f

    goto :goto_ae

    .line 727
    :cond_9f
    nop

    .line 728
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1400(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 729
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$2000(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v6

    .line 727
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/dex/ArtManagerInternal;->getPackageOptimizationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/content/pm/dex/PackageOptimizationInfo;

    move-result-object v4

    move-object v14, v4

    goto :goto_b3

    .line 726
    :cond_ae
    :goto_ae
    invoke-static {}, Landroid/content/pm/dex/PackageOptimizationInfo;->createWithNoInfo()Landroid/content/pm/dex/PackageOptimizationInfo;

    move-result-object v4

    move-object v14, v4

    .line 730
    :goto_b3
    const/16 v4, 0x529

    .line 731
    invoke-virtual {v14}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationReason()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 730
    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 732
    const/16 v4, 0x528

    .line 733
    invoke-virtual {v14}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationFilter()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 732
    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 734
    iget-object v4, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v4, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 735
    const/16 v4, 0x30

    .line 737
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1400(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->packageName:Ljava/lang/String;

    iget v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    .line 739
    invoke-direct {v0, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->convertAppStartTransitionType(I)I

    move-result v7

    iget-object v8, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    .line 741
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1500(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v9

    move/from16 v2, p1

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v11, v2

    .line 744
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1700(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v13

    .line 746
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1800(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v15

    .line 747
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1900(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v16

    iget v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    move/from16 v17, v2

    .line 750
    invoke-virtual {v14}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationReason()I

    move-result v19

    .line 751
    invoke-virtual {v14}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationFilter()I

    move-result v20

    .line 735
    move/from16 v14, p2

    move-object/from16 v18, v3

    invoke-static/range {v4 .. v20}, Landroid/util/StatsLog;->write(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZJIIIIILjava/lang/String;II)I

    .line 763
    invoke-direct {v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppStartMemoryStateCapture(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    .line 764
    return-void
.end method

.method private logAppTransitionCancel(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V
    .registers 6

    .line 641
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->getTransitionType(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    .line 642
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 643
    return-void

    .line 645
    :cond_8
    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x478

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 646
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 647
    invoke-virtual {v1, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 648
    const/16 v2, 0x367

    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 649
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 650
    const/16 v1, 0x31

    .line 652
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 653
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 654
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityMetricsLogger;->convertAppStartTransitionType(I)I

    move-result v0

    .line 655
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 650
    invoke-static {v1, v2, v3, v0, p1}, Landroid/util/StatsLog;->write(IILjava/lang/String;ILjava/lang/String;)I

    .line 663
    return-void
.end method

.method private logAppTransitionMultiEvents()V
    .registers 9

    .line 667
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_47

    .line 668
    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 669
    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->getTransitionType(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v2

    .line 670
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1a

    .line 676
    return-void

    .line 681
    :cond_1a
    new-instance v2, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/wm/ActivityMetricsLogger$1;)V

    .line 683
    iget v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionDeviceUptime:I

    .line 684
    iget v5, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionDelayMs:I

    .line 685
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$0lYHhsj1ibZMP6eUAxlwT_URn-4;

    invoke-direct {v7, p0, v4, v5, v2}, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$0lYHhsj1ibZMP6eUAxlwT_URn-4;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;IILcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 687
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$DGh4oiUM74EvEwFf0Up59dk2u_I;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$DGh4oiUM74EvEwFf0Up59dk2u_I;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 689
    invoke-static {v1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object v3, v1, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    .line 667
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 691
    :cond_47
    return-void
.end method

.method private notifyActivityLaunched(ILcom/android/server/wm/ActivityRecord;ZZ)V
    .registers 12

    .line 381
    const/4 v0, 0x0

    if-eqz p2, :cond_8

    .line 382
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v1

    goto :goto_9

    .line 383
    :cond_8
    move v1, v0

    .line 384
    :goto_9
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 385
    iget-wide v3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1a

    .line 387
    return-void

    .line 390
    :cond_1a
    const/4 v3, 0x1

    if-eqz p2, :cond_27

    iget-boolean v4, p2, Lcom/android/server/wm/ActivityRecord;->mDrawn:Z

    if-eqz v4, :cond_27

    .line 392
    const-string p1, "launched activity already visible"

    invoke-direct {p0, v3, v2, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->reset(ZLcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Ljava/lang/String;)V

    .line 393
    return-void

    .line 396
    :cond_27
    if-eqz p2, :cond_2f

    if-eqz v2, :cond_2f

    .line 401
    invoke-static {v2, p2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$102(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 402
    return-void

    .line 405
    :cond_2f
    iget-object v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 406
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lez v4, :cond_3a

    if-nez v2, :cond_3a

    move v0, v3

    .line 407
    :cond_3a
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->isLoggableResultCode(I)Z

    move-result v4

    if-eqz v4, :cond_46

    if-eqz p2, :cond_46

    if-eqz p4, :cond_46

    if-nez v1, :cond_4e

    :cond_46
    if-nez v0, :cond_4e

    .line 410
    const-string p1, "failed to launch or not a process switch"

    invoke-direct {p0, v3, v2, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->reset(ZLcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Ljava/lang/String;)V

    .line 411
    return-void

    .line 412
    :cond_4e
    if-eqz v0, :cond_51

    .line 414
    return-void

    .line 421
    :cond_51
    new-instance p4, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    const/4 v0, 0x0

    invoke-direct {p4, p0, v0}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$1;)V

    .line 422
    invoke-static {p4, p2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$102(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 423
    invoke-static {p4, p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$902(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Z)Z

    .line 424
    invoke-static {p4, p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1002(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I

    .line 425
    iget-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {p1, v1, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 426
    iget-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {p1, v1, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 427
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    long-to-int p1, p1

    iput p1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionDeviceUptime:I

    .line 428
    invoke-direct {p0, p4}, Lcom/android/server/wm/ActivityMetricsLogger;->startTraces(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    .line 429
    invoke-direct {p0, p4}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    .line 430
    return-void
.end method

.method private reset(ZLcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Ljava/lang/String;)V
    .registers 4

    .line 607
    if-nez p1, :cond_b

    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->isAnyTransitionActive()Z

    move-result p3

    if-eqz p3, :cond_b

    .line 608
    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppTransitionMultiEvents()V

    .line 610
    :cond_b
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->stopLaunchTrace(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    .line 613
    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->isAnyTransitionActive()Z

    move-result p3

    if-eqz p3, :cond_1e

    .line 615
    if-eqz p1, :cond_1a

    .line 616
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyActivityLaunchCancelled(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    goto :goto_21

    .line 618
    :cond_1a
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyActivityLaunchFinished(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    goto :goto_21

    .line 621
    :cond_1e
    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyIntentFailed()V

    .line 624
    :goto_21
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    .line 625
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionDelayMs:I

    .line 626
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    .line 627
    iget-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 628
    return-void
.end method

.method private startTraces(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V
    .registers 6

    .line 984
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_31

    if-eqz p1, :cond_31

    .line 985
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$2400(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_31

    .line 988
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launching: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 988
    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 990
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$2402(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Z)Z

    .line 991
    return-void

    .line 986
    :cond_31
    :goto_31
    return-void
.end method

.method private stopLaunchTrace(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V
    .registers 6

    .line 994
    if-nez p1, :cond_3

    .line 995
    return-void

    .line 997
    :cond_3
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$2400(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 998
    const-wide/16 v0, 0x40

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launching: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 998
    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1000
    invoke-static {p1, v3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$2402(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Z)Z

    .line 1002
    :cond_29
    return-void
.end method


# virtual methods
.method public getLaunchObserverRegistry()Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;
    .registers 2

    .line 1005
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    return-object v0
.end method

.method public synthetic lambda$logAppTransitionMultiEvents$0$ActivityMetricsLogger(IILcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .registers 4

    .line 685
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppTransition(IILcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    return-void
.end method

.method public synthetic lambda$logAppTransitionMultiEvents$1$ActivityMetricsLogger(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .registers 2

    .line 687
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppDisplayed(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    return-void
.end method

.method public synthetic lambda$logAppTransitionReportedDrawn$2$ActivityMetricsLogger(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .registers 2

    .line 839
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppFullyDrawn(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    return-void
.end method

.method logAbortedBgActivityStart(Landroid/content/Intent;Lcom/android/server/wm/WindowProcessController;ILjava/lang/String;IZIIZZ)V
    .registers 23

    .line 864
    move-object v0, p2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 865
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 866
    new-instance v5, Landroid/metrics/LogMaker;

    const/16 v6, 0x5e9

    invoke-direct {v5, v6}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 867
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->setTimestamp(J)Landroid/metrics/LogMaker;

    .line 868
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x5ea

    invoke-virtual {v5, v7, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 869
    const/16 v6, 0x5eb

    move-object/from16 v7, p4

    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 870
    nop

    .line 871
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 870
    const/16 v7, 0x5ec

    invoke-virtual {v5, v7, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 872
    nop

    .line 873
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 872
    const/16 v7, 0x5ed

    invoke-virtual {v5, v7, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 874
    const/16 v6, 0x5ee

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 875
    const/16 v6, 0x5ef

    .line 876
    invoke-static/range {p8 .. p8}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 875
    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 877
    const/16 v6, 0x5f0

    .line 878
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 877
    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 879
    const/16 v6, 0x5f7

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 880
    if-eqz p1, :cond_81

    .line 881
    const/16 v6, 0x5f8

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 882
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 883
    if-eqz v6, :cond_81

    .line 884
    const/16 v7, 0x5f6

    .line 885
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    .line 884
    invoke-virtual {v5, v7, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 888
    :cond_81
    if-eqz v0, :cond_12e

    .line 889
    const/16 v6, 0x5f9

    iget-object v7, v0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 890
    const/16 v6, 0x5fa

    .line 891
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getCurrentProcState()I

    move-result v7

    invoke-static {v7}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 890
    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 892
    const/16 v6, 0x5fb

    .line 893
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasClientActivities()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 892
    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 894
    const/16 v6, 0x5fc

    .line 895
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasForegroundServices()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 894
    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 896
    const/16 v6, 0x5fd

    .line 897
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasForegroundActivities()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 896
    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 898
    const/16 v6, 0x5fe

    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasTopUi()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 899
    const/16 v6, 0x5ff

    .line 900
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasOverlayUi()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 899
    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 901
    const/16 v6, 0x600

    .line 902
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasPendingUiClean()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 901
    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 903
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getInteractionEventTime()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_102

    .line 904
    const/16 v6, 0x601

    .line 905
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getInteractionEventTime()J

    move-result-wide v10

    sub-long v10, v1, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 904
    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 907
    :cond_102
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getFgInteractionTime()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-eqz v6, :cond_118

    .line 908
    const/16 v6, 0x602

    .line 909
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getFgInteractionTime()J

    move-result-wide v10

    sub-long/2addr v1, v10

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 908
    invoke-virtual {v5, v6, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 911
    :cond_118
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getWhenUnimportant()J

    move-result-wide v1

    cmp-long v1, v1, v8

    if-eqz v1, :cond_12e

    .line 912
    const/16 v1, 0x603

    .line 913
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getWhenUnimportant()J

    move-result-wide v6

    sub-long/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 912
    invoke-virtual {v5, v1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 916
    :cond_12e
    move-object v0, p0

    iget-object v0, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v0, v5}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 917
    return-void
.end method

.method logAppTransitionReportedDrawn(Lcom/android/server/wm/ActivityRecord;Z)Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;
    .registers 22

    .line 799
    move-object/from16 v6, p0

    move-object/from16 v3, p1

    iget-object v0, v6, Lcom/android/server/wm/ActivityMetricsLogger;->mLastWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 800
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v1

    .line 799
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 801
    if-nez v2, :cond_15

    .line 802
    const/4 v0, 0x0

    return-object v0

    .line 808
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityManager:ReportingFullyDrawn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    invoke-static {v2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 808
    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 811
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x442

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 812
    iget-object v1, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 813
    const/16 v1, 0x367

    iget-object v7, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 814
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, v6, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionStartTime:J

    sub-long/2addr v7, v9

    .line 815
    const/16 v1, 0x443

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v1, v9}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 816
    if-eqz p2, :cond_5b

    .line 817
    const/16 v1, 0xd

    goto :goto_5d

    .line 818
    :cond_5b
    const/16 v1, 0xc

    .line 816
    :goto_5d
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 819
    const/16 v1, 0x144

    .line 820
    invoke-static {v2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$900(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 819
    invoke-virtual {v0, v1, v9}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 821
    iget-object v1, v6, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 822
    const/16 v11, 0x32

    .line 824
    invoke-static {v2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 825
    invoke-static {v2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iget-object v13, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 826
    if-eqz p2, :cond_87

    .line 827
    const/4 v0, 0x1

    move v14, v0

    goto :goto_89

    .line 828
    :cond_87
    const/4 v0, 0x2

    move v14, v0

    .line 829
    :goto_89
    invoke-static {v2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v15, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 830
    invoke-static {v2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$900(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v16

    .line 822
    move-wide/from16 v17, v7

    invoke-static/range {v11 .. v18}, Landroid/util/StatsLog;->write(IILjava/lang/String;ILjava/lang/String;ZJ)I

    .line 835
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 837
    new-instance v9, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    long-to-int v4, v7

    const/4 v5, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityMetricsLogger$1;)V

    .line 839
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$xxgDrxthXaC_M25gC-YvHOsQ6yE;

    invoke-direct {v1, v6, v9}, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$xxgDrxthXaC_M25gC-YvHOsQ6yE;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 840
    return-object v9
.end method

.method logWindowState()V
    .registers 8

    .line 272
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 273
    iget v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1a

    .line 277
    iget-object v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/server/wm/ActivityMetricsLogger;->TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

    aget-object v2, v5, v2

    iget-wide v5, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastLogTimeSecs:J

    sub-long v5, v0, v5

    long-to-int v5, v5

    invoke-static {v4, v2, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 280
    :cond_1a
    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastLogTimeSecs:J

    .line 282
    iput v3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    .line 283
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 284
    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 285
    if-nez v0, :cond_29

    .line 286
    return-void

    .line 289
    :cond_29
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeAssistant()Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_33

    .line 290
    iput v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    .line 291
    return-void

    .line 294
    :cond_33
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v1

    .line 295
    const/4 v3, 0x2

    if-ne v1, v3, :cond_46

    .line 296
    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/RootActivityContainer;->findStackBehind(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v1

    .line 299
    :cond_46
    const/4 v4, 0x1

    if-eq v1, v4, :cond_79

    if-eq v1, v2, :cond_76

    const/4 v2, 0x4

    if-eq v1, v2, :cond_76

    const/4 v2, 0x5

    if-eq v1, v2, :cond_73

    .line 311
    if-nez v1, :cond_54

    goto :goto_7d

    .line 312
    :cond_54
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown windowing mode for stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " windowingMode="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 308
    :cond_73
    iput v3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    .line 309
    goto :goto_7d

    .line 305
    :cond_76
    iput v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    .line 306
    goto :goto_7d

    .line 301
    :cond_79
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    .line 302
    nop

    .line 316
    :goto_7d
    return-void
.end method

.method notifyActivityLaunched(ILcom/android/server/wm/ActivityRecord;)V
    .registers 7

    .line 346
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->findProcessForActivity(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 347
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    move v3, v1

    goto :goto_b

    :cond_a
    move v3, v2

    .line 353
    :goto_b
    if-eqz v0, :cond_16

    .line 354
    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowProcessController;->hasStartedActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_16

    :cond_14
    move v1, v2

    goto :goto_17

    :cond_16
    :goto_16
    nop

    .line 356
    :goto_17
    invoke-direct {p0, p1, p2, v3, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/wm/ActivityRecord;ZZ)V

    .line 357
    return-void
.end method

.method notifyActivityLaunching(Landroid/content/Intent;)V
    .registers 6

    .line 329
    iget-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    .line 331
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    .line 332
    iget-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionStartTime:J

    .line 334
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyIntentStarted(Landroid/content/Intent;)V

    .line 336
    :cond_15
    return-void
.end method

.method notifyBindApplication(Landroid/content/pm/ApplicationInfo;)V
    .registers 5

    .line 581
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_24

    .line 582
    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 585
    invoke-static {v1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-ne v2, p1, :cond_21

    .line 586
    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->calculateCurrentDelay()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$402(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I

    .line 581
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 589
    :cond_24
    return-void
.end method

.method notifyStartingWindowDrawn(IJ)V
    .registers 5
    .param p1  # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param

    .line 465
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 466
    if-eqz p1, :cond_1d

    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1300(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1d

    .line 469
    :cond_11
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1302(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Z)Z

    .line 470
    invoke-direct {p0, p2, p3}, Lcom/android/server/wm/ActivityMetricsLogger;->calculateDelay(J)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$302(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I

    .line 471
    return-void

    .line 467
    :cond_1d
    :goto_1d
    return-void
.end method

.method notifyTransitionStarting(Landroid/util/SparseIntArray;J)V
    .registers 7

    .line 480
    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->isAnyTransitionActive()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    if-eqz v0, :cond_b

    goto :goto_46

    .line 487
    :cond_b
    invoke-direct {p0, p2, p3}, Lcom/android/server/wm/ActivityMetricsLogger;->calculateDelay(J)I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionDelayMs:I

    .line 488
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    .line 490
    const/4 p3, 0x0

    .line 491
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    sub-int/2addr v0, p2

    :goto_1a
    if-ltz v0, :cond_36

    .line 492
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 493
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 495
    if-nez v1, :cond_2b

    .line 496
    goto :goto_33

    .line 498
    :cond_2b
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p3

    invoke-static {v1, p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$202(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I

    .line 499
    move-object p3, v1

    .line 491
    :goto_33
    add-int/lit8 v0, v0, -0x1

    goto :goto_1a

    .line 501
    :cond_36
    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->allWindowsDrawn()Z

    move-result p1

    if-eqz p1, :cond_45

    .line 503
    if-nez p3, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 p2, 0x0

    .line 504
    :goto_40
    const-string p1, "notifyTransitionStarting - all windows drawn"

    invoke-direct {p0, p2, p3, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->reset(ZLcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Ljava/lang/String;)V

    .line 506
    :cond_45
    return-void

    .line 484
    :cond_46
    :goto_46
    return-void
.end method

.method notifyVisibilityChanged(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 514
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 515
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v1

    .line 514
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 516
    if-nez v0, :cond_f

    .line 517
    return-void

    .line 519
    :cond_f
    invoke-static {v0}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eq v0, p1, :cond_16

    .line 520
    return-void

    .line 522
    :cond_16
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 523
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 524
    iput-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 525
    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 526
    iget-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mHandler:Lcom/android/server/wm/ActivityMetricsLogger$H;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 527
    return-void
.end method

.method notifyWindowsDrawn(IJ)Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;
    .registers 6
    .param p1  # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param

    .line 447
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 448
    const/4 v0, 0x0

    if-eqz p1, :cond_33

    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_33

    .line 451
    :cond_12
    invoke-direct {p0, p2, p3}, Lcom/android/server/wm/ActivityMetricsLogger;->calculateDelay(J)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$502(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I

    .line 452
    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1102(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Z)Z

    .line 453
    new-instance p2, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    invoke-direct {p2, p0, p1, v0}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/wm/ActivityMetricsLogger$1;)V

    .line 455
    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->allWindowsDrawn()Z

    move-result p3

    if-eqz p3, :cond_32

    iget-boolean p3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    if-eqz p3, :cond_32

    .line 456
    const/4 p3, 0x0

    const-string v0, "notifyWindowsDrawn - all windows drawn"

    invoke-direct {p0, p3, p1, v0}, Lcom/android/server/wm/ActivityMetricsLogger;->reset(ZLcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Ljava/lang/String;)V

    .line 458
    :cond_32
    return-object p2

    .line 449
    :cond_33
    :goto_33
    return-object v0
.end method
