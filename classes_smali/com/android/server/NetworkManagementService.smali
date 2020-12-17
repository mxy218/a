.class public Lcom/android/server/NetworkManagementService;
.super Landroid/os/INetworkManagementService$Stub;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkManagementService$Injector;,
        Lcom/android/server/NetworkManagementService$LocalService;,
        Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;,
        Lcom/android/server/NetworkManagementService$OemNetdUnsolicitedEventListener;,
        Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;,
        Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;,
        Lcom/android/server/NetworkManagementService$IdleTimerParams;,
        Lcom/android/server/NetworkManagementService$SystemServices;
    }
.end annotation


# static fields
.field static final DAEMON_MSG_MOBILE_CONN_REAL_TIME_INFO:I = 0x1

.field private static final DBG:Z

.field public static final LIMIT_GLOBAL_ALERT:Ljava/lang/String; = "globalAlert"

.field private static final MAX_UID_RANGES_PER_COMMAND:I = 0xa

.field static final MODIFY_OPERATION_ADD:Z = true

.field static final MODIFY_OPERATION_REMOVE:Z = false

.field private static final TAG:Ljava/lang/String; = "NetworkManagement"


# instance fields
.field private ListForNetPolicy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveAlerts:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mQuotaLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveIdleTimers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/NetworkManagementService$IdleTimerParams;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveQuotas:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mQuotaLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mContext:Landroid/content/Context;

.field private final mDaemonHandler:Landroid/os/Handler;

.field private volatile mDataSaverMode:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mQuotaLock"
        }
    .end annotation
.end field

.field final mFirewallChainStates:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRulesLock"
        }
    .end annotation
.end field

.field private volatile mFirewallEnabled:Z

.field private final mIdleTimerLock:Ljava/lang/Object;

.field private mLastPowerStateFromRadio:I

.field private mLastPowerStateFromWifi:I

.field private mMobileActivityFromRadio:Z

.field private mNetdService:Landroid/net/INetd;

.field private final mNetdUnsolicitedEventListener:Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;

.field private mNetworkActive:Z

.field private final mNetworkActivityListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/INetworkActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/net/INetworkManagementEventObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mOemNetd:Landroid/net/IOemNetd;

.field private final mOemNetdUnsolicitedEventListener:Lcom/android/server/NetworkManagementService$OemNetdUnsolicitedEventListener;

.field private final mOemObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/net/IOemNetworkManagementEventObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mQuickAppEnabled:Z

.field private final mQuotaLock:Ljava/lang/Object;

.field private final mRulesLock:Ljava/lang/Object;

.field private final mServices:Lcom/android/server/NetworkManagementService$SystemServices;

.field private final mStatsFactory:Lcom/android/server/net/NetworkStatsFactory;

.field private volatile mStrictEnabled:Z

.field private final mTetheringStatsProviders:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mTetheringStatsProviders"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/ITetheringStatsProvider;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUidAllowOnMetered:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRulesLock"
        }
    .end annotation
.end field

.field private mUidCleartextPolicy:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mQuotaLock"
        }
    .end annotation
.end field

.field private mUidFirewallDozableRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRulesLock"
        }
    .end annotation
.end field

.field private mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRulesLock"
        }
    .end annotation
.end field

.field private mUidFirewallRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRulesLock"
        }
    .end annotation
.end field

.field private mUidFirewallStandbyRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRulesLock"
        }
    .end annotation
.end field

.field private mUidRejectOnMetered:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRulesLock"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 157
    const-string v0, "NetworkManagement"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    return-void
.end method

.method constructor <init>()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 306
    invoke-direct {p0}, Landroid/os/INetworkManagementService$Stub;-><init>()V

    .line 191
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    .line 195
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mOemObservers:Landroid/os/RemoteCallbackList;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->ListForNetPolicy:Ljava/util/ArrayList;

    .line 200
    new-instance v0, Lcom/android/server/net/NetworkStatsFactory;

    invoke-direct {v0}, Lcom/android/server/net/NetworkStatsFactory;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/server/net/NetworkStatsFactory;

    .line 202
    nop

    .line 204
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    .line 210
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    .line 211
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    .line 214
    nop

    .line 215
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 217
    nop

    .line 218
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 220
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    .line 223
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    .line 226
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    .line 229
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    .line 235
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 241
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 247
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 250
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 256
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    .line 269
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    .line 275
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    .line 276
    iput v1, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromWifi:I

    .line 278
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    .line 2325
    iput-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mQuickAppEnabled:Z

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 308
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    .line 309
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mServices:Lcom/android/server/NetworkManagementService$SystemServices;

    .line 311
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mOemNetdUnsolicitedEventListener:Lcom/android/server/NetworkManagementService$OemNetdUnsolicitedEventListener;

    .line 313
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdUnsolicitedEventListener:Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;

    .line 314
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/NetworkManagementService$SystemServices;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "services"  # Lcom/android/server/NetworkManagementService$SystemServices;

    .line 288
    invoke-direct {p0}, Landroid/os/INetworkManagementService$Stub;-><init>()V

    .line 191
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    .line 195
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mOemObservers:Landroid/os/RemoteCallbackList;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->ListForNetPolicy:Ljava/util/ArrayList;

    .line 200
    new-instance v0, Lcom/android/server/net/NetworkStatsFactory;

    invoke-direct {v0}, Lcom/android/server/net/NetworkStatsFactory;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/server/net/NetworkStatsFactory;

    .line 202
    nop

    .line 204
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    .line 210
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    .line 211
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    .line 214
    nop

    .line 215
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 217
    nop

    .line 218
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 220
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    .line 223
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    .line 226
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    .line 229
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    .line 235
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 241
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 247
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 250
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 256
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    .line 269
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    .line 275
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    .line 276
    iput v1, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromWifi:I

    .line 278
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    .line 2325
    iput-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mQuickAppEnabled:Z

    .line 289
    iput-object p1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 290
    iput-object p2, p0, Lcom/android/server/NetworkManagementService;->mServices:Lcom/android/server/NetworkManagementService$SystemServices;

    .line 292
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    .line 294
    new-instance v0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;-><init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$1;)V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdUnsolicitedEventListener:Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;

    .line 296
    new-instance v0, Lcom/android/server/NetworkManagementService$OemNetdUnsolicitedEventListener;

    invoke-direct {v0, p0, v1}, Lcom/android/server/NetworkManagementService$OemNetdUnsolicitedEventListener;-><init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$1;)V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mOemNetdUnsolicitedEventListener:Lcom/android/server/NetworkManagementService$OemNetdUnsolicitedEventListener;

    .line 298
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mServices:Lcom/android/server/NetworkManagementService$SystemServices;

    new-instance v2, Lcom/android/server/NetworkManagementService$LocalService;

    invoke-direct {v2, p0}, Lcom/android/server/NetworkManagementService$LocalService;-><init>(Lcom/android/server/NetworkManagementService;)V

    invoke-virtual {v0, v2}, Lcom/android/server/NetworkManagementService$SystemServices;->registerLocalService(Lcom/android/server/NetworkManagementInternal;)V

    .line 300
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter v0

    .line 301
    :try_start_c7
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    new-instance v3, Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;

    invoke-direct {v3, p0, v1}, Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;-><init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$1;)V

    const-string/jumbo v1, "netd"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    monitor-exit v0

    .line 303
    return-void

    .line 302
    :catchall_d6
    move-exception v1

    monitor-exit v0
    :try_end_d8
    .catchall {:try_start_c7 .. :try_end_d8} :catchall_d6

    throw v1
.end method

