.class public Lcom/android/server/NetworkManagementService;
.super Landroid/os/INetworkManagementService$Stub;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkManagementService$Injector;,
        Lcom/android/server/NetworkManagementService$LocalService;,
        Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;,
        Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;,
        Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;,
        Lcom/android/server/NetworkManagementService$RestrictIf;,
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

.field private static final RESTRICT_USECASE_DATA:Ljava/lang/String; = "data"

.field private static final RESTRICT_USECASE_VPN:Ljava/lang/String; = "vpn"

.field private static final RESTRICT_USECASE_WLAN:Ljava/lang/String; = "wlan"

.field private static final TAG:Ljava/lang/String; = "NetworkManagement"


# instance fields
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

.field private final mNetworkCapabilitiesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Network;",
            "Landroid/net/NetworkCapabilities;",
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

.field private final mQuotaLock:Ljava/lang/Object;

.field private mRestrictIf:[Lcom/android/server/NetworkManagementService$RestrictIf;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mQuotaLock"
        }
    .end annotation
.end field

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

.field private mUidFirewallIsolatedRules:Landroid/util/SparseIntArray;
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

    .line 142
    const-string v0, "NetworkManagement"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    return-void
.end method

.method constructor <init>()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 334
    invoke-direct {p0}, Landroid/os/INetworkManagementService$Stub;-><init>()V

    .line 172
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    .line 175
    new-instance v0, Lcom/android/server/net/NetworkStatsFactory;

    invoke-direct {v0}, Lcom/android/server/net/NetworkStatsFactory;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/server/net/NetworkStatsFactory;

    .line 177
    nop

    .line 179
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    .line 185
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    .line 186
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    .line 189
    nop

    .line 190
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 192
    nop

    .line 193
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 195
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    .line 198
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    .line 201
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    .line 204
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    .line 210
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 216
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 222
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 228
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallIsolatedRules:Landroid/util/SparseIntArray;

    .line 231
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 237
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    .line 250
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    .line 256
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    .line 257
    iput v1, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromWifi:I

    .line 259
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    .line 292
    const/4 v2, 0x3

    new-array v2, v2, [Lcom/android/server/NetworkManagementService$RestrictIf;

    new-instance v3, Lcom/android/server/NetworkManagementService$RestrictIf;

    const-string/jumbo v4, "vpn"

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5}, Lcom/android/server/NetworkManagementService$RestrictIf;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v0

    new-instance v3, Lcom/android/server/NetworkManagementService$RestrictIf;

    const-string v4, "data"

    invoke-direct {v3, v4, v0}, Lcom/android/server/NetworkManagementService$RestrictIf;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v1

    new-instance v0, Lcom/android/server/NetworkManagementService$RestrictIf;

    const-string/jumbo v3, "wlan"

    invoke-direct {v0, v3, v1}, Lcom/android/server/NetworkManagementService$RestrictIf;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x2

    aput-object v0, v2, v1

    iput-object v2, p0, Lcom/android/server/NetworkManagementService;->mRestrictIf:[Lcom/android/server/NetworkManagementService$RestrictIf;

    .line 310
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkCapabilitiesMap:Ljava/util/HashMap;

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 336
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    .line 337
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mServices:Lcom/android/server/NetworkManagementService$SystemServices;

    .line 338
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdUnsolicitedEventListener:Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;

    .line 339
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/NetworkManagementService$SystemServices;)V
    .registers 9

    .line 318
    invoke-direct {p0}, Landroid/os/INetworkManagementService$Stub;-><init>()V

    .line 172
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    .line 175
    new-instance v0, Lcom/android/server/net/NetworkStatsFactory;

    invoke-direct {v0}, Lcom/android/server/net/NetworkStatsFactory;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/server/net/NetworkStatsFactory;

    .line 177
    nop

    .line 179
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    .line 185
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    .line 186
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    .line 189
    nop

    .line 190
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 192
    nop

    .line 193
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 195
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    .line 198
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    .line 201
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    .line 204
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    .line 210
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 216
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 222
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 228
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallIsolatedRules:Landroid/util/SparseIntArray;

    .line 231
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 237
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    .line 250
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    .line 256
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    .line 257
    iput v1, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromWifi:I

    .line 259
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    .line 292
    const/4 v2, 0x3

    new-array v2, v2, [Lcom/android/server/NetworkManagementService$RestrictIf;

    new-instance v3, Lcom/android/server/NetworkManagementService$RestrictIf;

    const-string/jumbo v4, "vpn"

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5}, Lcom/android/server/NetworkManagementService$RestrictIf;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v0

    new-instance v3, Lcom/android/server/NetworkManagementService$RestrictIf;

    const-string v4, "data"

    invoke-direct {v3, v4, v0}, Lcom/android/server/NetworkManagementService$RestrictIf;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v1

    new-instance v0, Lcom/android/server/NetworkManagementService$RestrictIf;

    const-string/jumbo v3, "wlan"

    invoke-direct {v0, v3, v1}, Lcom/android/server/NetworkManagementService$RestrictIf;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x2

    aput-object v0, v2, v1

    iput-object v2, p0, Lcom/android/server/NetworkManagementService;->mRestrictIf:[Lcom/android/server/NetworkManagementService$RestrictIf;

    .line 310
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkCapabilitiesMap:Ljava/util/HashMap;

    .line 319
    iput-object p1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 320
    iput-object p2, p0, Lcom/android/server/NetworkManagementService;->mServices:Lcom/android/server/NetworkManagementService$SystemServices;

    .line 322
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    .line 324
    new-instance p1, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;-><init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$1;)V

    iput-object p1, p0, Lcom/android/server/NetworkManagementService;->mNetdUnsolicitedEventListener:Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;

    .line 326
    iget-object p1, p0, Lcom/android/server/NetworkManagementService;->mServices:Lcom/android/server/NetworkManagementService$SystemServices;

    new-instance v0, Lcom/android/server/NetworkManagementService$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/NetworkManagementService$LocalService;-><init>(Lcom/android/server/NetworkManagementService;)V

    invoke-virtual {p1, v0}, Lcom/android/server/NetworkManagementService$SystemServices;->registerLocalService(Lcom/android/server/NetworkManagementInternal;)V

    .line 328
    iget-object p1, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter p1

    .line 329
    :try_start_e2
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    new-instance v1, Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;

    invoke-direct {v1, p0, p2}, Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;-><init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$1;)V

    const-string/jumbo p2, "netd"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    monitor-exit p1

    .line 331
    return-void

    .line 330
    :catchall_f1
    move-exception p2

    monitor-exit p1
    :try_end_f3
    .catchall {:try_start_e2 .. :try_end_f3} :catchall_f1

    throw p2
.end method

