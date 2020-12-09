.class Lcom/android/server/AlarmManagerService;
.super Lcom/android/server/SystemService;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerService$ShellCmd;,
        Lcom/android/server/AlarmManagerService$DeliveryTracker;,
        Lcom/android/server/AlarmManagerService$AppStandbyTracker;,
        Lcom/android/server/AlarmManagerService$UidObserver;,
        Lcom/android/server/AlarmManagerService$UninstallReceiver;,
        Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;,
        Lcom/android/server/AlarmManagerService$ClockReceiver;,
        Lcom/android/server/AlarmManagerService$AlarmHandler;,
        Lcom/android/server/AlarmManagerService$AlarmThread;,
        Lcom/android/server/AlarmManagerService$Injector;,
        Lcom/android/server/AlarmManagerService$Alarm;,
        Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;,
        Lcom/android/server/AlarmManagerService$LocalService;,
        Lcom/android/server/AlarmManagerService$BroadcastStats;,
        Lcom/android/server/AlarmManagerService$FilterStats;,
        Lcom/android/server/AlarmManagerService$InFlight;,
        Lcom/android/server/AlarmManagerService$BatchTimeOrder;,
        Lcom/android/server/AlarmManagerService$Batch;,
        Lcom/android/server/AlarmManagerService$WakeupEvent;,
        Lcom/android/server/AlarmManagerService$PriorityClass;,
        Lcom/android/server/AlarmManagerService$Constants;,
        Lcom/android/server/AlarmManagerService$AppWakeupHistory;,
        Lcom/android/server/AlarmManagerService$Stats;,
        Lcom/android/server/AlarmManagerService$IdleDispatchEntry;
    }
.end annotation


# static fields
.field static final ACTIVE_INDEX:I = 0x0

.field static final DEBUG_ALARM_CLOCK:Z = false

.field static final DEBUG_BATCH:Z = false

.field static final DEBUG_BG_LIMIT:Z = false

.field static final DEBUG_LISTENER_CALLBACK:Z = false

.field static final DEBUG_STANDBY:Z = false

.field static final DEBUG_VALIDATE:Z = false

.field static final DEBUG_WAKELOCK:Z = false

.field private static final ELAPSED_REALTIME_MASK:I = 0x8

.field private static final ELAPSED_REALTIME_WAKEUP_MASK:I = 0x4

.field static final FREQUENT_INDEX:I = 0x2

.field static final IS_WAKEUP_MASK:I = 0x5

.field static final MILLIS_IN_DAY:J = 0x5265c00L

.field static final MIN_FUZZABLE_INTERVAL:J = 0x2710L

.field static final NEVER_INDEX:I = 0x4

.field private static final NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

.field static final PRIO_NORMAL:I = 0x2

.field static final PRIO_TICK:I = 0x0

.field static final PRIO_WAKEUP:I = 0x1

.field static final RARE_INDEX:I = 0x3

.field static final RECORD_ALARMS_IN_HISTORY:Z = true

.field static final RECORD_DEVICE_IDLE_ALARMS:Z = false

.field private static final RTC_MASK:I = 0x2

.field private static final RTC_WAKEUP_MASK:I = 0x1

.field private static final SYSTEM_UI_SELF_PERMISSION:Ljava/lang/String; = "android.permission.systemui.IDENTITY"

.field static final TAG:Ljava/lang/String; = "AlarmManager"

.field static final TICK_HISTORY_DEPTH:I = 0xa

.field static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"

.field static final TIME_CHANGED_MASK:I = 0x10000

.field static final TYPE_NONWAKEUP_MASK:I = 0x1

.field static final WAKEUP_STATS:Z = false

.field static final WORKING_INDEX:I = 0x1

.field static final localLOGV:Z = false

.field static final sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

.field static final sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;


# instance fields
.field final RECENT_WAKEUP_PERIOD:J

.field final mAlarmBatches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;"
        }
    .end annotation
.end field

.field final mAlarmDispatchComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field mAlarmsPerUid:Landroid/util/SparseIntArray;

.field final mAllowWhileIdleDispatches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$IdleDispatchEntry;",
            ">;"
        }
    .end annotation
.end field

.field mAppOps:Landroid/app/AppOpsManager;

.field private mAppStandbyParole:Z

.field private mAppStateTracker:Lcom/android/server/AppStateTracker;

.field mAppWakeupHistory:Lcom/android/server/AlarmManagerService$AppWakeupHistory;

.field private final mBackgroundIntent:Landroid/content/Intent;

.field mBroadcastRefCount:I

.field final mBroadcastStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$BroadcastStats;",
            ">;>;"
        }
    .end annotation
.end field

.field mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

.field mConstants:Lcom/android/server/AlarmManagerService$Constants;

.field mCurrentSeq:I

.field mDateChangeSender:Landroid/app/PendingIntent;

.field final mDeliveryTracker:Lcom/android/server/AlarmManagerService$DeliveryTracker;

.field private final mForceAppStandbyListener:Lcom/android/server/AppStateTracker$Listener;

.field mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

.field private final mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field mIdleOptions:Landroid/os/Bundle;

.field mInFlight:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$InFlight;",
            ">;"
        }
    .end annotation
.end field

.field private final mInFlightListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerInternal$InFlightListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mInjector:Lcom/android/server/AlarmManagerService$Injector;

.field mInteractive:Z

.field mLastAlarmDeliveryTime:J

.field final mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

.field private mLastTickAdded:J

.field private mLastTickReceived:J

.field private mLastTickRemoved:J

.field private mLastTickSet:J

.field mLastTimeChangeClockTime:J

.field mLastTimeChangeRealtime:J

.field private mLastTrigger:J

.field private mLastWakeup:J

.field private mListenerCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mListenerFinishCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

.field final mLock:Ljava/lang/Object;

.field final mLog:Lcom/android/internal/util/LocalLog;

.field mMaxDelayTime:J

.field private final mNextAlarmClockForUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAlarmClockMayChange:Z

.field private mNextNonWakeUpSetAt:J

.field private mNextNonWakeup:J

.field mNextNonWakeupDeliveryTime:J

.field private mNextTickHistory:I

.field mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

.field private mNextWakeUpSetAt:J

.field private mNextWakeup:J

.field mNonInteractiveStartTime:J

.field mNonInteractiveTime:J

.field mNumDelayedAlarms:I

.field mNumTimeChanged:I

.field mPendingBackgroundAlarms:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;>;"
        }
    .end annotation
.end field

.field mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

.field mPendingNonWakeupAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

.field mPendingWhileIdleAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field final mPriorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$PriorityClass;",
            ">;"
        }
    .end annotation
.end field

.field mRandom:Ljava/util/Random;

.field final mRecentWakeups:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/AlarmManagerService$WakeupEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mSendCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mSendFinishCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mService:Landroid/os/IBinder;

.field mStartCurrentDelayTime:J

.field private final mStatLogger:Lcom/android/internal/util/StatLogger;

.field mSystemUiUid:I

.field private final mTickHistory:[J

.field mTimeTickIntent:Landroid/content/Intent;

.field mTimeTickTrigger:Landroid/app/IAlarmListener;

.field private final mTmpSparseAlarmClockArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTotalDelayTime:J

.field private mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field final mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 163
    new-instance v0, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerService;->sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    .line 167
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    const/high16 v1, 0x21000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/server/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 922
    new-instance v0, Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$BatchTimeOrder;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerService;->sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 938
    new-instance v0, Lcom/android/server/AlarmManagerService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/AlarmManagerService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;Lcom/android/server/AlarmManagerService$Injector;)V

    .line 939
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/AlarmManagerService$Injector;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 933
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 161
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 162
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    .line 172
    new-instance p1, Lcom/android/internal/util/LocalLog;

    const-string v0, "AlarmManager"

    invoke-direct {p1, v0}, Lcom/android/internal/util/LocalLog;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    .line 178
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 181
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    .line 194
    const/16 p1, 0xa

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mTickHistory:[J

    .line 198
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 200
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    .line 208
    new-instance v0, Lcom/android/server/AlarmManagerService$DeliveryTracker;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$DeliveryTracker;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/AlarmManagerService$DeliveryTracker;

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    .line 242
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    .line 248
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mAllowWhileIdleDispatches:Ljava/util/ArrayList;

    .line 265
    new-instance v0, Lcom/android/internal/util/StatLogger;

    const-string v1, "REBATCH_ALL_ALARMS"

    const-string v2, "REORDER_ALARMS_FOR_STANDBY"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/StatLogger;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 275
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    .line 277
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 279
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 284
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 669
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    .line 670
    iput p1, p0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    .line 684
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    .line 685
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->RECENT_WAKEUP_PERIOD:J

    .line 860
    new-instance v0, Lcom/android/server/AlarmManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$1;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    .line 923
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    .line 927
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 928
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 929
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 1487
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    .line 1490
    iput p1, p0, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    .line 1491
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 1492
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 2052
    new-instance v0, Lcom/android/server/AlarmManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$3;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mService:Landroid/os/IBinder;

    .line 4460
    new-instance v0, Lcom/android/server/AlarmManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$6;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mForceAppStandbyListener:Lcom/android/server/AppStateTracker$Listener;

    .line 4520
    iput p1, p0, Lcom/android/server/AlarmManagerService;->mSendCount:I

    .line 4522
    iput p1, p0, Lcom/android/server/AlarmManagerService;->mSendFinishCount:I

    .line 4524
    iput p1, p0, Lcom/android/server/AlarmManagerService;->mListenerCount:I

    .line 4526
    iput p1, p0, Lcom/android/server/AlarmManagerService;->mListenerFinishCount:I

    .line 934
    iput-object p2, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    .line 935
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/AlarmManagerService;J)J
    .registers 3

    .line 127
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastTickAdded:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$Injector;
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/AlarmManagerService;)Z
    .registers 1

    .line 127
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->isIdlingImpl()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/android/server/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AppStateTracker;
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    return-object p0
.end method

.method static synthetic access$1400()J
    .registers 2

    .line 127
    invoke-static {}, Lcom/android/server/AlarmManagerService;->init()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1500(J)I
    .registers 2

    .line 127
    invoke-static {p0, p1}, Lcom/android/server/AlarmManagerService;->waitForAlarm(J)I

    move-result p0

    return p0
.end method

.method static synthetic access$1600(JIJJ)I
    .registers 7

    .line 127
    invoke-static/range {p0 .. p6}, Lcom/android/server/AlarmManagerService;->set(JIJJ)I

    move-result p0

    return p0
.end method

.method static synthetic access$1700(JI)J
    .registers 3

    .line 127
    invoke-static {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->getNextAlarm(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1800(JI)I
    .registers 3

    .line 127
    invoke-static {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(JI)I

    move-result p0

    return p0
.end method

.method static synthetic access$1900(JJ)I
    .registers 4

    .line 127
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/AlarmManagerService;->setKernelTime(JJ)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/AlarmManagerService;II)V
    .registers 3

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    return-void
.end method

.method static synthetic access$2000(J)V
    .registers 2

    .line 127
    invoke-static {p0, p1}, Lcom/android/server/AlarmManagerService;->close(J)V

    return-void
.end method

.method static synthetic access$2102(Lcom/android/server/AlarmManagerService;J)J
    .registers 3

    .line 127
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastWakeup:J

    return-wide p1
.end method

.method static synthetic access$2202(Lcom/android/server/AlarmManagerService;J)J
    .registers 3

    .line 127
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastTrigger:J

    return-wide p1
.end method

.method static synthetic access$2300(Lcom/android/server/AlarmManagerService;)V
    .registers 1

    .line 127
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 2

    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->isExemptFromAppStandby(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lcom/android/server/AlarmManagerService;)V
    .registers 1

    .line 127
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->sendNextAlarmClockChanged()V

    return-void
.end method

.method static synthetic access$2602(Lcom/android/server/AlarmManagerService;Z)Z
    .registers 2

    .line 127
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mAppStandbyParole:Z

    return p1
.end method

.method static synthetic access$2702(Lcom/android/server/AlarmManagerService;J)J
    .registers 3

    .line 127
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastTickSet:J

    return-wide p1
.end method

.method static synthetic access$2800(Lcom/android/server/AlarmManagerService;I)V
    .registers 2

    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->notifyBroadcastAlarmCompleteLocked(I)V

    return-void
.end method

.method static synthetic access$2908(Lcom/android/server/AlarmManagerService;)I
    .registers 3

    .line 127
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mListenerFinishCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mListenerFinishCount:I

    return v0
.end method

.method static synthetic access$3008(Lcom/android/server/AlarmManagerService;)I
    .registers 3

    .line 127
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mSendFinishCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mSendFinishCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/AlarmManagerService;Z)Z
    .registers 2

    .line 127
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/AlarmManagerService$Alarm;)I
    .registers 1

    .line 127
    invoke-static {p0}, Lcom/android/server/AlarmManagerService;->getAlarmAttributionUid(Lcom/android/server/AlarmManagerService$Alarm;)I

    move-result p0

    return p0
.end method

.method static synthetic access$3208(Lcom/android/server/AlarmManagerService;)I
    .registers 3

    .line 127
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mSendCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mSendCount:I

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/AlarmManagerService;)Landroid/content/Intent;
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$3408(Lcom/android/server/AlarmManagerService;)I
    .registers 3

    .line 127
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mListenerCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mListenerCount:I

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/AlarmManagerService;)[J
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/android/server/AlarmManagerService;->mTickHistory:[J

    return-object p0
.end method

.method static synthetic access$3600(Lcom/android/server/AlarmManagerService;)I
    .registers 1

    .line 127
    iget p0, p0, Lcom/android/server/AlarmManagerService;->mNextTickHistory:I

    return p0
.end method

.method static synthetic access$3602(Lcom/android/server/AlarmManagerService;I)I
    .registers 2

    .line 127
    iput p1, p0, Lcom/android/server/AlarmManagerService;->mNextTickHistory:I

    return p1
.end method

.method static synthetic access$3608(Lcom/android/server/AlarmManagerService;)I
    .registers 3

    .line 127
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mNextTickHistory:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mNextTickHistory:I

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/AlarmManagerService;I)V
    .registers 2

    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->notifyBroadcastAlarmPendingLocked(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/AlarmManagerService;)Landroid/os/IBinder;
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/android/server/AlarmManagerService;->mService:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/server/AlarmManagerService;J)J
    .registers 3

    .line 127
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastTickRemoved:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .registers 2

    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/AlarmManagerService;ILjava/lang/String;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .registers 3

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->getStatsLocked(ILjava/lang/String;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/server/AlarmManagerService;J)J
    .registers 3

    .line 127
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastTickReceived:J

    return-wide p1
.end method

