.class public Lcom/android/server/net/NetworkStatsService;
.super Landroid/net/INetworkStatsService$Stub;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;,
        Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;,
        Lcom/android/server/net/NetworkStatsService$HandlerCallback;,
        Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;,
        Lcom/android/server/net/NetworkStatsService$NetworkStatsHandler;,
        Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;
    }
.end annotation


# static fields
.field public static final ACTION_NETWORK_STATS_POLL:Ljava/lang/String; = "com.android.server.action.NETWORK_STATS_POLL"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final ACTION_NETWORK_STATS_UPDATED:Ljava/lang/String; = "com.android.server.action.NETWORK_STATS_UPDATED"

.field private static final DUMP_STATS_SESSION_COUNT:I = 0x14

.field private static final FLAG_PERSIST_ALL:I = 0x3

.field private static final FLAG_PERSIST_FORCE:I = 0x100

.field private static final FLAG_PERSIST_NETWORK:I = 0x1

.field private static final FLAG_PERSIST_UID:I = 0x2

.field static final LOGD:Z

.field static final LOGV:Z

.field private static final MSG_PERFORM_POLL:I = 0x1

.field private static final MSG_PERFORM_POLL_REGISTER_ALERT:I = 0x2

.field private static final PERFORM_POLL_DELAY_MS:I = 0x3e8

.field private static final POLL_RATE_LIMIT_MS:J = 0x3a98L

.field private static final PREFIX_DEV:Ljava/lang/String; = "dev"

.field private static final PREFIX_UID:Ljava/lang/String; = "uid"

.field private static final PREFIX_UID_TAG:Ljava/lang/String; = "uid_tag"

.field private static final PREFIX_XT:Ljava/lang/String; = "xt"

.field static final TAG:Ljava/lang/String; = "NetworkStats"

.field private static final TAG_NETSTATS_ERROR:Ljava/lang/String; = "netstats_error"

.field private static TYPE_RX_BYTES:I = 0x0

.field private static TYPE_RX_PACKETS:I = 0x0

.field private static TYPE_TCP_RX_PACKETS:I = 0x0

.field private static TYPE_TCP_TX_PACKETS:I = 0x0

.field private static TYPE_TX_BYTES:I = 0x0

.field private static TYPE_TX_PACKETS:I = 0x0

.field public static final VT_INTERFACE:Ljava/lang/String; = "vt_data0"


# instance fields
.field private mActiveIface:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation
.end field

.field private final mActiveIfaces:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveUidCounterSet:Landroid/util/SparseIntArray;

.field private final mActiveUidIfaces:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;"
        }
    .end annotation
.end field

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field private final mBaseDir:Ljava/io/File;

.field private final mClock:Ljava/time/Clock;

.field private final mContext:Landroid/content/Context;