.method static synthetic access$1000(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V
    .registers 2

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->notifyInterfaceAdded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 3

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyAddressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 3

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyAddressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/NetworkManagementService;Ljava/lang/String;J[Ljava/lang/String;)V
    .registers 5

    .line 123
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/NetworkManagementService;->notifyInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/NetworkManagementService;IZJIZ)V
    .registers 7

    .line 123
    invoke-direct/range {p0 .. p6}, Lcom/android/server/NetworkManagementService;->notifyInterfaceClassActivity(IZJIZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/NetworkManagementService;)Landroid/net/INetd;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/server/NetworkManagementService;I)Z
    .registers 2

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->isNetworkRestrictedInternal(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1802(Lcom/android/server/NetworkManagementService;Z)Z
    .registers 2

    .line 123
    iput-boolean p1, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/NetworkManagementService;IZ)V
    .registers 3

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->setFirewallChainState(IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/NetworkManagementService;)Ljava/util/HashMap;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetworkCapabilitiesMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/server/NetworkManagementService;)Ljava/lang/Object;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/server/NetworkManagementService;I)Landroid/util/SparseIntArray;
    .registers 2

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/NetworkManagementService;)[Lcom/android/server/NetworkManagementService$RestrictIf;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mRestrictIf:[Lcom/android/server/NetworkManagementService$RestrictIf;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$RestrictIf;Ljava/lang/String;)V
    .registers 3

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->updateAppOnInterfaceCallback(Lcom/android/server/NetworkManagementService$RestrictIf;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/NetworkManagementService;ZLandroid/net/RouteInfo;)V
    .registers 3

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyRouteChange(ZLandroid/net/RouteInfo;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V
    .registers 3

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V
    .registers 3

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyInterfaceStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V
    .registers 2

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->notifyInterfaceRemoved(Ljava/lang/String;)V

    return-void
.end method

.method private applyUidCleartextNetworkPolicy(II)V
    .registers 5

    .line 1694
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p2, :cond_23

    if-eq p2, v1, :cond_21

    if-ne p2, v0, :cond_a

    .line 1702
    const/4 v0, 0x3

    .line 1703
    goto :goto_25

    .line 1705
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown policy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1699
    :cond_21
    nop

    .line 1700
    goto :goto_25

    .line 1696
    :cond_23
    nop

    .line 1697
    move v0, v1

    .line 1709
    :goto_25
    :try_start_25
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1, v0}, Landroid/net/INetd;->strictUidCleartextPenalty(II)V

    .line 1710
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2f} :catch_31
    .catch Landroid/os/ServiceSpecificException; {:try_start_25 .. :try_end_2f} :catch_31

    .line 1713
    nop

    .line 1714
    return-void

    .line 1711
    :catch_31
    move-exception p1

    .line 1712
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private closeSocketsForFirewallChainLocked(ILjava/lang/String;)V
    .registers 10

    .line 1887
    nop

    .line 1888
    sget-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Closing sockets after enabling chain "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkManagement"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    :cond_1b
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallType(I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5e

    .line 1891
    const/4 v0, 0x1

    new-array v2, v0, [Landroid/net/UidRangeParcel;

    const/16 v3, 0x2710

    const v4, 0x7fffffff

    .line 1894
    invoke-static {v3, v4}, Lcom/android/server/NetworkManagementService;->makeUidRangeParcel(II)Landroid/net/UidRangeParcel;

    move-result-object v3

    aput-object v3, v2, v1

    .line 1897
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1898
    :try_start_33
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object p1

    .line 1899
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    new-array v4, v4, [I

    .line 1900
    move v5, v1

    :goto_3e
    array-length v6, v4

    if-ge v1, v6, :cond_52

    .line 1901
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    if-ne v6, v0, :cond_4f

    .line 1902
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    aput v6, v4, v5

    .line 1903
    add-int/lit8 v5, v5, 0x1

    .line 1900
    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 1906
    :cond_52
    monitor-exit v3
    :try_end_53
    .catchall {:try_start_33 .. :try_end_53} :catchall_5b

    .line 1914
    array-length p1, v4

    if-eq v5, p1, :cond_93

    .line 1915
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    goto :goto_93

    .line 1906
    :catchall_5b
    move-exception p1

    :try_start_5c
    monitor-exit v3
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw p1

    .line 1919
    :cond_5e
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1920
    :try_start_61
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object p1

    .line 1921
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/UidRangeParcel;

    .line 1922
    move v3, v1

    move v4, v3

    :goto_6d
    array-length v5, v2

    if-ge v3, v5, :cond_86

    .line 1923
    invoke-virtual {p1, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_83

    .line 1924
    invoke-virtual {p1, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 1925
    invoke-static {v5, v5}, Lcom/android/server/NetworkManagementService;->makeUidRangeParcel(II)Landroid/net/UidRangeParcel;

    move-result-object v5

    aput-object v5, v2, v4

    .line 1926
    add-int/lit8 v4, v4, 0x1

    .line 1922
    :cond_83
    add-int/lit8 v3, v3, 0x1

    goto :goto_6d

    .line 1929
    :cond_86
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_61 .. :try_end_87} :catchall_b9

    .line 1931
    array-length p1, v2

    if-eq v4, p1, :cond_91

    .line 1932
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/net/UidRangeParcel;

    move-object v2, p1

    .line 1935
    :cond_91
    new-array v4, v1, [I

    .line 1939
    :cond_93
    :goto_93
    :try_start_93
    iget-object p1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p1, v2, v4}, Landroid/net/INetd;->socketDestroy([Landroid/net/UidRangeParcel;[I)V
    :try_end_98
    .catch Landroid/os/RemoteException; {:try_start_93 .. :try_end_98} :catch_99
    .catch Landroid/os/ServiceSpecificException; {:try_start_93 .. :try_end_98} :catch_99

    .line 1942
    goto :goto_b8

    .line 1940
    :catch_99
    move-exception p1

    .line 1941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error closing sockets after enabling chain "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NetworkManagement"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    :goto_b8
    return-void

    .line 1929
    :catchall_b9
    move-exception p1

    :try_start_ba
    monitor-exit v0
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_b9

    throw p1
.end method

.method private connectNativeNetdService()V
    .registers 5

    .line 634
    const-string v0, "NetworkManagement"

    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mServices:Lcom/android/server/NetworkManagementService$SystemServices;

    invoke-virtual {v1}, Lcom/android/server/NetworkManagementService$SystemServices;->getNetd()Landroid/net/INetd;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 636
    :try_start_a
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mNetdUnsolicitedEventListener:Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;

    invoke-interface {v1, v2}, Landroid/net/INetd;->registerUnsolicitedEventListener(Landroid/net/INetdUnsolicitedEventListener;)V

    .line 637
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_1a

    const-string v1, "Register unsolicited event listener"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1a} :catch_1b
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_1a} :catch_1b

    .line 640
    :cond_1a
    goto :goto_30

    .line 638
    :catch_1b
    move-exception v1

    .line 639
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set Netd unsolicited event listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :goto_30
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 353
    new-instance v0, Lcom/android/server/NetworkManagementService$SystemServices;

    invoke-direct {v0}, Lcom/android/server/NetworkManagementService$SystemServices;-><init>()V

    invoke-static {p0, v0}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;Lcom/android/server/NetworkManagementService$SystemServices;)Lcom/android/server/NetworkManagementService;

    move-result-object p0

    return-object p0
.end method

.method static create(Landroid/content/Context;Lcom/android/server/NetworkManagementService$SystemServices;)Lcom/android/server/NetworkManagementService;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 343
    new-instance v0, Lcom/android/server/NetworkManagementService;

    invoke-direct {v0, p0, p1}, Lcom/android/server/NetworkManagementService;-><init>(Landroid/content/Context;Lcom/android/server/NetworkManagementService$SystemServices;)V

    .line 345
    sget-boolean p0, Lcom/android/server/NetworkManagementService;->DBG:Z

    const-string p1, "NetworkManagement"

    if-eqz p0, :cond_10

    const-string p0, "Creating NetworkManagementService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_10
    sget-boolean p0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz p0, :cond_19

    const-string p0, "Connecting native netd service"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_19
    invoke-direct {v0}, Lcom/android/server/NetworkManagementService;->connectNativeNetdService()V

    .line 348
    sget-boolean p0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz p0, :cond_25

    const-string p0, "Connected"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_25
    return-object v0
.end method

.method private dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V
    .registers 6

    .line 2266
    const-string v0, "UID firewall "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2267
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2268
    const-string p2, " rule: ["

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2269
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    .line 2270
    const/4 v0, 0x0

    :goto_12
    if-ge v0, p2, :cond_33

    .line 2271
    invoke-virtual {p3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2272
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2273
    invoke-virtual {p3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2274
    add-int/lit8 v1, p2, -0x1

    if-ge v0, v1, :cond_30

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2270
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 2276
    :cond_33
    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2277
    return-void
.end method

.method private dumpUidRuleOnQuotaLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseBooleanArray;)V
    .registers 6

    .line 2254
    const-string v0, "UID bandwith control "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2255
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2256
    const-string p2, " rule: ["

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2257
    invoke-virtual {p3}, Landroid/util/SparseBooleanArray;->size()I

    move-result p2

    .line 2258
    const/4 v0, 0x0

    :goto_12
    if-ge v0, p2, :cond_27

    .line 2259
    invoke-virtual {p3, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2260
    add-int/lit8 v1, p2, -0x1

    if-ge v0, v1, :cond_24

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2258
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 2262
    :cond_27
    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2263
    return-void
.end method

.method private static enforceSystemUid()V
    .registers 2

    .line 2153
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2154
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    .line 2157
    return-void

    .line 2155
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only available to AID_SYSTEM"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private excludeLinkLocal(Ljava/util/List;)Ljava/util/List;
    .registers 5
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

    .line 1232
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1233
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InterfaceAddress;

    .line 1234
    invoke-virtual {v1}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v2

    if-nez v2, :cond_26

    .line 1235
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1236
    :cond_26
    goto :goto_d

    .line 1237
    :cond_27
    return-object v0
.end method

.method public static fromStableParcel(Landroid/net/InterfaceConfigurationParcel;)Landroid/net/InterfaceConfiguration;
    .registers 5

    .line 903
    new-instance v0, Landroid/net/InterfaceConfiguration;

    invoke-direct {v0}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 904
    iget-object v1, p0, Landroid/net/InterfaceConfigurationParcel;->hwAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/InterfaceConfiguration;->setHardwareAddress(Ljava/lang/String;)V

    .line 906
    iget-object v1, p0, Landroid/net/InterfaceConfigurationParcel;->ipv4Addr:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 907
    new-instance v2, Landroid/net/LinkAddress;

    iget v3, p0, Landroid/net/InterfaceConfigurationParcel;->prefixLength:I

    invoke-direct {v2, v1, v3}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v2}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 908
    iget-object p0, p0, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v1, :cond_28

    aget-object v3, p0, v2

    .line 909
    invoke-virtual {v0, v3}, Landroid/net/InterfaceConfiguration;->setFlag(Ljava/lang/String;)V

    .line 908
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 912
    :cond_28
    return-object v0
.end method

.method private getBatteryStats()Lcom/android/internal/app/IBatteryStats;
    .registers 3

    .line 428
    monitor-enter p0

    .line 429
    :try_start_1
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-eqz v0, :cond_9

    .line 430
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    monitor-exit p0

    return-object v0

    .line 432
    :cond_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mServices:Lcom/android/server/NetworkManagementService$SystemServices;

    const-string v1, "batterystats"

    .line 433
    invoke-virtual {v0, v1}, Lcom/android/server/NetworkManagementService$SystemServices;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 434
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    monitor-exit p0

    return-object v0

    .line 435
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method private getFirewallChainName(I)Ljava/lang/String;
    .registers 5

    .line 1980
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2a

    const/4 v0, 0x3

    if-eq p1, v0, :cond_26

    const/4 v0, 0x4

    if-ne p1, v0, :cond_f

    .line 1988
    const-string p1, "isolated"

    return-object p1

    .line 1990
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad child chain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1986
    :cond_26
    const-string/jumbo p1, "powersave"

    return-object p1

    .line 1982
    :cond_2a
    const-string/jumbo p1, "standby"

    return-object p1

    .line 1984
    :cond_2e
    const-string p1, "dozable"

    return-object p1
.end method

.method private getFirewallChainState(I)Z
    .registers 4

    .line 2461
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2462
    :try_start_3
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 2463
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method private getFirewallRuleName(II)Ljava/lang/String;
    .registers 5

    .line 2110
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallType(I)I

    move-result p1

    const-string v0, "deny"

    const-string v1, "allow"

    if-nez p1, :cond_10

    .line 2111
    const/4 p1, 0x1

    if-ne p2, p1, :cond_f

    .line 2112
    move-object v0, v1

    goto :goto_15

    .line 2114
    :cond_f
    goto :goto_15

    .line 2117
    :cond_10
    const/4 p1, 0x2

    if-ne p2, p1, :cond_14

    .line 2118
    goto :goto_15

    .line 2120
    :cond_14
    move-object v0, v1

    .line 2123
    :goto_15
    return-object v0
.end method

.method private getFirewallRuleType(II)I
    .registers 3

    .line 2145
    if-nez p2, :cond_c

    .line 2146
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallType(I)I

    move-result p1

    if-nez p1, :cond_a

    .line 2147
    const/4 p1, 0x2

    goto :goto_b

    :cond_a
    const/4 p1, 0x1

    .line 2146
    :goto_b
    return p1

    .line 2149
    :cond_c
    return p2
.end method

.method private getFirewallType(I)I
    .registers 5

    .line 1995
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_16

    const/4 v2, 0x2

    if-eq p1, v2, :cond_15

    const/4 v2, 0x3

    if-eq p1, v2, :cond_14

    const/4 v0, 0x4

    if-eq p1, v0, :cond_13

    .line 2005
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->isFirewallEnabled()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    .line 2003
    :cond_13
    return v1

    .line 2001
    :cond_14
    return v0

    .line 1997
    :cond_15
    return v1

    .line 1999
    :cond_16
    return v0
.end method

.method private getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRulesLock"
        }
    .end annotation

    .line 2128
    if-eqz p1, :cond_31

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_28

    const/4 v0, 0x4

    if-ne p1, v0, :cond_11

    .line 2136
    iget-object p1, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallIsolatedRules:Landroid/util/SparseIntArray;

    return-object p1

    .line 2140
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown chain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2134
    :cond_28
    iget-object p1, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    return-object p1

    .line 2130
    :cond_2b
    iget-object p1, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    return-object p1

    .line 2132
    :cond_2e
    iget-object p1, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    return-object p1

    .line 2138
    :cond_31
    iget-object p1, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    return-object p1
.end method

.method private getUseCaseRestrictIf(Ljava/lang/String;)Lcom/android/server/NetworkManagementService$RestrictIf;
    .registers 7

    .line 302
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mRestrictIf:[Lcom/android/server/NetworkManagementService$RestrictIf;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 303
    iget-object v4, v3, Lcom/android/server/NetworkManagementService$RestrictIf;->useCase:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 304
    return-object v3

    .line 302
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 307
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown interface restriction"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V
    .registers 5

    .line 456
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 458
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_20

    .line 460
    :try_start_9
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {p1, v2}, Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;->sendCallback(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_1c
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_14} :catch_1c
    .catchall {:try_start_9 .. :try_end_14} :catchall_15

    .line 462
    goto :goto_1d

    .line 465
    :catchall_15
    move-exception p1

    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw p1

    .line 461
    :catch_1c
    move-exception v2

    .line 458
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 465
    :cond_20
    iget-object p1, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 466
    nop

    .line 467
    return-void
.end method

.method private isNetworkRestrictedInternal(I)Z
    .registers 7

    .line 2420
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2421
    const/4 v1, 0x4

    :try_start_4
    invoke-direct {p0, v1}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallIsolatedRules:Landroid/util/SparseIntArray;

    .line 2422
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-ne v1, v2, :cond_35

    .line 2423
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_33

    const-string v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " restricted because of isolated mode"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    :cond_33
    monitor-exit v0

    return v3

    .line 2426
    :cond_35
    invoke-direct {p0, v2}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v1

    if-eqz v1, :cond_64

    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 2427
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-ne v1, v2, :cond_64

    .line 2428
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_62

    const-string v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " restricted because of app standby mode"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    :cond_62
    monitor-exit v0

    return v3

    .line 2431
    :cond_64
    invoke-direct {p0, v3}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v1

    if-eqz v1, :cond_93

    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 2432
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-eq v1, v3, :cond_93

    .line 2433
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_91

    const-string v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " restricted because of device idle mode"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    :cond_91
    monitor-exit v0

    return v3

    .line 2436
    :cond_93
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v1

    if-eqz v1, :cond_c3

    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 2437
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-eq v1, v3, :cond_c3

    .line 2438
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_c1

    const-string v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " restricted because of power saver mode"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    :cond_c1
    monitor-exit v0

    return v3

    .line 2441
    :cond_c3
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_ec

    .line 2442
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_ea

    const-string v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " restricted because of no metered data in the background"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    :cond_ea
    monitor-exit v0

    return v3

    .line 2446
    :cond_ec
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    if-eqz v1, :cond_119

    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_119

    .line 2447
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_117

    const-string v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " restricted because of data saver mode"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    :cond_117
    monitor-exit v0

    return v3

    .line 2450
    :cond_119
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 2451
    :catchall_11c
    move-exception p1

    monitor-exit v0
    :try_end_11e
    .catchall {:try_start_4 .. :try_end_11e} :catchall_11c

    throw p1
.end method

.method static synthetic lambda$notifyAddressRemoved$8(Ljava/lang/String;Landroid/net/LinkAddress;Landroid/net/INetworkManagementEventObserver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 756
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkManagementEventObserver;->addressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method static synthetic lambda$notifyAddressUpdated$7(Ljava/lang/String;Landroid/net/LinkAddress;Landroid/net/INetworkManagementEventObserver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 749
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkManagementEventObserver;->addressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method static synthetic lambda$notifyInterfaceAdded$2(Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 488
    invoke-interface {p1, p0}, Landroid/net/INetworkManagementEventObserver;->interfaceAdded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$notifyInterfaceClassActivity$5(IZJLandroid/net/INetworkManagementEventObserver;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 558
    nop

    .line 559
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 558
    invoke-interface {p4, p0, p1, p2, p3}, Landroid/net/INetworkManagementEventObserver;->interfaceClassDataActivityChanged(Ljava/lang/String;ZJ)V

    return-void
.end method

.method static synthetic lambda$notifyInterfaceDnsServerInfo$9(Ljava/lang/String;J[Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 763
    invoke-interface {p4, p0, p1, p2, p3}, Landroid/net/INetworkManagementEventObserver;->interfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$notifyInterfaceLinkStateChanged$1(Ljava/lang/String;ZLandroid/net/INetworkManagementEventObserver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 481
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkManagementEventObserver;->interfaceLinkStateChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic lambda$notifyInterfaceRemoved$3(Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 499
    invoke-interface {p1, p0}, Landroid/net/INetworkManagementEventObserver;->interfaceRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$notifyInterfaceStatusChanged$0(Ljava/lang/String;ZLandroid/net/INetworkManagementEventObserver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 473
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic lambda$notifyLimitReached$4(Ljava/lang/String;Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 506
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkManagementEventObserver;->limitReached(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$notifyRouteChange$10(Landroid/net/RouteInfo;Landroid/net/INetworkManagementEventObserver;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 771
    invoke-interface {p1, p0}, Landroid/net/INetworkManagementEventObserver;->routeUpdated(Landroid/net/RouteInfo;)V

    return-void
.end method

.method static synthetic lambda$notifyRouteChange$11(Landroid/net/RouteInfo;Landroid/net/INetworkManagementEventObserver;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 773
    invoke-interface {p1, p0}, Landroid/net/INetworkManagementEventObserver;->routeRemoved(Landroid/net/RouteInfo;)V

    return-void
.end method

.method private static makeUidRangeParcel(II)Landroid/net/UidRangeParcel;
    .registers 3

    .line 1571
    new-instance v0, Landroid/net/UidRangeParcel;

    invoke-direct {v0}, Landroid/net/UidRangeParcel;-><init>()V

    .line 1572
    iput p0, v0, Landroid/net/UidRangeParcel;->start:I

    .line 1573
    iput p1, v0, Landroid/net/UidRangeParcel;->stop:I

    .line 1574
    return-object v0
.end method

.method private modifyInterfaceForward(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1242
    if-eqz p1, :cond_8

    .line 1243
    :try_start_2
    iget-object p1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p1, p2, p3}, Landroid/net/INetd;->ipfwdAddInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 1245
    :cond_8
    iget-object p1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p1, p2, p3}, Landroid/net/INetd;->ipfwdRemoveInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_d} :catch_f
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_d} :catch_f

    .line 1249
    :goto_d
    nop

    .line 1250
    return-void

    .line 1247
    :catch_f
    move-exception p1

    .line 1248
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private modifyInterfaceInNetwork(ZILjava/lang/String;)V
    .registers 7

    .line 2290
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2292
    if-eqz p1, :cond_11

    .line 2293
    :try_start_b
    iget-object p1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p1, p2, p3}, Landroid/net/INetd;->networkAddInterface(ILjava/lang/String;)V

    goto :goto_16

    .line 2295
    :cond_11
    iget-object p1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p1, p2, p3}, Landroid/net/INetd;->networkRemoveInterface(ILjava/lang/String;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_16} :catch_18
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_16} :catch_18

    .line 2299
    :goto_16
    nop

    .line 2300
    return-void

    .line 2297
    :catch_18
    move-exception p1

    .line 2298
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private modifyRoute(ZILandroid/net/RouteInfo;)V
    .registers 9

    .line 1029
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v0

    .line 1032
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1035
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    const-string v4, ""

    if-eq v2, v3, :cond_30

    const/4 p3, 0x7

    if-eq v2, p3, :cond_2b

    const/16 p3, 0x9

    if-eq v2, p3, :cond_26

    .line 1050
    goto :goto_41

    .line 1047
    :cond_26
    nop

    .line 1048
    const-string/jumbo v4, "throw"

    goto :goto_41

    .line 1044
    :cond_2b
    nop

    .line 1045
    const-string/jumbo v4, "unreachable"

    goto :goto_41

    .line 1037
    :cond_30
    invoke-virtual {p3}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 1038
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object p3

    invoke-virtual {p3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    goto :goto_41

    .line 1040
    :cond_3f
    nop

    .line 1042
    nop

    .line 1054
    :goto_41
    if-eqz p1, :cond_49

    .line 1055
    :try_start_43
    iget-object p1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p1, p2, v0, v1, v4}, Landroid/net/INetd;->networkAddRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4e

    .line 1057
    :cond_49
    iget-object p1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p1, p2, v0, v1, v4}, Landroid/net/INetd;->networkRemoveRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_4e} :catch_50
    .catch Landroid/os/ServiceSpecificException; {:try_start_43 .. :try_end_4e} :catch_50

    .line 1061
    :goto_4e
    nop

    .line 1062
    return-void

    .line 1059
    :catch_50
    move-exception p1

    .line 1060
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private notifyAddressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 4

    .line 756
    new-instance v0, Lcom/android/server/-$$Lambda$NetworkManagementService$hs6djmKbGd8sG4u1TMglrogNP_s;

    invoke-direct {v0, p1, p2}, Lcom/android/server/-$$Lambda$NetworkManagementService$hs6djmKbGd8sG4u1TMglrogNP_s;-><init>(Ljava/lang/String;Landroid/net/LinkAddress;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 757
    return-void
.end method

.method private notifyAddressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 4

    .line 749
    new-instance v0, Lcom/android/server/-$$Lambda$NetworkManagementService$Yw12yNgo43yul34SibAKDtttAK8;

    invoke-direct {v0, p1, p2}, Lcom/android/server/-$$Lambda$NetworkManagementService$Yw12yNgo43yul34SibAKDtttAK8;-><init>(Ljava/lang/String;Landroid/net/LinkAddress;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 750
    return-void
.end method

.method private notifyInterfaceAdded(Ljava/lang/String;)V
    .registers 3

    .line 488
    new-instance v0, Lcom/android/server/-$$Lambda$NetworkManagementService$vX8dVVYxxv3YT9jQuN34bgGgRa8;

    invoke-direct {v0, p1}, Lcom/android/server/-$$Lambda$NetworkManagementService$vX8dVVYxxv3YT9jQuN34bgGgRa8;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 489
    return-void
.end method

.method private notifyInterfaceClassActivity(IZJIZ)V
    .registers 12

    .line 514
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v0

    .line 515
    const/4 v1, 0x1

    if-eqz p2, :cond_9

    .line 516
    const/4 v2, 0x3

    goto :goto_a

    .line 517
    :cond_9
    move v2, v1

    .line 518
    :goto_a
    const/4 v3, 0x0

    if-eqz v0, :cond_2c

    .line 519
    if-nez p6, :cond_16

    .line 520
    iget-boolean v4, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    if-eqz v4, :cond_18

    .line 524
    iget v2, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    goto :goto_18

    .line 527
    :cond_16
    iput-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    .line 529
    :cond_18
    :goto_18
    iget v4, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    if-eq v4, v2, :cond_2c

    .line 530
    iput v2, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    .line 532
    :try_start_1e
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->getBatteryStats()Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    invoke-interface {v4, v2, p3, p4, p5}, Lcom/android/internal/app/IBatteryStats;->noteMobileRadioPowerState(IJI)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_25} :catch_26

    .line 534
    goto :goto_27

    .line 533
    :catch_26
    move-exception v4

    .line 535
    :goto_27
    const/16 v4, 0xc

    invoke-static {v4, p5, v3, v2}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 540
    :cond_2c
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeWifi(I)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 541
    iget v4, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromWifi:I

    if-eq v4, v2, :cond_46

    .line 542
    iput v2, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromWifi:I

    .line 544
    :try_start_38
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->getBatteryStats()Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    invoke-interface {v4, v2, p3, p4, p5}, Lcom/android/internal/app/IBatteryStats;->noteWifiRadioPowerState(IJI)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3f} :catch_40

    .line 546
    goto :goto_41

    .line 545
    :catch_40
    move-exception v4

    .line 547
    :goto_41
    const/16 v4, 0xd

    invoke-static {v4, p5, v3, v2}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 552
    :cond_46
    if-eqz v0, :cond_4e

    if-nez p6, :cond_4e

    iget-boolean p5, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    if-nez p5, :cond_57

    .line 557
    :cond_4e
    nop

    .line 558
    new-instance p5, Lcom/android/server/-$$Lambda$NetworkManagementService$D43p3Tqq7B3qaMs9AGb_3j0KZd0;

    invoke-direct {p5, p1, p2, p3, p4}, Lcom/android/server/-$$Lambda$NetworkManagementService$D43p3Tqq7B3qaMs9AGb_3j0KZd0;-><init>(IZJ)V

    invoke-direct {p0, p5}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 562
    :cond_57
    const/4 p1, 0x0

    .line 563
    iget-object p3, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    monitor-enter p3

    .line 564
    :try_start_5b
    iget-object p4, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {p4}, Ljava/util/HashMap;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_64

    .line 567
    move p2, v1

    .line 569
    :cond_64
    iget-boolean p4, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z

    if-eq p4, p2, :cond_6b

    .line 570
    iput-boolean p2, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z

    .line 571
    move p1, p2

    .line 573
    :cond_6b
    monitor-exit p3
    :try_end_6c
    .catchall {:try_start_5b .. :try_end_6c} :catchall_72

    .line 574
    if-eqz p1, :cond_71

    .line 575
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->reportNetworkActive()V

    .line 577
    :cond_71
    return-void

    .line 573
    :catchall_72
    move-exception p1

    :try_start_73
    monitor-exit p3
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw p1
.end method

.method private notifyInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    .registers 6

    .line 763
    new-instance v0, Lcom/android/server/-$$Lambda$NetworkManagementService$RVCc8O9RWjyrynN9cyM7inAv-fk;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/-$$Lambda$NetworkManagementService$RVCc8O9RWjyrynN9cyM7inAv-fk;-><init>(Ljava/lang/String;J[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 764
    return-void
.end method

.method private notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    .registers 4

    .line 481
    new-instance v0, Lcom/android/server/-$$Lambda$NetworkManagementService$_L953cbquVj0BMBP1MZlSTm0Umg;

    invoke-direct {v0, p1, p2}, Lcom/android/server/-$$Lambda$NetworkManagementService$_L953cbquVj0BMBP1MZlSTm0Umg;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 482
    return-void
.end method

.method private notifyInterfaceRemoved(Ljava/lang/String;)V
    .registers 3

    .line 497
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    new-instance v0, Lcom/android/server/-$$Lambda$NetworkManagementService$FsR_UD5xfj4hgrwGdX74wq881Bk;

    invoke-direct {v0, p1}, Lcom/android/server/-$$Lambda$NetworkManagementService$FsR_UD5xfj4hgrwGdX74wq881Bk;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 500
    return-void
.end method

.method private notifyInterfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 4

    .line 473
    new-instance v0, Lcom/android/server/-$$Lambda$NetworkManagementService$fl14NirBlFUd6eJkGcL0QWd5-w0;

    invoke-direct {v0, p1, p2}, Lcom/android/server/-$$Lambda$NetworkManagementService$fl14NirBlFUd6eJkGcL0QWd5-w0;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 474
    return-void
.end method

.method private notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 506
    new-instance v0, Lcom/android/server/-$$Lambda$NetworkManagementService$xer7k2RLU4mODjrkZqaX89S9gD8;

    invoke-direct {v0, p1, p2}, Lcom/android/server/-$$Lambda$NetworkManagementService$xer7k2RLU4mODjrkZqaX89S9gD8;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 507
    return-void
.end method

.method private notifyRouteChange(ZLandroid/net/RouteInfo;)V
    .registers 3

    .line 770
    if-eqz p1, :cond_b

    .line 771
    new-instance p1, Lcom/android/server/-$$Lambda$NetworkManagementService$VhSl9D6THA_3jE0unleMmkHavJ0;

    invoke-direct {p1, p2}, Lcom/android/server/-$$Lambda$NetworkManagementService$VhSl9D6THA_3jE0unleMmkHavJ0;-><init>(Landroid/net/RouteInfo;)V

    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    goto :goto_13

    .line 773
    :cond_b
    new-instance p1, Lcom/android/server/-$$Lambda$NetworkManagementService$JKmkb4AIm_PPzQp1XOHOgPPRswo;

    invoke-direct {p1, p2}, Lcom/android/server/-$$Lambda$NetworkManagementService$JKmkb4AIm_PPzQp1XOHOgPPRswo;-><init>(Landroid/net/RouteInfo;)V

    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 775
    :goto_13
    return-void
.end method

.method private prepareNativeDaemon()V
    .registers 9

    .line 650
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 653
    :try_start_3
    const-string/jumbo v1, "net.qtaguid_enabled"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mStrictEnabled:Z

    .line 657
    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    invoke-virtual {p0, v2}, Lcom/android/server/NetworkManagementService;->setDataSaverModeEnabled(Z)Z

    .line 659
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 660
    if-lez v2, :cond_6a

    .line 661
    sget-boolean v3, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v3, :cond_3a

    const-string v3, "NetworkManagement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pushing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " active quota rules"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_3a
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 663
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 664
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 665
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/NetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V

    .line 666
    goto :goto_4a

    .line 669
    :cond_6a
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 670
    if-lez v2, :cond_c1

    .line 671
    sget-boolean v3, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v3, :cond_91

    const-string v3, "NetworkManagement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pushing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " active alert rules"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_91
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 673
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 674
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 675
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/NetworkManagementService;->setInterfaceAlert(Ljava/lang/String;J)V

    .line 676
    goto :goto_a1

    .line 679
    :cond_c1
    nop

    .line 680
    nop

    .line 681
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_c6
    .catchall {:try_start_3 .. :try_end_c6} :catchall_1ea

    .line 682
    :try_start_c6
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 683
    const/4 v4, 0x0

    if-lez v3, :cond_f8

    .line 684
    sget-boolean v5, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v5, :cond_ee

    const-string v5, "NetworkManagement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pushing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " UIDs to metered blacklist rules"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_ee
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    .line 686
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    goto :goto_f9

    .line 683
    :cond_f8
    move-object v3, v4

    .line 689
    :goto_f9
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    .line 690
    if-lez v5, :cond_129

    .line 691
    sget-boolean v4, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v4, :cond_120

    const-string v4, "NetworkManagement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pushing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " UIDs to metered whitelist rules"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_120
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    .line 693
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    .line 695
    :cond_129
    monitor-exit v2
    :try_end_12a
    .catchall {:try_start_c6 .. :try_end_12a} :catchall_1e7

    .line 696
    const/4 v2, 0x0

    if-eqz v3, :cond_142

    .line 697
    move v5, v2

    :goto_12e
    :try_start_12e
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_142

    .line 698
    invoke-virtual {v3, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    .line 699
    invoke-virtual {v3, v5}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    .line 698
    invoke-virtual {p0, v6, v7}, Lcom/android/server/NetworkManagementService;->setUidMeteredNetworkBlacklist(IZ)V

    .line 697
    add-int/lit8 v5, v5, 0x1

    goto :goto_12e

    .line 702
    :cond_142
    if-eqz v4, :cond_159

    .line 703
    move v3, v2

    :goto_145
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_159

    .line 704
    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    .line 705
    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    .line 704
    invoke-virtual {p0, v5, v6}, Lcom/android/server/NetworkManagementService;->setUidMeteredNetworkWhitelist(IZ)V

    .line 703
    add-int/lit8 v3, v3, 0x1

    goto :goto_145

    .line 709
    :cond_159
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .line 710
    if-lez v3, :cond_19e

    .line 711
    sget-boolean v4, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v4, :cond_180

    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pushing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " active UID cleartext policies"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_180
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    .line 713
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    .line 714
    move v4, v2

    :goto_18a
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_19e

    .line 715
    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/android/server/NetworkManagementService;->setUidCleartextNetworkPolicy(II)V

    .line 714
    add-int/lit8 v4, v4, 0x1

    goto :goto_18a

    .line 719
    :cond_19e
    iget-boolean v3, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    invoke-virtual {p0, v3}, Lcom/android/server/NetworkManagementService;->setFirewallEnabled(Z)V

    .line 721
    const-string v3, ""

    invoke-direct {p0, v2, v3}, Lcom/android/server/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 722
    const-string/jumbo v3, "standby "

    const/4 v4, 0x2

    invoke-direct {p0, v4, v3}, Lcom/android/server/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 723
    const-string v3, "dozable "

    invoke-direct {p0, v1, v3}, Lcom/android/server/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 724
    const-string/jumbo v3, "powersave "

    const/4 v5, 0x3

    invoke-direct {p0, v5, v3}, Lcom/android/server/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 725
    const-string v3, "isolated "

    const/4 v6, 0x4

    invoke-direct {p0, v6, v3}, Lcom/android/server/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 727
    new-array v3, v6, [I

    aput v4, v3, v2

    aput v1, v3, v1

    aput v5, v3, v4

    aput v6, v3, v5

    .line 730
    array-length v4, v3

    :goto_1cc
    if-ge v2, v4, :cond_1dc

    aget v5, v3, v2

    .line 731
    invoke-direct {p0, v5}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v6

    if-eqz v6, :cond_1d9

    .line 732
    invoke-virtual {p0, v5, v1}, Lcom/android/server/NetworkManagementService;->setFirewallChainEnabled(IZ)V

    .line 730
    :cond_1d9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1cc

    .line 735
    :cond_1dc
    monitor-exit v0
    :try_end_1dd
    .catchall {:try_start_12e .. :try_end_1dd} :catchall_1ea

    .line 739
    :try_start_1dd
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->getBatteryStats()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->noteNetworkStatsEnabled()V
    :try_end_1e4
    .catch Landroid/os/RemoteException; {:try_start_1dd .. :try_end_1e4} :catch_1e5

    .line 741
    goto :goto_1e6

    .line 740
    :catch_1e5
    move-exception v0

    .line 743
    :goto_1e6
    return-void

    .line 695
    :catchall_1e7
    move-exception v1

    :try_start_1e8
    monitor-exit v2
    :try_end_1e9
    .catchall {:try_start_1e8 .. :try_end_1e9} :catchall_1e7

    :try_start_1e9
    throw v1

    .line 735
    :catchall_1ea
    move-exception v1

    monitor-exit v0
    :try_end_1ec
    .catchall {:try_start_1e9 .. :try_end_1ec} :catchall_1ea

    throw v1
.end method

.method private processPendingAppOnInterfaceLocked(Lcom/android/server/NetworkManagementService$RestrictIf;)V
    .registers 6

    .line 1668
    iget-object v0, p1, Lcom/android/server/NetworkManagementService$RestrictIf;->pending:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 1669
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p1, Lcom/android/server/NetworkManagementService$RestrictIf;->pending:Landroid/util/SparseBooleanArray;

    .line 1670
    const/4 v1, 0x0

    :goto_e
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 1671
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/NetworkManagementService;->restrictAppOnInterfaceLocked(Lcom/android/server/NetworkManagementService$RestrictIf;IZ)V

    .line 1670
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1673
    :cond_22
    return-void
.end method

.method private readRouteList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
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

    .line 1065
    nop

    .line 1066
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1069
    const/4 v1, 0x0

    :try_start_7
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_41
    .catchall {:try_start_7 .. :try_end_c} :catchall_36

    .line 1070
    :try_start_c
    new-instance p1, Ljava/io/DataInputStream;

    invoke-direct {p1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1071
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1076
    :goto_1b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2b

    .line 1077
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_2a} :catch_34
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    goto :goto_1b

    .line 1082
    :cond_2b
    nop

    .line 1084
    :try_start_2c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_48

    .line 1085
    :catch_30
    move-exception p1

    goto :goto_48

    .line 1082
    :catchall_32
    move-exception p1

    goto :goto_38

    .line 1079
    :catch_34
    move-exception p1

    goto :goto_43

    .line 1082
    :catchall_36
    move-exception p1

    move-object v2, v1

    :goto_38
    if-eqz v2, :cond_40

    .line 1084
    :try_start_3a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e

    .line 1085
    :goto_3d
    goto :goto_40

    :catch_3e
    move-exception v0

    goto :goto_3d

    :cond_40
    :goto_40
    throw p1

    .line 1079
    :catch_41
    move-exception p1

    move-object v2, v1

    .line 1082
    :goto_43
    if-eqz v2, :cond_48

    .line 1084
    :try_start_45
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_30

    .line 1089
    :cond_48
    :goto_48
    return-object v0
.end method

.method private reportNetworkActive()V
    .registers 4

    .line 2177
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2179
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_20

    .line 2181
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

    .line 2183
    goto :goto_1d

    .line 2186
    :catchall_15
    move-exception v0

    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0

    .line 2182
    :catch_1c
    move-exception v2

    .line 2179
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2186
    :cond_20
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2187
    nop

    .line 2188
    return-void
.end method

.method private restrictAppOnInterfaceLocked(Lcom/android/server/NetworkManagementService$RestrictIf;IZ)V
    .registers 6

    .line 1621
    iget-object v0, p1, Lcom/android/server/NetworkManagementService$RestrictIf;->ifName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1624
    iget-object p1, p1, Lcom/android/server/NetworkManagementService$RestrictIf;->pending:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1625
    return-void

    .line 1628
    :cond_e
    iget-object v0, p1, Lcom/android/server/NetworkManagementService$RestrictIf;->active:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 1629
    if-ne v0, p3, :cond_18

    .line 1630
    return-void

    .line 1633
    :cond_18
    iget-object v0, p1, Lcom/android/server/NetworkManagementService$RestrictIf;->useCase:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/NetworkManagementService$RestrictIf;->ifName:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/android/server/NetworkManagementService;->setAppOnInterfaceLocked(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1634
    iget-object p1, p1, Lcom/android/server/NetworkManagementService$RestrictIf;->active:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2e

    .line 1638
    :cond_28
    iget-object p1, p1, Lcom/android/server/NetworkManagementService$RestrictIf;->pending:Landroid/util/SparseBooleanArray;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1640
    :goto_2e
    return-void
.end method

.method private setAppOnInterfaceLocked(Ljava/lang/String;Ljava/lang/String;IZ)Z
    .registers 5

    .line 1644
    nop

    .line 1646
    if-eqz p4, :cond_9

    .line 1647
    :try_start_3
    iget-object p4, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p4, p1, p2, p3}, Landroid/net/INetd;->bandwidthAddRestrictAppOnInterface(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_e

    .line 1649
    :cond_9
    iget-object p4, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p4, p1, p2, p3}, Landroid/net/INetd;->bandwidthRemoveRestrictAppOnInterface(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_e} :catch_1f
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_e} :catch_10

    .line 1661
    :goto_e
    const/4 p1, 0x1

    goto :goto_18

    .line 1653
    :catch_10
    move-exception p1

    .line 1656
    iget p2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    sget p3, Landroid/system/OsConstants;->ENETDOWN:I

    if-ne p2, p3, :cond_19

    .line 1657
    const/4 p1, 0x0

    .line 1662
    :goto_18
    return p1

    .line 1659
    :cond_19
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 1651
    :catch_1f
    move-exception p1

    .line 1652
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private setFirewallChainState(IZ)V
    .registers 5

    .line 2455
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2456
    :try_start_3
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2457
    monitor-exit v0

    .line 2458
    return-void

    .line 2457
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method private setFirewallUidRuleLocked(III)V
    .registers 5

    .line 2070
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NetworkManagementService;->updateFirewallUidRuleLocked(III)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2071
    invoke-direct {p0, p1, p3}, Lcom/android/server/NetworkManagementService;->getFirewallRuleType(II)I

    move-result p3

    .line 2073
    :try_start_a
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/INetd;->firewallSetUidRule(III)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_f} :catch_10

    .line 2076
    goto :goto_17

    .line 2074
    :catch_10
    move-exception p1

    .line 2075
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 2078
    :cond_17
    :goto_17
    return-void
.end method

.method private setUidOnMeteredNetworkList(IZZ)V
    .registers 9

    .line 1488
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1493
    :try_start_c
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_6c

    .line 1494
    if-eqz p2, :cond_14

    :try_start_11
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    goto :goto_16

    :cond_14
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    .line 1495
    :goto_16
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    .line 1496
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_69

    .line 1497
    if-ne v3, p3, :cond_20

    .line 1499
    :try_start_1e
    monitor-exit v0

    return-void

    .line 1502
    :cond_20
    const-string v1, "inetd bandwidth"

    const-wide/32 v3, 0x200000

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_6c

    .line 1504
    if-eqz p2, :cond_38

    .line 1505
    if-eqz p3, :cond_32

    .line 1506
    :try_start_2c
    iget-object p2, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p2, p1}, Landroid/net/INetd;->bandwidthAddNaughtyApp(I)V

    goto :goto_45

    .line 1508
    :cond_32
    iget-object p2, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p2, p1}, Landroid/net/INetd;->bandwidthRemoveNaughtyApp(I)V

    goto :goto_45

    .line 1511
    :cond_38
    if-eqz p3, :cond_40

    .line 1512
    iget-object p2, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p2, p1}, Landroid/net/INetd;->bandwidthAddNiceApp(I)V

    goto :goto_45

    .line 1514
    :cond_40
    iget-object p2, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p2, p1}, Landroid/net/INetd;->bandwidthRemoveNiceApp(I)V

    .line 1517
    :goto_45
    iget-object p2, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_48} :catch_5e
    .catch Landroid/os/ServiceSpecificException; {:try_start_2c .. :try_end_48} :catch_5e
    .catchall {:try_start_2c .. :try_end_48} :catchall_5c

    .line 1518
    if-eqz p3, :cond_4f

    .line 1519
    const/4 p3, 0x1

    :try_start_4b
    invoke-virtual {v2, p1, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_52

    .line 1521
    :cond_4f
    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1523
    :goto_52
    monitor-exit p2
    :try_end_53
    .catchall {:try_start_4b .. :try_end_53} :catchall_59

    .line 1527
    :try_start_53
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1528
    nop

    .line 1529
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_53 .. :try_end_58} :catchall_6c

    .line 1530
    return-void

    .line 1523
    :catchall_59
    move-exception p1

    :try_start_5a
    monitor-exit p2
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    :try_start_5b
    throw p1
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_5c} :catch_5e
    .catch Landroid/os/ServiceSpecificException; {:try_start_5b .. :try_end_5c} :catch_5e
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5c

    .line 1527
    :catchall_5c
    move-exception p1

    goto :goto_65

    .line 1524
    :catch_5e
    move-exception p1

    .line 1525
    :try_start_5f
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_65
    .catchall {:try_start_5f .. :try_end_65} :catchall_5c

    .line 1527
    :goto_65
    :try_start_65
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
    :try_end_69
    .catchall {:try_start_65 .. :try_end_69} :catchall_6c

    .line 1496
    :catchall_69
    move-exception p1

    :try_start_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    :try_start_6b
    throw p1

    .line 1529
    :catchall_6c
    move-exception p1

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6c

    throw p1
.end method

.method private syncFirewallChainLocked(ILjava/lang/String;)V
    .registers 6

    .line 611
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 612
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object v1

    .line 618
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v2

    .line 619
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 620
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_56

    .line 621
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_55

    .line 625
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

    const-string p2, "UID rules"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NetworkManagement"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_40
    const/4 p2, 0x0

    :goto_41
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_55

    .line 628
    invoke-virtual {v2, p2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    invoke-virtual {v2, p2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/NetworkManagementService;->setFirewallUidRuleLocked(III)V

    .line 627
    add-int/lit8 p2, p2, 0x1

    goto :goto_41

    .line 631
    :cond_55
    return-void

    .line 620
    :catchall_56
    move-exception p1

    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw p1
.end method

.method private static toStableParcel(Landroid/net/InterfaceConfiguration;Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;
    .registers 4

    .line 880
    new-instance v0, Landroid/net/InterfaceConfigurationParcel;

    invoke-direct {v0}, Landroid/net/InterfaceConfigurationParcel;-><init>()V

    .line 881
    iput-object p1, v0, Landroid/net/InterfaceConfigurationParcel;->ifName:Ljava/lang/String;

    .line 882
    invoke-virtual {p0}, Landroid/net/InterfaceConfiguration;->getHardwareAddress()Ljava/lang/String;

    move-result-object p1

    .line 883
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 884
    iput-object p1, v0, Landroid/net/InterfaceConfigurationParcel;->hwAddr:Ljava/lang/String;

    goto :goto_18

    .line 886
    :cond_14
    const-string p1, ""

    iput-object p1, v0, Landroid/net/InterfaceConfigurationParcel;->hwAddr:Ljava/lang/String;

    .line 888
    :goto_18
    invoke-virtual {p0}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/net/InterfaceConfigurationParcel;->ipv4Addr:Ljava/lang/String;

    .line 889
    invoke-virtual {p0}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result p1

    iput p1, v0, Landroid/net/InterfaceConfigurationParcel;->prefixLength:I

    .line 890
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 891
    invoke-virtual {p0}, Landroid/net/InterfaceConfiguration;->getFlags()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 892
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    goto :goto_3d

    .line 894
    :cond_4d
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    iput-object p0, v0, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    .line 896
    return-object v0
.end method

.method private static toStableParcels([Landroid/net/UidRange;)[Landroid/net/UidRangeParcel;
    .registers 5

    .line 1578
    array-length v0, p0

    new-array v0, v0, [Landroid/net/UidRangeParcel;

    .line 1579
    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_18

    .line 1580
    aget-object v2, p0, v1

    iget v2, v2, Landroid/net/UidRange;->start:I

    aget-object v3, p0, v1

    iget v3, v3, Landroid/net/UidRange;->stop:I

    invoke-static {v2, v3}, Lcom/android/server/NetworkManagementService;->makeUidRangeParcel(II)Landroid/net/UidRangeParcel;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1579
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1582
    :cond_18
    return-object v0
.end method

.method private updateAppOnInterfaceCallback(Lcom/android/server/NetworkManagementService$RestrictIf;Ljava/lang/String;)V
    .registers 9

    .line 1586
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1587
    :try_start_3
    iget-object v1, p1, Lcom/android/server/NetworkManagementService$RestrictIf;->ifName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1588
    iput-object p2, p1, Lcom/android/server/NetworkManagementService$RestrictIf;->ifName:Ljava/lang/String;

    goto :goto_4e

    .line 1589
    :cond_e
    iget-object v1, p1, Lcom/android/server/NetworkManagementService$RestrictIf;->ifName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 1591
    const/4 v1, 0x0

    move v2, v1

    :goto_18
    iget-object v3, p1, Lcom/android/server/NetworkManagementService$RestrictIf;->active:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4c

    .line 1592
    iget-object v3, p1, Lcom/android/server/NetworkManagementService$RestrictIf;->active:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 1593
    iget-object v4, p1, Lcom/android/server/NetworkManagementService$RestrictIf;->active:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    .line 1595
    if-nez v4, :cond_2f

    .line 1596
    goto :goto_49

    .line 1598
    :cond_2f
    iget-object v4, p1, Lcom/android/server/NetworkManagementService$RestrictIf;->useCase:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/NetworkManagementService$RestrictIf;->ifName:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v3, v1}, Lcom/android/server/NetworkManagementService;->setAppOnInterfaceLocked(Ljava/lang/String;Ljava/lang/String;IZ)Z

    .line 1599
    iget-object v4, p1, Lcom/android/server/NetworkManagementService$RestrictIf;->active:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2, v1}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    .line 1602
    iget-object v4, p1, Lcom/android/server/NetworkManagementService$RestrictIf;->pending:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_49

    .line 1603
    iget-object v4, p1, Lcom/android/server/NetworkManagementService$RestrictIf;->pending:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1591
    :cond_49
    :goto_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 1606
    :cond_4c
    iput-object p2, p1, Lcom/android/server/NetworkManagementService$RestrictIf;->ifName:Ljava/lang/String;

    .line 1608
    :cond_4e
    :goto_4e
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->processPendingAppOnInterfaceLocked(Lcom/android/server/NetworkManagementService$RestrictIf;)V

    .line 1609
    monitor-exit v0

    .line 1610
    return-void

    .line 1609
    :catchall_53
    move-exception p1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_53

    throw p1
.end method

.method private updateFirewallUidRuleLocked(III)Z
    .registers 11

    .line 2082
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2083
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object v1

    .line 2085
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 2086
    sget-boolean v4, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v4, :cond_3f

    .line 2087
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

    .line 2090
    :cond_3f
    if-ne v3, p3, :cond_4e

    .line 2091
    sget-boolean p1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz p1, :cond_4c

    const-string p1, "NetworkManagement"

    const-string p2, "!!!!! Skipping change"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    :cond_4c
    monitor-exit v0

    return v2

    .line 2096
    :cond_4e
    invoke-direct {p0, p1, p3}, Lcom/android/server/NetworkManagementService;->getFirewallRuleName(II)Ljava/lang/String;

    move-result-object v4

    .line 2097
    invoke-direct {p0, p1, v3}, Lcom/android/server/NetworkManagementService;->getFirewallRuleName(II)Ljava/lang/String;

    move-result-object p1

    .line 2099
    if-nez p3, :cond_5c

    .line 2100
    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_5f

    .line 2102
    :cond_5c
    invoke-virtual {v1, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2104
    :goto_5f
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_66

    const/4 v2, 0x1

    :cond_66
    monitor-exit v0

    return v2

    .line 2105
    :catchall_68
    move-exception p1

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_3 .. :try_end_6a} :catchall_68

    throw p1
.end method


# virtual methods
.method public addIdleTimer(Ljava/lang/String;II)V
    .registers 7

    .line 1286
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    sget-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_14

    const-string v0, "NetworkManagement"

    const-string v1, "Adding idletimer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    :cond_14
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1291
    :try_start_17
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    .line 1292
    if-eqz v1, :cond_29

    .line 1294
    iget p1, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    .line 1295
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_17 .. :try_end_28} :catchall_59

    return-void

    .line 1299
    :cond_29
    :try_start_29
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Landroid/net/INetd;->idletimerAddInterface(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_32} :catch_52
    .catch Landroid/os/ServiceSpecificException; {:try_start_29 .. :try_end_32} :catch_52
    .catchall {:try_start_29 .. :try_end_32} :catchall_59

    .line 1302
    nop

    .line 1303
    :try_start_33
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    new-instance v2, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    invoke-direct {v2, p2, p3}, Lcom/android/server/NetworkManagementService$IdleTimerParams;-><init>(II)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1306
    invoke-static {p3}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result p1

    if-eqz p1, :cond_46

    .line 1307
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z

    .line 1309
    :cond_46
    iget-object p1, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/-$$Lambda$NetworkManagementService$YKgmK-4MuJjN-VLuMBhmJy1eWj4;

    invoke-direct {p2, p0, p3}, Lcom/android/server/-$$Lambda$NetworkManagementService$YKgmK-4MuJjN-VLuMBhmJy1eWj4;-><init>(Lcom/android/server/NetworkManagementService;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1311
    monitor-exit v0

    .line 1312
    return-void

    .line 1300
    :catch_52
    move-exception p1

    .line 1301
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 1311
    :catchall_59
    move-exception p1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_33 .. :try_end_5b} :catchall_59

    throw p1
.end method

.method public addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V
    .registers 7
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
    const/16 v0, 0x63

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/NetworkManagementService;->modifyInterfaceInNetwork(ZILjava/lang/String;)V

    .line 2382
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 2383
    invoke-virtual {v2}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 2384
    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/NetworkManagementService;->modifyRoute(ZILandroid/net/RouteInfo;)V

    .line 2386
    :cond_1f
    goto :goto_a

    .line 2389
    :cond_20
    new-instance p2, Landroid/net/RouteInfo;

    new-instance v2, Landroid/net/IpPrefix;

    const-string v3, "fe80::/64"

    invoke-direct {v2, v3}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {p2, v2, v3, p1}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0, p2}, Lcom/android/server/NetworkManagementService;->modifyRoute(ZILandroid/net/RouteInfo;)V

    .line 2391
    return-void
.end method

.method public addInterfaceToNetwork(Ljava/lang/String;I)V
    .registers 4

    .line 2281
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2, p1}, Lcom/android/server/NetworkManagementService;->modifyInterfaceInNetwork(ZILjava/lang/String;)V

    .line 2282
    return-void
.end method

.method public addLegacyRouteForNetId(ILandroid/net/RouteInfo;I)V
    .registers 11

    .line 2304
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2306
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getDestinationLinkAddress()Landroid/net/LinkAddress;

    move-result-object v0

    .line 2307
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v3

    .line 2308
    invoke-virtual {v0}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2311
    invoke-virtual {p2}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2312
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p2

    move-object v5, p2

    goto :goto_28

    .line 2314
    :cond_25
    const-string p2, ""

    move-object v5, p2

    .line 2317
    :goto_28
    :try_start_28
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    move v2, p1

    move v6, p3

    invoke-interface/range {v1 .. v6}, Landroid/net/INetd;->networkAddLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2f} :catch_31
    .catch Landroid/os/ServiceSpecificException; {:try_start_28 .. :try_end_2f} :catch_31

    .line 2320
    nop

    .line 2321
    return-void

    .line 2318
    :catch_31
    move-exception p1

    .line 2319
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public addRoute(ILandroid/net/RouteInfo;)V
    .registers 4

    .line 1020
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyRoute(ZILandroid/net/RouteInfo;)V

    .line 1021
    return-void
.end method

.method public addVpnUidRanges(I[Landroid/net/UidRange;)V
    .registers 6

    .line 1832
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-static {p2}, Lcom/android/server/NetworkManagementService;->toStableParcels([Landroid/net/UidRange;)[Landroid/net/UidRangeParcel;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/net/INetd;->networkAddUidRanges(I[Landroid/net/UidRangeParcel;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_14
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_12} :catch_14

    .line 1838
    nop

    .line 1839
    return-void

    .line 1836
    :catch_14
    move-exception p1

    .line 1837
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public allowProtect(I)V
    .registers 5

    .line 2358
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2361
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1}, Landroid/net/INetd;->networkSetProtectAllow(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_e} :catch_10

    .line 2364
    nop

    .line 2365
    return-void

    .line 2362
    :catch_10
    move-exception p1

    .line 2363
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public clearDefaultNetId()V
    .registers 4

    .line 2336
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2339
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0}, Landroid/net/INetd;->networkClearDefault()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_e} :catch_10

    .line 2342
    nop

    .line 2343
    return-void

    .line 2340
    :catch_10
    move-exception v0

    .line 2341
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public clearInterfaceAddresses(Ljava/lang/String;)V
    .registers 5

    .line 980
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1}, Landroid/net/INetd;->interfaceClearAddrs(Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_e} :catch_10

    .line 985
    nop

    .line 986
    return-void

    .line 983
    :catch_10
    move-exception p1

    .line 984
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public denyProtect(I)V
    .registers 5

    .line 2369
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2372
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1}, Landroid/net/INetd;->networkSetProtectDeny(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_e} :catch_10

    .line 2375
    nop

    .line 2376
    return-void

    .line 2373
    :catch_10
    move-exception p1

    .line 2374
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public disableIpv6(Ljava/lang/String;)V
    .registers 5

    .line 1010
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/net/INetd;->interfaceSetEnableIPv6(Ljava/lang/String;Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_f} :catch_11

    .line 1015
    nop

    .line 1016
    return-void

    .line 1013
    :catch_11
    move-exception p1

    .line 1014
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public disableNat(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1276
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1, p2}, Landroid/net/INetd;->tetherRemoveForward(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_e} :catch_10

    .line 1281
    nop

    .line 1282
    return-void

    .line 1279
    :catch_10
    move-exception p1

    .line 1280
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 2192
    iget-object p1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string p3, "NetworkManagement"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 2194
    :cond_b
    const-string p1, "mMobileActivityFromRadio="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 2195
    const-string p1, " mLastPowerStateFromRadio="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 2196
    const-string p1, "mNetworkActive="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2198
    iget-object p1, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2199
    :try_start_2c
    const-string p3, "Active quota ifaces: "

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2200
    const-string p3, "Active alert ifaces: "

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2201
    const-string p3, "Data saver mode: "

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 2202
    iget-object p3, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter p3
    :try_end_55
    .catchall {:try_start_2c .. :try_end_55} :catchall_16b

    .line 2203
    :try_start_55
    const-string v0, "blacklist"

    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/NetworkManagementService;->dumpUidRuleOnQuotaLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseBooleanArray;)V

    .line 2204
    const-string/jumbo v0, "whitelist"

    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/NetworkManagementService;->dumpUidRuleOnQuotaLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseBooleanArray;)V

    .line 2205
    monitor-exit p3
    :try_end_65
    .catchall {:try_start_55 .. :try_end_65} :catchall_168

    .line 2206
    :try_start_65
    monitor-exit p1
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_16b

    .line 2208
    iget-object p3, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter p3

    .line 2209
    :try_start_69
    const-string p1, ""

    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 2211
    const-string p1, "UID firewall standby chain enabled: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 2212
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result p1

    .line 2211
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2213
    const-string/jumbo p1, "standby"

    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 2215
    const-string p1, "UID firewall dozable chain enabled: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2216
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result p1

    .line 2215
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2217
    const-string p1, "dozable"

    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 2219
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UID firewall powersave chain enabled: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    .line 2220
    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2219
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2221
    const-string/jumbo p1, "powersave"

    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 2223
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UID firewall isolated chain enabled: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    .line 2224
    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2223
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2225
    const-string p1, "isolated"

    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallIsolatedRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 2226
    monitor-exit p3
    :try_end_db
    .catchall {:try_start_69 .. :try_end_db} :catchall_165

    .line 2228
    iget-object p1, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2229
    :try_start_de
    const-string p3, "Idle timers:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2230
    iget-object p3, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_ed
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_131

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2231
    const-string v1, "  "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2232
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    .line 2233
    const-string v1, "    timeout="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Lcom/android/server/NetworkManagementService$IdleTimerParams;->timeout:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2234
    const-string v1, " type="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Lcom/android/server/NetworkManagementService$IdleTimerParams;->type:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2235
    const-string v1, " networkCount="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v0, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2236
    goto :goto_ed

    .line 2237
    :cond_131
    monitor-exit p1
    :try_end_132
    .catchall {:try_start_de .. :try_end_132} :catchall_162

    .line 2239
    const-string p1, "Firewall enabled: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2240
    const-string p1, "Netd service status: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2241
    iget-object p1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    if-nez p1, :cond_14b

    .line 2242
    const-string p1, "disconnected"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_161

    .line 2245
    :cond_14b
    :try_start_14b
    invoke-interface {p1}, Landroid/net/INetd;->isAlive()Z

    move-result p1

    .line 2246
    if-eqz p1, :cond_154

    const-string p1, "alive"

    goto :goto_156

    :cond_154
    const-string p1, "dead"

    :goto_156
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_159
    .catch Landroid/os/RemoteException; {:try_start_14b .. :try_end_159} :catch_15a

    .line 2249
    goto :goto_161

    .line 2247
    :catch_15a
    move-exception p1

    .line 2248
    const-string/jumbo p1, "unreachable"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2251
    :goto_161
    return-void

    .line 2237
    :catchall_162
    move-exception p2

    :try_start_163
    monitor-exit p1
    :try_end_164
    .catchall {:try_start_163 .. :try_end_164} :catchall_162

    throw p2

    .line 2226
    :catchall_165
    move-exception p1

    :try_start_166
    monitor-exit p3
    :try_end_167
    .catchall {:try_start_166 .. :try_end_167} :catchall_165

    throw p1

    .line 2205
    :catchall_168
    move-exception p2

    :try_start_169
    monitor-exit p3
    :try_end_16a
    .catchall {:try_start_169 .. :try_end_16a} :catchall_168

    :try_start_16a
    throw p2

    .line 2206
    :catchall_16b
    move-exception p2

    monitor-exit p1
    :try_end_16d
    .catchall {:try_start_16a .. :try_end_16d} :catchall_16b

    throw p2
.end method

.method public enableIpv6(Ljava/lang/String;)V
    .registers 5

    .line 990
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/net/INetd;->interfaceSetEnableIPv6(Ljava/lang/String;Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_f} :catch_11

    .line 995
    nop

    .line 996
    return-void

    .line 993
    :catch_11
    move-exception p1

    .line 994
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public enableNat(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1266
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1, p2}, Landroid/net/INetd;->tetherAddForward(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_e} :catch_10

    .line 1271
    nop

    .line 1272
    return-void

    .line 1269
    :catch_10
    move-exception p1

    .line 1270
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getDnsForwarders()[Ljava/lang/String;
    .registers 4

    .line 1223
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0}, Landroid/net/INetd;->tetherDnsList()[Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_f} :catch_10

    return-object v0

    .line 1226
    :catch_10
    move-exception v0

    .line 1227
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method getInjector()Lcom/android/server/NetworkManagementService$Injector;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2476
    new-instance v0, Lcom/android/server/NetworkManagementService$Injector;

    invoke-direct {v0, p0}, Lcom/android/server/NetworkManagementService$Injector;-><init>(Lcom/android/server/NetworkManagementService;)V

    return-object v0
.end method

.method public getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;
    .registers 5

    .line 917
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1}, Landroid/net/INetd;->interfaceGetCfg(Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    move-result-object p1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_1e
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_f} :catch_1e

    .line 923
    nop

    .line 926
    :try_start_10
    invoke-static {p1}, Lcom/android/server/NetworkManagementService;->fromStableParcel(Landroid/net/InterfaceConfigurationParcel;)Landroid/net/InterfaceConfiguration;

    move-result-object p1
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_14} :catch_15

    .line 927
    return-object p1

    .line 928
    :catch_15
    move-exception p1

    .line 929
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid InterfaceConfigurationParcel"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 921
    :catch_1e
    move-exception p1

    .line 922
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getIpForwardingEnabled()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1113
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0}, Landroid/net/INetd;->ipfwdEnabled()Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_f} :catch_10

    .line 1117
    return v0

    .line 1118
    :catch_10
    move-exception v0

    .line 1119
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNetworkStatsDetail()Landroid/net/NetworkStats;
    .registers 4

    .line 1360
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/server/net/NetworkStatsFactory;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsFactory;->readNetworkStatsDetail()Landroid/net/NetworkStats;

    move-result-object v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_f} :catch_10

    return-object v0

    .line 1363
    :catch_10
    move-exception v0

    .line 1364
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNetworkStatsSummaryDev()Landroid/net/NetworkStats;
    .registers 4

    .line 1340
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/server/net/NetworkStatsFactory;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsFactory;->readNetworkStatsSummaryDev()Landroid/net/NetworkStats;

    move-result-object v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_f} :catch_10

    return-object v0

    .line 1343
    :catch_10
    move-exception v0

    .line 1344
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNetworkStatsSummaryXt()Landroid/net/NetworkStats;
    .registers 4

    .line 1350
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/server/net/NetworkStatsFactory;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsFactory;->readNetworkStatsSummaryXt()Landroid/net/NetworkStats;

    move-result-object v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_f} :catch_10

    return-object v0

    .line 1353
    :catch_10
    move-exception v0

    .line 1354
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNetworkStatsTethering(I)Landroid/net/NetworkStats;
    .registers 10

    .line 1814
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1816
    new-instance v0, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 1817
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter v1

    .line 1818
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

    .line 1820
    :try_start_2c
    invoke-interface {v3, p1}, Landroid/net/ITetheringStatsProvider;->getTetherStats(I)Landroid/net/NetworkStats;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_33} :catch_34
    .catchall {:try_start_2c .. :try_end_33} :catchall_5e

    .line 1824
    goto :goto_5b

    .line 1821
    :catch_34
    move-exception v4

    .line 1822
    :try_start_35
    const-string v5, "NetworkManagement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem reading tethering stats from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    .line 1823
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1822
    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    :goto_5b
    goto :goto_20

    .line 1826
    :cond_5c
    monitor-exit v1

    .line 1827
    return-object v0

    .line 1826
    :catchall_5e
    move-exception p1

    monitor-exit v1
    :try_end_60
    .catchall {:try_start_35 .. :try_end_60} :catchall_5e

    throw p1