.method static synthetic access$1000(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Landroid/net/LinkAddress;

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyAddressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/NetworkManagementService;Ljava/lang/String;J[Ljava/lang/String;)V
    .registers 5
    .param p0, "x0"  # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # J
    .param p4, "x3"  # [Ljava/lang/String;

    .line 138
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/NetworkManagementService;->notifyInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Ljava/lang/String;

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/NetworkManagementService;IZJIZ)V
    .registers 7
    .param p0, "x0"  # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Z
    .param p3, "x3"  # J
    .param p5, "x4"  # I
    .param p6, "x5"  # Z

    .line 138
    invoke-direct/range {p0 .. p6}, Lcom/android/server/NetworkManagementService;->notifyInterfaceClassActivity(IZJIZ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/NetworkManagementService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/NetworkManagementService;

    .line 138
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->ListForNetPolicy:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/NetworkManagementService;)Landroid/net/INetd;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/NetworkManagementService;

    .line 138
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/NetworkManagementService;I)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"  # I

    .line 138
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->isNetworkRestrictedInternal(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/NetworkManagementService;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"  # Z

    .line 138
    iput-boolean p1, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/NetworkManagementService;IZ)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Z

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->setFirewallChainState(IZ)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/NetworkManagementService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/NetworkManagementService;

    .line 138
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/NetworkManagementService;I)Landroid/util/SparseIntArray;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"  # I

    .line 138
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/NetworkManagementService;

    .line 138
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/NetworkManagementService;

    .line 138
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/NetworkManagementService;

    .line 138
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/NetworkManagementService;ZLandroid/net/RouteInfo;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"  # Z
    .param p2, "x2"  # Landroid/net/RouteInfo;

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyRouteChange(ZLandroid/net/RouteInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Z

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Z

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyInterfaceStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 138
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->notifyInterfaceRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 138
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->notifyInterfaceAdded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Landroid/net/LinkAddress;

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyAddressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method private applyUidCleartextNetworkPolicy(II)V
    .registers 6
    .param p1, "uid"  # I
    .param p2, "policy"  # I

    .line 1593
    if-eqz p2, :cond_23

    const/4 v0, 0x1

    if-eq p2, v0, :cond_21

    const/4 v0, 0x2

    if-ne p2, v0, :cond_a

    .line 1601
    const/4 v0, 0x3

    .line 1602
    .local v0, "policyValue":I
    goto :goto_25

    .line 1604
    .end local v0  # "policyValue":I
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown policy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1598
    :cond_21
    const/4 v0, 0x2

    .line 1599
    .restart local v0  # "policyValue":I
    goto :goto_25

    .line 1595
    .end local v0  # "policyValue":I
    :cond_23
    const/4 v0, 0x1

    .line 1596
    .restart local v0  # "policyValue":I
    nop

    .line 1608
    :goto_25
    :try_start_25
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1, v0}, Landroid/net/INetd;->strictUidCleartextPenalty(II)V

    .line 1609
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2f} :catch_31
    .catch Landroid/os/ServiceSpecificException; {:try_start_25 .. :try_end_2f} :catch_31

    .line 1612
    nop

    .line 1613
    return-void

    .line 1610
    :catch_31
    move-exception v1

    .line 1611
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private closeSocketsForFirewallChainLocked(ILjava/lang/String;)V
    .registers 11
    .param p1, "chain"  # I
    .param p2, "chainName"  # Ljava/lang/String;

    .line 1786
    const/4 v0, 0x0

    .line 1787
    .local v0, "numUids":I
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_1b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing sockets after enabling chain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkManagement"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    :cond_1b
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallType(I)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5e

    .line 1790
    const/4 v1, 0x1

    new-array v3, v1, [Landroid/net/UidRangeParcel;

    const/16 v4, 0x2710

    const v5, 0x7fffffff

    .line 1793
    invoke-static {v4, v5}, Lcom/android/server/NetworkManagementService;->makeUidRangeParcel(II)Landroid/net/UidRangeParcel;

    move-result-object v4

    aput-object v4, v3, v2

    .line 1796
    .local v3, "ranges":[Landroid/net/UidRangeParcel;
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1797
    :try_start_33
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object v5

    .line 1798
    .local v5, "rules":Landroid/util/SparseIntArray;
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    new-array v6, v6, [I

    .line 1799
    .local v6, "exemptUids":[I
    nop

    .local v2, "i":I
    :goto_3e
    array-length v7, v6

    if-ge v2, v7, :cond_52

    .line 1800
    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    if-ne v7, v1, :cond_4f

    .line 1801
    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    aput v7, v6, v0

    .line 1802
    add-int/lit8 v0, v0, 0x1

    .line 1799
    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 1805
    .end local v2  # "i":I
    .end local v5  # "rules":Landroid/util/SparseIntArray;
    :cond_52
    monitor-exit v4
    :try_end_53
    .catchall {:try_start_33 .. :try_end_53} :catchall_5b

    .line 1813
    array-length v1, v6

    if-eq v0, v1, :cond_94

    .line 1814
    invoke-static {v6, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    goto :goto_94

    .line 1805
    .end local v6  # "exemptUids":[I
    :catchall_5b
    move-exception v1

    :try_start_5c
    monitor-exit v4
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v1

    .line 1818
    .end local v3  # "ranges":[Landroid/net/UidRangeParcel;
    :cond_5e
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1819
    :try_start_61
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object v3

    .line 1820
    .local v3, "rules":Landroid/util/SparseIntArray;
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    new-array v4, v4, [Landroid/net/UidRangeParcel;

    .line 1821
    .local v4, "ranges":[Landroid/net/UidRangeParcel;
    move v5, v2

    .local v5, "i":I
    :goto_6c
    array-length v6, v4

    if-ge v5, v6, :cond_85

    .line 1822
    invoke-virtual {v3, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_82

    .line 1823
    invoke-virtual {v3, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 1824
    .local v6, "uid":I
    invoke-static {v6, v6}, Lcom/android/server/NetworkManagementService;->makeUidRangeParcel(II)Landroid/net/UidRangeParcel;

    move-result-object v7

    aput-object v7, v4, v0

    .line 1825
    add-int/lit8 v0, v0, 0x1

    .line 1821
    .end local v6  # "uid":I
    :cond_82
    add-int/lit8 v5, v5, 0x1

    goto :goto_6c

    .line 1828
    .end local v3  # "rules":Landroid/util/SparseIntArray;
    .end local v5  # "i":I
    :cond_85
    monitor-exit v1
    :try_end_86
    .catchall {:try_start_61 .. :try_end_86} :catchall_ba

    .line 1830
    array-length v1, v4

    if-eq v0, v1, :cond_91

    .line 1831
    invoke-static {v4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/UidRangeParcel;

    move-object v3, v1

    .end local v4  # "ranges":[Landroid/net/UidRangeParcel;
    .local v1, "ranges":[Landroid/net/UidRangeParcel;
    goto :goto_92

    .line 1830
    .end local v1  # "ranges":[Landroid/net/UidRangeParcel;
    .restart local v4  # "ranges":[Landroid/net/UidRangeParcel;
    :cond_91
    move-object v3, v4

    .line 1834
    .end local v4  # "ranges":[Landroid/net/UidRangeParcel;
    .local v3, "ranges":[Landroid/net/UidRangeParcel;
    :goto_92
    new-array v6, v2, [I

    .line 1838
    .local v6, "exemptUids":[I
    :cond_94
    :goto_94
    :try_start_94
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, v3, v6}, Landroid/net/INetd;->socketDestroy([Landroid/net/UidRangeParcel;[I)V
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_94 .. :try_end_99} :catch_9a
    .catch Landroid/os/ServiceSpecificException; {:try_start_94 .. :try_end_99} :catch_9a

    .line 1841
    goto :goto_b9

    .line 1839
    :catch_9a
    move-exception v1

    .line 1840
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error closing sockets after enabling chain "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "NetworkManagement"

    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_b9
    return-void

    .line 1828
    .end local v3  # "ranges":[Landroid/net/UidRangeParcel;
    .end local v6  # "exemptUids":[I
    :catchall_ba
    move-exception v2

    :try_start_bb
    monitor-exit v1
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_ba

    throw v2
.end method

.method private connectNativeNetdService()V
    .registers 5

    .line 587
    const-string v0, "NetworkManagement"

    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mServices:Lcom/android/server/NetworkManagementService$SystemServices;

    invoke-virtual {v1}, Lcom/android/server/NetworkManagementService$SystemServices;->getNetd()Landroid/net/INetd;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 589
    :try_start_a
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mNetdUnsolicitedEventListener:Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;

    invoke-interface {v1, v2}, Landroid/net/INetd;->registerUnsolicitedEventListener(Landroid/net/INetdUnsolicitedEventListener;)V

    .line 590
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_1a

    const-string v1, "Register unsolicited event listener"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1a} :catch_1b
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_1a} :catch_1b

    .line 593
    :cond_1a
    goto :goto_30

    .line 591
    :catch_1b
    move-exception v1

    .line 592
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set Netd unsolicited event listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_30
    :try_start_30
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/IOemNetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IOemNetd;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Landroid/net/IOemNetd;

    .line 598
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_45

    const-string v1, "get OemNetd instance"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_45} :catch_46
    .catch Landroid/os/ServiceSpecificException; {:try_start_30 .. :try_end_45} :catch_46

    .line 601
    :cond_45
    goto :goto_5b

    .line 599
    :catch_46
    move-exception v1

    .line 600
    .restart local v1  # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get OemNetd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_5b
    :try_start_5b
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Landroid/net/IOemNetd;

    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mOemNetdUnsolicitedEventListener:Lcom/android/server/NetworkManagementService$OemNetdUnsolicitedEventListener;

    invoke-interface {v1, v2}, Landroid/net/IOemNetd;->registerOemUnsolicitedEventListener(Landroid/net/IOemNetdUnsolicitedEventListener;)V

    .line 604
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_6c

    const-string/jumbo v1, "register oemunsolicited event listener failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_6c} :catch_6d
    .catch Landroid/os/ServiceSpecificException; {:try_start_5b .. :try_end_6c} :catch_6d

    .line 607
    :cond_6c
    goto :goto_82

    .line 605
    :catch_6d
    move-exception v1

    .line 606
    .restart local v1  # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to register oemunsolicited event listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_82
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;
    .registers 2
    .param p0, "context"  # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 328
    new-instance v0, Lcom/android/server/NetworkManagementService$SystemServices;

    invoke-direct {v0}, Lcom/android/server/NetworkManagementService$SystemServices;-><init>()V

    invoke-static {p0, v0}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;Lcom/android/server/NetworkManagementService$SystemServices;)Lcom/android/server/NetworkManagementService;

    move-result-object v0

    return-object v0
.end method

.method static create(Landroid/content/Context;Lcom/android/server/NetworkManagementService$SystemServices;)Lcom/android/server/NetworkManagementService;
    .registers 5
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "services"  # Lcom/android/server/NetworkManagementService$SystemServices;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 318
    new-instance v0, Lcom/android/server/NetworkManagementService;

    invoke-direct {v0, p0, p1}, Lcom/android/server/NetworkManagementService;-><init>(Landroid/content/Context;Lcom/android/server/NetworkManagementService$SystemServices;)V

    .line 320
    .local v0, "service":Lcom/android/server/NetworkManagementService;
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    const-string v2, "NetworkManagement"

    if-eqz v1, :cond_10

    const-string v1, "Creating NetworkManagementService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_10
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_19

    const-string v1, "Connecting native netd service"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_19
    invoke-direct {v0}, Lcom/android/server/NetworkManagementService;->connectNativeNetdService()V

    .line 323
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_25

    const-string v1, "Connected"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_25
    return-object v0
.end method

.method private dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V
    .registers 7
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "name"  # Ljava/lang/String;
    .param p3, "rules"  # Landroid/util/SparseIntArray;

    .line 2152
    const-string v0, "UID firewall "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2153
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2154
    const-string v0, " rule: ["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2155
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 2156
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v0, :cond_33

    .line 2157
    invoke-virtual {p3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2158
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2159
    invoke-virtual {p3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2160
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_30

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2156
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 2162
    .end local v1  # "i":I
    :cond_33
    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2163
    return-void
.end method

.method private dumpUidRuleOnQuotaLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseBooleanArray;)V
    .registers 7
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "name"  # Ljava/lang/String;
    .param p3, "list"  # Landroid/util/SparseBooleanArray;

    .line 2140
    const-string v0, "UID bandwith control "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2141
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2142
    const-string v0, " rule: ["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2143
    invoke-virtual {p3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 2144
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v0, :cond_27

    .line 2145
    invoke-virtual {p3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2146
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_24

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2144
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 2148
    .end local v1  # "i":I
    :cond_27
    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2149
    return-void
.end method

.method private static enforceSystemUid()V
    .registers 3

    .line 2043
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2044
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    .line 2047
    return-void

    .line 2045
    :cond_9
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only available to AID_SYSTEM"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private excludeLinkLocal(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InterfaceAddress;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/net/InterfaceAddress;",
            ">;"
        }
    .end annotation

    .line 1221
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1222
    .local v0, "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InterfaceAddress;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InterfaceAddress;

    .line 1223
    .local v2, "ia":Ljava/net/InterfaceAddress;
    invoke-virtual {v2}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_26

    .line 1224
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1225
    .end local v2  # "ia":Ljava/net/InterfaceAddress;
    :cond_26
    goto :goto_d

    .line 1226
    :cond_27
    return-object v0
.end method

.method public static fromStableParcel(Landroid/net/InterfaceConfigurationParcel;)Landroid/net/InterfaceConfiguration;
    .registers 7
    .param p0, "p"  # Landroid/net/InterfaceConfigurationParcel;

    .line 893
    new-instance v0, Landroid/net/InterfaceConfiguration;

    invoke-direct {v0}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 894
    .local v0, "cfg":Landroid/net/InterfaceConfiguration;
    iget-object v1, p0, Landroid/net/InterfaceConfigurationParcel;->hwAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/InterfaceConfiguration;->setHardwareAddress(Ljava/lang/String;)V

    .line 896
    iget-object v1, p0, Landroid/net/InterfaceConfigurationParcel;->ipv4Addr:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 897
    .local v1, "addr":Ljava/net/InetAddress;
    new-instance v2, Landroid/net/LinkAddress;

    iget v3, p0, Landroid/net/InterfaceConfigurationParcel;->prefixLength:I

    invoke-direct {v2, v1, v3}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v2}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 898
    iget-object v2, p0, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1e
    if-ge v4, v3, :cond_28

    aget-object v5, v2, v4

    .line 899
    .local v5, "flag":Ljava/lang/String;
    invoke-virtual {v0, v5}, Landroid/net/InterfaceConfiguration;->setFlag(Ljava/lang/String;)V

    .line 898
    .end local v5  # "flag":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 902
    :cond_28
    return-object v0
.end method

.method private getBatteryStats()Lcom/android/internal/app/IBatteryStats;
    .registers 3

    .line 344
    monitor-enter p0

    .line 345
    :try_start_1
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-eqz v0, :cond_9

    .line 346
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    monitor-exit p0

    return-object v0

    .line 348
    :cond_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mServices:Lcom/android/server/NetworkManagementService$SystemServices;

    const-string v1, "batterystats"

    .line 349
    invoke-virtual {v0, v1}, Lcom/android/server/NetworkManagementService$SystemServices;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 350
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    monitor-exit p0

    return-object v0

    .line 351
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method private getFirewallChainName(I)Ljava/lang/String;
    .registers 5
    .param p1, "chain"  # I

    .line 1879
    const/4 v0, 0x1

    if-eq p1, v0, :cond_28

    const/4 v0, 0x2

    if-eq p1, v0, :cond_24

    const/4 v0, 0x3

    if-ne p1, v0, :cond_d

    .line 1885
    const-string/jumbo v0, "powersave"

    return-object v0

    .line 1887
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad child chain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1881
    :cond_24
    const-string/jumbo v0, "standby"

    return-object v0

    .line 1883
    :cond_28
    const-string v0, "dozable"

    return-object v0
.end method

.method private getFirewallChainState(I)Z
    .registers 4
    .param p1, "chain"  # I

    .line 2659
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2660
    :try_start_3
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2661
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private getFirewallRuleName(II)Ljava/lang/String;
    .registers 4
    .param p1, "chain"  # I
    .param p2, "rule"  # I

    .line 2002
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallType(I)I

    move-result v0

    if-nez v0, :cond_f

    .line 2003
    const/4 v0, 0x1

    if-ne p2, v0, :cond_c

    .line 2004
    const-string v0, "allow"

    .local v0, "ruleName":Ljava/lang/String;
    goto :goto_17

    .line 2006
    .end local v0  # "ruleName":Ljava/lang/String;
    :cond_c
    const-string v0, "deny"

    .restart local v0  # "ruleName":Ljava/lang/String;
    goto :goto_17

    .line 2009
    .end local v0  # "ruleName":Ljava/lang/String;
    :cond_f
    const/4 v0, 0x2

    if-ne p2, v0, :cond_15

    .line 2010
    const-string v0, "deny"

    .restart local v0  # "ruleName":Ljava/lang/String;
    goto :goto_17

    .line 2012
    .end local v0  # "ruleName":Ljava/lang/String;
    :cond_15
    const-string v0, "allow"

    .line 2015
    .restart local v0  # "ruleName":Ljava/lang/String;
    :goto_17
    return-object v0
.end method

.method private getFirewallRuleType(II)I
    .registers 4
    .param p1, "chain"  # I
    .param p2, "rule"  # I

    .line 2035
    if-nez p2, :cond_c

    .line 2036
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallType(I)I

    move-result v0

    if-nez v0, :cond_a

    .line 2037
    const/4 v0, 0x2

    goto :goto_b

    :cond_a
    const/4 v0, 0x1

    .line 2036
    :goto_b
    return v0

    .line 2039
    :cond_c
    return p2
.end method

.method private getFirewallType(I)I
    .registers 5
    .param p1, "chain"  # I

    .line 1892
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_12

    const/4 v2, 0x2

    if-eq p1, v2, :cond_11

    const/4 v2, 0x3

    if-eq p1, v2, :cond_10

    .line 1900
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->isFirewallEnabled()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 1898
    :cond_10
    return v0

    .line 1894
    :cond_11
    return v1

    .line 1896
    :cond_12
    return v0
.end method

.method private getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;
    .registers 5
    .param p1, "chain"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRulesLock"
        }
    .end annotation

    .line 2020
    if-eqz p1, :cond_2b

    const/4 v0, 0x1

    if-eq p1, v0, :cond_28

    const/4 v0, 0x2

    if-eq p1, v0, :cond_25

    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    .line 2026
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    return-object v0

    .line 2030
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown chain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2022
    :cond_25
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    return-object v0

    .line 2024
    :cond_28
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    return-object v0

    .line 2028
    :cond_2b
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method private declared-synchronized invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V
    .registers 5
    .param p1, "eventCallback"  # Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;

    monitor-enter p0

    .line 404
    :try_start_1
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_2b

    .line 406
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_23

    .line 408
    :try_start_a
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_c} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_c} :catch_1f
    .catchall {:try_start_a .. :try_end_c} :catchall_18

    :try_start_c
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {p1, v2}, Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;->sendCallback(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_15} :catch_16
    .catchall {:try_start_c .. :try_end_15} :catchall_18

    .line 410
    goto :goto_20

    .line 409
    :catch_16
    move-exception v2

    goto :goto_20

    .line 413
    .end local v1  # "i":I
    :catchall_18
    move-exception v1

    :try_start_19
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v1

    .line 409
    .end local p0  # "this":Lcom/android/server/NetworkManagementService;
    .restart local v1  # "i":I
    :catch_1f
    move-exception v2

    .line 406
    :goto_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 413
    .end local v1  # "i":I
    :cond_23
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_2b

    .line 414
    nop

    .line 415
    monitor-exit p0

    return-void

    .line 403
    .end local v0  # "length":I
    .end local p1  # "eventCallback":Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;
    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private isNetworkRestrictedInternal(I)Z
    .registers 7
    .param p1, "uid"  # I

    .line 2623
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2624
    const/4 v1, 0x2

    :try_start_4
    invoke-direct {p0, v1}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 2625
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-ne v2, v1, :cond_34

    .line 2626
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_32

    const-string v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " restricted because of app standby mode"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    :cond_32
    monitor-exit v0

    return v3

    .line 2629
    :cond_34
    invoke-direct {p0, v3}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v1

    if-eqz v1, :cond_63

    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 2630
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-eq v1, v3, :cond_63

    .line 2631
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_61

    const-string v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " restricted because of device idle mode"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2632
    :cond_61
    monitor-exit v0

    return v3

    .line 2634
    :cond_63
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v1

    if-eqz v1, :cond_93

    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 2635
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-eq v1, v3, :cond_93

    .line 2636
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_91

    const-string v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " restricted because of power saver mode"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    :cond_91
    monitor-exit v0

    return v3

    .line 2639
    :cond_93
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 2640
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_ba

    const-string v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " restricted because of no metered data in the background"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    :cond_ba
    monitor-exit v0

    return v3

    .line 2644
    :cond_bc
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    if-eqz v1, :cond_e9

    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_e9

    .line 2645
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_e7

    const-string v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " restricted because of data saver mode"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    :cond_e7
    monitor-exit v0

    return v3

    .line 2648
    :cond_e9
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 2649
    :catchall_ec
    move-exception v1

    monitor-exit v0
    :try_end_ee
    .catchall {:try_start_4 .. :try_end_ee} :catchall_ec

    throw v1
.end method

.method static synthetic lambda$notifyAddressRemoved$8(Ljava/lang/String;Landroid/net/LinkAddress;Landroid/net/INetworkManagementEventObserver;)V
    .registers 3
    .param p0, "iface"  # Ljava/lang/String;
    .param p1, "address"  # Landroid/net/LinkAddress;
    .param p2, "o"  # Landroid/net/INetworkManagementEventObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 722
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkManagementEventObserver;->addressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method static synthetic lambda$notifyAddressUpdated$7(Ljava/lang/String;Landroid/net/LinkAddress;Landroid/net/INetworkManagementEventObserver;)V
    .registers 3
    .param p0, "iface"  # Ljava/lang/String;
    .param p1, "address"  # Landroid/net/LinkAddress;
    .param p2, "o"  # Landroid/net/INetworkManagementEventObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 715
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkManagementEventObserver;->addressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method static synthetic lambda$notifyInterfaceAdded$2(Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V
    .registers 2
    .param p0, "iface"  # Ljava/lang/String;
    .param p1, "o"  # Landroid/net/INetworkManagementEventObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 436
    invoke-interface {p1, p0}, Landroid/net/INetworkManagementEventObserver;->interfaceAdded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$notifyInterfaceClassActivity$5(IZJLandroid/net/INetworkManagementEventObserver;)V
    .registers 6
    .param p0, "type"  # I
    .param p1, "active"  # Z
    .param p2, "tsNanos"  # J
    .param p4, "o"  # Landroid/net/INetworkManagementEventObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 506
    nop

    .line 507
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 506
    invoke-interface {p4, v0, p1, p2, p3}, Landroid/net/INetworkManagementEventObserver;->interfaceClassDataActivityChanged(Ljava/lang/String;ZJ)V

    return-void
.end method

.method static synthetic lambda$notifyInterfaceDnsServerInfo$9(Ljava/lang/String;J[Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V
    .registers 5
    .param p0, "iface"  # Ljava/lang/String;
    .param p1, "lifetime"  # J
    .param p3, "addresses"  # [Ljava/lang/String;
    .param p4, "o"  # Landroid/net/INetworkManagementEventObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 729
    invoke-interface {p4, p0, p1, p2, p3}, Landroid/net/INetworkManagementEventObserver;->interfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$notifyInterfaceLinkStateChanged$1(Ljava/lang/String;ZLandroid/net/INetworkManagementEventObserver;)V
    .registers 3
    .param p0, "iface"  # Ljava/lang/String;
    .param p1, "up"  # Z
    .param p2, "o"  # Landroid/net/INetworkManagementEventObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 429
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkManagementEventObserver;->interfaceLinkStateChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic lambda$notifyInterfaceRemoved$3(Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V
    .registers 2
    .param p0, "iface"  # Ljava/lang/String;
    .param p1, "o"  # Landroid/net/INetworkManagementEventObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 447
    invoke-interface {p1, p0}, Landroid/net/INetworkManagementEventObserver;->interfaceRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$notifyInterfaceStatusChanged$0(Ljava/lang/String;ZLandroid/net/INetworkManagementEventObserver;)V
    .registers 3
    .param p0, "iface"  # Ljava/lang/String;
    .param p1, "up"  # Z
    .param p2, "o"  # Landroid/net/INetworkManagementEventObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 421
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic lambda$notifyLimitReached$4(Ljava/lang/String;Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V
    .registers 3
    .param p0, "limitName"  # Ljava/lang/String;
    .param p1, "iface"  # Ljava/lang/String;
    .param p2, "o"  # Landroid/net/INetworkManagementEventObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 454
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkManagementEventObserver;->limitReached(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$notifyRouteChange$10(Landroid/net/RouteInfo;Landroid/net/INetworkManagementEventObserver;)V
    .registers 2
    .param p0, "route"  # Landroid/net/RouteInfo;
    .param p1, "o"  # Landroid/net/INetworkManagementEventObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 737
    invoke-interface {p1, p0}, Landroid/net/INetworkManagementEventObserver;->routeUpdated(Landroid/net/RouteInfo;)V

    return-void
.end method

.method static synthetic lambda$notifyRouteChange$11(Landroid/net/RouteInfo;Landroid/net/INetworkManagementEventObserver;)V
    .registers 2
    .param p0, "route"  # Landroid/net/RouteInfo;
    .param p1, "o"  # Landroid/net/INetworkManagementEventObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 739
    invoke-interface {p1, p0}, Landroid/net/INetworkManagementEventObserver;->routeRemoved(Landroid/net/RouteInfo;)V

    return-void
.end method

.method private static makeUidRangeParcel(II)Landroid/net/UidRangeParcel;
    .registers 3
    .param p0, "start"  # I
    .param p1, "stop"  # I

    .line 1560
    new-instance v0, Landroid/net/UidRangeParcel;

    invoke-direct {v0}, Landroid/net/UidRangeParcel;-><init>()V

    .line 1561
    .local v0, "range":Landroid/net/UidRangeParcel;
    iput p0, v0, Landroid/net/UidRangeParcel;->start:I

    .line 1562
    iput p1, v0, Landroid/net/UidRangeParcel;->stop:I

    .line 1563
    return-object v0
.end method

.method private modifyInterfaceForward(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "add"  # Z
    .param p2, "fromIface"  # Ljava/lang/String;
    .param p3, "toIface"  # Ljava/lang/String;

    .line 1231
    if-eqz p1, :cond_8

    .line 1232
    :try_start_2
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p2, p3}, Landroid/net/INetd;->ipfwdAddInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 1234
    :cond_8
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p2, p3}, Landroid/net/INetd;->ipfwdRemoveInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_d} :catch_f
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_d} :catch_f

    .line 1238
    :goto_d
    nop

    .line 1239
    return-void

    .line 1236
    :catch_f
    move-exception v0

    .line 1237
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private modifyInterfaceInNetwork(ZILjava/lang/String;)V
    .registers 7
    .param p1, "add"  # Z
    .param p2, "netId"  # I
    .param p3, "iface"  # Ljava/lang/String;

    .line 2176
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2178
    if-eqz p1, :cond_11

    .line 2179
    :try_start_b
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p2, p3}, Landroid/net/INetd;->networkAddInterface(ILjava/lang/String;)V

    goto :goto_16

    .line 2181
    :cond_11
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p2, p3}, Landroid/net/INetd;->networkRemoveInterface(ILjava/lang/String;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_16} :catch_18
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_16} :catch_18

    .line 2185
    :goto_16
    nop

    .line 2186
    return-void

    .line 2183
    :catch_18
    move-exception v0

    .line 2184
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private modifyRoute(ZILandroid/net/RouteInfo;)V
    .registers 9
    .param p1, "add"  # Z
    .param p2, "netId"  # I
    .param p3, "route"  # Landroid/net/RouteInfo;

    .line 1018
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v0

    .line 1021
    .local v0, "ifName":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1024
    .local v1, "dst":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2e

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2a

    const/16 v3, 0x9

    if-eq v2, v3, :cond_26

    .line 1039
    const-string v2, ""

    .local v2, "nextHop":Ljava/lang/String;
    goto :goto_40

    .line 1036
    .end local v2  # "nextHop":Ljava/lang/String;
    :cond_26
    const-string/jumbo v2, "throw"

    .line 1037
    .restart local v2  # "nextHop":Ljava/lang/String;
    goto :goto_40

    .line 1033
    .end local v2  # "nextHop":Ljava/lang/String;
    :cond_2a
    const-string/jumbo v2, "unreachable"

    .line 1034
    .restart local v2  # "nextHop":Ljava/lang/String;
    goto :goto_40

    .line 1026
    .end local v2  # "nextHop":Ljava/lang/String;
    :cond_2e
    invoke-virtual {p3}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1027
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .restart local v2  # "nextHop":Ljava/lang/String;
    goto :goto_40

    .line 1029
    .end local v2  # "nextHop":Ljava/lang/String;
    :cond_3d
    const-string v2, ""

    .line 1031
    .restart local v2  # "nextHop":Ljava/lang/String;
    nop

    .line 1043
    :goto_40
    if-eqz p1, :cond_48

    .line 1044
    :try_start_42
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v3, p2, v0, v1, v2}, Landroid/net/INetd;->networkAddRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d

    .line 1046
    :cond_48
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v3, p2, v0, v1, v2}, Landroid/net/INetd;->networkRemoveRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_4d} :catch_4f
    .catch Landroid/os/ServiceSpecificException; {:try_start_42 .. :try_end_4d} :catch_4f

    .line 1050
    :goto_4d
    nop

    .line 1051
    return-void

    .line 1048
    :catch_4f
    move-exception v3

    .line 1049
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private notifyAddressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 4
    .param p1, "iface"  # Ljava/lang/String;
    .param p2, "address"  # Landroid/net/LinkAddress;

    .line 722
    new-instance v0, Lcom/android/server/-$$Lambda$NetworkManagementService$hs6djmKbGd8sG4u1TMglrogNP_s;

    invoke-direct {v0, p1, p2}, Lcom/android/server/-$$Lambda$NetworkManagementService$hs6djmKbGd8sG4u1TMglrogNP_s;-><init>(Ljava/lang/String;Landroid/net/LinkAddress;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 723
    return-void
.end method

.method private notifyAddressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 4
    .param p1, "iface"  # Ljava/lang/String;
    .param p2, "address"  # Landroid/net/LinkAddress;

    .line 715
    new-instance v0, Lcom/android/server/-$$Lambda$NetworkManagementService$Yw12yNgo43yul34SibAKDtttAK8;

    invoke-direct {v0, p1, p2}, Lcom/android/server/-$$Lambda$NetworkManagementService$Yw12yNgo43yul34SibAKDtttAK8;-><init>(Ljava/lang/String;Landroid/net/LinkAddress;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 716
    return-void
.end method

.method private notifyInterfaceAdded(Ljava/lang/String;)V
    .registers 3
    .param p1, "iface"  # Ljava/lang/String;

    .line 436
    new-instance v0, Lcom/android/server/-$$Lambda$NetworkManagementService$vX8dVVYxxv3YT9jQuN34bgGgRa8;

    invoke-direct {v0, p1}, Lcom/android/server/-$$Lambda$NetworkManagementService$vX8dVVYxxv3YT9jQuN34bgGgRa8;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 437
    return-void
.end method

.method private notifyInterfaceClassActivity(IZJIZ)V
    .registers 12
    .param p1, "type"  # I
    .param p2, "isActive"  # Z
    .param p3, "tsNanos"  # J
    .param p5, "uid"  # I
    .param p6, "fromRadio"  # Z

    .line 462
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v0

    .line 463
    .local v0, "isMobile":Z
    const/4 v1, 0x1

    if-eqz p2, :cond_9

    .line 464
    const/4 v2, 0x3

    goto :goto_a

    .line 465
    :cond_9
    move v2, v1

    :goto_a
    nop

    .line 466
    .local v2, "powerState":I
    const/4 v3, 0x0

    if-eqz v0, :cond_2d

    .line 467
    if-nez p6, :cond_17

    .line 468
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    if-eqz v1, :cond_19

    .line 472
    iget v2, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    goto :goto_19

    .line 475
    :cond_17
    iput-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    .line 477
    :cond_19
    :goto_19
    iget v1, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    if-eq v1, v2, :cond_2d

    .line 478
    iput v2, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    .line 480
    :try_start_1f
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->getBatteryStats()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    invoke-interface {v1, v2, p3, p4, p5}, Lcom/android/internal/app/IBatteryStats;->noteMobileRadioPowerState(IJI)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_26} :catch_27

    .line 482
    goto :goto_28

    .line 481
    :catch_27
    move-exception v1

    .line 483
    :goto_28
    const/16 v1, 0xc

    invoke-static {v1, p5, v3, v2}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 488
    :cond_2d
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeWifi(I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 489
    iget v1, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromWifi:I

    if-eq v1, v2, :cond_47

    .line 490
    iput v2, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromWifi:I

    .line 492
    :try_start_39
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->getBatteryStats()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    invoke-interface {v1, v2, p3, p4, p5}, Lcom/android/internal/app/IBatteryStats;->noteWifiRadioPowerState(IJI)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_40} :catch_41

    .line 494
    goto :goto_42

    .line 493
    :catch_41
    move-exception v1

    .line 495
    :goto_42
    const/16 v1, 0xd

    invoke-static {v1, p5, v3, v2}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 500
    :cond_47
    if-eqz v0, :cond_4f

    if-nez p6, :cond_4f

    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    if-nez v1, :cond_58

    .line 505
    :cond_4f
    move v1, p2

    .line 506
    .local v1, "active":Z
    new-instance v3, Lcom/android/server/-$$Lambda$NetworkManagementService$D43p3Tqq7B3qaMs9AGb_3j0KZd0;

    invoke-direct {v3, p1, v1, p3, p4}, Lcom/android/server/-$$Lambda$NetworkManagementService$D43p3Tqq7B3qaMs9AGb_3j0KZd0;-><init>(IZJ)V

    invoke-direct {p0, v3}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 510
    .end local v1  # "active":Z
    :cond_58
    const/4 v1, 0x0

    .line 511
    .local v1, "report":Z
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 512
    :try_start_5c
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_65

    .line 515
    const/4 p2, 0x1

    .line 517
    :cond_65
    iget-boolean v4, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z

    if-eq v4, p2, :cond_6c

    .line 518
    iput-boolean p2, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z

    .line 519
    move v1, p2

    .line 521
    :cond_6c
    monitor-exit v3
    :try_end_6d
    .catchall {:try_start_5c .. :try_end_6d} :catchall_73

    .line 522
    if-eqz v1, :cond_72

    .line 523
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->reportNetworkActive()V

    .line 525
    :cond_72
    return-void

    .line 521
    :catchall_73
    move-exception v4

    :try_start_74
    monitor-exit v3
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw v4
.end method

.method private notifyInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    .registers 6
    .param p1, "iface"  # Ljava/lang/String;
    .param p2, "lifetime"  # J
    .param p4, "addresses"  # [Ljava/lang/String;

    .line 729
    new-instance v0, Lcom/android/server/-$$Lambda$NetworkManagementService$RVCc8O9RWjyrynN9cyM7inAv-fk;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/-$$Lambda$NetworkManagementService$RVCc8O9RWjyrynN9cyM7inAv-fk;-><init>(Ljava/lang/String;J[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 730
    return-void
.end method

.method private notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "iface"  # Ljava/lang/String;
    .param p2, "up"  # Z

    .line 429
    new-instance v0, Lcom/android/server/-$$Lambda$NetworkManagementService$_L953cbquVj0BMBP1MZlSTm0Umg;

    invoke-direct {v0, p1, p2}, Lcom/android/server/-$$Lambda$NetworkManagementService$_L953cbquVj0BMBP1MZlSTm0Umg;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 430
    return-void
.end method

.method private notifyInterfaceRemoved(Ljava/lang/String;)V
    .registers 3
    .param p1, "iface"  # Ljava/lang/String;

    .line 445
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    new-instance v0, Lcom/android/server/-$$Lambda$NetworkManagementService$FsR_UD5xfj4hgrwGdX74wq881Bk;

    invoke-direct {v0, p1}, Lcom/android/server/-$$Lambda$NetworkManagementService$FsR_UD5xfj4hgrwGdX74wq881Bk;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 448
    return-void
.end method

.method private notifyInterfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "iface"  # Ljava/lang/String;
    .param p2, "up"  # Z

    .line 421
    new-instance v0, Lcom/android/server/-$$Lambda$NetworkManagementService$fl14NirBlFUd6eJkGcL0QWd5-w0;

    invoke-direct {v0, p1, p2}, Lcom/android/server/-$$Lambda$NetworkManagementService$fl14NirBlFUd6eJkGcL0QWd5-w0;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 422
    return-void
.end method

.method private notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "limitName"  # Ljava/lang/String;
    .param p2, "iface"  # Ljava/lang/String;

    .line 454
    new-instance v0, Lcom/android/server/-$$Lambda$NetworkManagementService$xer7k2RLU4mODjrkZqaX89S9gD8;

    invoke-direct {v0, p1, p2}, Lcom/android/server/-$$Lambda$NetworkManagementService$xer7k2RLU4mODjrkZqaX89S9gD8;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 455
    return-void
.end method

.method private notifyRouteChange(ZLandroid/net/RouteInfo;)V
    .registers 4
    .param p1, "updated"  # Z
    .param p2, "route"  # Landroid/net/RouteInfo;

    .line 736
    if-eqz p1, :cond_b

    .line 737
    new-instance v0, Lcom/android/server/-$$Lambda$NetworkManagementService$VhSl9D6THA_3jE0unleMmkHavJ0;

    invoke-direct {v0, p2}, Lcom/android/server/-$$Lambda$NetworkManagementService$VhSl9D6THA_3jE0unleMmkHavJ0;-><init>(Landroid/net/RouteInfo;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    goto :goto_13

    .line 739
    :cond_b
    new-instance v0, Lcom/android/server/-$$Lambda$NetworkManagementService$JKmkb4AIm_PPzQp1XOHOgPPRswo;

    invoke-direct {v0, p2}, Lcom/android/server/-$$Lambda$NetworkManagementService$JKmkb4AIm_PPzQp1XOHOgPPRswo;-><init>(Landroid/net/RouteInfo;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 741
    :goto_13
    return-void
.end method

.method private onAppNetworkPolicyRequired(I)I
    .registers 9
    .param p1, "uid"  # I

    .line 380
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mOemObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 381
    .local v0, "length":I
    const/4 v1, -0x1

    .line 383
    .local v1, "netId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    const-string v3, "NetworkManagement"

    if-ge v2, v0, :cond_3a

    .line 385
    :try_start_c
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mOemObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/net/IOemNetworkManagementEventObserver;

    invoke-interface {v4, p1}, Landroid/net/IOemNetworkManagementEventObserver;->onAppNetworkPolicyRequested(I)I

    move-result v3
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_18} :catch_1c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_18} :catch_1c
    .catchall {:try_start_c .. :try_end_18} :catchall_1a

    move v1, v3

    .line 388
    goto :goto_31

    .line 391
    .end local v2  # "i":I
    :catchall_1a
    move-exception v2

    goto :goto_34

    .line 386
    .restart local v2  # "i":I
    :catch_1c
    move-exception v4

    .line 387
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OemObservers callback failed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_1d .. :try_end_31} :catchall_1a

    .line 383
    .end local v4  # "e":Ljava/lang/Exception;
    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 391
    .end local v2  # "i":I
    :goto_34
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mOemObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v2

    :cond_3a
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mOemObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 392
    nop

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OemObservers callback return netId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    return v1
.end method

.method private prepareNativeDaemon()V
    .registers 11

    .line 618
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 621
    :try_start_3
    const-string/jumbo v1, "net.qtaguid_enabled"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mStrictEnabled:Z

    .line 625
    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    invoke-virtual {p0, v2}, Lcom/android/server/NetworkManagementService;->setDataSaverModeEnabled(Z)Z

    .line 627
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 628
    .local v2, "size":I
    if-lez v2, :cond_6a

    .line 629
    sget-boolean v3, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v3, :cond_3a

    const-string v3, "NetworkManagement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pushing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " active quota rules"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_3a
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 631
    .local v3, "activeQuotas":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 632
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 633
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/server/NetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V

    .line 634
    .end local v5  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    goto :goto_4a

    .line 637
    .end local v3  # "activeQuotas":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_6a
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    move v2, v3

    .line 638
    if-lez v2, :cond_c2

    .line 639
    sget-boolean v3, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v3, :cond_92

    const-string v3, "NetworkManagement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pushing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " active alert rules"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_92
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 641
    .local v3, "activeAlerts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 642
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 643
    .restart local v5  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/server/NetworkManagementService;->setInterfaceAlert(Ljava/lang/String;J)V

    .line 644
    .end local v5  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    goto :goto_a2

    .line 647
    .end local v3  # "activeAlerts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_c2
    const/4 v3, 0x0

    .line 648
    .local v3, "uidRejectOnQuota":Landroid/util/SparseBooleanArray;
    const/4 v4, 0x0

    .line 649
    .local v4, "uidAcceptOnQuota":Landroid/util/SparseBooleanArray;
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_c7
    .catchall {:try_start_3 .. :try_end_c7} :catchall_1e5

    .line 650
    :try_start_c7
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v2, v6

    .line 651
    if-lez v2, :cond_f9

    .line 652
    sget-boolean v6, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v6, :cond_ef

    const-string v6, "NetworkManagement"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pushing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " UIDs to metered blacklist rules"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_ef
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    move-object v3, v6

    .line 654
    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v6, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    .line 657
    :cond_f9
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v2, v6

    .line 658
    if-lez v2, :cond_12b

    .line 659
    sget-boolean v6, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v6, :cond_121

    const-string v6, "NetworkManagement"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pushing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " UIDs to metered whitelist rules"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_121
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    move-object v4, v6

    .line 661
    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v6, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    .line 663
    :cond_12b
    monitor-exit v5
    :try_end_12c
    .catchall {:try_start_c7 .. :try_end_12c} :catchall_1e2

    .line 664
    const/4 v5, 0x0

    if-eqz v3, :cond_144

    .line 665
    move v6, v5

    .local v6, "i":I
    :goto_130
    :try_start_130
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_144

    .line 666
    invoke-virtual {v3, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    .line 667
    invoke-virtual {v3, v6}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    .line 666
    invoke-virtual {p0, v7, v8}, Lcom/android/server/NetworkManagementService;->setUidMeteredNetworkBlacklist(IZ)V

    .line 665
    add-int/lit8 v6, v6, 0x1

    goto :goto_130

    .line 670
    .end local v6  # "i":I
    :cond_144
    if-eqz v4, :cond_15b

    .line 671
    move v6, v5

    .restart local v6  # "i":I
    :goto_147
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_15b

    .line 672
    invoke-virtual {v4, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    .line 673
    invoke-virtual {v4, v6}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    .line 672
    invoke-virtual {p0, v7, v8}, Lcom/android/server/NetworkManagementService;->setUidMeteredNetworkWhitelist(IZ)V

    .line 671
    add-int/lit8 v6, v6, 0x1

    goto :goto_147

    .line 677
    .end local v6  # "i":I
    :cond_15b
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    move v2, v6

    .line 678
    if-lez v2, :cond_1a1

    .line 679
    sget-boolean v6, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v6, :cond_183

    const-string v6, "NetworkManagement"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pushing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " active UID cleartext policies"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_183
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    .line 681
    .local v6, "local":Landroid/util/SparseIntArray;
    new-instance v7, Landroid/util/SparseIntArray;

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v7, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    .line 682
    move v7, v5

    .local v7, "i":I
    :goto_18d
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_1a1

    .line 683
    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    invoke-virtual {p0, v8, v9}, Lcom/android/server/NetworkManagementService;->setUidCleartextNetworkPolicy(II)V

    .line 682
    add-int/lit8 v7, v7, 0x1

    goto :goto_18d

    .line 687
    .end local v6  # "local":Landroid/util/SparseIntArray;
    .end local v7  # "i":I
    :cond_1a1
    iget-boolean v6, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    invoke-virtual {p0, v6}, Lcom/android/server/NetworkManagementService;->setFirewallEnabled(Z)V

    .line 689
    const-string v6, ""

    invoke-direct {p0, v5, v6}, Lcom/android/server/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 690
    const-string/jumbo v6, "standby "

    const/4 v7, 0x2

    invoke-direct {p0, v7, v6}, Lcom/android/server/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 691
    const-string v6, "dozable "

    invoke-direct {p0, v1, v6}, Lcom/android/server/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 692
    const-string/jumbo v6, "powersave "

    const/4 v8, 0x3

    invoke-direct {p0, v8, v6}, Lcom/android/server/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 694
    new-array v6, v8, [I

    aput v7, v6, v5

    aput v1, v6, v1

    aput v8, v6, v7

    .line 696
    .local v6, "chains":[I
    array-length v7, v6

    :goto_1c7
    if-ge v5, v7, :cond_1d7

    aget v8, v6, v5

    .line 697
    .local v8, "chain":I
    invoke-direct {p0, v8}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v9

    if-eqz v9, :cond_1d4

    .line 698
    invoke-virtual {p0, v8, v1}, Lcom/android/server/NetworkManagementService;->setFirewallChainEnabled(IZ)V

    .line 696
    .end local v8  # "chain":I
    :cond_1d4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c7

    .line 701
    .end local v2  # "size":I
    .end local v3  # "uidRejectOnQuota":Landroid/util/SparseBooleanArray;
    .end local v4  # "uidAcceptOnQuota":Landroid/util/SparseBooleanArray;
    .end local v6  # "chains":[I
    :cond_1d7
    monitor-exit v0
    :try_end_1d8
    .catchall {:try_start_130 .. :try_end_1d8} :catchall_1e5

    .line 705
    :try_start_1d8
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->getBatteryStats()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->noteNetworkStatsEnabled()V
    :try_end_1df
    .catch Landroid/os/RemoteException; {:try_start_1d8 .. :try_end_1df} :catch_1e0

    .line 707
    goto :goto_1e1

    .line 706
    :catch_1e0
    move-exception v0

    .line 709
    :goto_1e1
    return-void

    .line 663
    .restart local v2  # "size":I
    .restart local v3  # "uidRejectOnQuota":Landroid/util/SparseBooleanArray;
    .restart local v4  # "uidAcceptOnQuota":Landroid/util/SparseBooleanArray;
    :catchall_1e2
    move-exception v1

    :try_start_1e3
    monitor-exit v5
    :try_end_1e4
    .catchall {:try_start_1e3 .. :try_end_1e4} :catchall_1e2

    .end local p0  # "this":Lcom/android/server/NetworkManagementService;
    :try_start_1e4
    throw v1

    .line 701
    .end local v2  # "size":I
    .end local v3  # "uidRejectOnQuota":Landroid/util/SparseBooleanArray;
    .end local v4  # "uidAcceptOnQuota":Landroid/util/SparseBooleanArray;
    .restart local p0  # "this":Lcom/android/server/NetworkManagementService;
    :catchall_1e5
    move-exception v1

    monitor-exit v0
    :try_end_1e7
    .catchall {:try_start_1e4 .. :try_end_1e7} :catchall_1e5

    throw v1
.end method

.method private readRouteList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .param p1, "filename"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1054
    const/4 v0, 0x0

    .line 1055
    .local v0, "fstream":Ljava/io/InputStream;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1058
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    :try_start_7
    new-array v3, v2, [Ljava/lang/String;

    invoke-static {p1, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v3, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    .line 1059
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1060
    .local v2, "in":Ljava/io/DataInputStream;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1065
    .local v3, "br":Ljava/io/BufferedReader;
    :goto_23
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "s":Ljava/lang/String;
    if-eqz v4, :cond_34

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_34

    .line 1066
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_33} :catch_46
    .catchall {:try_start_7 .. :try_end_33} :catchall_3c

    goto :goto_23

    .line 1071
    .end local v2  # "in":Ljava/io/DataInputStream;
    .end local v3  # "br":Ljava/io/BufferedReader;
    .end local v5  # "s":Ljava/lang/String;
    :cond_34
    if-eqz v0, :cond_4d

    .line 1073
    :try_start_36
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    .line 1074
    :goto_39
    goto :goto_4d

    :catch_3a
    move-exception v2

    goto :goto_39

    .line 1071
    :catchall_3c
    move-exception v2

    if-eqz v0, :cond_45

    .line 1073
    :try_start_3f
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    .line 1074
    :goto_42
    goto :goto_45

    :catch_43
    move-exception v3

    goto :goto_42

    :cond_45
    :goto_45
    throw v2

    .line 1068
    :catch_46
    move-exception v2

    .line 1071
    if-eqz v0, :cond_4d

    .line 1073
    :try_start_49
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_3a

    goto :goto_39

    .line 1078
    :cond_4d
    :goto_4d
    return-object v1
.end method

.method private reportNetworkActive()V
    .registers 4

    .line 2067
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2069
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_20

    .line 2071
    :try_start_9
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/os/INetworkActivityListener;

    invoke-interface {v2}, Landroid/os/INetworkActivityListener;->onNetworkActive()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_1c
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_14} :catch_1c
    .catchall {:try_start_9 .. :try_end_14} :catchall_15

    .line 2073
    goto :goto_1d

    .line 2076
    .end local v1  # "i":I
    :catchall_15
    move-exception v1

    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v1

    .line 2072
    .restart local v1  # "i":I
    :catch_1c
    move-exception v2

    .line 2069
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2076
    .end local v1  # "i":I
    :cond_20
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2077
    nop

    .line 2078
    return-void
.end method

.method private setFirewallChainState(IZ)V
    .registers 5
    .param p1, "chain"  # I
    .param p2, "state"  # Z

    .line 2653
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2654
    :try_start_3
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2655
    monitor-exit v0

    .line 2656
    return-void

    .line 2655
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private setFirewallUidRuleLocked(III)V
    .registers 7
    .param p1, "chain"  # I
    .param p2, "uid"  # I
    .param p3, "rule"  # I

    .line 1962
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NetworkManagementService;->updateFirewallUidRuleLocked(III)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1963
    invoke-direct {p0, p1, p3}, Lcom/android/server/NetworkManagementService;->getFirewallRuleType(II)I

    move-result v0

    .line 1965
    .local v0, "ruleType":I
    :try_start_a
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1, p2, v0}, Landroid/net/INetd;->firewallSetUidRule(III)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_f} :catch_10

    .line 1968
    goto :goto_17

    .line 1966
    :catch_10
    move-exception v1

    .line 1967
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1970
    .end local v0  # "ruleType":I
    .end local v1  # "e":Ljava/lang/Exception;
    :cond_17
    :goto_17
    return-void
.end method

.method private setUidOnMeteredNetworkList(IZZ)V
    .registers 11
    .param p1, "uid"  # I
    .param p2, "blacklist"  # Z
    .param p3, "enable"  # Z

    .line 1477
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1482
    :try_start_c
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_6d

    .line 1483
    if-eqz p2, :cond_14

    :try_start_11
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    goto :goto_16

    :cond_14
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    .line 1484
    .local v2, "quotaList":Landroid/util/SparseBooleanArray;
    :goto_16
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    .line 1485
    .local v3, "oldEnable":Z
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_6a

    .line 1486
    if-ne v3, p3, :cond_20

    .line 1488
    :try_start_1e
    monitor-exit v0

    return-void

    .line 1491
    :cond_20
    const-string/jumbo v1, "inetd bandwidth"

    const-wide/32 v4, 0x200000

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_6d

    .line 1493
    if-eqz p2, :cond_39

    .line 1494
    if-eqz p3, :cond_33

    .line 1495
    :try_start_2d
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1}, Landroid/net/INetd;->bandwidthAddNaughtyApp(I)V

    goto :goto_46

    .line 1497
    :cond_33
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1}, Landroid/net/INetd;->bandwidthRemoveNaughtyApp(I)V

    goto :goto_46

    .line 1500
    :cond_39
    if-eqz p3, :cond_41

    .line 1501
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1}, Landroid/net/INetd;->bandwidthAddNiceApp(I)V

    goto :goto_46

    .line 1503
    :cond_41
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1}, Landroid/net/INetd;->bandwidthRemoveNiceApp(I)V

    .line 1506
    :goto_46
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_49} :catch_5f
    .catch Landroid/os/ServiceSpecificException; {:try_start_2d .. :try_end_49} :catch_5f
    .catchall {:try_start_2d .. :try_end_49} :catchall_5d

    .line 1507
    if-eqz p3, :cond_50

    .line 1508
    const/4 v6, 0x1

    :try_start_4c
    invoke-virtual {v2, p1, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_53

    .line 1510
    :cond_50
    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1512
    :goto_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_4c .. :try_end_54} :catchall_5a

    .line 1516
    :try_start_54
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1517
    nop

    .line 1518
    .end local v2  # "quotaList":Landroid/util/SparseBooleanArray;
    .end local v3  # "oldEnable":Z
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_6d

    .line 1519
    return-void

    .line 1512
    .restart local v2  # "quotaList":Landroid/util/SparseBooleanArray;
    .restart local v3  # "oldEnable":Z
    :catchall_5a
    move-exception v6

    :try_start_5b
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    .end local v2  # "quotaList":Landroid/util/SparseBooleanArray;
    .end local v3  # "oldEnable":Z
    .end local p0  # "this":Lcom/android/server/NetworkManagementService;
    .end local p1  # "uid":I
    .end local p2  # "blacklist":Z
    .end local p3  # "enable":Z
    :try_start_5c
    throw v6
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_5d} :catch_5f
    .catch Landroid/os/ServiceSpecificException; {:try_start_5c .. :try_end_5d} :catch_5f
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5d

    .line 1516
    .restart local v2  # "quotaList":Landroid/util/SparseBooleanArray;
    .restart local v3  # "oldEnable":Z
    .restart local p0  # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1  # "uid":I
    .restart local p2  # "blacklist":Z
    .restart local p3  # "enable":Z
    :catchall_5d
    move-exception v1

    goto :goto_66

    .line 1513
    :catch_5f
    move-exception v1

    .line 1514
    .local v1, "e":Ljava/lang/Exception;
    :try_start_60
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local v2  # "quotaList":Landroid/util/SparseBooleanArray;
    .end local v3  # "oldEnable":Z
    .end local p0  # "this":Lcom/android/server/NetworkManagementService;
    .end local p1  # "uid":I
    .end local p2  # "blacklist":Z
    .end local p3  # "enable":Z
    throw v6
    :try_end_66
    .catchall {:try_start_60 .. :try_end_66} :catchall_5d

    .line 1516
    .end local v1  # "e":Ljava/lang/Exception;
    .restart local v2  # "quotaList":Landroid/util/SparseBooleanArray;
    .restart local v3  # "oldEnable":Z
    .restart local p0  # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1  # "uid":I
    .restart local p2  # "blacklist":Z
    .restart local p3  # "enable":Z
    :goto_66
    :try_start_66
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .end local p0  # "this":Lcom/android/server/NetworkManagementService;
    .end local p1  # "uid":I
    .end local p2  # "blacklist":Z
    .end local p3  # "enable":Z
    throw v1
    :try_end_6a
    .catchall {:try_start_66 .. :try_end_6a} :catchall_6d

    .line 1485
    .end local v2  # "quotaList":Landroid/util/SparseBooleanArray;
    .end local v3  # "oldEnable":Z
    .restart local p0  # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1  # "uid":I
    .restart local p2  # "blacklist":Z
    .restart local p3  # "enable":Z
    :catchall_6a
    move-exception v2

    :try_start_6b
    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    .end local p0  # "this":Lcom/android/server/NetworkManagementService;
    .end local p1  # "uid":I
    .end local p2  # "blacklist":Z
    .end local p3  # "enable":Z
    :try_start_6c
    throw v2

    .line 1518
    .restart local p0  # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1  # "uid":I
    .restart local p2  # "blacklist":Z
    .restart local p3  # "enable":Z
    :catchall_6d
    move-exception v1

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_6d

    throw v1
.end method

.method private syncFirewallChainLocked(ILjava/lang/String;)V
    .registers 7
    .param p1, "chain"  # I
    .param p2, "name"  # Ljava/lang/String;

    .line 564
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 565
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object v1

    .line 571
    .local v1, "uidFirewallRules":Landroid/util/SparseIntArray;
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v2

    .line 572
    .local v2, "rules":Landroid/util/SparseIntArray;
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 573
    .end local v1  # "uidFirewallRules":Landroid/util/SparseIntArray;
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_56

    .line 574
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_55

    .line 578
    sget-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pushing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " active firewall "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "UID rules"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkManagement"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_40
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_41
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_55

    .line 581
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/NetworkManagementService;->setFirewallUidRuleLocked(III)V

    .line 580
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 584
    .end local v0  # "i":I
    :cond_55
    return-void

    .line 573
    .end local v2  # "rules":Landroid/util/SparseIntArray;
    :catchall_56
    move-exception v1

    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v1
.end method

.method private static toStableParcel(Landroid/net/InterfaceConfiguration;Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;
    .registers 7
    .param p0, "cfg"  # Landroid/net/InterfaceConfiguration;
    .param p1, "iface"  # Ljava/lang/String;

    .line 870
    new-instance v0, Landroid/net/InterfaceConfigurationParcel;

    invoke-direct {v0}, Landroid/net/InterfaceConfigurationParcel;-><init>()V

    .line 871
    .local v0, "cfgParcel":Landroid/net/InterfaceConfigurationParcel;
    iput-object p1, v0, Landroid/net/InterfaceConfigurationParcel;->ifName:Ljava/lang/String;

    .line 872
    invoke-virtual {p0}, Landroid/net/InterfaceConfiguration;->getHardwareAddress()Ljava/lang/String;

    move-result-object v1

    .line 873
    .local v1, "hwAddr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 874
    iput-object v1, v0, Landroid/net/InterfaceConfigurationParcel;->hwAddr:Ljava/lang/String;

    goto :goto_18

    .line 876
    :cond_14
    const-string v2, ""

    iput-object v2, v0, Landroid/net/InterfaceConfigurationParcel;->hwAddr:Ljava/lang/String;

    .line 878
    :goto_18
    invoke-virtual {p0}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/InterfaceConfigurationParcel;->ipv4Addr:Ljava/lang/String;

    .line 879
    invoke-virtual {p0}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v2

    iput v2, v0, Landroid/net/InterfaceConfigurationParcel;->prefixLength:I

    .line 880
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 881
    .local v2, "flags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/net/InterfaceConfiguration;->getFlags()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 882
    .local v4, "flag":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    .end local v4  # "flag":Ljava/lang/String;
    goto :goto_3d

    .line 884
    :cond_4d
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, v0, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    .line 886
    return-object v0
.end method

.method private static toStableParcels([Landroid/net/UidRange;)[Landroid/net/UidRangeParcel;
    .registers 5
    .param p0, "ranges"  # [Landroid/net/UidRange;

    .line 1567
    array-length v0, p0

    new-array v0, v0, [Landroid/net/UidRangeParcel;

    .line 1568
    .local v0, "stableRanges":[Landroid/net/UidRangeParcel;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_18

    .line 1569
    aget-object v2, p0, v1

    iget v2, v2, Landroid/net/UidRange;->start:I

    aget-object v3, p0, v1

    iget v3, v3, Landroid/net/UidRange;->stop:I

    invoke-static {v2, v3}, Lcom/android/server/NetworkManagementService;->makeUidRangeParcel(II)Landroid/net/UidRangeParcel;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1568
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1571
    .end local v1  # "i":I
    :cond_18
    return-object v0
.end method

.method private updateFirewallUidRuleLocked(III)Z
    .registers 11
    .param p1, "chain"  # I
    .param p2, "uid"  # I
    .param p3, "rule"  # I

    .line 1974
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1975
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object v1

    .line 1977
    .local v1, "uidFirewallRules":Landroid/util/SparseIntArray;
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 1978
    .local v3, "oldUidFirewallRule":I
    sget-boolean v4, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v4, :cond_3f

    .line 1979
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "oldRule = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", newRule="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " for uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " on chain "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    :cond_3f
    if-ne v3, p3, :cond_4e

    .line 1983
    sget-boolean v4, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v4, :cond_4c

    const-string v4, "NetworkManagement"

    const-string v5, "!!!!! Skipping change"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    :cond_4c
    monitor-exit v0

    return v2

    .line 1988
    :cond_4e
    invoke-direct {p0, p1, p3}, Lcom/android/server/NetworkManagementService;->getFirewallRuleName(II)Ljava/lang/String;

    move-result-object v4

    .line 1989
    .local v4, "ruleName":Ljava/lang/String;
    invoke-direct {p0, p1, v3}, Lcom/android/server/NetworkManagementService;->getFirewallRuleName(II)Ljava/lang/String;

    move-result-object v5

    .line 1991
    .local v5, "oldRuleName":Ljava/lang/String;
    if-nez p3, :cond_5c

    .line 1992
    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_5f

    .line 1994
    :cond_5c
    invoke-virtual {v1, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1996
    :goto_5f
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_66

    const/4 v2, 0x1

    :cond_66
    monitor-exit v0

    return v2

    .line 1997
    .end local v1  # "uidFirewallRules":Landroid/util/SparseIntArray;
    .end local v3  # "oldUidFirewallRule":I
    .end local v4  # "ruleName":Ljava/lang/String;
    .end local v5  # "oldRuleName":Ljava/lang/String;
    :catchall_68
    move-exception v1

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_3 .. :try_end_6a} :catchall_68

    throw v1
.end method


# virtual methods
.method public addHostName(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "ipAddr"  # Ljava/lang/String;
    .param p2, "hostName"  # Ljava/lang/String;

    .line 2293
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "NetworkManagement"

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addHostName: , ipAddr="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",hostName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_40

    .line 2300
    :cond_32
    :try_start_32
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Landroid/net/IOemNetd;

    invoke-interface {v0, p1, p2}, Landroid/net/IOemNetd;->addHostNames(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_38} :catch_39
    .catch Landroid/os/ServiceSpecificException; {:try_start_32 .. :try_end_38} :catch_39

    return v0

    .line 2301
    :catch_39
    move-exception v0

    .line 2302
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2297
    .end local v0  # "e":Ljava/lang/Exception;
    :cond_40
    :goto_40
    const/4 v0, 0x0

    return v0
.end method

.method public addIdleTimer(Ljava/lang/String;II)V
    .registers 8
    .param p1, "iface"  # Ljava/lang/String;
    .param p2, "timeout"  # I
    .param p3, "type"  # I

    .line 1275
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    sget-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_14

    const-string v0, "NetworkManagement"

    const-string v1, "Adding idletimer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    :cond_14
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1280
    :try_start_17
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    .line 1281
    .local v1, "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    if-eqz v1, :cond_29

    .line 1283
    iget v2, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    .line 1284
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_17 .. :try_end_28} :catchall_5a

    return-void

    .line 1288
    :cond_29
    :try_start_29
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, p2, v3}, Landroid/net/INetd;->idletimerAddInterface(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_32} :catch_53
    .catch Landroid/os/ServiceSpecificException; {:try_start_29 .. :try_end_32} :catch_53
    .catchall {:try_start_29 .. :try_end_32} :catchall_5a

    .line 1291
    nop

    .line 1292
    :try_start_33
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    new-instance v3, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    invoke-direct {v3, p2, p3}, Lcom/android/server/NetworkManagementService$IdleTimerParams;-><init>(II)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    invoke-static {p3}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 1296
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z

    .line 1298
    :cond_46
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/-$$Lambda$NetworkManagementService$YKgmK-4MuJjN-VLuMBhmJy1eWj4;

    invoke-direct {v3, p0, p3}, Lcom/android/server/-$$Lambda$NetworkManagementService$YKgmK-4MuJjN-VLuMBhmJy1eWj4;-><init>(Lcom/android/server/NetworkManagementService;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1300
    nop

    .end local v1  # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    monitor-exit v0

    .line 1301
    return-void

    .line 1289
    .restart local v1  # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    :catch_53
    move-exception v2

    .line 1290
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local p0  # "this":Lcom/android/server/NetworkManagementService;
    .end local p1  # "iface":Ljava/lang/String;
    .end local p2  # "timeout":I
    .end local p3  # "type":I
    throw v3

    .line 1300
    .end local v1  # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    .end local v2  # "e":Ljava/lang/Exception;
    .restart local p0  # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1  # "iface":Ljava/lang/String;
    .restart local p2  # "timeout":I
    .restart local p3  # "type":I
    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_33 .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method public addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V
    .registers 8
    .param p1, "iface"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;)V"
        }
    .end annotation

    .line 2380
    .local p2, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    const/16 v0, 0x63

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/NetworkManagementService;->modifyInterfaceInNetwork(ZILjava/lang/String;)V

    .line 2382
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .line 2383
    .local v3, "route":Landroid/net/RouteInfo;
    invoke-virtual {v3}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 2384
    invoke-direct {p0, v1, v0, v3}, Lcom/android/server/NetworkManagementService;->modifyRoute(ZILandroid/net/RouteInfo;)V

    .line 2386
    .end local v3  # "route":Landroid/net/RouteInfo;
    :cond_1f
    goto :goto_a

    .line 2389
    :cond_20
    new-instance v2, Landroid/net/RouteInfo;

    new-instance v3, Landroid/net/IpPrefix;

    const-string v4, "fe80::/64"

    invoke-direct {v3, v4}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, p1}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/NetworkManagementService;->modifyRoute(ZILandroid/net/RouteInfo;)V

    .line 2391
    return-void
.end method

.method public addInterfaceToNetwork(Ljava/lang/String;I)V
    .registers 4
    .param p1, "iface"  # Ljava/lang/String;
    .param p2, "netId"  # I

    .line 2167
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2, p1}, Lcom/android/server/NetworkManagementService;->modifyInterfaceInNetwork(ZILjava/lang/String;)V

    .line 2168
    return-void
.end method

.method public addLegacyRouteForNetId(ILandroid/net/RouteInfo;I)V
    .registers 14
    .param p1, "netId"  # I
    .param p2, "routeInfo"  # Landroid/net/RouteInfo;
    .param p3, "uid"  # I

    .line 2190
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2192
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getDestinationLinkAddress()Landroid/net/LinkAddress;

    move-result-object v0

    .line 2193
    .local v0, "la":Landroid/net/LinkAddress;
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v7

    .line 2194
    .local v7, "ifName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2197
    .local v8, "dst":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 2198
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    .local v1, "nextHop":Ljava/lang/String;
    goto :goto_28

    .line 2200
    .end local v1  # "nextHop":Ljava/lang/String;
    :cond_25
    const-string v1, ""

    move-object v9, v1

    .line 2203
    .local v9, "nextHop":Ljava/lang/String;
    :goto_28
    :try_start_28
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    move v2, p1

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    move v6, p3

    invoke-interface/range {v1 .. v6}, Landroid/net/INetd;->networkAddLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_32} :catch_34
    .catch Landroid/os/ServiceSpecificException; {:try_start_28 .. :try_end_32} :catch_34

    .line 2206
    nop

    .line 2207
    return-void

    .line 2204
    :catch_34
    move-exception v1

    .line 2205
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public addRoute(ILandroid/net/RouteInfo;)V
    .registers 4
    .param p1, "netId"  # I
    .param p2, "route"  # Landroid/net/RouteInfo;

    .line 1009
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyRoute(ZILandroid/net/RouteInfo;)V

    .line 1010
    return-void
.end method

.method public addVpnUidRanges(I[Landroid/net/UidRange;)V
    .registers 6
    .param p1, "netId"  # I
    .param p2, "ranges"  # [Landroid/net/UidRange;

    .line 1731
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-static {p2}, Lcom/android/server/NetworkManagementService;->toStableParcels([Landroid/net/UidRange;)[Landroid/net/UidRangeParcel;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/INetd;->networkAddUidRanges(I[Landroid/net/UidRangeParcel;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_14
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_12} :catch_14

    .line 1737
    nop

    .line 1738
    return-void

    .line 1735
    :catch_14
    move-exception v0

    .line 1736
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public allowProtect(I)V
    .registers 5
    .param p1, "uid"  # I

    .line 2244
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2247
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1}, Landroid/net/INetd;->networkSetProtectAllow(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_e} :catch_10

    .line 2250
    nop

    .line 2251
    return-void

    .line 2248
    :catch_10
    move-exception v0

    .line 2249
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public clearDefaultNetId()V
    .registers 4

    .line 2222
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2225
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0}, Landroid/net/INetd;->networkClearDefault()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_e} :catch_10

    .line 2228
    nop

    .line 2229
    return-void

    .line 2226
    :catch_10
    move-exception v0

    .line 2227
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public clearInterfaceAddresses(Ljava/lang/String;)V
    .registers 5
    .param p1, "iface"  # Ljava/lang/String;

    .line 970
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1}, Landroid/net/INetd;->interfaceClearAddrs(Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_e} :catch_10

    .line 975
    nop

    .line 976
    return-void

    .line 973
    :catch_10
    move-exception v0

    .line 974
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public deleteVpnProfile(Ljava/lang/String;)Z
    .registers 7
    .param p1, "key"  # Ljava/lang/String;

    .line 2483
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/MzVpnKeyStore;->getInstance(Landroid/content/Context;)Lcom/android/server/MzVpnKeyStore;

    move-result-object v0

    .line 2484
    .local v0, "vpnKeyStore":Lcom/android/server/MzVpnKeyStore;
    if-nez v0, :cond_a

    .line 2485
    const/4 v1, 0x0

    return v1

    .line 2488
    :cond_a
    invoke-virtual {v0, p1}, Lcom/android/server/MzVpnKeyStore;->delete(Ljava/lang/String;)Z

    move-result v1

    .line 2489
    .local v1, "ret":Z
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "meizu.intent.action.VPN_PROFILE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2490
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "action"

    const-string v4, "delete"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2491
    const-string/jumbo v3, "key"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2492
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2493
    return v1
.end method

.method public denyProtect(I)V
    .registers 5
    .param p1, "uid"  # I

    .line 2255
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2258
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1}, Landroid/net/INetd;->networkSetProtectDeny(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_e} :catch_10

    .line 2261
    nop

    .line 2262
    return-void

    .line 2259
    :catch_10
    move-exception v0

    .line 2260
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public disableIpv6(Ljava/lang/String;)V
    .registers 5
    .param p1, "iface"  # Ljava/lang/String;

    .line 999
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/net/INetd;->interfaceSetEnableIPv6(Ljava/lang/String;Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_f} :catch_11

    .line 1004
    nop

    .line 1005
    return-void

    .line 1002
    :catch_11
    move-exception v0

    .line 1003
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public disableNat(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "internalInterface"  # Ljava/lang/String;
    .param p2, "externalInterface"  # Ljava/lang/String;

    .line 1265
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1, p2}, Landroid/net/INetd;->tetherRemoveForward(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_e} :catch_10

    .line 1270
    nop

    .line 1271
    return-void

    .line 1268
    :catch_10
    move-exception v0

    .line 1269
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 2082
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "NetworkManagement"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 2084
    :cond_b
    const-string/jumbo v0, "mMobileActivityFromRadio="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2085
    const-string v0, " mLastPowerStateFromRadio="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2086
    const-string/jumbo v0, "mNetworkActive="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2088
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2089
    :try_start_2e
    const-string v1, "Active quota ifaces: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2090
    const-string v1, "Active alert ifaces: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2091
    const-string v1, "Data saver mode: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2092
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_57
    .catchall {:try_start_2e .. :try_end_57} :catchall_14d

    .line 2093
    :try_start_57
    const-string v2, "blacklist"

    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/NetworkManagementService;->dumpUidRuleOnQuotaLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseBooleanArray;)V

    .line 2094
    const-string/jumbo v2, "whitelist"

    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/NetworkManagementService;->dumpUidRuleOnQuotaLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseBooleanArray;)V

    .line 2095
    monitor-exit v1
    :try_end_67
    .catchall {:try_start_57 .. :try_end_67} :catchall_14a

    .line 2096
    :try_start_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_14d

    .line 2098
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2099
    :try_start_6b
    const-string v0, ""

    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, p2, v0, v2}, Lcom/android/server/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 2101
    const-string v0, "UID firewall standby chain enabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 2102
    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v0

    .line 2101
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2103
    const-string/jumbo v0, "standby"

    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, p2, v0, v2}, Lcom/android/server/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 2105
    const-string v0, "UID firewall dozable chain enabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2106
    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v0

    .line 2105
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2107
    const-string v0, "dozable"

    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, p2, v0, v2}, Lcom/android/server/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 2109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UID firewall powersave chain enabled: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    .line 2110
    invoke-direct {p0, v2}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2109
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2111
    const-string/jumbo v0, "powersave"

    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, p2, v0, v2}, Lcom/android/server/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 2112
    monitor-exit v1
    :try_end_bd
    .catchall {:try_start_6b .. :try_end_bd} :catchall_147

    .line 2114
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2115
    :try_start_c0
    const-string v1, "Idle timers:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2116
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_cf
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_113

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2117
    .local v2, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/NetworkManagementService$IdleTimerParams;>;"
    const-string v3, "  "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2118
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    .line 2119
    .local v3, "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    const-string v4, "    timeout="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/NetworkManagementService$IdleTimerParams;->timeout:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2120
    const-string v4, " type="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/NetworkManagementService$IdleTimerParams;->type:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2121
    const-string v4, " networkCount="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 2122
    .end local v2  # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/NetworkManagementService$IdleTimerParams;>;"
    .end local v3  # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    goto :goto_cf

    .line 2123
    :cond_113
    monitor-exit v0
    :try_end_114
    .catchall {:try_start_c0 .. :try_end_114} :catchall_144

    .line 2125
    const-string v0, "Firewall enabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2126
    const-string v0, "Netd service status: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2127
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    if-nez v0, :cond_12d

    .line 2128
    const-string v0, "disconnected"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_143

    .line 2131
    :cond_12d
    :try_start_12d
    invoke-interface {v0}, Landroid/net/INetd;->isAlive()Z

    move-result v0

    .line 2132
    .local v0, "alive":Z
    if-eqz v0, :cond_136

    const-string v1, "alive"

    goto :goto_138

    :cond_136
    const-string v1, "dead"

    :goto_138
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_13b
    .catch Landroid/os/RemoteException; {:try_start_12d .. :try_end_13b} :catch_13c

    .line 2135
    .end local v0  # "alive":Z
    goto :goto_143

    .line 2133
    :catch_13c
    move-exception v0

    .line 2134
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "unreachable"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2137
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_143
    return-void

    .line 2123
    :catchall_144
    move-exception v1

    :try_start_145
    monitor-exit v0
    :try_end_146
    .catchall {:try_start_145 .. :try_end_146} :catchall_144

    throw v1

    .line 2112
    :catchall_147
    move-exception v0

    :try_start_148
    monitor-exit v1
    :try_end_149
    .catchall {:try_start_148 .. :try_end_149} :catchall_147

    throw v0

    .line 2095
    :catchall_14a
    move-exception v2

    :try_start_14b
    monitor-exit v1
    :try_end_14c
    .catchall {:try_start_14b .. :try_end_14c} :catchall_14a

    .end local p0  # "this":Lcom/android/server/NetworkManagementService;
    .end local p1  # "fd":Ljava/io/FileDescriptor;
    .end local p2  # "pw":Ljava/io/PrintWriter;
    .end local p3  # "args":[Ljava/lang/String;
    :try_start_14c
    throw v2

    .line 2096
    .restart local p0  # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1  # "fd":Ljava/io/FileDescriptor;
    .restart local p2  # "pw":Ljava/io/PrintWriter;
    .restart local p3  # "args":[Ljava/lang/String;
    :catchall_14d
    move-exception v1

    monitor-exit v0
    :try_end_14f
    .catchall {:try_start_14c .. :try_end_14f} :catchall_14d

    throw v1
