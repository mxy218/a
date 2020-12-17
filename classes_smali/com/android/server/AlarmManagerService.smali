.class Lcom/android/server/AlarmManagerService;
.super Lcom/android/server/SystemService;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerService$ShutdownReceiver;,
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
.field private static final ACTION_CANCEL_POWEROFF_ALARM:Ljava/lang/String; = "org.codeaurora.poweroffalarm.action.CANCEL_ALARM"

.field private static final ACTION_SET_POWEROFF_ALARM:Ljava/lang/String; = "org.codeaurora.poweroffalarm.action.SET_ALARM"

.field static final ACTIVE_INDEX:I = 0x0

.field static final DEBUG_ALARM_CLOCK:Z = false

.field static final DEBUG_BATCH:Z = false

.field static final DEBUG_BG_LIMIT:Z = false

.field static final DEBUG_LISTENER_CALLBACK:Z = false

.field static final DEBUG_STANDBY:Z = false

.field static final DEBUG_VALIDATE:Z = false

.field static final DEBUG_WAKELOCK:Z = false

.field private static final DESKCLOCK_PACKAGE_NAME:Ljava/lang/String; = "com.android.deskclock"

.field private static final ELAPSED_REALTIME_MASK:I = 0x8

.field private static final ELAPSED_REALTIME_WAKEUP_MASK:I = 0x4

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field static final FREQUENT_INDEX:I = 0x2

.field static final IS_WAKEUP_MASK:I = 0x5

.field static final MILLIS_IN_DAY:J = 0x5265c00L

.field static final MIN_FUZZABLE_INTERVAL:J = 0x2710L

.field private static final MIN_NOW_TIME_VALUE:J = 0x320L

.field static final NEVER_INDEX:I = 0x4

.field private static final NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

.field static final PKG_NAME_ALARM_CLOCK:Ljava/lang/String; = "com.android.alarmclock"

.field static final PKG_NAME_MZTEST:Ljava/lang/String; = "com.meizu.scheduledpower"

.field static final PKG_NAME_SETTINGS:Ljava/lang/String; = "com.android.settings"

.field private static final POWER_OFF_ALARM_PACKAGE:Ljava/lang/String; = "com.qualcomm.qti.poweroffalarm"

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

.field private static final TIME:Ljava/lang/String; = "time"

.field static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"

.field static final TIME_CHANGED_MASK:I = 0x10000

.field static final TYPE_NONWAKEUP_MASK:I = 0x1

.field static final WAKEUP_STATS:Z = false

.field static final WORKING_INDEX:I = 0x1

.field static final localLOGV:Z

.field private static mNextRtcWakeup:J

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

.field mAlarmOptimize:Lcom/android/server/AlarmOptimizeStrategy;

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

.field private mIPOShutdown:Z

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

.field mIsEncryptStatus:Z

.field mIsPowerOffAlarmSet:Z

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

.field mOperationCancelListener:Landroid/app/PendingIntent$CancelListener;

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

.field private mPowerOffAlarmLock:Ljava/lang/Object;

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

.field private mShutdownReceiver:Lcom/android/server/AlarmManagerService$ShutdownReceiver;

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

.field private mWaitThreadlock:Ljava/lang/Object;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field powerOffAlarmTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 182
    new-instance v0, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerService;->sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    .line 186
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    const/high16 v1, 0x21000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/server/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 973
    new-instance v0, Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$BatchTimeOrder;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerService;->sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"  # Landroid/content/Context;

    .line 989
    new-instance v0, Lcom/android/server/AlarmManagerService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/AlarmManagerService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;Lcom/android/server/AlarmManagerService$Injector;)V

    .line 990
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/AlarmManagerService$Injector;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "injector"  # Lcom/android/server/AlarmManagerService$Injector;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 984
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 180
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 181
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    .line 191
    new-instance v0, Lcom/android/internal/util/LocalLog;

    const-string v1, "AlarmManager"

    invoke-direct {v0, v1}, Lcom/android/internal/util/LocalLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    .line 202
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 205
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    .line 219
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mTickHistory:[J

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 225
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    .line 226
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 227
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    .line 228
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    .line 233
    new-instance v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;

    invoke-direct {v1, p0}, Lcom/android/server/AlarmManagerService$DeliveryTracker;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/AlarmManagerService$DeliveryTracker;

    .line 239
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    .line 268
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    .line 274
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    .line 284
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mAllowWhileIdleDispatches:Ljava/util/ArrayList;

    .line 291
    new-instance v1, Lcom/android/internal/util/StatLogger;

    const-string v2, "REBATCH_ALL_ALARMS"

    const-string v3, "REORDER_ALARMS_FOR_STANDBY"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/util/StatLogger;-><init>([Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 301
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    .line 303
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 305
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 314
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 699
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    .line 700
    iput v0, p0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    .line 714
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    .line 715
    const-wide/32 v1, 0x5265c00

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService;->RECENT_WAKEUP_PERIOD:J

    .line 911
    new-instance v1, Lcom/android/server/AlarmManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/AlarmManagerService$1;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    .line 974
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    .line 978
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 979
    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 980
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 1368
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mWaitThreadlock:Ljava/lang/Object;

    .line 1369
    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z

    .line 1370
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    .line 1552
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    .line 1555
    iput v0, p0, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    .line 1556
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 1557
    iput-wide v1, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 1559
    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mIsEncryptStatus:Z

    .line 1560
    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mIsPowerOffAlarmSet:Z

    .line 2154
    new-instance v3, Lcom/android/server/AlarmManagerService$3;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$3;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mService:Landroid/os/IBinder;

    .line 4716
    new-instance v3, Lcom/android/server/AlarmManagerService$6;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$6;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mForceAppStandbyListener:Lcom/android/server/AppStateTracker$Listener;

    .line 4776
    iput v0, p0, Lcom/android/server/AlarmManagerService;->mSendCount:I

    .line 4778
    iput v0, p0, Lcom/android/server/AlarmManagerService;->mSendFinishCount:I

    .line 4780
    iput v0, p0, Lcom/android/server/AlarmManagerService;->mListenerCount:I

    .line 4782
    iput v0, p0, Lcom/android/server/AlarmManagerService;->mListenerFinishCount:I

    .line 5204
    iput-wide v1, p0, Lcom/android/server/AlarmManagerService;->powerOffAlarmTime:J

    .line 985
    iput-object p2, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    .line 986
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/AlarmManagerService;J)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"  # J

    .line 141
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastTickAdded:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$Injector;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/AlarmManagerService;

    .line 141
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/AlarmManagerService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/AlarmManagerService;

    .line 141
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->isIdlingImpl()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/AlarmManagerService;

    .line 141
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AppStateTracker;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/AlarmManagerService;

    .line 141
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;Landroid/app/IAlarmListener;Z)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"  # Landroid/app/PendingIntent;
    .param p2, "x2"  # Landroid/app/IAlarmListener;
    .param p3, "x3"  # Z

    .line 141
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;Z)V

    return-void
.end method