.end method

.method public getNetworkStatsUidDetail(I[Ljava/lang/String;)Landroid/net/NetworkStats;
    .registers 6

    .line 1759
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/server/net/NetworkStatsFactory;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;I)Landroid/net/NetworkStats;

    move-result-object p1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_10} :catch_11

    return-object p1

    .line 1762
    :catch_11
    move-exception p1

    .line 1763
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public isBandwidthControlEnabled()Z
    .registers 4

    .line 1753
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    const/4 v0, 0x1

    return v0
.end method

.method public isFirewallEnabled()Z
    .registers 2

    .line 1865
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 1866
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    return v0
.end method

.method public isNetworkActive()Z
    .registers 3

    .line 2171
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 2172
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

    .line 2173
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public isNetworkRestricted(I)Z
    .registers 5

    .line 2415
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2416
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->isNetworkRestrictedInternal(I)Z

    move-result p1

    return p1
.end method

.method public isTetheringStarted()Z
    .registers 4

    .line 1161
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0}, Landroid/net/INetd;->tetherIsEnabled()Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_f} :catch_10

    .line 1165
    return v0

    .line 1166
    :catch_10
    move-exception v0

    .line 1167
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public synthetic lambda$addIdleTimer$12$NetworkManagementService(I)V
    .registers 9

    .line 1309
    nop

    .line 1310
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    .line 1309
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

    .line 1333
    iget v1, p1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->type:I

    .line 1334
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    .line 1333
    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/NetworkManagementService;->notifyInterfaceClassActivity(IZJIZ)V

    return-void