.method static addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ")Z"
        }
    .end annotation

    .line 967
    sget-object v0, Lcom/android/server/AlarmManagerService;->sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    invoke-static {p0, p1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 968
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_d

    .line 969
    rsub-int/lit8 v0, v0, 0x0

    sub-int/2addr v0, v1

    .line 971
    :cond_d
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 972
    if-nez v0, :cond_13

    goto :goto_14

    :cond_13
    move v1, v2

    :goto_14
    return v1
.end method

.method private adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 15

    .line 1841
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->isExemptFromAppStandby(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1842
    return v1

    .line 1844
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mAppStandbyParole:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1f

    .line 1845
    iget-wide v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v5, p1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_1e

    .line 1847
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 1848
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 1849
    return v2

    .line 1851
    :cond_1e
    return v1

    .line 1853
    :cond_1f
    iget-wide v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 1854
    iget-wide v5, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 1856
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    .line 1857
    iget v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 1858
    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    .line 1859
    invoke-virtual {v9}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v9

    .line 1858
    invoke-virtual {v8, v0, v7, v9, v10}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result v8

    .line 1861
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-boolean v9, v9, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS_ENABLED:Z

    if-eqz v9, :cond_7d

    .line 1863
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v9, v0, v7}, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->getTotalWakeupsInWindow(Ljava/lang/String;I)I

    move-result v9

    .line 1865
    invoke-virtual {p0, v8}, Lcom/android/server/AlarmManagerService;->getQuotaForBucketLocked(I)I

    move-result v8

    .line 1866
    nop

    .line 1867
    if-lt v9, v8, :cond_71

    .line 1869
    if-gtz v8, :cond_57

    .line 1871
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v7

    const-wide/32 v9, 0x5265c00

    add-long/2addr v7, v9

    goto :goto_65

    .line 1875
    :cond_57
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v9, v0, v7, v8}, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->getLastWakeupForPackage(Ljava/lang/String;II)J

    move-result-wide v7

    .line 1877
    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v9, v0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    add-long/2addr v7, v9

    .line 1879
    :goto_65
    iget-wide v9, p1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    cmp-long v0, v9, v7

    if-gez v0, :cond_71

    .line 1880
    iput-wide v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 1881
    move v0, v2

    goto :goto_72

    .line 1884
    :cond_71
    move v0, v1

    :goto_72
    if-nez v0, :cond_7c

    .line 1886
    iget-wide v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    iput-wide v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 1887
    iget-wide v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    iput-wide v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 1889
    :cond_7c
    goto :goto_a1

    .line 1891
    :cond_7d
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v9, v0, v7, v2}, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->getLastWakeupForPackage(Ljava/lang/String;II)J

    move-result-wide v9

    .line 1893
    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    if-lez v0, :cond_a1

    .line 1894
    invoke-virtual {p0, v8}, Lcom/android/server/AlarmManagerService;->getMinDelayForBucketLocked(I)J

    move-result-wide v7

    add-long/2addr v9, v7

    .line 1895
    iget-wide v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    cmp-long v0, v7, v9

    if-gez v0, :cond_99

    .line 1896
    iput-wide v9, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v9, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    goto :goto_a1

    .line 1900
    :cond_99
    iget-wide v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    iput-wide v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 1901
    iget-wide v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    iput-wide v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 1905
    :cond_a1
    :goto_a1
    iget-wide v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v0, v3, v7

    if-nez v0, :cond_ad

    iget-wide v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long p1, v5, v3

    if-eqz p1, :cond_ae

    :cond_ad
    move v1, v2

    :cond_ae
    return v1
.end method

.method static clampPositive(J)J
    .registers 4

    .line 1147
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_7

    goto :goto_c

    :cond_7
    const-wide p0, 0x7fffffffffffffffL

    :goto_c
    return-wide p0
.end method

.method private static native close(J)V
.end method

.method private convertToElapsed(JI)J
    .registers 8

    .line 942
    const/4 v0, 0x1

    if-eq p3, v0, :cond_7

    if-nez p3, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 943
    :cond_7
    :goto_7
    if-eqz v0, :cond_17

    .line 944
    iget-object p3, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {p3}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v0

    iget-object p3, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {p3}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sub-long/2addr p1, v0

    .line 946
    :cond_17
    return-wide p1
.end method

.method private decrementAlarmCount(II)V
    .registers 7

    .line 4825
    nop

    .line 4826
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 4827
    if-ltz v0, :cond_1f

    .line 4828
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 4829
    if-le v1, p2, :cond_19

    .line 4830
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    sub-int v3, v1, p2

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->setValueAt(II)V

    goto :goto_20

    .line 4832
    :cond_19
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    goto :goto_20

    .line 4827
    :cond_1f
    const/4 v1, 0x0

    .line 4835
    :goto_20
    if-ge v1, p2, :cond_48

    .line 4836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to decrement existing alarm count "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " for uid "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AlarmManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4839
    :cond_48
    return-void
.end method

.method private deliverPendingBackgroundAlarmsLocked(Ljava/util/ArrayList;J)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;J)V"
        }
    .end annotation

    .line 1232
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move-wide/from16 v12, p2

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 1233
    nop

    .line 1234
    const/4 v1, 0x0

    move v10, v1

    :goto_d
    if-ge v10, v14, :cond_9b

    .line 1235
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1236
    iget-boolean v2, v11, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1e

    .line 1237
    move/from16 v21, v3

    goto :goto_20

    .line 1236
    :cond_1e
    move/from16 v21, v1

    .line 1239
    :goto_20
    iput v3, v11, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 1242
    iget-wide v1, v11, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_89

    .line 1243
    iget v1, v11, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v1, v1

    iget-wide v3, v11, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    sub-long v3, v12, v3

    iget-wide v5, v11, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    div-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v11, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 1245
    iget v1, v11, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v1, v1

    iget-wide v3, v11, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    mul-long v2, v1, v3

    .line 1246
    iget-wide v4, v11, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    add-long v16, v4, v2

    move-wide/from16 v4, v16

    .line 1247
    iget v1, v11, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-wide v6, v11, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    add-long/2addr v2, v6

    iget-wide v6, v11, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    iget-wide v8, v11, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 1248
    move-wide/from16 v18, v8

    move-wide/from16 v8, p2

    move/from16 v22, v10

    move/from16 v20, v14

    move-object v14, v11

    move-wide/from16 v10, v16

    move-wide/from16 v12, v18

    invoke-static/range {v8 .. v13}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v8

    iget-wide v10, v14, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    iget-object v12, v14, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object v13, v14

    move/from16 v23, v20

    move-object/from16 v14, v16

    iget v14, v13, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    move v15, v14

    const/16 v16, 0x1

    iget-object v14, v13, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move-object/from16 v17, v14

    iget-object v14, v13, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object/from16 v18, v14

    iget v14, v13, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    move/from16 v19, v14

    iget-object v13, v13, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    move-object/from16 v20, v13

    .line 1247
    move-object v13, v0

    move-object/from16 v0, p0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v20}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    goto :goto_8d

    .line 1242
    :cond_89
    move/from16 v22, v10

    move/from16 v23, v14

    .line 1234
    :goto_8d
    add-int/lit8 v10, v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move-wide/from16 v12, p2

    move/from16 v1, v21

    move/from16 v14, v23

    goto/16 :goto_d

    .line 1254
    :cond_9b
    if-nez v1, :cond_d3

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/AlarmManagerService;->checkAllowNonWakeupDelayLocked(J)Z

    move-result v3

    if-eqz v3, :cond_d0

    .line 1256
    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_bf

    .line 1257
    iput-wide v1, v0, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    .line 1258
    nop

    .line 1259
    invoke-virtual {v0, v1, v2}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v3

    const-wide/16 v5, 0x3

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x2

    div-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 1261
    :cond_bf
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1262
    iget v1, v0, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    goto :goto_107

    .line 1254
    :cond_d0
    move-object/from16 v3, p1

    goto :goto_d9

    :cond_d3
    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-wide/from16 v1, p2

    .line 1268
    :goto_d9
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_fc

    .line 1269
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1270
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v4, v1, v4

    .line 1271
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v6, v4

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 1272
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    cmp-long v6, v6, v4

    if-gez v6, :cond_f7

    .line 1273
    iput-wide v4, v0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 1275
    :cond_f7
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1277
    :cond_fc
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 1278
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1279
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 1281
    :goto_107
    return-void
.end method

.method private static final dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/text/SimpleDateFormat;",
            ")V"
        }
    .end annotation

    .line 3407
    move-object v8, p0

    move-object v9, p2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v10, v0

    :goto_9
    if-ltz v10, :cond_4b

    .line 3408
    move-object v11, p1

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3409
    iget v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->labelForType(I)Ljava/lang/String;

    move-result-object v1

    .line 3410
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " #"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 3411
    const-string v1, ": "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 3407
    add-int/lit8 v10, v10, -0x1

    goto :goto_9

    .line 3414
    :cond_4b
    return-void
.end method