.end method

.method public enableIpv6(Ljava/lang/String;)V
    .registers 5
    .param p1, "iface"  # Ljava/lang/String;

    .line 980
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/net/INetd;->interfaceSetEnableIPv6(Ljava/lang/String;Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_f} :catch_11

    .line 985
    nop

    .line 986
    return-void

    .line 983
    :catch_11
    move-exception v0

    .line 984
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public enableNat(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "internalInterface"  # Ljava/lang/String;
    .param p2, "externalInterface"  # Ljava/lang/String;

    .line 1255
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1, p2}, Landroid/net/INetd;->tetherAddForward(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_e} :catch_10

    .line 1260
    nop

    .line 1261
    return-void

    .line 1258
    :catch_10
    move-exception v0

    .line 1259
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public enableQuickAppRulse(ZI)Z
    .registers 6
    .param p1, "enable"  # Z
    .param p2, "port"  # I

    .line 2338
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "NetworkManagement"

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableQuickAppRulse: , enable = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mQuickAppEnabled:Z

    if-ne v0, p1, :cond_28

    .line 2341
    const-string v0, "enableQuickAppRulse: already set"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2342
    const/4 v0, 0x0

    return v0

    .line 2344
    :cond_28
    const/16 v0, 0x400

    if-le p2, v0, :cond_31

    const v0, 0xffff

    if-lt p2, v0, :cond_46

    .line 2345
    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "port is not right: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    :cond_46
    :try_start_46
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Landroid/net/IOemNetd;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/IOemNetd;->enableQuickAppRulse(ZLjava/lang/String;)Z

    .line 2349
    iput-boolean p1, p0, Lcom/android/server/NetworkManagementService;->mQuickAppEnabled:Z
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_51} :catch_54
    .catch Landroid/os/ServiceSpecificException; {:try_start_46 .. :try_end_51} :catch_54

    .line 2352
    nop

    .line 2353
    const/4 v0, 0x1

    return v0

    .line 2350
    :catch_54
    move-exception v0

    .line 2351
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAllVpnKeys()[Ljava/lang/String;
    .registers 5

    .line 2452
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/MzVpnKeyStore;->getInstance(Landroid/content/Context;)Lcom/android/server/MzVpnKeyStore;

    move-result-object v0

    .line 2453
    .local v0, "vpnKeyStore":Lcom/android/server/MzVpnKeyStore;
    const/4 v1, 0x0

    .line 2454
    .local v1, "result":[Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 2455
    invoke-virtual {v0}, Lcom/android/server/MzVpnKeyStore;->getAllKeys()[Ljava/lang/String;

    move-result-object v1

    .line 2457
    :cond_d
    const-string v2, "NetworkManagement"

    const-string v3, "getAllVpnKeys"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2458
    return-object v1
.end method

.method public getDhcpLeases()[Ljava/lang/String;
    .registers 9

    .line 2419
    const-string v0, "IOException:"

    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "NetworkManagement"

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2421
    const/4 v1, 0x0

    .line 2422
    .local v1, "fstream":Ljava/io/FileInputStream;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2424
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_11
    new-instance v4, Ljava/io/FileInputStream;

    const-string v5, "/data/misc/dhcp/dhcp.leases"

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 2425
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2426
    .local v4, "in":Ljava/io/DataInputStream;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2429
    .local v5, "br":Ljava/io/BufferedReader;
    :goto_28
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .local v7, "s":Ljava/lang/String;
    if-eqz v6, :cond_39

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_39

    .line 2430
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_38} :catch_54
    .catchall {:try_start_11 .. :try_end_38} :catchall_52

    goto :goto_28

    .line 2436
    .end local v4  # "in":Ljava/io/DataInputStream;
    .end local v5  # "br":Ljava/io/BufferedReader;
    .end local v7  # "s":Ljava/lang/String;
    :cond_39
    nop

    .line 2438
    :try_start_3a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e

    .line 2441
    :goto_3d
    goto :goto_75

    .line 2439
    :catch_3e
    move-exception v4

    .line 2440
    .local v4, "ex":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_44
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4  # "ex":Ljava/io/IOException;
    goto :goto_3d

    .line 2436
    :catchall_52
    move-exception v4

    goto :goto_7f

    .line 2432
    :catch_54
    move-exception v4

    .line 2434
    .restart local v4  # "ex":Ljava/io/IOException;
    :try_start_55
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_55 .. :try_end_67} :catchall_52

    .line 2436
    nop

    .end local v4  # "ex":Ljava/io/IOException;
    if-eqz v1, :cond_75

    .line 2438
    :try_start_6a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_3d

    .line 2439
    :catch_6e
    move-exception v4

    .line 2440
    .restart local v4  # "ex":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_44

    .line 2444
    .end local v4  # "ex":Ljava/io/IOException;
    :cond_75
    :goto_75
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2445
    .local v0, "ret":[Ljava/lang/String;
    return-object v0

    .line 2436
    .end local v0  # "ret":[Ljava/lang/String;
    :goto_7f
    if-eqz v1, :cond_98

    .line 2438
    :try_start_81
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_85

    .line 2441
    goto :goto_98

    .line 2439
    :catch_85
    move-exception v5

    .line 2440
    .local v5, "ex":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    .end local v5  # "ex":Ljava/io/IOException;
    :cond_98
    :goto_98
    throw v4
.end method

.method public getDnsForwarders()[Ljava/lang/String;
    .registers 4

    .line 1212
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0}, Landroid/net/INetd;->tetherDnsList()[Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_f} :catch_10

    return-object v0

    .line 1215
    :catch_10
    move-exception v0

    .line 1216
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getHostNames()[Ljava/lang/String;
    .registers 4

    .line 2274
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "NetworkManagement"

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2275
    const-string v0, "getHostNames"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    :try_start_e
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Landroid/net/IOemNetd;

    invoke-interface {v0}, Landroid/net/IOemNetd;->getHostNames()[Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_15
    .catch Landroid/os/ServiceSpecificException; {:try_start_e .. :try_end_14} :catch_15

    return-object v0

    .line 2278
    :catch_15
    move-exception v0

    .line 2279
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method getInjector()Lcom/android/server/NetworkManagementService$Injector;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2674
    new-instance v0, Lcom/android/server/NetworkManagementService$Injector;

    invoke-direct {v0, p0}, Lcom/android/server/NetworkManagementService$Injector;-><init>(Lcom/android/server/NetworkManagementService;)V

    return-object v0
.end method

.method public getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;
    .registers 6
    .param p1, "iface"  # Ljava/lang/String;

    .line 907
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1}, Landroid/net/INetd;->interfaceGetCfg(Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_1e
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_f} :catch_1e

    .line 913
    .local v0, "result":Landroid/net/InterfaceConfigurationParcel;
    nop

    .line 916
    :try_start_10
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->fromStableParcel(Landroid/net/InterfaceConfigurationParcel;)Landroid/net/InterfaceConfiguration;

    move-result-object v1
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_14} :catch_15

    .line 917
    .local v1, "cfg":Landroid/net/InterfaceConfiguration;
    return-object v1

    .line 918
    .end local v1  # "cfg":Landroid/net/InterfaceConfiguration;
    :catch_15
    move-exception v1

    .line 919
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid InterfaceConfigurationParcel"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 911
    .end local v0  # "result":Landroid/net/InterfaceConfigurationParcel;
    .end local v1  # "iae":Ljava/lang/IllegalArgumentException;
    :catch_1e
    move-exception v0

    .line 912
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getIpForwardingEnabled()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1102
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0}, Landroid/net/INetd;->ipfwdEnabled()Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_f} :catch_10

    .line 1106
    .local v0, "isEnabled":Z
    return v0

    .line 1107
    .end local v0  # "isEnabled":Z
    :catch_10
    move-exception v0

    .line 1108
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getIptableRules(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p1, "table"  # Ljava/lang/String;
    .param p2, "chain"  # Ljava/lang/String;

    .line 2364
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "NetworkManagement"

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIptableRules  table "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " chain "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    :try_start_25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 2368
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Landroid/net/IOemNetd;

    invoke-interface {v0, p1, p2}, Landroid/net/IOemNetd;->getIptableRules(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2370
    :cond_38
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Landroid/net/IOemNetd;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Landroid/net/IOemNetd;->getIptableRules(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_3f} :catch_40
    .catch Landroid/os/ServiceSpecificException; {:try_start_25 .. :try_end_3f} :catch_40

    return-object v0

    .line 2372
    :catch_40
    move-exception v0

    .line 2373
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNetworkStatsDetail()Landroid/net/NetworkStats;
    .registers 4

    .line 1349
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/server/net/NetworkStatsFactory;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1, v2, v1}, Lcom/android/server/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_12

    return-object v0

    .line 1352
    :catch_12
    move-exception v0

    .line 1353
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNetworkStatsSummaryDev()Landroid/net/NetworkStats;
    .registers 4

    .line 1329
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/server/net/NetworkStatsFactory;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsFactory;->readNetworkStatsSummaryDev()Landroid/net/NetworkStats;

    move-result-object v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_f} :catch_10

    return-object v0

    .line 1332
    :catch_10
    move-exception v0

    .line 1333
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNetworkStatsSummaryXt()Landroid/net/NetworkStats;
    .registers 4

    .line 1339
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/server/net/NetworkStatsFactory;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsFactory;->readNetworkStatsSummaryXt()Landroid/net/NetworkStats;

    move-result-object v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_f} :catch_10

    return-object v0

    .line 1342
    :catch_10
    move-exception v0

    .line 1343
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNetworkStatsTethering(I)Landroid/net/NetworkStats;
    .registers 10
    .param p1, "how"  # I

    .line 1713
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    new-instance v0, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 1716
    .local v0, "stats":Landroid/net/NetworkStats;
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter v1

    .line 1717
    :try_start_16
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ITetheringStatsProvider;
    :try_end_2c
    .catchall {:try_start_16 .. :try_end_2c} :catchall_5e

    .line 1719
    .local v3, "provider":Landroid/net/ITetheringStatsProvider;
    :try_start_2c
    invoke-interface {v3, p1}, Landroid/net/ITetheringStatsProvider;->getTetherStats(I)Landroid/net/NetworkStats;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_33} :catch_34
    .catchall {:try_start_2c .. :try_end_33} :catchall_5e

    .line 1723
    goto :goto_5b

    .line 1720
    :catch_34
    move-exception v4

    .line 1721
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_35
    const-string v5, "NetworkManagement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem reading tethering stats from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    .line 1722
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1721
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    .end local v3  # "provider":Landroid/net/ITetheringStatsProvider;
    .end local v4  # "e":Landroid/os/RemoteException;
    :goto_5b
    goto :goto_20

    .line 1725
    :cond_5c
    monitor-exit v1

    .line 1726
    return-object v0

    .line 1725
    :catchall_5e
    move-exception v2

    monitor-exit v1
    :try_end_60
    .catchall {:try_start_35 .. :try_end_60} :catchall_5e

    throw v2