.end method

.method public synthetic lambda$tetherLimitReached$6$NetworkManagementService()V
    .registers 3

    .line 604
    const-string v0, "globalAlert"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/NetworkManagementService;->notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public listInterfaces()[Ljava/lang/String;
    .registers 4

    .line 867
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0}, Landroid/net/INetd;->interfaceGetList()[Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_f} :catch_10

    return-object v0

    .line 870
    :catch_10
    move-exception v0

    .line 871
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public listTetheredInterfaces()[Ljava/lang/String;
    .registers 4

    .line 1200
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0}, Landroid/net/INetd;->tetherInterfaceList()[Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_f} :catch_10

    return-object v0

    .line 1203
    :catch_10
    move-exception v0

    .line 1204
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public registerNetworkActivityListener(Landroid/os/INetworkActivityListener;)V
    .registers 3

    .line 2161
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2162
    return-void
.end method

.method public registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    .registers 5

    .line 440
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 442
    return-void
.end method

.method public registerTetheringStatsProvider(Landroid/net/ITetheringStatsProvider;Ljava/lang/String;)V
    .registers 6

    .line 581
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_STACK"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter v0

    .line 584
    :try_start_f
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    monitor-exit v0

    .line 586
    return-void

    .line 585
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_16

    throw p1
.end method