.method private static final dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/text/SimpleDateFormat;",
            ")V"
        }
    .end annotation

    .line 3387
    move-object v8, p0

    move-object v9, p2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v10, v0

    :goto_9
    if-ltz v10, :cond_48

    .line 3388
    move-object v11, p1

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3389
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v12, p3

    invoke-virtual {p0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " #"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 3390
    const-string v1, ": "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 3387
    add-int/lit8 v10, v10, -0x1

    goto :goto_9

    .line 3393
    :cond_48
    return-void
.end method

.method static findAllUnrestrictedPendingBackgroundAlarmsLockedInner(Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/util/function/Predicate;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .line 1210
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_3b

    .line 1211
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 1212
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1214
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_17
    if-ltz v2, :cond_2f

    .line 1215
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1217
    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1218
    goto :goto_2c

    .line 1221
    :cond_26
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1222
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1214
    :goto_2c
    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    .line 1225
    :cond_2f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_38

    .line 1226
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1210
    :cond_38
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1229
    :cond_3b
    return-void
.end method

.method private findFirstWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;
    .registers 5

    .line 2862
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2863
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1b

    .line 2864
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Batch;

    .line 2865
    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$Batch;->hasWakeups()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2866
    return-object v2

    .line 2863
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2869
    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method private static formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;
    .registers 3

    .line 3012
    invoke-static {p0, p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "EHm"

    goto :goto_b

    :cond_9
    const-string p0, "Ehma"

    .line 3013
    :goto_b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-static {p2, p0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3014
    if-nez p1, :cond_18

    const-string p0, ""

    goto :goto_24

    .line 3015
    :cond_18
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3014
    :goto_24
    return-object p0
.end method

.method static fuzzForDuration(J)I
    .registers 4

    .line 3786
    const-wide/32 v0, 0xdbba0

    cmp-long v0, p0, v0

    if-gez v0, :cond_9

    .line 3789
    long-to-int p0, p0

    return p0

    .line 3790
    :cond_9
    const-wide/32 v0, 0x5265c0

    cmp-long p0, p0, v0

    if-gez p0, :cond_14

    .line 3792
    const p0, 0xdbba0

    return p0

    .line 3795
    :cond_14
    const p0, 0x1b7740

    return p0
.end method

.method private static getAlarmAttributionUid(Lcom/android/server/AlarmManagerService$Alarm;)I
    .registers 2

    .line 4134
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 4135
    iget-object p0, p0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {p0}, Landroid/os/WorkSource;->getAttributionUid()I

    move-result p0

    return p0

    .line 4138
    :cond_13
    iget p0, p0, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    return p0
.end method

.method static getAlarmCount(Ljava/util/ArrayList;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;)I"
        }
    .end annotation

    .line 1005
    nop

    .line 1007
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1008
    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v1, v0, :cond_17

    .line 1009
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Batch;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v3

    add-int/2addr v2, v3

    .line 1008
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1011
    :cond_17
    return v2
.end method

.method private static native getNextAlarm(JI)J
.end method

.method private final getStatsLocked(ILjava/lang/String;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .registers 5

    .line 4502
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 4503
    if-nez v0, :cond_14

    .line 4504
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4505
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4507
    :cond_14
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 4508
    if-nez v1, :cond_24

    .line 4509
    new-instance v1, Lcom/android/server/AlarmManagerService$BroadcastStats;

    invoke-direct {v1, p1, p2}, Lcom/android/server/AlarmManagerService$BroadcastStats;-><init>(ILjava/lang/String;)V

    .line 4510
    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4512
    :cond_24
    return-object v1
.end method

.method private final getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .registers 3

    .line 4496
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    .line 4497
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result p1

    .line 4498
    invoke-direct {p0, p1, v0}, Lcom/android/server/AlarmManagerService;->getStatsLocked(ILjava/lang/String;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object p1

    return-object p1
.end method

.method private getWhileIdleMinIntervalLocked(I)J
    .registers 6

    .line 3448
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 3449
    :goto_9
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    if-eqz v3, :cond_14

    .line 3450
    invoke-virtual {v3}, Lcom/android/server/AppStateTracker;->isForceAllAppsStandbyEnabled()Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_15

    :cond_14
    move v1, v2

    .line 3451
    :goto_15
    if-nez v0, :cond_1e

    if-nez v1, :cond_1e

    .line 3452
    iget-object p1, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_SHORT_TIME:J

    return-wide v0

    .line 3454
    :cond_1e
    if-eqz v0, :cond_25

    .line 3455
    iget-object p1, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_LONG_TIME:J

    return-wide v0

    .line 3457
    :cond_25
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 3460
    iget-object p1, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_SHORT_TIME:J

    return-wide v0

    .line 3462
    :cond_32
    iget-object p1, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_LONG_TIME:J

    return-wide v0
.end method

.method private incrementAlarmCount(I)V
    .registers 5

    .line 4816
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 4817
    const/4 v1, 0x1

    if-ltz v0, :cond_14

    .line 4818
    iget-object p1, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/util/SparseIntArray;->setValueAt(II)V

    goto :goto_19

    .line 4820
    :cond_14
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 4822
    :goto_19
    return-void
.end method

.method private static native init()J
.end method

.method private insertAndBatchAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)V
    .registers 6

    .line 976
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    goto :goto_10

    .line 977
    :cond_8
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/AlarmManagerService;->attemptCoalesceLocked(JJ)I

    move-result v0

    .line 979
    :goto_10
    if-gez v0, :cond_1d

    .line 980
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/AlarmManagerService$Batch;

    invoke-direct {v1, p0, p1}, Lcom/android/server/AlarmManagerService$Batch;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)V

    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerService;->addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z

    goto :goto_35

    .line 982
    :cond_1d
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 983
    invoke-virtual {v1, p1}, Lcom/android/server/AlarmManagerService$Batch;->add(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 986
    iget-object p1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 987
    iget-object p1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lcom/android/server/AlarmManagerService;->addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z

    .line 990
    :cond_35
    :goto_35
    return-void
.end method

.method private isBackgroundRestricted(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 7

    .line 3417
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    .line 3418
    :goto_b
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v3, :cond_10

    .line 3420
    return v2

    .line 3422
    :cond_10
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v3, :cond_26

    .line 3423
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 3425
    return v2

    .line 3427
    :cond_1d
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->isForegroundService()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 3429
    move v0, v1

    .line 3432
    :cond_26
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    .line 3433
    iget p1, p1, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    .line 3434
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    if-eqz v4, :cond_35

    .line 3435
    invoke-virtual {v4, p1, v3, v0}, Lcom/android/server/AppStateTracker;->areAlarmsRestricted(ILjava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_35

    goto :goto_36

    :cond_35
    move v1, v2

    .line 3434
    :goto_36
    return v1
.end method

.method private isExemptFromAppStandby(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 3

    .line 3844
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-nez v0, :cond_15

    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-nez v0, :cond_15

    iget p1, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p1, 0x1

    :goto_16
    return p1
.end method

.method private isIdlingImpl()Z
    .registers 3

    .line 2879
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2880
    :try_start_3
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 2881
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private static final labelForType(I)Ljava/lang/String;
    .registers 2

    .line 3396
    if-eqz p0, :cond_17

    const/4 v0, 0x1

    if-eq p0, v0, :cond_14

    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    const/4 v0, 0x3

    if-eq p0, v0, :cond_e

    .line 3402
    const-string p0, "--unknown--"

    return-object p0

    .line 3399
    :cond_e
    const-string p0, "ELAPSED"

    return-object p0

    .line 3400
    :cond_11
    const-string p0, "ELAPSED_WAKEUP"

    return-object p0

    .line 3397
    :cond_14
    const-string p0, "RTC"

    return-object p0

    .line 3398
    :cond_17
    const-string p0, "RTC_WAKEUP"

    return-object p0
.end method

.method public static synthetic lambda$nSJw2tKfoL3YIrKDtszoL44jcSM(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->isBackgroundRestricted(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$removeForStoppedLocked$3(ILcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 3

    .line 3237
    :try_start_0
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v0, p0, :cond_13

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object p1, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Landroid/app/IActivityManager;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_12

    if-eqz p0, :cond_13

    .line 3239
    const/4 p0, 0x1

    return p0

    .line 3241
    :catch_12
    move-exception p0

    :cond_13
    nop

    .line 3242
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$removeLocked$0(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 3

    .line 3057
    invoke-virtual {p2, p0, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$removeLocked$1(ILcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 2

    .line 3113
    iget p1, p1, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method static synthetic lambda$removeUserLocked$4(ILcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 2

    .line 3285
    iget p1, p1, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-ne p1, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private logBatchesLocked(Ljava/text/SimpleDateFormat;)V
    .registers 19

    .line 2826
    move-object/from16 v0, p0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x800

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2827
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2828
    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v11

    .line 2829
    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v13

    .line 2830
    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 2831
    const/4 v3, 0x0

    move v10, v3

    :goto_22
    if-ge v10, v15, :cond_5c

    .line 2832
    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Batch;

    .line 2833
    const-string v4, "Batch "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2834
    iget-object v4, v3, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    const-string v5, "  "

    move-object v3, v2

    move-wide v6, v13

    move-wide v8, v11

    move/from16 v16, v10

    move-object/from16 v10, p1

    invoke-static/range {v3 .. v10}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 2835
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 2836
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AlarmManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2837
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 2831
    add-int/lit8 v10, v16, 0x1

    goto :goto_22

    .line 2839
    :cond_5c
    return-void
.end method

.method static maxTriggerTime(JJJ)J
    .registers 9

    .line 956
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_9

    .line 957
    sub-long p4, p2, p0

    goto :goto_a

    .line 958
    :cond_9
    nop

    .line 959
    :goto_a
    const-wide/16 p0, 0x2710

    cmp-long p0, p4, p0

    if-gez p0, :cond_11

    .line 960
    move-wide p4, v0

    .line 962
    :cond_11
    const-wide/high16 p0, 0x3fe8000000000000L  # 0.75

    long-to-double p4, p4

    mul-double/2addr p4, p0

    double-to-long p0, p4

    add-long/2addr p2, p0

    invoke-static {p2, p3}, Lcom/android/server/AlarmManagerService;->clampPositive(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private notifyBroadcastAlarmCompleteLocked(I)V
    .registers 5

    .line 1393
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1394
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 1395
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerInternal$InFlightListener;

    invoke-interface {v2, p1}, Lcom/android/server/AlarmManagerInternal$InFlightListener;->broadcastAlarmComplete(I)V

    .line 1394
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1397
    :cond_17
    return-void
.end method

.method private notifyBroadcastAlarmPendingLocked(I)V
    .registers 5

    .line 1386
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1387
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 1388
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerInternal$InFlightListener;

    invoke-interface {v2, p1}, Lcom/android/server/AlarmManagerInternal$InFlightListener;->broadcastAlarmPending(I)V

    .line 1387
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1390
    :cond_17
    return-void
.end method

.method private sendNextAlarmClockChanged()V
    .registers 8

    .line 2981
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 2982
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2984
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2985
    :try_start_8
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 2986
    const/4 v3, 0x0

    move v4, v3

    :goto_10
    if-ge v4, v2, :cond_26

    .line 2987
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    .line 2988
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2986
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 2990
    :cond_26
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2991
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_65

    .line 2993
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2994
    nop

    :goto_31
    if-ge v3, v1, :cond_64

    .line 2995
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 2996
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 2997
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2999
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4, v2}, Lcom/android/server/AlarmManagerService;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;

    move-result-object v4

    .line 2997
    const-string/jumbo v6, "next_alarm_formatted"

    invoke-static {v5, v6, v4, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 3002
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/android/server/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2994
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 3005
    :cond_64
    return-void

    .line 2991
    :catchall_65
    move-exception v0

    :try_start_66
    monitor-exit v1
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v0
.end method

.method private static native set(JIJJ)I
.end method

.method private setImplLocked(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V
    .registers 43

    move-object/from16 v1, p0

    move/from16 v0, p19

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move/from16 v18, p15

    move-object/from16 v17, p17

    move-object/from16 v19, p18

    move/from16 v20, p19

    move-object/from16 v21, p20

    .line 1777
    new-instance v2, Lcom/android/server/AlarmManagerService$Alarm;

    move-object/from16 p1, v2

    invoke-direct/range {v2 .. v21}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    .line 1781
    :try_start_27
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    move-object/from16 v3, p20

    invoke-interface {v2, v0, v3}, Landroid/app/IActivityManager;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 1782
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not setting alarm from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_47} :catch_5e

    move-object/from16 v4, p1

    :try_start_49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " -- package not allowed to start"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_58} :catch_59

    .line 1784
    return-void

    .line 1786
    :catch_59
    move-exception v0

    goto :goto_61

    .line 1787
    :cond_5b
    move-object/from16 v4, p1

    goto :goto_61

    .line 1786
    :catch_5e
    move-exception v0

    move-object/from16 v4, p1

    .line 1788
    :goto_61
    move-object/from16 v2, p12

    move-object/from16 v3, p13

    invoke-virtual {v1, v2, v3}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 1789
    iget v0, v4, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {v1, v0}, Lcom/android/server/AlarmManagerService;->incrementAlarmCount(I)V

    .line 1790
    const/4 v0, 0x0

    move/from16 v2, p16

    invoke-direct {v1, v4, v0, v2}, Lcom/android/server/AlarmManagerService;->setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    .line 1791
    return-void
.end method

.method private setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V
    .registers 10

    .line 1909
    iget p3, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 p3, p3, 0x10

    if-eqz p3, :cond_4b

    .line 1914
    iget-object p3, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz p3, :cond_1e

    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-object p3, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v2, p3, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long p3, v0, v2

    if-lez p3, :cond_1e

    .line 1915
    iget-object p3, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v0, p3, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1918
    :cond_1e
    iget-object p3, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {p3}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 1919
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Lcom/android/server/AlarmManagerService;->fuzzForDuration(J)I

    move-result p3

    .line 1920
    if-lez p3, :cond_5b

    .line 1921
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRandom:Ljava/util/Random;

    if-nez v0, :cond_38

    .line 1922
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mRandom:Ljava/util/Random;

    .line 1924
    :cond_38
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRandom:Ljava/util/Random;

    invoke-virtual {v0, p3}, Ljava/util/Random;->nextInt(I)I

    move-result p3

    .line 1925
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 1933
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    goto :goto_5b

    .line 1936
    :cond_4b
    iget-object p3, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz p3, :cond_5b

    .line 1939
    iget p3, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 p3, p3, 0xe

    if-nez p3, :cond_5c

    .line 1943
    iget-object p2, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1944
    return-void

    .line 1936
    :cond_5b
    :goto_5b
    nop

    .line 1959
    :cond_5c
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z

    .line 1960
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->insertAndBatchAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 1962
    iget-object p3, p1, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    const/4 v0, 0x1

    if-eqz p3, :cond_69

    .line 1963
    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 1966
    :cond_69
    nop

    .line 1968
    iget p3, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 p3, p3, 0x10

    const/4 v1, 0x0

    if-eqz p3, :cond_9b

    .line 1978
    iget-object p3, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eq p3, p1, :cond_98

    if-eqz p3, :cond_98

    .line 1979
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setImplLocked: idle until changed from "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "AlarmManager"

    invoke-static {v2, p3}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    :cond_98
    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 1984
    goto :goto_b5

    .line 1985
    :cond_9b
    iget p3, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_b4

    .line 1986
    iget-object p3, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz p3, :cond_ad

    iget-wide v2, p3, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long p3, v2, v4

    if-lez p3, :cond_b4

    .line 1987
    :cond_ad
    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 1991
    iget-object p1, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz p1, :cond_b4

    .line 1992
    goto :goto_b5

    .line 1997
    :cond_b4
    move v0, v1

    :goto_b5
    if-nez p2, :cond_c2

    .line 2011
    if-eqz v0, :cond_bc

    .line 2012
    invoke-virtual {p0, v1}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 2015
    :cond_bc
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 2016
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 2018
    :cond_c2
    return-void
.end method

.method private static native setKernelTime(JJ)I
.end method

.method private static native setKernelTimezone(JI)I
.end method

.method private setLocked(IJ)V
    .registers 6

    .line 3374
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->isAlarmDriverPresent()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3375
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/AlarmManagerService$Injector;->setAlarm(IJ)V

    goto :goto_21

    .line 3377
    :cond_e
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 3378
    const/4 v0, 0x1

    iput v0, p1, Landroid/os/Message;->what:I

    .line 3380
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 3381
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 3383
    :goto_21
    return-void
.end method

.method private updateNextAlarmClockLocked()V
    .registers 15

    .line 2894
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    if-nez v0, :cond_5

    .line 2895
    return-void

    .line 2897
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 2899
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 2900
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 2902
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2903
    move v3, v0

    :goto_14
    if-ge v3, v2, :cond_6e

    .line 2904
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    .line 2905
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2907
    move v6, v0

    :goto_25
    if-ge v6, v5, :cond_6b

    .line 2908
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2909
    iget-object v8, v7, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v8, :cond_68

    .line 2910
    iget v8, v7, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 2911
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 2920
    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_4b

    .line 2921
    iget-object v7, v7, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v1, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_68

    .line 2922
    :cond_4b
    iget-object v7, v7, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_68

    .line 2923
    invoke-virtual {v9}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v10

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v7}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v12

    cmp-long v7, v10, v12

    if-gtz v7, :cond_68

    .line 2925
    invoke-virtual {v1, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2907
    :cond_68
    :goto_68
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    .line 2903
    :cond_6b
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 2932
    :cond_6e
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 2933
    nop

    :goto_73
    if-ge v0, v2, :cond_93

    .line 2934
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 2935
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 2936
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 2937
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_90

    .line 2938
    invoke-direct {p0, v4, v3}, Lcom/android/server/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    .line 2933
    :cond_90
    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    .line 2943
    :cond_93
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2944
    add-int/lit8 v0, v0, -0x1

    :goto_9b
    if-ltz v0, :cond_b0

    .line 2945
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 2946
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_ad

    .line 2947
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    .line 2944
    :cond_ad
    add-int/lit8 v0, v0, -0x1

    goto :goto_9b

    .line 2950
    :cond_b0
    return-void
.end method

.method private updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V
    .registers 4

    .line 2954
    if-eqz p2, :cond_8

    .line 2959
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_d

    .line 2964
    :cond_8
    iget-object p2, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2967
    :goto_d
    iget-object p2, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2968
    iget-object p1, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 2969
    iget-object p1, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {p1, p2}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendEmptyMessage(I)Z

    .line 2970
    return-void
.end method

.method private validateConsistencyLocked()Z
    .registers 2

    .line 2858
    const/4 v0, 0x1

    return v0
.end method

.method private static native waitForAlarm(J)I
.end method


# virtual methods
.method attemptCoalesceLocked(JJ)I
    .registers 9

    .line 994
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 995
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_21

    .line 996
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Batch;

    .line 997
    iget v3, v2, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1e

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerService$Batch;->canHold(JJ)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 998
    return v1

    .line 995
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1001
    :cond_21
    const/4 p1, -0x1

    return p1
.end method

.method calculateDeliveryPriorities(Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .line 883
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 884
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_4f

    .line 885
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    .line 888
    iget-object v4, v3, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    if-ne v4, v5, :cond_16

    .line 889
    move v4, v1

    goto :goto_1d

    .line 890
    :cond_16
    iget-boolean v4, v3, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    if-eqz v4, :cond_1c

    .line 891
    const/4 v4, 0x1

    goto :goto_1d

    .line 893
    :cond_1c
    const/4 v4, 0x2

    .line 896
    :goto_1d
    iget-object v5, v3, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 897
    iget-object v6, v3, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    .line 898
    if-nez v5, :cond_2b

    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 899
    :cond_2b
    if-nez v5, :cond_39

    .line 900
    new-instance v5, Lcom/android/server/AlarmManagerService$PriorityClass;

    invoke-direct {v5, p0}, Lcom/android/server/AlarmManagerService$PriorityClass;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v5, v3, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 901
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    invoke-virtual {v7, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    :cond_39
    iput-object v5, v3, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 905
    iget v3, v5, Lcom/android/server/AlarmManagerService$PriorityClass;->seq:I

    iget v6, p0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    if-eq v3, v6, :cond_46

    .line 907
    iput v4, v5, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    .line 908
    iput v6, v5, Lcom/android/server/AlarmManagerService$PriorityClass;->seq:I

    goto :goto_4c

    .line 913
    :cond_46
    iget v3, v5, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    if-ge v4, v3, :cond_4c

    .line 914
    iput v4, v5, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    .line 884
    :cond_4c
    :goto_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 918
    :cond_4f
    return-void
.end method

.method checkAllowNonWakeupDelayLocked(J)Z
    .registers 9

    .line 3800
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 3801
    return v1

    .line 3803
    :cond_6
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_f

    .line 3804
    return v1

    .line 3806
    :cond_f
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1e

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v0, v2, p1

    if-gez v0, :cond_1e

    .line 3810
    return v1

    .line 3812
    :cond_1e
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v2, p1, v2

    .line 3813
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide p1

    cmp-long p1, v2, p1

    if-gtz p1, :cond_2b

    const/4 v1, 0x1

    :cond_2b
    return v1
.end method

.method currentNonWakeupFuzzLocked(J)J
    .registers 5

    .line 3772
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long/2addr p1, v0

    .line 3773
    const-wide/32 v0, 0x493e0

    cmp-long v0, p1, v0

    if-gez v0, :cond_e

    .line 3775
    const-wide/32 p1, 0x1d4c0

    return-wide p1

    .line 3776
    :cond_e
    const-wide/32 v0, 0x1b7740

    cmp-long p1, p1, v0

    if-gez p1, :cond_19

    .line 3778
    const-wide/32 p1, 0xdbba0

    return-wide p1

    .line 3781
    :cond_19
    const-wide/32 p1, 0x36ee80

    return-wide p1
.end method

.method deliverAlarmsLocked(Ljava/util/ArrayList;J)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;J)V"
        }
    .end annotation

    .line 3817
    iput-wide p2, p0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    .line 3818
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_72

    .line 3819
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3820
    iget v3, v2, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x1

    if-eqz v3, :cond_19

    move v3, v4

    goto :goto_1a

    :cond_19
    move v3, v0

    .line 3821
    :goto_1a
    iget-boolean v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    const-wide/32 v6, 0x20000

    if-eqz v5, :cond_38

    .line 3822
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dispatch wakeup alarm to "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v7, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_4e

    .line 3824
    :cond_38
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dispatch non-wakeup alarm to "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v7, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3831
    :goto_4e
    :try_start_4e
    iget-object v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v8, v2, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iget v9, v2, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    iget-object v10, v2, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    invoke-static {v5, v8, v9, v10}, Landroid/app/ActivityManager;->noteAlarmStart(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 3834
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/AlarmManagerService$DeliveryTracker;

    invoke-virtual {v5, v2, p2, p3, v3}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->deliverLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V
    :try_end_5e
    .catch Ljava/lang/RuntimeException; {:try_start_4e .. :try_end_5e} :catch_5f

    .line 3837
    goto :goto_67

    .line 3835
    :catch_5f
    move-exception v3

    .line 3836
    const-string v5, "AlarmManager"

    const-string v8, "Failure sending alarm."

    invoke-static {v5, v8, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3838
    :goto_67
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 3839
    iget v2, v2, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {p0, v2, v4}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3818
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3841
    :cond_72
    return-void
.end method

.method dumpImpl(Ljava/io/PrintWriter;)V
    .registers 22

    .line 2193
    move-object/from16 v1, p0

    move-object/from16 v10, p1

    iget-object v11, v1, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 2194
    :try_start_7
    const-string v2, "Current Alarm Manager state:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2195
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    const-string v3, "  "

    invoke-virtual {v2, v10, v3}, Lcom/android/server/AlarmManagerService$Constants;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2196
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2198
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    if-eqz v2, :cond_24

    .line 2199
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    const-string v3, "  "

    invoke-virtual {v2, v10, v3}, Lcom/android/server/AppStateTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2200
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2203
    :cond_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  App Standby Parole: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/android/server/AlarmManagerService;->mAppStandbyParole:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2204
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2206
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v12

    .line 2207
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2208
    iget-object v4, v1, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v14

    .line 2209
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v9, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2211
    const-string v4, "  nowRTC="

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v14, v15}, Ljava/io/PrintWriter;->print(J)V

    .line 2212
    const-string v4, "="

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2213
    const-string v4, " nowELAPSED="

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    .line 2214
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2215
    const-string v4, "  mLastTimeChangeClockTime="

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, v1, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    invoke-virtual {v10, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 2216
    const-string v4, "="

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    iget-wide v5, v1, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2217
    const-string v4, "  mLastTimeChangeRealtime="

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, v1, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    invoke-virtual {v10, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 2218
    const-string v4, "  mLastTickReceived="

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    iget-wide v5, v1, Lcom/android/server/AlarmManagerService;->mLastTickReceived:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2219
    const-string v4, "  mLastTickSet="

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    iget-wide v5, v1, Lcom/android/server/AlarmManagerService;->mLastTickSet:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2220
    const-string v4, "  mLastTickAdded="

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    iget-wide v5, v1, Lcom/android/server/AlarmManagerService;->mLastTickAdded:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2221
    const-string v4, "  mLastTickRemoved="

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    iget-wide v5, v1, Lcom/android/server/AlarmManagerService;->mLastTickRemoved:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2224
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2225
    const-string v4, "  Recent TIME_TICK history:"

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2226
    iget v4, v1, Lcom/android/server/AlarmManagerService;->mNextTickHistory:I

    .line 2228
    :goto_f6
    add-int/lit8 v4, v4, -0x1

    .line 2229
    if-gez v4, :cond_fc

    const/16 v4, 0x9

    .line 2230
    :cond_fc
    iget-object v5, v1, Lcom/android/server/AlarmManagerService;->mTickHistory:[J

    aget-wide v5, v5, v4

    .line 2231
    const-string v7, "    "

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2232
    const-wide/16 v7, 0x0

    cmp-long v16, v5, v7

    if-lez v16, :cond_119

    .line 2233
    new-instance v7, Ljava/util/Date;

    sub-long v5, v12, v5

    sub-long v5, v14, v5

    invoke-direct {v7, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    goto :goto_11b

    .line 2234
    :cond_119
    const-string v5, "-"

    .line 2232
    :goto_11b
    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2235
    iget v5, v1, Lcom/android/server/AlarmManagerService;->mNextTickHistory:I

    if-ne v4, v5, :cond_76a

    .line 2238
    const-class v4, Lcom/android/server/SystemServiceManager;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/SystemServiceManager;

    .line 2239
    if-eqz v4, :cond_174

    .line 2240
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2241
    const-string v5, "  RuntimeStarted="

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2242
    new-instance v5, Ljava/util/Date;

    sub-long v6, v14, v12

    .line 2243
    invoke-virtual {v4}, Lcom/android/server/SystemServiceManager;->getRuntimeStartElapsedTime()J

    move-result-wide v18

    add-long v6, v6, v18

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 2242
    invoke-virtual {v9, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2244
    invoke-virtual {v4}, Lcom/android/server/SystemServiceManager;->isRuntimeRestarted()Z

    move-result v5

    if-eqz v5, :cond_153

    .line 2245
    const-string v5, "  (Runtime restarted)"

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2247
    :cond_153
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2248
    const-string v5, "  Runtime uptime (elapsed): "

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2249
    invoke-virtual {v4}, Lcom/android/server/SystemServiceManager;->getRuntimeStartElapsedTime()J

    move-result-wide v5

    invoke-static {v12, v13, v5, v6, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2250
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2251
    const-string v5, "  Runtime uptime (uptime): "

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2252
    invoke-virtual {v4}, Lcom/android/server/SystemServiceManager;->getRuntimeStartUptime()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2253
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2256
    :cond_174
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2257
    iget-boolean v2, v1, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-nez v2, :cond_18a

    .line 2258
    const-string v2, "  Time since non-interactive: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2259
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v2, v12, v2

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2260
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2262
    :cond_18a
    const-string v2, "  Max wakeup delay: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2263
    invoke-virtual {v1, v12, v13}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v2

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2264
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2265
    const-string v2, "  Time since last dispatch: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2266
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v2, v12, v2

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2267
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2268
    const-string v2, "  Next non-wakeup delivery time: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2269
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    invoke-static {v2, v3, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2270
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2272
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    sub-long v4, v14, v12

    add-long/2addr v2, v4

    .line 2273
    iget-wide v6, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    add-long/2addr v6, v4

    .line 2274
    const-string v4, "  Next non-wakeup alarm: "

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2275
    iget-wide v4, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    invoke-static {v4, v5, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2276
    const-string v4, " = "

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    invoke-virtual {v10, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 2277
    const-string v4, " = "

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2278
    const-string v4, "    set at "

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeUpSetAt:J

    invoke-static {v4, v5, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2279
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2280
    const-string v4, "  Next wakeup alarm: "

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, v1, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    invoke-static {v4, v5, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2281
    const-string v4, " = "

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, v1, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    invoke-virtual {v10, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 2282
    const-string v4, " = "

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2283
    const-string v2, "    set at "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNextWakeUpSetAt:J

    invoke-static {v2, v3, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2284
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2286
    const-string v2, "  Next kernel non-wakeup alarm: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2287
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/AlarmManagerService$Injector;->getNextAlarm(I)J

    move-result-wide v2

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2288
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2289
    const-string v2, "  Next kernel wakeup alarm: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2290
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/AlarmManagerService$Injector;->getNextAlarm(I)J

    move-result-wide v2

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2291
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2293
    const-string v2, "  Last wakeup: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mLastWakeup:J

    invoke-static {v2, v3, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2294
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mLastWakeup:J

    invoke-virtual {v10, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 2295
    const-string v2, "  Last trigger: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mLastTrigger:J

    invoke-static {v2, v3, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2296
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mLastTrigger:J

    invoke-virtual {v10, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 2297
    const-string v2, "  Num time change events: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2299
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2300
    const-string v2, "  Next alarm clock information: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2301
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 2302
    const/4 v7, 0x0

    move v3, v7

    :goto_286
    iget-object v4, v1, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_29e

    .line 2303
    iget-object v4, v1, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 2302
    add-int/lit8 v3, v3, 0x1

    goto :goto_286

    .line 2305
    :cond_29e
    move v3, v7

    :goto_29f
    iget-object v4, v1, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2b7

    .line 2306
    iget-object v4, v1, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 2305
    add-int/lit8 v3, v3, 0x1

    goto :goto_29f

    .line 2308
    :cond_2b7
    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2bb
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2309
    iget-object v4, v1, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 2310
    if-eqz v4, :cond_2da

    invoke-virtual {v4}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v4

    goto :goto_2dc

    :cond_2da
    const-wide/16 v4, 0x0

    .line 2311
    :goto_2dc
    iget-object v6, v1, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    .line 2312
    const-string v8, "    user:"

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2313
    const-string v3, " pendingSend:"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 2314
    const-string v3, " time:"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 2315
    const-wide/16 v16, 0x0

    cmp-long v3, v4, v16

    if-lez v3, :cond_319

    .line 2316
    const-string v3, " = "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2317
    const-string v3, " = "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v4, v5, v14, v15, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2319
    :cond_319
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2320
    goto :goto_2bb

    .line 2321
    :cond_31d
    const-wide/16 v16, 0x0

    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_368

    .line 2322
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2323
    const-string v2, "  Pending alarm batches: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2324
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2325
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_33e
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_365

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Batch;

    .line 2326
    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v3, 0x3a

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(C)V

    .line 2327
    iget-object v3, v2, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    const-string v4, "    "

    move-object/from16 v2, p1

    move-wide v5, v12

    move-wide v7, v14

    move-object/from16 v16, v9

    invoke-static/range {v2 .. v9}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 2328
    move-object/from16 v9, v16

    const/4 v7, 0x0

    const-wide/16 v16, 0x0

    goto :goto_33e

    .line 2325
    :cond_365
    move-object/from16 v16, v9

    goto :goto_36a

    .line 2321
    :cond_368
    move-object/from16 v16, v9

    .line 2330
    :goto_36a
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2331
    const-string v2, "  Pending user blocked background alarms: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2332
    nop

    .line 2333
    const/4 v2, 0x0

    const/4 v9, 0x0

    :goto_375
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/16 v17, 0x1

    if-ge v9, v3, :cond_3a5

    .line 2334
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 2335
    if-eqz v3, :cond_3a0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3a0

    .line 2336
    nop

    .line 2337
    const-string v4, "    "

    move-object/from16 v2, p1

    move-wide v5, v12

    move-wide v7, v14

    move/from16 v18, v9

    move-object/from16 v9, v16

    invoke-static/range {v2 .. v9}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    move/from16 v2, v17

    goto :goto_3a2

    .line 2335
    :cond_3a0
    move/from16 v18, v9

    .line 2333
    :goto_3a2
    add-int/lit8 v9, v18, 0x1

    goto :goto_375

    .line 2340
    :cond_3a5
    if-nez v2, :cond_3ac

    .line 2341
    const-string v2, "    none"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2343
    :cond_3ac
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2344
    const-string v2, "  Pending alarms per uid: ["

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2345
    const/4 v2, 0x0

    :goto_3b5
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3de

    .line 2346
    if-lez v2, :cond_3c4

    .line 2347
    const-string v3, ", "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2349
    :cond_3c4
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-static {v10, v3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2350
    const-string v3, ":"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2351
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2345
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b5

    .line 2353
    :cond_3de
    const-string v2, "]"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2354
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2356
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/AlarmManagerService$AppWakeupHistory;

    const-string v3, "  "

    invoke-virtual {v2, v10, v3, v12, v13}, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 2358
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-nez v2, :cond_3f9

    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_435

    .line 2359
    :cond_3f9
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2360
    const-string v2, "    Idle mode state:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2361
    const-string v2, "      Idling until: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2362
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v2, :cond_41d

    .line 2363
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2364
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    const-string v4, "        "

    move-object/from16 v3, p1

    move-wide v5, v12

    move-wide v7, v14

    move-object/from16 v9, v16

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    goto :goto_423

    .line 2366
    :cond_41d
    const-string/jumbo v2, "null"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2368
    :goto_423
    const-string v2, "      Pending alarms:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2369
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    const-string v4, "      "

    move-object/from16 v2, p1

    move-wide v5, v12

    move-wide v7, v14

    move-object/from16 v9, v16

    invoke-static/range {v2 .. v9}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 2371
    :cond_435
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v2, :cond_453

    .line 2372
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2373
    const-string v2, "  Next wake from idle: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2374
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    const-string v4, "    "

    move-object/from16 v3, p1

    move-wide v5, v12

    move-wide v7, v14

    move-object/from16 v9, v16

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 2377
    :cond_453
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2378
    const-string v2, "  Past-due non-wakeup alarms: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2379
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_47a

    .line 2380
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2381
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    const-string v4, "    "

    move-object/from16 v2, p1

    move-wide v5, v12

    move-wide v7, v14

    move-object/from16 v9, v16

    invoke-static/range {v2 .. v9}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    goto :goto_47f

    .line 2383
    :cond_47a
    const-string v2, "(none)"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2385
    :goto_47f
    const-string v2, "    Number of delayed alarms: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2386
    const-string v2, ", total delay time: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2387
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2388
    const-string v2, "    Max delay time: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2389
    const-string v2, ", max non-interactive time: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2390
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2391
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2393
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2394
    const-string v2, "  Broadcast ref count: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2395
    const-string v2, "  PendingIntent send count: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mSendCount:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2396
    const-string v2, "  PendingIntent finish count: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mSendFinishCount:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2397
    const-string v2, "  Listener send count: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mListenerCount:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2398
    const-string v2, "  Listener finish count: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mListenerFinishCount:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2399
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2401
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_517

    .line 2402
    const-string v2, "Outstanding deliveries:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2403
    const/4 v2, 0x0

    :goto_4f3
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_514

    .line 2404
    const-string v3, "   #"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2405
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2403
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f3

    .line 2407
    :cond_514
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2410
    :cond_517
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v2}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    if-lez v2, :cond_56b

    .line 2411
    const-string v2, "  Last allow while idle dispatch times:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2412
    const/4 v2, 0x0

    :goto_525
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v3}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_56b

    .line 2413
    const-string v3, "    UID "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2414
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v3

    .line 2415
    invoke-static {v10, v3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2416
    const-string v4, ": "

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2417
    iget-object v4, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    .line 2418
    invoke-static {v4, v5, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2420
    invoke-direct {v1, v3}, Lcom/android/server/AlarmManagerService;->getWhileIdleMinIntervalLocked(I)J

    move-result-wide v6

    .line 2421
    const-string v3, "  Next allowed:"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2422
    add-long/2addr v4, v6

    invoke-static {v4, v5, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2423
    const-string v3, " ("

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2424
    const-wide/16 v3, 0x0

    invoke-static {v6, v7, v3, v4, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2425
    const-string v5, ")"

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2427
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2412
    add-int/lit8 v2, v2, 0x1

    goto :goto_525

    .line 2431
    :cond_56b
    const-string v2, "  mUseAllowWhileIdleShortTime: ["

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2432
    const/4 v2, 0x0

    :goto_571
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_592

    .line 2433
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_58f

    .line 2434
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-static {v10, v3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2435
    const-string v3, " "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2432
    :cond_58f
    add-int/lit8 v2, v2, 0x1

    goto :goto_571

    .line 2438
    :cond_592
    const-string v2, "]"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2439
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2441
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-string v3, "  Recent problems"

    const-string v4, "    "

    invoke-virtual {v2, v10, v3, v4}, Lcom/android/internal/util/LocalLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5a9

    .line 2442
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2445
    :cond_5a9
    const/16 v2, 0xa

    new-array v2, v2, [Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2446
    new-instance v3, Lcom/android/server/AlarmManagerService$4;

    invoke-direct {v3, v1}, Lcom/android/server/AlarmManagerService$4;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 2457
    nop

    .line 2459
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_5b5
    iget-object v6, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_625

    .line 2460
    iget-object v6, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 2461
    move v7, v5

    const/4 v5, 0x0

    :goto_5c7
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v5, v8, :cond_621

    .line 2462
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2463
    move v9, v7

    const/4 v7, 0x0

    :goto_5d5
    iget-object v14, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v7, v14, :cond_61b

    .line 2464
    iget-object v14, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v14, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2465
    if-lez v9, :cond_5ef

    .line 2466
    const/4 v15, 0x0

    invoke-static {v2, v15, v9, v14, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v16

    move/from16 v15, v16

    goto :goto_5f0

    :cond_5ef
    const/4 v15, 0x0

    .line 2467
    :goto_5f0
    if-gez v15, :cond_5f5

    .line 2468
    neg-int v15, v15

    add-int/lit8 v15, v15, -0x1

    .line 2470
    :cond_5f5
    move-object/from16 v16, v6

    array-length v6, v2

    if-ge v15, v6, :cond_612

    .line 2471
    array-length v6, v2

    sub-int/2addr v6, v15

    add-int/lit8 v6, v6, -0x1

    .line 2472
    if-lez v6, :cond_608

    .line 2473
    move-object/from16 v18, v8

    add-int/lit8 v8, v15, 0x1

    invoke-static {v2, v15, v2, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_60a

    .line 2472
    :cond_608
    move-object/from16 v18, v8

    .line 2475
    :goto_60a
    aput-object v14, v2, v15

    .line 2476
    array-length v6, v2

    if-ge v9, v6, :cond_614

    .line 2477
    add-int/lit8 v9, v9, 0x1

    goto :goto_614

    .line 2470
    :cond_612
    move-object/from16 v18, v8

    .line 2463
    :cond_614
    :goto_614
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v6, v16

    move-object/from16 v8, v18

    goto :goto_5d5

    .line 2461
    :cond_61b
    move-object/from16 v16, v6

    add-int/lit8 v5, v5, 0x1

    move v7, v9

    goto :goto_5c7

    .line 2459
    :cond_621
    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_5b5

    .line 2483
    :cond_625
    if-lez v5, :cond_683

    .line 2484
    const-string v4, "  Top Alarms:"

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2485
    const/4 v4, 0x0

    :goto_62d
    if-ge v4, v5, :cond_683

    .line 2486
    aget-object v6, v2, v4

    .line 2487
    const-string v7, "    "

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2488
    iget v7, v6, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v7, :cond_63f

    const-string v7, "*ACTIVE* "

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2489
    :cond_63f
    iget-wide v7, v6, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    invoke-static {v7, v8, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2490
    const-string v7, " running, "

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v6, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 2491
    const-string v7, " wakeups, "

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v6, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 2492
    const-string v7, " alarms: "

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget v7, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    invoke-static {v10, v7}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2493
    const-string v7, ":"

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v7, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2494
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2495
    const-string v7, "      "

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v6, Lcom/android/server/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2496
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2485
    add-int/lit8 v4, v4, 0x1

    goto :goto_62d

    .line 2500
    :cond_683
    const-string v2, " "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2501
    const-string v2, "  Alarm Stats:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2502
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2503
    const/4 v4, 0x0

    :goto_693
    iget-object v5, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_75e

    .line 2504
    iget-object v5, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 2505
    const/4 v6, 0x0

    :goto_6a4
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_75a

    .line 2506
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2507
    const-string v8, "  "

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2508
    iget v8, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-lez v8, :cond_6be

    const-string v8, "*ACTIVE* "

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2509
    :cond_6be
    iget v8, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    invoke-static {v10, v8}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2510
    const-string v8, ":"

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2511
    iget-object v8, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2512
    const-string v8, " "

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    invoke-static {v8, v9, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2513
    const-string v8, " running, "

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 2514
    const-string v8, " wakeups:"

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2515
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2516
    const/4 v8, 0x0

    :goto_6ea
    iget-object v9, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v8, v9, :cond_700

    .line 2517
    iget-object v9, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AlarmManagerService$FilterStats;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2516
    add-int/lit8 v8, v8, 0x1

    goto :goto_6ea

    .line 2519
    :cond_700
    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2520
    const/4 v7, 0x0

    :goto_704
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_756

    .line 2521
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2522
    const-string v9, "    "

    invoke-virtual {v10, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2523
    iget v9, v8, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v9, :cond_71e

    const-string v9, "*ACTIVE* "

    invoke-virtual {v10, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2524
    :cond_71e
    iget-wide v14, v8, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    invoke-static {v14, v15, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2525
    const-string v9, " "

    invoke-virtual {v10, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, v8, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    invoke-virtual {v10, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 2526
    const-string v9, " wakes "

    invoke-virtual {v10, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, v8, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    invoke-virtual {v10, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 2527
    const-string v9, " alarms, last "

    invoke-virtual {v10, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2528
    iget-wide v14, v8, Lcom/android/server/AlarmManagerService$FilterStats;->lastTime:J

    invoke-static {v14, v15, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2529
    const-string v9, ":"

    invoke-virtual {v10, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2530
    const-string v9, "      "

    invoke-virtual {v10, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2531
    iget-object v8, v8, Lcom/android/server/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2532
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2520
    add-int/lit8 v7, v7, 0x1

    goto :goto_704

    .line 2505
    :cond_756
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6a4

    .line 2503
    :cond_75a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_693

    .line 2536
    :cond_75e
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2537
    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const-string v2, "  "

    invoke-virtual {v1, v10, v2}, Lcom/android/internal/util/StatLogger;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2584
    monitor-exit v11

    .line 2585
    return-void

    .line 2235
    :cond_76a
    move-object/from16 v16, v9

    goto/16 :goto_f6

    .line 2584
    :catchall_76e
    move-exception v0

    move-object v1, v0

    monitor-exit v11
    :try_end_771
    .catchall {:try_start_7 .. :try_end_771} :catchall_76e

    throw v1
.end method

.method dumpProto(Ljava/io/FileDescriptor;)V
    .registers 19

    .line 2588
    move-object/from16 v0, p0

    new-instance v9, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v1, p1

    invoke-direct {v9, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 2590
    iget-object v10, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 2591
    :try_start_c
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v11

    .line 2592
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v13

    .line 2593
    const-wide v1, 0x10300000001L

    invoke-virtual {v9, v1, v2, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2594
    const-wide v7, 0x10300000002L

    invoke-virtual {v9, v7, v8, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2595
    iget-wide v1, v0, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    const-wide v5, 0x10300000003L

    invoke-virtual {v9, v5, v6, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2597
    const-wide v1, 0x10300000004L

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2600
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    const-wide v2, 0x10b00000005L

    invoke-virtual {v1, v9, v2, v3}, Lcom/android/server/AlarmManagerService$Constants;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2602
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    if-eqz v1, :cond_54

    .line 2603
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    const-wide v2, 0x10b00000006L

    invoke-virtual {v1, v9, v2, v3}, Lcom/android/server/AppStateTracker;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2607
    :cond_54
    const-wide v1, 0x10800000007L

    iget-boolean v3, v0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2608
    iget-boolean v1, v0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-nez v1, :cond_92

    .line 2610
    const-wide v1, 0x10300000008L

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v3, v13, v3

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2612
    const-wide v1, 0x10300000009L

    .line 2613
    invoke-virtual {v0, v13, v14}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v3

    .line 2612
    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2614
    const-wide v1, 0x1030000000aL

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v3, v13, v3

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2616
    const-wide v1, 0x1030000000bL

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    sub-long v3, v13, v3

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2620
    :cond_92
    const-wide v1, 0x1030000000cL

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    sub-long/2addr v3, v13

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2622
    const-wide v1, 0x1030000000dL

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    sub-long/2addr v3, v13

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2624
    const-wide v1, 0x1030000000eL

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService;->mLastWakeup:J

    sub-long v3, v13, v3

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2626
    const-wide v1, 0x1030000000fL

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService;->mNextWakeUpSetAt:J

    sub-long v3, v13, v3

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2628
    const-wide v1, 0x10300000010L

    iget v3, v0, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2630
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 2631
    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 2632
    const/4 v3, 0x0

    :goto_d6
    if-ge v3, v2, :cond_e8

    .line 2633
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 2632
    add-int/lit8 v3, v3, 0x1

    goto :goto_d6

    .line 2635
    :cond_e8
    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 2636
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 2637
    const/4 v3, 0x0

    :goto_ef
    if-ge v3, v2, :cond_101

    .line 2638
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 2637
    add-int/lit8 v3, v3, 0x1

    goto :goto_ef

    .line 2640
    :cond_101
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_105
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide v3, 0x10500000001L

    if-eqz v2, :cond_157

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2641
    iget-object v7, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 2642
    if-eqz v7, :cond_129

    invoke-virtual {v7}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v7

    goto :goto_12b

    :cond_129
    const-wide/16 v7, 0x0

    .line 2643
    :goto_12b
    iget-object v15, v0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v15

    .line 2644
    const-wide v5, 0x20b00000012L

    invoke-virtual {v9, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 2645
    invoke-virtual {v9, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2646
    const-wide v2, 0x10800000002L

    invoke-virtual {v9, v2, v3, v15}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2647
    const-wide v2, 0x10300000003L

    invoke-virtual {v9, v2, v3, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2648
    invoke-virtual {v9, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2649
    move-wide v5, v2

    const-wide v7, 0x10300000002L

    goto :goto_105

    .line 2650
    :cond_157
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_15d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_181

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 2651
    const-wide v7, 0x20b00000013L

    move-object v2, v9

    move-wide v3, v7

    move-wide v7, v5

    move-wide v5, v13

    move-wide v7, v11

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/AlarmManagerService$Batch;->writeToProto(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 2653
    const-wide v3, 0x10500000001L

    const-wide v5, 0x10300000003L

    goto :goto_15d

    .line 2654
    :cond_181
    const/4 v15, 0x0

    :goto_182
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v15, v1, :cond_1b3

    .line 2655
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v1, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2656
    if-eqz v1, :cond_1b0

    .line 2657
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_198
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2658
    const-wide v3, 0x20b00000014L

    move-object v2, v9

    move-wide v5, v13

    move-wide v7, v11

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/AlarmManagerService$Alarm;->writeToProto(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 2661
    goto :goto_198

    .line 2654
    :cond_1b0
    add-int/lit8 v15, v15, 0x1

    goto :goto_182

    .line 2664
    :cond_1b3
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v1, :cond_1c4

    .line 2665
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    const-wide v3, 0x10b00000015L

    move-object v2, v9

    move-wide v5, v13

    move-wide v7, v11

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/AlarmManagerService$Alarm;->writeToProto(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 2668
    :cond_1c4
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1ca
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2669
    const-wide v3, 0x20b00000016L

    move-object v2, v9

    move-wide v5, v13

    move-wide v7, v11

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/AlarmManagerService$Alarm;->writeToProto(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 2671
    goto :goto_1ca

    .line 2672
    :cond_1e2
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v1, :cond_1f3

    .line 2673
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    const-wide v3, 0x10b00000017L

    move-object v2, v9

    move-wide v5, v13

    move-wide v7, v11

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/AlarmManagerService$Alarm;->writeToProto(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 2677
    :cond_1f3
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1f9
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_211

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2678
    const-wide v3, 0x20b00000018L

    move-object v2, v9

    move-wide v5, v13

    move-wide v7, v11

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/AlarmManagerService$Alarm;->writeToProto(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 2680
    goto :goto_1f9

    .line 2682
    :cond_211
    const-wide v1, 0x10500000019L

    iget v3, v0, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2683
    const-wide v1, 0x1030000001aL

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2684
    const-wide v1, 0x1030000001bL

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2685
    const-wide v1, 0x1030000001cL

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2688
    const-wide v1, 0x1050000001dL

    iget v3, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2689
    const-wide v1, 0x1050000001eL

    iget v3, v0, Lcom/android/server/AlarmManagerService;->mSendCount:I

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2690
    const-wide v1, 0x1050000001fL

    iget v3, v0, Lcom/android/server/AlarmManagerService;->mSendFinishCount:I

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2691
    const-wide v1, 0x10500000020L

    iget v3, v0, Lcom/android/server/AlarmManagerService;->mListenerCount:I

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2692
    const-wide v1, 0x10500000021L

    iget v3, v0, Lcom/android/server/AlarmManagerService;->mListenerFinishCount:I

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2694
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_271
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_286

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$InFlight;

    .line 2695
    const-wide v3, 0x20b00000022L

    invoke-virtual {v2, v9, v3, v4}, Lcom/android/server/AlarmManagerService$InFlight;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2696
    goto :goto_271

    .line 2698
    :cond_286
    const/4 v1, 0x0

    :goto_287
    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v2}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c8

    .line 2699
    const-wide v2, 0x20b00000024L

    invoke-virtual {v9, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 2701
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v4

    .line 2702
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v5

    .line 2704
    const-wide v7, 0x10500000001L

    invoke-virtual {v9, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2705
    const-wide v11, 0x10300000002L

    invoke-virtual {v9, v11, v12, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2706
    nop

    .line 2707
    invoke-direct {v0, v4}, Lcom/android/server/AlarmManagerService;->getWhileIdleMinIntervalLocked(I)J

    move-result-wide v13

    add-long/2addr v5, v13

    .line 2706
    const-wide v13, 0x10300000003L

    invoke-virtual {v9, v13, v14, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2708
    invoke-virtual {v9, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2698
    add-int/lit8 v1, v1, 0x1

    goto :goto_287

    .line 2711
    :cond_2c8
    const-wide v7, 0x10500000001L

    const/4 v1, 0x0

    :goto_2ce
    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2ef

    .line 2712
    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_2ec

    .line 2713
    const-wide v2, 0x20500000023L

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    .line 2714
    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 2713
    invoke-virtual {v9, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2711
    :cond_2ec
    add-int/lit8 v1, v1, 0x1

    goto :goto_2ce

    .line 2718
    :cond_2ef
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-wide v2, 0x10b00000025L

    invoke-virtual {v1, v9, v2, v3}, Lcom/android/internal/util/LocalLog;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2720
    const/16 v1, 0xa

    new-array v1, v1, [Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2721
    new-instance v2, Lcom/android/server/AlarmManagerService$5;

    invoke-direct {v2, v0}, Lcom/android/server/AlarmManagerService$5;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 2732
    nop

    .line 2734
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_305
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_373

    .line 2735
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 2736
    move v6, v4

    const/4 v4, 0x0

    :goto_317
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v4, v11, :cond_36a

    .line 2737
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2738
    move v12, v6

    const/4 v6, 0x0

    :goto_325
    iget-object v13, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v6, v13, :cond_361

    .line 2739
    iget-object v13, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v13, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2740
    if-lez v12, :cond_33d

    .line 2741
    const/4 v14, 0x0

    invoke-static {v1, v14, v12, v13, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v15

    goto :goto_33f

    :cond_33d
    const/4 v14, 0x0

    move v15, v14

    .line 2742
    :goto_33f
    if-gez v15, :cond_344

    .line 2743
    neg-int v15, v15

    add-int/lit8 v15, v15, -0x1

    .line 2745
    :cond_344
    array-length v14, v1

    if-ge v15, v14, :cond_359

    .line 2746
    array-length v14, v1

    sub-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x1

    .line 2747
    if-lez v14, :cond_352

    .line 2748
    add-int/lit8 v7, v15, 0x1

    invoke-static {v1, v15, v1, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2750
    :cond_352
    aput-object v13, v1, v15

    .line 2751
    array-length v7, v1

    if-ge v12, v7, :cond_359

    .line 2752
    add-int/lit8 v12, v12, 0x1

    .line 2738
    :cond_359
    add-int/lit8 v6, v6, 0x1

    const-wide v7, 0x10500000001L

    goto :goto_325

    .line 2736
    :cond_361
    add-int/lit8 v4, v4, 0x1

    move v6, v12

    const-wide v7, 0x10500000001L

    goto :goto_317

    .line 2734
    :cond_36a
    add-int/lit8 v3, v3, 0x1

    move v4, v6

    const-wide v7, 0x10500000001L

    goto :goto_305

    .line 2758
    :cond_373
    const/4 v3, 0x0

    :goto_374
    if-ge v3, v4, :cond_3a7

    .line 2759
    const-wide v5, 0x20b00000026L

    invoke-virtual {v9, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 2760
    aget-object v7, v1, v3

    .line 2762
    iget-object v8, v7, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget v8, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    const-wide v11, 0x10500000001L

    invoke-virtual {v9, v11, v12, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2763
    const-wide v13, 0x10900000002L

    iget-object v8, v7, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v8, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v13, v14, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2765
    const-wide v13, 0x10b00000003L

    invoke-virtual {v7, v9, v13, v14}, Lcom/android/server/AlarmManagerService$FilterStats;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2767
    invoke-virtual {v9, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2758
    add-int/lit8 v3, v3, 0x1

    goto :goto_374

    .line 2770
    :cond_3a7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2771
    const/4 v3, 0x0

    :goto_3ad
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_41a

    .line 2772
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 2773
    const/4 v5, 0x0

    :goto_3be
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_417

    .line 2774
    const-wide v6, 0x20b00000027L

    invoke-virtual {v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 2776
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2777
    const-wide v11, 0x10b00000001L

    invoke-virtual {v8, v9, v11, v12}, Lcom/android/server/AlarmManagerService$BroadcastStats;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2780
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2781
    const/4 v11, 0x0

    :goto_3df
    iget-object v12, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v11, v12, :cond_3f5

    .line 2782
    iget-object v12, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/AlarmManagerService$FilterStats;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2781
    add-int/lit8 v11, v11, 0x1

    goto :goto_3df

    .line 2784
    :cond_3f5
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2785
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3fc
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_411

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2786
    const-wide v12, 0x20b00000002L

    invoke-virtual {v11, v9, v12, v13}, Lcom/android/server/AlarmManagerService$FilterStats;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2787
    goto :goto_3fc

    .line 2789
    :cond_411
    invoke-virtual {v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2773
    add-int/lit8 v5, v5, 0x1

    goto :goto_3be

    .line 2771
    :cond_417
    add-int/lit8 v3, v3, 0x1

    goto :goto_3ad

    .line 2820
    :cond_41a
    monitor-exit v10
    :try_end_41b
    .catchall {:try_start_c .. :try_end_41b} :catchall_41f

    .line 2822
    invoke-virtual {v9}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 2823
    return-void

    .line 2820
    :catchall_41f
    move-exception v0

    :try_start_420
    monitor-exit v10
    :try_end_421
    .catchall {:try_start_420 .. :try_end_421} :catchall_41f

    throw v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1612
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->close()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_a

    .line 1614
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1615
    nop

    .line 1616
    return-void

    .line 1614
    :catchall_a
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getMinDelayForBucketLocked(I)J
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1826
    const/16 v0, 0x32

    if-ne p1, v0, :cond_6

    const/4 p1, 0x4

    goto :goto_19

    .line 1827
    :cond_6
    const/16 v0, 0x1e

    if-le p1, v0, :cond_c

    const/4 p1, 0x3

    goto :goto_19

    .line 1828
    :cond_c
    const/16 v0, 0x14

    if-le p1, v0, :cond_12

    const/4 p1, 0x2

    goto :goto_19

    .line 1829
    :cond_12
    const/16 v0, 0xa

    if-le p1, v0, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    .line 1830
    :cond_18
    const/4 p1, 0x0

    .line 1832
    :goto_19
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_MIN_DELAYS:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method getNextAlarmClockImpl(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .registers 4

    .line 2885
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2886
    :try_start_3
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager$AlarmClockInfo;

    monitor-exit v0

    return-object p1

    .line 2887
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method getNextWakeFromIdleTimeImpl()J
    .registers 4

    .line 2873
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2874
    :try_start_3
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v1, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    goto :goto_11

    :cond_c
    const-wide v1, 0x7fffffffffffffffL

    :goto_11
    monitor-exit v0

    return-wide v1

    .line 2875
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method getQuotaForBucketLocked(I)I
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1800
    const/16 v0, 0xa

    if-gt p1, v0, :cond_6

    .line 1801
    const/4 p1, 0x0

    goto :goto_19

    .line 1802
    :cond_6
    const/16 v0, 0x14

    if-gt p1, v0, :cond_c

    .line 1803
    const/4 p1, 0x1

    goto :goto_19

    .line 1804
    :cond_c
    const/16 v0, 0x1e

    if-gt p1, v0, :cond_12

    .line 1805
    const/4 p1, 0x2

    goto :goto_19

    .line 1806
    :cond_12
    const/16 v0, 0x32

    if-ge p1, v0, :cond_18

    .line 1807
    const/4 p1, 0x3

    goto :goto_19

    .line 1809
    :cond_18
    const/4 p1, 0x4

    .line 1811
    :goto_19
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    aget p1, v0, p1

    return p1
.end method

.method haveAlarmsTimeTickAlarm(Ljava/util/ArrayList;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)Z"
        }
    .end annotation

    .line 1015
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1016
    return v1

    .line 1018
    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1019
    move v2, v1

    :goto_d
    if-ge v2, v0, :cond_20

    .line 1020
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    if-ne v3, v4, :cond_1d

    .line 1021
    const/4 p1, 0x1

    return p1

    .line 1019
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1024
    :cond_20
    return v1
.end method

.method haveBatchesTimeTickAlarm(Ljava/util/ArrayList;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;)Z"
        }
    .end annotation

    .line 1028
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1029
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_1b

    .line 1030
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Batch;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->haveAlarmsTimeTickAlarm(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1031
    const/4 p1, 0x1

    return p1

    .line 1029
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1034
    :cond_1b
    return v1
.end method

.method interactiveStateChangedLocked(Z)V
    .registers 8

    .line 3329
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-eq v0, p1, :cond_4f

    .line 3330
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    .line 3331
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 3332
    if-eqz p1, :cond_4d

    .line 3333
    iget-object p1, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_31

    .line 3334
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v2, v0, v2

    .line 3335
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 3336
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    cmp-long p1, v4, v2

    if-gez p1, :cond_27

    .line 3337
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 3339
    :cond_27
    iget-object p1, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 3340
    iget-object p1, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3342
    :cond_31
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_42

    .line 3343
    sub-long/2addr v0, v2

    .line 3344
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_42

    .line 3345
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    .line 3349
    :cond_42
    iget-object p1, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    new-instance v0, Lcom/android/server/-$$Lambda$AlarmManagerService$gKXZ864LsHRTGbnNeLAgHKL2YPk;

    invoke-direct {v0, p0}, Lcom/android/server/-$$Lambda$AlarmManagerService$gKXZ864LsHRTGbnNeLAgHKL2YPk;-><init>(Lcom/android/server/AlarmManagerService;)V

    invoke-virtual {p1, v0}, Lcom/android/server/AlarmManagerService$AlarmHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4f

    .line 3352
    :cond_4d
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    .line 3355
    :cond_4f
    :goto_4f
    return-void
.end method

.method public synthetic lambda$interactiveStateChangedLocked$5$AlarmManagerService()V
    .registers 4

    .line 3350
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mTimeTickIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public synthetic lambda$removeLocked$2$AlarmManagerService(Ljava/lang/String;Landroid/util/MutableBoolean;Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 5

    .line 3173
    invoke-virtual {p3, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result p1

    .line 3174
    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-ne p3, v0, :cond_d

    .line 3175
    const/4 p3, 0x1

    iput-boolean p3, p2, Landroid/util/MutableBoolean;->value:Z

    .line 3177
    :cond_d
    return p1
.end method

.method lookForPackageLocked(Ljava/lang/String;)Z
    .registers 6

    .line 3358
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1d

    .line 3359
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Batch;

    .line 3360
    invoke-virtual {v2, p1}, Lcom/android/server/AlarmManagerService$Batch;->hasPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 3361
    return v3

    .line 3358
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3364
    :cond_1d
    move v1, v0

    :goto_1e
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 3365
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3366
    invoke-virtual {v2, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 3367
    return v3

    .line 3364
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 3370
    :cond_38
    return v0
.end method

.method public onBootPhase(I)V
    .registers 5

    .line 1590
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_61

    .line 1591
    iget-object p1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1592
    :try_start_7
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$Constants;->start(Landroid/content/ContentResolver;)V

    .line 1593
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 1594
    const-class v0, Lcom/android/server/DeviceIdleController$LocalService;

    .line 1595
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleController$LocalService;

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    .line 1596
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1597
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 1598
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    new-instance v1, Lcom/android/server/AlarmManagerService$AppStandbyTracker;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/AlarmManagerService$AppStandbyTracker;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$1;)V

    invoke-virtual {v0, v1}, Landroid/app/usage/UsageStatsManagerInternal;->addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    .line 1600
    const-class v0, Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppStateTracker;

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 1601
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mForceAppStandbyListener:Lcom/android/server/AppStateTracker$Listener;

    invoke-virtual {v0, v1}, Lcom/android/server/AppStateTracker;->addListener(Lcom/android/server/AppStateTracker$Listener;)V

    .line 1603
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 1604
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 1605
    monitor-exit p1

    goto :goto_61

    :catchall_5e
    move-exception v0

    monitor-exit p1
    :try_end_60
    .catchall {:try_start_7 .. :try_end_60} :catchall_5e

    throw v0

    .line 1607
    :cond_61
    :goto_61
    return-void
.end method

.method public onStart()V
    .registers 8

    .line 1496
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->init()V

    .line 1498
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1499
    :try_start_8
    new-instance v1, Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-direct {v1, p0}, Lcom/android/server/AlarmManagerService$AlarmHandler;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    .line 1500
    new-instance v1, Lcom/android/server/AlarmManagerService$Constants;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/AlarmManagerService$Constants;-><init>(Lcom/android/server/AlarmManagerService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    .line 1501
    new-instance v1, Lcom/android/server/AlarmManagerService$AppWakeupHistory;

    const-wide/32 v2, 0x36ee80

    invoke-direct {v1, v2, v3}, Lcom/android/server/AlarmManagerService$AppWakeupHistory;-><init>(J)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/AlarmManagerService$AppWakeupHistory;

    .line 1503
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    .line 1507
    const-string/jumbo v1, "persist.sys.timezone"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/AlarmManagerService;->setTimeZoneImpl(Ljava/lang/String;)V

    .line 1512
    const-wide/16 v1, 0x3e8

    const-string/jumbo v3, "ro.build.date.utc"

    const-wide/16 v4, -0x1

    .line 1513
    invoke-static {v3, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    mul-long/2addr v3, v1

    .line 1514
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    sget-wide v5, Landroid/os/Build;->TIME:J

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v1

    .line 1512
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v1

    .line 1515
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-gez v3, :cond_83

    .line 1516
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current time only "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v5}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", advancing to build time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/AlarmManagerService$Injector;->setKernelTime(J)V

    .line 1522
    :cond_83
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Injector;->getSystemUiUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mSystemUiUid:I

    .line 1523
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mSystemUiUid:I

    if-gtz v1, :cond_96

    .line 1524
    const-string v1, "AlarmManager"

    const-string v2, "SysUI package not found!"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    :cond_96
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Injector;->getAlarmWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1528
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.TIME_TICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x50200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mTimeTickIntent:Landroid/content/Intent;

    .line 1533
    new-instance v1, Lcom/android/server/AlarmManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/AlarmManagerService$2;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    .line 1558
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1559
    const/high16 v2, 0x20200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1561
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x4000000

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {v2, v3, v1, v4, v5}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    .line 1564
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v1, p0}, Lcom/android/server/AlarmManagerService$Injector;->getClockReceiver(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ClockReceiver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    .line 1565
    new-instance v1, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 1566
    new-instance v1, Lcom/android/server/AlarmManagerService$UninstallReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/AlarmManagerService$UninstallReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 1568
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Injector;->isAlarmDriverPresent()Z

    move-result v1

    if-eqz v1, :cond_f2

    .line 1569
    new-instance v1, Lcom/android/server/AlarmManagerService$AlarmThread;

    invoke-direct {v1, p0}, Lcom/android/server/AlarmManagerService$AlarmThread;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 1570
    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$AlarmThread;->start()V

    .line 1571
    goto :goto_f9

    .line 1572
    :cond_f2
    const-string v1, "AlarmManager"

    const-string v2, "Failed to open alarm driver. Falling back to a handler."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f9
    .catchall {:try_start_8 .. :try_end_f9} :catchall_11e

    .line 1576
    :goto_f9
    const/4 v1, 0x0

    :try_start_fa
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    new-instance v3, Lcom/android/server/AlarmManagerService$UidObserver;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$UidObserver;-><init>(Lcom/android/server/AlarmManagerService;)V

    const/16 v4, 0xe

    const/4 v5, -0x1

    invoke-interface {v2, v3, v4, v5, v1}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_109
    .catch Landroid/os/RemoteException; {:try_start_fa .. :try_end_109} :catch_10a
    .catchall {:try_start_fa .. :try_end_109} :catchall_11e

    .line 1582
    goto :goto_10b

    .line 1580
    :catch_10a
    move-exception v2

    .line 1583
    :goto_10b
    :try_start_10b
    monitor-exit v0
    :try_end_10c
    .catchall {:try_start_10b .. :try_end_10c} :catchall_11e

    .line 1584
    const-class v0, Lcom/android/server/AlarmManagerInternal;

    new-instance v2, Lcom/android/server/AlarmManagerService$LocalService;

    invoke-direct {v2, p0, v1}, Lcom/android/server/AlarmManagerService$LocalService;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$1;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/AlarmManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1585
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mService:Landroid/os/IBinder;

    const-string v1, "alarm"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/AlarmManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1586
    return-void

    .line 1583
    :catchall_11e
    move-exception v1

    :try_start_11f
    monitor-exit v0
    :try_end_120
    .catchall {:try_start_11f .. :try_end_120} :catchall_11e

    throw v1
.end method

.method reAddAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V
    .registers 14

    .line 1127
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1128
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v0

    .line 1130
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_16

    .line 1132
    move-wide p2, v0

    goto :goto_2d

    .line 1137
    :cond_16
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_24

    .line 1138
    iget-wide p2, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    add-long/2addr p2, v0

    invoke-static {p2, p3}, Lcom/android/server/AlarmManagerService;->clampPositive(J)J

    move-result-wide p2

    goto :goto_2c

    .line 1139
    :cond_24
    iget-wide v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide v3, p2

    move-wide v5, v0

    invoke-static/range {v3 .. v8}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide p2

    :goto_2c
    nop

    .line 1141
    :goto_2d
    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    .line 1142
    iput-wide p2, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide p2, p1, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    .line 1143
    const/4 p2, 0x1

    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/AlarmManagerService;->setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    .line 1144
    return-void
.end method

.method rebatchAllAlarms()V
    .registers 3

    .line 1039
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1040
    const/4 v1, 0x1

    :try_start_4
    invoke-virtual {p0, v1}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 1041
    monitor-exit v0

    .line 1042
    return-void

    .line 1041
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw v1
.end method

.method rebatchAllAlarmsLocked(Z)V
    .registers 18

    .line 1045
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v1}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v1

    .line 1046
    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    .line 1047
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->getAlarmCount(Ljava/util/ArrayList;)I

    move-result v3

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1048
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Lcom/android/server/AlarmManagerService;->haveBatchesTimeTickAlarm(Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_28

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 1049
    invoke-virtual {v0, v4}, Lcom/android/server/AlarmManagerService;->haveAlarmsTimeTickAlarm(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_26

    goto :goto_28

    :cond_26
    const/4 v4, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    const/4 v4, 0x1

    .line 1051
    :goto_29
    iget-object v7, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 1052
    iget-object v8, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1053
    iget-object v8, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 1054
    iget-object v9, v0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v9}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v9

    .line 1055
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1056
    const/4 v12, 0x0

    :goto_43
    if-ge v12, v11, :cond_63

    .line 1057
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AlarmManagerService$Batch;

    .line 1058
    invoke-virtual {v13}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v14

    .line 1059
    const/4 v15, 0x0

    :goto_50
    if-ge v15, v14, :cond_5e

    .line 1060
    invoke-virtual {v13, v15}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v5

    move/from16 v6, p1

    invoke-virtual {v0, v5, v9, v10, v6}, Lcom/android/server/AlarmManagerService;->reAddAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V

    .line 1059
    add-int/lit8 v15, v15, 0x1

    goto :goto_50

    .line 1056
    :cond_5e
    move/from16 v6, p1

    add-int/lit8 v12, v12, 0x1

    goto :goto_43

    .line 1063
    :cond_63
    const-string v5, " to "

    const-string v6, "AlarmManager"

    if-eqz v8, :cond_90

    iget-object v7, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eq v8, v7, :cond_90

    .line 1064
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Rebatching: idle until changed from "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    iget-object v7, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-nez v7, :cond_90

    .line 1068
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->restorePendingWhileIdleAlarmsLocked()V

    .line 1071
    :cond_90
    iget-object v7, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    .line 1072
    invoke-static {v7}, Lcom/android/server/AlarmManagerService;->getAlarmCount(Ljava/util/ArrayList;)I

    move-result v7

    iget-object v8, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v8

    add-int/2addr v7, v8

    .line 1073
    iget-object v8, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Lcom/android/server/AlarmManagerService;->haveBatchesTimeTickAlarm(Ljava/util/ArrayList;)Z

    move-result v8

    if-nez v8, :cond_b0

    iget-object v8, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 1074
    invoke-virtual {v0, v8}, Lcom/android/server/AlarmManagerService;->haveAlarmsTimeTickAlarm(Ljava/util/ArrayList;)Z

    move-result v8

    if-eqz v8, :cond_ae

    goto :goto_b0

    :cond_ae
    const/4 v8, 0x0

    goto :goto_b1

    :cond_b0
    :goto_b0
    const/4 v8, 0x1

    .line 1076
    :goto_b1
    if-eq v3, v7, :cond_cd

    .line 1077
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Rebatching: total count changed from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :cond_cd
    if-eq v4, v8, :cond_e9

    .line 1080
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rebatching: hasTick changed from "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    :cond_e9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1084
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 1085
    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 1086
    return-void
.end method

.method recordWakeupAlarms(Ljava/util/ArrayList;JJ)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;JJ)V"
        }
    .end annotation

    .line 3756
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3757
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_35

    .line 3758
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Batch;

    .line 3759
    iget-wide v4, v3, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v4, v4, p2

    if-lez v4, :cond_15

    .line 3760
    goto :goto_35

    .line 3763
    :cond_15
    iget-object v4, v3, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3764
    move v5, v1

    :goto_1c
    if-ge v5, v4, :cond_32

    .line 3765
    iget-object v6, v3, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3766
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    invoke-virtual {v6, p4, p5}, Lcom/android/server/AlarmManagerService$Alarm;->makeWakeupEvent(J)Lcom/android/server/AlarmManagerService$WakeupEvent;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3764
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 3757
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 3769
    :cond_35
    :goto_35
    return-void
.end method

.method removeForStoppedLocked(I)V
    .registers 9

    .line 3230
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_5

    .line 3232
    return-void

    .line 3234
    :cond_5
    nop

    .line 3235
    new-instance v0, Lcom/android/server/-$$Lambda$AlarmManagerService$lzZOWJB2te9UTLsLWoZ6M8xouQQ;

    invoke-direct {v0, p1}, Lcom/android/server/-$$Lambda$AlarmManagerService$lzZOWJB2te9UTLsLWoZ6M8xouQQ;-><init>(I)V

    .line 3244
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    if-ltz v1, :cond_32

    .line 3245
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Batch;

    .line 3246
    invoke-virtual {v5, v0, v3}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/util/function/Predicate;Z)Z

    move-result v6

    or-int/2addr v4, v6

    .line 3247
    invoke-virtual {v5}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v5

    if-nez v5, :cond_2f

    .line 3248
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3244
    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 3251
    :cond_32
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_39
    if-ltz v0, :cond_52

    .line 3252
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3253
    iget v1, v1, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v1, p1, :cond_4f

    .line 3255
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3256
    invoke-direct {p0, p1, v2}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3251
    :cond_4f
    add-int/lit8 v0, v0, -0x1

    goto :goto_39

    .line 3259
    :cond_52
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_59
    if-ltz v0, :cond_7c

    .line 3260
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    if-ne v1, p1, :cond_79

    .line 3261
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3262
    if-eqz v1, :cond_74

    .line 3263
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3265
    :cond_74
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3259
    :cond_79
    add-int/lit8 v0, v0, -0x1

    goto :goto_59

    .line 3268
    :cond_7c
    if-eqz v4, :cond_87

    .line 3272
    invoke-virtual {p0, v2}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 3273
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 3274
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 3276
    :cond_87
    return-void
.end method

.method removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .registers 4

    .line 1684
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1685
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 1686
    monitor-exit v0

    .line 1687
    return-void

    .line 1686
    :catchall_8
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method removeLocked(I)V
    .registers 9

    .line 3108
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_5

    .line 3110
    return-void

    .line 3112
    :cond_5
    nop

    .line 3113
    new-instance v0, Lcom/android/server/-$$Lambda$AlarmManagerService$qehVSjTLWvtJYPGgKh2mkJ6ePnk;

    invoke-direct {v0, p1}, Lcom/android/server/-$$Lambda$AlarmManagerService$qehVSjTLWvtJYPGgKh2mkJ6ePnk;-><init>(I)V

    .line 3114
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    if-ltz v1, :cond_32

    .line 3115
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Batch;

    .line 3116
    invoke-virtual {v5, v0, v3}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/util/function/Predicate;Z)Z

    move-result v6

    or-int/2addr v4, v6

    .line 3117
    invoke-virtual {v5}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v5

    if-nez v5, :cond_2f

    .line 3118
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3114
    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 3121
    :cond_32
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_39
    if-ltz v0, :cond_52

    .line 3122
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3123
    iget v1, v1, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v1, p1, :cond_4f

    .line 3125
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3126
    invoke-direct {p0, p1, v2}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3121
    :cond_4f
    add-int/lit8 v0, v0, -0x1

    goto :goto_39

    .line 3129
    :cond_52
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_59
    if-ltz v0, :cond_8b

    .line 3130
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3131
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_68
    if-ltz v3, :cond_7d

    .line 3132
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Alarm;

    iget v5, v5, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v5, p1, :cond_7a

    .line 3133
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3134
    invoke-direct {p0, p1, v2}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3131
    :cond_7a
    add-int/lit8 v3, v3, -0x1

    goto :goto_68

    .line 3137
    :cond_7d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_88

    .line 3138
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3129
    :cond_88
    add-int/lit8 v0, v0, -0x1

    goto :goto_59

    .line 3143
    :cond_8b
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    const/4 v1, 0x0

    if-eqz v0, :cond_96

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v0, p1, :cond_96

    .line 3144
    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 3146
    :cond_96
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v0, :cond_bb

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v0, p1, :cond_bb

    .line 3148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed app uid "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " set idle-until alarm!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AlarmManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3149
    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 3151
    :cond_bb
    if-eqz v4, :cond_c6

    .line 3155
    invoke-virtual {p0, v2}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 3156
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 3157
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 3159
    :cond_c6
    return-void
.end method

.method removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .registers 11

    .line 3048
    if-nez p1, :cond_5

    if-nez p2, :cond_5

    .line 3053
    return-void

    .line 3056
    :cond_5
    nop

    .line 3057
    new-instance v0, Lcom/android/server/-$$Lambda$AlarmManagerService$ZVedZIeWdB3G6AGM0_-9P_GEO24;

    invoke-direct {v0, p1, p2}, Lcom/android/server/-$$Lambda$AlarmManagerService$ZVedZIeWdB3G6AGM0_-9P_GEO24;-><init>(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 3058
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    if-ltz v1, :cond_32

    .line 3059
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Batch;

    .line 3060
    invoke-virtual {v5, v0, v3}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/util/function/Predicate;Z)Z

    move-result v6

    or-int/2addr v4, v6

    .line 3061
    invoke-virtual {v5}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v5

    if-nez v5, :cond_2f

    .line 3062
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3058
    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 3065
    :cond_32
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_39
    if-ltz v0, :cond_56

    .line 3066
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3067
    invoke-virtual {v1, p1, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 3069
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3070
    iget v1, v1, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3065
    :cond_53
    add-int/lit8 v0, v0, -0x1

    goto :goto_39

    .line 3073
    :cond_56
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_5d
    if-ltz v0, :cond_93

    .line 3074
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3075
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_6c
    if-ltz v5, :cond_85

    .line 3076
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3077
    invoke-virtual {v6, p1, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v7

    if-eqz v7, :cond_82

    .line 3079
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3080
    iget v6, v6, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {p0, v6, v2}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3075
    :cond_82
    add-int/lit8 v5, v5, -0x1

    goto :goto_6c

    .line 3083
    :cond_85
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_90

    .line 3084
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3073
    :cond_90
    add-int/lit8 v0, v0, -0x1

    goto :goto_5d

    .line 3087
    :cond_93
    if-eqz v4, :cond_bb

    .line 3091
    nop

    .line 3092
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    const/4 v1, 0x0

    if-eqz v0, :cond_a4

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 3093
    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 3094
    move v3, v2

    .line 3096
    :cond_a4
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v0, :cond_b0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result p1

    if-eqz p1, :cond_b0

    .line 3097
    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 3099
    :cond_b0
    invoke-virtual {p0, v2}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 3100
    if-eqz v3, :cond_b8

    .line 3101
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->restorePendingWhileIdleAlarmsLocked()V

    .line 3103
    :cond_b8
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 3105
    :cond_bb
    return-void
.end method

.method removeLocked(Ljava/lang/String;)V
    .registers 11

    .line 3162
    if-nez p1, :cond_3

    .line 3167
    return-void

    .line 3170
    :cond_3
    nop

    .line 3171
    new-instance v0, Landroid/util/MutableBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 3172
    new-instance v2, Lcom/android/server/-$$Lambda$AlarmManagerService$Kswc8z2_RnUW_V0bP_uNErDNN_4;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/-$$Lambda$AlarmManagerService$Kswc8z2_RnUW_V0bP_uNErDNN_4;-><init>(Lcom/android/server/AlarmManagerService;Ljava/lang/String;Landroid/util/MutableBoolean;)V

    .line 3179
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->haveBatchesTimeTickAlarm(Ljava/util/ArrayList;)Z

    move-result v3

    .line 3180
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move v6, v1

    :goto_1e
    if-ltz v4, :cond_3b

    .line 3181
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerService$Batch;

    .line 3182
    invoke-virtual {v7, v2, v1}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/util/function/Predicate;Z)Z

    move-result v8

    or-int/2addr v6, v8

    .line 3183
    invoke-virtual {v7}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v7

    if-nez v7, :cond_38

    .line 3184
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3180
    :cond_38
    add-int/lit8 v4, v4, -0x1

    goto :goto_1e

    .line 3187
    :cond_3b
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/android/server/AlarmManagerService;->haveBatchesTimeTickAlarm(Ljava/util/ArrayList;)Z

    move-result v1

    .line 3188
    if-eq v3, v1, :cond_62

    .line 3189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeLocked: hasTick changed from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlarmManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3192
    :cond_62
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v5

    :goto_69
    if-ltz v1, :cond_86

    .line 3193
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3194
    invoke-virtual {v2, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 3196
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3197
    iget v2, v2, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {p0, v2, v5}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3192
    :cond_83
    add-int/lit8 v1, v1, -0x1

    goto :goto_69

    .line 3200
    :cond_86
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v5

    :goto_8d
    if-ltz v1, :cond_c3

    .line 3201
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 3202
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v5

    :goto_9c
    if-ltz v3, :cond_b5

    .line 3203
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3204
    invoke-virtual {v4, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b2

    .line 3205
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3206
    iget v4, v4, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {p0, v4, v5}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3202
    :cond_b2
    add-int/lit8 v3, v3, -0x1

    goto :goto_9c

    .line 3209
    :cond_b5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_c0

    .line 3210
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3200
    :cond_c0
    add-int/lit8 v1, v1, -0x1

    goto :goto_8d

    .line 3215
    :cond_c3
    iget-boolean p1, v0, Landroid/util/MutableBoolean;->value:Z

    if-eqz p1, :cond_ca

    .line 3216
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 3218
    :cond_ca
    if-eqz v6, :cond_d5

    .line 3222
    invoke-virtual {p0, v5}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 3223
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 3224
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 3226
    :cond_d5
    return-void
.end method

.method removeUserLocked(I)V
    .registers 9

    .line 3279
    if-nez p1, :cond_3

    .line 3281
    return-void

    .line 3283
    :cond_3
    nop

    .line 3284
    new-instance v0, Lcom/android/server/-$$Lambda$AlarmManagerService$nhEd_CDoc7mzdNLRwGUhwl9TaGk;

    invoke-direct {v0, p1}, Lcom/android/server/-$$Lambda$AlarmManagerService$nhEd_CDoc7mzdNLRwGUhwl9TaGk;-><init>(I)V

    .line 3286
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_13
    if-ltz v1, :cond_30

    .line 3287
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Batch;

    .line 3288
    invoke-virtual {v5, v0, v3}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/util/function/Predicate;Z)Z

    move-result v6

    or-int/2addr v4, v6

    .line 3289
    invoke-virtual {v5}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v5

    if-nez v5, :cond_2d

    .line 3290
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3286
    :cond_2d
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 3293
    :cond_30
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_37
    if-ltz v0, :cond_59

    .line 3294
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    iget v1, v1, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_56

    .line 3297
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3298
    iget v1, v1, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3293
    :cond_56
    add-int/lit8 v0, v0, -0x1

    goto :goto_37

    .line 3301
    :cond_59
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_60
    if-ltz v0, :cond_95

    .line 3302
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_92

    .line 3303
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3304
    if-eqz v1, :cond_8d

    .line 3305
    move v5, v3

    :goto_79
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_8d

    .line 3306
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    iget v6, v6, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {p0, v6, v2}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3305
    add-int/lit8 v5, v5, 0x1

    goto :goto_79

    .line 3309
    :cond_8d
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3301
    :cond_92
    add-int/lit8 v0, v0, -0x1

    goto :goto_60

    .line 3312
    :cond_95
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_9c
    if-ltz v0, :cond_b2

    .line 3313
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_af

    .line 3314
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 3312
    :cond_af
    add-int/lit8 v0, v0, -0x1

    goto :goto_9c

    .line 3318
    :cond_b2
    if-eqz v4, :cond_bd

    .line 3322
    invoke-virtual {p0, v2}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 3323
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 3324
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 3326
    :cond_bd
    return-void
.end method

.method reorderAlarmsBasedOnStandbyBuckets(Landroid/util/ArraySet;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)Z"
        }
    .end annotation

    .line 1096
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v0

    .line 1097
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1099
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_13
    if-ltz v3, :cond_5e

    .line 1100
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Batch;

    .line 1101
    invoke-virtual {v5}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v6

    sub-int/2addr v6, v4

    :goto_22
    if-ltz v6, :cond_50

    .line 1102
    invoke-virtual {v5, v6}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v7

    .line 1103
    iget-object v8, v7, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    iget v9, v7, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    .line 1104
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    .line 1105
    if-eqz p1, :cond_41

    invoke-virtual {p1, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_41

    .line 1106
    goto :goto_4d

    .line 1108
    :cond_41
    invoke-direct {p0, v7}, Lcom/android/server/AlarmManagerService;->adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v8

    if-eqz v8, :cond_4d

    .line 1109
    invoke-virtual {v5, v7}, Lcom/android/server/AlarmManagerService$Batch;->remove(Lcom/android/server/AlarmManagerService$Alarm;)Z

    .line 1110
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1101
    :cond_4d
    :goto_4d
    add-int/lit8 v6, v6, -0x1

    goto :goto_22

    .line 1113
    :cond_50
    invoke-virtual {v5}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v5

    if-nez v5, :cond_5b

    .line 1114
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1099
    :cond_5b
    add-int/lit8 v3, v3, -0x1

    goto :goto_13

    .line 1117
    :cond_5e
    const/4 p1, 0x0

    move v3, p1

    :goto_60
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_72

    .line 1118
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1119
    invoke-direct {p0, v5}, Lcom/android/server/AlarmManagerService;->insertAndBatchAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 1117
    add-int/lit8 v3, v3, 0x1

    goto :goto_60

    .line 1122
    :cond_72
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 1123
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7e

    move p1, v4

    :cond_7e
    return p1
.end method

.method rescheduleKernelAlarmsLocked()V
    .registers 10

    .line 3021
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 3022
    nop

    .line 3023
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/16 v3, 0x0

    if-lez v2, :cond_31

    .line 3024
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->findFirstWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;

    move-result-object v2

    .line 3025
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Batch;

    .line 3026
    if-eqz v2, :cond_2c

    .line 3027
    iget-wide v6, v2, Lcom/android/server/AlarmManagerService$Batch;->start:J

    iput-wide v6, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    .line 3028
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNextWakeUpSetAt:J

    .line 3029
    const/4 v6, 0x2

    iget-wide v7, v2, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    .line 3031
    :cond_2c
    if-eq v5, v2, :cond_31

    .line 3032
    iget-wide v5, v5, Lcom/android/server/AlarmManagerService$Batch;->start:J

    goto :goto_32

    .line 3035
    :cond_31
    move-wide v5, v3

    :goto_32
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_46

    .line 3036
    cmp-long v2, v5, v3

    if-eqz v2, :cond_44

    iget-wide v7, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v2, v7, v5

    if-gez v2, :cond_46

    .line 3037
    :cond_44
    iget-wide v5, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 3040
    :cond_46
    cmp-long v2, v5, v3

    if-eqz v2, :cond_52

    .line 3041
    iput-wide v5, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    .line 3042
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeUpSetAt:J

    .line 3043
    const/4 v0, 0x3

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    .line 3045
    :cond_52
    return-void
.end method

.method restorePendingWhileIdleAlarmsLocked()V
    .registers 7

    .line 1293
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2c

    .line 1294
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 1295
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 1296
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v1

    .line 1297
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1d
    if-ltz v3, :cond_2c

    .line 1298
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1299
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v1, v2, v5}, Lcom/android/server/AlarmManagerService;->reAddAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V

    .line 1297
    add-int/lit8 v3, v3, -0x1

    goto :goto_1d

    .line 1304
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1305
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 1307
    return-void
.end method

.method sendAllUnrestrictedPendingBackgroundAlarmsLocked()V
    .registers 4

    .line 1195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1197
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/-$$Lambda$AlarmManagerService$nSJw2tKfoL3YIrKDtszoL44jcSM;

    invoke-direct {v2, p0}, Lcom/android/server/-$$Lambda$AlarmManagerService$nSJw2tKfoL3YIrKDtszoL44jcSM;-><init>(Lcom/android/server/AlarmManagerService;)V

    invoke-static {v1, v0, v2}, Lcom/android/server/AlarmManagerService;->findAllUnrestrictedPendingBackgroundAlarmsLockedInner(Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/util/function/Predicate;)V

    .line 1200
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1e

    .line 1201
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/AlarmManagerService;->deliverPendingBackgroundAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 1203
    :cond_1e
    return-void
.end method

.method sendPendingBackgroundAlarmsLocked(ILjava/lang/String;)V
    .registers 7

    .line 1158
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1159
    if-eqz v0, :cond_55

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_11

    goto :goto_55

    .line 1163
    :cond_11
    if-eqz p2, :cond_45

    .line 1167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1168
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1e
    if-ltz v2, :cond_38

    .line 1169
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1170
    invoke-virtual {v3, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1171
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1168
    :cond_35
    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    .line 1174
    :cond_38
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_43

    .line 1175
    iget-object p2, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1184
    :cond_43
    move-object v0, v1

    goto :goto_4b

    .line 1181
    :cond_45
    nop

    .line 1182
    iget-object p2, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1184
    :goto_4b
    iget-object p1, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide p1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/AlarmManagerService;->deliverPendingBackgroundAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 1185
    return-void

    .line 1160
    :cond_55
    :goto_55
    return-void
.end method

.method setImpl(IJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V
    .registers 39

    .line 1694
    move-object/from16 v0, p0

    move/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v15, p14

    if-nez p8, :cond_10

    if-eqz p9, :cond_14

    :cond_10
    if-eqz p8, :cond_1c

    if-eqz p9, :cond_1c

    .line 1696
    :cond_14
    const-string v0, "AlarmManager"

    const-string v1, "Alarms must either supply a PendingIntent or an AlarmReceiver"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    return-void

    .line 1704
    :cond_1c
    const-wide/32 v9, 0x2932e00

    cmp-long v1, v5, v9

    if-lez v1, :cond_42

    .line 1705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Window length "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms suspiciously long; limiting to 1 hour"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "AlarmManager"

    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    const-wide/32 v5, 0x36ee80

    .line 1713
    :cond_42
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v9, v1, Lcom/android/server/AlarmManagerService$Constants;->MIN_INTERVAL:J

    .line 1714
    const-wide/16 v11, 0x0

    cmp-long v1, v7, v11

    if-lez v1, :cond_79

    cmp-long v1, v7, v9

    if-gez v1, :cond_79

    .line 1715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Suspiciously short interval "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " millis; expanding to "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v7, 0x3e8

    div-long v7, v9, v7

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " seconds"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "AlarmManager"

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    move-wide v13, v9

    goto :goto_a3

    .line 1719
    :cond_79
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v9, v1, Lcom/android/server/AlarmManagerService$Constants;->MAX_INTERVAL:J

    cmp-long v1, v7, v9

    if-lez v1, :cond_a2

    .line 1720
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Suspiciously long interval "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " millis; clamping"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "AlarmManager"

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService$Constants;->MAX_INTERVAL:J

    move-wide v13, v7

    goto :goto_a3

    .line 1719
    :cond_a2
    move-wide v13, v7

    .line 1725
    :goto_a3
    if-ltz v2, :cond_179

    const/4 v1, 0x3

    if-gt v2, v1, :cond_179

    .line 1729
    cmp-long v1, v3, v11

    if-gez v1, :cond_d8

    .line 1730
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    int-to-long v7, v1

    .line 1731
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid alarm trigger time! "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " from uid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AlarmManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    move-wide v3, v11

    .line 1736
    :cond_d8
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v7

    .line 1737
    invoke-direct {v0, v3, v4, v2}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v9

    .line 1739
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v11, v1, Lcom/android/server/AlarmManagerService$Constants;->MIN_FUTURITY:J

    add-long/2addr v11, v7

    .line 1740
    cmp-long v1, v9, v11

    if-lez v1, :cond_ec

    goto :goto_ed

    :cond_ec
    move-wide v9, v11

    .line 1743
    :goto_ed
    const-wide/16 v11, 0x0

    cmp-long v1, v5, v11

    if-nez v1, :cond_f6

    .line 1744
    move-wide v7, v5

    move-wide v11, v9

    goto :goto_10a

    .line 1745
    :cond_f6
    if-gez v1, :cond_106

    .line 1746
    move-wide/from16 p2, v7

    move-wide/from16 p4, v9

    move-wide/from16 p6, v13

    invoke-static/range {p2 .. p7}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v5

    .line 1748
    sub-long v7, v5, v9

    move-wide v11, v5

    goto :goto_10a

    .line 1750
    :cond_106
    add-long v7, v9, v5

    move-wide v11, v7

    move-wide v7, v5

    .line 1752
    :goto_10a
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1759
    :try_start_10d
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    const/4 v6, 0x0

    invoke-virtual {v1, v15, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget v6, v6, Lcom/android/server/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I
    :try_end_118
    .catchall {:try_start_10d .. :try_end_118} :catchall_172

    if-ge v1, v6, :cond_13a

    .line 1767
    const/16 v17, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v22, v5

    move-wide v5, v9

    move-wide v9, v11

    move-wide v11, v13

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    move/from16 v16, p11

    move-object/from16 v18, p12

    move-object/from16 v19, p13

    move/from16 v20, p14

    move-object/from16 v21, p15

    :try_start_135
    invoke-direct/range {v1 .. v21}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    .line 1770
    monitor-exit v22

    .line 1771
    return-void

    .line 1760
    :cond_13a
    move-object/from16 v22, v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum limit of concurrent alarms "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget v0, v0, Lcom/android/server/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " reached for uid: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1762
    invoke-static/range {p14 .. p14}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", callingPackage: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p15

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1764
    const-string v1, "AlarmManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1770
    :catchall_172
    move-exception v0

    move-object/from16 v22, v5

    :goto_175
    monitor-exit v22
    :try_end_176
    .catchall {:try_start_135 .. :try_end_176} :catchall_177

    throw v0

    :catchall_177
    move-exception v0

    goto :goto_175

    .line 1726
    :cond_179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid alarm type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setTimeImpl(J)Z
    .registers 7

    .line 1619
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->isAlarmDriverPresent()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1620
    const-string p1, "AlarmManager"

    const-string p2, "Not setting time since no alarm driver is available."

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    const/4 p1, 0x0

    return p1

    .line 1624
    :cond_11
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1625
    :try_start_14
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v1

    .line 1626
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/AlarmManagerService$Injector;->setKernelTime(J)V

    .line 1627
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    .line 1628
    invoke-virtual {v3, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    .line 1629
    invoke-virtual {v3, p1, p2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    .line 1630
    if-eq v1, p1, :cond_3e

    .line 1631
    const-string p2, "AlarmManager"

    const-string v1, "Timezone offset has changed, updating kernel timezone"

    invoke-static {p2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    iget-object p2, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    const v1, 0xea60

    div-int/2addr p1, v1

    neg-int p1, p1

    invoke-virtual {p2, p1}, Lcom/android/server/AlarmManagerService$Injector;->setKernelTimezone(I)V

    .line 1637
    :cond_3e
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 1638
    :catchall_41
    move-exception p1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_14 .. :try_end_43} :catchall_41

    throw p1
.end method

.method setTimeZoneImpl(Ljava/lang/String;)V
    .registers 6

    .line 1642
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1643
    return-void

    .line 1646
    :cond_7
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    .line 1649
    const/4 v0, 0x0

    .line 1650
    monitor-enter p0

    .line 1651
    :try_start_d
    const-string/jumbo v1, "persist.sys.timezone"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1652
    if-eqz v1, :cond_20

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 1656
    :cond_20
    const/4 v0, 0x1

    .line 1657
    const-string/jumbo v1, "persist.sys.timezone"

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    :cond_2b
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    .line 1663
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    const v3, 0xea60

    div-int/2addr v1, v3

    neg-int v1, v1

    invoke-virtual {v2, v1}, Lcom/android/server/AlarmManagerService$Injector;->setKernelTimezone(I)V

    .line 1664
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_d .. :try_end_40} :catchall_6b

    .line 1666
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1668
    if-eqz v0, :cond_6a

    .line 1670
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 1673
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1674
    const/high16 v1, 0x25200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1678
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "time-zone"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1679
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1681
    :cond_6a
    return-void

    .line 1664
    :catchall_6b
    move-exception p1

    :try_start_6c
    monitor-exit p0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw p1
.end method

.method setWakelockWorkSource(Landroid/os/WorkSource;ILjava/lang/String;Z)V
    .registers 7

    .line 4115
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p4, :cond_6

    goto :goto_7

    :cond_6
    move-object p3, v0

    :goto_7
    invoke-virtual {v1, p3}, Landroid/os/PowerManager$WakeLock;->setHistoryTag(Ljava/lang/String;)V

    .line 4117
    if-eqz p1, :cond_12

    .line 4118
    iget-object p2, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 4119
    return-void

    .line 4122
    :cond_12
    if-ltz p2, :cond_1f

    .line 4123
    iget-object p1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance p3, Landroid/os/WorkSource;

    invoke-direct {p3, p2}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {p1, p3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_20

    .line 4124
    return-void

    .line 4127
    :cond_1f
    goto :goto_21

    .line 4126
    :catch_20
    move-exception p1

    .line 4130
    :goto_21
    iget-object p1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 4131
    return-void
.end method

.method triggerAlarmsLocked(Ljava/util/ArrayList;J)Z
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;J)Z"
        }
    .end annotation

    .line 3466
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    const/4 v14, 0x0

    move v1, v14

    .line 3470
    :goto_6
    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v12, 0x1

    if-lez v2, :cond_15d

    .line 3471
    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/android/server/AlarmManagerService$Batch;

    .line 3472
    iget-wide v2, v13, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v2, v2, p2

    if-lez v2, :cond_21

    .line 3474
    move v2, v12

    goto/16 :goto_15e

    .line 3479
    :cond_21
    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3481
    invoke-virtual {v13}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v10

    .line 3482
    move/from16 v21, v1

    move v11, v14

    :goto_2d
    if-ge v11, v10, :cond_155

    .line 3483
    invoke-virtual {v13, v11}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v8

    .line 3485
    iget v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v1, v1, 0x4

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_68

    .line 3488
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    iget v4, v8, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    const-wide/16 v5, -0x1

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v4

    .line 3489
    iget v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-direct {v0, v1}, Lcom/android/server/AlarmManagerService;->getWhileIdleMinIntervalLocked(I)J

    move-result-wide v6

    add-long/2addr v6, v4

    .line 3490
    cmp-long v1, v4, v2

    if-ltz v1, :cond_68

    cmp-long v1, p2, v6

    if-gez v1, :cond_68

    .line 3494
    iput-wide v6, v8, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v6, v8, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    .line 3495
    iget-wide v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v1, v1, v6

    if-gez v1, :cond_60

    .line 3496
    iput-wide v6, v8, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 3498
    :cond_60
    iget-wide v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    .line 3509
    invoke-direct {v0, v8, v12, v14}, Lcom/android/server/AlarmManagerService;->setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    .line 3510
    goto :goto_8a

    .line 3513
    :cond_68
    invoke-direct {v0, v8}, Lcom/android/server/AlarmManagerService;->isBackgroundRestricted(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 3518
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    iget v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3519
    if-nez v1, :cond_86

    .line 3520
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3521
    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    iget v3, v8, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3523
    :cond_86
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3524
    nop

    .line 3482
    :goto_8a
    move/from16 v22, v10

    move/from16 v23, v11

    move v2, v12

    move-object/from16 v24, v13

    move/from16 v25, v14

    goto/16 :goto_148

    .line 3527
    :cond_95
    iput v12, v8, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 3528
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3529
    iget v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_ac

    .line 3530
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v1, :cond_a6

    move v1, v12

    goto :goto_a7

    :cond_a6
    move v1, v14

    :goto_a7
    iget-object v4, v8, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/android/server/EventLogTags;->writeDeviceIdleWakeFromIdle(ILjava/lang/String;)V

    .line 3533
    :cond_ac
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    const/4 v4, 0x0

    if-ne v1, v8, :cond_b9

    .line 3534
    iput-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 3535
    invoke-virtual {v0, v14}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 3536
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->restorePendingWhileIdleAlarmsLocked()V

    .line 3538
    :cond_b9
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-ne v1, v8, :cond_c2

    .line 3539
    iput-object v4, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 3540
    invoke-virtual {v0, v14}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 3545
    :cond_c2
    iget-wide v4, v8, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_129

    .line 3548
    iget v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v1, v1

    iget-wide v3, v8, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    sub-long v3, p2, v3

    iget-wide v5, v8, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    div-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 3550
    iget v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v1, v1

    iget-wide v3, v8, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    mul-long v2, v1, v3

    .line 3551
    iget-wide v4, v8, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    add-long v16, v4, v2

    move-wide/from16 v4, v16

    .line 3552
    iget v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-wide v6, v8, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    add-long/2addr v2, v6

    iget-wide v6, v8, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    move-object/from16 v19, v13

    iget-wide v12, v8, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 3553
    move-object v14, v8

    move-wide/from16 v8, p2

    move/from16 v22, v10

    move/from16 v23, v11

    move-wide/from16 v10, v16

    move-object/from16 v24, v19

    invoke-static/range {v8 .. v13}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v8

    iget-wide v10, v14, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    iget-object v12, v14, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object v13, v14

    const/16 v25, 0x0

    move-object/from16 v14, v16

    iget v14, v13, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    move v15, v14

    const/16 v16, 0x1

    iget-object v14, v13, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move-object/from16 v17, v14

    iget-object v14, v13, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object/from16 v18, v14

    iget v14, v13, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    move/from16 v19, v14

    iget-object v14, v13, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    move-object/from16 v20, v14

    .line 3552
    move-object v14, v0

    move-object/from16 v0, p0

    move-object/from16 v26, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v20}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    goto :goto_133

    .line 3545
    :cond_129
    move-object/from16 v26, v8

    move/from16 v22, v10

    move/from16 v23, v11

    move-object/from16 v24, v13

    move/from16 v25, v14

    .line 3558
    :goto_133
    move-object/from16 v0, v26

    iget-boolean v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    if-eqz v1, :cond_13b

    .line 3559
    const/16 v21, 0x1

    .line 3563
    :cond_13b
    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v0, :cond_145

    .line 3564
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    goto :goto_148

    .line 3563
    :cond_145
    const/4 v2, 0x1

    move-object/from16 v0, p0

    .line 3482
    :goto_148
    add-int/lit8 v11, v23, 0x1

    move-object/from16 v15, p1

    move v12, v2

    move/from16 v10, v22

    move-object/from16 v13, v24

    move/from16 v14, v25

    goto/16 :goto_2d

    .line 3567
    :cond_155
    move/from16 v25, v14

    move-object/from16 v15, p1

    move/from16 v1, v21

    goto/16 :goto_6

    .line 3470
    :cond_15d
    move v2, v12

    .line 3571
    :goto_15e
    iget v3, v0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    .line 3572
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 3573
    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3581
    return v1
.end method