.end method

.method public getNetworkStatsUidDetail(I[Ljava/lang/String;)Landroid/net/NetworkStats;
    .registers 6
    .param p1, "uid"  # I
    .param p2, "ifaces"  # [Ljava/lang/String;

    .line 1658
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/server/net/NetworkStatsFactory;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_12

    return-object v0

    .line 1661
    :catch_12
    move-exception v0

    .line 1662
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getVpnProfile(Ljava/lang/String;Z)[B
    .registers 5
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "passwordIncluded"  # Z

    .line 2473
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/MzVpnKeyStore;->getInstance(Landroid/content/Context;)Lcom/android/server/MzVpnKeyStore;

    move-result-object v0

    .line 2474
    .local v0, "vpnKeyStore":Lcom/android/server/MzVpnKeyStore;
    if-nez v0, :cond_a

    .line 2475
    const/4 v1, 0x0

    return-object v1

    .line 2477
    :cond_a
    invoke-virtual {v0, p1, p2}, Lcom/android/server/MzVpnKeyStore;->get(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public getVpnProfileDefaultKey()Ljava/lang/String;
    .registers 3

    .line 2523
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/MzVpnKeyStore;->getInstance(Landroid/content/Context;)Lcom/android/server/MzVpnKeyStore;

    move-result-object v0

    .line 2524
    .local v0, "vpnKeyStore":Lcom/android/server/MzVpnKeyStore;
    if-nez v0, :cond_a

    .line 2525
    const/4 v1, 0x0

    return-object v1

    .line 2528
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/MzVpnKeyStore;->getDefaultKey()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getVpnProfileVersion(Ljava/lang/String;)I
    .registers 4
    .param p1, "key"  # Ljava/lang/String;

    .line 2498
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/MzVpnKeyStore;->getInstance(Landroid/content/Context;)Lcom/android/server/MzVpnKeyStore;

    move-result-object v0

    .line 2499
    .local v0, "vpnKeyStore":Lcom/android/server/MzVpnKeyStore;
    if-nez v0, :cond_a

    .line 2500
    const/4 v1, 0x0

    return v1

    .line 2502
    :cond_a
    invoke-virtual {v0, p1}, Lcom/android/server/MzVpnKeyStore;->getVersion(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public isBandwidthControlEnabled()Z
    .registers 4

    .line 1652
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    const/4 v0, 0x1

    return v0
.end method

.method public isFirewallEnabled()Z
    .registers 2

    .line 1764
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 1765
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    return v0
.end method

.method public isNetworkActive()Z
    .registers 3

    .line 2061
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 2062
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_12

    :cond_10
    const/4 v1, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v1, 0x1

    :goto_13
    monitor-exit v0

    return v1

    .line 2063
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public isNetworkRestricted(I)Z
    .registers 5
    .param p1, "uid"  # I

    .line 2618
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2619
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->isNetworkRestrictedInternal(I)Z

    move-result v0

    return v0
.end method

.method public isTetheringStarted()Z
    .registers 4

    .line 1150
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0}, Landroid/net/INetd;->tetherIsEnabled()Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_f} :catch_10

    .line 1154
    .local v0, "isEnabled":Z
    return v0

    .line 1155
    .end local v0  # "isEnabled":Z
    :catch_10
    move-exception v0

    .line 1156
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public synthetic lambda$addIdleTimer$12$NetworkManagementService(I)V
    .registers 9
    .param p1, "type"  # I

    .line 1298
    nop

    .line 1299
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    .line 1298
    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/NetworkManagementService;->notifyInterfaceClassActivity(IZJIZ)V

    return-void
.end method

.method public synthetic lambda$removeIdleTimer$13$NetworkManagementService(Lcom/android/server/NetworkManagementService$IdleTimerParams;)V
    .registers 9
    .param p1, "params"  # Lcom/android/server/NetworkManagementService$IdleTimerParams;

    .line 1322
    iget v1, p1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->type:I

    .line 1323
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    .line 1322
    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/NetworkManagementService;->notifyInterfaceClassActivity(IZJIZ)V

    return-void
.end method

.method public synthetic lambda$tetherLimitReached$6$NetworkManagementService()V
    .registers 3

    .line 557
    const-string v0, "globalAlert"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/NetworkManagementService;->notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public listInterfaces()[Ljava/lang/String;
    .registers 4

    .line 857
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0}, Landroid/net/INetd;->interfaceGetList()[Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_f} :catch_10

    return-object v0

    .line 860
    :catch_10
    move-exception v0

    .line 861
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public listTetheredInterfaces()[Ljava/lang/String;
    .registers 4

    .line 1189
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0}, Landroid/net/INetd;->tetherInterfaceList()[Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_f} :catch_10

    return-object v0

    .line 1192
    :catch_10
    move-exception v0

    .line 1193
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public notifyAppNetworkPolicyRequested(I)I
    .registers 3
    .param p1, "uid"  # I

    .line 529
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->onAppNetworkPolicyRequired(I)I

    move-result v0

    return v0
.end method

.method public notifySmartNetworkPolicyEnabled(Z)V
    .registers 4
    .param p1, "enable"  # Z

    .line 2587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSmartNetworkPolicyEnable : enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkManagement"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    :try_start_17
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Landroid/net/IOemNetd;

    invoke-interface {v0, p1}, Landroid/net/IOemNetd;->notifySmartNetworkPolicyEnabled(Z)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1c} :catch_1e
    .catch Landroid/os/ServiceSpecificException; {:try_start_17 .. :try_end_1c} :catch_1e

    .line 2592
    nop

    .line 2593
    return-void

    .line 2590
    :catch_1e
    move-exception v0

    .line 2591
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public putVpnProfile(Ljava/lang/String;[B)V
    .registers 6
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "value"  # [B

    .line 2463
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/MzVpnKeyStore;->getInstance(Landroid/content/Context;)Lcom/android/server/MzVpnKeyStore;

    move-result-object v0

    .line 2464
    .local v0, "vpnKeyStore":Lcom/android/server/MzVpnKeyStore;
    if-nez v0, :cond_9

    .line 2465
    return-void

    .line 2467
    :cond_9
    const-string v1, "NetworkManagement"

    const-string/jumbo v2, "putVpnProfile"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    invoke-virtual {v0, p1, p2}, Lcom/android/server/MzVpnKeyStore;->put(Ljava/lang/String;[B)V

    .line 2469
    return-void
.end method

.method public registerNetworkActivityListener(Landroid/os/INetworkActivityListener;)V
    .registers 3
    .param p1, "listener"  # Landroid/os/INetworkActivityListener;

    .line 2051
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2052
    return-void
.end method

.method public registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    .registers 5
    .param p1, "observer"  # Landroid/net/INetworkManagementEventObserver;

    .line 356
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 358
    return-void
.end method

.method public registerOemObserver(Landroid/net/IOemNetworkManagementEventObserver;)V
    .registers 5
    .param p1, "observer"  # Landroid/net/IOemNetworkManagementEventObserver;

    .line 369
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mOemObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 371
    return-void
.end method

.method public registerTetheringStatsProvider(Landroid/net/ITetheringStatsProvider;Ljava/lang/String;)V
    .registers 6
    .param p1, "provider"  # Landroid/net/ITetheringStatsProvider;
    .param p2, "name"  # Ljava/lang/String;

    .line 534
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_STACK"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter v0

    .line 537
    :try_start_f
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    monitor-exit v0

    .line 539
    return-void

    .line 538
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_16

    throw v1
.end method

.method public removeIdleTimer(Ljava/lang/String;)V
    .registers 7
    .param p1, "iface"  # Ljava/lang/String;

    .line 1305
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    sget-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_14

    const-string v0, "NetworkManagement"

    const-string v1, "Removing idletimer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    :cond_14
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1310
    :try_start_17
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    .line 1311
    .local v1, "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    if-eqz v1, :cond_51

    iget v2, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_53

    if-lez v2, :cond_2a

    goto :goto_51

    .line 1316
    :cond_2a
    :try_start_2a
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    iget v3, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->timeout:I

    iget v4, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->type:I

    .line 1317
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1316
    invoke-interface {v2, p1, v3, v4}, Landroid/net/INetd;->idletimerRemoveInterface(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_37} :catch_4a
    .catch Landroid/os/ServiceSpecificException; {:try_start_2a .. :try_end_37} :catch_4a
    .catchall {:try_start_2a .. :try_end_37} :catchall_53

    .line 1320
    nop

    .line 1321
    :try_start_38
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1322
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/-$$Lambda$NetworkManagementService$15DusjG2gzn5UASV-lMS3BUUn9c;

    invoke-direct {v3, p0, v1}, Lcom/android/server/-$$Lambda$NetworkManagementService$15DusjG2gzn5UASV-lMS3BUUn9c;-><init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$IdleTimerParams;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1324
    nop

    .end local v1  # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    monitor-exit v0

    .line 1325
    return-void

    .line 1318
    .restart local v1  # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    :catch_4a
    move-exception v2

    .line 1319
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local p0  # "this":Lcom/android/server/NetworkManagementService;
    .end local p1  # "iface":Ljava/lang/String;
    throw v3

    .line 1312
    .end local v2  # "e":Ljava/lang/Exception;
    .restart local p0  # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1  # "iface":Ljava/lang/String;
    :cond_51
    :goto_51
    monitor-exit v0

    return-void

    .line 1324
    .end local v1  # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    :catchall_53
    move-exception v1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_38 .. :try_end_55} :catchall_53

    throw v1
.end method

.method public removeInterfaceAlert(Ljava/lang/String;)V
    .registers 5
    .param p1, "iface"  # Ljava/lang/String;

    .line 1447
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1450
    :try_start_c
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 1452
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_2a

    return-void

    .line 1457
    :cond_16
    :try_start_16
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1}, Landroid/net/INetd;->bandwidthRemoveInterfaceAlert(Ljava/lang/String;)V

    .line 1458
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_20} :catch_23
    .catch Landroid/os/ServiceSpecificException; {:try_start_16 .. :try_end_20} :catch_23
    .catchall {:try_start_16 .. :try_end_20} :catchall_2a

    .line 1461
    nop

    .line 1462
    :try_start_21
    monitor-exit v0

    .line 1463
    return-void

    .line 1459
    :catch_23
    move-exception v1

    .line 1460
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local p0  # "this":Lcom/android/server/NetworkManagementService;
    .end local p1  # "iface":Ljava/lang/String;
    throw v2

    .line 1462
    .end local v1  # "e":Ljava/lang/Exception;
    .restart local p0  # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1  # "iface":Ljava/lang/String;
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public removeInterfaceFromLocalNetwork(Ljava/lang/String;)V
    .registers 4
    .param p1, "iface"  # Ljava/lang/String;

    .line 2598
    const/4 v0, 0x0

    const/16 v1, 0x63

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/NetworkManagementService;->modifyInterfaceInNetwork(ZILjava/lang/String;)V

    .line 2599
    return-void