.method public removeIdleTimer(Ljava/lang/String;)V
    .registers 7

    .line 1316
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    sget-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_14

    const-string v0, "NetworkManagement"

    const-string v1, "Removing idletimer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    :cond_14
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1321
    :try_start_17
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    .line 1322
    if-eqz v1, :cond_50

    iget v2, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_52

    if-lez v2, :cond_2a

    goto :goto_50

    .line 1327
    :cond_2a
    :try_start_2a
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    iget v3, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->timeout:I

    iget v4, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->type:I

    .line 1328
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1327
    invoke-interface {v2, p1, v3, v4}, Landroid/net/INetd;->idletimerRemoveInterface(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_37} :catch_49
    .catch Landroid/os/ServiceSpecificException; {:try_start_2a .. :try_end_37} :catch_49
    .catchall {:try_start_2a .. :try_end_37} :catchall_52

    .line 1331
    nop

    .line 1332
    :try_start_38
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1333
    iget-object p1, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/-$$Lambda$NetworkManagementService$15DusjG2gzn5UASV-lMS3BUUn9c;

    invoke-direct {v2, p0, v1}, Lcom/android/server/-$$Lambda$NetworkManagementService$15DusjG2gzn5UASV-lMS3BUUn9c;-><init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$IdleTimerParams;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1335
    monitor-exit v0

    .line 1336
    return-void

    .line 1329
    :catch_49
    move-exception p1

    .line 1330
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1323
    :cond_50
    :goto_50
    monitor-exit v0

    return-void

    .line 1335
    :catchall_52
    move-exception p1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_38 .. :try_end_54} :catchall_52

    throw p1