.field private mDefaultNetworks:[Landroid/net/Network;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation
.end field

.field private mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation
.end field

.field private mGlobalAlertBytes:J

.field private mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private mLastStatsSessionPoll:J

.field private mMobileIfaces:[Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation
.end field

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field private final mNonMonotonicObserver:Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

.field private final mOpenSessionCallsPerUid:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mOpenSessionCallsPerUid"
        }
    .end annotation
.end field

.field private mPersistThreshold:J

.field private mPollIntent:Landroid/app/PendingIntent;

.field private mPollReceiver:Landroid/content/BroadcastReceiver;

.field private mRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

.field private mShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsLock:Ljava/lang/Object;

.field private final mStatsObservers:Lcom/android/server/net/NetworkStatsObservers;

.field private final mSystemDir:Ljava/io/File;

.field private volatile mSystemReady:Z

.field private final mTeleManager:Landroid/telephony/TelephonyManager;

.field private mTetherReceiver:Landroid/content/BroadcastReceiver;

.field private mUidOperations:Landroid/net/NetworkStats;

.field private mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation
.end field

.field private mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation
.end field

.field private final mUseBpfTrafficStats:Z

.field private mUserReceiver:Landroid/content/BroadcastReceiver;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation
.end field

.field private mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 158
    const-string v0, "NetworkStats"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/net/NetworkStatsService;->LOGD:Z

    .line 159
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/net/NetworkStatsService;->LOGV:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/AlarmManager;Landroid/os/PowerManager$WakeLock;Ljava/time/Clock;Landroid/telephony/TelephonyManager;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;Lcom/android/server/net/NetworkStatsObservers;Ljava/io/File;Ljava/io/File;)V
    .registers 15
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 357
    invoke-direct {p0}, Landroid/net/INetworkStatsService$Stub;-><init>()V

    .line 247
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    .line 250
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    .line 254
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    .line 262
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    .line 266
    new-array v0, v0, [Landroid/net/Network;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mDefaultNetworks:[Landroid/net/Network;

    .line 269
    new-instance v0, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;-><init>(Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkStatsService$1;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNonMonotonicObserver:Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

    .line 286
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    .line 289
    new-instance v0, Landroid/net/NetworkStats;

    const-wide/16 v1, 0x0

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    .line 296
    const-wide/32 v0, 0x200000

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    .line 304
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mOpenSessionCallsPerUid:Landroid/util/SparseIntArray;

    .line 1042
    new-instance v0, Lcom/android/server/net/NetworkStatsService$2;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsService$2;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    .line 1051
    new-instance v0, Lcom/android/server/net/NetworkStatsService$3;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsService$3;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mPollReceiver:Landroid/content/BroadcastReceiver;

    .line 1063
    new-instance v0, Lcom/android/server/net/NetworkStatsService$4;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsService$4;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 1083
    new-instance v0, Lcom/android/server/net/NetworkStatsService$5;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsService$5;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 1103
    new-instance v0, Lcom/android/server/net/NetworkStatsService$6;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsService$6;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 1116
    new-instance v0, Lcom/android/server/net/NetworkStatsService$7;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsService$7;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    .line 358
    const-string v0, "missing Context"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    .line 359
    const-string p1, "missing INetworkManagementService"

    invoke-static {p2, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/INetworkManagementService;

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 360
    const-string p1, "missing AlarmManager"

    invoke-static {p3, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 361
    const-string p1, "missing Clock"

    invoke-static {p5, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/time/Clock;

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mClock:Ljava/time/Clock;

    .line 362
    const-string p1, "missing NetworkStatsSettings"

    invoke-static {p7, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    .line 363
    const-string p1, "missing TelephonyManager"

    invoke-static {p6, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mTeleManager:Landroid/telephony/TelephonyManager;

    .line 364
    const-string p1, "missing WakeLock"

    invoke-static {p4, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager$WakeLock;

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 365
    const-string p1, "missing NetworkStatsObservers"

    invoke-static {p8, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/net/NetworkStatsObservers;

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsObservers:Lcom/android/server/net/NetworkStatsObservers;

    .line 366
    const-string p1, "missing systemDir"

    invoke-static {p9, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    .line 367
    const-string p1, "missing baseDir"

    invoke-static {p10, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mBaseDir:Ljava/io/File;

    .line 368
    new-instance p1, Ljava/io/File;

    const-string p2, "/sys/fs/bpf/map_netd_app_uid_stats_map"

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/net/NetworkStatsService;->mUseBpfTrafficStats:Z

    .line 369
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/net/NetworkStatsService;[I)V
    .registers 2

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->removeUidsLocked([I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/net/NetworkStatsService;I)V
    .registers 2

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->removeUserLocked(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/net/NetworkStatsService;)V
    .registers 1

    .line 156
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->shutdownLocked()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/net/NetworkStatsService;)Landroid/content/Context;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/server/net/NetworkStatsService;)Landroid/os/Handler;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;JJ)J
    .registers 6

    .line 156
    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkStatsService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1700(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .registers 6

    .line 156
    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkStatsService;->getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/server/net/NetworkStatsService;J)V
    .registers 3

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkStatsService;->advisePersistThreshold(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)I
    .registers 2

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->checkAccessLevel(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;IJJII)Landroid/net/NetworkStats;
    .registers 9

    .line 156
    invoke-direct/range {p0 .. p8}, Lcom/android/server/net/NetworkStatsService;->internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;IJJII)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    .registers 6

    .line 156
    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkStatsService;->internalGetHistoryForNetwork(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/net/NetworkStatsService;I)V
    .registers 2

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->performPoll(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/net/NetworkStatsService;)V
    .registers 1

    .line 156
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V

    return-void
.end method

.method private advisePersistThreshold(J)V
    .registers 9

    .line 889
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 892
    const-wide/32 v2, 0x20000

    const-wide/32 v4, 0x200000

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    .line 893
    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->LOGV:Z

    if-eqz v0, :cond_34

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "advisePersistThreshold() given "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", clamped to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NetworkStats"

    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :cond_34
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mClock:Ljava/time/Clock;

    invoke-virtual {p1}, Ljava/time/Clock;->millis()J

    move-result-wide p1

    .line 900
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 901
    :try_start_3d
    iget-boolean v1, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    if-nez v1, :cond_43

    monitor-exit v0

    return-void

    .line 903
    :cond_43
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updatePersistThresholdsLocked()V

    .line 905
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 906
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 907
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 908
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 909
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_3d .. :try_end_5b} :catchall_5f

    .line 912
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V

    .line 913
    return-void

    .line 909
    :catchall_5f
    move-exception p1

    :try_start_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw p1
.end method

.method private assertBandwidthControlEnabled()V
    .registers 3

    .line 1758
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1761
    return-void

    .line 1759
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bandwidth module disabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertSystemReady()V
    .registers 3

    .line 1752
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    if-eqz v0, :cond_5

    .line 1755
    return-void

    .line 1753
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "System not ready"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private bootstrapStatsLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation

    .line 1302
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1305
    :try_start_6
    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsService;->recordSnapshotLocked(J)V
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_9} :catch_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 1310
    :goto_9
    goto :goto_25

    .line 1308
    :catch_a
    move-exception v0

    goto :goto_25

    .line 1306
    :catch_c
    move-exception v0

    .line 1307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "problem reading network stats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1311
    :goto_25
    return-void
.end method

.method private buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;
    .registers 16

    .line 442
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v1, "dropbox"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/DropBoxManager;

    .line 444
    new-instance v0, Lcom/android/server/net/NetworkStatsRecorder;

    new-instance v2, Lcom/android/internal/util/FileRotator;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mBaseDir:Ljava/io/File;

    iget-wide v8, p2, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->rotateAgeMillis:J

    iget-wide v10, p2, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->deleteAgeMillis:J

    move-object v5, v2

    move-object v7, p1

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/util/FileRotator;-><init>(Ljava/io/File;Ljava/lang/String;JJ)V

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mNonMonotonicObserver:Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

    iget-wide v6, p2, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->bucketDuration:J

    move-object v1, v0

    move-object v5, p1

    move v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/server/net/NetworkStatsRecorder;-><init>(Lcom/android/internal/util/FileRotator;Landroid/net/NetworkStats$NonMonotonicObserver;Landroid/os/DropBoxManager;Ljava/lang/String;JZ)V

    return-object v0
.end method

.method private checkAccessLevel(Ljava/lang/String;)I
    .registers 4

    .line 687
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    .line 688
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 687
    invoke-static {v0, v1, p1}, Lcom/android/server/net/NetworkStatsAccess;->checkAccessLevel(Landroid/content/Context;ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method private checkBpfStatsEnable()Z
    .registers 2

    .line 1022
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mUseBpfTrafficStats:Z

    return v0
.end method

.method public static create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/net/NetworkStatsService;
    .registers 15

    .line 332
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/app/AlarmManager;

    .line 333
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 334
    nop

    .line 335
    const-string v12, "NetworkStats"

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v12}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    .line 337
    new-instance v0, Lcom/android/server/net/NetworkStatsService;

    .line 338
    invoke-static {}, Lcom/android/server/net/NetworkStatsService;->getDefaultClock()Ljava/time/Clock;

    move-result-object v6

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    new-instance v8, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;

    invoke-direct {v8, p0}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;-><init>(Landroid/content/Context;)V

    new-instance v9, Lcom/android/server/net/NetworkStatsObservers;

    invoke-direct {v9}, Lcom/android/server/net/NetworkStatsObservers;-><init>()V

    .line 340
    invoke-static {}, Lcom/android/server/net/NetworkStatsService;->getDefaultSystemDir()Ljava/io/File;

    move-result-object v10

    invoke-static {}, Lcom/android/server/net/NetworkStatsService;->getDefaultBaseDir()Ljava/io/File;

    move-result-object v11

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v11}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/AlarmManager;Landroid/os/PowerManager$WakeLock;Ljava/time/Clock;Landroid/telephony/TelephonyManager;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;Lcom/android/server/net/NetworkStatsObservers;Ljava/io/File;Ljava/io/File;)V

    .line 341
    invoke-direct {v0}, Lcom/android/server/net/NetworkStatsService;->registerLocalService()V

    .line 343
    new-instance p0, Landroid/os/HandlerThread;

    invoke-direct {p0, v12}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 344
    new-instance p1, Lcom/android/server/net/NetworkStatsService$HandlerCallback;

    invoke-direct {p1, v0}, Lcom/android/server/net/NetworkStatsService$HandlerCallback;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    .line 345
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 346
    new-instance v1, Lcom/android/server/net/NetworkStatsService$NetworkStatsHandler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lcom/android/server/net/NetworkStatsService$NetworkStatsHandler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 347
    invoke-virtual {v0, v1, p1}, Lcom/android/server/net/NetworkStatsService;->setHandler(Landroid/os/Handler;Landroid/os/Handler$Callback;)V

    .line 348
    return-object v0
.end method

.method private static dumpInterfaces(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;)V"
        }
    .end annotation

    .line 1646
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 1647
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 1649
    const-wide v3, 0x10900000001L

    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1650
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkIdentitySet;

    const-wide v4, 0x10b00000002L

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/server/net/NetworkIdentitySet;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1652
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1646
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1654
    :cond_2d
    return-void
.end method

.method private dumpProtoLocked(Ljava/io/FileDescriptor;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation

    .line 1630
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1634
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    const-wide v1, 0x20b00000001L

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/net/NetworkStatsService;->dumpInterfaces(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 1635
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    const-wide v1, 0x20b00000002L

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/net/NetworkStatsService;->dumpInterfaces(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 1636
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    const-wide v1, 0x10b00000003L

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/net/NetworkStatsRecorder;->writeToProtoLocked(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1637
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    const-wide v1, 0x10b00000004L

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/net/NetworkStatsRecorder;->writeToProtoLocked(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1638
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    const-wide v1, 0x10b00000005L

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/net/NetworkStatsRecorder;->writeToProtoLocked(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1639
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    const-wide v1, 0x10b00000006L

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/net/NetworkStatsRecorder;->writeToProtoLocked(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1641
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1642
    return-void
.end method

.method private static findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArrayMap<",
            "TK;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;TK;)",
            "Lcom/android/server/net/NetworkIdentitySet;"
        }
    .end annotation

    .line 1243
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkIdentitySet;

    .line 1244
    if-nez v0, :cond_10

    .line 1245
    new-instance v0, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v0}, Lcom/android/server/net/NetworkIdentitySet;-><init>()V

    .line 1246
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    :cond_10
    return-object v0
.end method

.method private static getDefaultBaseDir()Ljava/io/File;
    .registers 3

    .line 314
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/server/net/NetworkStatsService;->getDefaultSystemDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "netstats"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 316
    return-object v0
.end method

.method private static getDefaultClock()Ljava/time/Clock;
    .registers 5

    .line 320
    new-instance v0, Landroid/os/BestClock;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/time/Clock;

    invoke-static {}, Landroid/os/SystemClock;->currentNetworkTimeClock()Ljava/time/Clock;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 321
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Landroid/os/BestClock;-><init>(Ljava/time/ZoneId;[Ljava/time/Clock;)V

    .line 320
    return-object v0
.end method

.method private static getDefaultSystemDir()Ljava/io/File;
    .registers 3

    .line 310
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getNetworkStatsTethering(I)Landroid/net/NetworkStats;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1717
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->getNetworkStatsTethering(I)Landroid/net/NetworkStats;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 1718
    :catch_7
    move-exception p1

    .line 1719
    const-string v0, "NetworkStats"

    const-string/jumbo v1, "problem reading network stats"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1720
    new-instance p1, Landroid/net/NetworkStats;

    const-wide/16 v0, 0x0

    const/16 v2, 0xa

    invoke-direct {p1, v0, v1, v2}, Landroid/net/NetworkStats;-><init>(JI)V

    return-object p1
.end method

.method private getNetworkStatsUidDetail([Ljava/lang/String;)Landroid/net/NetworkStats;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1666
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, -0x1

    invoke-interface {v0, v1, p1}, Landroid/os/INetworkManagementService;->getNetworkStatsUidDetail(I[Ljava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v0

    .line 1670
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsTethering(I)Landroid/net/NetworkStats;

    move-result-object v3

    .line 1671
    invoke-virtual {v3, v1, p1, v1}, Landroid/net/NetworkStats;->filter(I[Ljava/lang/String;I)V

    .line 1672
    iget-boolean v4, p0, Lcom/android/server/net/NetworkStatsService;->mUseBpfTrafficStats:Z

    invoke-static {v0, v3, v4}, Lcom/android/server/net/NetworkStatsFactory;->apply464xlatAdjustments(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Z)V

    .line 1674
    invoke-virtual {v0, v3}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 1676
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 1680
    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getVtDataUsage(I)Landroid/net/NetworkStats;

    move-result-object v2

    .line 1681
    if-eqz v2, :cond_33

    .line 1682
    invoke-virtual {v2, v1, p1, v1}, Landroid/net/NetworkStats;->filter(I[Ljava/lang/String;I)V

    .line 1683
    iget-boolean p1, p0, Lcom/android/server/net/NetworkStatsService;->mUseBpfTrafficStats:Z

    invoke-static {v0, v2, p1}, Lcom/android/server/net/NetworkStatsFactory;->apply464xlatAdjustments(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Z)V

    .line 1685
    invoke-virtual {v0, v2}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 1688
    :cond_33
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    invoke-virtual {v0, p1}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 1690
    return-object v0
.end method

.method private getNetworkStatsXt()Landroid/net/NetworkStats;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1697
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->getNetworkStatsSummaryXt()Landroid/net/NetworkStats;

    move-result-object v0

    .line 1699
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1703
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getVtDataUsage(I)Landroid/net/NetworkStats;

    move-result-object v1

    .line 1704
    if-eqz v1, :cond_1b

    .line 1705
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 1708
    :cond_1b
    return-object v0
.end method

.method private getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .registers 15

    .line 751
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertSystemReady()V

    .line 752
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 756
    nop

    .line 758
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 756
    const/4 v2, 0x4

    const/4 v7, 0x3

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/net/NetworkStatsService;->internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;IJJII)Landroid/net/NetworkStats;

    move-result-object p1

    .line 758
    invoke-virtual {p1}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide p1

    .line 756
    return-wide p1
.end method

.method private getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .registers 16

    .line 762
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertSystemReady()V

    .line 763
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 766
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 767
    :try_start_9
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v2

    .line 768
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_1b

    .line 769
    const/4 v8, 0x3

    const/16 v9, 0x3e8

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJII)Landroid/net/NetworkStats;

    move-result-object p1

    return-object p1

    .line 768
    :catchall_1b
    move-exception p1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method private getTetherStats(Ljava/lang/String;I)J
    .registers 9

    .line 988
    const-string v0, "NetworkStats"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 990
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    :try_start_9
    invoke-direct {p0, v3}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsTethering(I)Landroid/net/NetworkStats;

    move-result-object v3
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_66
    .catchall {:try_start_9 .. :try_end_d} :catchall_64

    .line 995
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 996
    nop

    .line 998
    sget-object v1, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_18

    .line 999
    move-object v1, v2

    goto :goto_20

    .line 1001
    :cond_18
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1002
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1004
    :goto_20
    invoke-virtual {v3, v2, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 1005
    sget-boolean v2, Lcom/android/server/net/NetworkStatsService;->LOGD:Z

    if-eqz v2, :cond_4c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TetherStats: iface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " type="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " entry="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :cond_4c
    if-eqz p2, :cond_61

    const/4 p1, 0x1

    if-eq p2, p1, :cond_5e

    const/4 p1, 0x2

    if-eq p2, p1, :cond_5b

    const/4 p1, 0x3

    if-eq p2, p1, :cond_58

    .line 1017
    return-wide v4

    .line 1015
    :cond_58
    iget-wide p1, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    return-wide p1

    .line 1013
    :cond_5b
    iget-wide p1, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    return-wide p1

    .line 1011
    :cond_5e
    iget-wide p1, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    return-wide p1

    .line 1009
    :cond_61
    iget-wide p1, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    return-wide p1

    .line 995
    :catchall_64
    move-exception p1

    goto :goto_80

    .line 991
    :catch_66
    move-exception p1

    .line 992
    :try_start_67
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error get TetherStats: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catchall {:try_start_67 .. :try_end_7b} :catchall_64

    .line 993
    nop

    .line 995
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 993
    return-wide v4

    .line 995
    :goto_80
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private internalGetHistoryForNetwork(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    .registers 20

    .line 742
    move-object v0, p0

    invoke-direct/range {p0 .. p2}, Lcom/android/server/net/NetworkStatsService;->resolveSubscriptionPlan(Landroid/net/NetworkTemplate;I)Landroid/telephony/SubscriptionPlan;

    move-result-object v2

    .line 743
    iget-object v13, v0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v13

    .line 744
    :try_start_8
    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const-wide/high16 v7, -0x8000000000000000L

    const-wide v9, 0x7fffffffffffffffL

    move-object v1, p1

    move/from16 v6, p3

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;Landroid/telephony/SubscriptionPlan;IIIIJJII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    monitor-exit v13

    return-object v0

    .line 747
    :catchall_21
    move-exception v0

    monitor-exit v13
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_21

    throw v0
.end method

.method private internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;IJJII)Landroid/net/NetworkStats;
    .registers 32

    .line 721
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p7

    move/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsService;->internalGetHistoryForNetwork(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v4

    .line 724
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 725
    const/4 v11, 0x0

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    invoke-virtual/range {v4 .. v11}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    .line 727
    new-instance v1, Landroid/net/NetworkStats;

    sub-long v2, p5, p3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 728
    new-instance v2, Landroid/net/NetworkStats$Entry;

    move-object v5, v2

    sget-object v6, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iget-wide v13, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v3, v0, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    move-wide v15, v3

    iget-wide v3, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v17, v3

    iget-wide v3, v0, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    move-wide/from16 v19, v3

    iget-wide v3, v0, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    move-wide/from16 v21, v3

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct/range {v5 .. v22}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 731
    return-object v1
.end method

.method private isBandwidthControlEnabled()Z
    .registers 4

    .line 1764
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1766
    :try_start_4
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v2
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_13
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 1771
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1766
    return v2

    .line 1771
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1767
    :catch_13
    move-exception v2

    .line 1769
    const/4 v2, 0x0

    .line 1771
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1769
    return v2
.end method

.method private isRateLimitedForPoll(I)Z
    .registers 9

    .line 541
    const/4 v0, 0x0

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_6

    .line 542
    return v0

    .line 546
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 547
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mOpenSessionCallsPerUid:Landroid/util/SparseIntArray;

    monitor-enter v3

    .line 548
    :try_start_d
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mOpenSessionCallsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 549
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mOpenSessionCallsPerUid:Landroid/util/SparseIntArray;

    const/4 v6, 0x1

    add-int/2addr v4, v6

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 550
    iget-wide v4, p0, Lcom/android/server/net/NetworkStatsService;->mLastStatsSessionPoll:J

    .line 551
    iput-wide v1, p0, Lcom/android/server/net/NetworkStatsService;->mLastStatsSessionPoll:J

    .line 552
    monitor-exit v3

    .line 554
    sub-long/2addr v1, v4

    const-wide/16 v3, 0x3a98

    cmp-long p1, v1, v3

    if-gez p1, :cond_27

    move v0, v6

    :cond_27
    return v0

    .line 552
    :catchall_28
    move-exception p1

    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_d .. :try_end_2a} :catchall_28

    throw p1
.end method

.method private maybeUpgradeLegacyStatsLocked()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation

    .line 472
    const-string/jumbo v0, "problem during legacy upgrade"

    const-string v1, "NetworkStats"

    :try_start_5
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    const-string/jumbo v4, "netstats.bin"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 473
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 474
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v3, v2}, Lcom/android/server/net/NetworkStatsRecorder;->importLegacyNetworkLocked(Ljava/io/File;)V

    .line 475
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 478
    :cond_1d
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    const-string/jumbo v4, "netstats_xt.bin"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 479
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 480
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 483
    :cond_30
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    const-string/jumbo v4, "netstats_uid.bin"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 484
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_57

    .line 485
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v3, v2}, Lcom/android/server/net/NetworkStatsRecorder;->importLegacyUidLocked(Ljava/io/File;)V

    .line 486
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v3, v2}, Lcom/android/server/net/NetworkStatsRecorder;->importLegacyUidLocked(Ljava/io/File;)V

    .line 487
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_4d} :catch_53
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_4d} :catch_4e

    goto :goto_57

    .line 491
    :catch_4e
    move-exception v2

    .line 492
    invoke-static {v1, v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_58

    .line 489
    :catch_53
    move-exception v2

    .line 490
    invoke-static {v1, v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 493
    :cond_57
    :goto_57
    nop

    .line 494
    :goto_58
    return-void
.end method

.method private static native nativeGetIfaceStat(Ljava/lang/String;IZ)J
.end method

.method private static native nativeGetTotalStat(IZ)J
.end method

.method private static native nativeGetUidStat(IIZ)J
.end method

.method private openSessionInternal(ILjava/lang/String;)Landroid/net/INetworkStatsSession;
    .registers 7

    .line 558
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 560
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 561
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkStatsService;->isRateLimitedForPoll(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 562
    and-int/lit8 p1, p1, -0x2

    goto :goto_11

    .line 563
    :cond_10
    nop

    .line 564
    :goto_11
    and-int/lit8 v1, p1, 0x3

    if-eqz v1, :cond_26

    .line 566
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 568
    const/4 v3, 0x3

    :try_start_1a
    invoke-direct {p0, v3}, Lcom/android/server/net/NetworkStatsService;->performPoll(I)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_21

    .line 570
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 571
    goto :goto_26

    .line 570
    :catchall_21
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 577
    :cond_26
    :goto_26
    new-instance v1, Lcom/android/server/net/NetworkStatsService$1;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/android/server/net/NetworkStatsService$1;-><init>(Lcom/android/server/net/NetworkStatsService;ILjava/lang/String;I)V

    return-object v1
.end method

.method private performPoll(I)V
    .registers 4

    .line 1314
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1315
    :try_start_3
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1a

    .line 1318
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_13

    .line 1320
    :try_start_b
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1321
    nop

    .line 1322
    monitor-exit v0

    .line 1323
    return-void

    .line 1320
    :catchall_13
    move-exception p1

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw p1

    .line 1322
    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method private performPollLocked(I)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation

    .line 1331
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    if-nez v0, :cond_5

    return-void

    .line 1332
    :cond_5
    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->LOGV:Z

    const-string v1, "NetworkStats"

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performPollLocked(flags=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    :cond_29
    const-wide/32 v2, 0x200000

    const-string/jumbo v0, "performPollLocked"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1335
    and-int/lit8 v0, p1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_3a

    move v0, v5

    goto :goto_3b

    :cond_3a
    move v0, v4

    .line 1336
    :goto_3b
    and-int/lit8 v6, p1, 0x2

    if-eqz v6, :cond_41

    move v6, v5

    goto :goto_42

    :cond_41
    move v6, v4

    .line 1337
    :goto_42
    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_47

    move v4, v5

    .line 1340
    :cond_47
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mClock:Ljava/time/Clock;

    invoke-virtual {p1}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    .line 1343
    :try_start_4d
    invoke-direct {p0, v7, v8}, Lcom/android/server/net/NetworkStatsService;->recordSnapshotLocked(J)V
    :try_end_50
    .catch Ljava/lang/IllegalStateException; {:try_start_4d .. :try_end_50} :catch_ae
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_50} :catch_ac

    .line 1350
    nop

    .line 1353
    const-string p1, "[persisting]"

    invoke-static {v2, v3, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1354
    if-eqz v4, :cond_6d

    .line 1355
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {p1, v7, v8}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 1356
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {p1, v7, v8}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 1357
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {p1, v7, v8}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 1358
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {p1, v7, v8}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    goto :goto_85

    .line 1360
    :cond_6d
    if-eqz v0, :cond_79

    .line 1361
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {p1, v7, v8}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 1362
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {p1, v7, v8}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 1364
    :cond_79
    if-eqz v6, :cond_85

    .line 1365
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {p1, v7, v8}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 1366
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {p1, v7, v8}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 1369
    :cond_85
    :goto_85
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1371
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {p1}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getSampleEnabled()Z

    move-result p1

    if-eqz p1, :cond_93

    .line 1373
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->performSampleLocked()V

    .line 1377
    :cond_93
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.server.action.NETWORK_STATS_UPDATED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1378
    const/high16 v0, 0x40000000  # 2.0f

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1379
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "android.permission.READ_NETWORK_USAGE_HISTORY"

    invoke-virtual {v0, p1, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1382
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1383
    return-void

    .line 1347
    :catch_ac
    move-exception p1

    .line 1349
    return-void

    .line 1344
    :catch_ae
    move-exception p1

    .line 1345
    const-string/jumbo v0, "problem reading network stats"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1346
    return-void
.end method

.method private performSampleLocked()V
    .registers 55
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation

    .line 1391
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    move-wide/from16 v52, v1

    move-wide/from16 v26, v1

    .line 1399
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 1400
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v1}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v8

    .line 1401
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v1}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v14

    .line 1402
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v1}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 1404
    iget-wide v2, v8, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v4, v8, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v6, v8, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v8, v8, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-wide v10, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v12, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v28, v2

    iget-wide v2, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object v0, v14

    move-wide v14, v2

    iget-wide v2, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v16, v2

    iget-wide v2, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v18, v2

    iget-wide v2, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v20, v2

    iget-wide v2, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v22, v2

    iget-wide v0, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v24, v0

    move-wide/from16 v2, v28

    invoke-static/range {v2 .. v27}, Lcom/android/server/EventLogTags;->writeNetstatsMobileSample(JJJJJJJJJJJJJ)V

    .line 1411
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 1412
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v2

    .line 1413
    iget-object v3, v1, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v3, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v3

    .line 1414
    iget-object v1, v1, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 1416
    iget-wide v4, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v28, v4

    iget-wide v4, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v30, v4

    iget-wide v4, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v32, v4

    iget-wide v1, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v34, v1

    iget-wide v1, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v36, v1

    iget-wide v1, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v38, v1

    iget-wide v1, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v40, v1

    iget-wide v1, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v42, v1

    iget-wide v1, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v44, v1

    iget-wide v1, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v46, v1

    iget-wide v1, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v48, v1

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v50, v0

    invoke-static/range {v28 .. v53}, Lcom/android/server/EventLogTags;->writeNetstatsWifiSample(JJJJJJJJJJJJJ)V

    .line 1421
    return-void
.end method

.method private recordSnapshotLocked(J)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1255
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "snapshotUid"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1256
    sget-object v2, Landroid/net/NetworkStats;->INTERFACES_ALL:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsUidDetail([Ljava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v5

    .line 1257
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1258
    const-string/jumbo v2, "snapshotXt"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1259
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsXt()Landroid/net/NetworkStats;

    move-result-object v4

    .line 1260
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1261
    const-string/jumbo v2, "snapshotDev"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1262
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->getNetworkStatsSummaryDev()Landroid/net/NetworkStats;

    move-result-object v2

    .line 1263
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1267
    const-string/jumbo v3, "snapshotTether"

    invoke-static {v0, v1, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1268
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsTethering(I)Landroid/net/NetworkStats;

    move-result-object v3

    .line 1269
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1270
    invoke-virtual {v4, v3}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 1271
    invoke-virtual {v2, v3}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 1275
    const-string/jumbo v3, "recordDev"

    invoke-static {v0, v1, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1276
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2, v6, p1, p2}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;J)V

    .line 1277
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1278
    const-string/jumbo v2, "recordXt"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1279
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v2, v4, v3, p1, p2}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;J)V

    .line 1280
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1283
    const-string/jumbo v2, "recordUid"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1284
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v2, v5, v3, p1, p2}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;J)V

    .line 1285
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1286
    const-string/jumbo v2, "recordUidTag"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1287
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v2, v5, v3, p1, p2}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;J)V

    .line 1288
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1292
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mStatsObservers:Lcom/android/server/net/NetworkStatsObservers;

    new-instance v6, Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-direct {v6, v0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    new-instance v7, Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-direct {v7, v0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    move-wide v8, p1

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/net/NetworkStatsObservers;->updateStats(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/util/ArrayMap;Landroid/util/ArrayMap;J)V

    .line 1294
    return-void
.end method

.method private registerGlobalAlert()V
    .registers 4

    .line 520
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-wide v1, p0, Lcom/android/server/net/NetworkStatsService;->mGlobalAlertBytes:J

    invoke-interface {v0, v1, v2}, Landroid/os/INetworkManagementService;->setGlobalAlert(J)V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_7} :catch_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_22

    .line 523
    :catch_8
    move-exception v0

    goto :goto_23

    .line 521
    :catch_a
    move-exception v0

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "problem registering for global alert: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :goto_22
    nop

    .line 526
    :goto_23
    return-void
.end method

.method private registerLocalService()V
    .registers 4

    .line 372
    const-class v0, Lcom/android/server/net/NetworkStatsManagerInternal;

    new-instance v1, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;-><init>(Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkStatsService$1;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 374
    return-void
.end method

.method private registerPollAlarmLocked()V
    .registers 9

    .line 501
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_9

    .line 502
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 505
    :cond_9
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.action.NETWORK_STATS_POLL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    .line 508
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 509
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    .line 510
    invoke-interface {v0}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getPollInterval()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    .line 509
    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 511
    return-void
.end method

.method private varargs removeUidsLocked([I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation

    .line 1428
    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->LOGV:Z

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeUidsLocked() for UIDs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    :cond_1f
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V

    .line 1433
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsRecorder;->removeUidsLocked([I)V

    .line 1434
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsRecorder;->removeUidsLocked([I)V

    .line 1437
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2f
    if-ge v1, v0, :cond_39

    aget v2, p1, v1

    .line 1438
    invoke-static {v2}, Lcom/android/server/NetworkManagementSocketTagger;->resetKernelUidStats(I)V

    .line 1437
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 1440
    :cond_39
    return-void
.end method

.method private removeUserLocked(I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation

    .line 1447
    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->LOGV:Z

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeUserLocked() for userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    :cond_1b
    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 1451
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const v2, 0x400200

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 1454
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 1455
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 1456
    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0

    .line 1457
    goto :goto_2f

    .line 1459
    :cond_46
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkStatsService;->removeUidsLocked([I)V

    .line 1460
    return-void
.end method

.method private resolveSubscriptionPlan(Landroid/net/NetworkTemplate;I)Landroid/telephony/SubscriptionPlan;
    .registers 6

    .line 697
    nop

    .line 698
    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_59

    iget-object p2, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    .line 699
    invoke-interface {p2}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getAugmentEnabled()Z

    move-result p2

    if-eqz p2, :cond_59

    .line 700
    sget-boolean p2, Lcom/android/server/net/NetworkStatsService;->LOGD:Z

    const-string v0, "NetworkStats"

    if-eqz p2, :cond_27

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resolving plan for "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 703
    :try_start_2b
    const-class p2, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 704
    invoke-virtual {p2, p1}, Lcom/android/server/net/NetworkPolicyManagerInternal;->getSubscriptionPlan(Landroid/net/NetworkTemplate;)Landroid/telephony/SubscriptionPlan;

    move-result-object p1
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_54

    .line 706
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 707
    nop

    .line 708
    sget-boolean p2, Lcom/android/server/net/NetworkStatsService;->LOGD:Z

    if-eqz p2, :cond_5a

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resolved to plan "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 706
    :catchall_54
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 710
    :cond_59
    const/4 p1, 0x0

    :cond_5a
    :goto_5a
    return-object p1
.end method

.method private shutdownLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation

    .line 451
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 452
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mPollReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 453
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 454
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 455
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 457
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 460
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 461
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 462
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 463
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 465
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    .line 466
    return-void
.end method

.method private updateIfaces([Landroid/net/Network;[Landroid/net/NetworkState;Ljava/lang/String;)V
    .registers 6

    .line 1137
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1138
    :try_start_3
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1c

    .line 1140
    :try_start_8
    iput-object p3, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIface:Ljava/lang/String;

    .line 1141
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkStatsService;->updateIfacesLocked([Landroid/net/Network;[Landroid/net/NetworkState;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_15

    .line 1143
    :try_start_d
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1144
    nop

    .line 1145
    monitor-exit v0

    .line 1146
    return-void

    .line 1143
    :catchall_15
    move-exception p1

    iget-object p2, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw p1

    .line 1145
    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method private updateIfacesLocked([Landroid/net/Network;[Landroid/net/NetworkState;)V
    .registers 21
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation

    .line 1155
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    if-nez v3, :cond_b

    return-void

    .line 1156
    :cond_b
    sget-boolean v3, Lcom/android/server/net/NetworkStatsService;->LOGV:Z

    if-eqz v3, :cond_17

    const-string v3, "NetworkStats"

    const-string/jumbo v4, "updateIfacesLocked()"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    :cond_17
    const/4 v3, 0x1

    invoke-direct {v0, v3}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V

    .line 1167
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 1168
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 1169
    if-eqz v1, :cond_29

    .line 1171
    iput-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mDefaultNetworks:[Landroid/net/Network;

    .line 1174
    :cond_29
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1175
    array-length v3, v2

    const/4 v4, 0x0

    :goto_30
    if-ge v4, v3, :cond_f4

    aget-object v5, v2, v4

    .line 1176
    iget-object v6, v5, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_f0

    .line 1177
    iget-object v6, v5, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-static {v6}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v6

    .line 1178
    iget-object v7, v0, Lcom/android/server/net/NetworkStatsService;->mDefaultNetworks:[Landroid/net/Network;

    iget-object v8, v5, Landroid/net/NetworkState;->network:Landroid/net/Network;

    invoke-static {v7, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    .line 1179
    iget-object v8, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    invoke-static {v8, v5, v7}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;Z)Landroid/net/NetworkIdentity;

    move-result-object v7

    .line 1184
    iget-object v8, v5, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v8}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v8

    .line 1185
    if-eqz v8, :cond_b5

    .line 1186
    iget-object v9, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-static {v9, v8}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 1187
    iget-object v9, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-static {v9, v8}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 1194
    iget-object v9, v5, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v9

    if-eqz v9, :cond_b0

    .line 1195
    invoke-virtual {v7}, Landroid/net/NetworkIdentity;->getMetered()Z

    move-result v9

    if-nez v9, :cond_b0

    .line 1198
    new-instance v9, Landroid/net/NetworkIdentity;

    invoke-virtual {v7}, Landroid/net/NetworkIdentity;->getType()I

    move-result v11

    .line 1199
    invoke-virtual {v7}, Landroid/net/NetworkIdentity;->getSubType()I

    move-result v12

    invoke-virtual {v7}, Landroid/net/NetworkIdentity;->getSubscriberId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Landroid/net/NetworkIdentity;->getNetworkId()Ljava/lang/String;

    move-result-object v14

    .line 1200
    invoke-virtual {v7}, Landroid/net/NetworkIdentity;->getRoaming()Z

    move-result v15

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object v10, v9

    invoke-direct/range {v10 .. v17}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 1202
    iget-object v10, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    const-string/jumbo v11, "vt_data0"

    invoke-static {v10, v11}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 1203
    iget-object v10, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-static {v10, v11}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 1206
    :cond_b0
    if-eqz v6, :cond_b5

    .line 1207
    invoke-virtual {v1, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1220
    :cond_b5
    iget-object v5, v5, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v5

    .line 1221
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_bf
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/LinkProperties;

    .line 1222
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    .line 1223
    if-eqz v9, :cond_ef

    .line 1224
    iget-boolean v10, v0, Lcom/android/server/net/NetworkStatsService;->mUseBpfTrafficStats:Z

    if-eqz v10, :cond_de

    .line 1225
    iget-object v10, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-static {v10, v9}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 1227
    :cond_de
    iget-object v10, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-static {v10, v9}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 1228
    if-eqz v6, :cond_ec

    .line 1229
    invoke-virtual {v1, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1232
    :cond_ec
    invoke-static {v9, v8}, Lcom/android/server/net/NetworkStatsFactory;->noteStackedIface(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    :cond_ef
    goto :goto_bf

    .line 1175
    :cond_f0
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_30

    .line 1238
    :cond_f4
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    .line 1239
    return-void
.end method

.method private updatePersistThresholdsLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation

    .line 1032
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getDevPersistBytes(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 1033
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getXtPersistBytes(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 1034
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidPersistBytes(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 1035
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidTagPersistBytes(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 1036
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v1, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v0, v1, v2}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getGlobalAlertBytes(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsService;->mGlobalAlertBytes:J

    .line 1037
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 22

    .line 1501
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move-object/from16 v2, p3

    iget-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v3, "NetworkStats"

    invoke-static {v0, v3, v8}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 1503
    :cond_11
    const-wide/32 v3, 0x5265c00

    .line 1504
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1505
    array-length v6, v2

    const/4 v7, 0x0

    move-wide v9, v3

    move v3, v7

    :goto_1d
    if-ge v3, v6, :cond_3b

    aget-object v0, v2, v3

    .line 1506
    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1508
    const-string v4, "--duration="

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 1510
    const/16 v4, 0xb

    :try_start_2e
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_36} :catch_37

    .line 1512
    goto :goto_38

    .line 1511
    :catch_37
    move-exception v0

    .line 1505
    :cond_38
    :goto_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 1517
    :cond_3b
    const-string v0, "--poll"

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_50

    const-string/jumbo v0, "poll"

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    goto :goto_50

    :cond_4e
    move v0, v7

    goto :goto_51

    :cond_50
    :goto_50
    move v0, v3

    .line 1518
    :goto_51
    const-string v4, "--checkin"

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 1519
    const-string v6, "--full"

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6a

    const-string v6, "full"

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_68

    goto :goto_6a

    :cond_68
    move v6, v7

    goto :goto_6b

    :cond_6a
    :goto_6a
    move v6, v3

    .line 1520
    :goto_6b
    const-string v11, "--uid"

    invoke-virtual {v5, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7e

    const-string v11, "detail"

    invoke-virtual {v5, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7c

    goto :goto_7e

    :cond_7c
    move v11, v7

    goto :goto_7f

    :cond_7e
    :goto_7e
    move v11, v3

    .line 1521
    :goto_7f
    const-string v12, "--tag"

    invoke-virtual {v5, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_92

    const-string v12, "detail"

    invoke-virtual {v5, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_90

    goto :goto_92

    :cond_90
    move v12, v7

    goto :goto_93

    :cond_92
    :goto_92
    move v12, v3

    .line 1523
    :goto_93
    new-instance v13, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v5, "  "

    invoke-direct {v13, v8, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1525
    iget-object v14, v1, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v14

    .line 1526
    :try_start_9d
    array-length v5, v2

    if-lez v5, :cond_af

    const-string v5, "--proto"

    aget-object v2, v2, v7

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    .line 1528
    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkStatsService;->dumpProtoLocked(Ljava/io/FileDescriptor;)V

    .line 1529
    monitor-exit v14

    return-void

    .line 1532
    :cond_af
    if-eqz v0, :cond_bd

    .line 1533
    const/16 v0, 0x103

    invoke-direct {v1, v0}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V

    .line 1534
    const-string v0, "Forced poll"

    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1535
    monitor-exit v14

    return-void

    .line 1538
    :cond_bd
    if-eqz v4, :cond_112

    .line 1539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 1540
    sub-long v9, v15, v9

    .line 1542
    const-string/jumbo v0, "v1,"

    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1543
    const-wide/16 v2, 0x3e8

    div-long v4, v9, v2

    invoke-virtual {v13, v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    const/16 v0, 0x2c

    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(C)V

    .line 1544
    div-long v2, v15, v2

    invoke-virtual {v13, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1546
    const-string/jumbo v0, "xt"

    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1547
    iget-object v2, v1, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v3, p2

    move-wide v4, v9

    move-wide v6, v15

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->dumpCheckin(Ljava/io/PrintWriter;JJ)V

    .line 1549
    if-eqz v11, :cond_ff

    .line 1550
    const-string/jumbo v0, "uid"

    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1551
    iget-object v2, v1, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v3, p2

    move-wide v4, v9

    move-wide v6, v15

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->dumpCheckin(Ljava/io/PrintWriter;JJ)V

    .line 1553
    :cond_ff
    if-eqz v12, :cond_110

    .line 1554
    const-string/jumbo v0, "tag"

    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1555
    iget-object v1, v1, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v2, p2

    move-wide v3, v9

    move-wide v5, v15

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/net/NetworkStatsRecorder;->dumpCheckin(Ljava/io/PrintWriter;JJ)V

    .line 1557
    :cond_110
    monitor-exit v14

    return-void

    .line 1560
    :cond_112
    const-string v0, "Active interfaces:"

    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1561
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1562
    move v0, v7

    :goto_11b
    iget-object v2, v1, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_13f

    .line 1563
    const-string v2, "iface"

    iget-object v4, v1, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v13, v2, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1564
    const-string v2, "ident"

    iget-object v4, v1, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v13, v2, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1565
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1562
    add-int/lit8 v0, v0, 0x1

    goto :goto_11b

    .line 1567
    :cond_13f
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1569
    const-string v0, "Active UID interfaces:"

    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1570
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1571
    move v0, v7

    :goto_14b
    iget-object v2, v1, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_16f

    .line 1572
    const-string v2, "iface"

    iget-object v4, v1, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v13, v2, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1573
    const-string v2, "ident"

    iget-object v4, v1, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v13, v2, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1574
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1571
    add-int/lit8 v0, v0, 0x1

    goto :goto_14b

    .line 1576
    :cond_16f
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1580
    iget-object v2, v1, Lcom/android/server/net/NetworkStatsService;->mOpenSessionCallsPerUid:Landroid/util/SparseIntArray;

    monitor-enter v2
    :try_end_175
    .catchall {:try_start_9d .. :try_end_175} :catchall_218

    .line 1581
    :try_start_175
    iget-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mOpenSessionCallsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    .line 1582
    monitor-exit v2
    :try_end_17c
    .catchall {:try_start_175 .. :try_end_17c} :catchall_215

    .line 1584
    :try_start_17c
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    .line 1585
    new-array v4, v2, [J

    .line 1586
    move v5, v7

    :goto_183
    const/16 v8, 0x20

    if-ge v5, v2, :cond_19b

    .line 1587
    invoke-virtual {v0, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    int-to-long v9, v9

    shl-long v8, v9, v8

    invoke-virtual {v0, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    move v15, v11

    int-to-long v10, v10

    or-long/2addr v8, v10

    aput-wide v8, v4, v5

    .line 1586
    add-int/lit8 v5, v5, 0x1

    move v11, v15

    goto :goto_183

    .line 1589
    :cond_19b
    move v15, v11

    invoke-static {v4}, Ljava/util/Arrays;->sort([J)V

    .line 1591
    const-string v0, "Top openSession callers (uid=count):"

    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1592
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1593
    add-int/lit8 v0, v2, -0x14

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1594
    sub-int/2addr v2, v3

    :goto_1ae
    if-lt v2, v0, :cond_1c9

    .line 1595
    aget-wide v9, v4, v2

    const-wide/16 v16, -0x1

    and-long v9, v9, v16

    long-to-int v3, v9

    .line 1596
    aget-wide v9, v4, v2

    shr-long/2addr v9, v8

    long-to-int v5, v9

    .line 1597
    invoke-virtual {v13, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v3, "="

    invoke-virtual {v13, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 1594
    add-int/lit8 v2, v2, -0x1

    goto :goto_1ae

    .line 1599
    :cond_1c9
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1600
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1602
    const-string v0, "Dev stats:"

    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1603
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1604
    iget-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0, v13, v6}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1605
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1607
    const-string v0, "Xt stats:"

    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1608
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1609
    iget-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0, v13, v6}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1610
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1612
    if-eqz v15, :cond_201

    .line 1613
    const-string v0, "UID stats:"

    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1614
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1615
    iget-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0, v13, v6}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1616
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1619
    :cond_201
    if-eqz v12, :cond_213

    .line 1620
    const-string v0, "UID tag stats:"

    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1621
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1622
    iget-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0, v13, v6}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1623
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1625
    :cond_213
    monitor-exit v14
    :try_end_214
    .catchall {:try_start_17c .. :try_end_214} :catchall_218

    .line 1626
    return-void

    .line 1582
    :catchall_215
    move-exception v0

    :try_start_216
    monitor-exit v2
    :try_end_217
    .catchall {:try_start_216 .. :try_end_217} :catchall_215

    :try_start_217
    throw v0

    .line 1625
    :catchall_218
    move-exception v0

    monitor-exit v14
    :try_end_21a
    .catchall {:try_start_217 .. :try_end_21a} :catchall_218

    throw v0
.end method

.method public forceUpdate()V
    .registers 4

    .line 877
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string v2, "NetworkStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 880
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 882
    const/4 v2, 0x3

    :try_start_11
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkStatsService;->performPoll(I)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_19

    .line 884
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 885
    nop

    .line 886
    return-void

    .line 884
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public forceUpdateIfaces([Landroid/net/Network;[Landroid/net/NetworkState;Ljava/lang/String;)V
    .registers 6

    .line 864
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 865
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 867
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 869
    :try_start_c
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkStatsService;->updateIfaces([Landroid/net/Network;[Landroid/net/NetworkState;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_14

    .line 871
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 872
    nop

    .line 873
    return-void

    .line 871
    :catchall_14
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 775
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq v0, p1, :cond_f

    .line 776
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "NetworkStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    :cond_f
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 782
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 785
    :try_start_16
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    sget-object v3, Landroid/net/NetworkStats;->INTERFACES_ALL:[Ljava/lang/String;

    invoke-interface {v2, p1, v3}, Landroid/os/INetworkManagementService;->getNetworkStatsUidDetail(I[Ljava/lang/String;)Landroid/net/NetworkStats;

    move-result-object p1
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_4b

    .line 788
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 789
    nop

    .line 792
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    invoke-virtual {p1, v0}, Landroid/net/NetworkStats;->spliceOperationsFrom(Landroid/net/NetworkStats;)V

    .line 794
    new-instance v0, Landroid/net/NetworkStats;

    .line 795
    invoke-virtual {p1}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 797
    const/4 v1, 0x0

    .line 798
    const/4 v2, 0x0

    :goto_36
    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v3

    if-ge v2, v3, :cond_4a

    .line 799
    invoke-virtual {p1, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 800
    sget-object v3, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v3, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 801
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 798
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 804
    :cond_4a
    return-object v0

    .line 788
    :catchall_4b
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getDetailedUidStats([Ljava/lang/String;)Landroid/net/NetworkStats;
    .registers 5

    .line 810
    nop

    .line 811
    :try_start_1
    invoke-static {p1}, Lcom/android/server/net/NetworkStatsFactory;->augmentWithStackedInterfaces([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 812
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsUidDetail([Ljava/lang/String;)Landroid/net/NetworkStats;

    move-result-object p1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_a

    return-object p1

    .line 813
    :catch_a
    move-exception p1

    .line 814
    const-string v0, "NetworkStats"

    const-string v1, "Error compiling UID stats"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 815
    new-instance p1, Landroid/net/NetworkStats;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Landroid/net/NetworkStats;-><init>(JI)V

    return-object p1
.end method

.method public getIfaceStats(Ljava/lang/String;I)J
    .registers 7

    .line 961
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->checkBpfStatsEnable()Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/android/server/net/NetworkStatsService;->nativeGetIfaceStat(Ljava/lang/String;IZ)J

    move-result-wide v0

    .line 962
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_f

    .line 963
    return-wide v0

    .line 971
    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkStatsService;->getTetherStats(Ljava/lang/String;I)J

    move-result-wide p1

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public getMobileIfaces()[Ljava/lang/String;
    .registers 2

    .line 821
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    return-object v0
.end method

.method public getTotalStats(I)J
    .registers 6

    .line 977
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->checkBpfStatsEnable()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/net/NetworkStatsService;->nativeGetTotalStat(IZ)J

    move-result-wide v0

    .line 978
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_f

    .line 979
    return-wide v0

    .line 982
    :cond_f
    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/android/server/net/NetworkStatsService;->getTetherStats(Ljava/lang/String;I)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getUidStats(II)J
    .registers 4

    .line 956
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->checkBpfStatsEnable()Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/android/server/net/NetworkStatsService;->nativeGetUidStat(IIZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public incrementOperationCount(III)V
    .registers 24

    .line 826
    move-object/from16 v0, p0

    move/from16 v14, p1

    move/from16 v1, p3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-eq v2, v14, :cond_15

    .line 827
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    const-string v4, "NetworkStats"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    :cond_15
    if-ltz v1, :cond_6b

    .line 834
    if-eqz p2, :cond_62

    .line 838
    iget-object v15, v0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v15

    .line 839
    :try_start_1c
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v14, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v16

    .line 840
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIface:Ljava/lang/String;
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_5b

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    int-to-long v4, v1

    move-object v1, v2

    move-object v2, v3

    move/from16 v3, p1

    move-wide/from16 v17, v4

    move/from16 v4, v16

    move/from16 v5, p2

    move-object/from16 v19, v15

    move-wide/from16 v14, v17

    :try_start_3e
    invoke-virtual/range {v1 .. v15}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    .line 842
    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIface:Ljava/lang/String;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move-object v0, v1

    move-object v1, v2

    move/from16 v2, p1

    move/from16 v3, v16

    move-wide/from16 v13, v17

    invoke-virtual/range {v0 .. v14}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    .line 844
    monitor-exit v19

    .line 845
    return-void

    .line 844
    :catchall_5b
    move-exception v0

    move-object/from16 v19, v15

    :goto_5e
    monitor-exit v19
    :try_end_5f
    .catchall {:try_start_3e .. :try_end_5f} :catchall_60

    throw v0

    :catchall_60
    move-exception v0

    goto :goto_5e

    .line 835
    :cond_62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "operation count must have specific tag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 832
    :cond_6b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "operation count can only be incremented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openSession()Landroid/net/INetworkStatsSession;
    .registers 3

    .line 532
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsService;->openSessionInternal(ILjava/lang/String;)Landroid/net/INetworkStatsSession;

    move-result-object v0

    return-object v0
.end method

.method public openSessionForUsageStats(ILjava/lang/String;)Landroid/net/INetworkStatsSession;
    .registers 3

    .line 537
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkStatsService;->openSessionInternal(ILjava/lang/String;)Landroid/net/INetworkStatsSession;

    move-result-object p1

    return-object p1
.end method

.method public registerUsageCallback(Ljava/lang/String;Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/DataUsageRequest;
    .registers 14

    .line 918
    const-string v0, "calling package is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    const-string v0, "DataUsageRequest is null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    iget-object v0, p2, Landroid/net/DataUsageRequest;->template:Landroid/net/NetworkTemplate;

    const-string v1, "NetworkTemplate is null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    const-string v0, "messenger is null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    const-string v0, "binder is null"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 925
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->checkAccessLevel(Ljava/lang/String;)I

    move-result v6

    .line 927
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 929
    :try_start_27
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsObservers:Lcom/android/server/net/NetworkStatsObservers;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/net/NetworkStatsObservers;->register(Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;II)Landroid/net/DataUsageRequest;

    move-result-object p1
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_3f

    .line 932
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 933
    nop

    .line 936
    iget-object p2, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 938
    return-object p1

    .line 932
    :catchall_3f
    move-exception p1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method setHandler(Landroid/os/Handler;Landroid/os/Handler$Callback;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 378
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    .line 379
    iput-object p2, p0, Lcom/android/server/net/NetworkStatsService;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 380
    return-void
.end method

.method setUidForeground(IZ)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 849
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 850
    const/4 v1, 0x0

    if-eqz p2, :cond_8

    const/4 p2, 0x1

    goto :goto_9

    :cond_8
    move p2, v1

    .line 851
    :goto_9
    :try_start_9
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 852
    if-eq v1, p2, :cond_19

    .line 853
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 854
    invoke-static {p1, p2}, Lcom/android/server/NetworkManagementSocketTagger;->setKernelCounterSet(II)V

    .line 856
    :cond_19
    monitor-exit v0

    .line 857
    return-void

    .line 856
    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public systemReady()V
    .registers 7

    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    .line 385
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->isBandwidthControlEnabled()Z

    move-result v1

    if-nez v1, :cond_11

    .line 386
    const-string v0, "NetworkStats"

    const-string v1, "bandwidth controls disabled, unable to track stats"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return-void

    .line 390
    :cond_11
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 392
    :try_start_14
    const-string v2, "dev"

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getDevConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 393
    const-string/jumbo v2, "xt"

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getXtConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v3

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 394
    const-string/jumbo v2, "uid"

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v3

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 395
    const-string/jumbo v2, "uid_tag"

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidTagConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 397
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updatePersistThresholdsLocked()V

    .line 400
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->maybeUpgradeLegacyStatsLocked()V

    .line 404
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    .line 407
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->bootstrapStatsLocked()V

    .line 408
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_14 .. :try_end_62} :catchall_c3

    .line 411
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 412
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 415
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.server.action.NETWORK_STATS_POLL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 416
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mPollReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    const-string v5, "android.permission.READ_NETWORK_USAGE_HISTORY"

    invoke-virtual {v1, v2, v0, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 419
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.UID_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 420
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mRemovedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 423
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 424
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 427
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 428
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 431
    :try_start_b3
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_ba
    .catch Landroid/os/RemoteException; {:try_start_b3 .. :try_end_ba} :catch_bb

    .line 434
    goto :goto_bc

    .line 432
    :catch_bb
    move-exception v0

    .line 436
    :goto_bc
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerPollAlarmLocked()V

    .line 437
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V

    .line 438
    return-void

    .line 408
    :catchall_c3
    move-exception v0

    :try_start_c4
    monitor-exit v1
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c3

    throw v0
.end method

.method public unregisterUsageRequest(Landroid/net/DataUsageRequest;)V
    .registers 6

    .line 943
    const-string v0, "DataUsageRequest is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 946
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 948
    :try_start_d
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mStatsObservers:Lcom/android/server/net/NetworkStatsObservers;

    invoke-virtual {v3, p1, v0}, Lcom/android/server/net/NetworkStatsObservers;->unregister(Landroid/net/DataUsageRequest;I)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_17

    .line 950
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 951
    nop

    .line 952
    return-void

    .line 950
    :catchall_17
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method