.end method

.method public removeInterfaceFromNetwork(Ljava/lang/String;I)V
    .registers 4
    .param p1, "iface"  # Ljava/lang/String;
    .param p2, "netId"  # I

    .line 2172
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p1}, Lcom/android/server/NetworkManagementService;->modifyInterfaceInNetwork(ZILjava/lang/String;)V

    .line 2173
    return-void
.end method

.method public removeInterfaceQuota(Ljava/lang/String;)V
    .registers 10
    .param p1, "iface"  # Ljava/lang/String;

    .line 1390
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1393
    :try_start_c
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 1395
    monitor-exit v0

    return-void

    .line 1398
    :cond_16
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_7a

    .line 1403
    :try_start_20
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1}, Landroid/net/INetd;->bandwidthRemoveInterfaceQuota(Ljava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_73
    .catch Landroid/os/ServiceSpecificException; {:try_start_20 .. :try_end_25} :catch_73
    .catchall {:try_start_20 .. :try_end_25} :catchall_7a

    .line 1406
    nop

    .line 1408
    :try_start_26
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_7a

    .line 1409
    :try_start_29
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ITetheringStatsProvider;
    :try_end_3f
    .catchall {:try_start_29 .. :try_end_3f} :catchall_70

    .line 1411
    .local v3, "provider":Landroid/net/ITetheringStatsProvider;
    const-wide/16 v4, -0x1

    :try_start_41
    invoke-interface {v3, p1, v4, v5}, Landroid/net/ITetheringStatsProvider;->setInterfaceQuota(Ljava/lang/String;J)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_44} :catch_45
    .catchall {:try_start_41 .. :try_end_44} :catchall_70

    .line 1415
    goto :goto_6c

    .line 1412
    :catch_45
    move-exception v4

    .line 1413
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_46
    const-string v5, "NetworkManagement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem removing tethering data limit on provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    .line 1414
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1413
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    .end local v3  # "provider":Landroid/net/ITetheringStatsProvider;
    .end local v4  # "e":Landroid/os/RemoteException;
    :goto_6c
    goto :goto_33

    .line 1417
    :cond_6d
    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_46 .. :try_end_6e} :catchall_70

    .line 1418
    :try_start_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_7a

    .line 1419
    return-void

    .line 1417
    :catchall_70
    move-exception v2

    :try_start_71
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    .end local p0  # "this":Lcom/android/server/NetworkManagementService;
    .end local p1  # "iface":Ljava/lang/String;
    :try_start_72
    throw v2

    .line 1404
    .restart local p0  # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1  # "iface":Ljava/lang/String;
    :catch_73
    move-exception v1

    .line 1405
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local p0  # "this":Lcom/android/server/NetworkManagementService;
    .end local p1  # "iface":Ljava/lang/String;
    throw v2

    .line 1418
    .end local v1  # "e":Ljava/lang/Exception;
    .restart local p0  # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1  # "iface":Ljava/lang/String;
    :catchall_7a
    move-exception v1

    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_72 .. :try_end_7c} :catchall_7a

    throw v1