.end method

.method public removeInterfaceAlert(Ljava/lang/String;)V
    .registers 5

    .line 1458
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1461
    :try_start_c
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 1463
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_2a

    return-void

    .line 1468
    :cond_16
    :try_start_16
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1}, Landroid/net/INetd;->bandwidthRemoveInterfaceAlert(Ljava/lang/String;)V

    .line 1469
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_20} :catch_23
    .catch Landroid/os/ServiceSpecificException; {:try_start_16 .. :try_end_20} :catch_23
    .catchall {:try_start_16 .. :try_end_20} :catchall_2a

    .line 1472
    nop

    .line 1473
    :try_start_21
    monitor-exit v0

    .line 1474
    return-void

    .line 1470
    :catch_23
    move-exception p1

    .line 1471
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1473
    :catchall_2a
    move-exception p1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method public removeInterfaceFromLocalNetwork(Ljava/lang/String;)V
    .registers 4

    .line 2395
    const/4 v0, 0x0

    const/16 v1, 0x63

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/NetworkManagementService;->modifyInterfaceInNetwork(ZILjava/lang/String;)V

    .line 2396
    return-void
.end method

.method public removeInterfaceFromNetwork(Ljava/lang/String;I)V
    .registers 4

    .line 2286
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p1}, Lcom/android/server/NetworkManagementService;->modifyInterfaceInNetwork(ZILjava/lang/String;)V

    .line 2287
    return-void