.method static synthetic access$1500()J
    .registers 2

    .line 141
    invoke-static {}, Lcom/android/server/AlarmManagerService;->init()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1600(J)I
    .registers 3
    .param p0, "x0"  # J

    .line 141
    invoke-static {p0, p1}, Lcom/android/server/AlarmManagerService;->waitForAlarm(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700()J
    .registers 2

    .line 141
    sget-wide v0, Lcom/android/server/AlarmManagerService;->mNextRtcWakeup:J

    return-wide v0
.end method

.method static synthetic access$1800(JIJJ)I
    .registers 8
    .param p0, "x0"  # J
    .param p2, "x1"  # I
    .param p3, "x2"  # J
    .param p5, "x3"  # J

    .line 141
    invoke-static/range {p0 .. p6}, Lcom/android/server/AlarmManagerService;->set(JIJJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(JI)J
    .registers 5
    .param p0, "x0"  # J
    .param p2, "x1"  # I

    .line 141
    invoke-static {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->getNextAlarm(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/server/AlarmManagerService;II)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # I

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    return-void
.end method

.method static synthetic access$2000(JI)I
    .registers 4
    .param p0, "x0"  # J
    .param p2, "x1"  # I

    .line 141
    invoke-static {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(JI)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(JJ)I
    .registers 5
    .param p0, "x0"  # J
    .param p2, "x1"  # J

    .line 141
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/AlarmManagerService;->setKernelTime(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(J)V
    .registers 2
    .param p0, "x0"  # J

    .line 141
    invoke-static {p0, p1}, Lcom/android/server/AlarmManagerService;->close(J)V

    return-void
.end method

.method static synthetic access$2300(JJ)I
    .registers 5
    .param p0, "x0"  # J
    .param p2, "x1"  # J

    .line 141
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/AlarmManagerService;->setPowerOffAlarm(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(J)I
    .registers 3
    .param p0, "x0"  # J

    .line 141
    invoke-static {p0, p1}, Lcom/android/server/AlarmManagerService;->cancelPowerOffAlarm(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/AlarmManagerService;J)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"  # J

    .line 141
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastWakeup:J

    return-wide p1
.end method

.method static synthetic access$2602(Lcom/android/server/AlarmManagerService;J)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"  # J

    .line 141
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastTrigger:J

    return-wide p1
.end method

.method static synthetic access$2700(Lcom/android/server/AlarmManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/AlarmManagerService;

    .line 141
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"  # Lcom/android/server/AlarmManagerService$Alarm;

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->isExemptFromAppStandby(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/AlarmManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/AlarmManagerService;

    .line 141
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->sendNextAlarmClockChanged()V

    return-void
.end method

.method static synthetic access$3002(Lcom/android/server/AlarmManagerService;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"  # Z

    .line 141
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mAppStandbyParole:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/server/AlarmManagerService;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"  # Z

    .line 141
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    return p1
.end method

.method static synthetic access$3102(Lcom/android/server/AlarmManagerService;J)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"  # J

    .line 141
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastTickSet:J

    return-wide p1
.end method

.method static synthetic access$3200(Lcom/android/server/AlarmManagerService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"  # I

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->notifyBroadcastAlarmCompleteLocked(I)V

    return-void
.end method

.method static synthetic access$3308(Lcom/android/server/AlarmManagerService;)I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/AlarmManagerService;

    .line 141
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mListenerFinishCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mListenerFinishCount:I

    return v0
.end method

.method static synthetic access$3408(Lcom/android/server/AlarmManagerService;)I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/AlarmManagerService;

    .line 141
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mSendFinishCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mSendFinishCount:I

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/AlarmManagerService$Alarm;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/AlarmManagerService$Alarm;

    .line 141
    invoke-static {p0}, Lcom/android/server/AlarmManagerService;->getAlarmAttributionUid(Lcom/android/server/AlarmManagerService$Alarm;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3608(Lcom/android/server/AlarmManagerService;)I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/AlarmManagerService;

    .line 141
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mSendCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mSendCount:I

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/AlarmManagerService;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/AlarmManagerService;

    .line 141
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$3808(Lcom/android/server/AlarmManagerService;)I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/AlarmManagerService;

    .line 141
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mListenerCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mListenerCount:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/AlarmManagerService;)[J
    .registers 2
    .param p0, "x0"  # Lcom/android/server/AlarmManagerService;

    .line 141
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mTickHistory:[J

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/AlarmManagerService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/AlarmManagerService;

    .line 141
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mNextTickHistory:I

    return v0
.end method

.method static synthetic access$4002(Lcom/android/server/AlarmManagerService;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"  # I

    .line 141
    iput p1, p0, Lcom/android/server/AlarmManagerService;->mNextTickHistory:I

    return p1
.end method

.method static synthetic access$4008(Lcom/android/server/AlarmManagerService;)I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/AlarmManagerService;

    .line 141
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mNextTickHistory:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mNextTickHistory:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/AlarmManagerService;J)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"  # J

    .line 141
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastTickRemoved:J

    return-wide p1
.end method

.method static synthetic access$4100(Lcom/android/server/AlarmManagerService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"  # I

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->notifyBroadcastAlarmPendingLocked(I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/AlarmManagerService;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/AlarmManagerService;

    .line 141
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mService:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/AlarmManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/AlarmManagerService;

    .line 141
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->reschedulePowerOffAlarmsLocked()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"  # Landroid/app/PendingIntent;

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/AlarmManagerService;ILjava/lang/String;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .registers 4
    .param p0, "x0"  # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Ljava/lang/String;

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->getStatsLocked(ILjava/lang/String;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/AlarmManagerService;J)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"  # J

    .line 141
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastTickReceived:J

    return-wide p1
.end method

.method static addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z
    .registers 6
    .param p1, "newBatch"  # Lcom/android/server/AlarmManagerService$Batch;
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

    .line 1019
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    sget-object v0, Lcom/android/server/AlarmManagerService;->sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    invoke-static {p0, p1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 1020
    .local v0, "index":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_e

    .line 1021
    rsub-int/lit8 v3, v0, 0x0

    add-int/lit8 v0, v3, -0x1

    .line 1023
    :cond_e
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1024
    if-nez v0, :cond_14

    goto :goto_15

    :cond_14
    move v1, v2

    :goto_15
    return v1
.end method

.method private adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 23
    .param p1, "alarm"  # Lcom/android/server/AlarmManagerService$Alarm;

    .line 1945
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Lcom/android/server/AlarmManagerService;->isExemptFromAppStandby(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    .line 1946
    return v3

    .line 1948
    :cond_c
    iget-boolean v2, v0, Lcom/android/server/AlarmManagerService;->mAppStandbyParole:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_23

    .line 1949
    iget-wide v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    cmp-long v2, v5, v7

    if-lez v2, :cond_22

    .line 1951
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    iput-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 1952
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    iput-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 1953
    return v4

    .line 1955
    :cond_22
    return v3

    .line 1957
    :cond_23
    iget-wide v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 1958
    .local v5, "oldWhenElapsed":J
    iget-wide v7, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 1960
    .local v7, "oldMaxWhenElapsed":J
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    .line 1961
    .local v2, "sourcePackage":Ljava/lang/String;
    iget v9, v1, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 1962
    .local v9, "sourceUserId":I
    iget-object v10, v0, Lcom/android/server/AlarmManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v11, v0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    .line 1963
    invoke-virtual {v11}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v11

    .line 1962
    invoke-virtual {v10, v2, v9, v11, v12}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result v10

    .line 1965
    .local v10, "standbyBucket":I
    iget-object v11, v0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-boolean v11, v11, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS_ENABLED:Z

    if-eqz v11, :cond_8a

    .line 1967
    iget-object v11, v0, Lcom/android/server/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v11, v2, v9}, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->getTotalWakeupsInWindow(Ljava/lang/String;I)I

    move-result v11

    .line 1969
    .local v11, "wakeupsInWindow":I
    invoke-virtual {v0, v10}, Lcom/android/server/AlarmManagerService;->getQuotaForBucketLocked(I)I

    move-result v12

    .line 1970
    .local v12, "quotaForBucket":I
    const/4 v13, 0x0

    .line 1971
    .local v13, "deferred":Z
    if-lt v11, v12, :cond_7c

    .line 1973
    if-gtz v12, :cond_5e

    .line 1975
    iget-object v14, v0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v14}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v14

    const-wide/32 v16, 0x5265c00

    add-long v14, v14, v16

    move-wide/from16 v19, v5

    .local v14, "minElapsed":J
    goto :goto_70

    .line 1979
    .end local v14  # "minElapsed":J
    :cond_5e
    iget-object v14, v0, Lcom/android/server/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v14, v2, v9, v12}, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->getLastWakeupForPackage(Ljava/lang/String;II)J

    move-result-wide v14

    .line 1981
    .local v14, "t":J
    const-wide/16 v16, 0x1

    add-long v16, v14, v16

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    move-wide/from16 v19, v5

    .end local v5  # "oldWhenElapsed":J
    .local v19, "oldWhenElapsed":J
    iget-wide v4, v3, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    add-long v14, v16, v4

    .line 1983
    .local v14, "minElapsed":J
    :goto_70
    iget-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    cmp-long v3, v3, v14

    if-gez v3, :cond_7e

    .line 1984
    iput-wide v14, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v14, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 1985
    const/4 v13, 0x1

    goto :goto_7e

    .line 1971
    .end local v14  # "minElapsed":J
    .end local v19  # "oldWhenElapsed":J
    .restart local v5  # "oldWhenElapsed":J
    :cond_7c
    move-wide/from16 v19, v5

    .line 1988
    .end local v5  # "oldWhenElapsed":J
    .restart local v19  # "oldWhenElapsed":J
    :cond_7e
    :goto_7e
    if-nez v13, :cond_88

    .line 1990
    iget-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    iput-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 1991
    iget-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    iput-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 1993
    .end local v11  # "wakeupsInWindow":I
    .end local v12  # "quotaForBucket":I
    .end local v13  # "deferred":Z
    :cond_88
    const/4 v4, 0x1

    goto :goto_b1

    .line 1995
    .end local v19  # "oldWhenElapsed":J
    .restart local v5  # "oldWhenElapsed":J
    :cond_8a
    move-wide/from16 v19, v5

    .end local v5  # "oldWhenElapsed":J
    .restart local v19  # "oldWhenElapsed":J
    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/AlarmManagerService$AppWakeupHistory;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v9, v4}, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->getLastWakeupForPackage(Ljava/lang/String;II)J

    move-result-wide v5

    .line 1997
    .local v5, "lastElapsed":J
    const-wide/16 v11, 0x0

    cmp-long v3, v5, v11

    if-lez v3, :cond_b1

    .line 1998
    invoke-virtual {v0, v10}, Lcom/android/server/AlarmManagerService;->getMinDelayForBucketLocked(I)J

    move-result-wide v11

    add-long/2addr v11, v5

    .line 1999
    .local v11, "minElapsed":J
    iget-wide v13, v1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    cmp-long v3, v13, v11

    if-gez v3, :cond_a9

    .line 2000
    iput-wide v11, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v11, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    goto :goto_b1

    .line 2004
    :cond_a9
    iget-wide v13, v1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    iput-wide v13, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 2005
    iget-wide v13, v1, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    iput-wide v13, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 2009
    .end local v5  # "lastElapsed":J
    .end local v11  # "minElapsed":J
    :cond_b1
    :goto_b1
    iget-wide v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v3, v19, v5

    if-nez v3, :cond_c1

    iget-wide v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v3, v7, v5

    if-eqz v3, :cond_be

    goto :goto_c1

    :cond_be
    const/16 v18, 0x0

    goto :goto_c3

    :cond_c1
    :goto_c1
    move/from16 v18, v4

    :goto_c3
    return v18
.end method

.method private static native cancelPowerOffAlarm(J)I
.end method

.method static clampPositive(J)J
    .registers 4
    .param p0, "val"  # J

    .line 1205
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_8

    move-wide v0, p0

    goto :goto_d

    :cond_8
    const-wide v0, 0x7fffffffffffffffL

    :goto_d
    return-wide v0
.end method

.method private static native close(J)V
.end method

.method private convertToElapsed(JI)J
    .registers 9
    .param p1, "when"  # J
    .param p3, "type"  # I

    .line 993
    const/4 v0, 0x1

    if-eq p3, v0, :cond_a

    if-eqz p3, :cond_a

    const/4 v1, 0x5

    if-ne p3, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 995
    .local v0, "isRtc":Z
    :cond_a
    :goto_a
    if-eqz v0, :cond_1a

    .line 996
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sub-long/2addr p1, v1

    .line 998
    :cond_1a
    return-wide p1
.end method

.method private decrementAlarmCount(II)V
    .registers 7
    .param p1, "uid"  # I
    .param p2, "decrement"  # I

    .line 5088
    const/4 v0, 0x0

    .line 5089
    .local v0, "oldCount":I
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    .line 5090
    .local v1, "uidIndex":I
    if-ltz v1, :cond_1e

    .line 5091
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    .line 5092
    if-le v0, p2, :cond_19

    .line 5093
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    sub-int v3, v0, p2

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->setValueAt(II)V

    goto :goto_1e

    .line 5095
    :cond_19
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 5098
    :cond_1e
    :goto_1e
    if-ge v0, p2, :cond_46

    .line 5099
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to decrement existing alarm count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AlarmManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5102
    :cond_46
    return-void
.end method

.method private deliverPastAlarmsLocked()V
    .registers 7

    .line 5184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5185
    .local v0, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 5186
    .local v1, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 5188
    .local v3, "nowELAPSED":J
    invoke-virtual {p0, v0, v3, v4}, Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;J)Z

    move-result v5

    .line 5189
    .local v5, "hasWakeup":Z
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 5190
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 5191
    invoke-virtual {p0, v0, v3, v4}, Lcom/android/server/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 5192
    return-void
.end method

.method private deliverPendingBackgroundAlarmsLocked(Ljava/util/ArrayList;J)V
    .registers 33
    .param p2, "nowELAPSED"  # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;J)V"
        }
    .end annotation

    .line 1290
    .local p1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move-wide/from16 v12, p2

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 1291
    .local v14, "N":I
    const/4 v1, 0x0

    .line 1292
    .local v1, "hasWakeup":Z
    const/4 v2, 0x0

    move v10, v2

    .local v10, "i":I
    :goto_d
    if-ge v10, v14, :cond_a1

    .line 1293
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1294
    .local v11, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-boolean v2, v11, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    if-eqz v2, :cond_1e

    .line 1295
    const/4 v1, 0x1

    move/from16 v21, v1

    goto :goto_20

    .line 1294
    :cond_1e
    move/from16 v21, v1

    .line 1297
    .end local v1  # "hasWakeup":Z
    .local v21, "hasWakeup":Z
    :goto_20
    const/4 v1, 0x1

    iput v1, v11, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 1300
    iget-wide v1, v11, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_8d

    .line 1301
    iget v1, v11, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v1, v1

    iget-wide v3, v11, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    sub-long v3, v12, v3

    iget-wide v5, v11, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    div-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v11, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 1303
    iget v1, v11, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v1, v1

    iget-wide v3, v11, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    mul-long v22, v1, v3

    .line 1304
    .local v22, "delta":J
    iget-wide v1, v11, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    add-long v24, v1, v22

    .local v24, "nextElapsed":J
    move-wide/from16 v4, v24

    .line 1305
    iget v1, v11, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-wide v2, v11, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    add-long v2, v2, v22

    iget-wide v6, v11, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    iget-wide v8, v11, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 1306
    move-wide/from16 v16, v8

    move-wide/from16 v8, p2

    move/from16 v26, v10

    move/from16 v18, v14

    move-object v14, v11

    .end local v10  # "i":I
    .end local v11  # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .local v14, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .local v18, "N":I
    .local v26, "i":I
    move-wide/from16 v10, v24

    move-wide/from16 v12, v16

    invoke-static/range {v8 .. v13}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v8

    iget-wide v10, v14, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    iget-object v12, v14, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object v13, v14

    move/from16 v27, v18

    .end local v14  # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v18  # "N":I
    .local v13, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .local v27, "N":I
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

    .line 1305
    move-object v14, v0

    move-object/from16 v0, p0

    move-object/from16 v28, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    .end local v13  # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .local v28, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-direct/range {v0 .. v20}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    goto :goto_93

    .line 1300
    .end local v22  # "delta":J
    .end local v24  # "nextElapsed":J
    .end local v26  # "i":I
    .end local v27  # "N":I
    .end local v28  # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v10  # "i":I
    .restart local v11  # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .local v14, "N":I
    :cond_8d
    move/from16 v26, v10

    move-object/from16 v28, v11

    move/from16 v27, v14

    .line 1292
    .end local v10  # "i":I
    .end local v11  # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v14  # "N":I
    .restart local v26  # "i":I
    .restart local v27  # "N":I
    :goto_93
    add-int/lit8 v10, v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move-wide/from16 v12, p2

    move/from16 v1, v21

    move/from16 v14, v27

    .end local v26  # "i":I
    .restart local v10  # "i":I
    goto/16 :goto_d

    .end local v21  # "hasWakeup":Z
    .end local v27  # "N":I
    .restart local v1  # "hasWakeup":Z
    .restart local v14  # "N":I
    :cond_a1
    move/from16 v26, v10

    move/from16 v27, v14

    .line 1312
    .end local v10  # "i":I
    .end local v14  # "N":I
    .restart local v27  # "N":I
    if-nez v1, :cond_dd

    move-object/from16 v0, p0

    move-wide/from16 v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/AlarmManagerService;->checkAllowNonWakeupDelayLocked(J)Z

    move-result v4

    if-eqz v4, :cond_da

    .line 1314
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_c9

    .line 1315
    iput-wide v2, v0, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    .line 1316
    nop

    .line 1317
    invoke-virtual {v0, v2, v3}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v4

    const-wide/16 v6, 0x3

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 1319
    :cond_c9
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1320
    iget v4, v0, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v0, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    goto :goto_111

    .line 1312
    :cond_da
    move-object/from16 v5, p1

    goto :goto_e3

    :cond_dd
    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move-wide/from16 v2, p2

    .line 1326
    :goto_e3
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_106

    .line 1327
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1328
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v6, v2, v6

    .line 1329
    .local v6, "thisDelayTime":J
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v8, v6

    iput-wide v8, v0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 1330
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    cmp-long v4, v8, v6

    if-gez v4, :cond_101

    .line 1331
    iput-wide v6, v0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 1333
    :cond_101
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1335
    .end local v6  # "thisDelayTime":J
    :cond_106
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 1336
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    invoke-static {v5, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1337
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 1339
    :goto_111
    return-void
.end method

.method private static final dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V
    .registers 22
    .param p0, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;
    .param p3, "nowELAPSED"  # J
    .param p5, "nowRTC"  # J
    .param p7, "sdf"  # Ljava/text/SimpleDateFormat;
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

    .line 3599
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    move-object v8, p0

    move-object/from16 v9, p2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v10, v0

    .local v10, "i":I
    :goto_a
    if-ltz v10, :cond_4f

    .line 3600
    move-object v11, p1

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3601
    .local v12, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v0, v12, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->labelForType(I)Ljava/lang/String;

    move-result-object v13

    .line 3602
    .local v13, "label":Ljava/lang/String;
    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " #"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 3603
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v12

    move-object v1, p0

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 3599
    .end local v12  # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v13  # "label":Ljava/lang/String;
    add-int/lit8 v10, v10, -0x1

    goto :goto_a

    :cond_4f
    move-object v11, p1

    .line 3606
    .end local v10  # "i":I
    return-void
.end method

.method private static final dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V
    .registers 23
    .param p0, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;
    .param p3, "label"  # Ljava/lang/String;
    .param p4, "nowELAPSED"  # J
    .param p6, "nowRTC"  # J
    .param p8, "sdf"  # Ljava/text/SimpleDateFormat;
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

    .line 3576
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    move-object v8, p0

    move-object/from16 v9, p2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v10, v0

    .local v10, "i":I
    :goto_a
    if-ltz v10, :cond_4b

    .line 3577
    move-object v11, p1

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3578
    .local v12, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v13, p3

    invoke-virtual {p0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " #"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 3579
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v12

    move-object v1, p0

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 3576
    .end local v12  # "a":Lcom/android/server/AlarmManagerService$Alarm;
    add-int/lit8 v10, v10, -0x1

    goto :goto_a

    :cond_4b
    move-object v11, p1

    move-object/from16 v13, p3

    .line 3582
    .end local v10  # "i":I
    return-void
.end method

.method static findAllUnrestrictedPendingBackgroundAlarmsLockedInner(Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/util/function/Predicate;)V
    .registers 9
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

    .line 1268
    .local p0, "pendingAlarms":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;>;"
    .local p1, "unrestrictedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .local p2, "isBackgroundRestricted":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "uidIndex":I
    :goto_6
    if-ltz v0, :cond_3c

    .line 1269
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1270
    .local v1, "uid":I
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1272
    .local v2, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "alarmIndex":I
    :goto_18
    if-ltz v3, :cond_30

    .line 1273
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1275
    .local v4, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-interface {p2, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 1276
    goto :goto_2d

    .line 1279
    :cond_27
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1280
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1272
    .end local v4  # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :goto_2d
    add-int/lit8 v3, v3, -0x1

    goto :goto_18

    .line 1283
    .end local v3  # "alarmIndex":I
    :cond_30
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_39

    .line 1284
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1268
    .end local v1  # "uid":I
    .end local v2  # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_39
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1287
    .end local v0  # "uidIndex":I
    :cond_3c
    return-void
.end method

.method private findFirstRtcWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;
    .registers 5

    .line 3011
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3012
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1b

    .line 3013
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Batch;

    .line 3014
    .local v2, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$Batch;->isRtcPowerOffWakeup()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3015
    return-object v2

    .line 3012
    .end local v2  # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3018
    .end local v1  # "i":I
    :cond_1b
    const/4 v1, 0x0

    return-object v1
.end method

.method private findFirstWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;
    .registers 5

    .line 3000
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3001
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1b

    .line 3002
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Batch;

    .line 3003
    .local v2, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$Batch;->hasWakeups()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3004
    return-object v2

    .line 3001
    .end local v2  # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3007
    .end local v1  # "i":I
    :cond_1b
    const/4 v1, 0x0

    return-object v1
.end method

.method static formatElapsedTime(J)Ljava/lang/String;
    .registers 7
    .param p0, "elapsed"  # J

    .line 5173
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 5174
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    add-long/2addr v1, p0

    .line 5175
    .local v1, "rtc":J
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;
    .registers 7
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "info"  # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p2, "userId"  # I

    .line 3161
    invoke-static {p0, p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "EHm"

    goto :goto_b

    :cond_9
    const-string v0, "Ehma"

    .line 3162
    .local v0, "skeleton":Ljava/lang/String;
    :goto_b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3163
    .local v1, "pattern":Ljava/lang/String;
    if-nez p1, :cond_18

    const-string v2, ""

    goto :goto_24

    .line 3164
    :cond_18
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3163
    :goto_24
    return-object v2
.end method

.method static formatRtcTime(J)Ljava/lang/String;
    .registers 4
    .param p0, "rtc"  # J

    .line 5179
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 5180
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static fuzzForDuration(J)I
    .registers 4
    .param p0, "duration"  # J

    .line 4008
    const-wide/32 v0, 0xdbba0

    cmp-long v0, p0, v0

    if-gez v0, :cond_9

    .line 4011
    long-to-int v0, p0

    return v0

    .line 4012
    :cond_9
    const-wide/32 v0, 0x5265c0

    cmp-long v0, p0, v0

    if-gez v0, :cond_14

    .line 4014
    const v0, 0xdbba0

    return v0

    .line 4017
    :cond_14
    const v0, 0x1b7740

    return v0
.end method

.method private static getAlarmAttributionUid(Lcom/android/server/AlarmManagerService$Alarm;)I
    .registers 2
    .param p0, "alarm"  # Lcom/android/server/AlarmManagerService$Alarm;

    .line 4390
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 4391
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->getAttributionUid()I

    move-result v0

    return v0

    .line 4394
    :cond_13
    iget v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    return v0
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

    .line 1063
    .local p0, "batches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    const/4 v0, 0x0

    .line 1065
    .local v0, "ret":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1066
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_16

    .line 1067
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Batch;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 1066
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1069
    .end local v2  # "i":I
    :cond_16
    return v0
.end method

.method private static native getNextAlarm(JI)J
.end method

.method private final getStatsLocked(ILjava/lang/String;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .registers 6
    .param p1, "uid"  # I
    .param p2, "pkgName"  # Ljava/lang/String;

    .line 4758
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 4759
    .local v0, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    if-nez v0, :cond_15

    .line 4760
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 4761
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4763
    :cond_15
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 4764
    .local v1, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    if-nez v1, :cond_26

    .line 4765
    new-instance v2, Lcom/android/server/AlarmManagerService$BroadcastStats;

    invoke-direct {v2, p1, p2}, Lcom/android/server/AlarmManagerService$BroadcastStats;-><init>(ILjava/lang/String;)V

    move-object v1, v2

    .line 4766
    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4768
    :cond_26
    return-object v1
.end method

.method private final getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .registers 5
    .param p1, "pi"  # Landroid/app/PendingIntent;

    .line 4752
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    .line 4753
    .local v0, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v1

    .line 4754
    .local v1, "uid":I
    invoke-direct {p0, v1, v0}, Lcom/android/server/AlarmManagerService;->getStatsLocked(ILjava/lang/String;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v2

    return-object v2
.end method

.method private getWhileIdleMinIntervalLocked(I)J
    .registers 6
    .param p1, "uid"  # I

    .line 3642
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 3643
    .local v0, "dozing":Z
    :goto_9
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    if-eqz v3, :cond_14

    .line 3644
    invoke-virtual {v3}, Lcom/android/server/AppStateTracker;->isForceAllAppsStandbyEnabled()Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_15

    :cond_14
    move v1, v2

    .line 3645
    .local v1, "ebs":Z
    :goto_15
    if-nez v0, :cond_1e

    if-nez v1, :cond_1e

    .line 3646
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_SHORT_TIME:J

    return-wide v2

    .line 3648
    :cond_1e
    if-eqz v0, :cond_25

    .line 3649
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_LONG_TIME:J

    return-wide v2

    .line 3651
    :cond_25
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 3654
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_SHORT_TIME:J

    return-wide v2

    .line 3656
    :cond_32
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_LONG_TIME:J

    return-wide v2
.end method

.method private incrementAlarmCount(I)V
    .registers 6
    .param p1, "uid"  # I

    .line 5079
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 5080
    .local v0, "uidIndex":I
    const/4 v1, 0x1

    if-ltz v0, :cond_14

    .line 5081
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->setValueAt(II)V

    goto :goto_19

    .line 5083
    :cond_14
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 5085
    :goto_19
    return-void
.end method

.method private static native init()J
.end method

.method private insertAndBatchAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)V
    .registers 6
    .param p1, "alarm"  # Lcom/android/server/AlarmManagerService$Alarm;

    .line 1028
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    goto :goto_10

    .line 1029
    :cond_8
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/AlarmManagerService;->attemptCoalesceLocked(JJ)I

    move-result v0

    :goto_10
    nop

    .line 1032
    .local v0, "whichBatch":I
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmOptimize:Lcom/android/server/AlarmOptimizeStrategy;

    if-eqz v1, :cond_19

    .line 1033
    invoke-virtual {v1, p1, v0}, Lcom/android/server/AlarmOptimizeStrategy;->alginAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;I)I

    move-result v0

    .line 1037
    :cond_19
    if-gez v0, :cond_26

    .line 1038
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/AlarmManagerService$Batch;

    invoke-direct {v2, p0, p1}, Lcom/android/server/AlarmManagerService$Batch;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)V

    invoke-static {v1, v2}, Lcom/android/server/AlarmManagerService;->addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z

    goto :goto_3e

    .line 1040
    :cond_26
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 1041
    .local v1, "batch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v1, p1}, Lcom/android/server/AlarmManagerService$Batch;->add(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1044
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1045
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lcom/android/server/AlarmManagerService;->addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z

    .line 1048
    .end local v1  # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_3e
    :goto_3e
    return-void
.end method

.method private isBackgroundRestricted(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 8
    .param p1, "alarm"  # Lcom/android/server/AlarmManagerService$Alarm;

    .line 3609
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    .line 3610
    .local v0, "exemptOnBatterySaver":Z
    :goto_b
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v3, :cond_10

    .line 3612
    return v2

    .line 3614
    :cond_10
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v3, :cond_26

    .line 3615
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 3617
    return v2

    .line 3619
    :cond_1d
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->isForegroundService()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 3621
    const/4 v0, 0x1

    .line 3624
    :cond_26
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    .line 3625
    .local v3, "sourcePackage":Ljava/lang/String;
    iget v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    .line 3626
    .local v4, "sourceUid":I
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    if-eqz v5, :cond_35

    .line 3627
    invoke-virtual {v5, v4, v3, v0}, Lcom/android/server/AppStateTracker;->areAlarmsRestricted(ILjava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_35

    goto :goto_36

    :cond_35
    move v1, v2

    .line 3626
    :goto_36
    return v1
.end method

.method private isExemptFromAppStandby(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 3
    .param p1, "a"  # Lcom/android/server/AlarmManagerService$Alarm;

    .line 4066
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-nez v0, :cond_15

    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-nez v0, :cond_15

    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v0, v0, 0x8

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

.method private isIdlingImpl()Z
    .registers 3

    .line 3028
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3029
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

    .line 3030
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private static final labelForType(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"  # I

    .line 3585
    if-eqz p0, :cond_1d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_17

    const/4 v0, 0x3

    if-eq p0, v0, :cond_14

    const/4 v0, 0x5

    if-eq p0, v0, :cond_11

    .line 3594
    const-string v0, "--unknown--"

    return-object v0

    .line 3590
    :cond_11
    const-string v0, "RTC_POWEROFF_WAKEUP"

    return-object v0

    .line 3588
    :cond_14
    const-string v0, "ELAPSED"

    return-object v0

    .line 3589
    :cond_17
    const-string v0, "ELAPSED_WAKEUP"

    return-object v0

    .line 3586
    :cond_1a
    const-string v0, "RTC"

    return-object v0

    .line 3587
    :cond_1d
    const-string v0, "RTC_WAKEUP"

    return-object v0
.end method

.method public static synthetic lambda$nSJw2tKfoL3YIrKDtszoL44jcSM(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->isBackgroundRestricted(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$removeForStoppedLocked$4(ILcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 4
    .param p0, "uid"  # I
    .param p1, "a"  # Lcom/android/server/AlarmManagerService$Alarm;

    .line 3414
    :try_start_0
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v0, p0, :cond_13

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Landroid/app/IActivityManager;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_12

    if-eqz v0, :cond_13

    .line 3416
    const/4 v0, 0x1

    return v0

    .line 3418
    :catch_12
    move-exception v0

    :cond_13
    nop

    .line 3419
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$removeLocked$1(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 4
    .param p0, "operation"  # Landroid/app/PendingIntent;
    .param p1, "directReceiver"  # Landroid/app/IAlarmListener;
    .param p2, "a"  # Lcom/android/server/AlarmManagerService$Alarm;

    .line 3214
    invoke-virtual {p2, p0, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$removeLocked$2(ILcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 3
    .param p0, "uid"  # I
    .param p1, "a"  # Lcom/android/server/AlarmManagerService$Alarm;

    .line 3287
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static synthetic lambda$removeUserLocked$5(ILcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 3
    .param p0, "userHandle"  # I
    .param p1, "a"  # Lcom/android/server/AlarmManagerService$Alarm;

    .line 3469
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private logBatchesLocked(Ljava/text/SimpleDateFormat;)V
    .registers 20
    .param p1, "sdf"  # Ljava/text/SimpleDateFormat;

    .line 2964
    move-object/from16 v0, p0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x800

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2965
    .local v1, "bs":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2966
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v11

    .line 2967
    .local v11, "nowRTC":J
    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v13

    .line 2968
    .local v13, "nowELAPSED":J
    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 2969
    .local v15, "NZ":I
    const/4 v3, 0x0

    move v10, v3

    .local v10, "iz":I
    :goto_22
    if-ge v10, v15, :cond_5f

    .line 2970
    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/android/server/AlarmManagerService$Batch;

    .line 2971
    .local v8, "bz":Lcom/android/server/AlarmManagerService$Batch;
    const-string v3, "Batch "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2972
    iget-object v4, v8, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    const-string v5, "  "

    move-object v3, v2

    move-wide v6, v13

    move-object/from16 v16, v8

    .end local v8  # "bz":Lcom/android/server/AlarmManagerService$Batch;
    .local v16, "bz":Lcom/android/server/AlarmManagerService$Batch;
    move-wide v8, v11

    move/from16 v17, v10

    .end local v10  # "iz":I
    .local v17, "iz":I
    move-object/from16 v10, p1

    invoke-static/range {v3 .. v10}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 2973
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 2974
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AlarmManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2975
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 2969
    .end local v16  # "bz":Lcom/android/server/AlarmManagerService$Batch;
    add-int/lit8 v10, v17, 0x1

    .end local v17  # "iz":I
    .restart local v10  # "iz":I
    goto :goto_22

    .line 2977
    .end local v10  # "iz":I
    :cond_5f
    return-void
.end method

.method static maxTriggerTime(JJJ)J
    .registers 12
    .param p0, "now"  # J
    .param p2, "triggerAtTime"  # J
    .param p4, "interval"  # J

    .line 1008
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_9

    .line 1009
    sub-long v0, p2, p0

    goto :goto_a

    .line 1010
    :cond_9
    move-wide v0, p4

    :goto_a
    nop

    .line 1011
    .local v0, "futurity":J
    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-gez v2, :cond_13

    .line 1012
    const-wide/16 v0, 0x0

    .line 1014
    :cond_13
    const-wide/high16 v2, 0x3fe8000000000000L  # 0.75

    long-to-double v4, v0

    mul-double/2addr v4, v2

    double-to-long v2, v4

    add-long/2addr v2, p2

    invoke-static {v2, v3}, Lcom/android/server/AlarmManagerService;->clampPositive(J)J

    move-result-wide v2

    return-wide v2
.end method

.method private notifyBroadcastAlarmCompleteLocked(I)V
    .registers 5
    .param p1, "uid"  # I

    .line 1458
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1459
    .local v0, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 1460
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerInternal$InFlightListener;

    invoke-interface {v2, p1}, Lcom/android/server/AlarmManagerInternal$InFlightListener;->broadcastAlarmComplete(I)V

    .line 1459
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1462
    .end local v1  # "i":I
    :cond_17
    return-void
.end method

.method private notifyBroadcastAlarmPendingLocked(I)V
    .registers 5
    .param p1, "uid"  # I

    .line 1451
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1452
    .local v0, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 1453
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerInternal$InFlightListener;

    invoke-interface {v2, p1}, Lcom/android/server/AlarmManagerInternal$InFlightListener;->broadcastAlarmPending(I)V

    .line 1452
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1455
    .end local v1  # "i":I
    :cond_17
    return-void
.end method

.method private removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;Z)V
    .registers 20
    .param p1, "operation"  # Landroid/app/PendingIntent;
    .param p2, "directReceiver"  # Landroid/app/IAlarmListener;
    .param p3, "reschedule"  # Z

    .line 3206
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_b

    if-nez v2, :cond_b

    .line 3211
    return-void

    .line 3213
    :cond_b
    const/4 v3, 0x0

    .line 3214
    .local v3, "didRemove":Z
    new-instance v4, Lcom/android/server/-$$Lambda$AlarmManagerService$PL9HLH-MH3N2JfJ2qjsXOF25AR4;

    .local v4, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-direct {v4, v1, v2}, Lcom/android/server/-$$Lambda$AlarmManagerService$PL9HLH-MH3N2JfJ2qjsXOF25AR4;-><init>(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 3215
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .local v5, "i":I
    :goto_19
    if-ltz v5, :cond_6d

    .line 3216
    iget-object v7, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerService$Batch;

    .line 3217
    .local v7, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-object v8, v7, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    .line 3218
    .local v8, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/4 v9, 0x0

    .line 3219
    .local v9, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v6

    .local v10, "j":I
    :goto_2b
    if-ltz v10, :cond_57

    .line 3220
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v9, v11

    check-cast v9, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3221
    iget v11, v9, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v12, 0x5

    if-ne v11, v12, :cond_51

    iget-object v11, v9, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v11, v1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_51

    .line 3223
    iget-wide v11, v9, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    .line 3224
    .local v11, "alarmSeconds":J
    move-object v15, v7

    .end local v7  # "b":Lcom/android/server/AlarmManagerService$Batch;
    .local v15, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v6, v9, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    rem-long/2addr v6, v13

    mul-long/2addr v6, v13

    mul-long/2addr v6, v13

    .line 3226
    .local v6, "alarmNanoseconds":J
    const-wide/16 v13, 0x0

    sput-wide v13, Lcom/android/server/AlarmManagerService;->mNextRtcWakeup:J

    goto :goto_52

    .line 3221
    .end local v6  # "alarmNanoseconds":J
    .end local v11  # "alarmSeconds":J
    .end local v15  # "b":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v7  # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_51
    move-object v15, v7

    .line 3219
    .end local v7  # "b":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v15  # "b":Lcom/android/server/AlarmManagerService$Batch;
    :goto_52
    add-int/lit8 v10, v10, -0x1

    move-object v7, v15

    const/4 v6, 0x1

    goto :goto_2b

    .end local v15  # "b":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v7  # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_57
    move-object v15, v7

    .line 3229
    .end local v7  # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v10  # "j":I
    .restart local v15  # "b":Lcom/android/server/AlarmManagerService$Batch;
    const/4 v6, 0x0

    .end local v15  # "b":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v7  # "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v7, v4, v6}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/util/function/Predicate;Z)Z

    move-result v6

    or-int/2addr v3, v6

    .line 3230
    invoke-virtual {v7}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v6

    if-nez v6, :cond_69

    .line 3231
    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3215
    .end local v7  # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v8  # "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v9  # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_69
    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x1

    goto :goto_19

    .line 3234
    .end local v5  # "i":I
    :cond_6d
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .restart local v5  # "i":I
    :goto_75
    if-ltz v5, :cond_93

    .line 3235
    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3236
    .local v6, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v6, v1, v2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v7

    if-eqz v7, :cond_90

    .line 3238
    iget-object v7, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3239
    iget v7, v6, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    const/4 v8, 0x1

    invoke-direct {v0, v7, v8}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3234
    .end local v6  # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_90
    add-int/lit8 v5, v5, -0x1

    goto :goto_75

    .line 3242
    .end local v5  # "i":I
    :cond_93
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .restart local v5  # "i":I
    :goto_9b
    if-ltz v5, :cond_d6

    .line 3243
    iget-object v7, v0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 3244
    .local v7, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v6

    .local v8, "j":I
    :goto_aa
    if-ltz v8, :cond_c6

    .line 3245
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3246
    .restart local v6  # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v6, v1, v2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v9

    if-eqz v9, :cond_c2

    .line 3248
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3249
    iget v9, v6, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    const/4 v10, 0x1

    invoke-direct {v0, v9, v10}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    goto :goto_c3

    .line 3246
    :cond_c2
    const/4 v10, 0x1

    .line 3244
    .end local v6  # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :goto_c3
    add-int/lit8 v8, v8, -0x1

    goto :goto_aa

    :cond_c6
    const/4 v10, 0x1

    .line 3252
    .end local v8  # "j":I
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_d2

    .line 3253
    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3242
    .end local v7  # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_d2
    add-int/lit8 v5, v5, -0x1

    move v6, v10

    goto :goto_9b

    .line 3257
    .end local v5  # "i":I
    :cond_d6
    if-eqz v3, :cond_107

    if-eqz p3, :cond_107

    .line 3261
    const/4 v5, 0x0

    .line 3262
    .local v5, "restorePending":Z
    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    const/4 v7, 0x0

    if-eqz v6, :cond_e9

    invoke-virtual {v6, v1, v2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v6

    if-eqz v6, :cond_e9

    .line 3263
    iput-object v7, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 3264
    const/4 v5, 0x1

    .line 3266
    :cond_e9
    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v6, :cond_f5

    invoke-virtual {v6, v1, v2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v6

    if-eqz v6, :cond_f5

    .line 3267
    iput-object v7, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 3271
    :cond_f5
    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/server/AlarmManagerService;->sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3272
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 3274
    if-eqz v5, :cond_104

    .line 3275
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->restorePendingWhileIdleAlarmsLocked()V

    .line 3277
    :cond_104
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 3279
    .end local v5  # "restorePending":Z
    :cond_107
    return-void
.end method

.method private reschedulePowerOffAlarmsLocked()V
    .registers 14

    .line 5208
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->findFirstRtcWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;

    move-result-object v0

    .line 5209
    .local v0, "firstRtcWakeup":Lcom/android/server/AlarmManagerService$Batch;
    if-eqz v0, :cond_42

    .line 5210
    iget-wide v1, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    sput-wide v1, Lcom/android/server/AlarmManagerService;->mNextRtcWakeup:J

    .line 5211
    sget-wide v1, Lcom/android/server/AlarmManagerService;->mNextRtcWakeup:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/AlarmManagerService$Batch;->getAlarmByElapsedTime(J)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v1

    .line 5212
    .local v1, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    if-eqz v1, :cond_42

    .line 5213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 5214
    .local v2, "nowRTC":J
    iget-wide v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 5215
    .local v4, "alarmRTC":J
    const-wide/32 v6, 0x493e0

    .line 5216
    .local v6, "bootbudget":J
    sub-long v8, v4, v6

    cmp-long v8, v2, v8

    if-lez v8, :cond_38

    .line 5217
    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    add-long v9, v2, v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    add-long/2addr v11, v6

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/android/server/AlarmManagerService$Injector;->setPowerOffAlarmLocked(JJ)V

    goto :goto_42

    .line 5220
    :cond_38
    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    sub-long v9, v4, v6

    iget-wide v11, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long/2addr v11, v6

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/android/server/AlarmManagerService$Injector;->setPowerOffAlarmLocked(JJ)V

    .line 5224
    .end local v1  # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v2  # "nowRTC":J
    .end local v4  # "alarmRTC":J
    .end local v6  # "bootbudget":J
    :cond_42
    :goto_42
    if-nez v0, :cond_49

    .line 5225
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Injector;->cancelPowerOffAlarmLocked()V

    .line 5227
    :cond_49
    return-void
.end method

.method private sendNextAlarmClockChanged()V
    .registers 9

    .line 3130
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 3131
    .local v0, "pendingUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/AlarmManager$AlarmClockInfo;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3133
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3134
    :try_start_8
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 3135
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_25

    .line 3136
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 3137
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 3135
    .end local v4  # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 3139
    .end local v3  # "i":I
    :cond_25
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3140
    .end local v2  # "N":I
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_64

    .line 3142
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3143
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_30
    if-ge v2, v1, :cond_63

    .line 3144
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 3145
    .local v3, "userId":I
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3146
    .local v4, "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 3148
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4, v3}, Lcom/android/server/AlarmManagerService;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;

    move-result-object v6

    .line 3146
    const-string/jumbo v7, "next_alarm_formatted"

    invoke-static {v5, v7, v6, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 3151
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/server/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3143
    .end local v3  # "userId":I
    .end local v4  # "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 3154
    .end local v2  # "i":I
    :cond_63
    return-void

    .line 3140
    .end local v1  # "N":I
    :catchall_64
    move-exception v2

    :try_start_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v2
.end method

.method private static native set(JIJJ)I
.end method

.method private setImplLocked(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V
    .registers 43
    .param p1, "type"  # I
    .param p2, "when"  # J
    .param p4, "whenElapsed"  # J
    .param p6, "windowLength"  # J
    .param p8, "maxWhen"  # J
    .param p10, "interval"  # J
    .param p12, "operation"  # Landroid/app/PendingIntent;
    .param p13, "directReceiver"  # Landroid/app/IAlarmListener;
    .param p14, "listenerTag"  # Ljava/lang/String;
    .param p15, "flags"  # I
    .param p16, "doValidate"  # Z
    .param p17, "workSource"  # Landroid/os/WorkSource;
    .param p18, "alarmClock"  # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p19, "callingUid"  # I
    .param p20, "callingPackage"  # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p12

    move/from16 v15, p19

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-object/from16 v14, p12

    move v1, v15

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move/from16 v18, p15

    move-object/from16 v17, p17

    move-object/from16 v19, p18

    move/from16 v20, p19

    move-object/from16 v21, p20

    .line 1877
    new-instance v0, Lcom/android/server/AlarmManagerService$Alarm;

    move-object v2, v0

    invoke-direct/range {v2 .. v21}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    .line 1881
    .local v2, "a":Lcom/android/server/AlarmManagerService$Alarm;
    :try_start_29
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2d} :catch_77

    move-object/from16 v3, p20

    :try_start_2f
    invoke-interface {v0, v1, v3}, Landroid/app/IActivityManager;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 1882
    const-string v0, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not setting alarm from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " -- package not allowed to start"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_58} :catch_71

    .line 1884
    move-object/from16 v1, p0

    :try_start_5a
    iget-object v0, v1, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_5c} :catch_6a

    const/16 v4, 0x8

    move-object/from16 v5, p12

    :try_start_60
    invoke-virtual {v0, v4, v5}, Lcom/android/server/AlarmManagerService$AlarmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1885
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_67} :catch_68

    .line 1886
    return-void

    .line 1888
    :catch_68
    move-exception v0

    goto :goto_7e

    :catch_6a
    move-exception v0

    goto :goto_74

    .line 1889
    :cond_6c
    move-object/from16 v1, p0

    move-object/from16 v5, p12

    goto :goto_7e

    .line 1888
    :catch_71
    move-exception v0

    move-object/from16 v1, p0

    :goto_74
    move-object/from16 v5, p12

    goto :goto_7e

    :catch_77
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v5, p12

    move-object/from16 v3, p20

    .line 1891
    :goto_7e
    const/4 v0, 0x0

    move-object/from16 v4, p13

    invoke-direct {v1, v5, v4, v0}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;Z)V

    .line 1893
    iget v6, v2, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {v1, v6}, Lcom/android/server/AlarmManagerService;->incrementAlarmCount(I)V

    .line 1894
    move/from16 v6, p16

    invoke-direct {v1, v2, v0, v6}, Lcom/android/server/AlarmManagerService;->setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    .line 1895
    return-void
.end method

.method private setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V
    .registers 12
    .param p1, "a"  # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "rebatching"  # Z
    .param p3, "doValidate"  # Z

    .line 2013
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4b

    .line 2018
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v0, :cond_1e

    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1e

    .line 2019
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 2022
    :cond_1e
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 2023
    .local v0, "nowElapsed":J
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Lcom/android/server/AlarmManagerService;->fuzzForDuration(J)I

    move-result v2

    .line 2024
    .local v2, "fuzz":I
    if-lez v2, :cond_5b

    .line 2025
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mRandom:Ljava/util/Random;

    if-nez v3, :cond_38

    .line 2026
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mRandom:Ljava/util/Random;

    .line 2028
    :cond_38
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mRandom:Ljava/util/Random;

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 2029
    .local v3, "delta":I
    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    int-to-long v6, v3

    sub-long/2addr v4, v6

    iput-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 2037
    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    goto :goto_5b

    .line 2040
    .end local v0  # "nowElapsed":J
    .end local v2  # "fuzz":I
    .end local v3  # "delta":I
    :cond_4b
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v0, :cond_5b

    .line 2043
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v0, v0, 0xe

    if-nez v0, :cond_5c

    .line 2047
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2048
    return-void

    .line 2040
    :cond_5b
    :goto_5b
    nop

    .line 2063
    :cond_5c
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z

    .line 2064
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->insertAndBatchAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 2066
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v0, :cond_69

    .line 2067
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 2070
    :cond_69
    const/4 v0, 0x0

    .line 2072
    .local v0, "needRebatch":Z
    iget v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_9b

    .line 2082
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eq v1, p1, :cond_97

    if-eqz v1, :cond_97

    .line 2083
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setImplLocked: idle until changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlarmManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    :cond_97
    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 2088
    const/4 v0, 0x1

    goto :goto_b4

    .line 2089
    :cond_9b
    iget v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_b4

    .line 2090
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v1, :cond_ad

    iget-wide v1, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_b4

    .line 2091
    :cond_ad
    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 2095
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v1, :cond_b4

    .line 2096
    const/4 v0, 0x1

    .line 2101
    :cond_b4
    :goto_b4
    if-nez p2, :cond_c3

    .line 2115
    if-eqz v0, :cond_bd

    .line 2116
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    goto :goto_c3

    .line 2121
    :cond_bd
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 2122
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 2125
    :cond_c3
    :goto_c3
    return-void
.end method

.method private static native setKernelTime(JJ)I
.end method

.method private static native setKernelTimezone(JI)I
.end method

.method private setLocked(IJ)V
    .registers 7
    .param p1, "type"  # I
    .param p2, "when"  # J

    .line 3563
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->isAlarmDriverPresent()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3564
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/AlarmManagerService$Injector;->setAlarm(IJ)V

    goto :goto_21

    .line 3566
    :cond_e
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3567
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3569
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 3570
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 3572
    .end local v0  # "msg":Landroid/os/Message;
    :goto_21
    return-void
.end method

.method private static native setPowerOffAlarm(JJ)I
.end method

.method private updateNextAlarmClockLocked()V
    .registers 14

    .line 3043
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    if-nez v0, :cond_5

    .line 3044
    return-void

    .line 3046
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 3048
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 3049
    .local v0, "nextForUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/AlarmManager$AlarmClockInfo;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3051
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3052
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_6e

    .line 3053
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Batch;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    .line 3054
    .local v3, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3056
    .local v4, "M":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_25
    if-ge v5, v4, :cond_6b

    .line 3057
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3058
    .local v6, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v7, v6, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v7, :cond_68

    .line 3059
    iget v7, v6, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 3060
    .local v7, "userId":I
    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3069
    .local v8, "current":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_4b

    .line 3070
    iget-object v9, v6, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v0, v7, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_68

    .line 3071
    :cond_4b
    iget-object v9, v6, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_68

    .line 3072
    invoke-virtual {v8}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v9

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v11}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gtz v9, :cond_68

    .line 3074
    invoke-virtual {v0, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3056
    .end local v6  # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v7  # "userId":I
    .end local v8  # "current":Landroid/app/AlarmManager$AlarmClockInfo;
    :cond_68
    :goto_68
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    .line 3052
    .end local v3  # "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v4  # "M":I
    .end local v5  # "j":I
    :cond_6b
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 3081
    .end local v2  # "i":I
    :cond_6e
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 3082
    .local v2, "NN":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_73
    if-ge v3, v2, :cond_93

    .line 3083
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3084
    .local v4, "newAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 3085
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3086
    .local v6, "currentAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_90

    .line 3087
    invoke-direct {p0, v5, v4}, Lcom/android/server/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    .line 3082
    .end local v4  # "newAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v5  # "userId":I
    .end local v6  # "currentAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    :cond_90
    add-int/lit8 v3, v3, 0x1

    goto :goto_73

    .line 3092
    .end local v3  # "i":I
    :cond_93
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 3093
    .local v3, "NNN":I
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    :goto_9b
    if-ltz v4, :cond_b0

    .line 3094
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 3095
    .restart local v5  # "userId":I
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_ad

    .line 3096
    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/server/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    .line 3093
    .end local v5  # "userId":I
    :cond_ad
    add-int/lit8 v4, v4, -0x1

    goto :goto_9b

    .line 3099
    .end local v4  # "i":I
    :cond_b0
    return-void
.end method

.method private updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V
    .registers 5
    .param p1, "userId"  # I
    .param p2, "alarmClock"  # Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3103
    if-eqz p2, :cond_8

    .line 3108
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_d

    .line 3113
    :cond_8
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3116
    :goto_d
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3117
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 3118
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendEmptyMessage(I)Z

    .line 3119
    return-void
.end method

.method private validateConsistencyLocked()Z
    .registers 2

    .line 2996
    const/4 v0, 0x1

    return v0
.end method

.method private static native waitForAlarm(J)I
.end method


# virtual methods
.method attemptCoalesceLocked(JJ)I
    .registers 9
    .param p1, "whenElapsed"  # J
    .param p3, "maxWhen"  # J

    .line 1052
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1053
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_21

    .line 1054
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Batch;

    .line 1055
    .local v2, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget v3, v2, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1e

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerService$Batch;->canHold(JJ)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1056
    return v1

    .line 1053
    .end local v2  # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1059
    .end local v1  # "i":I
    :cond_21
    const/4 v1, -0x1

    return v1
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

    .line 934
    .local p1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 935
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_50

    .line 936
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    .line 939
    .local v2, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v3, v2, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    if-ne v3, v4, :cond_15

    .line 940
    const/4 v3, 0x0

    .local v3, "alarmPrio":I
    goto :goto_1c

    .line 941
    .end local v3  # "alarmPrio":I
    :cond_15
    iget-boolean v3, v2, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    if-eqz v3, :cond_1b

    .line 942
    const/4 v3, 0x1

    .restart local v3  # "alarmPrio":I
    goto :goto_1c

    .line 944
    .end local v3  # "alarmPrio":I
    :cond_1b
    const/4 v3, 0x2

    .line 947
    .restart local v3  # "alarmPrio":I
    :goto_1c
    iget-object v4, v2, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 948
    .local v4, "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    iget-object v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    .line 949
    .local v5, "alarmPackage":Ljava/lang/String;
    if-nez v4, :cond_2b

    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 950
    :cond_2b
    if-nez v4, :cond_3a

    .line 951
    new-instance v6, Lcom/android/server/AlarmManagerService$PriorityClass;

    invoke-direct {v6, p0}, Lcom/android/server/AlarmManagerService$PriorityClass;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v6, v2, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    move-object v4, v6

    .line 952
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    :cond_3a
    iput-object v4, v2, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 956
    iget v6, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->seq:I

    iget v7, p0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    if-eq v6, v7, :cond_47

    .line 958
    iput v3, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    .line 959
    iput v7, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->seq:I

    goto :goto_4d

    .line 964
    :cond_47
    iget v6, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    if-ge v3, v6, :cond_4d

    .line 965
    iput v3, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    .line 935
    .end local v2  # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v3  # "alarmPrio":I
    .end local v4  # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    .end local v5  # "alarmPackage":Ljava/lang/String;
    :cond_4d
    :goto_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 969
    .end local v1  # "i":I
    :cond_50
    return-void
.end method

.method public cancelOnePoweroffAlarmImpl(Landroid/app/PendingIntent;)V
    .registers 15
    .param p1, "operation"  # Landroid/app/PendingIntent;

    .line 5151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "remove power off alarm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5152
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    .line 5155
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5156
    :try_start_22
    const-string/jumbo v2, "persist.sys.bootpackage"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5157
    .local v2, "bootReason":Ljava/lang/String;
    if-eqz v2, :cond_8e

    .line 5158
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_56

    const-string v3, "com.android.alarmclock"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 5159
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-static {v3}, Lcom/android/server/AlarmManagerService$Injector;->access$4300(Lcom/android/server/AlarmManagerService$Injector;)J

    move-result-wide v6

    const/4 v8, 0x6

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    invoke-static/range {v6 .. v12}, Lcom/android/server/AlarmManagerService;->set(JIJJ)I

    .line 5160
    const-string/jumbo v3, "sys.power_off_alarm"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8e

    .line 5161
    :cond_56
    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    const-string v3, "com.android.settings"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_76

    const-string v3, "com.mediatek.poweronofftest"

    .line 5162
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_76

    const-string v3, "com.meizu.scheduledpower"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 5163
    :cond_76
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-static {v3}, Lcom/android/server/AlarmManagerService$Injector;->access$4300(Lcom/android/server/AlarmManagerService$Injector;)J

    move-result-wide v6

    const/4 v8, 0x7

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    invoke-static/range {v6 .. v12}, Lcom/android/server/AlarmManagerService;->set(JIJJ)I

    .line 5164
    const-string/jumbo v3, "sys.power_off_alarm"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5167
    .end local v2  # "bootReason":Ljava/lang/String;
    :cond_8e
    :goto_8e
    monitor-exit v1

    .line 5168
    return-void

    .line 5167
    :catchall_90
    move-exception v2

    monitor-exit v1
    :try_end_92
    .catchall {:try_start_22 .. :try_end_92} :catchall_90

    throw v2
.end method

.method checkAllowNonWakeupDelayLocked(J)Z
    .registers 9
    .param p1, "nowELAPSED"  # J

    .line 4022
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 4023
    return v1

    .line 4025
    :cond_6
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_f

    .line 4026
    return v1

    .line 4028
    :cond_f
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1e

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v0, v2, p1

    if-gez v0, :cond_1e

    .line 4032
    return v1

    .line 4034
    :cond_1e
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v2, p1, v2

    .line 4035
    .local v2, "timeSinceLast":J
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2b

    const/4 v1, 0x1

    :cond_2b
    return v1
.end method

.method protected configAlarmOptimize(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .registers 7
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "args"  # [Ljava/lang/String;
    .param p3, "opti"  # I

    .line 5250
    array-length v0, p2

    const-string v1, "  Invalid argument!"

    if-lt p3, v0, :cond_9

    .line 5251
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_30

    .line 5253
    :cond_9
    aget-object v0, p2, p3

    const-string/jumbo v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 5254
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmOptimize:Lcom/android/server/AlarmOptimizeStrategy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmOptimizeStrategy;->disableAlarmOptimize(Z)V

    goto :goto_30

    .line 5255
    :cond_1b
    aget-object v0, p2, p3

    const-string/jumbo v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 5256
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmOptimize:Lcom/android/server/AlarmOptimizeStrategy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmOptimizeStrategy;->disableAlarmOptimize(Z)V

    goto :goto_30

    .line 5258
    :cond_2d
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5261
    :goto_30
    return-void
.end method

.method currentNonWakeupFuzzLocked(J)J
    .registers 7
    .param p1, "nowELAPSED"  # J

    .line 3994
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v0, p1, v0

    .line 3995
    .local v0, "timeSinceOn":J
    const-wide/32 v2, 0x493e0

    cmp-long v2, v0, v2

    if-gez v2, :cond_f

    .line 3997
    const-wide/32 v2, 0x1d4c0

    return-wide v2

    .line 3998
    :cond_f
    const-wide/32 v2, 0x1b7740

    cmp-long v2, v0, v2

    if-gez v2, :cond_1a

    .line 4000
    const-wide/32 v2, 0xdbba0

    return-wide v2

    .line 4003
    :cond_1a
    const-wide/32 v2, 0x36ee80

    return-wide v2
.end method

.method deliverAlarmsLocked(Ljava/util/ArrayList;J)V
    .registers 15
    .param p2, "nowELAPSED"  # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;J)V"
        }
    .end annotation

    .line 4039
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const-string v0, "AlarmManager"

    iput-wide p2, p0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    .line 4040
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_86

    .line 4041
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    .line 4042
    .local v2, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget v3, v2, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x1

    if-eqz v3, :cond_1a

    move v3, v4

    goto :goto_1b

    :cond_1a
    const/4 v3, 0x0

    .line 4043
    .local v3, "allowWhileIdle":Z
    :goto_1b
    iget-boolean v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    const-wide/32 v6, 0x20000

    if-eqz v5, :cond_39

    .line 4044
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dispatch wakeup alarm to "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v7, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_4f

    .line 4046
    :cond_39
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dispatch non-wakeup alarm to "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v7, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4050
    :goto_4f
    :try_start_4f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sending alarm "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4053
    iget-object v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v8, v2, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iget v9, v2, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    iget-object v10, v2, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    invoke-static {v5, v8, v9, v10}, Landroid/app/ActivityManager;->noteAlarmStart(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 4056
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/AlarmManagerService$DeliveryTracker;

    invoke-virtual {v5, v2, p2, p3, v3}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->deliverLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V
    :try_end_74
    .catch Ljava/lang/RuntimeException; {:try_start_4f .. :try_end_74} :catch_75

    .line 4059
    goto :goto_7b

    .line 4057
    :catch_75
    move-exception v5

    .line 4058
    .local v5, "e":Ljava/lang/RuntimeException;
    const-string v8, "Failure sending alarm."

    invoke-static {v0, v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4060
    .end local v5  # "e":Ljava/lang/RuntimeException;
    :goto_7b
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 4061
    iget v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {p0, v5, v4}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 4040
    .end local v2  # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v3  # "allowWhileIdle":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4063
    .end local v1  # "i":I
    :cond_86
    return-void
.end method

.method dumpImpl(Ljava/io/PrintWriter;)V
    .registers 33
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 2328
    move-object/from16 v1, p0

    move-object/from16 v10, p1

    iget-object v11, v1, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 2329
    :try_start_7
    const-string v2, "Current Alarm Manager state:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2330
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    const-string v3, "  "

    invoke-virtual {v2, v10, v3}, Lcom/android/server/AlarmManagerService$Constants;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2331
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2333
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    if-eqz v2, :cond_24

    .line 2334
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    const-string v3, "  "

    invoke-virtual {v2, v10, v3}, Lcom/android/server/AppStateTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2335
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2338
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

    .line 2339
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2341
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v2

    move-wide v12, v2

    .line 2342
    .local v12, "nowELAPSED":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-wide v14, v2

    .line 2343
    .local v14, "nowUPTIME":J
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v2

    move-wide v7, v2

    .line 2344
    .local v7, "nowRTC":J
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v9, v2

    .line 2346
    .local v9, "sdf":Ljava/text/SimpleDateFormat;
    const-string v2, "  nowRTC="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    .line 2347
    const-string v2, "="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2348
    const-string v2, " nowELAPSED="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    .line 2349
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2350
    const-string v2, "  mLastTimeChangeClockTime="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    invoke-virtual {v10, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 2351
    const-string v2, "="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2352
    const-string v2, "  mLastTimeChangeRealtime="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    invoke-virtual {v10, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 2353
    const-string v2, "  mLastTickReceived="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService;->mLastTickReceived:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2354
    const-string v2, "  mLastTickSet="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService;->mLastTickSet:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2355
    const-string v2, "  mLastTickAdded="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService;->mLastTickAdded:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2356
    const-string v2, "  mLastTickRemoved="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService;->mLastTickRemoved:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2359
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2360
    const-string v2, "  Recent TIME_TICK history:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2361
    iget v2, v1, Lcom/android/server/AlarmManagerService;->mNextTickHistory:I

    .line 2363
    .local v2, "i":I
    :goto_fa
    add-int/lit8 v2, v2, -0x1

    .line 2364
    if-gez v2, :cond_100

    const/16 v2, 0x9

    .line 2365
    :cond_100
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mTickHistory:[J

    aget-wide v3, v3, v2

    .line 2366
    .local v3, "time":J
    const-string v5, "    "

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2367
    const-wide/16 v5, 0x0

    cmp-long v16, v3, v5

    if-lez v16, :cond_11f

    .line 2368
    new-instance v5, Ljava/util/Date;

    sub-long v18, v12, v3

    move-wide/from16 v20, v3

    .end local v3  # "time":J
    .local v20, "time":J
    sub-long v3, v7, v18

    invoke-direct {v5, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    goto :goto_123

    .line 2369
    .end local v20  # "time":J
    .restart local v3  # "time":J
    :cond_11f
    move-wide/from16 v20, v3

    .end local v3  # "time":J
    .restart local v20  # "time":J
    const-string v3, "-"

    .line 2367
    :goto_123
    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2370
    .end local v20  # "time":J
    iget v3, v1, Lcom/android/server/AlarmManagerService;->mNextTickHistory:I

    if-ne v2, v3, :cond_7f0

    .line 2373
    .end local v2  # "i":I
    const-class v2, Lcom/android/server/SystemServiceManager;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/SystemServiceManager;

    move-object/from16 v18, v2

    .line 2374
    .local v18, "ssm":Lcom/android/server/SystemServiceManager;
    if-eqz v18, :cond_17d

    .line 2375
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2376
    const-string v2, "  RuntimeStarted="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2377
    new-instance v2, Ljava/util/Date;

    sub-long v3, v7, v12

    .line 2378
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/SystemServiceManager;->getRuntimeStartElapsedTime()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 2377
    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2379
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/SystemServiceManager;->isRuntimeRestarted()Z

    move-result v2

    if-eqz v2, :cond_15c

    .line 2380
    const-string v2, "  (Runtime restarted)"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2382
    :cond_15c
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2383
    const-string v2, "  Runtime uptime (elapsed): "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2384
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/SystemServiceManager;->getRuntimeStartElapsedTime()J

    move-result-wide v2

    invoke-static {v12, v13, v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2385
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2386
    const-string v2, "  Runtime uptime (uptime): "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2387
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/SystemServiceManager;->getRuntimeStartUptime()J

    move-result-wide v2

    invoke-static {v14, v15, v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2388
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2391
    :cond_17d
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2392
    iget-boolean v2, v1, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-nez v2, :cond_193

    .line 2393
    const-string v2, "  Time since non-interactive: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2394
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v2, v12, v2

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2395
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2397
    :cond_193
    const-string v2, "  Max wakeup delay: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2398
    invoke-virtual {v1, v12, v13}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v2

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2399
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2400
    const-string v2, "  Time since last dispatch: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2401
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v2, v12, v2

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2402
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2403
    const-string v2, "  Next non-wakeup delivery time: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2404
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    invoke-static {v2, v3, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2405
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2407
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    sub-long v4, v7, v12

    add-long v5, v2, v4

    .line 2408
    .local v5, "nextWakeupRTC":J
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    sub-long v19, v7, v12

    add-long v3, v2, v19

    .line 2409
    .local v3, "nextNonWakeupRTC":J
    const-string v2, "  Next non-wakeup alarm: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2410
    move-wide/from16 v19, v14

    .end local v14  # "nowUPTIME":J
    .local v19, "nowUPTIME":J
    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    invoke-static {v14, v15, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2411
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    invoke-virtual {v10, v14, v15}, Ljava/io/PrintWriter;->print(J)V

    .line 2412
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2413
    const-string v2, "    set at "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeUpSetAt:J

    invoke-static {v14, v15, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2414
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2415
    const-string v2, "  Next wakeup alarm: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    invoke-static {v14, v15, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2416
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    invoke-virtual {v10, v14, v15}, Ljava/io/PrintWriter;->print(J)V

    .line 2417
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2418
    const-string v2, "    set at "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mNextWakeUpSetAt:J

    invoke-static {v14, v15, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2419
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2421
    const-string v2, "  Next kernel non-wakeup alarm: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2422
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    const/4 v14, 0x3

    invoke-virtual {v2, v14}, Lcom/android/server/AlarmManagerService$Injector;->getNextAlarm(I)J

    move-result-wide v14

    invoke-static {v14, v15, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2423
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2424
    const-string v2, "  Next kernel wakeup alarm: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2425
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    const/4 v14, 0x2

    invoke-virtual {v2, v14}, Lcom/android/server/AlarmManagerService$Injector;->getNextAlarm(I)J

    move-result-wide v14

    invoke-static {v14, v15, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2426
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2428
    const-string v2, "  Last wakeup: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mLastWakeup:J

    invoke-static {v14, v15, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2429
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mLastWakeup:J

    invoke-virtual {v10, v14, v15}, Ljava/io/PrintWriter;->println(J)V

    .line 2430
    const-string v2, "  Last trigger: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mLastTrigger:J

    invoke-static {v14, v15, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2431
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mLastTrigger:J

    invoke-virtual {v10, v14, v15}, Ljava/io/PrintWriter;->println(J)V

    .line 2432
    const-string v2, "  Num time change events: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2434
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2435
    const-string v2, "  Next alarm clock information: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2436
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    move-object v14, v2

    .line 2437
    .local v14, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    const/4 v15, 0x0

    move v2, v15

    .restart local v2  # "i":I
    :goto_296
    iget-object v15, v1, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-ge v2, v15, :cond_2af

    .line 2438
    iget-object v15, v1, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v15, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 2437
    add-int/lit8 v2, v2, 0x1

    const/4 v15, 0x0

    goto :goto_296

    .line 2440
    .end local v2  # "i":I
    :cond_2af
    const/4 v2, 0x0

    move v15, v2

    .local v15, "i":I
    :goto_2b1
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v15, v2, :cond_2c9

    .line 2441
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v15}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 2440
    add-int/lit8 v15, v15, 0x1

    goto :goto_2b1

    .line 2443
    .end local v15  # "i":I
    :cond_2c9
    invoke-virtual {v14}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2cd
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_342

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 2444
    .local v15, "user":I
    move-object/from16 v22, v2

    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v2, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 2445
    .local v2, "next":Landroid/app/AlarmManager$AlarmClockInfo;
    if-eqz v2, :cond_2ee

    invoke-virtual {v2}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v23

    goto :goto_2f0

    :cond_2ee
    const-wide/16 v23, 0x0

    :goto_2f0
    move-wide/from16 v25, v23

    .line 2446
    .local v25, "time":J
    move-object/from16 v23, v2

    .end local v2  # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    .local v23, "next":Landroid/app/AlarmManager$AlarmClockInfo;
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v15}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    .line 2447
    .local v2, "pendingSend":Z
    move-wide/from16 v27, v3

    .end local v3  # "nextNonWakeupRTC":J
    .local v27, "nextNonWakeupRTC":J
    const-string v3, "    user:"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v15}, Ljava/io/PrintWriter;->print(I)V

    .line 2448
    const-string v3, " pendingSend:"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 2449
    const-string v3, " time:"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v25

    .end local v25  # "time":J
    .local v3, "time":J
    invoke-virtual {v10, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 2450
    const-wide/16 v16, 0x0

    cmp-long v24, v3, v16

    if-lez v24, :cond_338

    .line 2451
    move/from16 v24, v2

    .end local v2  # "pendingSend":Z
    .local v24, "pendingSend":Z
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2452
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v3, v4, v7, v8, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto :goto_33a

    .line 2450
    .end local v24  # "pendingSend":Z
    .restart local v2  # "pendingSend":Z
    :cond_338
    move/from16 v24, v2

    .line 2454
    .end local v2  # "pendingSend":Z
    .restart local v24  # "pendingSend":Z
    :goto_33a
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2455
    .end local v3  # "time":J
    .end local v15  # "user":I
    .end local v23  # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v24  # "pendingSend":Z
    move-object/from16 v2, v22

    move-wide/from16 v3, v27

    goto :goto_2cd

    .line 2456
    .end local v27  # "nextNonWakeupRTC":J
    .local v3, "nextNonWakeupRTC":J
    :cond_342
    move-wide/from16 v27, v3

    const-wide/16 v16, 0x0

    .end local v3  # "nextNonWakeupRTC":J
    .restart local v27  # "nextNonWakeupRTC":J
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3b2

    .line 2457
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2458
    const-string v2, "  Pending alarm batches: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2459
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2460
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_365
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Batch;

    move-object v4, v2

    .line 2461
    .local v4, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v2, 0x3a

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(C)V

    .line 2462
    iget-object v3, v4, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    const-string v22, "    "

    move-object/from16 v2, p1

    move-wide/from16 v23, v27

    .end local v27  # "nextNonWakeupRTC":J
    .local v23, "nextNonWakeupRTC":J
    move-object/from16 v25, v4

    .end local v4  # "b":Lcom/android/server/AlarmManagerService$Batch;
    .local v25, "b":Lcom/android/server/AlarmManagerService$Batch;
    move-object/from16 v4, v22

    move-object/from16 v22, v14

    move-object/from16 v26, v15

    move-wide/from16 v14, v16

    move-wide/from16 v16, v5

    .end local v5  # "nextWakeupRTC":J
    .end local v14  # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .local v16, "nextWakeupRTC":J
    .local v22, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    move-wide v5, v12

    move-wide/from16 v27, v7

    .end local v7  # "nowRTC":J
    .local v27, "nowRTC":J
    move-object/from16 v29, v9

    .end local v9  # "sdf":Ljava/text/SimpleDateFormat;
    .local v29, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static/range {v2 .. v9}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 2463
    .end local v25  # "b":Lcom/android/server/AlarmManagerService$Batch;
    move-wide/from16 v5, v16

    move-wide/from16 v7, v27

    move-object/from16 v9, v29

    move-wide/from16 v16, v14

    move-object/from16 v14, v22

    move-wide/from16 v27, v23

    move-object/from16 v15, v26

    goto :goto_365

    .line 2460
    .end local v16  # "nextWakeupRTC":J
    .end local v22  # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v23  # "nextNonWakeupRTC":J
    .end local v29  # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v5  # "nextWakeupRTC":J
    .restart local v7  # "nowRTC":J
    .restart local v9  # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v14  # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .local v27, "nextNonWakeupRTC":J
    :cond_3a5
    move-object/from16 v29, v9

    move-object/from16 v22, v14

    move-wide/from16 v14, v16

    move-wide/from16 v23, v27

    move-wide/from16 v16, v5

    move-wide/from16 v27, v7

    .end local v5  # "nextWakeupRTC":J
    .end local v7  # "nowRTC":J
    .end local v9  # "sdf":Ljava/text/SimpleDateFormat;
    .end local v14  # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v16  # "nextWakeupRTC":J
    .restart local v22  # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v23  # "nextNonWakeupRTC":J
    .local v27, "nowRTC":J
    .restart local v29  # "sdf":Ljava/text/SimpleDateFormat;
    goto :goto_3be

    .line 2456
    .end local v16  # "nextWakeupRTC":J
    .end local v22  # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v23  # "nextNonWakeupRTC":J
    .end local v29  # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v5  # "nextWakeupRTC":J
    .restart local v7  # "nowRTC":J
    .restart local v9  # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v14  # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .local v27, "nextNonWakeupRTC":J
    :cond_3b2
    move-object/from16 v29, v9

    move-object/from16 v22, v14

    move-wide/from16 v14, v16

    move-wide/from16 v23, v27

    move-wide/from16 v16, v5

    move-wide/from16 v27, v7

    .line 2465
    .end local v5  # "nextWakeupRTC":J
    .end local v7  # "nowRTC":J
    .end local v9  # "sdf":Ljava/text/SimpleDateFormat;
    .end local v14  # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v16  # "nextWakeupRTC":J
    .restart local v22  # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v23  # "nextNonWakeupRTC":J
    .local v27, "nowRTC":J
    .restart local v29  # "sdf":Ljava/text/SimpleDateFormat;
    :goto_3be
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2466
    const-string v2, "  Pending user blocked background alarms: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2467
    const/4 v2, 0x0

    .line 2468
    .local v2, "blocked":Z
    const/4 v3, 0x0

    move v4, v3

    move/from16 v25, v2

    move v9, v4

    .end local v2  # "blocked":Z
    .local v9, "i":I
    .local v25, "blocked":Z
    :goto_3cc
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v9, v2, :cond_3fe

    .line 2469
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v26, v2

    .line 2470
    .local v26, "blockedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v26, :cond_3f9

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3f9

    .line 2471
    const/16 v25, 0x1

    .line 2472
    const-string v4, "    "

    move-object/from16 v2, p1

    move-object/from16 v3, v26

    move-wide v5, v12

    move-wide/from16 v7, v27

    move/from16 v30, v9

    .end local v9  # "i":I
    .local v30, "i":I
    move-object/from16 v9, v29

    invoke-static/range {v2 .. v9}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    goto :goto_3fb

    .line 2470
    .end local v30  # "i":I
    .restart local v9  # "i":I
    :cond_3f9
    move/from16 v30, v9

    .line 2468
    .end local v9  # "i":I
    .end local v26  # "blockedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .restart local v30  # "i":I
    :goto_3fb
    add-int/lit8 v9, v30, 0x1

    .end local v30  # "i":I
    .restart local v9  # "i":I
    goto :goto_3cc

    :cond_3fe
    move/from16 v30, v9

    .line 2475
    .end local v9  # "i":I
    if-nez v25, :cond_407

    .line 2476
    const-string v2, "    none"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2478
    :cond_407
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2479
    const-string v2, "  Pending alarms per uid: ["

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2480
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_411
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v3, v2, :cond_43a

    .line 2481
    if-lez v3, :cond_420

    .line 2482
    const-string v2, ", "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2484
    :cond_420
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-static {v10, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2485
    const-string v2, ":"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2486
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2480
    add-int/lit8 v3, v3, 0x1

    goto :goto_411

    .line 2488
    .end local v3  # "i":I
    :cond_43a
    const-string v2, "]"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2489
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2491
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/AlarmManagerService$AppWakeupHistory;

    const-string v3, "  "

    invoke-virtual {v2, v10, v3, v12, v13}, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 2493
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-nez v2, :cond_455

    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_493

    .line 2494
    :cond_455
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2495
    const-string v2, "    Idle mode state:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2496
    const-string v2, "      Idling until: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2497
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v2, :cond_47a

    .line 2498
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2499
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    const-string v4, "        "

    move-object/from16 v3, p1

    move-wide v5, v12

    move-wide/from16 v7, v27

    move-object/from16 v9, v29

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    goto :goto_480

    .line 2501
    :cond_47a
    const-string/jumbo v2, "null"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2503
    :goto_480
    const-string v2, "      Pending alarms:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2504
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    const-string v4, "      "

    move-object/from16 v2, p1

    move-wide v5, v12

    move-wide/from16 v7, v27

    move-object/from16 v9, v29

    invoke-static/range {v2 .. v9}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 2506
    :cond_493
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v2, :cond_4b2

    .line 2507
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2508
    const-string v2, "  Next wake from idle: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2509
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    const-string v4, "    "

    move-object/from16 v3, p1

    move-wide v5, v12

    move-wide/from16 v7, v27

    move-object/from16 v9, v29

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 2512
    :cond_4b2
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2513
    const-string v2, "  Past-due non-wakeup alarms: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2514
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4da

    .line 2515
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2516
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    const-string v4, "    "

    move-object/from16 v2, p1

    move-wide v5, v12

    move-wide/from16 v7, v27

    move-object/from16 v9, v29

    invoke-static/range {v2 .. v9}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    goto :goto_4df

    .line 2518
    :cond_4da
    const-string v2, "(none)"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2520
    :goto_4df
    const-string v2, "    Number of delayed alarms: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2521
    const-string v2, ", total delay time: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2522
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2523
    const-string v2, "    Max delay time: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2524
    const-string v2, ", max non-interactive time: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2525
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2526
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2528
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2529
    const-string v2, "  Broadcast ref count: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2530
    const-string v2, "  PendingIntent send count: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mSendCount:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2531
    const-string v2, "  PendingIntent finish count: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mSendFinishCount:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2532
    const-string v2, "  Listener send count: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mListenerCount:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2533
    const-string v2, "  Listener finish count: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mListenerFinishCount:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2534
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2536
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_578

    .line 2537
    const-string v2, "Outstanding deliveries:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2538
    const/4 v2, 0x0

    move v3, v2

    .restart local v3  # "i":I
    :goto_554
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_575

    .line 2539
    const-string v2, "   #"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2540
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2538
    add-int/lit8 v3, v3, 0x1

    goto :goto_554

    .line 2542
    .end local v3  # "i":I
    :cond_575
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2545
    :cond_578
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v2}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    if-lez v2, :cond_5cc

    .line 2546
    const-string v2, "  Last allow while idle dispatch times:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2547
    const/4 v2, 0x0

    move v3, v2

    .restart local v3  # "i":I
    :goto_587
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v2}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    if-ge v3, v2, :cond_5cc

    .line 2548
    const-string v2, "    UID "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2549
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v2

    .line 2550
    .local v2, "uid":I
    invoke-static {v10, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2551
    const-string v4, ": "

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2552
    iget-object v4, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    .line 2553
    .local v4, "lastTime":J
    invoke-static {v4, v5, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2555
    invoke-direct {v1, v2}, Lcom/android/server/AlarmManagerService;->getWhileIdleMinIntervalLocked(I)J

    move-result-wide v6

    .line 2556
    .local v6, "minInterval":J
    const-string v8, "  Next allowed:"

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2557
    add-long v8, v4, v6

    invoke-static {v8, v9, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2558
    const-string v8, " ("

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2559
    invoke-static {v6, v7, v14, v15, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2560
    const-string v8, ")"

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2562
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2547
    .end local v2  # "uid":I
    .end local v4  # "lastTime":J
    .end local v6  # "minInterval":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_587

    .line 2566
    .end local v3  # "i":I
    :cond_5cc
    const-string v2, "  mUseAllowWhileIdleShortTime: ["

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2567
    const/4 v2, 0x0

    move v3, v2

    .restart local v3  # "i":I
    :goto_5d3
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v3, v2, :cond_5f4

    .line 2568
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_5f1

    .line 2569
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-static {v10, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2570
    const-string v2, " "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2567
    :cond_5f1
    add-int/lit8 v3, v3, 0x1

    goto :goto_5d3

    .line 2573
    .end local v3  # "i":I
    :cond_5f4
    const-string v2, "]"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2574
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2576
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-string v3, "  Recent problems"

    const-string v4, "    "

    invoke-virtual {v2, v10, v3, v4}, Lcom/android/internal/util/LocalLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_60b

    .line 2577
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2580
    :cond_60b
    const/16 v2, 0xa

    new-array v2, v2, [Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2581
    .local v2, "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    new-instance v3, Lcom/android/server/AlarmManagerService$4;

    invoke-direct {v3, v1}, Lcom/android/server/AlarmManagerService$4;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 2592
    .local v3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/4 v4, 0x0

    .line 2594
    .local v4, "len":I
    const/4 v5, 0x0

    move v6, v5

    .local v6, "iu":I
    :goto_617
    iget-object v5, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v6, v5, :cond_68d

    .line 2595
    iget-object v5, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 2596
    .local v5, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    const/4 v7, 0x0

    move v8, v7

    .local v8, "ip":I
    :goto_629
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v8, v7, :cond_688

    .line 2597
    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2598
    .local v7, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    const/4 v9, 0x0

    move v14, v9

    .local v14, "is":I
    :goto_637
    iget-object v9, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v14, v9, :cond_681

    .line 2599
    iget-object v9, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v9, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2600
    .local v9, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    if-lez v4, :cond_64f

    .line 2601
    const/4 v15, 0x0

    invoke-static {v2, v15, v4, v9, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v26

    goto :goto_651

    :cond_64f
    const/16 v26, 0x0

    :goto_651
    move/from16 v15, v26

    .line 2602
    .local v15, "pos":I
    if-gez v15, :cond_65b

    .line 2603
    move-object/from16 v26, v5

    .end local v5  # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .local v26, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    neg-int v5, v15

    add-int/lit8 v15, v5, -0x1

    goto :goto_65d

    .line 2602
    .end local v26  # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .restart local v5  # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_65b
    move-object/from16 v26, v5

    .line 2605
    .end local v5  # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .restart local v26  # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :goto_65d
    array-length v5, v2

    if-ge v15, v5, :cond_678

    .line 2606
    array-length v5, v2

    sub-int/2addr v5, v15

    add-int/lit8 v5, v5, -0x1

    .line 2607
    .local v5, "copylen":I
    if-lez v5, :cond_66e

    .line 2608
    move-object/from16 v30, v7

    .end local v7  # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .local v30, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    add-int/lit8 v7, v15, 0x1

    invoke-static {v2, v15, v2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_670

    .line 2607
    .end local v30  # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v7  # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :cond_66e
    move-object/from16 v30, v7

    .line 2610
    .end local v7  # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v30  # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :goto_670
    aput-object v9, v2, v15

    .line 2611
    array-length v7, v2

    if-ge v4, v7, :cond_67a

    .line 2612
    add-int/lit8 v4, v4, 0x1

    goto :goto_67a

    .line 2605
    .end local v5  # "copylen":I
    .end local v30  # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v7  # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :cond_678
    move-object/from16 v30, v7

    .line 2598
    .end local v7  # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v9  # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v15  # "pos":I
    .restart local v30  # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :cond_67a
    :goto_67a
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v5, v26

    move-object/from16 v7, v30

    goto :goto_637

    .end local v26  # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v30  # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .local v5, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .restart local v7  # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :cond_681
    move-object/from16 v26, v5

    move-object/from16 v30, v7

    .line 2596
    .end local v5  # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v7  # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v14  # "is":I
    .restart local v26  # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    add-int/lit8 v8, v8, 0x1

    goto :goto_629

    .end local v26  # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .restart local v5  # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_688
    move-object/from16 v26, v5

    .line 2594
    .end local v5  # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v8  # "ip":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_617

    .line 2618
    .end local v6  # "iu":I
    :cond_68d
    if-lez v4, :cond_6eb

    .line 2619
    const-string v5, "  Top Alarms:"

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2620
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_695
    if-ge v5, v4, :cond_6eb

    .line 2621
    aget-object v6, v2, v5

    .line 2622
    .local v6, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    const-string v7, "    "

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2623
    iget v7, v6, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v7, :cond_6a7

    const-string v7, "*ACTIVE* "

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2624
    :cond_6a7
    iget-wide v7, v6, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    invoke-static {v7, v8, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2625
    const-string v7, " running, "

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v6, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 2626
    const-string v7, " wakeups, "

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v6, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 2627
    const-string v7, " alarms: "

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget v7, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    invoke-static {v10, v7}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2628
    const-string v7, ":"

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v7, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2629
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2630
    const-string v7, "      "

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/android/server/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2631
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2620
    .end local v6  # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    add-int/lit8 v5, v5, 0x1

    goto :goto_695

    .line 2635
    .end local v5  # "i":I
    :cond_6eb
    const-string v5, " "

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2636
    const-string v5, "  Alarm Stats:"

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2637
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2638
    .local v5, "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/4 v6, 0x0

    move v7, v6

    .local v7, "iu":I
    :goto_6fc
    iget-object v6, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v7, v6, :cond_7db

    .line 2639
    iget-object v6, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 2640
    .local v6, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    const/4 v8, 0x0

    move v9, v8

    .local v9, "ip":I
    :goto_70e
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v9, v8, :cond_7d3

    .line 2641
    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2642
    .local v8, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    const-string v14, "  "

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2643
    iget v14, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-lez v14, :cond_728

    const-string v14, "*ACTIVE* "

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2644
    :cond_728
    iget v14, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    invoke-static {v10, v14}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2645
    const-string v14, ":"

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2646
    iget-object v14, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2647
    const-string v14, " "

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    invoke-static {v14, v15, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2648
    const-string v14, " running, "

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v14, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 2649
    const-string v14, " wakeups:"

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2650
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2651
    const/4 v14, 0x0

    move v15, v14

    .local v15, "is":I
    :goto_755
    iget-object v14, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v15, v14, :cond_76b

    .line 2652
    iget-object v14, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v14, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AlarmManagerService$FilterStats;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2651
    add-int/lit8 v15, v15, 0x1

    goto :goto_755

    .line 2654
    .end local v15  # "is":I
    :cond_76b
    invoke-static {v5, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2655
    const/4 v14, 0x0

    move v15, v14

    .local v15, "i":I
    :goto_770
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v15, v14, :cond_7cb

    .line 2656
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2657
    .local v14, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    move-object/from16 v26, v2

    .end local v2  # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .local v26, "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    const-string v2, "    "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2658
    iget v2, v14, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v2, :cond_78c

    const-string v2, "*ACTIVE* "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2659
    :cond_78c
    move-object/from16 v30, v3

    .end local v3  # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .local v30, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    iget-wide v2, v14, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2660
    const-string v2, " "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v14, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2661
    const-string v2, " wakes "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v14, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2662
    const-string v2, " alarms, last "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2663
    iget-wide v2, v14, Lcom/android/server/AlarmManagerService$FilterStats;->lastTime:J

    invoke-static {v2, v3, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2664
    const-string v2, ":"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2665
    const-string v2, "      "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2666
    iget-object v2, v14, Lcom/android/server/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2667
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2655
    .end local v14  # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v26

    move-object/from16 v3, v30

    const/4 v14, 0x0

    goto :goto_770

    .end local v26  # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v30  # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v2  # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v3  # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    :cond_7cb
    move-object/from16 v26, v2

    move-object/from16 v30, v3

    .line 2640
    .end local v2  # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v3  # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v8  # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v15  # "i":I
    .restart local v26  # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v30  # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_70e

    .end local v26  # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v30  # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v2  # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v3  # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    :cond_7d3
    move-object/from16 v26, v2

    move-object/from16 v30, v3

    .line 2638
    .end local v2  # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v3  # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v6  # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v9  # "ip":I
    .restart local v26  # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v30  # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_6fc

    .end local v26  # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v30  # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v2  # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v3  # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    :cond_7db
    move-object/from16 v26, v2

    move-object/from16 v30, v3

    .line 2671
    .end local v2  # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v3  # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v7  # "iu":I
    .restart local v26  # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v30  # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2672
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const-string v3, "  "

    invoke-virtual {v2, v10, v3}, Lcom/android/internal/util/StatLogger;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2720
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAlarmOptimize:Lcom/android/server/AlarmOptimizeStrategy;

    invoke-virtual {v2, v10}, Lcom/android/server/AlarmOptimizeStrategy;->dump(Ljava/io/PrintWriter;)V

    .line 2722
    .end local v4  # "len":I
    .end local v5  # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v12  # "nowELAPSED":J
    .end local v16  # "nextWakeupRTC":J
    .end local v18  # "ssm":Lcom/android/server/SystemServiceManager;
    .end local v19  # "nowUPTIME":J
    .end local v22  # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v23  # "nextNonWakeupRTC":J
    .end local v25  # "blocked":Z
    .end local v26  # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v27  # "nowRTC":J
    .end local v29  # "sdf":Ljava/text/SimpleDateFormat;
    .end local v30  # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    monitor-exit v11

    .line 2723
    return-void

    .line 2370
    .local v2, "i":I
    .local v7, "nowRTC":J
    .local v9, "sdf":Ljava/text/SimpleDateFormat;
    .restart local v12  # "nowELAPSED":J
    .local v14, "nowUPTIME":J
    :cond_7f0
    move-wide/from16 v27, v7

    move-object/from16 v29, v9

    move-wide/from16 v19, v14

    .end local v7  # "nowRTC":J
    .end local v9  # "sdf":Ljava/text/SimpleDateFormat;
    .end local v14  # "nowUPTIME":J
    .restart local v19  # "nowUPTIME":J
    .restart local v27  # "nowRTC":J
    .restart local v29  # "sdf":Ljava/text/SimpleDateFormat;
    goto/16 :goto_fa

    .line 2722
    .end local v2  # "i":I
    .end local v12  # "nowELAPSED":J
    .end local v19  # "nowUPTIME":J
    .end local v27  # "nowRTC":J
    .end local v29  # "sdf":Ljava/text/SimpleDateFormat;
    :catchall_7f8
    move-exception v0

    move-object v2, v0

    monitor-exit v11
    :try_end_7fb
    .catchall {:try_start_7 .. :try_end_7fb} :catchall_7f8

    throw v2
.end method

.method dumpProto(Ljava/io/FileDescriptor;)V
    .registers 28
    .param p1, "fd"  # Ljava/io/FileDescriptor;

    .line 2726
    move-object/from16 v1, p0

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v11, v0

    .line 2728
    .local v11, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v12, v1, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2729
    :try_start_d
    iget-object v0, v1, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v3

    move-wide v13, v3

    .line 2730
    .local v13, "nowRTC":J
    iget-object v0, v1, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v3

    move-wide v9, v3

    .line 2731
    .local v9, "nowElapsed":J
    const-wide v3, 0x10300000001L

    invoke-virtual {v11, v3, v4, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2732
    const-wide v7, 0x10300000002L

    invoke-virtual {v11, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2733
    iget-wide v3, v1, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    const-wide v5, 0x10300000003L

    invoke-virtual {v11, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2735
    const-wide v3, 0x10300000004L

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2738
    iget-object v0, v1, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    const-wide v3, 0x10b00000005L

    invoke-virtual {v0, v11, v3, v4}, Lcom/android/server/AlarmManagerService$Constants;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2740
    iget-object v0, v1, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    if-eqz v0, :cond_57

    .line 2741
    iget-object v0, v1, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    const-wide v3, 0x10b00000006L

    invoke-virtual {v0, v11, v3, v4}, Lcom/android/server/AppStateTracker;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2745
    :cond_57
    const-wide v3, 0x10800000007L

    iget-boolean v0, v1, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    invoke-virtual {v11, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2746
    iget-boolean v0, v1, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-nez v0, :cond_95

    .line 2748
    const-wide v3, 0x10300000008L

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v7, v9, v7

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2750
    const-wide v3, 0x10300000009L

    .line 2751
    invoke-virtual {v1, v9, v10}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v7

    .line 2750
    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2752
    const-wide v3, 0x1030000000aL

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v7, v9, v7

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2754
    const-wide v3, 0x1030000000bL

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    sub-long v7, v9, v7

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2758
    :cond_95
    const-wide v3, 0x1030000000cL

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    sub-long/2addr v7, v9

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2760
    const-wide v3, 0x1030000000dL

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    sub-long/2addr v7, v9

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2762
    const-wide v3, 0x1030000000eL

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mLastWakeup:J

    sub-long v7, v9, v7

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2764
    const-wide v3, 0x1030000000fL

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mNextWakeUpSetAt:J

    sub-long v7, v9, v7

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2766
    const-wide v3, 0x10300000010L

    iget v0, v1, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    invoke-virtual {v11, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2768
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 2769
    .local v0, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v7, v3

    .line 2770
    .local v7, "nextAlarmClockForUserSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_da
    if-ge v3, v7, :cond_ec

    .line 2771
    iget-object v4, v1, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 2770
    add-int/lit8 v3, v3, 0x1

    goto :goto_da

    .line 2773
    .end local v3  # "i":I
    :cond_ec
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 2774
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    move v8, v3

    .line 2775
    .local v8, "pendingSendNextAlarmClockChangedForUserSize":I
    const/4 v3, 0x0

    .restart local v3  # "i":I
    :goto_f4
    if-ge v3, v8, :cond_106

    .line 2776
    iget-object v4, v1, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 2775
    add-int/lit8 v3, v3, 0x1

    goto :goto_f4

    .line 2778
    .end local v3  # "i":I
    :cond_106
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2779
    .local v4, "user":I
    iget-object v15, v1, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 2780
    .local v15, "next":Landroid/app/AlarmManager$AlarmClockInfo;
    if-eqz v15, :cond_129

    invoke-virtual {v15}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v21

    goto :goto_12b

    :cond_129
    const-wide/16 v21, 0x0

    :goto_12b
    move-wide/from16 v23, v21

    .line 2781
    .local v23, "time":J
    iget-object v5, v1, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    .line 2782
    .local v5, "pendingSend":Z
    move-object v6, v3

    const-wide v2, 0x20b00000012L

    invoke-virtual {v11, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 2783
    .local v2, "aToken":J
    move-object/from16 v25, v6

    move/from16 v16, v7

    const-wide v6, 0x10500000001L

    .end local v7  # "nextAlarmClockForUserSize":I
    .local v16, "nextAlarmClockForUserSize":I
    invoke-virtual {v11, v6, v7, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2784
    const-wide v6, 0x10800000002L

    invoke-virtual {v11, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2785
    move-wide/from16 v17, v13

    move-wide/from16 v6, v23

    const-wide v13, 0x10300000003L

    .end local v13  # "nowRTC":J
    .end local v23  # "time":J
    .local v6, "time":J
    .local v17, "nowRTC":J
    invoke-virtual {v11, v13, v14, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2786
    invoke-virtual {v11, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2787
    .end local v2  # "aToken":J
    .end local v4  # "user":I
    .end local v5  # "pendingSend":Z
    .end local v6  # "time":J
    .end local v15  # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    move-object/from16 v2, p1

    move-wide v5, v13

    move/from16 v7, v16

    move-wide/from16 v13, v17

    move-object/from16 v3, v25

    goto :goto_10a

    .line 2788
    .end local v16  # "nextAlarmClockForUserSize":I
    .end local v17  # "nowRTC":J
    .restart local v7  # "nextAlarmClockForUserSize":I
    .restart local v13  # "nowRTC":J
    :cond_16a
    move/from16 v16, v7

    move-wide/from16 v17, v13

    const-wide v6, 0x10500000001L

    const-wide v13, 0x10300000003L

    .end local v7  # "nextAlarmClockForUserSize":I
    .end local v13  # "nowRTC":J
    .restart local v16  # "nextAlarmClockForUserSize":I
    .restart local v17  # "nowRTC":J
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1ac

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Batch;

    .line 2789
    .local v3, "b":Lcom/android/server/AlarmManagerService$Batch;
    const-wide v21, 0x20b00000013L

    move-object v4, v11

    move-wide v13, v6

    move-wide/from16 v5, v21

    move/from16 v15, v16

    move/from16 v16, v8

    .end local v8  # "pendingSendNextAlarmClockChangedForUserSize":I
    .local v15, "nextAlarmClockForUserSize":I
    .local v16, "pendingSendNextAlarmClockChangedForUserSize":I
    move-wide v7, v9

    move-wide/from16 v19, v9

    .end local v9  # "nowElapsed":J
    .local v19, "nowElapsed":J
    move-wide/from16 v9, v17

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/AlarmManagerService$Batch;->writeToProto(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 2791
    .end local v3  # "b":Lcom/android/server/AlarmManagerService$Batch;
    move-wide v6, v13

    move/from16 v8, v16

    move-wide/from16 v9, v19

    const-wide v13, 0x10300000003L

    move/from16 v16, v15

    goto :goto_17e

    .line 2792
    .end local v15  # "nextAlarmClockForUserSize":I
    .end local v19  # "nowElapsed":J
    .restart local v8  # "pendingSendNextAlarmClockChangedForUserSize":I
    .restart local v9  # "nowElapsed":J
    .local v16, "nextAlarmClockForUserSize":I
    :cond_1ac
    move-wide v13, v6

    move-wide/from16 v19, v9

    move/from16 v15, v16

    move/from16 v16, v8

    .end local v8  # "pendingSendNextAlarmClockChangedForUserSize":I
    .end local v9  # "nowElapsed":J
    .restart local v15  # "nextAlarmClockForUserSize":I
    .local v16, "pendingSendNextAlarmClockChangedForUserSize":I
    .restart local v19  # "nowElapsed":J
    const/4 v2, 0x0

    move v3, v2

    move v9, v3

    .local v9, "i":I
    :goto_1b6
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v9, v3, :cond_1f4

    .line 2793
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move-object/from16 v21, v3

    .line 2794
    .local v21, "blockedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v21, :cond_1ef

    .line 2795
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_1ce
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1ec

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2796
    .local v3, "a":Lcom/android/server/AlarmManagerService$Alarm;
    const-wide v5, 0x20b00000014L

    move-object v4, v11

    move-wide/from16 v7, v19

    move/from16 v23, v9

    .end local v9  # "i":I
    .local v23, "i":I
    move-wide/from16 v9, v17

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/AlarmManagerService$Alarm;->writeToProto(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 2799
    .end local v3  # "a":Lcom/android/server/AlarmManagerService$Alarm;
    move/from16 v9, v23

    goto :goto_1ce

    .line 2795
    .end local v23  # "i":I
    .restart local v9  # "i":I
    :cond_1ec
    move/from16 v23, v9

    .end local v9  # "i":I
    .restart local v23  # "i":I
    goto :goto_1f1

    .line 2794
    .end local v23  # "i":I
    .restart local v9  # "i":I
    :cond_1ef
    move/from16 v23, v9

    .line 2792
    .end local v9  # "i":I
    .end local v21  # "blockedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .restart local v23  # "i":I
    :goto_1f1
    add-int/lit8 v9, v23, 0x1

    .end local v23  # "i":I
    .restart local v9  # "i":I
    goto :goto_1b6

    :cond_1f4
    move/from16 v23, v9

    .line 2802
    .end local v9  # "i":I
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v3, :cond_209

    .line 2803
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    const-wide v5, 0x10b00000015L

    move-object v4, v11

    move-wide/from16 v7, v19

    move-wide/from16 v9, v17

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/AlarmManagerService$Alarm;->writeToProto(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 2806
    :cond_209
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_20f
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_229

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2807
    .restart local v3  # "a":Lcom/android/server/AlarmManagerService$Alarm;
    const-wide v5, 0x20b00000016L

    move-object v4, v11

    move-wide/from16 v7, v19

    move-wide/from16 v9, v17

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/AlarmManagerService$Alarm;->writeToProto(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 2809
    .end local v3  # "a":Lcom/android/server/AlarmManagerService$Alarm;
    goto :goto_20f

    .line 2810
    :cond_229
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v3, :cond_23c

    .line 2811
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    const-wide v5, 0x10b00000017L

    move-object v4, v11

    move-wide/from16 v7, v19

    move-wide/from16 v9, v17

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/AlarmManagerService$Alarm;->writeToProto(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 2815
    :cond_23c
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_242
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25c

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2816
    .restart local v3  # "a":Lcom/android/server/AlarmManagerService$Alarm;
    const-wide v5, 0x20b00000018L

    move-object v4, v11

    move-wide/from16 v7, v19

    move-wide/from16 v9, v17

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/AlarmManagerService$Alarm;->writeToProto(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 2818
    .end local v3  # "a":Lcom/android/server/AlarmManagerService$Alarm;
    goto :goto_242

    .line 2820
    :cond_25c
    const-wide v3, 0x10500000019L

    iget v5, v1, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2821
    const-wide v3, 0x1030000001aL

    iget-wide v5, v1, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2822
    const-wide v3, 0x1030000001bL

    iget-wide v5, v1, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2823
    const-wide v3, 0x1030000001cL

    iget-wide v5, v1, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2826
    const-wide v3, 0x1050000001dL

    iget v5, v1, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2827
    const-wide v3, 0x1050000001eL

    iget v5, v1, Lcom/android/server/AlarmManagerService;->mSendCount:I

    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2828
    const-wide v3, 0x1050000001fL

    iget v5, v1, Lcom/android/server/AlarmManagerService;->mSendFinishCount:I

    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2829
    const-wide v3, 0x10500000020L

    iget v5, v1, Lcom/android/server/AlarmManagerService;->mListenerCount:I

    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2830
    const-wide v3, 0x10500000021L

    iget v5, v1, Lcom/android/server/AlarmManagerService;->mListenerFinishCount:I

    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2832
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2bc
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$InFlight;

    .line 2833
    .local v4, "f":Lcom/android/server/AlarmManagerService$InFlight;
    const-wide v5, 0x20b00000022L

    invoke-virtual {v4, v11, v5, v6}, Lcom/android/server/AlarmManagerService$InFlight;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2834
    .end local v4  # "f":Lcom/android/server/AlarmManagerService$InFlight;
    goto :goto_2bc

    .line 2836
    :cond_2d1
    move v3, v2

    .local v3, "i":I
    :goto_2d2
    iget-object v4, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v4}, Landroid/util/SparseLongArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_314

    .line 2837
    const-wide v4, 0x20b00000024L

    invoke-virtual {v11, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 2839
    .local v4, "token":J
    iget-object v6, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v6

    .line 2840
    .local v6, "uid":I
    iget-object v7, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v7

    .line 2842
    .local v7, "lastTime":J
    invoke-virtual {v11, v13, v14, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2843
    const-wide v9, 0x10300000002L

    invoke-virtual {v11, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2844
    nop

    .line 2845
    invoke-direct {v1, v6}, Lcom/android/server/AlarmManagerService;->getWhileIdleMinIntervalLocked(I)J

    move-result-wide v21

    add-long v9, v7, v21

    .line 2844
    const-wide v13, 0x10300000003L

    invoke-virtual {v11, v13, v14, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2846
    invoke-virtual {v11, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2836
    .end local v4  # "token":J
    .end local v6  # "uid":I
    .end local v7  # "lastTime":J
    add-int/lit8 v3, v3, 0x1

    const-wide v13, 0x10500000001L

    goto :goto_2d2

    .line 2849
    .end local v3  # "i":I
    :cond_314
    move v3, v2

    .restart local v3  # "i":I
    :goto_315
    iget-object v4, v1, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_336

    .line 2850
    iget-object v4, v1, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_333

    .line 2851
    const-wide v4, 0x20500000023L

    iget-object v6, v1, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    .line 2852
    invoke-virtual {v6, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    .line 2851
    invoke-virtual {v11, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2849
    :cond_333
    add-int/lit8 v3, v3, 0x1

    goto :goto_315

    .line 2856
    .end local v3  # "i":I
    :cond_336
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-wide v4, 0x10b00000025L

    invoke-virtual {v3, v11, v4, v5}, Lcom/android/internal/util/LocalLog;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2858
    const/16 v3, 0xa

    new-array v3, v3, [Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2859
    .local v3, "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    new-instance v4, Lcom/android/server/AlarmManagerService$5;

    invoke-direct {v4, v1}, Lcom/android/server/AlarmManagerService$5;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 2870
    .local v4, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/4 v5, 0x0

    .line 2872
    .local v5, "len":I
    move v6, v2

    .local v6, "iu":I
    :goto_34b
    iget-object v7, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_3b5

    .line 2873
    iget-object v7, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    .line 2874
    .local v7, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    move v8, v2

    .local v8, "ip":I
    :goto_35c
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v8, v9, :cond_3af

    .line 2875
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2876
    .local v9, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    move v10, v2

    .local v10, "is":I
    :goto_369
    iget-object v13, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v10, v13, :cond_3a9

    .line 2877
    iget-object v13, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v13, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2878
    .local v13, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    if-lez v5, :cond_380

    .line 2879
    invoke-static {v3, v2, v5, v13, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v14

    goto :goto_381

    :cond_380
    move v14, v2

    .line 2880
    .local v14, "pos":I
    :goto_381
    if-gez v14, :cond_386

    .line 2881
    neg-int v2, v14

    add-int/lit8 v14, v2, -0x1

    .line 2883
    :cond_386
    array-length v2, v3

    if-ge v14, v2, :cond_3a1

    .line 2884
    array-length v2, v3

    sub-int/2addr v2, v14

    add-int/lit8 v2, v2, -0x1

    .line 2885
    .local v2, "copylen":I
    if-lez v2, :cond_397

    .line 2886
    move-object/from16 v24, v0

    .end local v0  # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .local v24, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    add-int/lit8 v0, v14, 0x1

    invoke-static {v3, v14, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_399

    .line 2885
    .end local v24  # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v0  # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_397
    move-object/from16 v24, v0

    .line 2888
    .end local v0  # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v24  # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :goto_399
    aput-object v13, v3, v14

    .line 2889
    array-length v0, v3

    if-ge v5, v0, :cond_3a3

    .line 2890
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a3

    .line 2883
    .end local v2  # "copylen":I
    .end local v24  # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v0  # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_3a1
    move-object/from16 v24, v0

    .line 2876
    .end local v0  # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v13  # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v14  # "pos":I
    .restart local v24  # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_3a3
    :goto_3a3
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, v24

    const/4 v2, 0x0

    goto :goto_369

    .end local v24  # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v0  # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_3a9
    move-object/from16 v24, v0

    .line 2874
    .end local v0  # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v9  # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v10  # "is":I
    .restart local v24  # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x0

    goto :goto_35c

    .end local v24  # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v0  # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_3af
    move-object/from16 v24, v0

    .line 2872
    .end local v0  # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v7  # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v8  # "ip":I
    .restart local v24  # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x0

    goto :goto_34b

    .end local v24  # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v0  # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_3b5
    move-object/from16 v24, v0

    .line 2896
    .end local v0  # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v6  # "iu":I
    .restart local v24  # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3b8
    if-ge v0, v5, :cond_3eb

    .line 2897
    const-wide v6, 0x20b00000026L

    invoke-virtual {v11, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 2898
    .local v6, "token":J
    aget-object v2, v3, v0

    .line 2900
    .local v2, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    iget-object v8, v2, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget v8, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    const-wide v9, 0x10500000001L

    invoke-virtual {v11, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2901
    const-wide v13, 0x10900000002L

    iget-object v8, v2, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v8, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v13, v14, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2903
    const-wide v13, 0x10b00000003L

    invoke-virtual {v2, v11, v13, v14}, Lcom/android/server/AlarmManagerService$FilterStats;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2905
    invoke-virtual {v11, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2896
    .end local v2  # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v6  # "token":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b8

    .line 2908
    .end local v0  # "i":I
    :cond_3eb
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2909
    .local v0, "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/4 v2, 0x0

    move v6, v2

    .local v6, "iu":I
    :goto_3f2
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v6, v2, :cond_472

    .line 2910
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 2911
    .local v2, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    const/4 v7, 0x0

    move v8, v7

    .restart local v8  # "ip":I
    :goto_404
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v8, v7, :cond_46b

    .line 2912
    const-wide v9, 0x20b00000027L

    invoke-virtual {v11, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 2914
    .local v9, "token":J
    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2915
    .local v7, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    const-wide v13, 0x10b00000001L

    invoke-virtual {v7, v11, v13, v14}, Lcom/android/server/AlarmManagerService$BroadcastStats;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2918
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2919
    const/4 v13, 0x0

    move v14, v13

    .local v14, "is":I
    :goto_426
    iget-object v13, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v14, v13, :cond_43d

    .line 2920
    iget-object v13, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AlarmManagerService$FilterStats;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2919
    add-int/lit8 v14, v14, 0x1

    const/4 v13, 0x0

    goto :goto_426

    .line 2922
    .end local v14  # "is":I
    :cond_43d
    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2923
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_444
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_45f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2924
    .local v14, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    move-object/from16 v21, v0

    .end local v0  # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .local v21, "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const-wide v0, 0x20b00000002L

    invoke-virtual {v14, v11, v0, v1}, Lcom/android/server/AlarmManagerService$FilterStats;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2925
    .end local v14  # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    move-object/from16 v1, p0

    move-object/from16 v0, v21

    goto :goto_444

    .line 2927
    .end local v21  # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v0  # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    :cond_45f
    move-object/from16 v21, v0

    .end local v0  # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v21  # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    invoke-virtual {v11, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2911
    .end local v7  # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v9  # "token":J
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v21

    goto :goto_404

    .end local v21  # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v0  # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    :cond_46b
    move-object/from16 v21, v0

    .line 2909
    .end local v0  # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v2  # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v8  # "ip":I
    .restart local v21  # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    goto :goto_3f2

    .end local v21  # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v0  # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    :cond_472
    move-object/from16 v21, v0

    .line 2958
    .end local v0  # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v3  # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v4  # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v5  # "len":I
    .end local v6  # "iu":I
    .end local v15  # "nextAlarmClockForUserSize":I
    .end local v16  # "pendingSendNextAlarmClockChangedForUserSize":I
    .end local v17  # "nowRTC":J
    .end local v19  # "nowElapsed":J
    .end local v24  # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    monitor-exit v12
    :try_end_475
    .catchall {:try_start_d .. :try_end_475} :catchall_479

    .line 2960
    invoke-virtual {v11}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 2961
    return-void

    .line 2958
    :catchall_479
    move-exception v0

    :try_start_47a
    monitor-exit v12
    :try_end_47b
    .catchall {:try_start_47a .. :try_end_47b} :catchall_479

    throw v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1697
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->close()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_a

    .line 1699
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1700
    nop

    .line 1701
    return-void

    .line 1699
    :catchall_a
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getMinDelayForBucketLocked(I)J
    .registers 5
    .param p1, "bucket"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1930
    const/16 v0, 0x32

    if-ne p1, v0, :cond_6

    const/4 v0, 0x4

    .local v0, "index":I
    goto :goto_19

    .line 1931
    .end local v0  # "index":I
    :cond_6
    const/16 v0, 0x1e

    if-le p1, v0, :cond_c

    const/4 v0, 0x3

    .restart local v0  # "index":I
    goto :goto_19

    .line 1932
    .end local v0  # "index":I
    :cond_c
    const/16 v0, 0x14

    if-le p1, v0, :cond_12

    const/4 v0, 0x2

    .restart local v0  # "index":I
    goto :goto_19

    .line 1933
    .end local v0  # "index":I
    :cond_12
    const/16 v0, 0xa

    if-le p1, v0, :cond_18

    const/4 v0, 0x1

    .restart local v0  # "index":I
    goto :goto_19

    .line 1934
    .end local v0  # "index":I
    :cond_18
    const/4 v0, 0x0

    .line 1936
    .restart local v0  # "index":I
    :goto_19
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_MIN_DELAYS:[J

    aget-wide v1, v1, v0

    return-wide v1
.end method

.method getNextAlarmClockImpl(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .registers 4
    .param p1, "userId"  # I

    .line 3034
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3035
    :try_start_3
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager$AlarmClockInfo;

    monitor-exit v0

    return-object v1

    .line 3036
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method getNextWakeFromIdleTimeImpl()J
    .registers 4

    .line 3022
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3023
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

    .line 3024
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method getQuotaForBucketLocked(I)I
    .registers 4
    .param p1, "bucket"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1904
    const/16 v0, 0xa

    if-gt p1, v0, :cond_6

    .line 1905
    const/4 v0, 0x0

    .local v0, "index":I
    goto :goto_19

    .line 1906
    .end local v0  # "index":I
    :cond_6
    const/16 v0, 0x14

    if-gt p1, v0, :cond_c

    .line 1907
    const/4 v0, 0x1

    .restart local v0  # "index":I
    goto :goto_19

    .line 1908
    .end local v0  # "index":I
    :cond_c
    const/16 v0, 0x1e

    if-gt p1, v0, :cond_12

    .line 1909
    const/4 v0, 0x2

    .restart local v0  # "index":I
    goto :goto_19

    .line 1910
    .end local v0  # "index":I
    :cond_12
    const/16 v0, 0x32

    if-ge p1, v0, :cond_18

    .line 1911
    const/4 v0, 0x3

    .restart local v0  # "index":I
    goto :goto_19

    .line 1913
    .end local v0  # "index":I
    :cond_18
    const/4 v0, 0x4

    .line 1915
    .restart local v0  # "index":I
    :goto_19
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    aget v1, v1, v0

    return v1
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

    .line 1073
    .local p1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1074
    return v1

    .line 1076
    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1077
    .local v0, "batchSize":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_d
    if-ge v2, v0, :cond_20

    .line 1078
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    if-ne v3, v4, :cond_1d

    .line 1079
    const/4 v1, 0x1

    return v1

    .line 1077
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1082
    .end local v2  # "j":I
    :cond_20
    return v1
.end method

.method haveBatchesTimeTickAlarm(Ljava/util/ArrayList;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;)Z"
        }
    .end annotation

    .line 1086
    .local p1, "batches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1087
    .local v0, "numBatches":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_1a

    .line 1088
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Batch;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/android/server/AlarmManagerService;->haveAlarmsTimeTickAlarm(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1089
    const/4 v2, 0x1

    return v2

    .line 1087
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1092
    .end local v1  # "i":I
    :cond_1a
    const/4 v1, 0x0

    return v1
.end method

.method interactiveStateChangedLocked(Z)V
    .registers 8
    .param p1, "interactive"  # Z

    .line 3513
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-eq v0, p1, :cond_5d

    .line 3514
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    .line 3515
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 3516
    .local v0, "nowELAPSED":J
    if-eqz p1, :cond_5b

    .line 3517
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_31

    .line 3518
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v2, v0, v2

    .line 3519
    .local v2, "thisDelayTime":J
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 3520
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_27

    .line 3521
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 3523
    :cond_27
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 3524
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3526
    .end local v2  # "thisDelayTime":J
    :cond_31
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_43

    .line 3527
    sub-long v2, v0, v2

    .line 3528
    .local v2, "dur":J
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_43

    .line 3529
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    .line 3533
    .end local v2  # "dur":J
    :cond_43
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    new-instance v3, Lcom/android/server/-$$Lambda$AlarmManagerService$ekOL-W-d04N5tL87W3U8JwL7IzE;

    invoke-direct {v3, p0}, Lcom/android/server/-$$Lambda$AlarmManagerService$ekOL-W-d04N5tL87W3U8JwL7IzE;-><init>(Lcom/android/server/AlarmManagerService;)V

    invoke-virtual {v2, v3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->post(Ljava/lang/Runnable;)Z

    .line 3536
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    const-wide/16 v4, 0x320

    sub-long v4, v0, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_5d

    .line 3537
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->deliverPastAlarmsLocked()V

    goto :goto_5d

    .line 3541
    :cond_5b
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    .line 3544
    .end local v0  # "nowELAPSED":J
    :cond_5d
    :goto_5d
    return-void
.end method

.method public synthetic lambda$interactiveStateChangedLocked$6$AlarmManagerService()V
    .registers 4

    .line 3534
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mTimeTickIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public synthetic lambda$onStart$0$AlarmManagerService(Landroid/app/PendingIntent;)V
    .registers 3
    .param p1, "intent"  # Landroid/app/PendingIntent;

    .line 1566
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    return-void
.end method

.method public synthetic lambda$removeLocked$3$AlarmManagerService(Ljava/lang/String;Landroid/util/MutableBoolean;Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "removedNextWakeFromIdle"  # Landroid/util/MutableBoolean;
    .param p3, "a"  # Lcom/android/server/AlarmManagerService$Alarm;

    .line 3347
    invoke-virtual {p3, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 3348
    .local v0, "didMatch":Z
    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-ne p3, v1, :cond_d

    .line 3349
    const/4 v1, 0x1

    iput-boolean v1, p2, Landroid/util/MutableBoolean;->value:Z

    .line 3351
    :cond_d
    return v0
.end method

.method lookForPackageLocked(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;

    .line 3547
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1c

    .line 3548
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 3549
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v1, p1}, Lcom/android/server/AlarmManagerService$Batch;->hasPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 3550
    return v2

    .line 3547
    .end local v1  # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3553
    .end local v0  # "i":I
    :cond_1c
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_1d
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 3554
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3555
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v1, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 3556
    return v2

    .line 3553
    .end local v1  # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 3559
    .end local v0  # "i":I
    :cond_37
    const/4 v0, 0x0

    return v0
.end method

.method public onBootPhase(I)V
    .registers 6
    .param p1, "phase"  # I

    .line 1672
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_68

    .line 1673
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1674
    :try_start_7
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/AlarmManagerService$Constants;->start(Landroid/content/ContentResolver;)V

    .line 1675
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "appops"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 1676
    const-class v1, Lcom/android/server/DeviceIdleController$LocalService;

    .line 1677
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DeviceIdleController$LocalService;

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    .line 1678
    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1679
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 1680
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    new-instance v2, Lcom/android/server/AlarmManagerService$AppStandbyTracker;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/AlarmManagerService$AppStandbyTracker;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$1;)V

    invoke-virtual {v1, v2}, Landroid/app/usage/UsageStatsManagerInternal;->addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    .line 1682
    const-class v1, Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppStateTracker;

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 1683
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mForceAppStandbyListener:Lcom/android/server/AppStateTracker$Listener;

    invoke-virtual {v1, v2}, Lcom/android/server/AppStateTracker;->addListener(Lcom/android/server/AppStateTracker$Listener;)V

    .line 1685
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 1686
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 1688
    new-instance v1, Lcom/android/server/AlarmOptimizeStrategy;

    invoke-direct {v1, p0}, Lcom/android/server/AlarmOptimizeStrategy;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmOptimize:Lcom/android/server/AlarmOptimizeStrategy;

    .line 1690
    monitor-exit v0

    goto :goto_68

    :catchall_65
    move-exception v1

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_7 .. :try_end_67} :catchall_65

    throw v1

    .line 1692
    :cond_68
    :goto_68
    return-void
.end method

.method public onStart()V
    .registers 11

    .line 1563
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->init()V

    .line 1564
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1565
    :try_start_8
    new-instance v1, Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-direct {v1, p0}, Lcom/android/server/AlarmManagerService$AlarmHandler;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    .line 1566
    new-instance v1, Lcom/android/server/-$$Lambda$AlarmManagerService$6biANsIZPXvOci6ybplaG3NF_Yk;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$AlarmManagerService$6biANsIZPXvOci6ybplaG3NF_Yk;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mOperationCancelListener:Landroid/app/PendingIntent$CancelListener;

    .line 1567
    new-instance v1, Lcom/android/server/AlarmManagerService$Constants;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/AlarmManagerService$Constants;-><init>(Lcom/android/server/AlarmManagerService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    .line 1568
    new-instance v1, Lcom/android/server/AlarmManagerService$AppWakeupHistory;

    const-wide/32 v2, 0x36ee80

    invoke-direct {v1, v2, v3}, Lcom/android/server/AlarmManagerService$AppWakeupHistory;-><init>(J)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/AlarmManagerService$AppWakeupHistory;

    .line 1570
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    sput-wide v1, Lcom/android/server/AlarmManagerService;->mNextRtcWakeup:J

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    .line 1571
    const-string v1, "/persist/alarm/powerOffAlarmSet"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/app/AlarmManager;->writePowerOffAlarmFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    const-string/jumbo v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1577
    .local v1, "cryptState":Ljava/lang/String;
    const-string/jumbo v2, "trigger_restart_min_framework"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 1578
    :cond_50
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mIsEncryptStatus:Z

    .line 1581
    :cond_53
    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mIsEncryptStatus:Z

    if-eqz v2, :cond_61

    .line 1582
    const-string v2, "/persist/alarm/timezone"

    .line 1583
    invoke-static {v2}, Landroid/app/AlarmManager;->readPowerOffAlarmFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1584
    .local v2, "tz":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/server/AlarmManagerService;->setTimeZoneImpl(Ljava/lang/String;)V

    .line 1585
    .end local v2  # "tz":Ljava/lang/String;
    goto :goto_6b

    .line 1586
    :cond_61
    const-string/jumbo v2, "persist.sys.timezone"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/AlarmManagerService;->setTimeZoneImpl(Ljava/lang/String;)V

    .line 1592
    :goto_6b
    const-wide/16 v2, 0x3e8

    const-string/jumbo v4, "ro.build.date.utc"

    const-wide/16 v5, -0x1

    .line 1593
    invoke-static {v4, v5, v6}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    mul-long/2addr v4, v2

    .line 1594
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sget-wide v6, Landroid/os/Build;->TIME:J

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v2

    .line 1592
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v2

    .line 1595
    .local v2, "systemBuildTime":J
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gez v4, :cond_bc

    .line 1596
    const-string v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current time only "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v6}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", advancing to build time "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/AlarmManagerService$Injector;->setKernelTime(J)V

    .line 1602
    :cond_bc
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService$Injector;->getSystemUiUid()I

    move-result v4

    iput v4, p0, Lcom/android/server/AlarmManagerService;->mSystemUiUid:I

    .line 1603
    iget v4, p0, Lcom/android/server/AlarmManagerService;->mSystemUiUid:I

    if-gtz v4, :cond_cf

    .line 1604
    const-string v4, "AlarmManager"

    const-string v5, "SysUI package not found!"

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    :cond_cf
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService$Injector;->getAlarmWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1608
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.TIME_TICK"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x50200000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/AlarmManagerService;->mTimeTickIntent:Landroid/content/Intent;

    .line 1613
    new-instance v4, Lcom/android/server/AlarmManagerService$2;

    invoke-direct {v4, p0}, Lcom/android/server/AlarmManagerService$2;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v4, p0, Lcom/android/server/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    .line 1638
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.DATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1639
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v5, 0x20200000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1641
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const/high16 v7, 0x4000000

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {v5, v6, v4, v7, v8}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    .line 1644
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v5, p0}, Lcom/android/server/AlarmManagerService$Injector;->getClockReceiver(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ClockReceiver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    .line 1645
    new-instance v5, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;

    invoke-direct {v5, p0}, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 1646
    new-instance v5, Lcom/android/server/AlarmManagerService$UninstallReceiver;

    invoke-direct {v5, p0}, Lcom/android/server/AlarmManagerService$UninstallReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 1648
    new-instance v5, Lcom/android/server/AlarmManagerService$ShutdownReceiver;

    invoke-direct {v5, p0}, Lcom/android/server/AlarmManagerService$ShutdownReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v5, p0, Lcom/android/server/AlarmManagerService;->mShutdownReceiver:Lcom/android/server/AlarmManagerService$ShutdownReceiver;

    .line 1651
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v5}, Lcom/android/server/AlarmManagerService$Injector;->isAlarmDriverPresent()Z

    move-result v5

    if-eqz v5, :cond_132

    .line 1652
    new-instance v5, Lcom/android/server/AlarmManagerService$AlarmThread;

    invoke-direct {v5, p0}, Lcom/android/server/AlarmManagerService$AlarmThread;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 1653
    .local v5, "waitThread":Lcom/android/server/AlarmManagerService$AlarmThread;
    invoke-virtual {v5}, Lcom/android/server/AlarmManagerService$AlarmThread;->start()V

    .line 1654
    .end local v5  # "waitThread":Lcom/android/server/AlarmManagerService$AlarmThread;
    goto :goto_139

    .line 1655
    :cond_132
    const-string v5, "AlarmManager"

    const-string v6, "Failed to open alarm driver. Falling back to a handler."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_139
    .catchall {:try_start_8 .. :try_end_139} :catchall_15e

    .line 1658
    :goto_139
    const/4 v5, 0x0

    :try_start_13a
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v6

    new-instance v7, Lcom/android/server/AlarmManagerService$UidObserver;

    invoke-direct {v7, p0}, Lcom/android/server/AlarmManagerService$UidObserver;-><init>(Lcom/android/server/AlarmManagerService;)V

    const/16 v8, 0xe

    const/4 v9, -0x1

    invoke-interface {v6, v7, v8, v9, v5}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_149
    .catch Landroid/os/RemoteException; {:try_start_13a .. :try_end_149} :catch_14a
    .catchall {:try_start_13a .. :try_end_149} :catchall_15e

    .line 1664
    goto :goto_14b

    .line 1662
    :catch_14a
    move-exception v6

    .line 1665
    .end local v1  # "cryptState":Ljava/lang/String;
    .end local v2  # "systemBuildTime":J
    .end local v4  # "intent":Landroid/content/Intent;
    :goto_14b
    :try_start_14b
    monitor-exit v0
    :try_end_14c
    .catchall {:try_start_14b .. :try_end_14c} :catchall_15e

    .line 1666
    const-class v0, Lcom/android/server/AlarmManagerInternal;

    new-instance v1, Lcom/android/server/AlarmManagerService$LocalService;

    invoke-direct {v1, p0, v5}, Lcom/android/server/AlarmManagerService$LocalService;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/AlarmManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1667
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mService:Landroid/os/IBinder;

    const-string v1, "alarm"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/AlarmManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1668
    return-void

    .line 1665
    :catchall_15e
    move-exception v1

    :try_start_15f
    monitor-exit v0
    :try_end_160
    .catchall {:try_start_15f .. :try_end_160} :catchall_15e

    throw v1
.end method

.method reAddAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V
    .registers 14
    .param p1, "a"  # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "nowElapsed"  # J
    .param p4, "doValidate"  # Z

    .line 1185
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1186
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v0

    .line 1188
    .local v0, "whenElapsed":J
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_16

    .line 1190
    move-wide v2, v0

    .local v2, "maxElapsed":J
    goto :goto_2d

    .line 1195
    .end local v2  # "maxElapsed":J
    :cond_16
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_24

    .line 1196
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    add-long/2addr v2, v0

    invoke-static {v2, v3}, Lcom/android/server/AlarmManagerService;->clampPositive(J)J

    move-result-wide v2

    goto :goto_2c

    .line 1197
    :cond_24
    iget-wide v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide v3, p2

    move-wide v5, v0

    invoke-static/range {v3 .. v8}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v2

    :goto_2c
    nop

    .line 1199
    .restart local v2  # "maxElapsed":J
    :goto_2d
    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    .line 1200
    iput-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    .line 1201
    const/4 v4, 0x1

    invoke-direct {p0, p1, v4, p4}, Lcom/android/server/AlarmManagerService;->setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    .line 1202
    return-void
.end method

.method rebatchAllAlarms()V
    .registers 3

    .line 1097
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1098
    const/4 v1, 0x1

    :try_start_4
    invoke-virtual {p0, v1}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 1099
    monitor-exit v0

    .line 1100
    return-void

    .line 1099
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw v1
.end method

.method rebatchAllAlarmsLocked(Z)V
    .registers 19
    .param p1, "doValidate"  # Z

    .line 1103
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v1}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v1

    .line 1104
    .local v1, "start":J
    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    .line 1105
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->getAlarmCount(Ljava/util/ArrayList;)I

    move-result v3

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1106
    .local v3, "oldCount":I
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Lcom/android/server/AlarmManagerService;->haveBatchesTimeTickAlarm(Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_28

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 1107
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

    .line 1109
    .local v4, "oldHasTick":Z
    :goto_29
    iget-object v7, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 1110
    .local v7, "oldSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    iget-object v8, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1111
    iget-object v8, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 1112
    .local v8, "oldPendingIdleUntil":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v9, v0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v9}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v9

    .line 1113
    .local v9, "nowElapsed":J
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1114
    .local v11, "oldBatches":I
    const/4 v12, 0x0

    .local v12, "batchNum":I
    :goto_43
    if-ge v12, v11, :cond_63

    .line 1115
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AlarmManagerService$Batch;

    .line 1116
    .local v13, "batch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v13}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v14

    .line 1117
    .local v14, "N":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_50
    if-ge v15, v14, :cond_5e

    .line 1118
    invoke-virtual {v13, v15}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v6

    move/from16 v5, p1

    invoke-virtual {v0, v6, v9, v10, v5}, Lcom/android/server/AlarmManagerService;->reAddAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V

    .line 1117
    add-int/lit8 v15, v15, 0x1

    goto :goto_50

    :cond_5e
    move/from16 v5, p1

    .line 1114
    .end local v13  # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v14  # "N":I
    .end local v15  # "i":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_43

    :cond_63
    move/from16 v5, p1

    .line 1121
    .end local v12  # "batchNum":I
    const-string v6, " to "

    const-string v12, "AlarmManager"

    if-eqz v8, :cond_92

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eq v8, v13, :cond_92

    .line 1122
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Rebatching: idle until changed from "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-nez v13, :cond_92

    .line 1126
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->restorePendingWhileIdleAlarmsLocked()V

    .line 1129
    :cond_92
    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    .line 1130
    invoke-static {v13}, Lcom/android/server/AlarmManagerService;->getAlarmCount(Ljava/util/ArrayList;)I

    move-result v13

    iget-object v14, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-static {v14}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v14

    add-int/2addr v13, v14

    .line 1131
    .local v13, "newCount":I
    iget-object v14, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Lcom/android/server/AlarmManagerService;->haveBatchesTimeTickAlarm(Ljava/util/ArrayList;)Z

    move-result v14

    if-nez v14, :cond_b3

    iget-object v14, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 1132
    invoke-virtual {v0, v14}, Lcom/android/server/AlarmManagerService;->haveAlarmsTimeTickAlarm(Ljava/util/ArrayList;)Z

    move-result v14

    if-eqz v14, :cond_b0

    goto :goto_b3

    :cond_b0
    const/16 v16, 0x0

    goto :goto_b5

    :cond_b3
    :goto_b3
    const/16 v16, 0x1

    :goto_b5
    move/from16 v14, v16

    .line 1134
    .local v14, "newHasTick":Z
    if-eq v3, v13, :cond_d3

    .line 1135
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rebatching: total count changed from "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    :cond_d3
    if-eq v4, v14, :cond_ef

    .line 1138
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Rebatching: hasTick changed from "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :cond_ef
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1142
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 1143
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v1, v2}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 1144
    return-void
.end method

.method recordWakeupAlarms(Ljava/util/ArrayList;JJ)V
    .registers 14
    .param p2, "nowELAPSED"  # J
    .param p4, "nowRTC"  # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;JJ)V"
        }
    .end annotation

    .line 3978
    .local p1, "batches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3979
    .local v0, "numBatches":I
    const/4 v1, 0x0

    .local v1, "nextBatch":I
    :goto_5
    if-ge v1, v0, :cond_34

    .line 3980
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Batch;

    .line 3981
    .local v2, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v3, v2, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v3, v3, p2

    if-lez v3, :cond_14

    .line 3982
    goto :goto_34

    .line 3985
    :cond_14
    iget-object v3, v2, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3986
    .local v3, "numAlarms":I
    const/4 v4, 0x0

    .local v4, "nextAlarm":I
    :goto_1b
    if-ge v4, v3, :cond_31

    .line 3987
    iget-object v5, v2, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3988
    .local v5, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    invoke-virtual {v5, p4, p5}, Lcom/android/server/AlarmManagerService$Alarm;->makeWakeupEvent(J)Lcom/android/server/AlarmManagerService$WakeupEvent;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3986
    .end local v5  # "a":Lcom/android/server/AlarmManagerService$Alarm;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 3979
    .end local v2  # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v3  # "numAlarms":I
    .end local v4  # "nextAlarm":I
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3991
    .end local v1  # "nextBatch":I
    :cond_34
    :goto_34
    return-void
.end method

.method removeForStoppedLocked(I)V
    .registers 9
    .param p1, "uid"  # I

    .line 3407
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_5

    .line 3409
    return-void

    .line 3411
    :cond_5
    const/4 v0, 0x0

    .line 3412
    .local v0, "didRemove":Z
    new-instance v1, Lcom/android/server/-$$Lambda$AlarmManagerService$d1Nr3qXE-1WItEvvEEG1KMB46xw;

    .local v1, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-direct {v1, p1}, Lcom/android/server/-$$Lambda$AlarmManagerService$d1Nr3qXE-1WItEvvEEG1KMB46xw;-><init>(I)V

    .line 3421
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_13
    if-ltz v2, :cond_31

    .line 3422
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    .line 3423
    .local v4, "b":Lcom/android/server/AlarmManagerService$Batch;
    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/util/function/Predicate;Z)Z

    move-result v5

    or-int/2addr v0, v5

    .line 3424
    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v5

    if-nez v5, :cond_2e

    .line 3425
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3421
    .end local v4  # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_2e
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    .line 3428
    .end local v2  # "i":I
    :cond_31
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2  # "i":I
    :goto_38
    if-ltz v2, :cond_5f

    .line 3429
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3431
    .local v4, "a":Lcom/android/server/AlarmManagerService$Alarm;
    :try_start_42
    iget v5, v4, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v5, p1, :cond_5a

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    iget-object v6, v4, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    invoke-interface {v5, p1, v6}, Landroid/app/IActivityManager;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 3434
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3435
    invoke-direct {p0, p1, v3}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_5a} :catch_5b

    .line 3438
    :cond_5a
    goto :goto_5c

    .line 3437
    :catch_5b
    move-exception v5

    .line 3428
    .end local v4  # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :goto_5c
    add-int/lit8 v2, v2, -0x1

    goto :goto_38

    .line 3440
    .end local v2  # "i":I
    :cond_5f
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2  # "i":I
    :goto_66
    if-ltz v2, :cond_89

    .line 3441
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-ne v3, p1, :cond_86

    .line 3442
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 3443
    .local v3, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v3, :cond_81

    .line 3444
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {p0, p1, v4}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3446
    :cond_81
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3440
    .end local v3  # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_86
    add-int/lit8 v2, v2, -0x1

    goto :goto_66

    .line 3449
    .end local v2  # "i":I
    :cond_89
    if-eqz v0, :cond_98

    .line 3455
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/server/AlarmManagerService;->sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3457
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 3458
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 3460
    :cond_98
    return-void
.end method

.method removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .registers 5
    .param p1, "operation"  # Landroid/app/PendingIntent;
    .param p2, "listener"  # Landroid/app/IAlarmListener;

    .line 1768
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1770
    const/4 v1, 0x1

    :try_start_4
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;Z)V

    .line 1772
    monitor-exit v0

    .line 1773
    return-void

    .line 1772
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw v1
.end method

.method removeLocked(I)V
    .registers 9
    .param p1, "uid"  # I

    .line 3282
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_5

    .line 3284
    return-void

    .line 3286
    :cond_5
    const/4 v0, 0x0

    .line 3287
    .local v0, "didRemove":Z
    new-instance v1, Lcom/android/server/-$$Lambda$AlarmManagerService$B3QlP-iufJjUxYk_gYP8zaqzjvc;

    .local v1, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-direct {v1, p1}, Lcom/android/server/-$$Lambda$AlarmManagerService$B3QlP-iufJjUxYk_gYP8zaqzjvc;-><init>(I)V

    .line 3288
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_13
    if-ltz v2, :cond_31

    .line 3289
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    .line 3290
    .local v4, "b":Lcom/android/server/AlarmManagerService$Batch;
    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/util/function/Predicate;Z)Z

    move-result v5

    or-int/2addr v0, v5

    .line 3291
    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v5

    if-nez v5, :cond_2e

    .line 3292
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3288
    .end local v4  # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_2e
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    .line 3295
    .end local v2  # "i":I
    :cond_31
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2  # "i":I
    :goto_38
    if-ltz v2, :cond_51

    .line 3296
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3297
    .local v4, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v5, v4, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v5, p1, :cond_4e

    .line 3299
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3300
    invoke-direct {p0, p1, v3}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3295
    .end local v4  # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4e
    add-int/lit8 v2, v2, -0x1

    goto :goto_38

    .line 3303
    .end local v2  # "i":I
    :cond_51
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2  # "i":I
    :goto_58
    if-ltz v2, :cond_8a

    .line 3304
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 3305
    .local v4, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    .local v5, "j":I
    :goto_67
    if-ltz v5, :cond_7c

    .line 3306
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    iget v6, v6, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v6, p1, :cond_79

    .line 3307
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3308
    invoke-direct {p0, p1, v3}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3305
    :cond_79
    add-int/lit8 v5, v5, -0x1

    goto :goto_67

    .line 3311
    .end local v5  # "j":I
    :cond_7c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_87

    .line 3312
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3303
    .end local v4  # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_87
    add-int/lit8 v2, v2, -0x1

    goto :goto_58

    .line 3317
    .end local v2  # "i":I
    :cond_8a
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    const/4 v4, 0x0

    if-eqz v2, :cond_95

    iget v2, v2, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v2, p1, :cond_95

    .line 3318
    iput-object v4, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 3320
    :cond_95
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v2, :cond_ba

    iget v2, v2, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v2, p1, :cond_ba

    .line 3322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed app uid "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " set idle-until alarm!"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "AlarmManager"

    invoke-static {v5, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3323
    iput-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 3325
    :cond_ba
    if-eqz v0, :cond_c5

    .line 3329
    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 3330
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 3331
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 3333
    :cond_c5
    return-void
.end method

.method removeLocked(Ljava/lang/String;)V
    .registers 13
    .param p1, "packageName"  # Ljava/lang/String;

    .line 3336
    if-nez p1, :cond_3

    .line 3341
    return-void

    .line 3344
    :cond_3
    const/4 v0, 0x0

    .line 3345
    .local v0, "didRemove":Z
    new-instance v1, Landroid/util/MutableBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 3346
    .local v1, "removedNextWakeFromIdle":Landroid/util/MutableBoolean;
    new-instance v3, Lcom/android/server/-$$Lambda$AlarmManagerService$iI87lOgeHXMagii4XiFcLdtBJ6Y;

    .local v3, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-direct {v3, p0, p1, v1}, Lcom/android/server/-$$Lambda$AlarmManagerService$iI87lOgeHXMagii4XiFcLdtBJ6Y;-><init>(Lcom/android/server/AlarmManagerService;Ljava/lang/String;Landroid/util/MutableBoolean;)V

    .line 3353
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Lcom/android/server/AlarmManagerService;->haveBatchesTimeTickAlarm(Ljava/util/ArrayList;)Z

    move-result v4

    .line 3354
    .local v4, "oldHasTick":Z
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .local v5, "i":I
    :goto_1d
    if-ltz v5, :cond_3a

    .line 3355
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerService$Batch;

    .line 3356
    .local v7, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v7, v3, v2}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/util/function/Predicate;Z)Z

    move-result v8

    or-int/2addr v0, v8

    .line 3357
    invoke-virtual {v7}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v8

    if-nez v8, :cond_37

    .line 3358
    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3354
    .end local v7  # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_37
    add-int/lit8 v5, v5, -0x1

    goto :goto_1d

    .line 3361
    .end local v5  # "i":I
    :cond_3a
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/android/server/AlarmManagerService;->haveBatchesTimeTickAlarm(Ljava/util/ArrayList;)Z

    move-result v2

    .line 3362
    .local v2, "newHasTick":Z
    if-eq v4, v2, :cond_61

    .line 3363
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeLocked: hasTick changed from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "AlarmManager"

    invoke-static {v7, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3366
    :cond_61
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v6

    .restart local v5  # "i":I
    :goto_68
    if-ltz v5, :cond_85

    .line 3367
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3368
    .local v7, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v7, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_82

    .line 3370
    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3371
    iget v8, v7, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {p0, v8, v6}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3366
    .end local v7  # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_82
    add-int/lit8 v5, v5, -0x1

    goto :goto_68

    .line 3374
    .end local v5  # "i":I
    :cond_85
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    sub-int/2addr v5, v6

    .restart local v5  # "i":I
    :goto_8c
    if-ltz v5, :cond_c2

    .line 3375
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 3376
    .local v7, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v6

    .local v8, "j":I
    :goto_9b
    if-ltz v8, :cond_b4

    .line 3377
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3378
    .local v9, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v9, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b1

    .line 3379
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3380
    iget v10, v9, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {p0, v10, v6}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3376
    .end local v9  # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_b1
    add-int/lit8 v8, v8, -0x1

    goto :goto_9b

    .line 3383
    .end local v8  # "j":I
    :cond_b4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_bf

    .line 3384
    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3374
    .end local v7  # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_bf
    add-int/lit8 v5, v5, -0x1

    goto :goto_8c

    .line 3389
    .end local v5  # "i":I
    :cond_c2
    iget-boolean v5, v1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v5, :cond_c9

    .line 3390
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 3392
    :cond_c9
    if-eqz v0, :cond_d8

    .line 3398
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    sget-object v6, Lcom/android/server/AlarmManagerService;->sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3400
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 3401
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 3403
    :cond_d8
    return-void
.end method

.method removeUserLocked(I)V
    .registers 9
    .param p1, "userHandle"  # I

    .line 3463
    if-nez p1, :cond_3

    .line 3465
    return-void

    .line 3467
    :cond_3
    const/4 v0, 0x0

    .line 3468
    .local v0, "didRemove":Z
    new-instance v1, Lcom/android/server/-$$Lambda$AlarmManagerService$AyzIPVIMvB7gtaOddkJLWSr87BU;

    .local v1, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-direct {v1, p1}, Lcom/android/server/-$$Lambda$AlarmManagerService$AyzIPVIMvB7gtaOddkJLWSr87BU;-><init>(I)V

    .line 3470
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_11
    if-ltz v2, :cond_2f

    .line 3471
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    .line 3472
    .local v4, "b":Lcom/android/server/AlarmManagerService$Batch;
    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/util/function/Predicate;Z)Z

    move-result v5

    or-int/2addr v0, v5

    .line 3473
    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v5

    if-nez v5, :cond_2c

    .line 3474
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3470
    .end local v4  # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_2c
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 3477
    .end local v2  # "i":I
    :cond_2f
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2  # "i":I
    :goto_36
    if-ltz v2, :cond_58

    .line 3478
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    iget v4, v4, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_55

    .line 3481
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3482
    .local v4, "removed":Lcom/android/server/AlarmManagerService$Alarm;
    iget v5, v4, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {p0, v5, v3}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3477
    .end local v4  # "removed":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_55
    add-int/lit8 v2, v2, -0x1

    goto :goto_36

    .line 3485
    .end local v2  # "i":I
    :cond_58
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2  # "i":I
    :goto_5f
    if-ltz v2, :cond_94

    .line 3486
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_91

    .line 3487
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 3488
    .local v4, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v4, :cond_8c

    .line 3489
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_78
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_8c

    .line 3490
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    iget v6, v6, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {p0, v6, v3}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3489
    add-int/lit8 v5, v5, 0x1

    goto :goto_78

    .line 3493
    .end local v5  # "j":I
    :cond_8c
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3485
    .end local v4  # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_91
    add-int/lit8 v2, v2, -0x1

    goto :goto_5f

    .line 3496
    .end local v2  # "i":I
    :cond_94
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v2}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2  # "i":I
    :goto_9b
    if-ltz v2, :cond_b1

    .line 3497
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_ae

    .line 3498
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 3496
    :cond_ae
    add-int/lit8 v2, v2, -0x1

    goto :goto_9b

    .line 3502
    .end local v2  # "i":I
    :cond_b1
    if-eqz v0, :cond_bc

    .line 3506
    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 3507
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 3508
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 3510
    :cond_bc
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

    .line 1154
    .local p1, "targetPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v0

    .line 1155
    .local v0, "start":J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1157
    .local v2, "rescheduledAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "batchIndex":I
    :goto_13
    if-ltz v3, :cond_5e

    .line 1158
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Batch;

    .line 1159
    .local v5, "batch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v5}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v6

    sub-int/2addr v6, v4

    .local v6, "alarmIndex":I
    :goto_22
    if-ltz v6, :cond_50

    .line 1160
    invoke-virtual {v5, v6}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v7

    .line 1161
    .local v7, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v8, v7, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    iget v9, v7, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    .line 1162
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    .line 1163
    .local v8, "packageUser":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_41

    invoke-virtual {p1, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_41

    .line 1164
    goto :goto_4d

    .line 1166
    :cond_41
    invoke-direct {p0, v7}, Lcom/android/server/AlarmManagerService;->adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v9

    if-eqz v9, :cond_4d

    .line 1167
    invoke-virtual {v5, v7}, Lcom/android/server/AlarmManagerService$Batch;->remove(Lcom/android/server/AlarmManagerService$Alarm;)Z

    .line 1168
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1159
    .end local v7  # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v8  # "packageUser":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_4d
    :goto_4d
    add-int/lit8 v6, v6, -0x1

    goto :goto_22

    .line 1171
    .end local v6  # "alarmIndex":I
    :cond_50
    invoke-virtual {v5}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v6

    if-nez v6, :cond_5b

    .line 1172
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1157
    .end local v5  # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_5b
    add-int/lit8 v3, v3, -0x1

    goto :goto_13

    .line 1175
    .end local v3  # "batchIndex":I
    :cond_5e
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_71

    .line 1176
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1177
    .local v5, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-direct {p0, v5}, Lcom/android/server/AlarmManagerService;->insertAndBatchAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 1175
    .end local v5  # "a":Lcom/android/server/AlarmManagerService$Alarm;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    .line 1180
    .end local v3  # "i":I
    :cond_71
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 1181
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7d

    goto :goto_7e

    :cond_7d
    const/4 v4, 0x0

    :goto_7e
    return v4
.end method

.method rescheduleKernelAlarmsLocked()V
    .registers 11

    .line 3170
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 3171
    .local v0, "nowElapsed":J
    const-wide/16 v2, 0x0

    .line 3172
    .local v2, "nextNonWakeup":J
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_37

    .line 3173
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->findFirstWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;

    move-result-object v4

    .line 3174
    .local v4, "firstWakeup":Lcom/android/server/AlarmManagerService$Batch;
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Batch;

    .line 3177
    .local v5, "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    if-eqz v4, :cond_33

    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    iget-wide v8, v4, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_33

    .line 3179
    iget-wide v6, v4, Lcom/android/server/AlarmManagerService$Batch;->start:J

    iput-wide v6, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    .line 3180
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNextWakeUpSetAt:J

    .line 3181
    const/4 v6, 0x2

    iget-wide v7, v4, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    .line 3183
    :cond_33
    if-eq v5, v4, :cond_37

    .line 3184
    iget-wide v2, v5, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 3187
    .end local v4  # "firstWakeup":Lcom/android/server/AlarmManagerService$Batch;
    .end local v5  # "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_37
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v5, 0x0

    if-lez v4, :cond_4d

    .line 3188
    cmp-long v4, v2, v5

    if-eqz v4, :cond_4b

    iget-wide v7, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v4, v7, v2

    if-gez v4, :cond_4d

    .line 3189
    :cond_4b
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 3194
    :cond_4d
    cmp-long v4, v2, v5

    if-eqz v4, :cond_5f

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_5f

    .line 3196
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    .line 3197
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeUpSetAt:J

    .line 3198
    const/4 v4, 0x3

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    .line 3200
    :cond_5f
    return-void
.end method

.method restorePendingWhileIdleAlarmsLocked()V
    .registers 7

    .line 1351
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2c

    .line 1352
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 1353
    .local v0, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 1354
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v1

    .line 1355
    .local v1, "nowElapsed":J
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1d
    if-ltz v3, :cond_2c

    .line 1356
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1357
    .local v4, "a":Lcom/android/server/AlarmManagerService$Alarm;
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v1, v2, v5}, Lcom/android/server/AlarmManagerService;->reAddAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V

    .line 1355
    .end local v4  # "a":Lcom/android/server/AlarmManagerService$Alarm;
    add-int/lit8 v3, v3, -0x1

    goto :goto_1d

    .line 1362
    .end local v0  # "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v1  # "nowElapsed":J
    .end local v3  # "i":I
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1363
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 1365
    return-void
.end method

.method sendAllUnrestrictedPendingBackgroundAlarmsLocked()V
    .registers 4

    .line 1253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1255
    .local v0, "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/-$$Lambda$AlarmManagerService$nSJw2tKfoL3YIrKDtszoL44jcSM;

    invoke-direct {v2, p0}, Lcom/android/server/-$$Lambda$AlarmManagerService$nSJw2tKfoL3YIrKDtszoL44jcSM;-><init>(Lcom/android/server/AlarmManagerService;)V

    invoke-static {v1, v0, v2}, Lcom/android/server/AlarmManagerService;->findAllUnrestrictedPendingBackgroundAlarmsLockedInner(Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/util/function/Predicate;)V

    .line 1258
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1e

    .line 1259
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/AlarmManagerService;->deliverPendingBackgroundAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 1261
    :cond_1e
    return-void
.end method

.method sendPendingBackgroundAlarmsLocked(ILjava/lang/String;)V
    .registers 8
    .param p1, "uid"  # I
    .param p2, "packageName"  # Ljava/lang/String;

    .line 1216
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1217
    .local v0, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v0, :cond_54

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_11

    goto :goto_54

    .line 1221
    :cond_11
    if-eqz p2, :cond_44

    .line 1225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1226
    .local v1, "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1e
    if-ltz v2, :cond_38

    .line 1227
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1228
    .local v3, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v3, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 1229
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1226
    .end local v3  # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_35
    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    .line 1232
    .end local v2  # "i":I
    :cond_38
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_4a

    .line 1233
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_4a

    .line 1239
    .end local v1  # "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_44
    move-object v1, v0

    .line 1240
    .restart local v1  # "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1242
    :cond_4a
    :goto_4a
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/AlarmManagerService;->deliverPendingBackgroundAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 1243
    return-void

    .line 1218
    .end local v1  # "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_54
    :goto_54
    return-void
.end method

.method setImpl(IJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V
    .registers 58
    .param p1, "type"  # I
    .param p2, "triggerAtTime"  # J
    .param p4, "windowLength"  # J
    .param p6, "interval"  # J
    .param p8, "operation"  # Landroid/app/PendingIntent;
    .param p9, "directReceiver"  # Landroid/app/IAlarmListener;
    .param p10, "listenerTag"  # Ljava/lang/String;
    .param p11, "flags"  # I
    .param p12, "workSource"  # Landroid/os/WorkSource;
    .param p13, "alarmClock"  # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p14, "callingUid"  # I
    .param p15, "callingPackage"  # Ljava/lang/String;

    .line 1780
    move-object/from16 v15, p0

    move/from16 v0, p1

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    move-object/from16 v14, p8

    move/from16 v13, p14

    if-nez v14, :cond_12

    if-eqz p9, :cond_16

    :cond_12
    if-eqz v14, :cond_1e

    if-eqz p9, :cond_1e

    .line 1782
    :cond_16
    const-string v7, "AlarmManager"

    const-string v8, "Alarms must either supply a PendingIntent or an AlarmReceiver"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    return-void

    .line 1790
    :cond_1e
    const-wide/32 v7, 0x2932e00

    cmp-long v7, v3, v7

    if-lez v7, :cond_44

    .line 1791
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Window length "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ms suspiciously long; limiting to 1 hour"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AlarmManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    const-wide/32 v3, 0x36ee80

    .line 1799
    .end local p4  # "windowLength":J
    .local v3, "windowLength":J
    :cond_44
    iget-object v7, v15, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v11, v7, Lcom/android/server/AlarmManagerService$Constants;->MIN_INTERVAL:J

    .line 1800
    .local v11, "minInterval":J
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_7d

    cmp-long v9, v5, v11

    if-gez v9, :cond_7d

    .line 1801
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Suspiciously short interval "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " millis; expanding to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v16, 0x3e8

    div-long v7, v11, v16

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " seconds"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AlarmManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    move-wide v5, v11

    move-wide/from16 v22, v5

    .end local p6  # "interval":J
    .local v5, "interval":J
    goto :goto_a9

    .line 1805
    .end local v5  # "interval":J
    .restart local p6  # "interval":J
    :cond_7d
    iget-object v7, v15, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v7, v7, Lcom/android/server/AlarmManagerService$Constants;->MAX_INTERVAL:J

    cmp-long v7, v5, v7

    if-lez v7, :cond_a7

    .line 1806
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Suspiciously long interval "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " millis; clamping"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AlarmManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    iget-object v7, v15, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v5, v7, Lcom/android/server/AlarmManagerService$Constants;->MAX_INTERVAL:J

    move-wide/from16 v22, v5

    .end local p6  # "interval":J
    .restart local v5  # "interval":J
    goto :goto_a9

    .line 1805
    .end local v5  # "interval":J
    .restart local p6  # "interval":J
    :cond_a7
    move-wide/from16 v22, v5

    .line 1811
    .end local p6  # "interval":J
    .local v22, "interval":J
    :goto_a9
    if-ltz v0, :cond_1df

    const/4 v5, 0x5

    if-gt v0, v5, :cond_1df

    .line 1815
    const-wide/16 v6, 0x0

    cmp-long v8, v1, v6

    if-gez v8, :cond_e3

    .line 1816
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    int-to-long v6, v6

    .line 1817
    .local v6, "what":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid alarm trigger time! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " from uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "AlarmManager"

    invoke-static {v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    const-wide/16 v1, 0x0

    move-wide v9, v1

    .end local p2  # "triggerAtTime":J
    .local v1, "triggerAtTime":J
    goto :goto_e4

    .line 1815
    .end local v1  # "triggerAtTime":J
    .end local v6  # "what":J
    .restart local p2  # "triggerAtTime":J
    :cond_e3
    move-wide v9, v1

    .line 1822
    .end local p2  # "triggerAtTime":J
    .local v9, "triggerAtTime":J
    :goto_e4
    if-eq v0, v5, :cond_ec

    const/4 v1, 0x4

    if-ne v0, v1, :cond_ea

    goto :goto_ec

    :cond_ea
    move v7, v0

    goto :goto_ee

    .line 1824
    :cond_ec
    :goto_ec
    const/4 v0, 0x5

    move v7, v0

    .line 1828
    .end local p1  # "type":I
    .local v7, "type":I
    :goto_ee
    iget-object v0, v15, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v24

    .line 1829
    .local v24, "nowElapsed":J
    invoke-direct {v15, v9, v10, v7}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v26

    .line 1831
    .local v26, "nominalTrigger":J
    iget-object v0, v15, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Constants;->MIN_FUTURITY:J

    add-long v28, v24, v0

    .line 1832
    .local v28, "minTrigger":J
    cmp-long v0, v26, v28

    if-lez v0, :cond_105

    move-wide/from16 v0, v26

    goto :goto_107

    :cond_105
    move-wide/from16 v0, v28

    :goto_107
    move-wide/from16 v30, v0

    .line 1835
    .local v30, "triggerElapsed":J
    const-wide/16 v0, 0x0

    cmp-long v2, v3, v0

    if-nez v2, :cond_116

    .line 1836
    move-wide/from16 v0, v30

    move-wide/from16 v34, v0

    move-wide/from16 v32, v3

    .local v0, "maxElapsed":J
    goto :goto_131

    .line 1837
    .end local v0  # "maxElapsed":J
    :cond_116
    cmp-long v0, v3, v0

    if-gez v0, :cond_12b

    .line 1838
    move-wide/from16 v16, v24

    move-wide/from16 v18, v30

    move-wide/from16 v20, v22

    invoke-static/range {v16 .. v21}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v0

    .line 1840
    .restart local v0  # "maxElapsed":J
    sub-long v2, v0, v30

    move-wide/from16 v34, v0

    move-wide/from16 v32, v2

    .end local v3  # "windowLength":J
    .local v2, "windowLength":J
    goto :goto_131

    .line 1842
    .end local v0  # "maxElapsed":J
    .end local v2  # "windowLength":J
    .restart local v3  # "windowLength":J
    :cond_12b
    add-long v0, v30, v3

    move-wide/from16 v34, v0

    move-wide/from16 v32, v3

    .line 1844
    .end local v3  # "windowLength":J
    .local v32, "windowLength":J
    .local v34, "maxElapsed":J
    :goto_131
    if-eqz v14, :cond_138

    .line 1845
    iget-object v0, v15, Lcom/android/server/AlarmManagerService;->mOperationCancelListener:Landroid/app/PendingIntent$CancelListener;

    invoke-virtual {v14, v0}, Landroid/app/PendingIntent;->registerCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    .line 1847
    :cond_138
    iget-object v8, v15, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1857
    :try_start_13b
    iget-object v0, v15, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v13, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    iget-object v1, v15, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget v1, v1, Lcom/android/server/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I
    :try_end_146
    .catchall {:try_start_13b .. :try_end_146} :catchall_1ce

    if-ge v0, v1, :cond_17b

    .line 1867
    const/16 v17, 0x1

    move-object/from16 v1, p0

    move v2, v7

    move-wide v3, v9

    move-wide/from16 v5, v30

    move/from16 v36, v7

    move-object/from16 v37, v8

    .end local v7  # "type":I
    .local v36, "type":I
    move-wide/from16 v7, v32

    move-wide/from16 v38, v9

    .end local v9  # "triggerAtTime":J
    .local v38, "triggerAtTime":J
    move-wide/from16 v9, v34

    move-wide/from16 v40, v11

    .end local v11  # "minInterval":J
    .local v40, "minInterval":J
    move-wide/from16 v11, v22

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    move/from16 v16, p11

    move-object/from16 v18, p12

    move-object/from16 v19, p13

    move/from16 v20, p14

    move-object/from16 v21, p15

    :try_start_16e
    invoke-direct/range {v1 .. v21}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    .line 1870
    monitor-exit v37

    .line 1871
    return-void

    .line 1870
    :catchall_173
    move-exception v0

    move-object/from16 v5, p0

    :goto_176
    move-object/from16 v7, p8

    move-object/from16 v6, p15

    goto :goto_1db

    .line 1858
    .end local v36  # "type":I
    .end local v38  # "triggerAtTime":J
    .end local v40  # "minInterval":J
    .restart local v7  # "type":I
    .restart local v9  # "triggerAtTime":J
    .restart local v11  # "minInterval":J
    :cond_17b
    move/from16 v36, v7

    move-object/from16 v37, v8

    move-wide/from16 v38, v9

    move-wide/from16 v40, v11

    .end local v7  # "type":I
    .end local v9  # "triggerAtTime":J
    .end local v11  # "minInterval":J
    .restart local v36  # "type":I
    .restart local v38  # "triggerAtTime":J
    .restart local v40  # "minInterval":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Maximum limit of concurrent alarms "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_18d
    .catchall {:try_start_16e .. :try_end_18d} :catchall_173

    move-object/from16 v5, p0

    :try_start_18f
    iget-object v1, v5, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget v1, v1, Lcom/android/server/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " reached for uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1860
    invoke-static/range {p14 .. p14}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", callingPackage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1a7
    .catchall {:try_start_18f .. :try_end_1a7} :catchall_1cc

    move-object/from16 v6, p15

    :try_start_1a9
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1862
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v1, v5, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;
    :try_end_1b2
    .catchall {:try_start_1a9 .. :try_end_1b2} :catchall_1c8

    const/16 v2, 0x8

    move-object/from16 v7, p8

    :try_start_1b6
    invoke-virtual {v1, v2, v7}, Lcom/android/server/AlarmManagerService$AlarmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1863
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1864
    const-string v1, "AlarmManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v22  # "interval":J
    .end local v24  # "nowElapsed":J
    .end local v26  # "nominalTrigger":J
    .end local v28  # "minTrigger":J
    .end local v30  # "triggerElapsed":J
    .end local v32  # "windowLength":J
    .end local v34  # "maxElapsed":J
    .end local v36  # "type":I
    .end local v38  # "triggerAtTime":J
    .end local v40  # "minInterval":J
    .end local p0  # "this":Lcom/android/server/AlarmManagerService;
    .end local p8  # "operation":Landroid/app/PendingIntent;
    .end local p9  # "directReceiver":Landroid/app/IAlarmListener;
    .end local p10  # "listenerTag":Ljava/lang/String;
    .end local p11  # "flags":I
    .end local p12  # "workSource":Landroid/os/WorkSource;
    .end local p13  # "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local p14  # "callingUid":I
    .end local p15  # "callingPackage":Ljava/lang/String;
    throw v1

    .line 1870
    .end local v0  # "errorMsg":Ljava/lang/String;
    .restart local v22  # "interval":J
    .restart local v24  # "nowElapsed":J
    .restart local v26  # "nominalTrigger":J
    .restart local v28  # "minTrigger":J
    .restart local v30  # "triggerElapsed":J
    .restart local v32  # "windowLength":J
    .restart local v34  # "maxElapsed":J
    .restart local v36  # "type":I
    .restart local v38  # "triggerAtTime":J
    .restart local v40  # "minInterval":J
    .restart local p0  # "this":Lcom/android/server/AlarmManagerService;
    .restart local p8  # "operation":Landroid/app/PendingIntent;
    .restart local p9  # "directReceiver":Landroid/app/IAlarmListener;
    .restart local p10  # "listenerTag":Ljava/lang/String;
    .restart local p11  # "flags":I
    .restart local p12  # "workSource":Landroid/os/WorkSource;
    .restart local p13  # "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    .restart local p14  # "callingUid":I
    .restart local p15  # "callingPackage":Ljava/lang/String;
    :catchall_1c8
    move-exception v0

    move-object/from16 v7, p8

    goto :goto_1db

    :catchall_1cc
    move-exception v0

    goto :goto_176

    .end local v36  # "type":I
    .end local v38  # "triggerAtTime":J
    .end local v40  # "minInterval":J
    .restart local v7  # "type":I
    .restart local v9  # "triggerAtTime":J
    .restart local v11  # "minInterval":J
    :catchall_1ce
    move-exception v0

    move-object/from16 v6, p15

    move/from16 v36, v7

    move-object/from16 v37, v8

    move-wide/from16 v38, v9

    move-wide/from16 v40, v11

    move-object v7, v14

    move-object v5, v15

    .end local v7  # "type":I
    .end local v9  # "triggerAtTime":J
    .end local v11  # "minInterval":J
    .restart local v36  # "type":I
    .restart local v38  # "triggerAtTime":J
    .restart local v40  # "minInterval":J
    :goto_1db
    monitor-exit v37
    :try_end_1dc
    .catchall {:try_start_1b6 .. :try_end_1dc} :catchall_1dd

    throw v0

    :catchall_1dd
    move-exception v0

    goto :goto_1db

    .line 1811
    .end local v24  # "nowElapsed":J
    .end local v26  # "nominalTrigger":J
    .end local v28  # "minTrigger":J
    .end local v30  # "triggerElapsed":J
    .end local v32  # "windowLength":J
    .end local v34  # "maxElapsed":J
    .end local v36  # "type":I
    .end local v38  # "triggerAtTime":J
    .end local v40  # "minInterval":J
    .restart local v3  # "windowLength":J
    .restart local v11  # "minInterval":J
    .restart local p1  # "type":I
    .restart local p2  # "triggerAtTime":J
    :cond_1df
    move-object/from16 v6, p15

    move-wide/from16 v40, v11

    move-object v7, v14

    move-object v5, v15

    .line 1812
    .end local v11  # "minInterval":J
    .restart local v40  # "minInterval":J
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid alarm type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method setTimeImpl(J)Z
    .registers 11
    .param p1, "millis"  # J

    .line 1704
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->isAlarmDriverPresent()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1705
    const-string v0, "AlarmManager"

    const-string v1, "Not setting time since no alarm driver is available."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    const/4 v0, 0x0

    return v0

    .line 1709
    :cond_11
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1710
    :try_start_14
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v1

    .line 1711
    .local v1, "currentTimeMillis":J
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/AlarmManagerService$Injector;->setKernelTime(J)V

    .line 1712
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    .line 1713
    .local v3, "timeZone":Ljava/util/TimeZone;
    invoke-virtual {v3, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    .line 1714
    .local v4, "currentTzOffset":I
    invoke-virtual {v3, p1, p2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    .line 1715
    .local v5, "newTzOffset":I
    if-eq v4, v5, :cond_3f

    .line 1716
    const-string v6, "AlarmManager"

    const-string v7, "Timezone offset has changed, updating kernel timezone"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    const v7, 0xea60

    div-int v7, v5, v7

    neg-int v7, v7

    invoke-virtual {v6, v7}, Lcom/android/server/AlarmManagerService$Injector;->setKernelTimezone(I)V

    .line 1722
    :cond_3f
    const/4 v6, 0x1

    monitor-exit v0

    return v6

    .line 1723
    .end local v1  # "currentTimeMillis":J
    .end local v3  # "timeZone":Ljava/util/TimeZone;
    .end local v4  # "currentTzOffset":I
    .end local v5  # "newTzOffset":I
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_14 .. :try_end_44} :catchall_42

    throw v1
.end method

.method setTimeZoneImpl(Ljava/lang/String;)V
    .registers 8
    .param p1, "tz"  # Ljava/lang/String;

    .line 1727
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1728
    return-void

    .line 1731
    :cond_7
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 1734
    .local v0, "zone":Ljava/util/TimeZone;
    const/4 v1, 0x0

    .line 1735
    .local v1, "timeZoneWasChanged":Z
    monitor-enter p0

    .line 1736
    :try_start_d
    const-string/jumbo v2, "persist.sys.timezone"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1737
    .local v2, "current":Ljava/lang/String;
    if-eqz v2, :cond_20

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 1741
    :cond_20
    const/4 v1, 0x1

    .line 1742
    const-string/jumbo v3, "persist.sys.timezone"

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    :cond_2b
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    .line 1748
    .local v3, "gmtOffset":I
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    const v5, 0xea60

    div-int v5, v3, v5

    neg-int v5, v5

    invoke-virtual {v4, v5}, Lcom/android/server/AlarmManagerService$Injector;->setKernelTimezone(I)V

    .line 1749
    .end local v2  # "current":Ljava/lang/String;
    .end local v3  # "gmtOffset":I
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_d .. :try_end_41} :catchall_70

    .line 1751
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1753
    if-eqz v1, :cond_6f

    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mIsEncryptStatus:Z

    if-nez v2, :cond_6f

    .line 1755
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 1758
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1759
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x21200000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1762
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "time-zone"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1763
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1765
    .end local v2  # "intent":Landroid/content/Intent;
    :cond_6f
    return-void

    .line 1749
    :catchall_70
    move-exception v2

    :try_start_71
    monitor-exit p0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw v2
.end method

.method setWakelockWorkSource(Landroid/os/WorkSource;ILjava/lang/String;Z)V
    .registers 8
    .param p1, "ws"  # Landroid/os/WorkSource;
    .param p2, "knownUid"  # I
    .param p3, "tag"  # Ljava/lang/String;
    .param p4, "first"  # Z

    .line 4371
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p4, :cond_7

    move-object v2, p3

    goto :goto_8

    :cond_7
    move-object v2, v0

    :goto_8
    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setHistoryTag(Ljava/lang/String;)V

    .line 4373
    if-eqz p1, :cond_13

    .line 4374
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 4375
    return-void

    .line 4378
    :cond_13
    if-ltz p2, :cond_20

    .line 4379
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2, p2}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_21

    .line 4380
    return-void

    .line 4383
    :cond_20
    goto :goto_22

    .line 4382
    :catch_21
    move-exception v1

    .line 4386
    :goto_22
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 4387
    return-void
.end method

.method triggerAlarmsLocked(Ljava/util/ArrayList;J)Z
    .registers 40
    .param p2, "nowELAPSED"  # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;J)Z"
        }
    .end annotation

    .line 3660
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    const/4 v1, 0x0

    .line 3664
    .local v1, "hasWakeup":Z
    :goto_5
    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v14, 0x1

    if-lez v2, :cond_19b

    .line 3665
    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/android/server/AlarmManagerService$Batch;

    .line 3666
    .local v12, "batch":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v2, v12, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v2, v2, p2

    if-lez v2, :cond_22

    .line 3668
    move-object v2, v0

    move v3, v14

    goto/16 :goto_19d

    .line 3673
    :cond_22
    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3675
    invoke-virtual {v12}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v10

    .line 3676
    .local v10, "N":I
    const/4 v2, 0x0

    move/from16 v27, v1

    move v11, v2

    .end local v1  # "hasWakeup":Z
    .local v11, "i":I
    .local v27, "hasWakeup":Z
    :goto_2f
    if-ge v11, v10, :cond_18e

    .line 3677
    invoke-virtual {v12, v11}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v8

    .line 3678
    .local v8, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v1, v1, 0x4

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_74

    iget-object v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    .line 3680
    const-string v4, "com.flyme.aod.refresh"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_74

    .line 3683
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    iget v4, v8, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    const-wide/16 v5, -0x1

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v4

    .line 3684
    .local v4, "lastTime":J
    iget v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-direct {v0, v1}, Lcom/android/server/AlarmManagerService;->getWhileIdleMinIntervalLocked(I)J

    move-result-wide v6

    add-long/2addr v6, v4

    .line 3685
    .local v6, "minTime":J
    cmp-long v1, v4, v2

    if-ltz v1, :cond_74

    cmp-long v1, p2, v6

    if-gez v1, :cond_74

    .line 3689
    iput-wide v6, v8, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v6, v8, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    .line 3690
    iget-wide v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v1, v1, v6

    if-gez v1, :cond_6c

    .line 3691
    iput-wide v6, v8, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 3693
    :cond_6c
    iget-wide v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    .line 3704
    invoke-direct {v0, v8, v14, v13}, Lcom/android/server/AlarmManagerService;->setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    .line 3705
    goto :goto_b2

    .line 3708
    .end local v4  # "lastTime":J
    .end local v6  # "minTime":J
    :cond_74
    invoke-direct {v0, v8}, Lcom/android/server/AlarmManagerService;->isBackgroundRestricted(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v1

    if-eqz v1, :cond_be

    .line 3711
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deferring alarm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " due to user forced app standby"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlarmManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3713
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    iget v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3714
    .local v1, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-nez v1, :cond_ae

    .line 3715
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 3716
    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    iget v3, v8, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3718
    :cond_ae
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3719
    nop

    .line 3676
    .end local v1  # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v8  # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :goto_b2
    move-object v2, v0

    move/from16 v22, v10

    move/from16 v25, v11

    move-object/from16 v26, v12

    move/from16 v34, v13

    move v3, v14

    goto/16 :goto_180

    .line 3722
    .restart local v8  # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_be
    iput v14, v8, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 3723
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3724
    iget v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_d5

    .line 3725
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v1, :cond_cf

    move v1, v14

    goto :goto_d0

    :cond_cf
    move v1, v13

    :goto_d0
    iget-object v4, v8, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/android/server/EventLogTags;->writeDeviceIdleWakeFromIdle(ILjava/lang/String;)V

    .line 3728
    :cond_d5
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    const/4 v4, 0x0

    if-ne v1, v8, :cond_e2

    .line 3729
    iput-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 3730
    invoke-virtual {v0, v13}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 3731
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->restorePendingWhileIdleAlarmsLocked()V

    .line 3733
    :cond_e2
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-ne v1, v8, :cond_eb

    .line 3734
    iput-object v4, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 3735
    invoke-virtual {v0, v13}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 3740
    :cond_eb
    iget-wide v4, v8, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_160

    .line 3743
    iget v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v1, v1

    iget-wide v3, v8, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    sub-long v3, p2, v3

    iget-wide v5, v8, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    div-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 3745
    iget v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v1, v1

    iget-wide v3, v8, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    mul-long v28, v1, v3

    .line 3747
    .local v28, "delta":J
    iget-wide v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    add-long v30, v1, v28

    .line 3748
    .local v30, "value1":J
    iget-wide v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    add-long v32, p2, v1

    .line 3749
    .local v32, "value2":J
    cmp-long v1, v30, v32

    if-lez v1, :cond_115

    move-wide/from16 v23, v30

    goto :goto_117

    :cond_115
    move-wide/from16 v23, v32

    .local v23, "nextElapsed":J
    :goto_117
    move-wide/from16 v4, v23

    .line 3751
    iget v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-wide v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    add-long v2, v2, v28

    iget-wide v6, v8, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    iget-wide v13, v8, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 3752
    move-wide/from16 v21, p2

    move-wide/from16 v25, v13

    invoke-static/range {v21 .. v26}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v13

    move/from16 v21, v1

    move-object v1, v8

    .end local v8  # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .local v1, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    move-wide v8, v13

    iget-wide v13, v1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move/from16 v22, v10

    move/from16 v25, v11

    .end local v10  # "N":I
    .end local v11  # "i":I
    .local v22, "N":I
    .local v25, "i":I
    move-wide v10, v13

    iget-object v13, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v26, v12

    .end local v12  # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .local v26, "batch":Lcom/android/server/AlarmManagerService$Batch;
    move-object v12, v13

    const/4 v13, 0x0

    const/16 v34, 0x0

    const/4 v14, 0x0

    iget v13, v1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    move v15, v13

    const/16 v16, 0x1

    iget-object v13, v1, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move-object/from16 v17, v13

    iget-object v13, v1, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object/from16 v18, v13

    iget v13, v1, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    move/from16 v19, v13

    iget-object v13, v1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    move-object/from16 v20, v13

    .line 3751
    move-object v13, v0

    move-object/from16 v0, p0

    move-object/from16 v35, v1

    move/from16 v1, v21

    const/4 v13, 0x0

    .end local v1  # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .local v35, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-direct/range {v0 .. v20}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    goto :goto_16a

    .line 3740
    .end local v22  # "N":I
    .end local v23  # "nextElapsed":J
    .end local v25  # "i":I
    .end local v26  # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v28  # "delta":J
    .end local v30  # "value1":J
    .end local v32  # "value2":J
    .end local v35  # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v8  # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v10  # "N":I
    .restart local v11  # "i":I
    .restart local v12  # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_160
    move-object/from16 v35, v8

    move/from16 v22, v10

    move/from16 v25, v11

    move-object/from16 v26, v12

    move/from16 v34, v13

    .line 3757
    .end local v8  # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v10  # "N":I
    .end local v11  # "i":I
    .end local v12  # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v22  # "N":I
    .restart local v25  # "i":I
    .restart local v26  # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v35  # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :goto_16a
    move-object/from16 v0, v35

    .end local v35  # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-boolean v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    if-eqz v1, :cond_173

    .line 3758
    const/4 v1, 0x1

    move/from16 v27, v1

    .line 3762
    :cond_173
    iget-object v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v1, :cond_17d

    .line 3763
    const/4 v3, 0x1

    move-object/from16 v2, p0

    iput-boolean v3, v2, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    goto :goto_180

    .line 3762
    :cond_17d
    const/4 v3, 0x1

    move-object/from16 v2, p0

    .line 3676
    .end local v0  # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :goto_180
    add-int/lit8 v11, v25, 0x1

    move-object/from16 v15, p1

    move-object v0, v2

    move v14, v3

    move/from16 v10, v22

    move-object/from16 v12, v26

    move/from16 v13, v34

    .end local v25  # "i":I
    .restart local v11  # "i":I
    goto/16 :goto_2f

    .end local v22  # "N":I
    .end local v26  # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v10  # "N":I
    .restart local v12  # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_18e
    move-object v2, v0

    move/from16 v22, v10

    move/from16 v25, v11

    move-object/from16 v26, v12

    .line 3766
    .end local v10  # "N":I
    .end local v11  # "i":I
    .end local v12  # "batch":Lcom/android/server/AlarmManagerService$Batch;
    move-object/from16 v15, p1

    move/from16 v1, v27

    goto/16 :goto_5

    .line 3664
    .end local v27  # "hasWakeup":Z
    .local v1, "hasWakeup":Z
    :cond_19b
    move-object v2, v0

    move v3, v14

    .line 3770
    :goto_19d
    iget v0, v2, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    add-int/2addr v0, v3

    iput v0, v2, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    .line 3771
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 3772
    iget-object v0, v2, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    move-object/from16 v3, p1

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3780
    return v1
.end method