.end method

.method public removeRoute(ILandroid/net/RouteInfo;)V
    .registers 4
    .param p1, "netId"  # I
    .param p2, "route"  # Landroid/net/RouteInfo;

    .line 1014
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyRoute(ZILandroid/net/RouteInfo;)V

    .line 1015
    return-void
.end method

.method public removeRoutesFromLocalNetwork(Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;)I"
        }
    .end annotation

    .line 2603
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    const/4 v0, 0x0

    .line 2605
    .local v0, "failures":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 2607
    .local v2, "route":Landroid/net/RouteInfo;
    const/4 v3, 0x0

    const/16 v4, 0x63

    :try_start_14
    invoke-direct {p0, v3, v4, v2}, Lcom/android/server/NetworkManagementService;->modifyRoute(ZILandroid/net/RouteInfo;)V
    :try_end_17
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_17} :catch_18

    .line 2610
    goto :goto_1b

    .line 2608
    :catch_18
    move-exception v3

    .line 2609
    .local v3, "e":Ljava/lang/IllegalStateException;
    add-int/lit8 v0, v0, 0x1

    .line 2611
    .end local v2  # "route":Landroid/net/RouteInfo;
    .end local v3  # "e":Ljava/lang/IllegalStateException;
    :goto_1b
    goto :goto_5

    .line 2613
    :cond_1c
    return v0