.end method

.method public removeInterfaceQuota(Ljava/lang/String;)V
    .registers 10

    .line 1401
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1404
    :try_start_c
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 1406
    monitor-exit v0

    return-void

    .line 1409
    :cond_16
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1410
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_7a

    .line 1414
    :try_start_20
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1}, Landroid/net/INetd;->bandwidthRemoveInterfaceQuota(Ljava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_73
    .catch Landroid/os/ServiceSpecificException; {:try_start_20 .. :try_end_25} :catch_73
    .catchall {:try_start_20 .. :try_end_25} :catchall_7a

    .line 1417
    nop

    .line 1419
    :try_start_26
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_7a

    .line 1420
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

    .line 1422
    const-wide/16 v4, -0x1

    :try_start_41
    invoke-interface {v3, p1, v4, v5}, Landroid/net/ITetheringStatsProvider;->setInterfaceQuota(Ljava/lang/String;J)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_44} :catch_45
    .catchall {:try_start_41 .. :try_end_44} :catchall_70

    .line 1426
    goto :goto_6c

    .line 1423
    :catch_45
    move-exception v4

    .line 1424
    :try_start_46
    const-string v5, "NetworkManagement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem removing tethering data limit on provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    .line 1425
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1424
    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    :goto_6c
    goto :goto_33

    .line 1428
    :cond_6d
    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_46 .. :try_end_6e} :catchall_70

    .line 1429
    :try_start_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_7a

    .line 1430
    return-void

    .line 1428
    :catchall_70
    move-exception p1

    :try_start_71
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    :try_start_72
    throw p1

    .line 1415
    :catch_73
    move-exception p1

    .line 1416
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1429
    :catchall_7a
    move-exception p1

    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_72 .. :try_end_7c} :catchall_7a

    throw p1
.end method

.method public removeRoute(ILandroid/net/RouteInfo;)V
    .registers 4

    .line 1025
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyRoute(ZILandroid/net/RouteInfo;)V

    .line 1026
    return-void
.end method

.method public removeRoutesFromLocalNetwork(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;)I"
        }
    .end annotation

    .line 2400
    nop

    .line 2402
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 2404
    const/16 v3, 0x63

    :try_start_15
    invoke-direct {p0, v0, v3, v2}, Lcom/android/server/NetworkManagementService;->modifyRoute(ZILandroid/net/RouteInfo;)V
    :try_end_18
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_18} :catch_19

    .line 2407
    goto :goto_1c

    .line 2405
    :catch_19
    move-exception v2

    .line 2406
    add-int/lit8 v1, v1, 0x1

    .line 2408
    :goto_1c
    goto :goto_7

    .line 2410
    :cond_1d
    return v1
.end method

.method public removeVpnUidRanges(I[Landroid/net/UidRange;)V
    .registers 6

    .line 1843
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-static {p2}, Lcom/android/server/NetworkManagementService;->toStableParcels([Landroid/net/UidRange;)[Landroid/net/UidRangeParcel;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/net/INetd;->networkRemoveUidRanges(I[Landroid/net/UidRangeParcel;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_14
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_12} :catch_14

    .line 1848
    nop

    .line 1849
    return-void

    .line 1846
    :catch_14
    move-exception p1

    .line 1847
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public restrictAppOnInterface(Ljava/lang/String;IZ)V
    .registers 7

    .line 1614
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1616
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getUseCaseRestrictIf(Ljava/lang/String;)Lcom/android/server/NetworkManagementService$RestrictIf;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NetworkManagementService;->restrictAppOnInterfaceLocked(Lcom/android/server/NetworkManagementService$RestrictIf;IZ)V

    .line 1617
    monitor-exit v0

    .line 1618
    return-void

    .line 1617
    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_15

    throw p1
.end method

.method public setAllowOnlyVpnForUids(Z[Landroid/net/UidRange;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 1678
    const-string v0, "): netd command failed"

    const-string v1, ", "

    const-string/jumbo v2, "setAllowOnlyVpnForUids("

    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v4, "NetworkManagement"

    const-string v5, "android.permission.NETWORK_STACK"

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    :try_start_10
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-static {p2}, Lcom/android/server/NetworkManagementService;->toStableParcels([Landroid/net/UidRange;)[Landroid/net/UidRangeParcel;

    move-result-object v5

    invoke-interface {v3, p1, v5}, Landroid/net/INetd;->networkRejectNonSecureVpn(Z[Landroid/net/UidRangeParcel;)V
    :try_end_19
    .catch Landroid/os/ServiceSpecificException; {:try_start_10 .. :try_end_19} :catch_40
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_1b

    .line 1689
    nop

    .line 1690
    return-void

    .line 1685
    :catch_1b
    move-exception v3

    .line 1686
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1688
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1681
    :catch_40
    move-exception v3

    .line 1682
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1684
    throw v3
.end method

.method public setDataSaverModeEnabled(Z)Z
    .registers 9

    .line 1544
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1546
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

    .line 1547
    :cond_24
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1548
    :try_start_27
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    if-ne v1, p1, :cond_47

    .line 1549
    const-string p1, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDataSaverMode(): already "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 1552
    :cond_47
    const-string v1, "bandwidthEnableDataSaver"

    const-wide/32 v2, 0x200000

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_27 .. :try_end_4f} :catchall_a5

    .line 1554
    :try_start_4f
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1}, Landroid/net/INetd;->bandwidthEnableDataSaver(Z)Z

    move-result v1

    .line 1555
    if-eqz v1, :cond_5a

    .line 1556
    iput-boolean p1, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    goto :goto_76

    .line 1558
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

    .line 1560
    :goto_76
    nop

    .line 1565
    :try_start_77
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_77 .. :try_end_7b} :catchall_a5

    .line 1560
    return v1

    .line 1565
    :catchall_7c
    move-exception p1

    goto :goto_a1

    .line 1561
    :catch_7e
    move-exception v1

    .line 1562
    :try_start_7f
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDataSaverMode("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "): netd command failed"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9b
    .catchall {:try_start_7f .. :try_end_9b} :catchall_7c

    .line 1563
    const/4 p1, 0x0

    .line 1565
    :try_start_9c
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v0

    .line 1563
    return p1

    .line 1565
    :goto_a1
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw p1

    .line 1567
    :catchall_a5
    move-exception p1

    monitor-exit v0
    :try_end_a7
    .catchall {:try_start_9c .. :try_end_a7} :catchall_a5

    throw p1
.end method

.method public setDefaultNetId(I)V
    .registers 5

    .line 2325
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2328
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1}, Landroid/net/INetd;->networkSetDefault(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_e} :catch_10

    .line 2331
    nop

    .line 2332
    return-void

    .line 2329
    :catch_10
    move-exception p1

    .line 2330
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setDnsForwarders(Landroid/net/Network;[Ljava/lang/String;)V
    .registers 6

    .line 1210
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    if-eqz p1, :cond_e

    iget p1, p1, Landroid/net/Network;->netId:I

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    .line 1215
    :goto_f
    :try_start_f
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1, p2}, Landroid/net/INetd;->tetherDnsSet(I[Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_16
    .catch Landroid/os/ServiceSpecificException; {:try_start_f .. :try_end_14} :catch_16

    .line 1218
    nop

    .line 1219
    return-void

    .line 1216
    :catch_16
    move-exception p1

    .line 1217
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public setFirewallChainEnabled(IZ)V
    .registers 6

    .line 1947
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 1948
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1949
    :try_start_6
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_4a

    .line 1950
    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v2

    if-ne v2, p2, :cond_12

    .line 1953
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_47

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_4a

    return-void

    .line 1955
    :cond_12
    :try_start_12
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->setFirewallChainState(IZ)V

    .line 1956
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_47

    .line 1958
    :try_start_16
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallChainName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_4a

    .line 1959
    if-eqz p1, :cond_30

    .line 1964
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v2, p1, p2}, Landroid/net/INetd;->firewallEnableChildChain(IZ)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_29
    .catch Landroid/os/ServiceSpecificException; {:try_start_1c .. :try_end_21} :catch_29
    .catchall {:try_start_1c .. :try_end_21} :catchall_4a

    .line 1967
    nop

    .line 1973
    if-eqz p2, :cond_27

    .line 1974
    :try_start_24
    invoke-direct {p0, p1, v1}, Lcom/android/server/NetworkManagementService;->closeSocketsForFirewallChainLocked(ILjava/lang/String;)V

    .line 1976
    :cond_27
    monitor-exit v0

    .line 1977
    return-void

    .line 1965
    :catch_29
    move-exception p1

    .line 1966
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 1960
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad child chain: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_47
    .catchall {:try_start_24 .. :try_end_47} :catchall_4a

    .line 1956
    :catchall_47
    move-exception p1

    :try_start_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    :try_start_49
    throw p1

    .line 1976
    :catchall_4a
    move-exception p1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4a

    throw p1
.end method

.method public setFirewallEnabled(Z)V
    .registers 4

    .line 1853
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 1855
    :try_start_3
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 1856
    if-eqz p1, :cond_9

    const/4 v1, 0x0

    goto :goto_a

    :cond_9
    const/4 v1, 0x1

    .line 1855
    :goto_a
    invoke-interface {v0, v1}, Landroid/net/INetd;->firewallSetFirewallType(I)V

    .line 1857
    iput-boolean p1, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_f} :catch_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_f} :catch_11

    .line 1860
    nop

    .line 1861
    return-void

    .line 1858
    :catch_11
    move-exception p1

    .line 1859
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setFirewallInterfaceRule(Ljava/lang/String;Z)V
    .registers 4

    .line 1871
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 1872
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1874
    :try_start_8
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 1875
    if-eqz p2, :cond_e

    const/4 p2, 0x1

    goto :goto_f

    :cond_e
    const/4 p2, 0x2

    .line 1874
    :goto_f
    invoke-interface {v0, p1, p2}, Landroid/net/INetd;->firewallSetInterfaceRule(Ljava/lang/String;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_14
    .catch Landroid/os/ServiceSpecificException; {:try_start_8 .. :try_end_12} :catch_14

    .line 1878
    nop

    .line 1879
    return-void

    .line 1876
    :catch_14
    move-exception p1

    .line 1877
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public setFirewallUidRule(III)V
    .registers 5

    .line 2063
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2064
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2065
    :try_start_6
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NetworkManagementService;->setFirewallUidRuleLocked(III)V

    .line 2066
    monitor-exit v0

    .line 2067
    return-void

    .line 2066
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public setFirewallUidRules(I[I[I)V
    .registers 13

    .line 2011
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2012
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2013
    :try_start_6
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_b4

    .line 2014
    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object v2

    .line 2015
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 2017
    array-length v4, p2

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_15
    if-ltz v4, :cond_24

    .line 2018
    aget v6, p2, v4

    .line 2019
    aget v7, p3, v4

    .line 2020
    invoke-direct {p0, p1, v6, v7}, Lcom/android/server/NetworkManagementService;->updateFirewallUidRuleLocked(III)Z

    .line 2021
    invoke-virtual {v3, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2017
    add-int/lit8 v4, v4, -0x1

    goto :goto_15

    .line 2024
    :cond_24
    new-instance p3, Landroid/util/SparseIntArray;

    invoke-direct {p3}, Landroid/util/SparseIntArray;-><init>()V

    .line 2025
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    sub-int/2addr v4, v5

    :goto_2e
    const/4 v6, 0x0

    if-ltz v4, :cond_41

    .line 2026
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 2027
    invoke-virtual {v3, v7}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v8

    if-gez v8, :cond_3e

    .line 2028
    invoke-virtual {p3, v7, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2025
    :cond_3e
    add-int/lit8 v4, v4, -0x1

    goto :goto_2e

    .line 2032
    :cond_41
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    sub-int/2addr v2, v5

    :goto_46
    if-ltz v2, :cond_52

    .line 2033
    invoke-virtual {p3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 2034
    invoke-direct {p0, p1, v3, v6}, Lcom/android/server/NetworkManagementService;->updateFirewallUidRuleLocked(III)Z

    .line 2032
    add-int/lit8 v2, v2, -0x1

    goto :goto_46

    .line 2036
    :cond_52
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_9 .. :try_end_53} :catchall_b1

    .line 2038
    if-eq p1, v5, :cond_90

    const/4 p3, 0x2

    if-eq p1, p3, :cond_88

    const/4 p3, 0x3

    if-eq p1, p3, :cond_80

    const/4 p3, 0x4

    if-eq p1, p3, :cond_78

    .line 2053
    :try_start_5e
    const-string p2, "NetworkManagement"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFirewallUidRules() called on invalid chain: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_98

    .line 2055
    :catch_76
    move-exception p2

    goto :goto_99

    .line 2049
    :cond_78
    iget-object p3, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    const-string v1, "fw_isolated"

    invoke-interface {p3, v1, v6, p2}, Landroid/net/INetd;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z

    .line 2050
    goto :goto_98

    .line 2046
    :cond_80
    iget-object p3, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    const-string v1, "fw_powersave"

    invoke-interface {p3, v1, v5, p2}, Landroid/net/INetd;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z

    .line 2047
    goto :goto_98

    .line 2043
    :cond_88
    iget-object p3, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    const-string v1, "fw_standby"

    invoke-interface {p3, v1, v6, p2}, Landroid/net/INetd;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z

    .line 2044
    goto :goto_98

    .line 2040
    :cond_90
    iget-object p3, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    const-string v1, "fw_dozable"

    invoke-interface {p3, v1, v5, p2}, Landroid/net/INetd;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z
    :try_end_97
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_97} :catch_76
    .catchall {:try_start_5e .. :try_end_97} :catchall_b4

    .line 2041
    nop

    .line 2057
    :goto_98
    goto :goto_af

    .line 2056
    :goto_99
    :try_start_99
    const-string p3, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error flushing firewall chain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2058
    :goto_af
    monitor-exit v0
    :try_end_b0
    .catchall {:try_start_99 .. :try_end_b0} :catchall_b4

    .line 2059
    return-void

    .line 2036
    :catchall_b1
    move-exception p1

    :try_start_b2
    monitor-exit v1
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    :try_start_b3
    throw p1

    .line 2058
    :catchall_b4
    move-exception p1

    monitor-exit v0
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_b4

    throw p1
.end method

.method public setGlobalAlert(J)V
    .registers 6

    .line 1478
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1, p2}, Landroid/net/INetd;->bandwidthSetGlobalAlert(J)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_e} :catch_10

    .line 1484
    nop

    .line 1485
    return-void

    .line 1482
    :catch_10
    move-exception p1

    .line 1483
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public setIPv6AddrGenMode(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 1000
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1002
    :try_start_5
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1, p2}, Landroid/net/INetd;->setIPv6AddrGenMode(Ljava/lang/String;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    .line 1005
    nop

    .line 1006
    return-void

    .line 1003
    :catch_c
    move-exception p1

    .line 1004
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setInterfaceAlert(Ljava/lang/String;J)V
    .registers 7

    .line 1434
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1441
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1442
    :try_start_14
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_50

    if-nez v1, :cond_34

    .line 1448
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/INetd;->bandwidthSetInterfaceAlert(Ljava/lang/String;J)V

    .line 1449
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2a} :catch_2d
    .catch Landroid/os/ServiceSpecificException; {:try_start_1c .. :try_end_2a} :catch_2d
    .catchall {:try_start_1c .. :try_end_2a} :catchall_50

    .line 1452
    nop

    .line 1453
    :try_start_2b
    monitor-exit v0

    .line 1454
    return-void

    .line 1450
    :catch_2d
    move-exception p1

    .line 1451
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 1443
    :cond_34
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iface "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already has alert"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1453
    :catchall_50
    move-exception p1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_2b .. :try_end_52} :catchall_50

    throw p1

    .line 1438
    :cond_53
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "setting alert requires existing quota on iface"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    .registers 6

    .line 935
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    invoke-virtual {p2}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v0

    .line 937
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 941
    invoke-static {p2, p1}, Lcom/android/server/NetworkManagementService;->toStableParcel(Landroid/net/InterfaceConfiguration;Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    move-result-object p1

    .line 944
    :try_start_19
    iget-object p2, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p2, p1}, Landroid/net/INetd;->interfaceSetCfg(Landroid/net/InterfaceConfigurationParcel;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_20
    .catch Landroid/os/ServiceSpecificException; {:try_start_19 .. :try_end_1e} :catch_20

    .line 947
    nop

    .line 948
    return-void

    .line 945
    :catch_20
    move-exception p1

    .line 946
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 938
    :cond_27
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Null LinkAddress given"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInterfaceDown(Ljava/lang/String;)V
    .registers 5

    .line 952
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    .line 954
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->setInterfaceDown()V

    .line 955
    invoke-virtual {p0, p1, v0}, Lcom/android/server/NetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 956
    return-void
.end method

.method public setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V
    .registers 6

    .line 968
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1, p2}, Landroid/net/INetd;->interfaceSetIPv6PrivacyExtensions(Ljava/lang/String;Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_e} :catch_10

    .line 973
    nop

    .line 974
    return-void

    .line 971
    :catch_10
    move-exception p1

    .line 972
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public setInterfaceQuota(Ljava/lang/String;J)V
    .registers 12

    .line 1370
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1373
    :try_start_c
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_91

    if-nez v1, :cond_75

    .line 1379
    :try_start_14
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/INetd;->bandwidthSetInterfaceQuota(Ljava/lang/String;J)V

    .line 1381
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_22} :catch_6e
    .catch Landroid/os/ServiceSpecificException; {:try_start_14 .. :try_end_22} :catch_6e
    .catchall {:try_start_14 .. :try_end_22} :catchall_91

    .line 1384
    nop

    .line 1386
    :try_start_23
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_91

    .line 1387
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

    .line 1389
    :try_start_3c
    invoke-interface {v3, p1, p2, p3}, Landroid/net/ITetheringStatsProvider;->setInterfaceQuota(Ljava/lang/String;J)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_3f} :catch_40
    .catchall {:try_start_3c .. :try_end_3f} :catchall_6b

    .line 1393
    goto :goto_67

    .line 1390
    :catch_40
    move-exception v4

    .line 1391
    :try_start_41
    const-string v5, "NetworkManagement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem setting tethering data limit on provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    .line 1392
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1391
    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    :goto_67
    goto :goto_30

    .line 1395
    :cond_68
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_41 .. :try_end_69} :catchall_6b

    .line 1396
    :try_start_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_91

    .line 1397
    return-void

    .line 1395
    :catchall_6b
    move-exception p1

    :try_start_6c
    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    :try_start_6d
    throw p1

    .line 1382
    :catch_6e
    move-exception p1

    .line 1383
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 1374
    :cond_75
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iface "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already has quota"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1396
    :catchall_91
    move-exception p1

    monitor-exit v0
    :try_end_93
    .catchall {:try_start_6d .. :try_end_93} :catchall_91

    throw p1
.end method

.method public setInterfaceUp(Ljava/lang/String;)V
    .registers 5

    .line 960
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    .line 962
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 963
    invoke-virtual {p0, p1, v0}, Lcom/android/server/NetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 964
    return-void
.end method

.method public setIpForwardingEnabled(Z)V
    .registers 5

    .line 1125
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    const-string/jumbo v0, "tethering"

    if-eqz p1, :cond_14

    .line 1128
    :try_start_e
    iget-object p1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p1, v0}, Landroid/net/INetd;->ipfwdEnableForwarding(Ljava/lang/String;)V

    goto :goto_19

    .line 1130
    :cond_14
    iget-object p1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p1, v0}, Landroid/net/INetd;->ipfwdDisableForwarding(Ljava/lang/String;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_19} :catch_1b
    .catch Landroid/os/ServiceSpecificException; {:try_start_e .. :try_end_19} :catch_1b

    .line 1134
    :goto_19
    nop

    .line 1135
    return-void

    .line 1132
    :catch_1b
    move-exception p1

    .line 1133
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setMtu(Ljava/lang/String;I)V
    .registers 6

    .line 1094
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1, p2}, Landroid/net/INetd;->interfaceSetMtu(Ljava/lang/String;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_e} :catch_10

    .line 1100
    nop

    .line 1101
    return-void

    .line 1098
    :catch_10
    move-exception p1

    .line 1099
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public setNetworkPermission(II)V
    .registers 6

    .line 2347
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2350
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1, p2}, Landroid/net/INetd;->networkSetPermissionForNetwork(II)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_e} :catch_10

    .line 2353
    nop

    .line 2354
    return-void

    .line 2351
    :catch_10
    move-exception p1

    .line 2352
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public setUidCleartextNetworkPolicy(II)V
    .registers 7

    .line 1718
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq v0, p1, :cond_f

    .line 1719
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    :cond_f
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1723
    :try_start_12
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 1724
    if-ne v1, p2, :cond_1d

    .line 1727
    monitor-exit v0

    return-void

    .line 1731
    :cond_1d
    iget-boolean v3, p0, Lcom/android/server/NetworkManagementService;->mStrictEnabled:Z

    if-nez v3, :cond_28

    .line 1734
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1735
    monitor-exit v0

    return-void

    .line 1742
    :cond_28
    if-eqz v1, :cond_2f

    if-eqz p2, :cond_2f

    .line 1744
    invoke-direct {p0, p1, v2}, Lcom/android/server/NetworkManagementService;->applyUidCleartextNetworkPolicy(II)V

    .line 1747
    :cond_2f
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->applyUidCleartextNetworkPolicy(II)V

    .line 1748
    monitor-exit v0

    .line 1749
    return-void

    .line 1748
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_12 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public setUidMeteredNetworkBlacklist(IZ)V
    .registers 4

    .line 1534
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/NetworkManagementService;->setUidOnMeteredNetworkList(IZZ)V

    .line 1535
    return-void
