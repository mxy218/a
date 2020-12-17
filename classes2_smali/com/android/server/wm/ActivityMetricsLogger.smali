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

.field private static mLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

.field public static mUxPerf:Landroid/util/BoostFramework;


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

    .line 126
    const-string v0, "window_time_0"

    const-string v1, "window_time_1"

    const-string v2, "window_time_2"

    const-string v3, "window_time_3"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityMetricsLogger;->TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

    .line 157
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    sput-object v0, Lcom/android/server/wm/ActivityMetricsLogger;->mUxPerf:Landroid/util/BoostFramework;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityStackSupervisor;Landroid/content/Context;Landroid/os/Looper;)V
    .registers 8
    .param p1, "supervisor"  # Lcom/android/server/wm/ActivityStackSupervisor;
    .param p2, "context"  # Landroid/content/Context;
    .param p3, "looper"  # Landroid/os/Looper;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    .line 133
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 137
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    .line 138
    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionStartTime:J

    .line 147
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 150
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 269
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastLogTimeSecs:J

    .line 270
    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 271
    iput-object p2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mContext:Landroid/content/Context;

    .line 272
    new-instance v0, Lcom/android/server/wm/ActivityMetricsLogger$H;

    invoke-direct {v0, p0, p3}, Lcom/android/server/wm/ActivityMetricsLogger$H;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mHandler:Lcom/android/server/wm/ActivityMetricsLogger$H;

    .line 273
    new-instance v0, Lcom/android/server/wm/LaunchObserverRegistryImpl;

    invoke-direct {v0, p3}, Lcom/android/server/wm/LaunchObserverRegistryImpl;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    .line 274
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/wm/ActivityMetricsLogger;
    .param p1, "x1"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "x2"  # Lcom/android/server/wm/ActivityRecord;

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->checkVisibility(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/wm/ActivityMetricsLogger;
    .param p1, "x1"  # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->getTransitionType(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/WindowProcessController;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/wm/ActivityMetricsLogger;
    .param p1, "x1"  # Lcom/android/server/wm/ActivityRecord;

    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->findProcessForActivity(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    return-object v0
.end method

.method private allWindowsDrawn()Z
    .registers 4

    .line 600
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "index":I
    :goto_8
    if-ltz v0, :cond_1d

    .line 601
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    invoke-static {v2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 602
    const/4 v1, 0x0

    return v1

    .line 600
    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 605
    .end local v0  # "index":I
    :cond_1d
    return v1
.end method

.method private calculateCurrentDelay()I
    .registers 5

    .line 640
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private calculateDelay(J)I
    .registers 5
    .param p1, "timestamp"  # J

    .line 645
    iget-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method

.method private checkVisibility(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;)V
    .registers 8
    .param p1, "t"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 548
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 550
    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 551
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v2

    .line 550
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 557
    .local v1, "info":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;
    if-nez v1, :cond_1d

    .line 558
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_6c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 563
    :cond_1d
    :try_start_1d
    invoke-static {v1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eq v2, p2, :cond_28

    .line 564
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_6c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 570
    :cond_28
    :try_start_28
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->hasVisibleNonFinishingActivity(Lcom/android/server/wm/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 571
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_6c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 574
    :cond_33
    :try_start_33
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v2, :cond_4d

    const-string v2, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyVisibilityChanged to invisible activity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_4d
    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppTransitionCancel(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    .line 576
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 577
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_67

    .line 578
    const/4 v2, 0x1

    const-string v3, "notifyVisibilityChanged to invisible"

    invoke-direct {p0, v2, v1, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->reset(ZLcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Ljava/lang/String;)V

    .line 580
    .end local v1  # "info":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;
    :cond_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_33 .. :try_end_68} :catchall_6c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 581
    return-void

    .line 580
    :catchall_6c
    move-exception v1

    :try_start_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method static convertActivityRecordToProto(Lcom/android/server/wm/ActivityRecord;)[B
    .registers 5
    .param p0, "record"  # Lcom/android/server/wm/ActivityRecord;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1111
    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:convertActivityRecordToProto"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1116
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    const/16 v3, 0x200

    invoke-direct {v2, v3}, Landroid/util/proto/ProtoOutputStream;-><init>(I)V

    .line 1119
    .local v2, "protoOutputStream":Landroid/util/proto/ProtoOutputStream;
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 1120
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    .line 1122
    .local v3, "bytes":[B
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1124
    return-object v3
.end method

.method private convertAppStartTransitionType(I)I
    .registers 3
    .param p1, "tronType"  # I

    .line 810
    const/4 v0, 0x7

    if-ne p1, v0, :cond_5

    .line 811
    const/4 v0, 0x3

    return v0

    .line 813
    :cond_5
    const/16 v0, 0x8

    if-ne p1, v0, :cond_b

    .line 814
    const/4 v0, 0x1

    return v0

    .line 816
    :cond_b
    const/16 v0, 0x9

    if-ne p1, v0, :cond_11

    .line 817
    const/4 v0, 0x2

    return v0

    .line 819
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method private static convertTransitionTypeToLaunchObserverTemperature(I)I
    .registers 2
    .param p0, "transitionType"  # I

    .line 1129
    const/4 v0, 0x7

    if-eq p0, v0, :cond_11

    const/16 v0, 0x8

    if-eq p0, v0, :cond_f

    const/16 v0, 0x9

    if-eq p0, v0, :cond_d

    .line 1137
    const/4 v0, -0x1

    return v0

    .line 1133
    :cond_d
    const/4 v0, 0x3

    return v0

    .line 1131
    :cond_f
    const/4 v0, 0x2

    return v0

    .line 1135
    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method private findProcessForActivity(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/WindowProcessController;
    .registers 5
    .param p1, "launchedActivity"  # Lcom/android/server/wm/ActivityRecord;

    .line 987
    if-eqz p1, :cond_15

    .line 988
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowProcessController;

    goto :goto_16

    .line 990
    :cond_15
    const/4 v0, 0x0

    .line 987
    :goto_16
    return-object v0
.end method

.method private getArtManagerInternal()Landroid/content/pm/dex/ArtManagerInternal;
    .registers 2

    .line 994
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    if-nez v0, :cond_e

    .line 998
    const-class v0, Landroid/content/pm/dex/ArtManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/dex/ArtManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    .line 1000
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    return-object v0
.end method

.method private getTransitionType(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I
    .registers 4
    .param p1, "info"  # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 945
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$900(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_19

    .line 946
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1000(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    if-nez v0, :cond_10

    .line 947
    const/16 v0, 0x8

    return v0

    .line 948
    :cond_10
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1000(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    if-ne v0, v1, :cond_26

    .line 949
    const/16 v0, 0x9

    return v0

    .line 951
    :cond_19
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1000(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    if-eqz v0, :cond_28

    .line 952
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1000(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    if-ne v0, v1, :cond_26

    goto :goto_28

    .line 957
    :cond_26
    const/4 v0, -0x1

    return v0

    .line 955
    :cond_28
    :goto_28
    const/4 v0, 0x7

    return v0
.end method

.method private hasVisibleNonFinishingActivity(Lcom/android/server/wm/TaskRecord;)Z
    .registers 6
    .param p1, "t"  # Lcom/android/server/wm/TaskRecord;

    .line 538
    iget-object v0, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1e

    .line 539
    iget-object v2, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 540
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v3, :cond_1b

    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v3, :cond_1b

    .line 541
    return v1

    .line 538
    .end local v2  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 544
    .end local v0  # "i":I
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method private isAnyTransitionActive()Z
    .registers 5

    .line 609
    iget-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 610
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 609
    :goto_13
    return v0
.end method

.method private isLoggableResultCode(I)Z
    .registers 3
    .param p1, "resultCode"  # I

    .line 445
    if-eqz p1, :cond_8

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method private launchObserverNotifyActivityLaunchCancelled(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V
    .registers 6
    .param p1, "info"  # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 1081
    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:launchObserverNotifyActivityLaunchCancelled"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1085
    if-eqz p1, :cond_12

    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/ActivityMetricsLogger;->convertActivityRecordToProto(Lcom/android/server/wm/ActivityRecord;)[B

    move-result-object v2

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    .line 1087
    .local v2, "activityRecordProto":[B
    :goto_13
    iget-object v3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onActivityLaunchCancelled([B)V

    .line 1089
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1090
    return-void
.end method

.method private launchObserverNotifyActivityLaunchFinished(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V
    .registers 6
    .param p1, "info"  # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 1097
    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:launchObserverNotifyActivityLaunchFinished"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1100
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    .line 1101
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/ActivityMetricsLogger;->convertActivityRecordToProto(Lcom/android/server/wm/ActivityRecord;)[B

    move-result-object v3

    .line 1100
    invoke-virtual {v2, v3}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onActivityLaunchFinished([B)V

    .line 1103
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1104
    return-void
.end method

.method private launchObserverNotifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V
    .registers 7
    .param p1, "info"  # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 1063
    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:launchObserverNotifyActivityLaunched"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1066
    nop

    .line 1067
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->getTransitionType(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v2

    invoke-static {v2}, Lcom/android/server/wm/ActivityMetricsLogger;->convertTransitionTypeToLaunchObserverTemperature(I)I

    move-result v2

    .line 1070
    .local v2, "temperature":I
    iget-object v3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/ActivityMetricsLogger;->convertActivityRecordToProto(Lcom/android/server/wm/ActivityRecord;)[B

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onActivityLaunched([BI)V

    .line 1073
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1074
    return-void
.end method

.method private launchObserverNotifyIntentFailed()V
    .registers 4

    .line 1050
    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:launchObserverNotifyIntentFailed"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1053
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    invoke-virtual {v2}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onIntentFailed()V

    .line 1055
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1056
    return-void
.end method

.method private launchObserverNotifyIntentStarted(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"  # Landroid/content/Intent;

    .line 1035
    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:launchObserverNotifyIntentStarted"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1039
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onIntentStarted(Landroid/content/Intent;)V

    .line 1041
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1042
    return-void
.end method

.method private logAppDisplayed(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .registers 8
    .param p1, "info"  # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 777
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_c

    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_c

    .line 778
    return-void

    .line 781
    :cond_c
    const/16 v0, 0x7539

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->userId:I

    .line 782
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

    iget v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    .line 783
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    .line 781
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 785
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 786
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 787
    const-string v1, "Displayed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    iget-object v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    iget v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    int-to-long v1, v1

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 792
    sget-object v1, Lcom/android/server/wm/ActivityMetricsLogger;->mUxPerf:Landroid/util/BoostFramework;

    if-eqz v1, :cond_59

    .line 793
    iget-object v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->packageName:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    invoke-virtual {v1, v4, v3, v2, v5}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;I)I

    .line 796
    :cond_59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    sget-object v1, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isAppInfoGame()I

    move-result v1

    .line 799
    .local v1, "isGame":I
    sget-object v2, Lcom/android/server/wm/ActivityMetricsLogger;->mUxPerf:Landroid/util/BoostFramework;

    if-eqz v2, :cond_72

    .line 800
    const/4 v4, 0x5

    iget-object v5, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v3, v5, v1}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;I)I

    .line 803
    :cond_72
    sget-object v2, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mPerf:Landroid/util/BoostFramework;

    if-eqz v2, :cond_8e

    sget-object v2, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->perfActivityBoostHandler:I

    if-lez v2, :cond_8e

    .line 804
    sget-object v2, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mPerf:Landroid/util/BoostFramework;

    sget-object v3, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget v3, v3, Lcom/android/server/wm/ActivityRecord;->perfActivityBoostHandler:I

    invoke-virtual {v2, v3}, Landroid/util/BoostFramework;->perfLockReleaseHandler(I)I

    .line 805
    sget-object v2, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/server/wm/ActivityRecord;->perfActivityBoostHandler:I

    .line 807
    :cond_8e
    return-void
.end method

.method private logAppFullyDrawn(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .registers 5
    .param p1, "info"  # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 869
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_c

    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_c

    .line 870
    return-void

    .line 873
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 874
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 875
    const-string v1, "Fully drawn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    iget-object v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    iget v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsFullyDrawnDelayMs:I

    int-to-long v1, v1

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 879
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    return-void
.end method

.method private logAppStartMemoryStateCapture(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .registers 21
    .param p1, "info"  # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 961
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$2200(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    if-nez v0, :cond_12

    .line 962
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v0, :cond_11

    const-string v0, "logAppStartMemoryStateCapture processRecord null"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    :cond_11
    return-void

    .line 966
    :cond_12
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$2200(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v0

    .line 967
    .local v0, "pid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1400(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 968
    .local v2, "uid":I
    invoke-static {v2, v0}, Lcom/android/server/am/MemoryStatUtil;->readMemoryStatFromFilesystem(II)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    move-result-object v15

    .line 969
    .local v15, "memoryStat":Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    if-nez v15, :cond_30

    .line 970
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v3, :cond_2f

    const-string v3, "logAppStartMemoryStateCapture memoryStat null"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :cond_2f
    return-void

    .line 974
    :cond_30
    const/16 v3, 0x37

    .line 977
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$2300(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v1, p1

    iget-object v6, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    iget-wide v7, v15, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgfault:J

    iget-wide v9, v15, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgmajfault:J

    iget-wide v11, v15, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->rssInBytes:J

    iget-wide v13, v15, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->cacheInBytes:J

    move/from16 v17, v0

    .end local v0  # "pid":I
    .local v17, "pid":I
    iget-wide v0, v15, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->swapInBytes:J

    .line 974
    move v4, v2

    move-object/from16 v18, v15

    .end local v15  # "memoryStat":Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    .local v18, "memoryStat":Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    move-wide v15, v0

    invoke-static/range {v3 .. v16}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;JJJJJ)I

    .line 984
    return-void
.end method

.method private logAppTransition(IILcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .registers 28
    .param p1, "currentTransitionDeviceUptime"  # I
    .param p2, "currentTransitionDelayMs"  # I
    .param p3, "info"  # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 706
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    new-instance v2, Landroid/metrics/LogMaker;

    const/16 v3, 0x2f9

    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 707
    .local v2, "builder":Landroid/metrics/LogMaker;
    iget-object v3, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 708
    iget v3, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 709
    iget-object v3, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    const/16 v4, 0x367

    invoke-virtual {v2, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 710
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1400(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v3

    .line 711
    .local v3, "isInstantApp":Z
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1500(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_33

    .line 712
    const/16 v4, 0x388

    .line 713
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1500(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v5

    .line 712
    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 715
    :cond_33
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1600(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v14

    .line 716
    .local v14, "launchToken":Ljava/lang/String;
    if-eqz v14, :cond_3e

    .line 717
    const/16 v4, 0x387

    invoke-virtual {v2, v4, v14}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 719
    :cond_3e
    const/16 v4, 0x389

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 720
    const/16 v4, 0x145

    .line 721
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 720
    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 722
    const/16 v4, 0x13f

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 723
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1700(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 724
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1800(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_74

    .line 725
    const/16 v4, 0x141

    .line 726
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1800(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 725
    invoke-virtual {v2, v4, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 728
    :cond_74
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1900(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v4

    if-eq v4, v5, :cond_87

    .line 729
    const/16 v4, 0x3b1

    .line 730
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1900(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 729
    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 732
    :cond_87
    const/16 v4, 0x142

    iget v5, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 733
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityMetricsLogger;->getArtManagerInternal()Landroid/content/pm/dex/ArtManagerInternal;

    move-result-object v10

    .line 735
    .local v10, "artManagerInternal":Landroid/content/pm/dex/ArtManagerInternal;
    if-eqz v10, :cond_ad

    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$2000(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9f

    goto :goto_ad

    .line 737
    :cond_9f
    nop

    .line 738
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1400(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 739
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$2000(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v5

    .line 737
    invoke-virtual {v10, v4, v5}, Landroid/content/pm/dex/ArtManagerInternal;->getPackageOptimizationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/content/pm/dex/PackageOptimizationInfo;

    move-result-object v4

    goto :goto_b1

    .line 736
    :cond_ad
    :goto_ad
    invoke-static {}, Landroid/content/pm/dex/PackageOptimizationInfo;->createWithNoInfo()Landroid/content/pm/dex/PackageOptimizationInfo;

    move-result-object v4

    .line 737
    :goto_b1
    move-object/from16 v21, v4

    .line 740
    .local v21, "packageOptimizationInfo":Landroid/content/pm/dex/PackageOptimizationInfo;
    const/16 v4, 0x529

    .line 741
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationReason()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 740
    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 742
    const/16 v4, 0x528

    .line 743
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationFilter()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 742
    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 744
    iget-object v4, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v4, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 745
    const/16 v4, 0x30

    .line 747
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1400(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->packageName:Ljava/lang/String;

    iget v7, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    .line 749
    invoke-direct {v0, v7}, Lcom/android/server/wm/ActivityMetricsLogger;->convertAppStartTransitionType(I)I

    move-result v7

    iget-object v8, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    .line 751
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1500(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v9

    move/from16 v15, p1

    mul-int/lit16 v11, v15, 0x3e8

    int-to-long v11, v11

    .line 754
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1700(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v13

    .line 756
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1800(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v16

    move/from16 v15, v16

    .line 757
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1900(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v16

    iget v4, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    move/from16 v17, v4

    .line 760
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationReason()I

    move-result v19

    .line 761
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationFilter()I

    move-result v20

    .line 745
    move-object/from16 v22, v10

    .end local v10  # "artManagerInternal":Landroid/content/pm/dex/ArtManagerInternal;
    .local v22, "artManagerInternal":Landroid/content/pm/dex/ArtManagerInternal;
    move v10, v3

    move-object/from16 v23, v14

    .end local v14  # "launchToken":Ljava/lang/String;
    .local v23, "launchToken":Ljava/lang/String;
    move/from16 v14, p2

    move-object/from16 v18, v23

    const/16 v4, 0x30

    invoke-static/range {v4 .. v20}, Landroid/util/StatsLog;->write(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZJIIIIILjava/lang/String;II)I

    .line 763
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v4, :cond_152

    .line 764
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 765
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1400(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->packageName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    .line 767
    invoke-direct {v0, v6}, Lcom/android/server/wm/ActivityMetricsLogger;->convertAppStartTransitionType(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 769
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1500(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 764
    const-string v5, "APP_START_OCCURRED(%s, %s, %s, %s, %s)"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_152
    invoke-direct {v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppStartMemoryStateCapture(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    .line 774
    return-void
.end method

.method private logAppTransitionCancel(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V
    .registers 9
    .param p1, "info"  # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 649
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->getTransitionType(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    .line 650
    .local v0, "type":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 651
    return-void

    .line 653
    :cond_8
    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x478

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 654
    .local v1, "builder":Landroid/metrics/LogMaker;
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 655
    invoke-virtual {v1, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 656
    const/16 v2, 0x367

    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 657
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 658
    const/16 v2, 0x31

    .line 660
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 661
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 662
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityMetricsLogger;->convertAppStartTransitionType(I)I

    move-result v5

    .line 663
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 658
    invoke-static {v2, v3, v4, v5, v6}, Landroid/util/StatsLog;->write(IILjava/lang/String;ILjava/lang/String;)I

    .line 664
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v2, :cond_8c

    .line 665
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 666
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 667
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 668
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityMetricsLogger;->convertAppStartTransitionType(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 669
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 665
    const-string v3, "APP_START_CANCELED(%s, %s, %s, %s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_8c
    return-void
.end method

.method private logAppTransitionMultiEvents()V
    .registers 11

    .line 674
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_b

    const-string v0, "logging transition events"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "index":I
    :goto_13
    if-ltz v0, :cond_80

    .line 676
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 677
    .local v2, "info":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;
    invoke-direct {p0, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->getTransitionType(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v3

    .line 678
    .local v3, "type":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_4d

    .line 679
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v4, :cond_4c

    .line 680
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid transition type processRunning="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    invoke-static {v2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$900(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " startResult="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    invoke-static {v2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1000(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 680
    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_4c
    return-void

    .line 687
    :cond_4d
    invoke-static {v2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    sput-object v4, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 691
    new-instance v4, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v2, v5}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/wm/ActivityMetricsLogger$1;)V

    .line 693
    .local v4, "infoSnapshot":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;
    iget v6, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionDeviceUptime:I

    .line 694
    .local v6, "currentTransitionDeviceUptime":I
    iget v7, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionDelayMs:I

    .line 695
    .local v7, "currentTransitionDelayMs":I
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v8

    new-instance v9, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$0lYHhsj1ibZMP6eUAxlwT_URn-4;

    invoke-direct {v9, p0, v6, v7, v4}, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$0lYHhsj1ibZMP6eUAxlwT_URn-4;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;IILcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 697
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v8

    new-instance v9, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$DGh4oiUM74EvEwFf0Up59dk2u_I;

    invoke-direct {v9, p0, v4}, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$DGh4oiUM74EvEwFf0Up59dk2u_I;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 699
    invoke-static {v2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object v5, v8, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    .line 675
    .end local v2  # "info":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;
    .end local v3  # "type":I
    .end local v4  # "infoSnapshot":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;
    .end local v6  # "currentTransitionDeviceUptime":I
    .end local v7  # "currentTransitionDelayMs":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 701
    .end local v0  # "index":I
    :cond_80
    return-void
.end method

.method private notifyActivityLaunched(ILcom/android/server/wm/ActivityRecord;ZZ)V
    .registers 13
    .param p1, "resultCode"  # I
    .param p2, "launchedActivity"  # Lcom/android/server/wm/ActivityRecord;
    .param p3, "processRunning"  # Z
    .param p4, "processSwitch"  # Z

    .line 381
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyActivityLaunched resultCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " launchedActivity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " processRunning="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " processSwitch="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_32
    const/4 v0, 0x0

    if-eqz p2, :cond_3a

    .line 390
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v2

    goto :goto_3b

    .line 391
    :cond_3a
    move v2, v0

    :goto_3b
    nop

    .line 392
    .local v2, "windowingMode":I
    iget-object v3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 393
    .local v3, "info":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;
    iget-wide v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_4d

    .line 395
    return-void

    .line 398
    :cond_4d
    const/4 v4, 0x1

    if-eqz p2, :cond_5a

    iget-boolean v5, p2, Lcom/android/server/wm/ActivityRecord;->mDrawn:Z

    if-eqz v5, :cond_5a

    .line 400
    const-string v0, "launched activity already visible"

    invoke-direct {p0, v4, v3, v0}, Lcom/android/server/wm/ActivityMetricsLogger;->reset(ZLcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Ljava/lang/String;)V

    .line 401
    return-void

    .line 404
    :cond_5a
    if-eqz p2, :cond_62

    if-eqz v3, :cond_62

    .line 409
    invoke-static {v3, p2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$102(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 410
    return-void

    .line 413
    :cond_62
    iget-object v5, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 414
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-lez v5, :cond_6d

    if-nez v3, :cond_6d

    move v0, v4

    .line 415
    .local v0, "otherWindowModesLaunching":Z
    :cond_6d
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->isLoggableResultCode(I)Z

    move-result v5

    if-eqz v5, :cond_77

    if-eqz p2, :cond_77

    if-nez v2, :cond_7f

    :cond_77
    if-nez v0, :cond_7f

    .line 418
    const-string v1, "failed to launch or not a process switch"

    invoke-direct {p0, v4, v3, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->reset(ZLcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Ljava/lang/String;)V

    .line 419
    return-void

    .line 420
    :cond_7f
    if-eqz v0, :cond_82

    .line 422
    return-void

    .line 425
    :cond_82
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v4, :cond_8b

    const-string v4, "notifyActivityLaunched successful"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_8b
    new-instance v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$1;)V

    .line 430
    .local v1, "newInfo":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;
    invoke-static {v1, p2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$102(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 431
    invoke-static {v1, p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$902(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Z)Z

    .line 432
    invoke-static {v1, p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1002(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I

    .line 433
    iget-object v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 434
    iget-object v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 435
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionDeviceUptime:I

    .line 436
    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->startTraces(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    .line 437
    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    .line 438
    return-void
.end method

.method private reset(ZLcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Ljava/lang/String;)V
    .registers 6
    .param p1, "abort"  # Z
    .param p2, "info"  # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;
    .param p3, "cause"  # Ljava/lang/String;

    .line 614
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reset abort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_22
    if-nez p1, :cond_2d

    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->isAnyTransitionActive()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 616
    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppTransitionMultiEvents()V

    .line 618
    :cond_2d
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->stopLaunchTrace(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    .line 621
    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->isAnyTransitionActive()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 623
    if-eqz p1, :cond_3c

    .line 624
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyActivityLaunchCancelled(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    goto :goto_43

    .line 626
    :cond_3c
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyActivityLaunchFinished(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    goto :goto_43

    .line 629
    :cond_40
    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyIntentFailed()V

    .line 632
    :goto_43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    .line 633
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionDelayMs:I

    .line 634
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    .line 635
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 636
    return-void
.end method

.method private startTraces(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V
    .registers 6
    .param p1, "info"  # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 1009
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_31

    if-eqz p1, :cond_31

    .line 1010
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$2400(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_31

    .line 1013
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launching: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 1013
    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1015
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$2402(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Z)Z

    .line 1016
    return-void

    .line 1011
    :cond_31
    :goto_31
    return-void
.end method

.method private stopLaunchTrace(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V
    .registers 6
    .param p1, "info"  # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 1019
    if-nez p1, :cond_3

    .line 1020
    return-void

    .line 1022
    :cond_3
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$2400(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1023
    const-wide/16 v0, 0x40

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launching: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1024
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1023
    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1025
    invoke-static {p1, v3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$2402(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Z)Z

    .line 1027
    :cond_29
    return-void
.end method


# virtual methods
.method public getLaunchObserverRegistry()Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;
    .registers 2

    .line 1030
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    return-object v0
.end method

.method public synthetic lambda$logAppTransitionMultiEvents$0$ActivityMetricsLogger(IILcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .registers 4
    .param p1, "currentTransitionDeviceUptime"  # I
    .param p2, "currentTransitionDelayMs"  # I
    .param p3, "infoSnapshot"  # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 695
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppTransition(IILcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    return-void
.end method

.method public synthetic lambda$logAppTransitionMultiEvents$1$ActivityMetricsLogger(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .registers 2
    .param p1, "infoSnapshot"  # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 697
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppDisplayed(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    return-void
.end method

.method public synthetic lambda$logAppTransitionReportedDrawn$2$ActivityMetricsLogger(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .registers 2
    .param p1, "infoSnapshot"  # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 864
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppFullyDrawn(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    return-void
.end method

.method logAbortedBgActivityStart(Landroid/content/Intent;Lcom/android/server/wm/WindowProcessController;ILjava/lang/String;IZIIZZ)V
    .registers 23
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "callerApp"  # Lcom/android/server/wm/WindowProcessController;
    .param p3, "callingUid"  # I
    .param p4, "callingPackage"  # Ljava/lang/String;
    .param p5, "callingUidProcState"  # I
    .param p6, "callingUidHasAnyVisibleWindow"  # Z
    .param p7, "realCallingUid"  # I
    .param p8, "realCallingUidProcState"  # I
    .param p9, "realCallingUidHasAnyVisibleWindow"  # Z
    .param p10, "comingFromPendingIntent"  # Z

    .line 889
    move-object v0, p2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 890
    .local v1, "nowElapsed":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 891
    .local v3, "nowUptime":J
    new-instance v5, Landroid/metrics/LogMaker;

    const/16 v6, 0x5e9

    invoke-direct {v5, v6}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 892
    .local v5, "builder":Landroid/metrics/LogMaker;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->setTimestamp(J)Landroid/metrics/LogMaker;

    .line 893
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x5ea

    invoke-virtual {v5, v7, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 894
    const/16 v6, 0x5eb

    move-object/from16 v7, p4

    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 895
    nop

    .line 896
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 895
    const/16 v8, 0x5ec

    invoke-virtual {v5, v8, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 897
    nop

    .line 898
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 897
    const/16 v8, 0x5ed

    invoke-virtual {v5, v8, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 899
    const/16 v6, 0x5ee

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 900
    const/16 v6, 0x5ef

    .line 901
    invoke-static/range {p8 .. p8}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 900
    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 902
    const/16 v6, 0x5f0

    .line 903
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 902
    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 904
    const/16 v6, 0x5f7

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 905
    if-eqz p1, :cond_81

    .line 906
    const/16 v6, 0x5f8

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 907
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 908
    .local v6, "component":Landroid/content/ComponentName;
    if-eqz v6, :cond_81

    .line 909
    const/16 v8, 0x5f6

    .line 910
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    .line 909
    invoke-virtual {v5, v8, v9}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 913
    .end local v6  # "component":Landroid/content/ComponentName;
    :cond_81
    if-eqz v0, :cond_130

    .line 914
    const/16 v6, 0x5f9

    iget-object v8, v0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 915
    const/16 v6, 0x5fa

    .line 916
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getCurrentProcState()I

    move-result v8

    invoke-static {v8}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 915
    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 917
    const/16 v6, 0x5fb

    .line 918
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasClientActivities()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 917
    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 919
    const/16 v6, 0x5fc

    .line 920
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasForegroundServices()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 919
    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 921
    const/16 v6, 0x5fd

    .line 922
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasForegroundActivities()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 921
    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 923
    const/16 v6, 0x5fe

    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasTopUi()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 924
    const/16 v6, 0x5ff

    .line 925
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasOverlayUi()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 924
    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 926
    const/16 v6, 0x600

    .line 927
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasPendingUiClean()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 926
    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 928
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getInteractionEventTime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_102

    .line 929
    const/16 v6, 0x601

    .line 930
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getInteractionEventTime()J

    move-result-wide v8

    sub-long v8, v1, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 929
    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 932
    :cond_102
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getFgInteractionTime()J

    move-result-wide v8

    cmp-long v6, v8, v10

    if-eqz v6, :cond_119

    .line 933
    const/16 v6, 0x602

    .line 934
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getFgInteractionTime()J

    move-result-wide v8

    sub-long v8, v1, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 933
    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 936
    :cond_119
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getWhenUnimportant()J

    move-result-wide v8

    cmp-long v6, v8, v10

    if-eqz v6, :cond_130

    .line 937
    const/16 v6, 0x603

    .line 938
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getWhenUnimportant()J

    move-result-wide v8

    sub-long v8, v3, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 937
    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 941
    :cond_130
    move-object v6, p0

    iget-object v8, v6, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v8, v5}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 942
    return-void
.end method

.method logAppTransitionReportedDrawn(Lcom/android/server/wm/ActivityRecord;Z)Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;
    .registers 23
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "restoredFromBundle"  # Z

    .line 824
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lcom/android/server/wm/ActivityMetricsLogger;->mLastWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 825
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v1

    .line 824
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 826
    .local v8, "info":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;
    if-nez v8, :cond_15

    .line 827
    const/4 v0, 0x0

    return-object v0

    .line 833
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityManager:ReportingFullyDrawn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    invoke-static {v8}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 833
    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 836
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v3, 0x442

    invoke-direct {v0, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    move-object v9, v0

    .line 837
    .local v9, "builder":Landroid/metrics/LogMaker;
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 838
    const/16 v0, 0x367

    iget-object v3, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v0, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 839
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v10, v6, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionStartTime:J

    sub-long v10, v3, v10

    .line 840
    .local v10, "startupTimeMs":J
    const/16 v0, 0x443

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v0, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 841
    if-eqz p2, :cond_5d

    .line 842
    const/16 v0, 0xd

    goto :goto_5f

    .line 843
    :cond_5d
    const/16 v0, 0xc

    .line 841
    :goto_5f
    invoke-virtual {v9, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 844
    const/16 v0, 0x144

    .line 845
    invoke-static {v8}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$900(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 844
    invoke-virtual {v9, v0, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 846
    iget-object v0, v6, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v0, v9}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 847
    const/16 v12, 0x32

    .line 849
    invoke-static {v8}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 850
    invoke-static {v8}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iget-object v14, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 851
    if-eqz p2, :cond_89

    .line 852
    const/4 v0, 0x1

    move v15, v0

    goto :goto_8b

    .line 853
    :cond_89
    const/4 v0, 0x2

    move v15, v0

    .line 854
    :goto_8b
    invoke-static {v8}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 855
    invoke-static {v8}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$900(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v17

    .line 847
    move-object/from16 v16, v0

    move-wide/from16 v18, v10

    invoke-static/range {v12 .. v19}, Landroid/util/StatsLog;->write(IILjava/lang/String;ILjava/lang/String;ZJ)I

    .line 860
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 862
    new-instance v12, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    long-to-int v4, v10

    const/4 v5, 0x0

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v8

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityMetricsLogger$1;)V

    .line 864
    .local v0, "infoSnapshot":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$xxgDrxthXaC_M25gC-YvHOsQ6yE;

    invoke-direct {v2, v6, v0}, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$xxgDrxthXaC_M25gC-YvHOsQ6yE;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 865
    return-object v0
.end method

.method logWindowState()V
    .registers 8

    .line 277
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 278
    .local v0, "now":J
    iget v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1a

    .line 282
    iget-object v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/server/wm/ActivityMetricsLogger;->TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

    aget-object v2, v5, v2

    iget-wide v5, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastLogTimeSecs:J

    sub-long v5, v0, v5

    long-to-int v5, v5

    invoke-static {v4, v2, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 285
    :cond_1a
    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastLogTimeSecs:J

    .line 287
    iput v3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    .line 288
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 289
    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 290
    .local v2, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v2, :cond_29

    .line 291
    return-void

    .line 294
    :cond_29
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->isActivityTypeAssistant()Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_33

    .line 295
    iput v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    .line 296
    return-void

    .line 299
    :cond_33
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v3

    .line 300
    .local v3, "windowingMode":I
    const/4 v5, 0x2

    if-ne v3, v5, :cond_46

    .line 301
    iget-object v6, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v6, v2}, Lcom/android/server/wm/RootActivityContainer;->findStackBehind(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 302
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v3

    .line 304
    :cond_46
    const/4 v6, 0x1

    if-eq v3, v6, :cond_7c

    if-eq v3, v4, :cond_79

    const/4 v4, 0x4

    if-eq v3, v4, :cond_79

    const/4 v4, 0x5

    if-eq v3, v4, :cond_76

    const/4 v4, 0x6

    if-eq v3, v4, :cond_76

    .line 319
    if-nez v3, :cond_57

    goto :goto_80

    .line 320
    :cond_57
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown windowing mode for stack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " windowingMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 316
    :cond_76
    iput v5, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    .line 317
    goto :goto_80

    .line 310
    :cond_79
    iput v6, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    .line 311
    goto :goto_80

    .line 306
    :cond_7c
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    .line 307
    nop

    .line 324
    :goto_80
    return-void
.end method

.method notifyActivityLaunched(ILcom/android/server/wm/ActivityRecord;)V
    .registers 8
    .param p1, "resultCode"  # I
    .param p2, "launchedActivity"  # Lcom/android/server/wm/ActivityRecord;

    .line 354
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->findProcessForActivity(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 355
    .local v0, "processRecord":Lcom/android/server/wm/WindowProcessController;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    move v3, v1

    goto :goto_b

    :cond_a
    move v3, v2

    .line 361
    .local v3, "processRunning":Z
    :goto_b
    if-eqz v0, :cond_16

    .line 362
    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowProcessController;->hasStartedActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-nez v4, :cond_14

    goto :goto_16

    :cond_14
    move v1, v2

    goto :goto_17

    :cond_16
    :goto_16
    nop

    .line 364
    .local v1, "processSwitch":Z
    :goto_17
    invoke-direct {p0, p1, p2, v3, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/wm/ActivityRecord;ZZ)V

    .line 365
    return-void
.end method

.method notifyActivityLaunching(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"  # Landroid/content/Intent;

    .line 331
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v0, :cond_20

    .line 332
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 333
    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->isAnyTransitionActive()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 332
    const-string v1, "notifyActivityLaunching: active:%b, intent:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_20
    iget-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_35

    .line 339
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    .line 340
    iget-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionStartTime:J

    .line 342
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyIntentStarted(Landroid/content/Intent;)V

    .line 344
    :cond_35
    return-void
.end method

.method notifyBindApplication(Landroid/content/pm/ApplicationInfo;)V
    .registers 5
    .param p1, "appInfo"  # Landroid/content/pm/ApplicationInfo;

    .line 589
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_24

    .line 590
    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 593
    .local v1, "info":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;
    invoke-static {v1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-ne v2, p1, :cond_21

    .line 594
    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->calculateCurrentDelay()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$402(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I

    .line 589
    .end local v1  # "info":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 597
    .end local v0  # "i":I
    :cond_24
    return-void
.end method

.method notifyStartingWindowDrawn(IJ)V
    .registers 6
    .param p1, "windowingMode"  # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param
    .param p2, "timestamp"  # J

    .line 473
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 474
    .local v0, "info":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;
    if-eqz v0, :cond_1d

    invoke-static {v0}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1300(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_1d

    .line 477
    :cond_11
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1302(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Z)Z

    .line 478
    invoke-direct {p0, p2, p3}, Lcom/android/server/wm/ActivityMetricsLogger;->calculateDelay(J)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$302(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I

    .line 479
    return-void

    .line 475
    :cond_1d
    :goto_1d
    return-void
.end method

.method notifyTransitionStarting(Landroid/util/SparseIntArray;J)V
    .registers 10
    .param p1, "windowingModeToReason"  # Landroid/util/SparseIntArray;
    .param p2, "timestamp"  # J

    .line 488
    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->isAnyTransitionActive()Z

    move-result v0

    if-eqz v0, :cond_51

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    if-eqz v0, :cond_b

    goto :goto_51

    .line 494
    :cond_b
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v0, :cond_16

    const-string v0, "ActivityTaskManager"

    const-string v1, "notifyTransitionStarting"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_16
    invoke-direct {p0, p2, p3}, Lcom/android/server/wm/ActivityMetricsLogger;->calculateDelay(J)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionDelayMs:I

    .line 496
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    .line 498
    const/4 v1, 0x0

    .line 499
    .local v1, "foundInfo":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    sub-int/2addr v2, v0

    .local v2, "index":I
    :goto_25
    if-ltz v2, :cond_41

    .line 500
    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 501
    .local v3, "windowingMode":I
    iget-object v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 503
    .local v4, "info":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;
    if-nez v4, :cond_36

    .line 504
    goto :goto_3e

    .line 506
    :cond_36
    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$202(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I

    .line 507
    move-object v1, v4

    .line 499
    .end local v3  # "windowingMode":I
    .end local v4  # "info":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;
    :goto_3e
    add-int/lit8 v2, v2, -0x1

    goto :goto_25

    .line 509
    .end local v2  # "index":I
    :cond_41
    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->allWindowsDrawn()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 511
    if-nez v1, :cond_4a

    goto :goto_4b

    :cond_4a
    const/4 v0, 0x0

    .line 512
    .local v0, "abortMetrics":Z
    :goto_4b
    const-string v2, "notifyTransitionStarting - all windows drawn"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->reset(ZLcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Ljava/lang/String;)V

    .line 514
    .end local v0  # "abortMetrics":Z
    :cond_50
    return-void

    .line 492
    .end local v1  # "foundInfo":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;
    :cond_51
    :goto_51
    return-void
.end method

.method notifyVisibilityChanged(Lcom/android/server/wm/ActivityRecord;)V
    .registers 7
    .param p1, "activityRecord"  # Lcom/android/server/wm/ActivityRecord;

    .line 522
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 523
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v1

    .line 522
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 524
    .local v0, "info":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;
    if-nez v0, :cond_f

    .line 525
    return-void

    .line 527
    :cond_f
    invoke-static {v0}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eq v1, p1, :cond_16

    .line 528
    return-void

    .line 530
    :cond_16
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    .line 531
    .local v1, "t":Lcom/android/server/wm/TaskRecord;
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 532
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iput-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 533
    iput-object p1, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 534
    iget-object v3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mHandler:Lcom/android/server/wm/ActivityMetricsLogger$H;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/ActivityMetricsLogger$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 535
    return-void
.end method

.method notifyWindowsDrawn(IJ)Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;
    .registers 8
    .param p1, "windowingMode"  # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param
    .param p2, "timestamp"  # J

    .line 453
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyWindowsDrawn windowingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 456
    .local v0, "info":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_4e

    invoke-static {v0}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v2

    if-eqz v2, :cond_2c

    goto :goto_4e

    .line 459
    :cond_2c
    invoke-direct {p0, p2, p3}, Lcom/android/server/wm/ActivityMetricsLogger;->calculateDelay(J)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$502(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I

    .line 460
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1102(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Z)Z

    .line 461
    new-instance v2, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/wm/ActivityMetricsLogger$1;)V

    move-object v1, v2

    .line 463
    .local v1, "infoSnapshot":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;
    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->allWindowsDrawn()Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    if-eqz v2, :cond_4d

    .line 464
    const/4 v2, 0x0

    const-string v3, "notifyWindowsDrawn - all windows drawn"

    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->reset(ZLcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Ljava/lang/String;)V

    .line 466
    :cond_4d
    return-object v1

    .line 457
    .end local v1  # "infoSnapshot":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;
    :cond_4e
    :goto_4e
    return-object v1
.end method