.end method

.method public removeVpnUidRanges(I[Landroid/net/UidRange;)V
    .registers 6
    .param p1, "netId"  # I
    .param p2, "ranges"  # [Landroid/net/UidRange;

    .line 1742
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1744
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-static {p2}, Lcom/android/server/NetworkManagementService;->toStableParcels([Landroid/net/UidRange;)[Landroid/net/UidRangeParcel;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/INetd;->networkRemoveUidRanges(I[Landroid/net/UidRangeParcel;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_14
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_12} :catch_14

    .line 1747
    nop

    .line 1748
    return-void

    .line 1745
    :catch_14
    move-exception v0

    .line 1746
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public resetHosts()V
    .registers 4

    .line 2315
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "NetworkManagement"

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2316
    const-string/jumbo v0, "resetHosts"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    :try_start_f
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Landroid/net/IOemNetd;

    invoke-interface {v0}, Landroid/net/IOemNetd;->resetHosts()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_16
    .catch Landroid/os/ServiceSpecificException; {:try_start_f .. :try_end_14} :catch_16

    .line 2321
    nop

    .line 2323
    return-void

    .line 2319
    :catch_16
    move-exception v0

    .line 2320
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public runIpCounterCommand([Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p1, "arguments"  # [Ljava/lang/String;

    .line 2402
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2403
    if-eqz p1, :cond_1c

    array-length v0, p1

    if-eqz v0, :cond_1c

    .line 2408
    :try_start_e
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Landroid/net/IOemNetd;

    invoke-interface {v0, p1}, Landroid/net/IOemNetd;->runIpCounterCommand([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_15
    .catch Landroid/os/ServiceSpecificException; {:try_start_e .. :try_end_14} :catch_15

    return-object v0

    .line 2409
    :catch_15
    move-exception v0

    .line 2410
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2404
    .end local v0  # "e":Ljava/lang/Exception;
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid arguments list!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAllowOnlyVpnForUids(Z[Landroid/net/UidRange;)V
    .registers 9
    .param p1, "add"  # Z
    .param p2, "uidRanges"  # [Landroid/net/UidRange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 1577
    const-string v0, "): netd command failed"

    const-string v1, ", "

    const-string/jumbo v2, "setAllowOnlyVpnForUids("

    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v4, "NetworkManagement"

    const-string v5, "android.permission.NETWORK_STACK"

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    :try_start_10
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-static {p2}, Lcom/android/server/NetworkManagementService;->toStableParcels([Landroid/net/UidRange;)[Landroid/net/UidRangeParcel;

    move-result-object v5

    invoke-interface {v3, p1, v5}, Landroid/net/INetd;->networkRejectNonSecureVpn(Z[Landroid/net/UidRangeParcel;)V
    :try_end_19
    .catch Landroid/os/ServiceSpecificException; {:try_start_10 .. :try_end_19} :catch_40
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_1b

    .line 1588
    nop

    .line 1589
    return-void

    .line 1584
    :catch_1b
    move-exception v3

    .line 1585
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1587
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1580
    .end local v3  # "e":Landroid/os/RemoteException;
    :catch_40
    move-exception v3

    .line 1581
    .local v3, "e":Landroid/os/ServiceSpecificException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1583
    throw v3
.end method

.method public setDataSaverModeEnabled(Z)Z
    .registers 9
    .param p1, "enable"  # Z

    .line 1533
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    sget-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDataSaverMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkManagement"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    :cond_24
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1537
    :try_start_27
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    if-ne v1, p1, :cond_47

    .line 1538
    const-string v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDataSaverMode(): already "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 1541
    :cond_47
    const-string v1, "bandwidthEnableDataSaver"

    const-wide/32 v2, 0x200000

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_27 .. :try_end_4f} :catchall_a5

    .line 1543
    :try_start_4f
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1}, Landroid/net/INetd;->bandwidthEnableDataSaver(Z)Z

    move-result v1

    .line 1544
    .local v1, "changed":Z
    if-eqz v1, :cond_5a

    .line 1545
    iput-boolean p1, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    goto :goto_76

    .line 1547
    :cond_5a
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDataSaverMode("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "): netd command silently failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_76} :catch_7e
    .catchall {:try_start_4f .. :try_end_76} :catchall_7c

    .line 1549
    :goto_76
    nop

    .line 1554
    :try_start_77
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_77 .. :try_end_7b} :catchall_a5

    .line 1549
    return v1

    .line 1554
    .end local v1  # "changed":Z
    :catchall_7c
    move-exception v1

    goto :goto_a1

    .line 1550
    :catch_7e
    move-exception v1

    .line 1551
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_7f
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDataSaverMode("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "): netd command failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9b
    .catchall {:try_start_7f .. :try_end_9b} :catchall_7c

    .line 1552
    const/4 v4, 0x0

    .line 1554
    :try_start_9c
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v0

    .line 1552
    return v4

    .line 1554
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_a1
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .end local p0  # "this":Lcom/android/server/NetworkManagementService;
    .end local p1  # "enable":Z
    throw v1

    .line 1556
    .restart local p0  # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1  # "enable":Z
    :catchall_a5
    move-exception v1

    monitor-exit v0
    :try_end_a7
    .catchall {:try_start_9c .. :try_end_a7} :catchall_a5

    throw v1
.end method

.method public setDefaultNetId(I)V
    .registers 5
    .param p1, "netId"  # I

    .line 2211
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2214
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1}, Landroid/net/INetd;->networkSetDefault(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_e} :catch_10

    .line 2217
    nop

    .line 2218
    return-void

    .line 2215
    :catch_10
    move-exception v0

    .line 2216
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setDnsForwarders(Landroid/net/Network;[Ljava/lang/String;)V
    .registers 6
    .param p1, "network"  # Landroid/net/Network;
    .param p2, "dns"  # [Ljava/lang/String;

    .line 1199
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    if-eqz p1, :cond_e

    iget v0, p1, Landroid/net/Network;->netId:I

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 1204
    .local v0, "netId":I
    :goto_f
    :try_start_f
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, v0, p2}, Landroid/net/INetd;->tetherDnsSet(I[Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_16
    .catch Landroid/os/ServiceSpecificException; {:try_start_f .. :try_end_14} :catch_16

    .line 1207
    nop

    .line 1208
    return-void

    .line 1205
    :catch_16
    move-exception v1

    .line 1206
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setFirewallChainEnabled(IZ)V
    .registers 8
    .param p1, "chain"  # I
    .param p2, "enable"  # Z

    .line 1846
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 1847
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1848
    :try_start_6
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_4a

    .line 1849
    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v2

    if-ne v2, p2, :cond_12

    .line 1852
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_47

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_4a

    return-void

    .line 1854
    :cond_12
    :try_start_12
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->setFirewallChainState(IZ)V

    .line 1855
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_47

    .line 1857
    :try_start_16
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallChainName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_4a

    .line 1858
    .local v1, "chainName":Ljava/lang/String;
    if-eqz p1, :cond_30

    .line 1863
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v2, p1, p2}, Landroid/net/INetd;->firewallEnableChildChain(IZ)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_29
    .catch Landroid/os/ServiceSpecificException; {:try_start_1c .. :try_end_21} :catch_29
    .catchall {:try_start_1c .. :try_end_21} :catchall_4a

    .line 1866
    nop

    .line 1872
    if-eqz p2, :cond_27

    .line 1873
    :try_start_24
    invoke-direct {p0, p1, v1}, Lcom/android/server/NetworkManagementService;->closeSocketsForFirewallChainLocked(ILjava/lang/String;)V

    .line 1875
    .end local v1  # "chainName":Ljava/lang/String;
    :cond_27
    monitor-exit v0

    .line 1876
    return-void

    .line 1864
    .restart local v1  # "chainName":Ljava/lang/String;
    :catch_29
    move-exception v2

    .line 1865
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local p0  # "this":Lcom/android/server/NetworkManagementService;
    .end local p1  # "chain":I
    .end local p2  # "enable":Z
    throw v3

    .line 1859
    .end local v2  # "e":Ljava/lang/Exception;
    .restart local p0  # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1  # "chain":I
    .restart local p2  # "enable":Z
    :cond_30
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad child chain: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/NetworkManagementService;
    .end local p1  # "chain":I
    .end local p2  # "enable":Z
    throw v2
    :try_end_47
    .catchall {:try_start_24 .. :try_end_47} :catchall_4a

    .line 1855
    .end local v1  # "chainName":Ljava/lang/String;
    .restart local p0  # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1  # "chain":I
    .restart local p2  # "enable":Z
    :catchall_47
    move-exception v2

    :try_start_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    .end local p0  # "this":Lcom/android/server/NetworkManagementService;
    .end local p1  # "chain":I
    .end local p2  # "enable":Z
    :try_start_49
    throw v2

    .line 1875
    .restart local p0  # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1  # "chain":I
    .restart local p2  # "enable":Z
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method public setFirewallEnabled(Z)V
    .registers 4
    .param p1, "enabled"  # Z

    .line 1752
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 1754
    :try_start_3
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 1755
    if-eqz p1, :cond_9

    const/4 v1, 0x0

    goto :goto_a

    :cond_9
    const/4 v1, 0x1

    .line 1754
    :goto_a
    invoke-interface {v0, v1}, Landroid/net/INetd;->firewallSetFirewallType(I)V

    .line 1756
    iput-boolean p1, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_f} :catch_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_f} :catch_11

    .line 1759
    nop

    .line 1760
    return-void

    .line 1757
    :catch_11
    move-exception v0

    .line 1758
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setFirewallInterfaceRule(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "iface"  # Ljava/lang/String;
    .param p2, "allow"  # Z

    .line 1770
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 1771
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1773
    :try_start_8
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 1774
    if-eqz p2, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x2

    .line 1773
    :goto_f
    invoke-interface {v0, p1, v1}, Landroid/net/INetd;->firewallSetInterfaceRule(Ljava/lang/String;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_14
    .catch Landroid/os/ServiceSpecificException; {:try_start_8 .. :try_end_12} :catch_14

    .line 1777
    nop

    .line 1778
    return-void

    .line 1775
    :catch_14
    move-exception v0

    .line 1776
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setFirewallUidChainRule(IIZ)V
    .registers 11
    .param p1, "uid"  # I
    .param p2, "networkType"  # I
    .param p3, "allow"  # Z

    .line 2548
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "NetworkManagement"

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2549
    const-string/jumbo v0, "mobile"

    .line 2550
    .local v0, "MOBILE":Ljava/lang/String;
    const-string/jumbo v2, "wifi"

    .line 2552
    .local v2, "WIFI":Ljava/lang/String;
    if-eqz p3, :cond_14

    const-string v3, "allow"

    goto :goto_16

    :cond_14
    const-string v3, "deny"

    .line 2553
    .local v3, "rule":Ljava/lang/String;
    :goto_16
    const/4 v4, 0x1

    if-ne p2, v4, :cond_1d

    const-string/jumbo v4, "wifi"

    goto :goto_20

    :cond_1d
    const-string/jumbo v4, "mobile"

    .line 2555
    .local v4, "chain":Ljava/lang/String;
    :goto_20
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setFirewallUidChainRule: pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2556
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2555
    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    :try_start_45
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Landroid/net/IOemNetd;

    invoke-interface {v1, p1, v4, v3}, Landroid/net/IOemNetd;->setFirewallUidChainRule(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4a} :catch_4c
    .catch Landroid/os/ServiceSpecificException; {:try_start_45 .. :try_end_4a} :catch_4c

    .line 2561
    nop

    .line 2562
    return-void

    .line 2559
    :catch_4c
    move-exception v1

    .line 2560
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public setFirewallUidRule(III)V
    .registers 6
    .param p1, "chain"  # I
    .param p2, "uid"  # I
    .param p3, "rule"  # I

    .line 1955
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 1956
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1957
    :try_start_6
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NetworkManagementService;->setFirewallUidRuleLocked(III)V

    .line 1958
    monitor-exit v0

    .line 1959
    return-void

    .line 1958
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public setFirewallUidRules(I[I[I)V
    .registers 14
    .param p1, "chain"  # I
    .param p2, "uids"  # [I
    .param p3, "rules"  # [I

    .line 1906
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 1907
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1908
    :try_start_6
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_aa

    .line 1909
    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object v2

    .line 1910
    .local v2, "uidFirewallRules":Landroid/util/SparseIntArray;
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 1912
    .local v3, "newRules":Landroid/util/SparseIntArray;
    array-length v4, p2

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "index":I
    :goto_15
    if-ltz v4, :cond_24

    .line 1913
    aget v6, p2, v4

    .line 1914
    .local v6, "uid":I
    aget v7, p3, v4

    .line 1915
    .local v7, "rule":I
    invoke-direct {p0, p1, v6, v7}, Lcom/android/server/NetworkManagementService;->updateFirewallUidRuleLocked(III)Z

    .line 1916
    invoke-virtual {v3, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1912
    .end local v6  # "uid":I
    .end local v7  # "rule":I
    add-int/lit8 v4, v4, -0x1

    goto :goto_15

    .line 1919
    .end local v4  # "index":I
    :cond_24
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .line 1920
    .local v4, "rulesToRemove":Landroid/util/SparseIntArray;
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    sub-int/2addr v6, v5

    .local v6, "index":I
    :goto_2e
    const/4 v7, 0x0

    if-ltz v6, :cond_41

    .line 1921
    invoke-virtual {v2, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 1922
    .local v8, "uid":I
    invoke-virtual {v3, v8}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v9

    if-gez v9, :cond_3e

    .line 1923
    invoke-virtual {v4, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1920
    .end local v8  # "uid":I
    :cond_3e
    add-int/lit8 v6, v6, -0x1

    goto :goto_2e

    .line 1927
    .end local v6  # "index":I
    :cond_41
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    sub-int/2addr v6, v5

    .restart local v6  # "index":I
    :goto_46
    if-ltz v6, :cond_53

    .line 1928
    invoke-virtual {v4, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 1929
    .restart local v8  # "uid":I
    invoke-direct {p0, p1, v8, v7}, Lcom/android/server/NetworkManagementService;->updateFirewallUidRuleLocked(III)Z

    .line 1927
    nop

    .end local v8  # "uid":I
    add-int/lit8 v6, v6, -0x1

    goto :goto_46

    .line 1931
    .end local v2  # "uidFirewallRules":Landroid/util/SparseIntArray;
    .end local v3  # "newRules":Landroid/util/SparseIntArray;
    .end local v4  # "rulesToRemove":Landroid/util/SparseIntArray;
    .end local v6  # "index":I
    :cond_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_9 .. :try_end_54} :catchall_a7

    .line 1933
    if-eq p1, v5, :cond_86

    const/4 v1, 0x2

    if-eq p1, v1, :cond_7e

    const/4 v1, 0x3

    if-eq p1, v1, :cond_76

    .line 1945
    :try_start_5c
    const-string v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFirewallUidRules() called on invalid chain: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    .line 1947
    :catch_74
    move-exception v1

    goto :goto_8f

    .line 1941
    :cond_76
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    const-string v2, "fw_powersave"

    invoke-interface {v1, v2, v5, p2}, Landroid/net/INetd;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z

    .line 1942
    goto :goto_8e

    .line 1938
    :cond_7e
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    const-string v2, "fw_standby"

    invoke-interface {v1, v2, v7, p2}, Landroid/net/INetd;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z

    .line 1939
    goto :goto_8e

    .line 1935
    :cond_86
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    const-string v2, "fw_dozable"

    invoke-interface {v1, v2, v5, p2}, Landroid/net/INetd;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z
    :try_end_8d
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_8d} :catch_74
    .catchall {:try_start_5c .. :try_end_8d} :catchall_aa

    .line 1936
    nop

    .line 1949
    :goto_8e
    goto :goto_a5

    .line 1948
    .local v1, "e":Landroid/os/RemoteException;
    :goto_8f
    :try_start_8f
    const-string v2, "NetworkManagement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error flushing firewall chain "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1950
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_a5
    monitor-exit v0
    :try_end_a6
    .catchall {:try_start_8f .. :try_end_a6} :catchall_aa

    .line 1951
    return-void

    .line 1931
    :catchall_a7
    move-exception v2

    :try_start_a8
    monitor-exit v1
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    .end local p0  # "this":Lcom/android/server/NetworkManagementService;
    .end local p1  # "chain":I
    .end local p2  # "uids":[I
    .end local p3  # "rules":[I
    :try_start_a9
    throw v2

    .line 1950
    .restart local p0  # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1  # "chain":I
    .restart local p2  # "uids":[I
    .restart local p3  # "rules":[I
    :catchall_aa
    move-exception v1

    monitor-exit v0
    :try_end_ac
    .catchall {:try_start_a9 .. :try_end_ac} :catchall_aa

    throw v1
.end method

.method public setGlobalAlert(J)V
    .registers 6
    .param p1, "alertBytes"  # J

    .line 1467
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1, p2}, Landroid/net/INetd;->bandwidthSetGlobalAlert(J)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_e} :catch_10

    .line 1473
    nop

    .line 1474
    return-void

    .line 1471
    :catch_10
    move-exception v0

    .line 1472
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setIPv6AddrGenMode(Ljava/lang/String;I)V
    .registers 5
    .param p1, "iface"  # Ljava/lang/String;
    .param p2, "mode"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 991
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1, p2}, Landroid/net/INetd;->setIPv6AddrGenMode(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 994
    nop

    .line 995
    return-void

    .line 992
    :catch_7
    move-exception v0

    .line 993
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setInterfaceAlert(Ljava/lang/String;J)V
    .registers 8
    .param p1, "iface"  # Ljava/lang/String;
    .param p2, "alertBytes"  # J

    .line 1423
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1430
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1431
    :try_start_14
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_51

    if-nez v1, :cond_34

    .line 1437
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/INetd;->bandwidthSetInterfaceAlert(Ljava/lang/String;J)V

    .line 1438
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2a} :catch_2d
    .catch Landroid/os/ServiceSpecificException; {:try_start_1c .. :try_end_2a} :catch_2d
    .catchall {:try_start_1c .. :try_end_2a} :catchall_51

    .line 1441
    nop

    .line 1442
    :try_start_2b
    monitor-exit v0

    .line 1443
    return-void

    .line 1439
    :catch_2d
    move-exception v1

    .line 1440
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local p0  # "this":Lcom/android/server/NetworkManagementService;
    .end local p1  # "iface":Ljava/lang/String;
    .end local p2  # "alertBytes":J
    throw v2

    .line 1432
    .end local v1  # "e":Ljava/lang/Exception;
    .restart local p0  # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1  # "iface":Ljava/lang/String;
    .restart local p2  # "alertBytes":J
    :cond_34
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "iface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " already has alert"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/NetworkManagementService;
    .end local p1  # "iface":Ljava/lang/String;
    .end local p2  # "alertBytes":J
    throw v1

    .line 1442
    .restart local p0  # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1  # "iface":Ljava/lang/String;
    .restart local p2  # "alertBytes":J
    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_2b .. :try_end_53} :catchall_51

    throw v1

    .line 1427
    :cond_54
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setting alert requires existing quota on iface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    .registers 7
    .param p1, "iface"  # Ljava/lang/String;
    .param p2, "cfg"  # Landroid/net/InterfaceConfiguration;

    .line 925
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    invoke-virtual {p2}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v0

    .line 927
    .local v0, "linkAddr":Landroid/net/LinkAddress;
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 931
    invoke-static {p2, p1}, Lcom/android/server/NetworkManagementService;->toStableParcel(Landroid/net/InterfaceConfiguration;Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    move-result-object v1

    .line 934
    .local v1, "cfgParcel":Landroid/net/InterfaceConfigurationParcel;
    :try_start_19
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v2, v1}, Landroid/net/INetd;->interfaceSetCfg(Landroid/net/InterfaceConfigurationParcel;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_20
    .catch Landroid/os/ServiceSpecificException; {:try_start_19 .. :try_end_1e} :catch_20

    .line 937
    nop

    .line 938
    return-void

    .line 935
    :catch_20
    move-exception v2

    .line 936
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 928
    .end local v1  # "cfgParcel":Landroid/net/InterfaceConfigurationParcel;
    .end local v2  # "e":Ljava/lang/Exception;
    :cond_27
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Null LinkAddress given"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setInterfaceDown(Ljava/lang/String;)V
    .registers 5
    .param p1, "iface"  # Ljava/lang/String;

    .line 942
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    .line 944
    .local v0, "ifcg":Landroid/net/InterfaceConfiguration;
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->setInterfaceDown()V

    .line 945
    invoke-virtual {p0, p1, v0}, Lcom/android/server/NetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 946
    return-void
.end method

.method public setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "iface"  # Ljava/lang/String;
    .param p2, "enable"  # Z

    .line 958
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1, p2}, Landroid/net/INetd;->interfaceSetIPv6PrivacyExtensions(Ljava/lang/String;Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_e} :catch_10

    .line 963
    nop

    .line 964
    return-void

    .line 961
    :catch_10
    move-exception v0

    .line 962
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setInterfaceQuota(Ljava/lang/String;J)V
    .registers 12
    .param p1, "iface"  # Ljava/lang/String;
    .param p2, "quotaBytes"  # J

    .line 1359
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1362
    :try_start_c
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_92

    if-nez v1, :cond_75

    .line 1368
    :try_start_14
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/INetd;->bandwidthSetInterfaceQuota(Ljava/lang/String;J)V

    .line 1370
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_22} :catch_6e
    .catch Landroid/os/ServiceSpecificException; {:try_start_14 .. :try_end_22} :catch_6e
    .catchall {:try_start_14 .. :try_end_22} :catchall_92

    .line 1373
    nop

    .line 1375
    :try_start_23
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_92

    .line 1376
    :try_start_26
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ITetheringStatsProvider;
    :try_end_3c
    .catchall {:try_start_26 .. :try_end_3c} :catchall_6b

    .line 1378
    .local v3, "provider":Landroid/net/ITetheringStatsProvider;
    :try_start_3c
    invoke-interface {v3, p1, p2, p3}, Landroid/net/ITetheringStatsProvider;->setInterfaceQuota(Ljava/lang/String;J)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_3f} :catch_40
    .catchall {:try_start_3c .. :try_end_3f} :catchall_6b

    .line 1382
    goto :goto_67

    .line 1379
    :catch_40
    move-exception v4

    .line 1380
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_41
    const-string v5, "NetworkManagement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem setting tethering data limit on provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    .line 1381
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1380
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    .end local v3  # "provider":Landroid/net/ITetheringStatsProvider;
    .end local v4  # "e":Landroid/os/RemoteException;
    :goto_67
    goto :goto_30

    .line 1384
    :cond_68
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_41 .. :try_end_69} :catchall_6b

    .line 1385
    :try_start_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_92

    .line 1386
    return-void

    .line 1384
    :catchall_6b
    move-exception v2

    :try_start_6c
    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    .end local p0  # "this":Lcom/android/server/NetworkManagementService;
    .end local p1  # "iface":Ljava/lang/String;
    .end local p2  # "quotaBytes":J
    :try_start_6d
    throw v2

    .line 1371
    .restart local p0  # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1  # "iface":Ljava/lang/String;
    .restart local p2  # "quotaBytes":J
    :catch_6e
    move-exception v1

    .line 1372
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local p0  # "this":Lcom/android/server/NetworkManagementService;
    .end local p1  # "iface":Ljava/lang/String;
    .end local p2  # "quotaBytes":J
    throw v2

    .line 1363
    .end local v1  # "e":Ljava/lang/Exception;
    .restart local p0  # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1  # "iface":Ljava/lang/String;
    .restart local p2  # "quotaBytes":J
    :cond_75
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "iface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " already has quota"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/NetworkManagementService;
    .end local p1  # "iface":Ljava/lang/String;
    .end local p2  # "quotaBytes":J
    throw v1

    .line 1385
    .restart local p0  # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1  # "iface":Ljava/lang/String;
    .restart local p2  # "quotaBytes":J
    :catchall_92
    move-exception v1

    monitor-exit v0
    :try_end_94
    .catchall {:try_start_6d .. :try_end_94} :catchall_92

    throw v1
.end method

.method public setInterfaceUp(Ljava/lang/String;)V
    .registers 5
    .param p1, "iface"  # Ljava/lang/String;

    .line 950
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    .line 952
    .local v0, "ifcg":Landroid/net/InterfaceConfiguration;
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 953
    invoke-virtual {p0, p1, v0}, Lcom/android/server/NetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 954
    return-void
.end method

.method public setIpForwardingEnabled(Z)V
    .registers 5
    .param p1, "enable"  # Z

    .line 1114
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    const-string/jumbo v0, "tethering"

    if-eqz p1, :cond_14

    .line 1117
    :try_start_e
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, v0}, Landroid/net/INetd;->ipfwdEnableForwarding(Ljava/lang/String;)V

    goto :goto_19

    .line 1119
    :cond_14
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, v0}, Landroid/net/INetd;->ipfwdDisableForwarding(Ljava/lang/String;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_19} :catch_1b
    .catch Landroid/os/ServiceSpecificException; {:try_start_e .. :try_end_19} :catch_1b

    .line 1123
    :goto_19
    nop

    .line 1124
    return-void

    .line 1121
    :catch_1b
    move-exception v0

    .line 1122
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setMtu(Ljava/lang/String;I)V
    .registers 6
    .param p1, "iface"  # Ljava/lang/String;
    .param p2, "mtu"  # I

    .line 1083
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1, p2}, Landroid/net/INetd;->interfaceSetMtu(Ljava/lang/String;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_e} :catch_10

    .line 1089
    nop

    .line 1090
    return-void

    .line 1087
    :catch_10
    move-exception v0

    .line 1088
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setNetworkPermission(II)V
    .registers 6
    .param p1, "netId"  # I
    .param p2, "permission"  # I

    .line 2233
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2236
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1, p2}, Landroid/net/INetd;->networkSetPermissionForNetwork(II)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_e} :catch_10

    .line 2239
    nop

    .line 2240
    return-void

    .line 2237
    :catch_10
    move-exception v0

    .line 2238
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setUidCleartextNetworkPolicy(II)V
    .registers 7
    .param p1, "uid"  # I
    .param p2, "policy"  # I

    .line 1617
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq v0, p1, :cond_f

    .line 1618
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    :cond_f
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1622
    :try_start_12
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 1623
    .local v1, "oldPolicy":I
    if-ne v1, p2, :cond_1d

    .line 1626
    monitor-exit v0

    return-void

    .line 1630
    :cond_1d
    iget-boolean v3, p0, Lcom/android/server/NetworkManagementService;->mStrictEnabled:Z

    if-nez v3, :cond_28

    .line 1633
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1634
    monitor-exit v0

    return-void

    .line 1641
    :cond_28
    if-eqz v1, :cond_2f

    if-eqz p2, :cond_2f

    .line 1643
    invoke-direct {p0, p1, v2}, Lcom/android/server/NetworkManagementService;->applyUidCleartextNetworkPolicy(II)V

    .line 1646
    :cond_2f
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->applyUidCleartextNetworkPolicy(II)V

    .line 1647
    .end local v1  # "oldPolicy":I
    monitor-exit v0

    .line 1648
    return-void

    .line 1647
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_12 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public setUidMeteredNetworkBlacklist(IZ)V
    .registers 4
    .param p1, "uid"  # I
    .param p2, "enable"  # Z

    .line 1523
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/NetworkManagementService;->setUidOnMeteredNetworkList(IZZ)V

    .line 1524
    return-void