.end method

.method public setUidMeteredNetworkWhitelist(IZ)V
    .registers 4

    .line 1539
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/NetworkManagementService;->setUidOnMeteredNetworkList(IZZ)V

    .line 1540
    return-void
.end method

.method public shutdown()V
    .registers 4

    .line 1106
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "NetworkManagement"

    const-string v2, "android.permission.SHUTDOWN"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    const-string v0, "Shutting down"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    return-void
.end method

.method public startInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1254
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyInterfaceForward(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1256
    return-void
.end method

.method public startTethering([Ljava/lang/String;)V
    .registers 5

    .line 1139
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1}, Landroid/net/INetd;->tetherStart([Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_e} :catch_10

    .line 1146
    nop

    .line 1147
    return-void

    .line 1144
    :catch_10
    move-exception p1

    .line 1145
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public stopInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1260
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyInterfaceForward(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1262
    return-void
.end method

.method public stopTethering()V
    .registers 4

    .line 1151
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0}, Landroid/net/INetd;->tetherStop()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_e} :catch_10

    .line 1156
    nop

    .line 1157
    return-void

    .line 1154
    :catch_10
    move-exception v0

    .line 1155
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public systemReady()V
    .registers 7

    .line 357
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    .line 358
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 360
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 361
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 362
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mRestrictIf:[Lcom/android/server/NetworkManagementService$RestrictIf;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_19
    if-ge v4, v3, :cond_25

    aget-object v5, v2, v4

    .line 363
    iget v5, v5, Lcom/android/server/NetworkManagementService$RestrictIf;->transport:I

    invoke-virtual {v1, v5}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 362
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 365
    :cond_25
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 367
    new-instance v2, Lcom/android/server/NetworkManagementService$1;

    invoke-direct {v2, p0}, Lcom/android/server/NetworkManagementService$1;-><init>(Lcom/android/server/NetworkManagementService;)V

    .line 414
    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 416
    sget-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_5e

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 418
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->prepareNativeDaemon()V

    .line 419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prepared in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkManagement"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    return-void

    .line 423
    :cond_5e
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->prepareNativeDaemon()V

    .line 425
    return-void
.end method

.method public tetherInterface(Ljava/lang/String;)V
    .registers 6

    .line 1173
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1}, Landroid/net/INetd;->tetherInterfaceAdd(Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_29
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_e} :catch_29

    .line 1178
    nop

    .line 1179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1182
    new-instance v1, Landroid/net/RouteInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p1}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1183
    invoke-virtual {p0, p1, v0}, Lcom/android/server/NetworkManagementService;->addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V

    .line 1184
    return-void

    .line 1176
    :catch_29
    move-exception p1

    .line 1177
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public tetherLimitReached(Landroid/net/ITetheringStatsProvider;)V
    .registers 5

    .line 598
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_STACK"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter v0

    .line 600
    :try_start_c
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 601
    monitor-exit v0

    return-void

    .line 604
    :cond_16
    iget-object p1, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$NetworkManagementService$Hs4ibiwzKmd9u0PZ04vysXRExho;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$NetworkManagementService$Hs4ibiwzKmd9u0PZ04vysXRExho;-><init>(Lcom/android/server/NetworkManagementService;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 605
    monitor-exit v0

    .line 606
    return-void

    .line 605
    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_22

    throw p1
.end method

.method public unregisterNetworkActivityListener(Landroid/os/INetworkActivityListener;)V
    .registers 3

    .line 2166
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 2167
    return-void
.end method

.method public unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V
    .registers 5

    .line 446
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 448
    return-void
.end method

.method public unregisterTetheringStatsProvider(Landroid/net/ITetheringStatsProvider;)V
    .registers 5

    .line 590
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_STACK"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter v0

    .line 592
    :try_start_c
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    monitor-exit v0

    .line 594
    return-void

    .line 593
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw p1
.end method

.method public untetherInterface(Ljava/lang/String;)V
    .registers 5

    .line 1188
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1}, Landroid/net/INetd;->tetherInterfaceRemove(Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_15
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_e} :catch_15
    .catchall {:try_start_9 .. :try_end_e} :catchall_13

    .line 1194
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->removeInterfaceFromLocalNetwork(Ljava/lang/String;)V

    .line 1195
    nop

    .line 1196
    return-void

    .line 1194
    :catchall_13
    move-exception v0

    goto :goto_1c

    .line 1191
    :catch_15
    move-exception v0

    .line 1192
    :try_start_16
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_13

    .line 1194
    :goto_1c
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->removeInterfaceFromLocalNetwork(Ljava/lang/String;)V

    throw v0
.end method