.end method

.method public setUidMeteredNetworkWhitelist(IZ)V
    .registers 4
    .param p1, "uid"  # I
    .param p2, "enable"  # Z

    .line 1528
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/NetworkManagementService;->setUidOnMeteredNetworkList(IZZ)V

    .line 1529
    return-void
.end method

.method public setVpnProfileDefaultKey(Ljava/lang/String;)V
    .registers 3
    .param p1, "key"  # Ljava/lang/String;

    .line 2534
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/MzVpnKeyStore;->getInstance(Landroid/content/Context;)Lcom/android/server/MzVpnKeyStore;

    move-result-object v0

    .line 2535
    .local v0, "vpnKeyStore":Lcom/android/server/MzVpnKeyStore;
    if-nez v0, :cond_9

    .line 2536
    return-void

    .line 2538
    :cond_9
    invoke-virtual {v0, p1}, Lcom/android/server/MzVpnKeyStore;->setDefaultKey(Ljava/lang/String;)V

    .line 2540
    return-void
.end method

.method public setVpnProfileVersion(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "version"  # I

    .line 2507
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/MzVpnKeyStore;->getInstance(Landroid/content/Context;)Lcom/android/server/MzVpnKeyStore;

    move-result-object v0

    .line 2508
    .local v0, "vpnKeyStore":Lcom/android/server/MzVpnKeyStore;
    if-nez v0, :cond_a

    .line 2509
    const/4 v1, 0x0

    return v1

    .line 2512
    :cond_a
    invoke-virtual {v0, p1, p2}, Lcom/android/server/MzVpnKeyStore;->setVersion(Ljava/lang/String;I)Z

    move-result v1

    .line 2513
    .local v1, "ret":Z
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "meizu.intent.action.VPN_PROFILE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2514
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "action"

    const-string/jumbo v4, "set_version"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2515
    const-string/jumbo v3, "key"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2516
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2517
    return v1
.end method

.method public setWhiteListForNetPolicy([I)V
    .registers 5
    .param p1, "whiteList"  # [I

    .line 2572
    array-length v0, p1

    if-eqz v0, :cond_16

    .line 2573
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v1, p1

    if-ge v0, v1, :cond_15

    .line 2574
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->ListForNetPolicy:Ljava/util/ArrayList;

    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2573
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .end local v0  # "i":I
    :cond_15
    goto :goto_1e

    .line 2577
    :cond_16
    const-string v0, "NetworkManagement"

    const-string/jumbo v1, "setWhiteListForNetPolicy: whiteList is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2579
    :goto_1e
    return-void
.end method

.method public shutdown()V
    .registers 4

    .line 1095
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "NetworkManagement"

    const-string v2, "android.permission.SHUTDOWN"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    const-string v0, "Shutting down"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    return-void
.end method

.method public startInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "fromIface"  # Ljava/lang/String;
    .param p2, "toIface"  # Ljava/lang/String;

    .line 1243
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyInterfaceForward(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1245
    return-void
.end method

.method public startTethering([Ljava/lang/String;)V
    .registers 5
    .param p1, "dhcpRange"  # [Ljava/lang/String;

    .line 1128
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1}, Landroid/net/INetd;->tetherStart([Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_e} :catch_10

    .line 1135
    nop

    .line 1136
    return-void

    .line 1133
    :catch_10
    move-exception v0

    .line 1134
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public stopInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "fromIface"  # Ljava/lang/String;
    .param p2, "toIface"  # Ljava/lang/String;

    .line 1249
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyInterfaceForward(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1251
    return-void
.end method

.method public stopTethering()V
    .registers 4

    .line 1140
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0}, Landroid/net/INetd;->tetherStop()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_e} :catch_10

    .line 1145
    nop

    .line 1146
    return-void

    .line 1143
    :catch_10
    move-exception v0

    .line 1144
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public systemReady()V
    .registers 7

    .line 332
    sget-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_2d

    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 334
    .local v0, "start":J
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->prepareNativeDaemon()V

    .line 335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 336
    .local v2, "delta":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prepared in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NetworkManagement"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return-void

    .line 339
    .end local v0  # "start":J
    .end local v2  # "delta":J
    :cond_2d
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->prepareNativeDaemon()V

    .line 341
    return-void
.end method

.method public tetherInterface(Ljava/lang/String;)V
    .registers 6
    .param p1, "iface"  # Ljava/lang/String;

    .line 1162
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1}, Landroid/net/INetd;->tetherInterfaceAdd(Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_29
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_e} :catch_29

    .line 1167
    nop

    .line 1168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1171
    .local v0, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    new-instance v1, Landroid/net/RouteInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p1}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1172
    invoke-virtual {p0, p1, v0}, Lcom/android/server/NetworkManagementService;->addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V

    .line 1173
    return-void

    .line 1165
    .end local v0  # "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    :catch_29
    move-exception v0

    .line 1166
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public tetherLimitReached(Landroid/net/ITetheringStatsProvider;)V
    .registers 5
    .param p1, "provider"  # Landroid/net/ITetheringStatsProvider;

    .line 551
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_STACK"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter v0

    .line 553
    :try_start_c
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 554
    monitor-exit v0

    return-void

    .line 557
    :cond_16
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/-$$Lambda$NetworkManagementService$Hs4ibiwzKmd9u0PZ04vysXRExho;

    invoke-direct {v2, p0}, Lcom/android/server/-$$Lambda$NetworkManagementService$Hs4ibiwzKmd9u0PZ04vysXRExho;-><init>(Lcom/android/server/NetworkManagementService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 558
    monitor-exit v0

    .line 559
    return-void

    .line 558
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_22

    throw v1
.end method

.method public unregisterNetworkActivityListener(Landroid/os/INetworkActivityListener;)V
    .registers 3
    .param p1, "listener"  # Landroid/os/INetworkActivityListener;

    .line 2056
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 2057
    return-void
.end method

.method public unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V
    .registers 5
    .param p1, "observer"  # Landroid/net/INetworkManagementEventObserver;

    .line 362
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 364
    return-void
.end method

.method public unregisterOemObserver(Landroid/net/IOemNetworkManagementEventObserver;)V
    .registers 5
    .param p1, "observer"  # Landroid/net/IOemNetworkManagementEventObserver;

    .line 375
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mOemObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 377
    return-void
.end method

.method public unregisterTetheringStatsProvider(Landroid/net/ITetheringStatsProvider;)V
    .registers 5
    .param p1, "provider"  # Landroid/net/ITetheringStatsProvider;

    .line 543
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_STACK"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter v0

    .line 545
    :try_start_c
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    monitor-exit v0

    .line 547
    return-void

    .line 546
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw v1
.end method

.method public untetherInterface(Ljava/lang/String;)V
    .registers 5
    .param p1, "iface"  # Ljava/lang/String;

    .line 1177
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1}, Landroid/net/INetd;->tetherInterfaceRemove(Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_15
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_e} :catch_15
    .catchall {:try_start_9 .. :try_end_e} :catchall_13

    .line 1183
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->removeInterfaceFromLocalNetwork(Ljava/lang/String;)V

    .line 1184
    nop

    .line 1185
    return-void

    .line 1183
    :catchall_13
    move-exception v0

    goto :goto_1c

    .line 1180
    :catch_15
    move-exception v0

    .line 1181
    .local v0, "e":Ljava/lang/Exception;
    :try_start_16
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local p0  # "this":Lcom/android/server/NetworkManagementService;
    .end local p1  # "iface":Ljava/lang/String;
    throw v1
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_13

    .line 1183
    .end local v0  # "e":Ljava/lang/Exception;
    .restart local p0  # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1  # "iface":Ljava/lang/String;
    :goto_1c
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->removeInterfaceFromLocalNetwork(Ljava/lang/String;)V

    throw v0
.end method
