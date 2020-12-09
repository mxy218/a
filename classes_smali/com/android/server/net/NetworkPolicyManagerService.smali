.class public Lcom/android/server/net/NetworkPolicyManagerService;
.super Landroid/net/INetworkPolicyManager$Stub;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;,
        Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;,
        Lcom/android/server/net/NetworkPolicyManagerService$ChainToggleType;,
        Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;,
        Lcom/android/server/net/NetworkPolicyManagerService$RestrictType;,
        Lcom/android/server/net/NetworkPolicyManagerService$Stats;
    }
.end annotation


# static fields
.field private static final ACTION_ALLOW_BACKGROUND:Ljava/lang/String; = "com.android.server.net.action.ALLOW_BACKGROUND"

.field private static final ACTION_SNOOZE_RAPID:Ljava/lang/String; = "com.android.server.net.action.SNOOZE_RAPID"

.field private static final ACTION_SNOOZE_WARNING:Ljava/lang/String; = "com.android.server.net.action.SNOOZE_WARNING"

.field private static final ATTR_APP_ID:Ljava/lang/String; = "appId"

.field private static final ATTR_CYCLE_DAY:Ljava/lang/String; = "cycleDay"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_CYCLE_END:Ljava/lang/String; = "cycleEnd"

.field private static final ATTR_CYCLE_PERIOD:Ljava/lang/String; = "cyclePeriod"

.field private static final ATTR_CYCLE_START:Ljava/lang/String; = "cycleStart"

.field private static final ATTR_CYCLE_TIMEZONE:Ljava/lang/String; = "cycleTimezone"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_INFERRED:Ljava/lang/String; = "inferred"

.field private static final ATTR_LAST_LIMIT_SNOOZE:Ljava/lang/String; = "lastLimitSnooze"

.field private static final ATTR_LAST_SNOOZE:Ljava/lang/String; = "lastSnooze"

.field private static final ATTR_LAST_WARNING_SNOOZE:Ljava/lang/String; = "lastWarningSnooze"

.field private static final ATTR_LIMIT_BEHAVIOR:Ljava/lang/String; = "limitBehavior"

.field private static final ATTR_LIMIT_BYTES:Ljava/lang/String; = "limitBytes"

.field private static final ATTR_METERED:Ljava/lang/String; = "metered"

.field private static final ATTR_NETWORK_ID:Ljava/lang/String; = "networkId"

.field private static final ATTR_NETWORK_TEMPLATE:Ljava/lang/String; = "networkTemplate"

.field private static final ATTR_OWNER_PACKAGE:Ljava/lang/String; = "ownerPackage"

.field private static final ATTR_POLICY:Ljava/lang/String; = "policy"

.field private static final ATTR_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrictBackground"

.field private static final ATTR_SUBSCRIBER_ID:Ljava/lang/String; = "subscriberId"

.field private static final ATTR_SUB_ID:Ljava/lang/String; = "subId"

.field private static final ATTR_SUMMARY:Ljava/lang/String; = "summary"

.field private static final ATTR_TITLE:Ljava/lang/String; = "title"

.field private static final ATTR_UID:Ljava/lang/String; = "uid"

.field private static final ATTR_USAGE_BYTES:Ljava/lang/String; = "usageBytes"

.field private static final ATTR_USAGE_TIME:Ljava/lang/String; = "usageTime"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_WARNING_BYTES:Ljava/lang/String; = "warningBytes"

.field private static final CHAIN_TOGGLE_DISABLE:I = 0x2

.field private static final CHAIN_TOGGLE_ENABLE:I = 0x1

.field private static final CHAIN_TOGGLE_NONE:I = 0x0

.field private static final LOGD:Z

.field private static final LOGV:Z

.field private static final MSG_ADVISE_PERSIST_THRESHOLD:I = 0x7

.field private static final MSG_LIMIT_REACHED:I = 0x5

.field private static final MSG_METERED_IFACES_CHANGED:I = 0x2

.field private static final MSG_METERED_RESTRICTED_PACKAGES_CHANGED:I = 0x11

.field private static final MSG_POLICIES_CHANGED:I = 0xd

.field private static final MSG_REMOVE_INTERFACE_QUOTA:I = 0xb

.field private static final MSG_RESET_FIREWALL_RULES_BY_UID:I = 0xf

.field private static final MSG_RESTRICT_BACKGROUND_CHANGED:I = 0x6

.field private static final MSG_RULES_CHANGED:I = 0x1

.field private static final MSG_SET_NETWORK_TEMPLATE_ENABLED:I = 0x12

.field private static final MSG_SUBSCRIPTION_OVERRIDE:I = 0x10

.field private static final MSG_SUBSCRIPTION_PLANS_CHANGED:I = 0x13

.field private static final MSG_UPDATE_INTERFACE_QUOTA:I = 0xa

.field public static final OPPORTUNISTIC_QUOTA_UNKNOWN:I = -0x1

.field private static final PROP_SUB_PLAN_OWNER:Ljava/lang/String; = "persist.sys.sub_plan_owner"

.field private static final QUOTA_FRAC_JOBS_DEFAULT:F = 0.5f

.field private static final QUOTA_FRAC_MULTIPATH_DEFAULT:F = 0.5f

.field private static final QUOTA_LIMITED_DEFAULT:F = 0.1f

.field private static final QUOTA_UNLIMITED_DEFAULT:J

.field static final TAG:Ljava/lang/String; = "NetworkPolicy"

.field private static final TAG_APP_POLICY:Ljava/lang/String; = "app-policy"

.field private static final TAG_NETWORK_POLICY:Ljava/lang/String; = "network-policy"

.field private static final TAG_POLICY_LIST:Ljava/lang/String; = "policy-list"

.field private static final TAG_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrict-background"

.field private static final TAG_REVOKED_RESTRICT_BACKGROUND:Ljava/lang/String; = "revoked-restrict-background"

.field private static final TAG_SUBSCRIPTION_PLAN:Ljava/lang/String; = "subscription-plan"

.field private static final TAG_UID_POLICY:Ljava/lang/String; = "uid-policy"

.field private static final TAG_WHITELIST:Ljava/lang/String; = "whitelist"

.field public static final TYPE_LIMIT:I = 0x23
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TYPE_LIMIT_SNOOZED:I = 0x24
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TYPE_RAPID:I = 0x2d
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TYPE_RESTRICT_BACKGROUND:I = 0x1

.field private static final TYPE_RESTRICT_POWER:I = 0x2

.field public static final TYPE_WARNING:I = 0x22
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final UID_MSG_GONE:I = 0x65

.field private static final UID_MSG_STATE_CHANGED:I = 0x64

.field private static final VERSION_ADDED_CYCLE:I = 0xb

.field private static final VERSION_ADDED_INFERRED:I = 0x7

.field private static final VERSION_ADDED_METERED:I = 0x4

.field private static final VERSION_ADDED_NETWORK_ID:I = 0x9

.field private static final VERSION_ADDED_RESTRICT_BACKGROUND:I = 0x3

.field private static final VERSION_ADDED_SNOOZE:I = 0x2

.field private static final VERSION_ADDED_TIMEZONE:I = 0x6

.field private static final VERSION_INIT:I = 0x1

.field private static final VERSION_LATEST:I = 0xb

.field private static final VERSION_SPLIT_SNOOZE:I = 0x5

.field private static final VERSION_SWITCH_APP_ID:I = 0x8

.field private static final VERSION_SWITCH_UID:I = 0xa

.field private static final WAIT_FOR_ADMIN_DATA_TIMEOUT_MS:J = 0x2710L


# instance fields
.field private final mActiveNotifs:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityManager:Landroid/app/IActivityManager;

.field private mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field private final mAllowReceiver:Landroid/content/BroadcastReceiver;

.field private final mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mCarrierConfigReceiver:Landroid/content/BroadcastReceiver;

.field private final mClock:Ljava/time/Clock;

.field private mConnManager:Landroid/net/IConnectivityManager;

.field private mConnReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field private mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field volatile mDeviceIdleMode:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field final mFirewallChainStates:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;

.field private final mHandlerCallback:Landroid/os/Handler$Callback;

.field private final mIPm:Landroid/content/pm/IPackageManager;

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/net/INetworkPolicyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadedRestrictBackground:Z

.field private final mLogger:Lcom/android/server/net/NetworkPolicyLogger;

.field private mMergedSubscriberIds:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteredIfaces:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMeteredRestrictedUids:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mNetIdToSubId:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation
.end field

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field private volatile mNetworkManagerReady:Z

.field private final mNetworkMetered:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation
.end field

.field final mNetworkPoliciesSecondLock:Ljava/lang/Object;

.field final mNetworkPolicy:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/NetworkTemplate;",
            "Landroid/net/NetworkPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkRoaming:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation
.end field

.field private mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;

.field private final mOverLimitNotified:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/NetworkTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private final mPolicyFile:Landroid/util/AtomicFile;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock",
            "mNetworkPoliciesSecondLock"
        }
    .end annotation
.end field

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field private final mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field private final mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field private final mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

.field volatile mRestrictBackground:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field private mRestrictBackgroundBeforeBsm:Z

.field volatile mRestrictBackgroundChangedInBsm:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field private mRestrictBackgroundPowerState:Landroid/os/PowerSaveState;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field private final mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field volatile mRestrictPower:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field private final mSnoozeReceiver:Landroid/content/BroadcastReceiver;

.field public final mStatLogger:Lcom/android/internal/util/StatLogger;

.field private final mStatsReceiver:Landroid/content/BroadcastReceiver;

.field private final mSubIdToSubscriberId:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation
.end field

.field final mSubscriptionPlans:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Landroid/telephony/SubscriptionPlan;",
            ">;"
        }
    .end annotation
.end field

.field final mSubscriptionPlansOwner:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuppressDefaultPolicy:Z

.field volatile mSystemReady:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock",
            "mNetworkPoliciesSecondLock"
        }
    .end annotation
.end field

.field final mUidEventHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mUidEventHandlerCallback:Landroid/os/Handler$Callback;

.field private final mUidEventThread:Lcom/android/server/ServiceThread;

.field final mUidFirewallDozableRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field final mUidFirewallIsolatedRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field final mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field final mUidFirewallStandbyRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field private final mUidObserver:Landroid/app/IUidObserver;

.field final mUidPolicy:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field private final mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

.field final mUidRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field final mUidRulesFirstLock:Ljava/lang/Object;

.field final mUidState:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field private mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserReceiver:Landroid/content/BroadcastReceiver;

.field private final mWifiReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 299
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    .line 300
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyLogger;->LOGV:Z

    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 378
    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/net/NetworkPolicyManagerService;->QUOTA_UNLIMITED_DEFAULT:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;)V
    .registers 12

    .line 601
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 602
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->getDefaultClock()Ljava/time/Clock;

    move-result-object v5

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->getDefaultSystemDir()Ljava/io/File;

    move-result-object v6

    .line 601
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;Landroid/content/pm/IPackageManager;Ljava/time/Clock;Ljava/io/File;Z)V

    .line 603
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;Landroid/content/pm/IPackageManager;Ljava/time/Clock;Ljava/io/File;Z)V
    .registers 11

    .line 616
    invoke-direct {p0}, Landroid/net/INetworkPolicyManager$Stub;-><init>()V

    .line 425
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 426
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 439
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    .line 444
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 448
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    .line 451
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    .line 455
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;

    .line 459
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 461
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    .line 463
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 465
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 467
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 469
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallIsolatedRules:Landroid/util/SparseIntArray;

    .line 473
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 485
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 493
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 496
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 503
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 509
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    .line 517
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    .line 522
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    .line 525
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    .line 529
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    .line 533
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    .line 537
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkMetered:Landroid/util/SparseBooleanArray;

    .line 540
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRoaming:Landroid/util/SparseBooleanArray;

    .line 544
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    .line 548
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    .line 551
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:Ljava/util/List;

    .line 558
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    .line 561
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 579
    new-instance v0, Lcom/android/server/net/NetworkPolicyLogger;

    invoke-direct {v0}, Lcom/android/server/net/NetworkPolicyLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    .line 594
    new-instance v0, Lcom/android/internal/util/StatLogger;

    const-string/jumbo v1, "updateNetworkEnabledNL()"

    const-string v2, "isUidNetworkingBlocked()"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/StatLogger;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 921
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$4;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    .line 941
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$5;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    .line 953
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$6;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 973
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$7;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$7;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 992
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$8;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$8;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 1030
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$9;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$9;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    .line 1047
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$10;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$10;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    .line 1061
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$11;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$11;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeReceiver:Landroid/content/BroadcastReceiver;

    .line 1081
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$12;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$12;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    .line 1104
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$13;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$13;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1132
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$14;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$14;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    .line 1489
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$15;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$15;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 1649
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$16;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$16;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigReceiver:Landroid/content/BroadcastReceiver;

    .line 4581
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$17;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$17;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 4717
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$18;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$18;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventHandlerCallback:Landroid/os/Handler$Callback;

    .line 617
    const-string v0, "missing context"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 618
    const-string v0, "missing activityManager"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/IActivityManager;

    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 619
    const-string p2, "missing networkManagement"

    invoke-static {p3, p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/INetworkManagementService;

    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 620
    const-string p2, "deviceidle"

    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 622
    const-string p2, "missing Clock"

    invoke-static {p5, p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/time/Clock;

    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    .line 623
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo p3, "user"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 624
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class p3, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/CarrierConfigManager;

    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 625
    iput-object p4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    .line 627
    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "NetworkPolicy"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 629
    new-instance p3, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object p4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {p3, p2, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 632
    new-instance p2, Lcom/android/server/ServiceThread;

    const-string p3, "NetworkPolicy.uid"

    const/4 p4, -0x2

    const/4 p5, 0x0

    invoke-direct {p2, p3, p4, p5}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventThread:Lcom/android/server/ServiceThread;

    .line 634
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p2}, Lcom/android/server/ServiceThread;->start()V

    .line 635
    new-instance p2, Landroid/os/Handler;

    iget-object p3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p3}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    iget-object p4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventHandler:Landroid/os/Handler;

    .line 637
    iput-boolean p7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    .line 639
    new-instance p2, Landroid/util/AtomicFile;

    new-instance p3, Ljava/io/File;

    const-string/jumbo p4, "netpolicy.xml"

    invoke-direct {p3, p6, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo p4, "net-policy"

    invoke-direct {p2, p3, p4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 641
    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 644
    const-class p1, Lcom/android/server/net/NetworkPolicyManagerInternal;

    new-instance p2, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$1;)V

    invoke-static {p1, p2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 646
    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 297
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/net/NetworkPolicyManagerService;Z)V
    .registers 2

    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 1

    .line 297
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->upgradeWifiMeteredOverrideAL()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;
    .registers 1

    .line 297
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;
    .registers 1

    .line 297
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkMetered:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic access$1400(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z
    .registers 3

    .line 297
    invoke-static {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateCapabilityChange(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;
    .registers 1

    .line 297
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRoaming:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkPolicyLogger;
    .registers 1

    .line 297
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;
    .registers 1

    .line 297
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;)Z
    .registers 3

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyAL(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;)Z
    .registers 3

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeUpdateMobilePolicyCycleAL(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 1

    .line 297
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .registers 2

    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;
    .registers 1

    .line 297
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V
    .registers 4

    .line 297
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchUidRulesChanged(Landroid/net/INetworkPolicyListener;II)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V
    .registers 3

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchMeteredIfacesChanged(Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;
    .registers 1

    .line 297
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkStatsManagerInternal;
    .registers 1

    .line 297
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V
    .registers 3

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchRestrictBackgroundChanged(Landroid/net/INetworkPolicyListener;Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V
    .registers 4

    .line 297
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchUidPoliciesChanged(Landroid/net/INetworkPolicyListener;II)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/Boolean;)V
    .registers 3

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->broadcastRestrictBackgroundChanged(ILjava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V
    .registers 2

    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;J)V
    .registers 4

    .line 297
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuota(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .registers 2

    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->resetUidFirewallRules(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;III)V
    .registers 5

    .line 297
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchSubscriptionOverride(Landroid/net/INetworkPolicyListener;III)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/Set;I)V
    .registers 3

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredRestrictedPackagesInternal(Ljava/util/Set;I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkTemplate;Z)V
    .registers 3

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabledInner(Landroid/net/NetworkTemplate;Z)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;I[Landroid/telephony/SubscriptionPlan;)V
    .registers 4

    .line 297
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchSubscriptionPlansChanged(Landroid/net/INetworkPolicyListener;I[Landroid/telephony/SubscriptionPlan;)V

    return-void
.end method

.method static synthetic access$3600(II)Z
    .registers 2

    .line 297
    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3700(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;
    .registers 1

    .line 297
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .registers 2

    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForTempWhitelistChangeUL(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/Network;)I
    .registers 2

    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getSubIdLocked(Landroid/net/Network;)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 1

    .line 297
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworksInternal()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/net/NetworkPolicyManagerService;I)Landroid/telephony/SubscriptionPlan;
    .registers 2

    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4100(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkTemplate;)I
    .registers 2

    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->findRelevantSubIdNL(Landroid/net/NetworkTemplate;)I

    move-result p0

    return p0
.end method

.method static synthetic access$4200(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    .line 297
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$500()Z
    .registers 1

    .line 297
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .registers 2

    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictionRulesForUidUL(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .registers 2

    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->onUidDeletedUL(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;
    .registers 1

    .line 297
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/net/NetworkPolicyManagerService;I)Z
    .registers 2

    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundWhitelistUidsUL(I)Z

    move-result p0

    return p0
.end method

.method private addDefaultRestrictBackgroundWhitelistUidsUL(I)Z
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 694
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 695
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 696
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getAllowInDataUsageSave()Landroid/util/ArraySet;

    move-result-object v0

    .line 697
    nop

    .line 698
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_12
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v3, v5, :cond_f6

    .line 699
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 700
    sget-boolean v6, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    const-string v7, "NetworkPolicy"

    if-eqz v6, :cond_40

    .line 701
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checking restricted background whitelisting for package "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " and user "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_40
    const/high16 v6, 0x100000

    const/4 v8, 0x1

    :try_start_43
    invoke-virtual {v1, v5, v6, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6
    :try_end_47
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_43 .. :try_end_47} :catch_d8

    .line 710
    nop

    .line 711
    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v9

    if-nez v9, :cond_64

    .line 712
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addDefaultRestrictBackgroundWhitelistUidsUL(): skipping non-privileged app  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    goto/16 :goto_f2

    .line 716
    :cond_64
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    .line 717
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v6, v8}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 718
    sget-boolean v9, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v9, :cond_9d

    .line 719
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Adding uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " (user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") to default restricted background whitelist. Revoked status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    .line 721
    invoke-virtual {v10, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 719
    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_9d
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    if-nez v9, :cond_f2

    .line 723
    sget-boolean v4, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v4, :cond_d2

    .line 724
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adding default package "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") to restrict background whitelist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_d2
    const/4 v4, 0x4

    invoke-direct {p0, v6, v4, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    .line 727
    move v4, v8

    goto :goto_f2

    .line 706
    :catch_d8
    move-exception v6

    .line 707
    sget-boolean v6, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v6, :cond_f1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No ApplicationInfo for package "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_f1
    nop

    .line 698
    :cond_f2
    :goto_f2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_12

    .line 730
    :cond_f6
    return v4
.end method

.method private broadcastRestrictBackgroundChanged(ILjava/lang/Boolean;)V
    .registers 8

    .line 4782
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 4783
    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    .line 4784
    if-eqz p2, :cond_31

    .line 4785
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 4786
    array-length v0, p2

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_31

    aget-object v2, p2, v1

    .line 4787
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4789
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4790
    const/high16 v2, 0x40000000  # 2.0f

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4791
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4786
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 4794
    :cond_31
    return-void
.end method

.method private static buildAllowBackgroundDataIntent()Landroid/content/Intent;
    .registers 2

    .line 5010
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.ALLOW_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static buildNetworkOverLimitIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .registers 4

    .line 5028
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5029
    nop

    .line 5030
    const v1, 0x1040197

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 5029
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5031
    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5032
    const-string p0, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5033
    return-object v0
.end method

.method private static buildSnoozeRapidIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .registers 3

    .line 5021
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.SNOOZE_RAPID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5022
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5023
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5024
    return-object v0
.end method

.method private static buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .registers 3

    .line 5014
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5015
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5016
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5017
    return-object v0
.end method

.method private static buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .registers 4

    .line 5037
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5038
    nop

    .line 5039
    const v1, 0x1040153

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 5038
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5040
    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5041
    const-string p0, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5042
    return-object v0
.end method

.method private cancelNotification(Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;)V
    .registers 4

    .line 1481
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 1482
    invoke-virtual {p1}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->getId()I

    move-result p1

    .line 1481
    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1483
    return-void
.end method

.method private static collectIfaces(Landroid/util/ArraySet;Landroid/net/NetworkState;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/NetworkState;",
            ")V"
        }
    .end annotation

    .line 1788
    iget-object v0, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1789
    if-eqz v0, :cond_b

    .line 1790
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1792
    :cond_b
    iget-object p1, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkProperties;

    .line 1793
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1794
    if-eqz v0, :cond_2a

    .line 1795
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1797
    :cond_2a
    goto :goto_15

    .line 1798
    :cond_2b
    return-void
.end method

.method private static collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V
    .registers 6

    .line 5081
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 5082
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_12

    .line 5083
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5082
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 5085
    :cond_12
    return-void
.end method

.method private static defeatNullable([Landroid/net/NetworkState;)[Landroid/net/NetworkState;
    .registers 1

    .line 5444
    if-eqz p0, :cond_3

    goto :goto_6

    :cond_3
    const/4 p0, 0x0

    new-array p0, p0, [Landroid/net/NetworkState;

    :goto_6
    return-object p0
.end method

.method private dispatchMeteredIfacesChanged(Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V
    .registers 3

    .line 4533
    if-eqz p1, :cond_7

    .line 4535
    :try_start_2
    invoke-interface {p1, p2}, Landroid/net/INetworkPolicyListener;->onMeteredIfacesChanged([Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 4537
    goto :goto_7

    .line 4536
    :catch_6
    move-exception p1

    .line 4539
    :cond_7
    :goto_7
    return-void
.end method

.method private dispatchRestrictBackgroundChanged(Landroid/net/INetworkPolicyListener;Z)V
    .registers 3

    .line 4543
    if-eqz p1, :cond_7

    .line 4545
    :try_start_2
    invoke-interface {p1, p2}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundChanged(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 4547
    goto :goto_7

    .line 4546
    :catch_6
    move-exception p1

    .line 4549
    :cond_7
    :goto_7
    return-void
.end method

.method private dispatchSubscriptionOverride(Landroid/net/INetworkPolicyListener;III)V
    .registers 5

    .line 4563
    if-eqz p1, :cond_7

    .line 4565
    :try_start_2
    invoke-interface {p1, p2, p3, p4}, Landroid/net/INetworkPolicyListener;->onSubscriptionOverride(III)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 4567
    goto :goto_7

    .line 4566
    :catch_6
    move-exception p1

    .line 4569
    :cond_7
    :goto_7
    return-void
.end method

.method private dispatchSubscriptionPlansChanged(Landroid/net/INetworkPolicyListener;I[Landroid/telephony/SubscriptionPlan;)V
    .registers 4

    .line 4573
    if-eqz p1, :cond_7

    .line 4575
    :try_start_2
    invoke-interface {p1, p2, p3}, Landroid/net/INetworkPolicyListener;->onSubscriptionPlansChanged(I[Landroid/telephony/SubscriptionPlan;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 4577
    goto :goto_7

    .line 4576
    :catch_6
    move-exception p1

    .line 4579
    :cond_7
    :goto_7
    return-void
.end method

.method private dispatchUidPoliciesChanged(Landroid/net/INetworkPolicyListener;II)V
    .registers 4

    .line 4553
    if-eqz p1, :cond_7

    .line 4555
    :try_start_2
    invoke-interface {p1, p2, p3}, Landroid/net/INetworkPolicyListener;->onUidPoliciesChanged(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 4557
    goto :goto_7

    .line 4556
    :catch_6
    move-exception p1

    .line 4559
    :cond_7
    :goto_7
    return-void
.end method

.method private dispatchUidRulesChanged(Landroid/net/INetworkPolicyListener;II)V
    .registers 4

    .line 4523
    if-eqz p1, :cond_7

    .line 4525
    :try_start_2
    invoke-interface {p1, p2, p3}, Landroid/net/INetworkPolicyListener;->onUidRulesChanged(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 4527
    goto :goto_7

    .line 4526
    :catch_6
    move-exception p1

    .line 4529
    :cond_7
    :goto_7
    return-void
.end method

.method private enableFirewallChainUL(IZ)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4939
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 4940
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_11

    .line 4942
    return-void

    .line 4944
    :cond_11
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4946
    :try_start_16
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2}, Landroid/os/INetworkManagementService;->setFirewallChainEnabled(IZ)V

    .line 4947
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->firewallChainEnabled(IZ)V
    :try_end_20
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_20} :catch_23
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_20} :catch_21

    goto :goto_2c

    .line 4950
    :catch_21
    move-exception p1

    goto :goto_2d

    .line 4948
    :catch_23
    move-exception p1

    .line 4949
    const-string p2, "NetworkPolicy"

    const-string/jumbo v0, "problem enable firewall chain"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4952
    :goto_2c
    nop

    .line 4953
    :goto_2d
    return-void
.end method

.method private enforceSubscriptionPlanAccess(IILjava/lang/String;)V
    .registers 7

    .line 3038
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p2, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 3042
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3044
    :try_start_9
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/SubscriptionManager;

    .line 3045
    invoke-virtual {p2, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p2

    .line 3046
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v2, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_ab

    .line 3048
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3049
    nop

    .line 3052
    if-eqz p2, :cond_32

    .line 3053
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0, p3}, Landroid/telephony/SubscriptionInfo;->canManageSubscription(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_32

    .line 3054
    return-void

    .line 3059
    :cond_32
    const/4 p2, 0x0

    if-eqz v2, :cond_49

    .line 3060
    nop

    .line 3061
    const-string v0, "config_plans_package_override_string"

    invoke-virtual {v2, v0, p2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3062
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 3063
    invoke-static {v0, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 3064
    return-void

    .line 3069
    :cond_49
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getDefaultCarrierServicePackageName()Ljava/lang/String;

    move-result-object v0

    .line 3070
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 3071
    invoke-static {v0, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 3072
    return-void

    .line 3076
    :cond_5c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.sys.sub_plan_owner."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3077
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7f

    .line 3078
    invoke-static {v0, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 3079
    return-void

    .line 3083
    :cond_7f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fw.sub_plan_owner."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3084
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a1

    .line 3085
    invoke-static {p1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a1

    .line 3086
    return-void

    .line 3090
    :cond_a1
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string p2, "android.permission.MANAGE_SUBSCRIPTION_PLANS"

    const-string p3, "NetworkPolicy"

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3091
    return-void

    .line 3048
    :catchall_ab
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private enforceSubscriptionPlanValidity([Landroid/telephony/SubscriptionPlan;)V
    .registers 12

    .line 3095
    array-length v0, p1

    if-nez v0, :cond_4

    .line 3096
    return-void

    .line 3099
    :cond_4
    nop

    .line 3100
    nop

    .line 3101
    array-length v0, p1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move v4, v1

    move-wide v5, v2

    :goto_c
    if-ge v1, v0, :cond_31

    aget-object v7, p1, v1

    .line 3102
    invoke-virtual {v7}, Landroid/telephony/SubscriptionPlan;->getNetworkTypes()[I

    move-result-object v8

    if-nez v8, :cond_18

    .line 3103
    const/4 v4, 0x1

    goto :goto_26

    .line 3105
    :cond_18
    invoke-virtual {v7}, Landroid/telephony/SubscriptionPlan;->getNetworkTypesBitMask()J

    move-result-wide v8

    and-long/2addr v8, v5

    cmp-long v8, v8, v2

    if-nez v8, :cond_29

    .line 3109
    invoke-virtual {v7}, Landroid/telephony/SubscriptionPlan;->getNetworkTypesBitMask()J

    move-result-wide v7

    or-long/2addr v5, v7

    .line 3101
    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 3106
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Multiple subscription plans defined for a single network type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3115
    :cond_31
    if-eqz v4, :cond_34

    .line 3119
    return-void

    .line 3116
    :cond_34
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No generic subscription plan that applies to all network types."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private enqueueNotification(Landroid/net/NetworkPolicy;IJLandroid/content/pm/ApplicationInfo;)V
    .registers 26

    .line 1344
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    new-instance v6, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;

    invoke-direct {v6, v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkPolicy;I)V

    .line 1345
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v8, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1347
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 1348
    const-wide/16 v9, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1349
    iget-object v9, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const v10, 0x106001c

    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 1352
    iget-object v9, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1355
    const/16 v10, 0x2d

    const v11, 0x1080078

    const/high16 v12, 0x8000000

    const/4 v13, 0x0

    if-eq v2, v10, :cond_152

    const/4 v5, 0x4

    const/16 v10, 0x8

    packed-switch v2, :pswitch_data_1ea

    .line 1466
    return-void

    .line 1408
    :pswitch_44  #0x24
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    if-eq v2, v8, :cond_57

    if-eq v2, v5, :cond_4f

    .line 1416
    return-void

    .line 1413
    :cond_4f
    const v2, 0x10401cd

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1414
    goto :goto_5f

    .line 1410
    :cond_57
    const v2, 0x10401c4

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1411
    nop

    .line 1418
    :goto_5f
    iget-wide v14, v1, Landroid/net/NetworkPolicy;->limitBytes:J

    sub-long/2addr v3, v14

    .line 1419
    const v5, 0x10401c3

    new-array v14, v8, [Ljava/lang/Object;

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1420
    invoke-static {v15, v3, v4, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v13

    .line 1419
    invoke-virtual {v9, v5, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1422
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1423
    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1424
    sget-object v4, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_STATUS:Ljava/lang/String;

    invoke-virtual {v7, v4}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1426
    iget-object v1, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v9, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v1

    .line 1428
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isHeadlessSystemUserBuild()Z

    move-result v4

    if-eqz v4, :cond_9e

    .line 1429
    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    const/high16 v17, 0x8000000

    const/16 v18, 0x0

    sget-object v19, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v16, v1

    invoke-static/range {v14 .. v19}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_1b3

    .line 1433
    :cond_9e
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, v13, v1, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1436
    goto/16 :goto_1b3

    .line 1380
    :pswitch_a9  #0x23
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    if-eq v2, v8, :cond_bc

    if-eq v2, v5, :cond_b4

    .line 1388
    return-void

    .line 1385
    :cond_b4
    const v2, 0x10401ce

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1386
    goto :goto_c4

    .line 1382
    :cond_bc
    const v2, 0x10401c5

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1383
    nop

    .line 1390
    :goto_c4
    const v3, 0x10401c2

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1392
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1393
    const v4, 0x10807d8

    invoke-virtual {v7, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1395
    iget-object v1, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v9, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v1

    .line 1397
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isHeadlessSystemUserBuild()Z

    move-result v4

    if-eqz v4, :cond_f4

    .line 1398
    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    const/high16 v17, 0x8000000

    const/16 v18, 0x0

    sget-object v19, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v16, v1

    invoke-static/range {v14 .. v19}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_1b3

    .line 1402
    :cond_f4
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, v13, v1, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1405
    goto/16 :goto_1b3

    .line 1357
    :pswitch_ff  #0x22
    const v2, 0x10401cc

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1358
    const v5, 0x10401cb

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1359
    invoke-static {v14, v3, v4, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v13

    .line 1358
    invoke-virtual {v9, v5, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1361
    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1363
    iget-object v4, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v4

    .line 1364
    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v13, v4, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1367
    iget-object v1, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v9, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v1

    .line 1369
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isHeadlessSystemUserBuild()Z

    move-result v4

    if-eqz v4, :cond_148

    .line 1370
    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    const/high16 v17, 0x8000000

    const/16 v18, 0x0

    sget-object v19, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v16, v1

    invoke-static/range {v14 .. v19}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_1b3

    .line 1374
    :cond_148
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, v13, v1, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1377
    goto :goto_1b3

    .line 1439
    :cond_152
    const v2, 0x10401c8

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1440
    if-eqz v5, :cond_171

    .line 1441
    const v3, 0x10401c6

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1442
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v13

    .line 1441
    invoke-virtual {v9, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_178

    .line 1444
    :cond_171
    const v3, 0x10401c7

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1447
    :goto_178
    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1449
    iget-object v4, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->buildSnoozeRapidIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v4

    .line 1450
    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v13, v4, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1453
    iget-object v1, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v9, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v1

    .line 1455
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isHeadlessSystemUserBuild()Z

    move-result v4

    if-eqz v4, :cond_1a9

    .line 1456
    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    const/high16 v17, 0x8000000

    const/16 v18, 0x0

    sget-object v19, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v16, v1

    invoke-static/range {v14 .. v19}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_1b3

    .line 1460
    :cond_1a9
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, v13, v1, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1463
    nop

    .line 1470
    :goto_1b3
    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1471
    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1472
    invoke-virtual {v7, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1473
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v1, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 1475
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-virtual {v6}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 1476
    invoke-virtual {v6}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->getId()I

    move-result v3

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1475
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1477
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1478
    return-void

    nop

    :pswitch_data_1ea
    .packed-switch 0x22
        :pswitch_ff  #00000022
        :pswitch_a9  #00000023
        :pswitch_44  #00000024
    .end packed-switch
.end method

.method private ensureActiveMobilePolicyAL()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 2036
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_b

    const-string v0, "NetworkPolicy"

    const-string v1, "ensureActiveMobilePolicyAL()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    if-eqz v0, :cond_10

    return-void

    .line 2039
    :cond_10
    const/4 v0, 0x0

    :goto_11
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 2040
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 2041
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2043
    invoke-direct {p0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyAL(ILjava/lang/String;)Z

    .line 2039
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 2045
    :cond_2d
    return-void
.end method

.method private ensureActiveMobilePolicyAL(ILjava/lang/String;)Z
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 2058
    new-instance v8, Landroid/net/NetworkIdentity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, v8

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 2060
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_15
    const-string v2, "NetworkPolicy"

    if-ltz v0, :cond_50

    .line 2061
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkTemplate;

    .line 2062
    invoke-virtual {v3, v8}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 2063
    sget-boolean p1, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz p1, :cond_4b

    .line 2064
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Found template "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " which matches subscriber "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2065
    invoke-static {p2}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2064
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    :cond_4b
    const/4 p1, 0x0

    return p1

    .line 2060
    :cond_4d
    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    .line 2071
    :cond_50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No policy for subscriber "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; generating default policy"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildDefaultMobilePolicy(ILjava/lang/String;)Landroid/net/NetworkPolicy;

    move-result-object p1

    .line 2074
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->addNetworkPolicyAL(Landroid/net/NetworkPolicy;)V

    .line 2075
    return v1
.end method

.method private findRapidBlame(Landroid/net/NetworkTemplate;JJ)Landroid/content/pm/ApplicationInfo;
    .registers 21

    .line 1263
    move-object v0, p0

    .line 1264
    nop

    .line 1265
    nop

    .line 1267
    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v1

    .line 1268
    nop

    .line 1269
    const-wide/16 v4, 0x0

    move-wide v7, v4

    move-wide v10, v7

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_f
    invoke-virtual {v1}, Landroid/net/NetworkStats;->size()I

    move-result v13

    if-ge v6, v13, :cond_2b

    .line 1270
    invoke-virtual {v1, v6, v9}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v9

    .line 1271
    iget-wide v13, v9, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v2, v9, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v13, v2

    .line 1272
    add-long/2addr v10, v13

    .line 1273
    cmp-long v2, v13, v7

    if-lez v2, :cond_28

    .line 1274
    nop

    .line 1275
    iget v2, v9, Landroid/net/NetworkStats$Entry;->uid:I

    move v12, v2

    move-wide v7, v13

    .line 1269
    :cond_28
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 1281
    :cond_2b
    cmp-long v1, v7, v4

    if-lez v1, :cond_58

    const-wide/16 v1, 0x2

    div-long/2addr v10, v1

    cmp-long v1, v7, v10

    if-lez v1, :cond_58

    .line 1282
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 1283
    if-eqz v1, :cond_58

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_58

    .line 1285
    :try_start_46
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const v2, 0x4c2200

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_56
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_46 .. :try_end_56} :catch_57

    return-object v0

    .line 1288
    :catch_57
    move-exception v0

    .line 1293
    :cond_58
    const/4 v1, 0x0

    return-object v1
.end method

.method private findRelevantSubIdNL(Landroid/net/NetworkTemplate;)I
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 1308
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 1309
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1310
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    .line 1311
    new-instance v2, Landroid/net/NetworkIdentity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 1314
    invoke-virtual {p1, v2}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1315
    return v1

    .line 1308
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1318
    :cond_2e
    const/4 p1, -0x1

    return p1
.end method

.method private static getBooleanDefeatingNullable(Landroid/os/PersistableBundle;Ljava/lang/String;Z)Z
    .registers 3

    .line 5449
    if-eqz p0, :cond_6

    invoke-virtual {p0, p1, p2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    :cond_6
    return p2
.end method

.method private static getDefaultClock()Ljava/time/Clock;
    .registers 5

    .line 610
    new-instance v0, Landroid/os/BestClock;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/time/Clock;

    invoke-static {}, Landroid/os/SystemClock;->currentNetworkTimeClock()Ljava/time/Clock;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 611
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Landroid/os/BestClock;-><init>(Ljava/time/ZoneId;[Ljava/time/Clock;)V

    .line 610
    return-object v0
.end method

.method private static getDefaultSystemDir()Ljava/io/File;
    .registers 3

    .line 606
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .registers 12

    .line 4981
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsManagerInternal;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide p1
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_a

    return-wide p1

    .line 4982
    :catch_a
    move-exception p1

    .line 4983
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to read network stats: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NetworkPolicy"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4984
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method private getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .registers 12

    .line 4990
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsManagerInternal;->getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object p1
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_a

    return-object p1

    .line 4991
    :catch_a
    move-exception p1

    .line 4992
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to read network stats: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NetworkPolicy"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4993
    new-instance p1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    const/4 p4, 0x0

    invoke-direct {p1, p2, p3, p4}, Landroid/net/NetworkStats;-><init>(JI)V

    return-object p1
.end method

.method private getPlatformDefaultLimitBytes()J
    .registers 3

    .line 2089
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private getPlatformDefaultWarningBytes()J
    .registers 6

    .line 2079
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2081
    int-to-long v0, v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_15

    .line 2082
    return-wide v2

    .line 2084
    :cond_15
    const-wide/32 v2, 0x100000

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 5381
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/telephony/SubscriptionPlan;

    .line 5382
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 5383
    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_39

    aget-object v2, p1, v1

    .line 5384
    invoke-virtual {v2}, Landroid/telephony/SubscriptionPlan;->getCycleRule()Landroid/util/RecurrenceRule;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/RecurrenceRule;->isRecurring()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 5386
    return-object v2

    .line 5389
    :cond_1f
    invoke-virtual {v2}, Landroid/telephony/SubscriptionPlan;->cycleIterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    .line 5390
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    invoke-static {v4}, Ljava/time/ZonedDateTime;->now(Ljava/time/Clock;)Ljava/time/ZonedDateTime;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 5391
    return-object v2

    .line 5383
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 5396
    :cond_39
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSubIdLocked(Landroid/net/Network;)I
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 5376
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    iget p1, p1, Landroid/net/Network;->netId:I

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method

.method private getTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4976
    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private getUidForPackage(Ljava/lang/String;I)I
    .registers 5

    .line 5351
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x402000

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result p1
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_d} :catch_e

    return p1

    .line 5353
    :catch_e
    move-exception p1

    .line 5354
    const/4 p1, -0x1

    return p1
.end method

.method private handleRestrictedPackagesChangeUL(Ljava/util/Set;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 5411
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManagerReady:Z

    if-nez v0, :cond_5

    .line 5412
    return-void

    .line 5414
    :cond_5
    if-nez p1, :cond_20

    .line 5415
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 5416
    invoke-direct {p0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 5417
    goto :goto_b

    .line 5418
    :cond_1f
    return-void

    .line 5420
    :cond_20
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5421
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 5422
    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 5424
    :cond_41
    goto :goto_24

    .line 5425
    :cond_42
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_46
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5426
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    .line 5427
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 5429
    :cond_63
    goto :goto_46

    .line 5430
    :cond_64
    return-void
.end method

.method private hasInternetPermissions(I)Z
    .registers 4

    .line 4120
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    const-string v1, "android.permission.INTERNET"

    invoke-interface {v0, v1, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_d

    if-eqz p1, :cond_c

    .line 4122
    const/4 p1, 0x0

    return p1

    .line 4125
    :cond_c
    goto :goto_e

    .line 4124
    :catch_d
    move-exception p1

    .line 4126
    :goto_e
    const/4 p1, 0x1

    return p1
.end method

.method private static hasRule(II)Z
    .registers 2

    .line 5440
    and-int/2addr p0, p1

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method private initService(Ljava/util/concurrent/CountDownLatch;)V
    .registers 11

    .line 734
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "systemReady"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 735
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    .line 738
    const/4 v3, -0x2

    :try_start_12
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 739
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isBandwidthControlEnabled()Z

    move-result v3

    if-nez v3, :cond_29

    .line 740
    const-string p1, "NetworkPolicy"

    const-string v3, "bandwidth controls disabled, unable to enforce policy"

    invoke-static {p1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_1e1

    .line 897
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 898
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 741
    return-void

    .line 744
    :cond_29
    :try_start_29
    const-class v3, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 745
    const-class v3, Lcom/android/server/net/NetworkStatsManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkStatsManagerInternal;

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;

    .line 747
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_40
    .catchall {:try_start_29 .. :try_end_40} :catchall_1e1

    .line 748
    :try_start_40
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_1de

    .line 749
    :try_start_43
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveWhitelistUL()V

    .line 750
    const-class v5, Landroid/os/PowerManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManagerInternal;

    iput-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 751
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v6, Lcom/android/server/net/NetworkPolicyManagerService$1;

    invoke-direct {v6, p0}, Lcom/android/server/net/NetworkPolicyManagerService$1;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-virtual {v5, v6}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 772
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v5

    iget-boolean v5, v5, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 775
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    .line 777
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->waitForAdminData()V

    .line 780
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->readPolicyAL()V

    .line 783
    iget-boolean v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    iput-boolean v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundBeforeBsm:Z

    .line 784
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 v8, 0xa

    .line 785
    invoke-virtual {v7, v8}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundPowerState:Landroid/os/PowerSaveState;

    .line 786
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundPowerState:Landroid/os/PowerSaveState;

    iget-boolean v7, v7, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 788
    if-eqz v7, :cond_88

    iget-boolean v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    if-nez v7, :cond_88

    .line 789
    iput-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    .line 791
    :cond_88
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService$2;

    invoke-direct {v8, p0}, Lcom/android/server/net/NetworkPolicyManagerService$2;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-virtual {v7, v8}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 806
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundWhitelistUidsUL()Z

    move-result v7

    if-eqz v7, :cond_9b

    .line 807
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 810
    :cond_9b
    iget-boolean v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    invoke-direct {p0, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundUL(Z)V

    .line 811
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    .line 812
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 814
    const/4 v7, 0x4

    invoke-direct {p0, v7, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainUL(IZ)V

    .line 815
    monitor-exit v4
    :try_end_ac
    .catchall {:try_start_43 .. :try_end_ac} :catchall_1db

    .line 816
    :try_start_ac
    monitor-exit v3
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_1de

    .line 818
    :try_start_ad
    const-class v3, Landroid/app/ActivityManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManagerInternal;

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;
    :try_end_b7
    .catchall {:try_start_ad .. :try_end_b7} :catchall_1e1

    .line 820
    :try_start_b7
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v5, 0x3

    const-string v7, "android"

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 823
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_c8
    .catch Landroid/os/RemoteException; {:try_start_b7 .. :try_end_c8} :catch_c9
    .catchall {:try_start_b7 .. :try_end_c8} :catchall_1e1

    .line 826
    goto :goto_ca

    .line 824
    :catch_c9
    move-exception v3

    .line 829
    :goto_ca
    :try_start_ca
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 831
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v7, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 834
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 835
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    const-string v6, "android.permission.CONNECTIVITY_INTERNAL"

    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v3, v6, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 838
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 839
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 840
    const-string/jumbo v4, "package"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 841
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v3, v7, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 844
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.UID_REMOVED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5, v7, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 848
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 849
    const-string v4, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 850
    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 851
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v3, v7, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 854
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.server.action.NETWORK_STATS_UPDATED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 855
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    const-string v6, "android.permission.READ_NETWORK_USAGE_HISTORY"

    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v3, v6, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 859
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.server.net.action.ALLOW_BACKGROUND"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 860
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    const-string v6, "android.permission.MANAGE_NETWORK_POLICY"

    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v3, v6, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 863
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v6, "android.permission.MANAGE_NETWORK_POLICY"

    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5, v6, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 865
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.android.server.net.action.SNOOZE_RAPID"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v6, "android.permission.MANAGE_NETWORK_POLICY"

    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5, v6, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 869
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 871
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v3, v7, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 874
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 876
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v3, v7, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 879
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    new-instance v4, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v4}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 880
    invoke-virtual {v4}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 879
    invoke-virtual {v3, v4, v5}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 882
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    new-instance v4, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;

    invoke-direct {v4, p0, v7}, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$1;)V

    invoke-virtual {v3, v4}, Landroid/app/usage/UsageStatsManagerInternal;->addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    .line 885
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionManager;

    new-instance v4, Lcom/android/server/net/NetworkPolicyManagerService$3;

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 886
    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService$3;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/os/Looper;)V

    .line 885
    invoke-virtual {v3, v4}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 894
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1d3
    .catchall {:try_start_ca .. :try_end_1d3} :catchall_1e1

    .line 897
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 898
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 899
    nop

    .line 900
    return-void

    .line 815
    :catchall_1db
    move-exception p1

    :try_start_1dc
    monitor-exit v4
    :try_end_1dd
    .catchall {:try_start_1dc .. :try_end_1dd} :catchall_1db

    :try_start_1dd
    throw p1

    .line 816
    :catchall_1de
    move-exception p1

    monitor-exit v3
    :try_end_1e0
    .catchall {:try_start_1dd .. :try_end_1e0} :catchall_1de

    :try_start_1e0
    throw p1
    :try_end_1e1
    .catchall {:try_start_1e0 .. :try_end_1e1} :catchall_1e1

    .line 897
    :catchall_1e1
    move-exception p1

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 898
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method private isBandwidthControlEnabled()Z
    .registers 4

    .line 4998
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5000
    :try_start_4
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v2
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_13
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 5005
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5000
    return v2

    .line 5005
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 5001
    :catch_13
    move-exception v2

    .line 5003
    const/4 v2, 0x0

    .line 5005
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5003
    return v2
.end method

.method private static isHeadlessSystemUserBuild()Z
    .registers 1

    .line 5453
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->MULTIUSER_HEADLESS_SYSTEM_USER:Z

    return v0
.end method

.method private isRestrictedByAdminUL(I)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 5434
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    .line 5435
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5434
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 5436
    if-eqz v0, :cond_1a

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method

.method private static isSystem(I)Z
    .registers 2

    .line 5138
    const/16 v0, 0x2710

    if-ge p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private isUidForegroundOnRestrictBackgroundUL(I)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 3615
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    .line 3616
    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result p1

    return p1
.end method

.method private isUidForegroundOnRestrictPowerUL(I)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 3621
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    .line 3622
    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    move-result p1

    return p1
.end method

.method static isUidNetworkingBlockedInternal(IIZZLcom/android/server/net/NetworkPolicyLogger;)Z
    .registers 10

    .line 5145
    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isSystem(I)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_c

    .line 5146
    const/4 v1, 0x7

    goto :goto_41

    .line 5148
    :cond_c
    const/16 v0, 0x80

    invoke-static {p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 5149
    const/16 v1, 0x8

    goto :goto_41

    .line 5151
    :cond_17
    const/16 v0, 0x40

    invoke-static {p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 5152
    move v1, v3

    goto :goto_41

    .line 5154
    :cond_21
    if-nez p2, :cond_25

    .line 5155
    move v1, v4

    goto :goto_41

    .line 5157
    :cond_25
    invoke-static {p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result p2

    if-eqz p2, :cond_2c

    .line 5158
    goto :goto_41

    .line 5160
    :cond_2c
    invoke-static {p1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result p2

    if-eqz p2, :cond_34

    .line 5161
    const/4 v1, 0x3

    goto :goto_41

    .line 5163
    :cond_34
    invoke-static {p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 5164
    move v1, v2

    goto :goto_41

    .line 5166
    :cond_3c
    if-eqz p3, :cond_40

    .line 5167
    const/4 v1, 0x5

    goto :goto_41

    .line 5170
    :cond_40
    const/4 v1, 0x6

    .line 5174
    :goto_41
    packed-switch v1, :pswitch_data_54

    .line 5189
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 5180
    :pswitch_4a  #0x1, 0x3, 0x4, 0x6, 0x7
    nop

    .line 5181
    goto :goto_4e

    .line 5186
    :pswitch_4c  #0x0, 0x2, 0x5, 0x8
    nop

    .line 5187
    move v3, v4

    .line 5191
    :goto_4e
    if-eqz p4, :cond_53

    .line 5192
    invoke-virtual {p4, p0, v1}, Lcom/android/server/net/NetworkPolicyLogger;->networkBlocked(II)V

    .line 5195
    :cond_53
    return v3

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_4c  #00000000
        :pswitch_4a  #00000001
        :pswitch_4c  #00000002
        :pswitch_4a  #00000003
        :pswitch_4a  #00000004
        :pswitch_4c  #00000005
        :pswitch_4a  #00000006
        :pswitch_4a  #00000007
        :pswitch_4c  #00000008
    .end packed-switch
.end method

.method private isUidStateForeground(I)Z
    .registers 3

    .line 3627
    const/4 v0, 0x6

    if-gt p1, v0, :cond_5

    const/4 p1, 0x1

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    :goto_6
    return p1
.end method

.method private isUidValidForBlacklistRules(I)Z
    .registers 3

    .line 4033
    const/16 v0, 0x3f5

    if-eq p1, v0, :cond_17

    const/16 v0, 0x3fb

    if-eq p1, v0, :cond_17

    .line 4034
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissions(I)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_17

    .line 4038
    :cond_15
    const/4 p1, 0x0

    return p1

    .line 4035
    :cond_17
    :goto_17
    const/4 p1, 0x1

    return p1
.end method

.method private isUidValidForWhitelistRules(I)Z
    .registers 3

    .line 4042
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissions(I)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method private isWhitelistedFromPowerSaveUL(IZ)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 3793
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 3794
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 3795
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    move v0, v1

    goto :goto_1a

    :cond_19
    :goto_19
    move v0, v2

    .line 3796
    :goto_1a
    if-nez p2, :cond_2a

    .line 3797
    if-nez v0, :cond_29

    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    if-eqz p1, :cond_27

    goto :goto_29

    :cond_27
    move v0, v1

    goto :goto_2a

    :cond_29
    :goto_29
    move v0, v2

    .line 3799
    :cond_2a
    :goto_2a
    return v0
.end method

.method static synthetic lambda$updateNetworks$1(Ljava/util/concurrent/CountDownLatch;)V
    .registers 1

    .line 1519
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1520
    return-void
.end method

.method private maybeUpdateMobilePolicyCycleAL(ILjava/lang/String;)Z
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 1533
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_b

    const-string v0, "NetworkPolicy"

    const-string v1, "maybeUpdateMobilePolicyCycleAL()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    :cond_b
    const/4 v0, 0x0

    .line 1537
    new-instance v9, Landroid/net/NetworkIdentity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, v9

    move-object v4, p2

    invoke-direct/range {v1 .. v8}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 1539
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_21
    if-ltz p2, :cond_41

    .line 1540
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkTemplate;

    .line 1541
    invoke-virtual {v1, v9}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1542
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicy;

    .line 1543
    invoke-direct {p0, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateDefaultMobilePolicyAL(ILandroid/net/NetworkPolicy;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1539
    :cond_3e
    add-int/lit8 p2, p2, -0x1

    goto :goto_21

    .line 1546
    :cond_41
    return v0
.end method

.method private normalizePoliciesNL()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 2804
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL([Landroid/net/NetworkPolicy;)V

    .line 2805
    return-void
.end method

.method private normalizePoliciesNL([Landroid/net/NetworkPolicy;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 2809
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 2810
    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_54

    aget-object v2, p1, v1

    .line 2811
    if-nez v2, :cond_e

    .line 2812
    goto :goto_51

    .line 2816
    :cond_e
    iget-object v3, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:Ljava/util/List;

    invoke-static {v3, v4}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;Ljava/util/List;)Landroid/net/NetworkTemplate;

    move-result-object v3

    iput-object v3, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 2817
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkPolicy;

    .line 2818
    if-eqz v3, :cond_2a

    invoke-virtual {v3, v2}, Landroid/net/NetworkPolicy;->compareTo(Landroid/net/NetworkPolicy;)I

    move-result v4

    if-lez v4, :cond_51

    .line 2819
    :cond_2a
    if-eqz v3, :cond_4a

    .line 2820
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Normalization replaced "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NetworkPolicy"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    :cond_4a
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2810
    :cond_51
    :goto_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2825
    :cond_54
    return-void
.end method

.method private notifyOverLimitNL(Landroid/net/NetworkTemplate;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 1327
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1328
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1329
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1331
    :cond_1a
    return-void
.end method

.method private notifyUnderLimitNL(Landroid/net/NetworkTemplate;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 1335
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1336
    return-void
.end method

.method private onUidDeletedUL(I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4135
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4136
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4137
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4138
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4139
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4140
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallIsolatedRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4141
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4142
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4143
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4144
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4147
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 4148
    return-void
.end method

.method private parseSubId(Landroid/net/NetworkState;)I
    .registers 4

    .line 5360
    nop

    .line 5361
    if-eqz p1, :cond_24

    iget-object v0, p1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_24

    iget-object v0, p1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x0

    .line 5362
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 5363
    iget-object p1, p1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object p1

    .line 5364
    instance-of v0, p1, Landroid/net/StringNetworkSpecifier;

    if-eqz v0, :cond_24

    .line 5366
    :try_start_1a
    check-cast p1, Landroid/net/StringNetworkSpecifier;

    iget-object p1, p1, Landroid/net/StringNetworkSpecifier;->specifier:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_22} :catch_23

    .line 5368
    goto :goto_25

    .line 5367
    :catch_23
    move-exception p1

    .line 5371
    :cond_24
    const/4 p1, -0x1

    :goto_25
    return p1
.end method

.method private readPolicyAL()V
    .registers 31
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock",
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 2173
    move-object/from16 v1, p0

    sget-boolean v2, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    const-string v3, "NetworkPolicy"

    if-eqz v2, :cond_e

    const-string/jumbo v2, "readPolicyAL()"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    :cond_e
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 2177
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 2178
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 2179
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 2181
    nop

    .line 2183
    :try_start_23
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_29} :catch_378
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_29} :catch_36d
    .catchall {:try_start_23 .. :try_end_29} :catchall_368

    .line 2184
    :try_start_29
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 2185
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2189
    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 2192
    nop

    .line 2193
    const/4 v7, 0x1

    move v9, v7

    const/4 v10, 0x0

    .line 2194
    :goto_3f
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    if-eq v11, v7, :cond_2d3

    .line 2195
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12
    :try_end_49
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_49} :catch_365
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_49} :catch_360
    .catchall {:try_start_29 .. :try_end_49} :catchall_35d

    .line 2196
    const-string/jumbo v13, "whitelist"

    const/4 v14, 0x3

    const/4 v15, 0x2

    if-ne v11, v15, :cond_2c3

    .line 2197
    :try_start_50
    const-string/jumbo v11, "policy-list"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_57
    .catch Ljava/io/FileNotFoundException; {:try_start_50 .. :try_end_57} :catch_365
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_57} :catch_360
    .catchall {:try_start_50 .. :try_end_57} :catchall_35d

    if-eqz v11, :cond_7c

    .line 2198
    :try_start_59
    iget-boolean v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 2199
    const-string/jumbo v9, "version"

    invoke-static {v5, v9}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v9

    .line 2200
    if-lt v9, v14, :cond_6f

    const-string/jumbo v11, "restrictBackground"

    .line 2201
    invoke-static {v5, v11}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6f

    move v11, v7

    goto :goto_70

    :cond_6f
    const/4 v11, 0x0

    :goto_70
    iput-boolean v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z
    :try_end_72
    .catch Ljava/io/FileNotFoundException; {:try_start_59 .. :try_end_72} :catch_365
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_72} :catch_77
    .catchall {:try_start_59 .. :try_end_72} :catchall_35d

    .line 2202
    move-object v15, v3

    move v8, v7

    const/4 v2, 0x0

    goto/16 :goto_2cf

    .line 2370
    :catch_77
    move-exception v0

    move-object v1, v0

    move-object v15, v3

    goto/16 :goto_363

    .line 2202
    :cond_7c
    :try_start_7c
    const-string/jumbo v11, "network-policy"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_83
    .catch Ljava/io/FileNotFoundException; {:try_start_7c .. :try_end_83} :catch_365
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_83} :catch_360
    .catchall {:try_start_7c .. :try_end_83} :catchall_35d

    const-string v14, "cyclePeriod"

    const-string v8, "cycleEnd"

    const-string v7, "cycleStart"

    move-object/from16 v16, v3

    if-eqz v11, :cond_169

    .line 2203
    :try_start_8d
    const-string/jumbo v11, "networkTemplate"

    invoke-static {v5, v11}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v11

    .line 2204
    const-string/jumbo v12, "subscriberId"

    const/4 v13, 0x0

    invoke-interface {v5, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2206
    const/16 v2, 0x9

    if-lt v9, v2, :cond_a8

    .line 2207
    const-string/jumbo v2, "networkId"

    invoke-interface {v5, v13, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_a9

    .line 2209
    :cond_a8
    const/4 v2, 0x0

    .line 2212
    :goto_a9
    const/16 v3, 0xb

    if-lt v9, v3, :cond_ce

    .line 2213
    invoke-static {v5, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2214
    invoke-static {v5, v8}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2215
    invoke-static {v5, v14}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2216
    new-instance v13, Landroid/util/RecurrenceRule;

    .line 2217
    invoke-static {v3}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v3

    .line 2218
    invoke-static {v7}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v7

    .line 2219
    invoke-static {v8}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/lang/String;)Ljava/time/Period;

    move-result-object v8

    invoke-direct {v13, v3, v7, v8}, Landroid/util/RecurrenceRule;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    .line 2220
    move-object/from16 v19, v13

    const/4 v8, 0x0

    goto :goto_ec

    .line 2221
    :cond_ce
    const-string v3, "cycleDay"

    invoke-static {v5, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    .line 2223
    const/4 v7, 0x6

    if-lt v9, v7, :cond_df

    .line 2224
    const-string v7, "cycleTimezone"

    const/4 v8, 0x0

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_e2

    .line 2226
    :cond_df
    const/4 v8, 0x0

    const-string v7, "UTC"

    .line 2228
    :goto_e2
    invoke-static {v7}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/net/NetworkPolicy;->buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object v13

    move-object/from16 v19, v13

    .line 2230
    :goto_ec
    const-string/jumbo v3, "warningBytes"

    invoke-static {v5, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v20

    .line 2231
    const-string v3, "limitBytes"

    invoke-static {v5, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v22

    .line 2233
    const/4 v3, 0x5

    if-lt v9, v3, :cond_105

    .line 2234
    const-string v3, "lastLimitSnooze"

    invoke-static {v5, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v13

    move-wide/from16 v26, v13

    goto :goto_112

    .line 2235
    :cond_105
    if-lt v9, v15, :cond_110

    .line 2236
    const-string v3, "lastSnooze"

    invoke-static {v5, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v13

    move-wide/from16 v26, v13

    goto :goto_112

    .line 2238
    :cond_110
    const-wide/16 v26, -0x1

    .line 2241
    :goto_112
    const/4 v3, 0x4

    if-lt v9, v3, :cond_11e

    .line 2242
    const-string v3, "metered"

    invoke-static {v5, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    move/from16 v28, v7

    goto :goto_127

    .line 2244
    :cond_11e
    const/4 v3, 0x1

    if-eq v11, v3, :cond_124

    .line 2249
    const/16 v28, 0x0

    goto :goto_127

    .line 2246
    :cond_124
    nop

    .line 2247
    const/16 v28, 0x1

    .line 2253
    :goto_127
    const/4 v3, 0x5

    if-lt v9, v3, :cond_133

    .line 2254
    const-string v3, "lastWarningSnooze"

    invoke-static {v5, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v13

    move-wide/from16 v24, v13

    goto :goto_135

    .line 2256
    :cond_133
    const-wide/16 v24, -0x1

    .line 2259
    :goto_135
    const/4 v3, 0x7

    if-lt v9, v3, :cond_141

    .line 2260
    const-string v3, "inferred"

    invoke-static {v5, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    move/from16 v29, v3

    goto :goto_143

    .line 2262
    :cond_141
    const/16 v29, 0x0

    .line 2265
    :goto_143
    new-instance v3, Landroid/net/NetworkTemplate;

    invoke-direct {v3, v11, v12, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2267
    invoke-virtual {v3}, Landroid/net/NetworkTemplate;->isPersistable()Z

    move-result v2

    if-eqz v2, :cond_15c

    .line 2268
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    new-instance v7, Landroid/net/NetworkPolicy;

    move-object/from16 v17, v7

    move-object/from16 v18, v3

    invoke-direct/range {v17 .. v29}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;Landroid/util/RecurrenceRule;JJJJZZ)V

    invoke-virtual {v2, v3, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15c
    .catch Ljava/io/FileNotFoundException; {:try_start_8d .. :try_end_15c} :catch_365
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_15c} :catch_162
    .catchall {:try_start_8d .. :try_end_15c} :catchall_35d

    .line 2273
    :cond_15c
    move-object v2, v8

    move-object/from16 v15, v16

    const/4 v8, 0x1

    goto/16 :goto_2cf

    .line 2370
    :catch_162
    move-exception v0

    move-object v1, v0

    move-object v2, v4

    move-object/from16 v15, v16

    goto/16 :goto_371

    .line 2273
    :cond_169
    const/4 v2, 0x0

    :try_start_16a
    const-string/jumbo v3, "subscription-plan"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_171
    .catch Ljava/io/FileNotFoundException; {:try_start_16a .. :try_end_171} :catch_365
    .catch Ljava/lang/Exception; {:try_start_16a .. :try_end_171} :catch_2be
    .catchall {:try_start_16a .. :try_end_171} :catchall_35d

    if-eqz v3, :cond_209

    .line 2274
    :try_start_173
    invoke-static {v5, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2275
    invoke-static {v5, v8}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2276
    invoke-static {v5, v14}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2277
    new-instance v11, Landroid/telephony/SubscriptionPlan$Builder;

    .line 2278
    invoke-static {v3}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v3

    .line 2279
    invoke-static {v7}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v7

    .line 2280
    invoke-static {v8}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/lang/String;)Ljava/time/Period;

    move-result-object v8

    invoke-direct {v11, v3, v7, v8}, Landroid/telephony/SubscriptionPlan$Builder;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    .line 2281
    const-string/jumbo v3, "title"

    invoke-static {v5, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 2282
    const-string/jumbo v3, "summary"

    invoke-static {v5, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/telephony/SubscriptionPlan$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 2284
    const-string v3, "limitBytes"

    const-wide/16 v7, -0x1

    invoke-static {v5, v3, v7, v8}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v12

    .line 2286
    const-string v3, "limitBehavior"

    const/4 v14, -0x1

    invoke-static {v5, v3, v14}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    .line 2288
    cmp-long v14, v12, v7

    if-eqz v14, :cond_1bd

    const/4 v7, -0x1

    if-eq v3, v7, :cond_1bd

    .line 2290
    invoke-virtual {v11, v12, v13, v3}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    .line 2293
    :cond_1bd
    const-string/jumbo v3, "usageBytes"

    const-wide/16 v7, -0x1

    invoke-static {v5, v3, v7, v8}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v12

    .line 2295
    const-string/jumbo v3, "usageTime"

    invoke-static {v5, v3, v7, v8}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v14

    .line 2297
    cmp-long v3, v12, v7

    if-eqz v3, :cond_1d8

    cmp-long v3, v14, v7

    if-eqz v3, :cond_1d8

    .line 2299
    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    .line 2302
    :cond_1d8
    const-string/jumbo v3, "subId"

    invoke-static {v5, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    .line 2303
    invoke-virtual {v11}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v7

    .line 2304
    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    const-class v11, Landroid/telephony/SubscriptionPlan;

    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    .line 2305
    invoke-virtual {v12, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/telephony/SubscriptionPlan;

    .line 2304
    invoke-static {v11, v12, v7}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/telephony/SubscriptionPlan;

    invoke-virtual {v8, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2307
    const-string/jumbo v7, "ownerPackage"

    invoke-static {v5, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2308
    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v8, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_204
    .catch Ljava/io/FileNotFoundException; {:try_start_173 .. :try_end_204} :catch_365
    .catch Ljava/lang/Exception; {:try_start_173 .. :try_end_204} :catch_162
    .catchall {:try_start_173 .. :try_end_204} :catchall_35d

    .line 2310
    move-object/from16 v15, v16

    const/4 v8, 0x1

    goto/16 :goto_2cf

    :cond_209
    :try_start_209
    const-string/jumbo v3, "uid-policy"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_210
    .catch Ljava/io/FileNotFoundException; {:try_start_209 .. :try_end_210} :catch_365
    .catch Ljava/lang/Exception; {:try_start_209 .. :try_end_210} :catch_2be
    .catchall {:try_start_209 .. :try_end_210} :catchall_35d

    const-string/jumbo v7, "unable to apply policy to UID "

    const-string/jumbo v8, "policy"

    const-string/jumbo v11, "uid"

    if-eqz v3, :cond_24c

    .line 2311
    :try_start_21b
    invoke-static {v5, v11}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    .line 2312
    invoke-static {v5, v8}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v8

    .line 2314
    invoke-static {v3}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v11
    :try_end_227
    .catch Ljava/io/FileNotFoundException; {:try_start_21b .. :try_end_227} :catch_365
    .catch Ljava/lang/Exception; {:try_start_21b .. :try_end_227} :catch_2be
    .catchall {:try_start_21b .. :try_end_227} :catchall_35d

    if-eqz v11, :cond_230

    .line 2315
    const/4 v7, 0x0

    :try_start_22a
    invoke-direct {v1, v3, v8, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V
    :try_end_22d
    .catch Ljava/io/FileNotFoundException; {:try_start_22a .. :try_end_22d} :catch_365
    .catch Ljava/lang/Exception; {:try_start_22a .. :try_end_22d} :catch_162
    .catchall {:try_start_22a .. :try_end_22d} :catchall_35d

    move-object/from16 v15, v16

    goto :goto_249

    .line 2317
    :cond_230
    :try_start_230
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; ignoring"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_244
    .catch Ljava/io/FileNotFoundException; {:try_start_230 .. :try_end_244} :catch_365
    .catch Ljava/lang/Exception; {:try_start_230 .. :try_end_244} :catch_2be
    .catchall {:try_start_230 .. :try_end_244} :catchall_35d

    move-object/from16 v15, v16

    :try_start_246
    invoke-static {v15, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    :goto_249
    const/4 v8, 0x1

    goto/16 :goto_2cf

    :cond_24c
    move-object/from16 v15, v16

    const-string v3, "app-policy"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_288

    .line 2320
    const-string v3, "appId"

    invoke-static {v5, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    .line 2321
    invoke-static {v5, v8}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v8

    .line 2325
    const/4 v11, 0x0

    invoke-static {v11, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 2326
    invoke-static {v3}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v12

    if-eqz v12, :cond_26f

    .line 2327
    invoke-direct {v1, v3, v8, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    goto :goto_286

    .line 2329
    :cond_26f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; ignoring"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    :goto_286
    const/4 v8, 0x1

    goto :goto_2cf

    :cond_288
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_291

    .line 2332
    const/4 v8, 0x1

    const/4 v10, 0x1

    goto :goto_2cf

    .line 2333
    :cond_291
    const-string/jumbo v3, "restrict-background"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a6

    if-eqz v10, :cond_2a6

    .line 2334
    invoke-static {v5, v11}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    .line 2335
    const/4 v7, 0x1

    invoke-virtual {v6, v3, v7}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 2336
    const/4 v8, 0x1

    goto :goto_2cf

    :cond_2a6
    const-string/jumbo v3, "revoked-restrict-background"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2bc

    if-eqz v10, :cond_2bc

    .line 2337
    invoke-static {v5, v11}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    .line 2338
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    const/4 v8, 0x1

    invoke-virtual {v7, v3, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2339
    goto :goto_2cf

    .line 2336
    :cond_2bc
    const/4 v8, 0x1

    goto :goto_2cf

    .line 2370
    :catch_2be
    move-exception v0

    move-object/from16 v15, v16

    goto/16 :goto_362

    .line 2340
    :cond_2c3
    move-object v15, v3

    move v8, v7

    const/4 v2, 0x0

    if-ne v11, v14, :cond_2cf

    .line 2341
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2cf

    .line 2342
    const/4 v10, 0x0

    .line 2346
    :cond_2cf
    :goto_2cf
    move v7, v8

    move-object v3, v15

    goto/16 :goto_3f

    .line 2348
    :cond_2d3
    move-object v15, v3

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 2349
    const/4 v3, 0x0

    :goto_2d9
    if-ge v3, v2, :cond_357

    .line 2350
    invoke-virtual {v6, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    .line 2351
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 2352
    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_30c

    .line 2353
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ignoring restrict-background-whitelist for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " because its policy is "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2354
    invoke-static {v7}, Landroid/net/NetworkPolicyManager;->uidPoliciesToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2353
    invoke-static {v15, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    const/4 v8, 0x0

    goto :goto_354

    .line 2357
    :cond_30c
    invoke-static {v5}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v8

    if-eqz v8, :cond_33e

    .line 2358
    or-int/lit8 v7, v7, 0x4

    .line 2359
    sget-boolean v8, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v8, :cond_339

    .line 2360
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "new policy for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Landroid/net/NetworkPolicyManager;->uidPoliciesToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    :cond_339
    const/4 v8, 0x0

    invoke-direct {v1, v5, v7, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    .line 2362
    goto :goto_354

    .line 2363
    :cond_33e
    const/4 v8, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unable to update policy on UID "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_354
    .catch Ljava/io/FileNotFoundException; {:try_start_246 .. :try_end_354} :catch_365
    .catch Ljava/lang/Exception; {:try_start_246 .. :try_end_354} :catch_35b
    .catchall {:try_start_246 .. :try_end_354} :catchall_35d

    .line 2349
    :goto_354
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d9

    .line 2373
    :cond_357
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_380

    .line 2370
    :catch_35b
    move-exception v0

    goto :goto_362

    .line 2373
    :catchall_35d
    move-exception v0

    move-object v1, v0

    goto :goto_384

    .line 2370
    :catch_360
    move-exception v0

    move-object v15, v3

    :goto_362
    move-object v1, v0

    :goto_363
    move-object v2, v4

    goto :goto_371

    .line 2367
    :catch_365
    move-exception v0

    move-object v2, v4

    goto :goto_37a

    .line 2373
    :catchall_368
    move-exception v0

    const/4 v2, 0x0

    :goto_36a
    move-object v1, v0

    move-object v4, v2

    goto :goto_384

    .line 2370
    :catch_36d
    move-exception v0

    move-object v15, v3

    const/4 v2, 0x0

    move-object v1, v0

    .line 2371
    :goto_371
    :try_start_371
    const-string/jumbo v3, "problem reading network policy"

    invoke-static {v15, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37d

    .line 2367
    :catch_378
    move-exception v0

    const/4 v2, 0x0

    .line 2369
    :goto_37a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->upgradeDefaultBackgroundDataUL()V
    :try_end_37d
    .catchall {:try_start_371 .. :try_end_37d} :catchall_382

    .line 2373
    :goto_37d
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2374
    :goto_380
    nop

    .line 2375
    return-void

    .line 2373
    :catchall_382
    move-exception v0

    goto :goto_36a

    :goto_384
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private removeInterfaceQuota(Ljava/lang/String;)V
    .registers 4

    .line 4818
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->removeInterfaceQuota(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_11

    .line 4821
    :catch_6
    move-exception p1

    goto :goto_12

    .line 4819
    :catch_8
    move-exception p1

    .line 4820
    const-string v0, "NetworkPolicy"

    const-string/jumbo v1, "problem removing interface quota"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4823
    :goto_11
    nop

    .line 4824
    :goto_12
    return-void
.end method

.method private removeInterfaceQuotaAsync(Ljava/lang/String;)V
    .registers 4

    .line 4813
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 4814
    return-void
.end method

.method private removeUidStateUL(I)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 3665
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 3666
    if-ltz v0, :cond_2d

    .line 3667
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 3668
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 3669
    const/16 v0, 0x14

    if-eq v1, v0, :cond_2d

    .line 3670
    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictBackgroundRulesOnUidStatusChangedUL(III)V

    .line 3672
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v0, :cond_21

    .line 3673
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    .line 3675
    :cond_21
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eqz v0, :cond_28

    .line 3676
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 3678
    :cond_28
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 3679
    const/4 p1, 0x1

    return p1

    .line 3682
    :cond_2d
    const/4 p1, 0x0

    return p1
.end method

.method private resetUidFirewallRules(I)V
    .registers 5

    .line 4960
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 4961
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 4962
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x3

    .line 4963
    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 4964
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 4965
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, v2}, Landroid/os/INetworkManagementService;->setUidMeteredNetworkWhitelist(IZ)V

    .line 4966
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, v2}, Landroid/os/INetworkManagementService;->setUidMeteredNetworkBlacklist(IZ)V
    :try_end_23
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_23} :catch_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_3e

    .line 4969
    :catch_24
    move-exception p1

    goto :goto_3f

    .line 4967
    :catch_26
    move-exception v0

    .line 4968
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "problem resetting firewall uid rules for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NetworkPolicy"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4971
    :goto_3e
    nop

    .line 4972
    :goto_3f
    return-void
.end method

.method private sendRestrictBackgroundChangedMsg()V
    .registers 5

    .line 2942
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2943
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2944
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2945
    return-void
.end method

.method private setInterfaceQuota(Ljava/lang/String;J)V
    .registers 5

    .line 4804
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/INetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_11

    .line 4807
    :catch_6
    move-exception p1

    goto :goto_12

    .line 4805
    :catch_8
    move-exception p1

    .line 4806
    const-string p2, "NetworkPolicy"

    const-string/jumbo p3, "problem setting interface quota"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4809
    :goto_11
    nop

    .line 4810
    :goto_12
    return-void
.end method

.method private setInterfaceQuotaAsync(Ljava/lang/String;J)V
    .registers 8

    .line 4798
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    shr-long v1, p2, v1

    long-to-int v1, v1

    const-wide/16 v2, -0x1

    and-long/2addr p2, v2

    long-to-int p2, p2

    const/16 p3, 0xa

    invoke-virtual {v0, p3, v1, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4799
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 4800
    return-void
.end method

.method private setMeteredNetworkBlacklist(IZ)V
    .registers 7

    .line 4827
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    const-string v1, "NetworkPolicy"

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMeteredNetworkBlacklist "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4829
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2}, Landroid/os/INetworkManagementService;->setUidMeteredNetworkBlacklist(IZ)V
    :try_end_28
    .catch Ljava/lang/IllegalStateException; {:try_start_23 .. :try_end_28} :catch_2b
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_28} :catch_29

    goto :goto_49

    .line 4832
    :catch_29
    move-exception p1

    goto :goto_4a

    .line 4830
    :catch_2b
    move-exception v0

    .line 4831
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "problem setting blacklist ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ") rules for "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4834
    :goto_49
    nop

    .line 4835
    :goto_4a
    return-void
.end method

.method private setMeteredNetworkWhitelist(IZ)V
    .registers 7

    .line 4838
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    const-string v1, "NetworkPolicy"

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMeteredNetworkWhitelist "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4840
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2}, Landroid/os/INetworkManagementService;->setUidMeteredNetworkWhitelist(IZ)V
    :try_end_28
    .catch Ljava/lang/IllegalStateException; {:try_start_23 .. :try_end_28} :catch_2b
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_28} :catch_29

    goto :goto_49

    .line 4843
    :catch_29
    move-exception p1

    goto :goto_4a

    .line 4841
    :catch_2b
    move-exception v0

    .line 4842
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "problem setting whitelist ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ") rules for "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4845
    :goto_49
    nop

    .line 4846
    :goto_4a
    return-void
.end method

.method private setMeteredRestrictedPackagesInternal(Ljava/util/Set;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 5334
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5335
    :try_start_3
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 5336
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5337
    invoke-direct {p0, v2, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidForPackage(Ljava/lang/String;I)I

    move-result v2

    .line 5338
    if-ltz v2, :cond_25

    .line 5339
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5341
    :cond_25
    goto :goto_c

    .line 5342
    :cond_26
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 5343
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5344
    invoke-direct {p0, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->handleRestrictedPackagesChangeUL(Ljava/util/Set;Ljava/util/Set;)V

    .line 5345
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {p1, v1}, Lcom/android/server/net/NetworkPolicyLogger;->meteredRestrictedPkgsChanged(Ljava/util/Set;)V

    .line 5346
    monitor-exit v0

    .line 5347
    return-void

    .line 5346
    :catchall_3d
    move-exception p1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method private setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V
    .registers 6

    .line 1747
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/16 v2, 0x12

    invoke-virtual {v0, v2, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1748
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1749
    return-void
.end method

.method private setNetworkTemplateEnabledInner(Landroid/net/NetworkTemplate;Z)V
    .registers 18

    .line 1755
    move-object v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_64

    .line 1759
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    .line 1760
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1761
    const/4 v3, 0x0

    move v4, v3

    :goto_12
    :try_start_12
    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_43

    .line 1762
    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1763
    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Ljava/lang/String;

    .line 1765
    new-instance v6, Landroid/net/NetworkIdentity;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object v7, v6

    invoke-direct/range {v7 .. v14}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 1769
    move-object/from16 v7, p1

    invoke-virtual {v7, v6}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 1770
    invoke-virtual {v1, v5}, Landroid/util/IntArray;->add(I)V

    .line 1761
    :cond_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 1773
    :cond_43
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_12 .. :try_end_44} :catchall_61

    .line 1776
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1777
    nop

    :goto_4f
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v2

    if-ge v3, v2, :cond_64

    .line 1778
    invoke-virtual {v1, v3}, Landroid/util/IntArray;->get(I)I

    move-result v2

    .line 1779
    move/from16 v4, p2

    invoke-virtual {v0, v4, v2}, Landroid/telephony/TelephonyManager;->setPolicyDataEnabled(ZI)V

    .line 1777
    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    .line 1773
    :catchall_61
    move-exception v0

    :try_start_62
    monitor-exit v2
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v0

    .line 1782
    :cond_64
    return-void
.end method

.method private setRestrictBackgroundUL(Z)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 2899
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "setRestrictBackgroundUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2901
    :try_start_9
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-ne p1, v2, :cond_28

    .line 2903
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRestrictBackgroundUL: already "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_95

    .line 2937
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2904
    return-void

    .line 2906
    :cond_28
    :try_start_28
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRestrictBackgroundUL(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2907
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 2908
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 2912
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundUL()V
    :try_end_46
    .catchall {:try_start_28 .. :try_end_46} :catchall_95

    .line 2914
    :try_start_46
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-interface {p1, v3}, Landroid/os/INetworkManagementService;->setDataSaverModeEnabled(Z)Z

    move-result p1

    if-nez p1, :cond_6e

    .line 2915
    const-string p1, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not change Data Saver Mode on NMS to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    iput-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_6a} :catch_6f
    .catchall {:try_start_46 .. :try_end_6a} :catchall_95

    .line 2937
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2920
    return-void

    .line 2924
    :cond_6e
    goto :goto_70

    .line 2922
    :catch_6f
    move-exception p1

    .line 2926
    :goto_70
    :try_start_70
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->sendRestrictBackgroundChangedMsg()V

    .line 2927
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {p1, v2, v3}, Lcom/android/server/net/NetworkPolicyLogger;->restrictBackgroundChanged(ZZ)V

    .line 2929
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundPowerState:Landroid/os/PowerSaveState;

    iget-boolean p1, p1, Landroid/os/PowerSaveState;->globalBatterySaverEnabled:Z

    if-eqz p1, :cond_83

    .line 2930
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    .line 2932
    :cond_83
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_86
    .catchall {:try_start_70 .. :try_end_86} :catchall_95

    .line 2933
    :try_start_86
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 2934
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 2935
    monitor-exit p1
    :try_end_8d
    .catchall {:try_start_86 .. :try_end_8d} :catchall_92

    .line 2937
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2938
    nop

    .line 2939
    return-void

    .line 2935
    :catchall_92
    move-exception v2

    :try_start_93
    monitor-exit p1
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    :try_start_94
    throw v2
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_95

    .line 2937
    :catchall_95
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method private setUidFirewallRule(III)V
    .registers 8

    .line 4906
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 4907
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUidFirewallRule: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4911
    :cond_2c
    const/4 v2, 0x1

    if-ne p1, v2, :cond_37

    .line 4912
    :try_start_2f
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_51

    .line 4930
    :catchall_35
    move-exception p1

    goto :goto_6d

    .line 4913
    :cond_37
    const/4 v2, 0x2

    if-ne p1, v2, :cond_40

    .line 4914
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_51

    .line 4915
    :cond_40
    const/4 v2, 0x3

    if-ne p1, v2, :cond_49

    .line 4916
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_51

    .line 4917
    :cond_49
    const/4 v2, 0x4

    if-ne p1, v2, :cond_51

    .line 4918
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallIsolatedRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_51
    .catchall {:try_start_2f .. :try_end_51} :catchall_35

    .line 4922
    :cond_51
    :goto_51
    :try_start_51
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, p2, p3}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 4923
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyLogger;->uidFirewallRuleChanged(III)V
    :try_end_5b
    .catch Ljava/lang/IllegalStateException; {:try_start_51 .. :try_end_5b} :catch_5e
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_5b} :catch_5c
    .catchall {:try_start_51 .. :try_end_5b} :catchall_35

    .line 4928
    :goto_5b
    goto :goto_68

    .line 4926
    :catch_5c
    move-exception p1

    goto :goto_68

    .line 4924
    :catch_5e
    move-exception p1

    .line 4925
    :try_start_5f
    const-string p2, "NetworkPolicy"

    const-string/jumbo p3, "problem setting firewall uid rules"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_35

    goto :goto_5b

    .line 4930
    :goto_68
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4931
    nop

    .line 4932
    return-void

    .line 4930
    :goto_6d
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method private setUidFirewallRulesUL(ILandroid/util/SparseIntArray;)V
    .registers 7

    .line 4886
    :try_start_0
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 4887
    new-array v1, v0, [I

    .line 4888
    new-array v2, v0, [I

    .line 4889
    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_1b

    .line 4890
    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    aput v3, v1, v0

    .line 4891
    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    aput v3, v2, v0

    .line 4889
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 4893
    :cond_1b
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {p2, p1, v1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRules(I[I[I)V

    .line 4894
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {p2, p1, v1, v2}, Lcom/android/server/net/NetworkPolicyLogger;->firewallRulesChanged(I[I[I)V
    :try_end_25
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_25} :catch_28
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_31

    .line 4897
    :catch_26
    move-exception p1

    goto :goto_32

    .line 4895
    :catch_28
    move-exception p1

    .line 4896
    const-string p2, "NetworkPolicy"

    const-string/jumbo v0, "problem setting firewall uid rules"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4899
    :goto_31
    nop

    .line 4900
    :goto_32
    return-void
.end method

.method private setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4871
    if-eqz p2, :cond_5

    .line 4872
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;)V

    .line 4874
    :cond_5
    if-eqz p3, :cond_f

    .line 4875
    const/4 p2, 0x1

    if-ne p3, p2, :cond_b

    goto :goto_c

    :cond_b
    const/4 p2, 0x0

    :goto_c
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainUL(IZ)V

    .line 4877
    :cond_f
    return-void
.end method

.method private setUidPolicyUncheckedUL(IIIZ)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 2621
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    .line 2624
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForWhitelistRules(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 2625
    goto/16 :goto_77

    .line 2627
    :cond_c
    const/4 v1, 0x1

    if-ne p2, v1, :cond_11

    move v2, v1

    goto :goto_12

    :cond_11
    move v2, v0

    .line 2628
    :goto_12
    if-ne p3, v1, :cond_16

    move v3, v1

    goto :goto_17

    :cond_16
    move v3, v0

    .line 2629
    :goto_17
    const/4 v4, 0x4

    if-ne p2, v4, :cond_1c

    move p2, v1

    goto :goto_1d

    :cond_1c
    move p2, v0

    .line 2630
    :goto_1d
    if-ne p3, v4, :cond_21

    move v4, v1

    goto :goto_22

    :cond_21
    move v4, v0

    .line 2631
    :goto_22
    if-nez v2, :cond_2d

    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v2, :cond_2b

    if-nez p2, :cond_2b

    goto :goto_2d

    :cond_2b
    move v2, v0

    goto :goto_2e

    :cond_2d
    :goto_2d
    move v2, v1

    .line 2632
    :goto_2e
    if-nez v3, :cond_39

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v5, :cond_37

    if-nez v4, :cond_37

    goto :goto_39

    :cond_37
    move v5, v0

    goto :goto_3a

    :cond_39
    :goto_39
    move v5, v1

    .line 2633
    :goto_3a
    if-eqz p2, :cond_74

    if-eqz v4, :cond_40

    if-eqz v3, :cond_74

    :cond_40
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    .line 2634
    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p2

    if-eqz p2, :cond_74

    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    .line 2635
    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p2

    if-nez p2, :cond_74

    .line 2636
    sget-boolean p2, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz p2, :cond_6f

    .line 2637
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding uid "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to revoked restrict background whitelist"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "NetworkPolicy"

    invoke-static {v3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    :cond_6f
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 2640
    :cond_74
    if-eq v2, v5, :cond_77

    move v0, v1

    .line 2642
    :cond_77
    :goto_77
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v1, p1, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2643
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2644
    if-eqz p4, :cond_93

    .line 2645
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2646
    :try_start_8b
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 2647
    monitor-exit p1

    goto :goto_93

    :catchall_90
    move-exception p2

    monitor-exit p1
    :try_end_92
    .catchall {:try_start_8b .. :try_end_92} :catchall_90

    throw p2

    .line 2649
    :cond_93
    :goto_93
    return-void
.end method

.method private setUidPolicyUncheckedUL(IIZ)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 2653
    if-nez p2, :cond_8

    .line 2654
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_d

    .line 2656
    :cond_8
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2660
    :goto_d
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 2661
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForIsolatedUL(I)V

    .line 2662
    if-eqz p3, :cond_20

    .line 2663
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2664
    :try_start_18
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 2665
    monitor-exit p1

    goto :goto_20

    :catchall_1d
    move-exception p2

    monitor-exit p1
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_1d

    throw p2

    .line 2667
    :cond_20
    :goto_20
    return-void
.end method

.method private static updateCapabilityChange(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z
    .registers 5

    .line 1096
    iget v0, p2, Landroid/net/Network;->netId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 1097
    if-ne v0, p1, :cond_11

    iget v0, p2, Landroid/net/Network;->netId:I

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_12

    :cond_11
    const/4 v1, 0x1

    .line 1098
    :cond_12
    if-eqz v1, :cond_19

    .line 1099
    iget p2, p2, Landroid/net/Network;->netId:I

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1101
    :cond_19
    return v1
.end method

.method private updateDefaultMobilePolicyAL(ILandroid/net/NetworkPolicy;)Z
    .registers 22
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 2117
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v2, Landroid/net/NetworkPolicy;->inferred:Z

    const-string v4, "NetworkPolicy"

    const/4 v5, 0x0

    if-nez v3, :cond_26

    .line 2118
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring user-defined policy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    :cond_25
    return v5

    .line 2122
    :cond_26
    new-instance v3, Landroid/net/NetworkPolicy;

    iget-object v7, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    iget-object v8, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-wide v9, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    iget-wide v11, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    iget-wide v13, v2, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    iget-wide v5, v2, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    iget-boolean v15, v2, Landroid/net/NetworkPolicy;->metered:Z

    move-wide/from16 v16, v5

    iget-boolean v5, v2, Landroid/net/NetworkPolicy;->inferred:Z

    move-object v6, v3

    move/from16 v18, v15

    move-wide/from16 v15, v16

    move/from16 v17, v18

    move/from16 v18, v5

    invoke-direct/range {v6 .. v18}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;Landroid/util/RecurrenceRule;JJJJZZ)V

    .line 2126
    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/telephony/SubscriptionPlan;

    .line 2127
    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_9a

    .line 2128
    const/4 v1, 0x0

    aget-object v5, v5, v1

    .line 2129
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan;->getCycleRule()Landroid/util/RecurrenceRule;

    move-result-object v1

    iput-object v1, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    .line 2130
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v8

    .line 2131
    const-wide/16 v10, -0x1

    cmp-long v1, v8, v10

    if-nez v1, :cond_75

    .line 2132
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultWarningBytes()J

    move-result-wide v5

    iput-wide v5, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2133
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultLimitBytes()J

    move-result-wide v0

    iput-wide v0, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_99

    .line 2134
    :cond_75
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, v8, v0

    if-nez v0, :cond_83

    .line 2135
    iput-wide v10, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2136
    iput-wide v10, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_99

    .line 2138
    :cond_83
    const-wide/16 v0, 0x9

    mul-long/2addr v0, v8

    const-wide/16 v12, 0xa

    div-long/2addr v0, v12

    iput-wide v0, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2139
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan;->getDataLimitBehavior()I

    move-result v0

    if-eqz v0, :cond_96

    if-eq v0, v7, :cond_96

    .line 2145
    iput-wide v10, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_99

    .line 2142
    :cond_96
    iput-wide v8, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 2143
    nop

    .line 2149
    :goto_99
    goto :goto_d0

    .line 2150
    :cond_9a
    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v5, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 2152
    iget-object v5, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    invoke-virtual {v5}, Landroid/util/RecurrenceRule;->isMonthly()Z

    move-result v5

    if-eqz v5, :cond_b1

    .line 2153
    iget-object v5, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v5, v5, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-virtual {v5}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v5

    goto :goto_b2

    .line 2155
    :cond_b1
    const/4 v5, -0x1

    .line 2157
    :goto_b2
    invoke-virtual {v0, v1, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getCycleDayFromCarrierConfig(Landroid/os/PersistableBundle;I)I

    move-result v5

    .line 2158
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/NetworkPolicy;->buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object v5

    iput-object v5, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    .line 2159
    iget-wide v5, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getWarningBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J

    move-result-wide v5

    iput-wide v5, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2160
    iget-wide v5, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getLimitBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J

    move-result-wide v0

    iput-wide v0, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 2163
    :goto_d0
    invoke-virtual {v2, v3}, Landroid/net/NetworkPolicy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 2164
    const/4 v0, 0x0

    return v0

    .line 2166
    :cond_d8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    return v7
.end method

.method private updateNetworkStats(IZ)V
    .registers 7

    .line 3687
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 3688
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateNetworkStats: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3689
    if-eqz p2, :cond_21

    const-string v3, "F"

    goto :goto_23

    :cond_21
    const-string v3, "B"

    :goto_23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3688
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3692
    :cond_2d
    :try_start_2d
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/net/NetworkStatsManagerInternal;->setUidForeground(IZ)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_37

    .line 3694
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3695
    nop

    .line 3696
    return-void

    .line 3694
    :catchall_37
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method private updateNetworksInternal()V
    .registers 4

    .line 1501
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateSubscriptions()V

    .line 1503
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1504
    :try_start_6
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_1e

    .line 1505
    :try_start_9
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyAL()V

    .line 1506
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL()V

    .line 1507
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 1508
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 1509
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 1510
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_1b

    .line 1511
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1e

    .line 1512
    return-void

    .line 1510
    :catchall_1b
    move-exception v2

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v2

    .line 1511
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private updateRestrictBackgroundRulesOnUidStatusChangedUL(III)V
    .registers 4

    .line 3700
    nop

    .line 3701
    invoke-static {p2}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result p2

    .line 3702
    nop

    .line 3703
    invoke-static {p3}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result p3

    .line 3704
    if-eq p2, p3, :cond_f

    .line 3705
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 3707
    :cond_f
    return-void
.end method

.method private updateRestrictionRulesForUidUL(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4166
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    .line 4167
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(I)V

    .line 4168
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 4171
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 4174
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 4175
    return-void
.end method

.method private updateRulesForAllAppsUL(I)V
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 3963
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 3964
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRulesForRestrictPowerUL-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3969
    :cond_1e
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3973
    const-string v3, "list-users"

    invoke-static {v0, v1, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_a0

    .line 3975
    :try_start_29
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_9b

    .line 3977
    :try_start_2f
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3978
    nop

    .line 3979
    const-string v4, "list-uids"

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_a0

    .line 3981
    const v4, 0x4c0200

    :try_start_3b
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_96

    .line 3986
    :try_start_3f
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3987
    nop

    .line 3989
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 3990
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .line 3991
    const/4 v6, 0x0

    move v7, v6

    :goto_4d
    if-ge v7, v4, :cond_91

    .line 3992
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 3993
    move v9, v6

    :goto_56
    if-ge v9, v5, :cond_8e

    .line 3994
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    .line 3995
    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11, v10}, Landroid/os/UserHandle;->getUid(II)I

    move-result v10

    .line 3996
    const/4 v11, 0x1

    if-eq p1, v11, :cond_87

    const/4 v11, 0x2

    if-eq p1, v11, :cond_83

    .line 4004
    const-string v10, "NetworkPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid type for updateRulesForAllApps: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    .line 4001
    :cond_83
    invoke-direct {p0, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 4002
    goto :goto_8b

    .line 3998
    :cond_87
    invoke-direct {p0, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V
    :try_end_8a
    .catchall {:try_start_3f .. :try_end_8a} :catchall_a0

    .line 3999
    nop

    .line 3993
    :goto_8b
    add-int/lit8 v9, v9, 0x1

    goto :goto_56

    .line 3991
    :cond_8e
    add-int/lit8 v7, v7, 0x1

    goto :goto_4d

    .line 4009
    :cond_91
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4010
    nop

    .line 4011
    return-void

    .line 3986
    :catchall_96
    move-exception p1

    :try_start_97
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1

    .line 3977
    :catchall_9b
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
    :try_end_a0
    .catchall {:try_start_97 .. :try_end_a0} :catchall_a0

    .line 4009
    :catchall_a0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method private updateRulesForDataUsageRestrictionsUL(I)V
    .registers 6

    .line 4217
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 4218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRulesForDataUsageRestrictionsUL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4222
    :cond_1e
    :try_start_1e
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsULInner(I)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_26

    .line 4224
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4225
    nop

    .line 4226
    return-void

    .line 4224
    :catchall_26
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method private updateRulesForDataUsageRestrictionsULInner(I)V
    .registers 20

    .line 4229
    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForWhitelistRules(I)Z

    move-result v0

    const-string v3, "NetworkPolicy"

    if-nez v0, :cond_26

    .line 4230
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no need to update restrict data rules for uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4231
    :cond_25
    return-void

    .line 4234
    :cond_26
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 4235
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 4236
    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictBackgroundUL(I)Z

    move-result v6

    .line 4237
    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isRestrictedByAdminUL(I)Z

    move-result v7

    .line 4239
    and-int/lit8 v8, v0, 0x1

    if-eqz v8, :cond_41

    const/4 v8, 0x1

    goto :goto_42

    :cond_41
    move v8, v4

    .line 4240
    :goto_42
    and-int/lit8 v10, v0, 0x4

    if-eqz v10, :cond_48

    const/4 v10, 0x1

    goto :goto_49

    :cond_48
    move v10, v4

    .line 4241
    :goto_49
    and-int/lit8 v11, v5, 0xf

    .line 4242
    nop

    .line 4245
    :try_start_4c
    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const-string v13, "data"

    const/high16 v14, 0x10000

    and-int/2addr v14, v0

    if-eqz v14, :cond_57

    const/4 v14, 0x1

    goto :goto_58

    :cond_57
    move v14, v4

    :goto_58
    invoke-interface {v12, v13, v2, v14}, Landroid/os/INetworkManagementService;->restrictAppOnInterface(Ljava/lang/String;IZ)V

    .line 4247
    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const-string/jumbo v13, "vpn"

    const/high16 v14, 0x20000

    and-int/2addr v14, v0

    if-eqz v14, :cond_67

    const/4 v14, 0x1

    goto :goto_68

    :cond_67
    move v14, v4

    :goto_68
    invoke-interface {v12, v13, v2, v14}, Landroid/os/INetworkManagementService;->restrictAppOnInterface(Ljava/lang/String;IZ)V

    .line 4249
    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const-string/jumbo v13, "wlan"

    const v14, 0x8000

    and-int/2addr v0, v14

    if-eqz v0, :cond_78

    const/4 v0, 0x1

    goto :goto_79

    :cond_78
    move v0, v4

    :goto_79
    invoke-interface {v12, v13, v2, v0}, Landroid/os/INetworkManagementService;->restrictAppOnInterface(Ljava/lang/String;IZ)V
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_7c} :catch_7d

    .line 4253
    goto :goto_7e

    .line 4251
    :catch_7d
    move-exception v0

    .line 4256
    :goto_7e
    if-eqz v7, :cond_82

    .line 4257
    const/4 v13, 0x4

    goto :goto_a0

    .line 4258
    :cond_82
    if-eqz v6, :cond_93

    .line 4259
    if-nez v8, :cond_91

    iget-boolean v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v13, :cond_8d

    if-nez v10, :cond_8d

    goto :goto_91

    .line 4261
    :cond_8d
    if-eqz v10, :cond_9f

    .line 4262
    const/4 v13, 0x1

    goto :goto_a0

    .line 4260
    :cond_91
    :goto_91
    const/4 v13, 0x2

    goto :goto_a0

    .line 4265
    :cond_93
    if-eqz v8, :cond_97

    .line 4266
    const/4 v13, 0x4

    goto :goto_a0

    .line 4267
    :cond_97
    iget-boolean v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v13, :cond_9f

    if-eqz v10, :cond_9f

    .line 4268
    const/4 v13, 0x1

    goto :goto_a0

    .line 4271
    :cond_9f
    move v13, v4

    :goto_a0
    and-int/lit16 v14, v5, 0xf0

    or-int/2addr v14, v13

    .line 4273
    sget-boolean v15, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    const-string v12, ", newRule="

    const-string v4, ", oldRule="

    const-string v9, ", isRestrictedByAdmin="

    if-eqz v15, :cond_10c

    .line 4274
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateRuleForRestrictBackgroundUL("

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "): isForeground="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isBlacklisted="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isWhitelisted="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4279
    invoke-static {v11}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4280
    invoke-static {v13}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", newUidRules="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4281
    invoke-static {v14}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", oldUidRules="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4282
    invoke-static {v5}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4274
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4285
    :cond_10c
    if-nez v14, :cond_114

    .line 4286
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_119

    .line 4288
    :cond_114
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 4292
    :goto_119
    if-eq v13, v11, :cond_1ca

    .line 4293
    const/4 v0, 0x2

    invoke-static {v13, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v15

    if-eqz v15, :cond_12e

    .line 4297
    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    .line 4301
    if-eqz v8, :cond_1c0

    .line 4302
    const/4 v15, 0x0

    invoke-direct {v1, v2, v15}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkBlacklist(IZ)V

    goto/16 :goto_1c0

    .line 4304
    :cond_12e
    const/4 v15, 0x0

    const/4 v0, 0x2

    invoke-static {v11, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v0

    if-eqz v0, :cond_145

    .line 4311
    if-nez v10, :cond_13b

    .line 4312
    invoke-direct {v1, v2, v15}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    .line 4314
    :cond_13b
    if-nez v8, :cond_13f

    if-eqz v7, :cond_1c0

    .line 4315
    :cond_13f
    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkBlacklist(IZ)V

    goto/16 :goto_1c0

    .line 4317
    :cond_145
    const/4 v0, 0x4

    invoke-static {v13, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v16

    if-nez v16, :cond_1ac

    .line 4318
    invoke-static {v11, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v17

    if-eqz v17, :cond_153

    goto :goto_1ac

    .line 4327
    :cond_153
    const/4 v15, 0x1

    invoke-static {v13, v15}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v0

    if-nez v0, :cond_1a8

    .line 4328
    invoke-static {v11, v15}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v0

    if-eqz v0, :cond_161

    goto :goto_1a8

    .line 4333
    :cond_161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected change of metered UID state for "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ": foreground="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", whitelisted="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", blacklisted="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4338
    invoke-static {v14}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4339
    invoke-static {v5}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4333
    invoke-static {v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c0

    .line 4330
    :cond_1a8
    :goto_1a8
    invoke-direct {v1, v2, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    goto :goto_1c0

    .line 4320
    :cond_1ac
    :goto_1ac
    if-nez v8, :cond_1b0

    if-eqz v7, :cond_1b1

    :cond_1b0
    const/4 v15, 0x1

    :cond_1b1
    invoke-direct {v1, v2, v15}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkBlacklist(IZ)V

    .line 4321
    const/4 v0, 0x4

    invoke-static {v11, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v0

    if-eqz v0, :cond_1c0

    if-eqz v10, :cond_1c0

    .line 4325
    invoke-direct {v1, v2, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    .line 4343
    :cond_1c0
    :goto_1c0
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v14}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4345
    :cond_1ca
    return-void
.end method

.method private updateRulesForGlobalChangeAL(Z)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock",
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 3908
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 3909
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRulesForGlobalChangeAL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3910
    if-eqz p1, :cond_19

    const-string v3, "R"

    goto :goto_1b

    :cond_19
    const-string v3, "-"

    :goto_1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3909
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3913
    :cond_25
    :try_start_25
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleUL()V

    .line 3914
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V

    .line 3915
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundUL()V

    .line 3918
    if-eqz p1, :cond_36

    .line 3919
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL()V

    .line 3920
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V
    :try_end_36
    .catchall {:try_start_25 .. :try_end_36} :catchall_3b

    .line 3923
    :cond_36
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3924
    nop

    .line 3925
    return-void

    .line 3923
    :catchall_3b
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method private updateRulesForIsolatedUL(I)V
    .registers 8

    .line 4348
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 4349
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 4350
    and-int/lit16 v3, v2, 0x80

    const/4 v4, 0x1

    if-eqz v3, :cond_14

    move v3, v4

    goto :goto_15

    :cond_14
    move v3, v1

    .line 4351
    :goto_15
    const/high16 v5, 0x40000

    and-int/2addr v0, v5

    if-eqz v0, :cond_1c

    move v0, v4

    goto :goto_1d

    :cond_1c
    move v0, v1

    .line 4353
    :goto_1d
    if-ne v0, v3, :cond_20

    .line 4355
    return-void

    .line 4358
    :cond_20
    const/4 v3, 0x4

    .line 4359
    if-eqz v0, :cond_24

    const/4 v1, 0x2

    .line 4358
    :cond_24
    invoke-direct {p0, v3, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    .line 4361
    nop

    .line 4362
    if-eqz v0, :cond_2d

    .line 4363
    or-int/lit16 v0, v2, 0x80

    goto :goto_2f

    .line 4365
    :cond_2d
    and-int/lit16 v0, v2, -0x81

    .line 4368
    :goto_2f
    if-nez v0, :cond_37

    .line 4369
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_3c

    .line 4371
    :cond_37
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 4375
    :goto_3c
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 4376
    return-void
.end method

.method private updateRulesForPowerRestrictionsUL(IIZ)I
    .registers 8

    .line 4419
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 4420
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRulesForPowerRestrictionsUL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4422
    if-eqz p3, :cond_27

    const-string v3, "P"

    goto :goto_29

    :cond_27
    const-string v3, "-"

    :goto_29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4420
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4425
    :cond_33
    :try_start_33
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsULInner(IIZ)I

    move-result p1
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_3b

    .line 4427
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4425
    return p1

    .line 4427
    :catchall_3b
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method private updateRulesForPowerRestrictionsUL(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4398
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 4400
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(IIZ)I

    move-result v0

    .line 4402
    if-nez v0, :cond_13

    .line 4403
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_18

    .line 4405
    :cond_13
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 4407
    :goto_18
    return-void
.end method

.method private updateRulesForPowerRestrictionsULInner(IIZ)I
    .registers 20

    .line 4432
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForBlacklistRules(I)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "NetworkPolicy"

    if-nez v3, :cond_29

    .line 4433
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no need to update restrict power rules for uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4434
    :cond_28
    return v4

    .line 4437
    :cond_29
    if-nez p3, :cond_33

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    move-result v6

    if-eqz v6, :cond_33

    const/4 v6, 0x1

    goto :goto_34

    :cond_33
    move v6, v4

    .line 4438
    :goto_34
    if-nez v6, :cond_41

    iget-boolean v7, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-nez v7, :cond_41

    iget-boolean v7, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v7, :cond_3f

    goto :goto_41

    :cond_3f
    move v7, v4

    goto :goto_42

    :cond_41
    :goto_41
    const/4 v7, 0x1

    .line 4439
    :goto_42
    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v8

    .line 4441
    iget-boolean v9, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-direct {v0, v1, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->isWhitelistedFromPowerSaveUL(IZ)Z

    move-result v9

    .line 4442
    and-int/lit16 v10, v2, 0xf0

    .line 4443
    nop

    .line 4449
    const/16 v11, 0x40

    const/16 v12, 0x20

    if-eqz v8, :cond_59

    .line 4450
    if-eqz v7, :cond_60

    .line 4451
    move v4, v12

    goto :goto_60

    .line 4453
    :cond_59
    if-eqz v7, :cond_60

    .line 4454
    if-eqz v9, :cond_5f

    move v4, v12

    goto :goto_60

    :cond_5f
    move v4, v11

    .line 4459
    :cond_60
    :goto_60
    and-int/lit16 v7, v2, 0x8f

    or-int/2addr v7, v4

    .line 4462
    sget-boolean v13, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    const-string v14, ", newRule="

    const-string v15, ", oldRule="

    if-eqz v13, :cond_d8

    .line 4463
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRulesForPowerRestrictionsUL("

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), isIdle: "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mRestrictPower: "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mDeviceIdleMode: "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isForeground="

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isWhitelisted="

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4469
    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4470
    invoke-static {v4}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", newUidRules="

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4471
    invoke-static {v7}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", oldUidRules="

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4472
    invoke-static/range {p2 .. p2}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4463
    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4476
    :cond_d8
    if-eq v4, v10, :cond_15d

    .line 4477
    if-eqz v4, :cond_13b

    invoke-static {v4, v12}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v3

    if-eqz v3, :cond_e3

    goto :goto_13b

    .line 4479
    :cond_e3
    invoke-static {v4, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v3

    if-eqz v3, :cond_102

    .line 4480
    sget-boolean v2, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v2, :cond_153

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rejecting non-metered access for UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_153

    .line 4483
    :cond_102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected change of non-metered UID state for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": foreground="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", whitelisted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4486
    invoke-static {v7}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4487
    invoke-static/range {p2 .. p2}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4483
    invoke-static {v5, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_153

    .line 4478
    :cond_13b
    :goto_13b
    sget-boolean v2, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v2, :cond_153

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allowing non-metered access for UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4489
    :cond_153
    :goto_153
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4492
    :cond_15d
    return v7
.end method

.method private updateRulesForRestrictBackgroundUL()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 3942
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateRulesForRestrictBackgroundUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3944
    const/4 v2, 0x1

    :try_start_a
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAllAppsUL(I)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_12

    .line 3946
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3947
    nop

    .line 3948
    return-void

    .line 3946
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private updateRulesForRestrictPowerUL()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 3930
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateRulesForRestrictPowerUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3932
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDeviceIdleUL()V

    .line 3933
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerSaveUL()V

    .line 3934
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAllAppsUL(I)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    .line 3936
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3937
    nop

    .line 3938
    return-void

    .line 3936
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private updateRulesForTempWhitelistChangeUL(I)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4015
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 4016
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 4017
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_28

    .line 4018
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 4019
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 4021
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(I)V

    .line 4022
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    .line 4023
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 4025
    invoke-direct {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 4017
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 4027
    :cond_28
    return-void
.end method

.method private updateRulesForWhitelistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V
    .registers 7

    .line 3774
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_1c

    .line 3775
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 3776
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 3777
    invoke-static {p3, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 3778
    invoke-virtual {p1, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 3774
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 3781
    :cond_1c
    return-void
.end method

.method private updateRulesForWhitelistedPowerSaveUL(IZI)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 3806
    if-eqz p2, :cond_1d

    .line 3807
    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_8

    move v1, v0

    goto :goto_9

    :cond_8
    move v1, p2

    :goto_9
    invoke-direct {p0, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->isWhitelistedFromPowerSaveUL(IZ)Z

    move-result v1

    .line 3809
    if-nez v1, :cond_1a

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_1a

    .line 3812
    :cond_16
    invoke-direct {p0, p3, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    goto :goto_1d

    .line 3810
    :cond_1a
    :goto_1a
    invoke-direct {p0, p3, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    .line 3815
    :cond_1d
    :goto_1d
    return-void
.end method

.method private updateRulesForWhitelistedPowerSaveUL(ZILandroid/util/SparseIntArray;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 3746
    if-eqz p1, :cond_5a

    .line 3749
    nop

    .line 3750
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->clear()V

    .line 3751
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    .line 3752
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_12
    if-ltz v0, :cond_35

    .line 3753
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 3754
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p3, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V

    .line 3755
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p3, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V

    .line 3756
    const/4 v3, 0x3

    if-ne p2, v3, :cond_32

    .line 3757
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p3, v3, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V

    .line 3752
    :cond_32
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 3761
    :cond_35
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_3c
    if-ltz p1, :cond_56

    .line 3762
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 3763
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p3, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 3761
    :cond_53
    add-int/lit8 p1, p1, -0x1

    goto :goto_3c

    .line 3766
    :cond_56
    invoke-direct {p0, p2, p3, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V

    .line 3767
    goto :goto_5f

    .line 3768
    :cond_5a
    const/4 p1, 0x0

    const/4 p3, 0x2

    invoke-direct {p0, p2, p1, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V

    .line 3770
    :goto_5f
    return-void
.end method

.method private updateUidStateUL(II)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 3637
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateUidStateUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3639
    :try_start_9
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v3, 0x14

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 3640
    if-eq v2, p2, :cond_3e

    .line 3642
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3643
    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictBackgroundRulesOnUidStatusChangedUL(III)V

    .line 3644
    invoke-static {v2}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    move-result v2

    .line 3645
    invoke-static {p2}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    move-result p2

    if-eq v2, p2, :cond_39

    .line 3646
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(I)V

    .line 3647
    iget-boolean p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz p2, :cond_2f

    .line 3648
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    .line 3650
    :cond_2f
    iget-boolean p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eqz p2, :cond_36

    .line 3651
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 3653
    :cond_36
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_44

    .line 3655
    :cond_39
    const/4 p1, 0x1

    .line 3658
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3655
    return p1

    .line 3658
    :cond_3e
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3659
    nop

    .line 3660
    const/4 p1, 0x0

    return p1

    .line 3658
    :catchall_44
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method private upgradeDefaultBackgroundDataUL()V
    .registers 4

    .line 2386
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 2387
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2386
    const/4 v1, 0x0

    const-string v2, "default_restrict_background_data"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    move v1, v2

    :cond_11
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    .line 2397
    return-void
.end method

.method private upgradeWifiMeteredOverrideAL()V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock",
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 2405
    nop

    .line 2406
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 2407
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 2408
    const/4 v2, 0x0

    move v3, v2

    :goto_11
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_86

    .line 2409
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicy;

    .line 2410
    iget-object v5, v4, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v5}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-ne v5, v6, :cond_83

    iget-boolean v5, v4, Landroid/net/NetworkPolicy;->inferred:Z

    if-nez v5, :cond_83

    .line 2412
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 2413
    nop

    .line 2415
    iget-object v3, v4, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v3}, Landroid/net/NetworkTemplate;->getNetworkId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/NetworkPolicyManager;->resolveNetworkId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2416
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_43
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_81

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    .line 2417
    invoke-static {v6}, Landroid/net/NetworkPolicyManager;->resolveNetworkId(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_80

    .line 2418
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found network "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "; upgrading metered hint"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "NetworkPolicy"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2419
    iget-boolean v8, v4, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v8, :cond_7a

    .line 2420
    move v8, v7

    goto :goto_7b

    .line 2421
    :cond_7a
    const/4 v8, 0x2

    :goto_7b
    iput v8, v6, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 2422
    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 2424
    :cond_80
    goto :goto_43

    .line 2425
    :cond_81
    move v3, v7

    goto :goto_85

    .line 2426
    :cond_83
    add-int/lit8 v2, v2, 0x1

    .line 2428
    :goto_85
    goto :goto_11

    .line 2429
    :cond_86
    if-eqz v3, :cond_8b

    .line 2430
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 2432
    :cond_8b
    return-void
.end method

.method private waitForAdminData()V
    .registers 5

    .line 5403
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.device_admin"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 5404
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x2710

    const-string v3, "Wait for admin data"

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/ConcurrentUtils;->waitForCountDownNoInterrupt(Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;)V

    .line 5407
    :cond_17
    return-void
.end method


# virtual methods
.method addDefaultRestrictBackgroundWhitelistUidsUL()Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 681
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 682
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 684
    nop

    .line 685
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_e
    if-ge v3, v1, :cond_27

    .line 686
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 687
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundWhitelistUidsUL(I)Z

    move-result v5

    if-nez v5, :cond_23

    if-eqz v4, :cond_21

    goto :goto_23

    :cond_21
    move v4, v2

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v4, 0x1

    .line 685
    :goto_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 689
    :cond_27
    return v4
.end method

.method addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5047
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 5048
    return-void
.end method

.method addNetworkPolicyAL(Landroid/net/NetworkPolicy;)V
    .registers 4

    .line 2771
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 2772
    const-class v1, Landroid/net/NetworkPolicy;

    invoke-static {v1, v0, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/net/NetworkPolicy;

    .line 2773
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 2774
    return-void
.end method

.method public addUidPolicy(II)V
    .registers 6

    .line 2577
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2579
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 2583
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v0, :cond_31

    .line 2584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addUidPolicy: uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " policy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    :cond_31
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2588
    :try_start_34
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 2589
    or-int/2addr p2, v1

    .line 2590
    if-eq v1, p2, :cond_47

    .line 2591
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIIZ)V

    .line 2592
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v2, p1, v1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->uidPolicyChanged(III)V

    .line 2594
    :cond_47
    monitor-exit v0

    .line 2595
    return-void

    .line 2594
    :catchall_49
    move-exception p1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_34 .. :try_end_4b} :catchall_49

    throw p1

    .line 2580
    :cond_4c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot apply policy to UID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    .registers 3

    .line 649
    const-string v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/IConnectivityManager;

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    .line 650
    return-void
.end method

.method buildDefaultMobilePolicy(ILjava/lang/String;)Landroid/net/NetworkPolicy;
    .registers 16
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2094
    invoke-static {p2}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 2096
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object p2

    invoke-virtual {p2}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result p2

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/net/NetworkPolicy;->buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object v2

    .line 2097
    new-instance p2, Landroid/net/NetworkPolicy;

    .line 2098
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultWarningBytes()J

    move-result-wide v3

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultLimitBytes()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v0, p2

    invoke-direct/range {v0 .. v12}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;Landroid/util/RecurrenceRule;JJJJZZ)V

    .line 2100
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2101
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_37

    .line 2102
    :try_start_2e
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateDefaultMobilePolicyAL(ILandroid/net/NetworkPolicy;)Z

    .line 2103
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_34

    .line 2104
    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_37

    .line 2105
    return-object p2

    .line 2103
    :catchall_34
    move-exception p1

    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    :try_start_36
    throw p1

    .line 2104
    :catchall_37
    move-exception p1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_37

    throw p1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    .line 3387
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v0, "NetworkPolicy"

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 3389
    :cond_b
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "  "

    invoke-direct {p1, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3391
    new-instance p2, Landroid/util/ArraySet;

    array-length v0, p3

    invoke-direct {p2, v0}, Landroid/util/ArraySet;-><init>(I)V

    .line 3392
    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_1b
    if-ge v2, v0, :cond_25

    aget-object v3, p3, v2

    .line 3393
    invoke-virtual {p2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3392
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 3396
    :cond_25
    iget-object p3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter p3

    .line 3397
    :try_start_28
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_3b2

    .line 3398
    :try_start_2b
    const-string v2, "--unsnooze"

    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_56

    .line 3399
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    :goto_3b
    if-ltz p2, :cond_4b

    .line 3400
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkPolicy;

    invoke-virtual {v2}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 3399
    add-int/lit8 p2, p2, -0x1

    goto :goto_3b

    .line 3403
    :cond_4b
    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 3405
    const-string p2, "Cleared snooze timestamps"

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3406
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_2b .. :try_end_54} :catchall_3af

    :try_start_54
    monitor-exit p3
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_3b2

    return-void

    .line 3409
    :cond_56
    :try_start_56
    const-string p2, "System ready: "

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3410
    const-string p2, "Restrict background: "

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3411
    const-string p2, "Restrict power: "

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3412
    const-string p2, "Device idle: "

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3413
    const-string p2, "Metered ifaces: "

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3415
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3416
    const-string p2, "Network policies:"

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3417
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3418
    move p2, v1

    :goto_98
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge p2, v2, :cond_b2

    .line 3419
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkPolicy;

    invoke-virtual {v2}, Landroid/net/NetworkPolicy;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3418
    add-int/lit8 p2, p2, 0x1

    goto :goto_98

    .line 3421
    :cond_b2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3423
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3424
    const-string p2, "Subscription plans:"

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3425
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3426
    move p2, v1

    :goto_c1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge p2, v2, :cond_10b

    .line 3427
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 3428
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Subscriber ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3429
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3430
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/SubscriptionPlan;

    .line 3431
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_105

    .line 3432
    array-length v3, v2

    move v4, v1

    :goto_fb
    if-ge v4, v3, :cond_105

    aget-object v5, v2, v4

    .line 3433
    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3432
    add-int/lit8 v4, v4, 0x1

    goto :goto_fb

    .line 3436
    :cond_105
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3426
    add-int/lit8 p2, p2, 0x1

    goto :goto_c1

    .line 3438
    :cond_10b
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3440
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3441
    const-string p2, "Active subscriptions:"

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3442
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3443
    move p2, v1

    :goto_11a
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge p2, v2, :cond_14e

    .line 3444
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 3445
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3447
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3443
    add-int/lit8 p2, p2, 0x1

    goto :goto_11a

    .line 3449
    :cond_14e
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3451
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3452
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_15a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_183

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 3453
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Merged subscriptions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3454
    invoke-static {v2}, Landroid/net/NetworkIdentity;->scrubSubscriberId([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3453
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3455
    goto :goto_15a

    .line 3457
    :cond_183
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3458
    const-string p2, "Policy for UIDs:"

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3459
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3460
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    .line 3461
    move v2, v1

    :goto_195
    if-ge v2, p2, :cond_1bd

    .line 3462
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 3463
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 3464
    const-string v5, "UID="

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3465
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3466
    const-string v3, " policy="

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3467
    invoke-static {v4}, Landroid/net/NetworkPolicyManager;->uidPoliciesToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3468
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3461
    add-int/lit8 v2, v2, 0x1

    goto :goto_195

    .line 3470
    :cond_1bd
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3472
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result p2

    .line 3473
    if-lez p2, :cond_1f8

    .line 3474
    const-string v2, "Power save whitelist (except idle) app ids:"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3475
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3476
    move v2, v1

    :goto_1d1
    if-ge v2, p2, :cond_1f5

    .line 3477
    const-string v3, "UID="

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3478
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3479
    const-string v3, ": "

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3480
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3481
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3476
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d1

    .line 3483
    :cond_1f5
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3486
    :cond_1f8
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result p2

    .line 3487
    if-lez p2, :cond_230

    .line 3488
    const-string v2, "Power save whitelist app ids:"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3489
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3490
    move v2, v1

    :goto_209
    if-ge v2, p2, :cond_22d

    .line 3491
    const-string v3, "UID="

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3492
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3493
    const-string v3, ": "

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3494
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3495
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3490
    add-int/lit8 v2, v2, 0x1

    goto :goto_209

    .line 3497
    :cond_22d
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3500
    :cond_230
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result p2

    .line 3501
    if-lez p2, :cond_268

    .line 3502
    const-string v2, "App idle whitelist app ids:"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3503
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3504
    move v2, v1

    :goto_241
    if-ge v2, p2, :cond_265

    .line 3505
    const-string v3, "UID="

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3506
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3507
    const-string v3, ": "

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3508
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3509
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3504
    add-int/lit8 v2, v2, 0x1

    goto :goto_241

    .line 3511
    :cond_265
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3514
    :cond_268
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result p2

    .line 3515
    if-lez p2, :cond_292

    .line 3516
    const-string v2, "Default restrict background whitelist uids:"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3517
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3518
    move v2, v1

    :goto_279
    if-ge v2, p2, :cond_28f

    .line 3519
    const-string v3, "UID="

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3520
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3521
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3518
    add-int/lit8 v2, v2, 0x1

    goto :goto_279

    .line 3523
    :cond_28f
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3526
    :cond_292
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result p2

    .line 3527
    if-lez p2, :cond_2bc

    .line 3528
    const-string v2, "Default restrict background whitelist uids revoked by users:"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3529
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3530
    move v2, v1

    :goto_2a3
    if-ge v2, p2, :cond_2b9

    .line 3531
    const-string v3, "UID="

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3532
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3533
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3530
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a3

    .line 3535
    :cond_2b9
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3538
    :cond_2bc
    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 3539
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-static {v2, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    .line 3540
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-static {v2, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    .line 3542
    const-string v2, "Status for all known UIDs:"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3543
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3544
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 3545
    move v3, v1

    :goto_2d8
    if-ge v3, v2, :cond_322

    .line 3546
    invoke-virtual {p2, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 3547
    const-string v5, "UID="

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3548
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3550
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v6, 0x14

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 3551
    const-string v6, " state="

    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3552
    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3553
    const/4 v6, 0x2

    if-gt v5, v6, :cond_2ff

    .line 3554
    const-string v5, " (fg)"

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_30a

    .line 3556
    :cond_2ff
    const/4 v6, 0x6

    if-gt v5, v6, :cond_305

    .line 3557
    const-string v5, " (fg svc)"

    goto :goto_307

    :cond_305
    const-string v5, " (bg)"

    .line 3556
    :goto_307
    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3560
    :goto_30a
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 3561
    const-string v5, " rules="

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3562
    invoke-static {v4}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3563
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3545
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d8

    .line 3565
    :cond_322
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3567
    const-string p2, "Status for just UIDs with rules:"

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3568
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3569
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    .line 3570
    move v2, v1

    :goto_334
    if-ge v2, p2, :cond_35c

    .line 3571
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 3572
    const-string v4, "UID="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3573
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3574
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 3575
    const-string v4, " rules="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3576
    invoke-static {v3}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3577
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3570
    add-int/lit8 v2, v2, 0x1

    goto :goto_334

    .line 3579
    :cond_35c
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3581
    const-string p2, "Admin restricted uids for metered data:"

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3582
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3583
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    .line 3584
    nop

    :goto_36e
    if-ge v1, p2, :cond_39c

    .line 3585
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3586
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3584
    add-int/lit8 v1, v1, 0x1

    goto :goto_36e

    .line 3588
    :cond_39c
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3590
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3591
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {p2, p1}, Lcom/android/internal/util/StatLogger;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3593
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {p2, p1}, Lcom/android/server/net/NetworkPolicyLogger;->dumpLogs(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3594
    monitor-exit v0
    :try_end_3ad
    .catchall {:try_start_56 .. :try_end_3ad} :catchall_3af

    .line 3595
    :try_start_3ad
    monitor-exit p3
    :try_end_3ae
    .catchall {:try_start_3ad .. :try_end_3ae} :catchall_3b2

    .line 3596
    return-void

    .line 3594
    :catchall_3af
    move-exception p1

    :try_start_3b0
    monitor-exit v0
    :try_end_3b1
    .catchall {:try_start_3b0 .. :try_end_3b1} :catchall_3af

    :try_start_3b1
    throw p1

    .line 3595
    :catchall_3b2
    move-exception p1

    monitor-exit p3
    :try_end_3b4
    .catchall {:try_start_3b1 .. :try_end_3b4} :catchall_3b2

    throw p1
.end method

.method public factoryReset(Ljava/lang/String;)V
    .registers 9

    .line 5089
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5091
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "no_network_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 5092
    return-void

    .line 5096
    :cond_15
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 5097
    invoke-static {p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object p1

    .line 5098
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_26
    if-ge v3, v1, :cond_3e

    aget-object v4, v0, v3

    .line 5099
    iget-object v5, v4, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v5, p1}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 5100
    const-wide/16 v5, -0x1

    iput-wide v5, v4, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 5101
    iput-boolean v2, v4, Landroid/net/NetworkPolicy;->inferred:Z

    .line 5102
    invoke-virtual {v4}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 5098
    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 5105
    :cond_3e
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 5108
    invoke-virtual {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    .line 5110
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v0, "no_control_apps"

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_60

    .line 5112
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidsWithPolicy(I)[I

    move-result-object p1

    array-length v0, p1

    move v1, v2

    :goto_56
    if-ge v1, v0, :cond_60

    aget v3, p1, v1

    .line 5113
    invoke-virtual {p0, v3, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicy(II)V

    .line 5112
    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    .line 5116
    :cond_60
    return-void
.end method

.method getAppIdleWhitelist()[I
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4078
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4080
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4081
    :try_start_c
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 4082
    new-array v2, v1, [I

    .line 4083
    const/4 v3, 0x0

    :goto_15
    if-ge v3, v1, :cond_22

    .line 4084
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    aput v4, v2, v3

    .line 4083
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 4086
    :cond_22
    monitor-exit v0

    return-object v2

    .line 4087
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_24

    throw v1
.end method

.method getCycleDayFromCarrierConfig(Landroid/os/PersistableBundle;I)I
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1562
    if-nez p1, :cond_3

    .line 1563
    return p2

    .line 1565
    :cond_3
    nop

    .line 1566
    const-string/jumbo v0, "monthly_data_cycle_day_int"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 1567
    const/4 v0, -0x1

    if-ne p1, v0, :cond_f

    .line 1568
    return p2

    .line 1571
    :cond_f
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1572
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v2

    if-lt p1, v2, :cond_22

    .line 1573
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    if-le p1, v0, :cond_21

    goto :goto_22

    .line 1578
    :cond_21
    return p1

    .line 1574
    :cond_22
    :goto_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid date in CarrierConfigManager.KEY_MONTHLY_DATA_CYCLE_DAY_INT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetworkPolicy"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    return p2
.end method

.method getLimitBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1627
    if-nez p1, :cond_3

    .line 1628
    return-wide p2

    .line 1630
    :cond_3
    nop

    .line 1631
    const-string v0, "data_limit_threshold_bytes_long"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1633
    const-wide/16 v2, -0x2

    cmp-long p1, v0, v2

    const-wide/16 v2, -0x1

    if-nez p1, :cond_13

    .line 1634
    return-wide v2

    .line 1635
    :cond_13
    cmp-long p1, v0, v2

    if-nez p1, :cond_1c

    .line 1636
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultLimitBytes()J

    move-result-wide p1

    return-wide p1

    .line 1637
    :cond_1c
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_39

    .line 1638
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value in CarrierConfigManager.KEY_DATA_LIMIT_THRESHOLD_BYTES_LONG; expected a non-negative value but got: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetworkPolicy"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    return-wide p2

    .line 1643
    :cond_39
    return-wide v0
.end method

.method public getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;
    .registers 6

    .line 2778
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2780
    const/4 v0, 0x0

    :try_start_a
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_13} :catch_14

    .line 2790
    goto :goto_2f

    .line 2783
    :catch_14
    move-exception v1

    .line 2784
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2786
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x33

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v2, v3, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2f

    .line 2788
    new-array p1, v0, [Landroid/net/NetworkPolicy;

    return-object p1

    .line 2792
    :cond_2f
    :goto_2f
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2793
    :try_start_32
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2794
    new-array v2, v1, [Landroid/net/NetworkPolicy;

    .line 2795
    nop

    :goto_3b
    if-ge v0, v1, :cond_4a

    .line 2796
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkPolicy;

    aput-object v3, v2, v0

    .line 2795
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 2798
    :cond_4a
    monitor-exit p1

    return-object v2

    .line 2799
    :catchall_4c
    move-exception v0

    monitor-exit p1
    :try_end_4e
    .catchall {:try_start_32 .. :try_end_4e} :catchall_4c

    throw v0
.end method

.method public getNetworkQuotaInfo(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3031
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Shame on UID "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for calling the hidden API getNetworkQuotaInfo(). Shame!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetworkPolicy"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3033
    new-instance p1, Landroid/net/NetworkQuotaInfo;

    invoke-direct {p1}, Landroid/net/NetworkQuotaInfo;-><init>()V

    return-object p1
.end method

.method public getRestrictBackground()Z
    .registers 4

    .line 2976
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2978
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2979
    :try_start_c
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    monitor-exit v0

    return v1

    .line 2980
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_10

    throw v1
.end method

.method public getRestrictBackgroundByCaller()I
    .registers 6

    .line 2949
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2950
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2952
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2954
    :try_start_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_3c

    .line 2957
    :try_start_14
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidPolicy(I)I

    move-result v4
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_37

    .line 2959
    :try_start_18
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2960
    nop

    .line 2961
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v4, v3, :cond_22

    .line 2963
    monitor-exit v1

    return v2

    .line 2965
    :cond_22
    iget-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-nez v4, :cond_28

    .line 2966
    monitor-exit v1

    return v3

    .line 2968
    :cond_28
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_34

    .line 2969
    const/4 v2, 0x2

    goto :goto_35

    .line 2970
    :cond_34
    nop

    :goto_35
    monitor-exit v1

    .line 2968
    return v2

    .line 2959
    :catchall_37
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2971
    :catchall_3c
    move-exception v0

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_18 .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method public getSubscriptionPlans(ILjava/lang/String;)[Landroid/telephony/SubscriptionPlan;
    .registers 18

    .line 3123
    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceSubscriptionPlanAccess(IILjava/lang/String;)V

    .line 3125
    const-string v3, "fw.fake_plan"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3126
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3af

    .line 3127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3128
    const-string/jumbo v1, "month_hard"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide v4, 0x7fffffffffffffffL

    const-wide/32 v6, 0x40000000

    const-wide v8, 0x140000000L

    if-eqz v1, :cond_c8

    .line 3129
    nop

    .line 3130
    const-string v1, "2007-03-14T00:00:00.000Z"

    invoke-static {v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3131
    const-string v2, "G-Mobile"

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3132
    const/4 v2, 0x1

    invoke-virtual {v1, v8, v9, v2}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3135
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v3

    const-wide/16 v10, 0x24

    invoke-virtual {v3, v10, v11}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v12

    .line 3134
    invoke-virtual {v1, v6, v7, v12, v13}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3136
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v1

    .line 3129
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3137
    nop

    .line 3138
    const-string v1, "2017-03-14T00:00:00.000Z"

    invoke-static {v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3139
    const-string v3, "G-Mobile Happy"

    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3140
    invoke-virtual {v1, v4, v5, v2}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3143
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    .line 3142
    invoke-virtual {v1, v8, v9, v3, v4}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3144
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v1

    .line 3137
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3145
    nop

    .line 3146
    const-string v1, "2017-03-14T00:00:00.000Z"

    invoke-static {v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3147
    const-string v3, "G-Mobile, Charged after limit"

    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3148
    invoke-virtual {v1, v8, v9, v2}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3151
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    .line 3150
    invoke-virtual {v1, v8, v9, v2, v3}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3152
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v1

    .line 3145
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3a2

    .line 3153
    :cond_c8
    const-string/jumbo v1, "month_soft"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v10, 0x1

    const/4 v12, 0x2

    if-eqz v1, :cond_16d

    .line 3154
    nop

    .line 3155
    const-string v1, "2007-03-14T00:00:00.000Z"

    invoke-static {v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3156
    const-string v3, "G-Mobile is the carriers name who this plan belongs to"

    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3157
    const-string v3, "Crazy unlimited bandwidth plan with incredibly long title that should be cut off to prevent UI from looking terrible"

    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionPlan$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3159
    invoke-virtual {v1, v8, v9, v12}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3162
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    .line 3161
    invoke-virtual {v1, v6, v7, v3, v4}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3163
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v1

    .line 3154
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3164
    nop

    .line 3165
    const-string v1, "2017-03-14T00:00:00.000Z"

    invoke-static {v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3166
    const-string v3, "G-Mobile, Throttled after limit"

    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3167
    invoke-virtual {v1, v8, v9, v12}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3170
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    .line 3169
    invoke-virtual {v1, v8, v9, v3, v4}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3171
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v1

    .line 3164
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3172
    nop

    .line 3173
    const-string v1, "2017-03-14T00:00:00.000Z"

    invoke-static {v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3174
    const-string v3, "G-Mobile, No data connection after limit"

    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3175
    invoke-virtual {v1, v8, v9, v2}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3178
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    .line 3177
    invoke-virtual {v1, v8, v9, v2, v3}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3179
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v1

    .line 3172
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3a2

    .line 3181
    :cond_16d
    const-string/jumbo v1, "month_over"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20d

    .line 3182
    nop

    .line 3183
    const-string v1, "2007-03-14T00:00:00.000Z"

    invoke-static {v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3184
    const-string v3, "G-Mobile is the carriers name who this plan belongs to"

    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3185
    invoke-virtual {v1, v8, v9, v12}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    const-wide v3, 0x180000000L

    .line 3188
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v5

    .line 3187
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3189
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v1

    .line 3182
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3190
    nop

    .line 3191
    const-string v1, "2017-03-14T00:00:00.000Z"

    invoke-static {v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3192
    const-string v3, "G-Mobile, Throttled after limit"

    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3193
    invoke-virtual {v1, v8, v9, v12}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3196
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    .line 3195
    invoke-virtual {v1, v8, v9, v3, v4}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3197
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v1

    .line 3190
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3198
    nop

    .line 3199
    const-string v1, "2017-03-14T00:00:00.000Z"

    invoke-static {v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3200
    const-string v3, "G-Mobile, No data connection after limit"

    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3201
    invoke-virtual {v1, v8, v9, v2}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3204
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    .line 3203
    invoke-virtual {v1, v8, v9, v2, v3}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3205
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v1

    .line 3198
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3a2

    .line 3207
    :cond_20d
    const-string/jumbo v1, "month_none"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_230

    .line 3208
    nop

    .line 3209
    const-string v1, "2007-03-14T00:00:00.000Z"

    invoke-static {v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3210
    const-string v2, "G-Mobile"

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3211
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v1

    .line 3208
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3a2

    .line 3212
    :cond_230
    const-string/jumbo v1, "prepaid"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/32 v13, 0x6400000

    const-wide/32 v4, 0x20000000

    const-wide/16 v10, 0x3

    const-wide/16 v6, 0xa

    const-wide/16 v8, 0x14

    if-eqz v1, :cond_281

    .line 3213
    nop

    .line 3214
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v1

    .line 3215
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v3

    .line 3214
    invoke-static {v1, v3}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3216
    const-string v3, "G-Mobile"

    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3217
    invoke-virtual {v1, v4, v5, v2}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3220
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    .line 3219
    invoke-virtual {v1, v13, v14, v2, v3}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3221
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v1

    .line 3213
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3a2

    .line 3222
    :cond_281
    const-string/jumbo v1, "prepaid_crazy"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_357

    .line 3223
    nop

    .line 3224
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v1

    .line 3225
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v3

    .line 3224
    invoke-static {v1, v3}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3226
    const-string v3, "G-Mobile Anytime"

    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3227
    invoke-virtual {v1, v4, v5, v2}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3230
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    .line 3229
    invoke-virtual {v1, v13, v14, v2, v3}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3231
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v1

    .line 3223
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3232
    nop

    .line 3233
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v1

    .line 3234
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v2

    .line 3233
    invoke-static {v1, v2}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3235
    const-string v2, "G-Mobile Nickel Nights"

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3236
    const-string v2, "5¢/GB between 1-5AM"

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionPlan$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3237
    const-wide v2, 0x140000000L

    invoke-virtual {v1, v2, v3, v12}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    const-wide/32 v2, 0xf00000

    .line 3240
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v4

    const-wide/16 v10, 0x1e

    invoke-virtual {v4, v10, v11}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    .line 3239
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3241
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v1

    .line 3232
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3242
    nop

    .line 3243
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v1

    .line 3244
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v2

    .line 3243
    invoke-static {v1, v2}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3245
    const-string v2, "G-Mobile Bonus 3G"

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3246
    const-string v2, "Unlimited 3G data"

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionPlan$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3247
    const-wide/32 v2, 0x40000000

    invoke-virtual {v1, v2, v3, v12}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    const-wide/32 v2, 0x12c00000

    .line 3250
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v4

    const-wide/16 v5, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    .line 3249
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3251
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v1

    .line 3242
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3a2

    .line 3252
    :cond_357
    const-string/jumbo v1, "unlimited"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a2

    .line 3253
    nop

    .line 3254
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v1

    .line 3255
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v2

    .line 3254
    invoke-static {v1, v2}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3256
    const-string v2, "G-Mobile Awesome"

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3257
    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v1, v2, v3, v12}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    const-wide/32 v2, 0x3200000

    .line 3260
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    .line 3259
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3261
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v1

    .line 3253
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3263
    :cond_3a2
    :goto_3a2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/telephony/SubscriptionPlan;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/SubscriptionPlan;

    return-object v0

    .line 3266
    :cond_3af
    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3270
    :try_start_3b2
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3271
    invoke-static {v4, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3ea

    .line 3272
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v5

    const/16 v6, 0x3e8

    if-ne v5, v6, :cond_3c9

    goto :goto_3ea

    .line 3275
    :cond_3c9
    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not returning plans because caller "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t match owner "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3277
    const/4 v0, 0x0

    monitor-exit v3

    return-object v0

    .line 3273
    :cond_3ea
    :goto_3ea
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/SubscriptionPlan;

    monitor-exit v3

    return-object v0

    .line 3279
    :catchall_3f4
    move-exception v0

    monitor-exit v3
    :try_end_3f6
    .catchall {:try_start_3b2 .. :try_end_3f6} :catchall_3f4

    throw v0
.end method

.method public getSubscriptionPlansOwner(I)Ljava/lang/String;
    .registers 4

    .line 3347
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_18

    .line 3351
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3352
    :try_start_b
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0

    return-object p1

    .line 3353
    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_15

    throw p1

    .line 3348
    :cond_18
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    throw p1
.end method

.method public getUidPolicy(I)I
    .registers 5

    .line 2671
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2673
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2674
    :try_start_c
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    monitor-exit v0

    return p1

    .line 2675
    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_15

    throw p1
.end method

.method public getUidsWithPolicy(I)[I
    .registers 7

    .line 2680
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2682
    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 2683
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2684
    nop

    :goto_10
    :try_start_10
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_32

    .line 2685
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 2686
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 2687
    if-nez p1, :cond_28

    if-eqz v4, :cond_2b

    :cond_28
    and-int/2addr v4, p1

    if-eqz v4, :cond_2f

    .line 2689
    :cond_2b
    invoke-static {v1, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v1

    .line 2684
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 2692
    :cond_32
    monitor-exit v2

    .line 2693
    return-object v1

    .line 2692
    :catchall_34
    move-exception p1

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_10 .. :try_end_36} :catchall_34

    throw p1
.end method

.method getWarningBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1594
    if-nez p1, :cond_3

    .line 1595
    return-wide p2

    .line 1597
    :cond_3
    nop

    .line 1598
    const-string v0, "data_warning_threshold_bytes_long"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1600
    const-wide/16 v2, -0x2

    cmp-long p1, v0, v2

    const-wide/16 v2, -0x1

    if-nez p1, :cond_13

    .line 1601
    return-wide v2

    .line 1602
    :cond_13
    cmp-long p1, v0, v2

    if-nez p1, :cond_1c

    .line 1603
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultWarningBytes()J

    move-result-wide p1

    return-wide p1

    .line 1604
    :cond_1c
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_39

    .line 1605
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value in CarrierConfigManager.KEY_DATA_WARNING_THRESHOLD_BYTES_LONG; expected a non-negative value but got: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetworkPolicy"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    return-wide p2

    .line 1611
    :cond_39
    return-wide v0
.end method

.method handleNetworkPoliciesUpdateAL(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock",
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 1691
    if-eqz p1, :cond_5

    .line 1692
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL()V

    .line 1694
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 1695
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 1696
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 1697
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 1698
    return-void
.end method

.method handleUidChanged(IIJ)V
    .registers 10

    .line 4742
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "onUidStateChanged"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4745
    :try_start_9
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_2c

    .line 4748
    :try_start_c
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/net/NetworkPolicyLogger;->uidStateChanged(IIJ)V

    .line 4750
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateUidStateUL(II)Z

    move-result v3

    .line 4752
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v4, p1, p3, p4}, Landroid/app/ActivityManagerInternal;->notifyNetworkPolicyRulesUpdated(IJ)V

    .line 4753
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_29

    .line 4756
    if-eqz v3, :cond_24

    .line 4757
    :try_start_1d
    invoke-direct {p0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidStateForeground(I)Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkStats(IZ)V
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_2c

    .line 4760
    :cond_24
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4761
    nop

    .line 4762
    return-void

    .line 4753
    :catchall_29
    move-exception p1

    :try_start_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    :try_start_2b
    throw p1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2c

    .line 4760
    :catchall_2c
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method handleUidGone(I)V
    .registers 6

    .line 4765
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "onUidGone"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4768
    :try_start_9
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_1f

    .line 4769
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeUidStateUL(I)Z

    move-result v3

    .line 4770
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_1c

    .line 4773
    if-eqz v3, :cond_17

    .line 4774
    const/4 v2, 0x0

    :try_start_14
    invoke-direct {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkStats(IZ)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_1f

    .line 4777
    :cond_17
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4778
    nop

    .line 4779
    return-void

    .line 4770
    :catchall_1c
    move-exception p1

    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw p1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    .line 4777
    :catchall_1f
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method isUidForeground(I)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3607
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3608
    :try_start_3
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v2, 0x14

    .line 3609
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    .line 3608
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidStateForeground(I)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 3610
    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method isUidIdle(I)Z
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4093
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4094
    :try_start_3
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 4096
    monitor-exit v0

    return v2

    .line 4098
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_33

    .line 4100
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 4101
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4103
    if-eqz v0, :cond_31

    .line 4104
    array-length v3, v0

    move v4, v2

    :goto_21
    if-ge v4, v3, :cond_31

    aget-object v5, v0, v4

    .line 4105
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v6, v5, p1, v1}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdle(Ljava/lang/String;II)Z

    move-result v5

    if-nez v5, :cond_2e

    .line 4106
    return v2

    .line 4104
    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 4110
    :cond_31
    const/4 p1, 0x1

    return p1

    .line 4098
    :catchall_33
    move-exception p1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p1
.end method

.method public isUidNetworkingBlocked(IZ)Z
    .registers 8

    .line 5120
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v0

    .line 5122
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5125
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5126
    :try_start_12
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 5127
    iget-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 5128
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_29

    .line 5129
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-static {p1, v3, p2, v4, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidNetworkingBlockedInternal(IIZZLcom/android/server/net/NetworkPolicyLogger;)Z

    move-result p1

    .line 5132
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const/4 v2, 0x1

    invoke-virtual {p2, v2, v0, v1}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 5134
    return p1

    .line 5128
    :catchall_29
    move-exception p1

    :try_start_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public synthetic lambda$networkScoreAndNetworkManagementServiceReady$0$NetworkPolicyManagerService(Ljava/util/concurrent/CountDownLatch;)V
    .registers 2

    .line 905
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->initService(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public networkScoreAndNetworkManagementServiceReady()Ljava/util/concurrent/CountDownLatch;
    .registers 4

    .line 903
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManagerReady:Z

    .line 904
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 905
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/net/-$$Lambda$NetworkPolicyManagerService$HDTUqowtgL-W_V0Kq6psXLWC9ws;

    invoke-direct {v2, p0, v1}, Lcom/android/server/net/-$$Lambda$NetworkPolicyManagerService$HDTUqowtgL-W_V0Kq6psXLWC9ws;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 906
    return-object v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 3601
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;-><init>(Landroid/content/Context;Lcom/android/server/net/NetworkPolicyManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 3603
    return-void
.end method

.method public onTetheringChanged(Ljava/lang/String;Z)V
    .registers 6

    .line 2871
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2872
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v1, :cond_28

    if-eqz p2, :cond_28

    .line 2873
    const-string p2, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tethering on ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "); disable Data Saver"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    .line 2876
    :cond_28
    monitor-exit v0

    .line 2877
    return-void

    .line 2876
    :catchall_2a
    move-exception p1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method performSnooze(Landroid/net/NetworkTemplate;I)V
    .registers 8

    .line 2840
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 2841
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2842
    :try_start_9
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_56

    .line 2844
    :try_start_c
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicy;

    .line 2845
    if-eqz v4, :cond_3b

    .line 2849
    const/16 p1, 0x22

    if-eq p2, p1, :cond_31

    const/16 p1, 0x23

    if-eq p2, p1, :cond_2e

    const/16 p1, 0x2d

    if-ne p2, p1, :cond_25

    .line 2857
    iput-wide v0, v4, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    .line 2858
    goto :goto_34

    .line 2860
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "unexpected type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2854
    :cond_2e
    iput-wide v0, v4, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    .line 2855
    goto :goto_34

    .line 2851
    :cond_31
    iput-wide v0, v4, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 2852
    nop

    .line 2863
    :goto_34
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 2864
    monitor-exit v3
    :try_end_39
    .catchall {:try_start_c .. :try_end_39} :catchall_53

    .line 2865
    :try_start_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_56

    .line 2866
    return-void

    .line 2846
    :cond_3b
    :try_start_3b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unable to find policy for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2864
    :catchall_53
    move-exception p1

    monitor-exit v3
    :try_end_55
    .catchall {:try_start_3b .. :try_end_55} :catchall_53

    :try_start_55
    throw p1

    .line 2865
    :catchall_56
    move-exception p1

    monitor-exit v2
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_56

    throw p1
.end method

.method public registerListener(Landroid/net/INetworkPolicyListener;)V
    .registers 5

    .line 2742
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2743
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2744
    return-void
.end method

.method public removeUidPolicy(II)V
    .registers 6

    .line 2599
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2601
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 2605
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v0, :cond_32

    .line 2606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeUidPolicy: uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " policy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2609
    :cond_32
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2610
    :try_start_35
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 2611
    not-int p2, p2

    and-int/2addr p2, v1

    .line 2612
    if-eq v1, p2, :cond_49

    .line 2613
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIIZ)V

    .line 2614
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v2, p1, v1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->uidPolicyChanged(III)V

    .line 2616
    :cond_49
    monitor-exit v0

    .line 2617
    return-void

    .line 2616
    :catchall_4b
    move-exception p1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_35 .. :try_end_4d} :catchall_4b

    throw p1

    .line 2602
    :cond_4e
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot apply policy to UID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method removeUserStateUL(IZ)Z
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 2703
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->removingUserState(I)V

    .line 2704
    nop

    .line 2707
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ltz v0, :cond_27

    .line 2708
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 2709
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_24

    .line 2710
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 2711
    move v3, v1

    .line 2707
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    .line 2716
    :cond_27
    new-array v0, v2, [I

    .line 2717
    move-object v4, v0

    move v0, v2

    :goto_2b
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_46

    .line 2718
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 2719
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p1, :cond_43

    .line 2720
    invoke-static {v4, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v4

    .line 2717
    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 2724
    :cond_46
    array-length p1, v4

    if-lez p1, :cond_57

    .line 2725
    array-length p1, v4

    :goto_4a
    if-ge v2, p1, :cond_56

    aget v0, v4, v2

    .line 2726
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2725
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 2728
    :cond_56
    move v3, v1

    .line 2730
    :cond_57
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2731
    :try_start_5a
    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    .line 2732
    if-eqz p2, :cond_64

    if-eqz v3, :cond_64

    .line 2733
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 2735
    :cond_64
    monitor-exit p1

    .line 2736
    return v3

    .line 2735
    :catchall_66
    move-exception p2

    monitor-exit p1
    :try_end_68
    .catchall {:try_start_5a .. :try_end_68} :catchall_66

    throw p2
.end method

.method setAppIdleWhitelist(IZ)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4051
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4053
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4054
    :try_start_c
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-ne v1, p2, :cond_16

    .line 4056
    monitor-exit v0

    return-void

    .line 4059
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_3e

    .line 4061
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->appIdleWlChanged(IZ)V

    .line 4062
    if-eqz p2, :cond_28

    .line 4063
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {p2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2d

    .line 4065
    :cond_28
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4067
    :goto_2d
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(I)V

    .line 4068
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V
    :try_end_33
    .catchall {:try_start_1a .. :try_end_33} :catchall_39

    .line 4070
    :try_start_33
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4071
    nop

    .line 4072
    monitor-exit v0

    .line 4073
    return-void

    .line 4070
    :catchall_39
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 4072
    :catchall_3e
    move-exception p1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_33 .. :try_end_40} :catchall_3e

    throw p1
.end method

.method public setDeviceIdleMode(Z)V
    .registers 6

    .line 2985
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2986
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "setDeviceIdleMode"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2988
    :try_start_12
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_44

    .line 2989
    :try_start_15
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-ne v3, p1, :cond_1e

    .line 2990
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_41

    .line 3006
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2990
    return-void

    .line 2992
    :cond_1e
    :try_start_1e
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    .line 2993
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v3, p1}, Lcom/android/server/net/NetworkPolicyLogger;->deviceIdleModeEnabled(Z)V

    .line 2994
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    if-eqz v3, :cond_2c

    .line 2997
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V

    .line 2999
    :cond_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_41

    .line 3000
    if-eqz p1, :cond_36

    .line 3001
    :try_start_2f
    const-string/jumbo p1, "net"

    invoke-static {p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnPhase(Ljava/lang/String;)V

    goto :goto_3c

    .line 3003
    :cond_36
    const-string/jumbo p1, "net"

    invoke-static {p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffPhase(Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_2f .. :try_end_3c} :catchall_44

    .line 3006
    :goto_3c
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3007
    nop

    .line 3008
    return-void

    .line 2999
    :catchall_41
    move-exception p1

    :try_start_42
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    :try_start_43
    throw p1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_44

    .line 3006
    :catchall_44
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method public setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    .registers 6

    .line 2755
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2757
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2759
    :try_start_d
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_27

    .line 2760
    :try_start_10
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_24

    .line 2761
    :try_start_13
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL([Landroid/net/NetworkPolicy;)V

    .line 2762
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 2763
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_21

    .line 2764
    :try_start_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_24

    .line 2766
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2767
    nop

    .line 2768
    return-void

    .line 2763
    :catchall_21
    move-exception p1

    :try_start_22
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    :try_start_23
    throw p1

    .line 2764
    :catchall_24
    move-exception p1

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_24

    :try_start_26
    throw p1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    .line 2766
    :catchall_27
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setRestrictBackground(Z)V
    .registers 7

    .line 2881
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "setRestrictBackground"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2883
    :try_start_9
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2884
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_2e

    .line 2886
    :try_start_16
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_29

    .line 2887
    :try_start_19
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundUL(Z)V

    .line 2888
    monitor-exit v4
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_26

    .line 2890
    :try_start_1d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_2e

    .line 2891
    nop

    .line 2893
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2894
    nop

    .line 2895
    return-void

    .line 2888
    :catchall_26
    move-exception p1

    :try_start_27
    monitor-exit v4
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    :try_start_28
    throw p1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    .line 2890
    :catchall_29
    move-exception p1

    :try_start_2a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2e

    .line 2893
    :catchall_2e
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method public setSubscriptionOverride(IIIJLjava/lang/String;)V
    .registers 12

    .line 3359
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, v0, p6}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceSubscriptionPlanAccess(IILjava/lang/String;)V

    .line 3362
    iget-object p6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter p6

    .line 3363
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;

    move-result-object v0

    .line 3364
    if-eqz v0, :cond_52

    .line 3365
    invoke-virtual {v0}, Landroid/telephony/SubscriptionPlan;->getDataLimitBehavior()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_52

    .line 3369
    monitor-exit p6
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_5a

    .line 3373
    iget-object p6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p6

    const/4 v0, 0x1

    const-string/jumbo v1, "netpolicy_override_enabled"

    invoke-static {p6, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p6

    const/4 v1, 0x0

    if-eqz p6, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v1

    .line 3375
    :goto_2b
    if-nez v0, :cond_2f

    if-nez p3, :cond_51

    .line 3376
    :cond_2f
    iget-object p6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 3377
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3376
    const/16 v2, 0x10

    invoke-virtual {p6, v2, p2, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    invoke-virtual {p6, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3378
    const-wide/16 v3, 0x0

    cmp-long p3, p4, v3

    if-lez p3, :cond_51

    .line 3379
    iget-object p3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 3380
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 3379
    invoke-virtual {p3, v2, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p3, p1, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3383
    :cond_51
    return-void

    .line 3366
    :cond_52
    :try_start_52
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Must provide valid SubscriptionPlan to enable overriding"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3369
    :catchall_5a
    move-exception p1

    monitor-exit p6
    :try_end_5c
    .catchall {:try_start_52 .. :try_end_5c} :catchall_5a

    throw p1
.end method

.method public setSubscriptionPlans(I[Landroid/telephony/SubscriptionPlan;Ljava/lang/String;)V
    .registers 15

    .line 3284
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceSubscriptionPlanAccess(IILjava/lang/String;)V

    .line 3285
    invoke-direct {p0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceSubscriptionPlanValidity([Landroid/telephony/SubscriptionPlan;)V

    .line 3287
    nop

    .line 3288
    nop

    .line 3289
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, v1

    move v3, v2

    move v4, v3

    :goto_12
    if-ge v3, v0, :cond_50

    aget-object v6, p2, v3

    .line 3290
    invoke-static {v6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3293
    invoke-virtual {v6}, Landroid/telephony/SubscriptionPlan;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_4d

    invoke-virtual {v6}, Landroid/telephony/SubscriptionPlan;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "NR 5G unmetered"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 3294
    invoke-virtual {v6}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v7

    const-wide v9, 0x7fffffffffffffffL

    cmp-long v7, v7, v9

    if-nez v7, :cond_4d

    .line 3295
    invoke-virtual {v6}, Landroid/telephony/SubscriptionPlan;->getDataLimitBehavior()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4a

    .line 3296
    invoke-virtual {v6}, Landroid/telephony/SubscriptionPlan;->getDataLimitBehavior()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4d

    .line 3297
    :cond_4a
    add-int/lit8 v4, v4, 0x1

    .line 3298
    move-object v5, v6

    .line 3289
    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 3303
    :cond_50
    const/4 v0, 0x1

    if-ne v4, v0, :cond_5f

    array-length v3, p2

    if-le v3, v0, :cond_5f

    .line 3304
    new-array v3, v0, [I

    const/16 v4, 0x14

    aput v4, v3, v2

    invoke-virtual {v5, v3}, Landroid/telephony/SubscriptionPlan;->setNetworkTypes([I)V

    .line 3307
    :cond_5f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 3309
    :try_start_63
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_cf

    .line 3310
    :try_start_66
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_cc

    .line 3311
    :try_start_69
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v7, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3312
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v7, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3314
    iget-object p3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {p3, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 3315
    if-eqz p3, :cond_84

    .line 3316
    invoke-direct {p0, p1, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyAL(ILjava/lang/String;)Z

    .line 3317
    invoke-direct {p0, p1, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeUpdateMobilePolicyCycleAL(ILjava/lang/String;)Z

    goto :goto_9a

    .line 3319
    :cond_84
    const-string p3, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing subscriberId for subId "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3322
    :goto_9a
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 3323
    monitor-exit v6
    :try_end_9e
    .catchall {:try_start_69 .. :try_end_9e} :catchall_c9

    .line 3324
    :try_start_9e
    monitor-exit v5
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_cc

    .line 3326
    :try_start_9f
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.telephony.action.SUBSCRIPTION_PLANS_CHANGED"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3327
    const/high16 v0, 0x40000000  # 2.0f

    invoke-virtual {p3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3328
    const-string v0, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3329
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_SUBSCRIPTION_PLANS"

    invoke-virtual {v0, p3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 3330
    iget-object p3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    .line 3331
    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3330
    invoke-virtual {p3, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_c4
    .catchall {:try_start_9f .. :try_end_c4} :catchall_cf

    .line 3333
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3334
    nop

    .line 3335
    return-void

    .line 3323
    :catchall_c9
    move-exception p1

    :try_start_ca
    monitor-exit v6
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_c9

    :try_start_cb
    throw p1

    .line 3324
    :catchall_cc
    move-exception p1

    monitor-exit v5
    :try_end_ce
    .catchall {:try_start_cb .. :try_end_ce} :catchall_cc

    :try_start_ce
    throw p1
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_cf

    .line 3333
    :catchall_cf
    move-exception p1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method setSubscriptionPlansOwner(ILjava/lang/String;)V
    .registers 5

    .line 3342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.sys.sub_plan_owner."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3343
    return-void
.end method

.method public setUidPolicy(II)V
    .registers 8

    .line 2551
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2553
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 2557
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v0, :cond_32

    .line 2558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUidPolicy: uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " policy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2561
    :cond_32
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2562
    :try_start_35
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_56

    .line 2564
    :try_start_39
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 2565
    if-eq v3, p2, :cond_4b

    .line 2566
    const/4 v4, 0x1

    invoke-direct {p0, p1, v3, p2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIIZ)V

    .line 2567
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v4, p1, v3, p2}, Lcom/android/server/net/NetworkPolicyLogger;->uidPolicyChanged(III)V
    :try_end_4b
    .catchall {:try_start_39 .. :try_end_4b} :catchall_51

    .line 2570
    :cond_4b
    :try_start_4b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2571
    nop

    .line 2572
    monitor-exit v0

    .line 2573
    return-void

    .line 2570
    :catchall_51
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2572
    :catchall_56
    move-exception p1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_4b .. :try_end_58} :catchall_56

    throw p1

    .line 2554
    :cond_59
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot apply policy to UID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setWifiMeteredOverride(Ljava/lang/String;I)V
    .registers 9

    .line 3012
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3013
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3015
    :try_start_d
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 3016
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 3017
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 3018
    invoke-static {v4}, Landroid/net/NetworkPolicyManager;->resolveNetworkId(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 3019
    iput p2, v4, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 3020
    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_3a
    .catchall {:try_start_d .. :try_end_3a} :catchall_40

    .line 3022
    :cond_3a
    goto :goto_1f

    .line 3024
    :cond_3b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3025
    nop

    .line 3026
    return-void

    .line 3024
    :catchall_40
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public snoozeLimit(Landroid/net/NetworkTemplate;)V
    .registers 5

    .line 2829
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2831
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2833
    const/16 v2, 0x23

    :try_start_f
    invoke-virtual {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->performSnooze(Landroid/net/NetworkTemplate;I)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_17

    .line 2835
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2836
    nop

    .line 2837
    return-void

    .line 2835
    :catchall_17
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public systemReady(Ljava/util/concurrent/CountDownLatch;)V
    .registers 5

    .line 912
    const-wide/16 v0, 0x1e

    :try_start_2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 918
    nop

    .line 919
    return-void

    .line 913
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Service NetworkPolicy init timeout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_14} :catch_14

    .line 915
    :catch_14
    move-exception p1

    .line 916
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 917
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Service NetworkPolicy init interrupted"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public unregisterListener(Landroid/net/INetworkPolicyListener;)V
    .registers 5

    .line 2749
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2750
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 2751
    return-void
.end method

.method updateNetworkEnabledNL()V
    .registers 18
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 1706
    move-object/from16 v6, p0

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_e

    const-string v0, "NetworkPolicy"

    const-string/jumbo v1, "updateNetworkEnabledNL()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    :cond_e
    const-wide/32 v7, 0x200000

    const-string/jumbo v0, "updateNetworkEnabledNL"

    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1712
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v9

    .line 1714
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v11, 0x1

    sub-int/2addr v0, v11

    move v12, v0

    :goto_26
    const/4 v13, 0x0

    if-ltz v12, :cond_8c

    .line 1715
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/net/NetworkPolicy;

    .line 1717
    iget-wide v0, v14, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_83

    invoke-virtual {v14}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v0

    if-nez v0, :cond_41

    goto :goto_83

    .line 1722
    :cond_41
    nop

    .line 1723
    invoke-static {v14}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1724
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v15

    .line 1725
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/time/ZonedDateTime;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    .line 1726
    iget-object v1, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    move-wide v2, v15

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v0

    .line 1729
    invoke-virtual {v14, v0, v1}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v0

    if-eqz v0, :cond_7a

    iget-wide v0, v14, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v0, v0, v15

    if-gez v0, :cond_7a

    move v13, v11

    .line 1731
    :cond_7a
    nop

    .line 1733
    xor-int/lit8 v0, v13, 0x1

    iget-object v1, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {v6, v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V

    goto :goto_89

    .line 1718
    :cond_83
    :goto_83
    iget-object v0, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {v6, v0, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V

    .line 1719
    nop

    .line 1714
    :goto_89
    add-int/lit8 v12, v12, -0x1

    goto :goto_26

    .line 1736
    :cond_8c
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0, v13, v9, v10}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 1737
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 1738
    return-void
.end method

.method updateNetworkRulesNL()V
    .registers 29
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 1851
    move-object/from16 v0, p0

    sget-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    const-string v7, "NetworkPolicy"

    if-eqz v1, :cond_e

    const-string/jumbo v1, "updateNetworkRulesNL()"

    invoke-static {v7, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    :cond_e
    const-wide/32 v8, 0x200000

    const-string/jumbo v1, "updateNetworkRulesNL"

    invoke-static {v8, v9, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1856
    :try_start_17
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getAllNetworkState()[Landroid/net/NetworkState;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->defeatNullable([Landroid/net/NetworkState;)[Landroid/net/NetworkState;

    move-result-object v10
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_21} :catch_355

    .line 1860
    nop

    .line 1864
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 1865
    new-instance v11, Landroid/util/ArrayMap;

    invoke-direct {v11}, Landroid/util/ArrayMap;-><init>()V

    .line 1866
    array-length v1, v10

    const/4 v2, 0x0

    :goto_2e
    const/4 v13, 0x1

    if-ge v2, v1, :cond_5c

    aget-object v3, v10, v2

    .line 1867
    iget-object v4, v3, Landroid/net/NetworkState;->network:Landroid/net/Network;

    if-eqz v4, :cond_44

    .line 1868
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    iget-object v5, v3, Landroid/net/NetworkState;->network:Landroid/net/Network;

    iget v5, v5, Landroid/net/Network;->netId:I

    invoke-direct {v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->parseSubId(Landroid/net/NetworkState;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1870
    :cond_44
    iget-object v4, v3, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v4, :cond_59

    iget-object v4, v3, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 1871
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v13}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;Z)Landroid/net/NetworkIdentity;

    move-result-object v4

    .line 1873
    invoke-virtual {v11, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1866
    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 1877
    :cond_5c
    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    .line 1878
    nop

    .line 1882
    new-instance v15, Landroid/util/ArraySet;

    invoke-direct {v15}, Landroid/util/ArraySet;-><init>()V

    .line 1883
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v13

    move v3, v1

    const-wide v16, 0x7fffffffffffffffL

    :goto_74
    const-wide/16 v18, -0x1

    if-ltz v3, :cond_183

    .line 1884
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicy;

    .line 1887
    invoke-virtual {v15}, Landroid/util/ArraySet;->clear()V

    .line 1888
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v1, v20

    :goto_8b
    if-ltz v1, :cond_a9

    .line 1889
    iget-object v2, v4, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v11, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v5, v20

    check-cast v5, Landroid/net/NetworkIdentity;

    invoke-virtual {v2, v5}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 1890
    invoke-virtual {v11, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkState;

    invoke-static {v15, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->collectIfaces(Landroid/util/ArraySet;Landroid/net/NetworkState;)V

    .line 1888
    :cond_a6
    add-int/lit8 v1, v1, -0x1

    goto :goto_8b

    .line 1894
    :cond_a9
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v1, :cond_c9

    .line 1895
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Applying "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to ifaces "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    :cond_c9
    iget-wide v1, v4, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v1, v1, v18

    if-eqz v1, :cond_d2

    move/from16 v20, v13

    goto :goto_d4

    :cond_d2
    const/16 v20, 0x0

    .line 1899
    :goto_d4
    iget-wide v1, v4, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v1, v1, v18

    if-eqz v1, :cond_dd

    move/from16 v18, v13

    goto :goto_df

    :cond_dd
    const/16 v18, 0x0

    .line 1900
    :goto_df
    if-nez v18, :cond_eb

    iget-boolean v1, v4, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v1, :cond_e6

    goto :goto_eb

    :cond_e6
    move/from16 v19, v3

    move-object v12, v4

    goto/16 :goto_164

    .line 1902
    :cond_eb
    :goto_eb
    if-eqz v18, :cond_13a

    invoke-virtual {v4}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v1

    if-eqz v1, :cond_13a

    .line 1903
    nop

    .line 1904
    invoke-static {v4}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1905
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/time/ZonedDateTime;

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v23

    .line 1906
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v5

    .line 1907
    iget-object v2, v4, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    const-wide/16 v8, 0x1

    move-object/from16 v1, p0

    move/from16 v19, v3

    move-object v12, v4

    move-wide/from16 v3, v23

    invoke-direct/range {v1 .. v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v1

    .line 1909
    iget-wide v3, v12, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v3, v3, v23

    if-ltz v3, :cond_131

    .line 1912
    const-wide v5, 0x7fffffffffffffffL

    goto :goto_139

    .line 1917
    :cond_131
    iget-wide v3, v12, Landroid/net/NetworkPolicy;->limitBytes:J

    sub-long/2addr v3, v1

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    move-wide v5, v1

    .line 1919
    :goto_139
    goto :goto_142

    .line 1902
    :cond_13a
    move/from16 v19, v3

    move-object v12, v4

    .line 1922
    const-wide v5, 0x7fffffffffffffffL

    .line 1925
    :goto_142
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-le v1, v13, :cond_14e

    .line 1927
    const-string/jumbo v1, "shared quota unsupported; generating rule for each iface"

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    :cond_14e
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v13

    :goto_153
    if-ltz v1, :cond_164

    .line 1931
    invoke-virtual {v15, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1932
    invoke-direct {v0, v2, v5, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuotaAsync(Ljava/lang/String;J)V

    .line 1933
    invoke-virtual {v14, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1930
    add-int/lit8 v1, v1, -0x1

    goto :goto_153

    .line 1938
    :cond_164
    :goto_164
    if-eqz v20, :cond_170

    iget-wide v1, v12, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v1, v1, v16

    if-gez v1, :cond_170

    .line 1939
    iget-wide v1, v12, Landroid/net/NetworkPolicy;->warningBytes:J

    move-wide/from16 v16, v1

    .line 1941
    :cond_170
    if-eqz v18, :cond_17c

    iget-wide v1, v12, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v1, v1, v16

    if-gez v1, :cond_17c

    .line 1942
    iget-wide v1, v12, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v16, v1

    .line 1883
    :cond_17c
    add-int/lit8 v3, v19, -0x1

    const-wide/32 v8, 0x200000

    goto/16 :goto_74

    .line 1948
    :cond_183
    const-wide/16 v8, 0x1

    array-length v1, v10

    const/4 v2, 0x0

    :goto_187
    if-ge v2, v1, :cond_1e2

    aget-object v3, v10, v2

    .line 1949
    iget-object v4, v3, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v4, :cond_1da

    iget-object v4, v3, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1da

    iget-object v4, v3, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v5, 0xb

    .line 1950
    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-nez v4, :cond_1d4

    .line 1951
    invoke-virtual {v15}, Landroid/util/ArraySet;->clear()V

    .line 1952
    invoke-static {v15, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->collectIfaces(Landroid/util/ArraySet;Landroid/net/NetworkState;)V

    .line 1953
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v3

    sub-int/2addr v3, v13

    :goto_1ac
    if-ltz v3, :cond_1ce

    .line 1954
    invoke-virtual {v15, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1955
    invoke-virtual {v14, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c6

    .line 1956
    const-wide v11, 0x7fffffffffffffffL

    invoke-direct {v0, v4, v11, v12}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuotaAsync(Ljava/lang/String;J)V

    .line 1957
    invoke-virtual {v14, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1cb

    .line 1955
    :cond_1c6
    const-wide v11, 0x7fffffffffffffffL

    .line 1953
    :goto_1cb
    add-int/lit8 v3, v3, -0x1

    goto :goto_1ac

    :cond_1ce
    const-wide v11, 0x7fffffffffffffffL

    goto :goto_1df

    .line 1950
    :cond_1d4
    const-wide v11, 0x7fffffffffffffffL

    goto :goto_1df

    .line 1949
    :cond_1da
    const-wide v11, 0x7fffffffffffffffL

    .line 1948
    :goto_1df
    add-int/lit8 v2, v2, 0x1

    goto :goto_187

    .line 1964
    :cond_1e2
    const-wide v11, 0x7fffffffffffffffL

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v13

    :goto_1ee
    if-ltz v1, :cond_204

    .line 1965
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1966
    invoke-virtual {v14, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_201

    .line 1967
    invoke-direct {v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuotaAsync(Ljava/lang/String;)V

    .line 1964
    :cond_201
    add-int/lit8 v1, v1, -0x1

    goto :goto_1ee

    .line 1970
    :cond_204
    iput-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    .line 1972
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1973
    const-string/jumbo v2, "netpolicy_quota_enabled"

    invoke-static {v1, v2, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_216

    goto :goto_217

    :cond_216
    const/4 v13, 0x0

    .line 1975
    :goto_217
    sget-wide v2, Lcom/android/server/net/NetworkPolicyManagerService;->QUOTA_UNLIMITED_DEFAULT:J

    const-string/jumbo v4, "netpolicy_quota_unlimited"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v14

    .line 1977
    const v2, 0x3dcccccd  # 0.1f

    const-string/jumbo v3, "netpolicy_quota_limited"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v7

    .line 1981
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->clear()V

    .line 1982
    array-length v5, v10

    const/4 v6, 0x0

    :goto_231
    if-ge v6, v5, :cond_328

    aget-object v1, v10, v6

    .line 1983
    if-nez v13, :cond_23e

    move/from16 v22, v5

    move/from16 v23, v6

    move-wide v1, v8

    goto/16 :goto_31c

    .line 1984
    :cond_23e
    iget-object v2, v1, Landroid/net/NetworkState;->network:Landroid/net/Network;

    if-nez v2, :cond_249

    move/from16 v22, v5

    move/from16 v23, v6

    move-wide v1, v8

    goto/16 :goto_31c

    .line 1985
    :cond_249
    iget-object v2, v1, Landroid/net/NetworkState;->network:Landroid/net/Network;

    invoke-direct {v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->getSubIdLocked(Landroid/net/Network;)I

    move-result v3

    .line 1986
    invoke-direct {v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;

    move-result-object v2

    .line 1987
    if-nez v2, :cond_25c

    move/from16 v22, v5

    move/from16 v23, v6

    move-wide v1, v8

    goto/16 :goto_31c

    .line 1990
    :cond_25c
    invoke-virtual {v2}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v20

    .line 1991
    iget-object v4, v1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v8, 0x12

    invoke-virtual {v4, v8}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    const-wide/16 v8, 0x0

    if-nez v4, :cond_277

    .line 1993
    move/from16 v27, v3

    move/from16 v22, v5

    move/from16 v23, v6

    move-wide v3, v8

    const-wide/16 v1, 0x1

    goto/16 :goto_315

    .line 1994
    :cond_277
    cmp-long v4, v20, v18

    if-nez v4, :cond_287

    .line 1995
    move/from16 v27, v3

    move/from16 v22, v5

    move/from16 v23, v6

    move-wide/from16 v3, v18

    const-wide/16 v1, 0x1

    goto/16 :goto_315

    .line 1996
    :cond_287
    cmp-long v4, v20, v11

    if-nez v4, :cond_296

    .line 1998
    move/from16 v27, v3

    move/from16 v22, v5

    move/from16 v23, v6

    move-wide v3, v14

    const-wide/16 v1, 0x1

    goto/16 :goto_315

    .line 2001
    :cond_296
    invoke-virtual {v2}, Landroid/telephony/SubscriptionPlan;->cycleIterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    .line 2002
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/time/ZonedDateTime;

    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v22

    .line 2003
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/time/ZonedDateTime;

    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v25

    .line 2004
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    invoke-virtual {v4}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v4

    .line 2005
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/time/ZonedDateTime;

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v2

    invoke-static {v4, v2}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    sget-object v11, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    .line 2006
    invoke-virtual {v2, v11}, Ljava/time/ZonedDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object v2

    .line 2007
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v11

    .line 2008
    iget-object v1, v1, Landroid/net/NetworkState;->subscriberId:Ljava/lang/String;

    .line 2009
    invoke-static {v1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    .line 2008
    move-object/from16 v1, p0

    move/from16 v27, v3

    move-object/from16 v24, v4

    move-wide/from16 v3, v22

    move/from16 v22, v5

    move/from16 v23, v6

    move-wide v5, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v1

    .line 2011
    sub-long v20, v20, v1

    .line 2013
    nop

    .line 2014
    invoke-virtual/range {v24 .. v24}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    sub-long v25, v25, v1

    const-wide/16 v1, 0x1

    sub-long v25, v25, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    div-long v25, v25, v3

    add-long v25, v25, v1

    .line 2016
    div-long v3, v20, v25

    long-to-float v3, v3

    mul-float/2addr v3, v7

    float-to-long v3, v3

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 2019
    :goto_315
    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;

    move/from16 v6, v27

    invoke-virtual {v5, v6, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1982
    :goto_31c
    add-int/lit8 v6, v23, 0x1

    move-wide v8, v1

    move/from16 v5, v22

    const-wide v11, 0x7fffffffffffffffL

    goto/16 :goto_231

    .line 2022
    :cond_328
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 2023
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2025
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2027
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2028
    return-void

    .line 1857
    :catch_355
    move-exception v0

    .line 1859
    return-void
.end method

.method updateNetworks()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1516
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworksInternal()V

    .line 1517
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1518
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/net/-$$Lambda$NetworkPolicyManagerService$lv2qqWetKVoJzbe7z3LT5idTu54;

    invoke-direct {v2, v0}, Lcom/android/server/net/-$$Lambda$NetworkPolicyManagerService$lv2qqWetKVoJzbe7z3LT5idTu54;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1521
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 1522
    return-void
.end method

.method updateNotificationsNL()V
    .registers 24
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 1151
    move-object/from16 v6, p0

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    const-string v7, "NetworkPolicy"

    if-eqz v0, :cond_e

    const-string/jumbo v0, "updateNotificationsNL()"

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    :cond_e
    const-wide/32 v8, 0x200000

    const-string/jumbo v0, "updateNotificationsNL"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1155
    new-instance v10, Landroid/util/ArraySet;

    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-direct {v10, v0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 1156
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1162
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v11

    .line 1163
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v13, 0x1

    sub-int/2addr v0, v13

    move v14, v0

    :goto_32
    if-ltz v14, :cond_192

    .line 1164
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/net/NetworkPolicy;

    .line 1165
    iget-object v0, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {v6, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->findRelevantSubIdNL(Landroid/net/NetworkTemplate;)I

    move-result v4

    .line 1168
    const/4 v0, -0x1

    if-ne v4, v0, :cond_48

    goto/16 :goto_18b

    .line 1169
    :cond_48
    invoke-virtual {v15}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v0

    if-nez v0, :cond_50

    goto/16 :goto_18b

    .line 1171
    :cond_50
    nop

    .line 1172
    invoke-static {v15}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1173
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v16

    .line 1174
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/time/ZonedDateTime;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v18

    .line 1175
    iget-object v1, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    move-wide/from16 v2, v16

    move v8, v4

    move-wide/from16 v4, v18

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v3

    .line 1178
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v8}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 1179
    invoke-static {v0}, Landroid/telephony/CarrierConfigManager;->isConfigForIdentifiedCarrier(Landroid/os/PersistableBundle;)Z

    move-result v1

    if-nez v1, :cond_96

    .line 1180
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_95

    const-string v0, "isConfigForIdentifiedCarrier returned false"

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    :cond_95
    return-void

    .line 1188
    :cond_96
    const-string v1, "data_warning_notification_bool"

    invoke-static {v0, v1, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->getBooleanDefeatingNullable(Landroid/os/PersistableBundle;Ljava/lang/String;Z)Z

    move-result v1

    .line 1190
    const-string v2, "data_limit_notification_bool"

    invoke-static {v0, v2, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->getBooleanDefeatingNullable(Landroid/os/PersistableBundle;Ljava/lang/String;Z)Z

    move-result v8

    .line 1192
    const-string v2, "data_rapid_notification_bool"

    invoke-static {v0, v2, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->getBooleanDefeatingNullable(Landroid/os/PersistableBundle;Ljava/lang/String;Z)Z

    move-result v9

    .line 1196
    const/16 v20, 0x0

    if-eqz v1, :cond_d6

    .line 1197
    invoke-virtual {v15, v3, v4}, Landroid/net/NetworkPolicy;->isOverWarning(J)Z

    move-result v0

    if-eqz v0, :cond_d3

    invoke-virtual {v15, v3, v4}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v0

    if-nez v0, :cond_d3

    .line 1198
    iget-wide v0, v15, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    cmp-long v0, v0, v16

    if-ltz v0, :cond_c0

    move v0, v13

    goto :goto_c2

    :cond_c0
    move/from16 v0, v20

    .line 1199
    :goto_c2
    if-nez v0, :cond_d0

    .line 1200
    const/16 v2, 0x22

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move-wide/from16 v21, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJLandroid/content/pm/ApplicationInfo;)V

    goto :goto_d8

    .line 1199
    :cond_d0
    move-wide/from16 v21, v3

    goto :goto_d8

    .line 1197
    :cond_d3
    move-wide/from16 v21, v3

    goto :goto_d8

    .line 1196
    :cond_d6
    move-wide/from16 v21, v3

    .line 1206
    :goto_d8
    if-eqz v8, :cond_10c

    .line 1207
    move-wide/from16 v3, v21

    invoke-virtual {v15, v3, v4}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v0

    if-eqz v0, :cond_107

    .line 1208
    iget-wide v0, v15, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v0, v0, v16

    if-ltz v0, :cond_ea

    move v0, v13

    goto :goto_ec

    :cond_ea
    move/from16 v0, v20

    .line 1209
    :goto_ec
    if-eqz v0, :cond_f8

    .line 1210
    const/16 v2, 0x24

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJLandroid/content/pm/ApplicationInfo;)V

    goto :goto_106

    .line 1212
    :cond_f8
    const/16 v2, 0x23

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJLandroid/content/pm/ApplicationInfo;)V

    .line 1213
    iget-object v0, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {v6, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyOverLimitNL(Landroid/net/NetworkTemplate;)V

    .line 1215
    :goto_106
    goto :goto_10c

    .line 1216
    :cond_107
    iget-object v0, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {v6, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyUnderLimitNL(Landroid/net/NetworkTemplate;)V

    .line 1222
    :cond_10c
    :goto_10c
    if-eqz v9, :cond_18b

    iget-wide v0, v15, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18b

    .line 1223
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    .line 1224
    sub-long v21, v11, v8

    .line 1225
    nop

    .line 1226
    iget-object v1, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    move-wide/from16 v2, v21

    move-wide v4, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v0

    .line 1228
    sub-long v18, v18, v16

    .line 1229
    mul-long v18, v18, v0

    div-long v2, v18, v8

    .line 1230
    iget-wide v4, v15, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v8, 0x3

    mul-long/2addr v4, v8

    const-wide/16 v8, 0x2

    div-long/2addr v4, v8

    .line 1232
    sget-boolean v8, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v8, :cond_162

    .line 1233
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Rapid usage considering recent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " projected "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " alert "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    :cond_162
    iget-wide v0, v15, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    const-wide/32 v8, 0x5265c00

    sub-long v8, v11, v8

    cmp-long v0, v0, v8

    if-ltz v0, :cond_16f

    move/from16 v20, v13

    .line 1239
    :cond_16f
    cmp-long v0, v2, v4

    if-lez v0, :cond_18b

    if-nez v20, :cond_18b

    .line 1240
    const/16 v8, 0x2d

    const-wide/16 v16, 0x0

    iget-object v1, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 1241
    move-object/from16 v0, p0

    move-wide/from16 v2, v21

    move-wide v4, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->findRapidBlame(Landroid/net/NetworkTemplate;JJ)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 1240
    move-object v1, v15

    move v2, v8

    move-wide/from16 v3, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJLandroid/content/pm/ApplicationInfo;)V

    .line 1163
    :cond_18b
    :goto_18b
    add-int/lit8 v14, v14, -0x1

    const-wide/32 v8, 0x200000

    goto/16 :goto_32

    .line 1247
    :cond_192
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v13

    :goto_197
    if-ltz v0, :cond_1ad

    .line 1248
    invoke-virtual {v10, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;

    .line 1249
    iget-object v2, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1aa

    .line 1250
    invoke-direct {v6, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->cancelNotification(Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;)V

    .line 1247
    :cond_1aa
    add-int/lit8 v0, v0, -0x1

    goto :goto_197

    .line 1254
    :cond_1ad
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1255
    return-void
.end method

.method updatePowerSaveWhitelistUL()V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 655
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v0}, Landroid/os/IDeviceIdleController;->getAppIdWhitelistExceptIdle()[I

    move-result-object v0

    .line 656
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 657
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    .line 658
    array-length v3, v0

    move v4, v1

    :goto_11
    if-ge v4, v3, :cond_1d

    aget v5, v0, v4

    .line 659
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 658
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 662
    :cond_1d
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v0}, Landroid/os/IDeviceIdleController;->getAppIdWhitelist()[I

    move-result-object v0

    .line 663
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 664
    if-eqz v0, :cond_37

    .line 665
    array-length v3, v0

    :goto_2b
    if-ge v1, v3, :cond_37

    aget v4, v0, v1

    .line 666
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_34} :catch_38

    .line 665
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 670
    :cond_37
    goto :goto_39

    .line 669
    :catch_38
    move-exception v0

    .line 671
    :goto_39
    return-void
.end method

.method updateRestrictBackgroundByLowPowerModeUL(Landroid/os/PowerSaveState;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5053
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundPowerState:Landroid/os/PowerSaveState;

    .line 5055
    iget-boolean v0, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 5058
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    .line 5060
    iget-boolean v2, p1, Landroid/os/PowerSaveState;->globalBatterySaverEnabled:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1c

    .line 5063
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-nez v1, :cond_15

    iget-boolean p1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-eqz p1, :cond_15

    goto :goto_16

    :cond_15
    move v3, v4

    .line 5064
    :goto_16
    iget-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundBeforeBsm:Z

    .line 5065
    move v1, v4

    goto :goto_21

    .line 5068
    :cond_1c
    iget-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    .line 5069
    xor-int/2addr v3, p1

    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundBeforeBsm:Z

    .line 5072
    :goto_21
    if-eqz v3, :cond_26

    .line 5073
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundUL(Z)V

    .line 5077
    :cond_26
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    .line 5078
    return-void
.end method

.method updateRuleForAppIdleUL(I)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 3849
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForBlacklistRules(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 3851
    :cond_7
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 3852
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRuleForAppIdleUL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3855
    :cond_25
    :try_start_25
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 3856
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_84

    const-string v3, "NetworkPolicy"

    const/4 v4, 0x2

    if-nez v2, :cond_5d

    :try_start_34
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 3857
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 3858
    invoke-direct {p0, v4, p1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    .line 3859
    sget-boolean v2, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v2, :cond_7f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateRuleForAppIdleUL DENY "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 3861
    :cond_5d
    const/4 v2, 0x0

    invoke-direct {p0, v4, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    .line 3862
    sget-boolean v2, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v2, :cond_7f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateRuleForAppIdleUL "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to DEFAULT"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_34 .. :try_end_7f} :catchall_84

    .line 3865
    :cond_7f
    :goto_7f
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3866
    nop

    .line 3867
    return-void

    .line 3865
    :catchall_84
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method updateRuleForDeviceIdleUL(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 3738
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(IZI)V

    .line 3739
    return-void
.end method

.method updateRuleForRestrictPowerUL(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 3722
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(IZI)V

    .line 3723
    return-void
.end method

.method updateRulesForAppIdleParoleUL()V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 3875
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v0}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdleParoleOn()Z

    move-result v0

    .line 3876
    nop

    .line 3877
    xor-int/lit8 v1, v0, 0x1

    const/4 v2, 0x2

    invoke-direct {p0, v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainUL(IZ)V

    .line 3879
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    .line 3880
    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_40

    .line 3881
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 3882
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    .line 3883
    if-eqz v1, :cond_27

    .line 3888
    and-int/lit8 v5, v5, 0xf

    goto :goto_2c

    .line 3891
    :cond_27
    and-int/lit16 v6, v5, 0xf0

    if-nez v6, :cond_2c

    goto :goto_3d

    .line 3893
    :cond_2c
    :goto_2c
    invoke-direct {p0, v4, v5, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(IIZ)I

    move-result v5

    .line 3894
    if-nez v5, :cond_38

    .line 3895
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_3d

    .line 3897
    :cond_38
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 3880
    :goto_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 3900
    :cond_40
    return-void
.end method

.method updateRulesForAppIdleUL()V
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 3819
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateRulesForAppIdleUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3821
    :try_start_9
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 3822
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 3825
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    .line 3826
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1a
    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ltz v4, :cond_4d

    .line 3827
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 3828
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v7}, Landroid/app/usage/UsageStatsManagerInternal;->getIdleUidsForUser(I)[I

    move-result-object v7

    .line 3829
    array-length v8, v7

    move v9, v6

    :goto_2e
    if-ge v9, v8, :cond_4a

    aget v10, v7, v9

    .line 3830
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    invoke-virtual {v11, v12, v6}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v11

    if-nez v11, :cond_47

    .line 3834
    invoke-direct {p0, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissions(I)Z

    move-result v11

    if-eqz v11, :cond_47

    .line 3835
    invoke-virtual {v2, v10, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 3829
    :cond_47
    add-int/lit8 v9, v9, 0x1

    goto :goto_2e

    .line 3826
    :cond_4a
    add-int/lit8 v4, v4, -0x1

    goto :goto_1a

    .line 3841
    :cond_4d
    invoke-direct {p0, v5, v2, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V
    :try_end_50
    .catchall {:try_start_9 .. :try_end_50} :catchall_55

    .line 3843
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3844
    nop

    .line 3845
    return-void

    .line 3843
    :catchall_55
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method updateRulesForDeviceIdleUL()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 3727
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateRulesForDeviceIdleUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3729
    :try_start_9
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(ZILandroid/util/SparseIntArray;)V
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_16

    .line 3732
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3733
    nop

    .line 3734
    return-void

    .line 3732
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method updateRulesForPowerSaveUL()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 3711
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateRulesForPowerSaveUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3713
    :try_start_9
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(ZILandroid/util/SparseIntArray;)V
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_16

    .line 3716
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3717
    nop

    .line 3718
    return-void

    .line 3716
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method updateSubscriptions()V
    .registers 13

    .line 1808
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_c

    const-string v0, "NetworkPolicy"

    const-string/jumbo v1, "updateSubscriptions()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    :cond_c
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateSubscriptions"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1811
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1812
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionManager;

    .line 1814
    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([I)[I

    move-result-object v3

    .line 1815
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1817
    new-instance v5, Landroid/util/SparseArray;

    array-length v6, v3

    invoke-direct {v5, v6}, Landroid/util/SparseArray;-><init>(I)V

    .line 1818
    array-length v6, v3

    const/4 v7, 0x0

    move v8, v7

    :goto_3f
    if-ge v8, v6, :cond_7a

    aget v9, v3, v8

    .line 1819
    invoke-virtual {v2, v9}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v10

    .line 1820
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_51

    .line 1821
    invoke-virtual {v5, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_67

    .line 1823
    :cond_51
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Missing subscriberId for subId "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "NetworkPolicy"

    invoke-static {v11, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    :goto_67
    nop

    .line 1827
    invoke-virtual {v2, v9}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIdsFromGroup()[Ljava/lang/String;

    move-result-object v9

    .line 1826
    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1828
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1818
    add-int/lit8 v8, v8, 0x1

    goto :goto_3f

    .line 1831
    :cond_7a
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1832
    :try_start_7d
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 1833
    nop

    :goto_83
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v7, v3, :cond_9b

    .line 1834
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 1835
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1834
    invoke-virtual {v3, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1833
    add-int/lit8 v7, v7, 0x1

    goto :goto_83

    .line 1838
    :cond_9b
    iput-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:Ljava/util/List;

    .line 1839
    monitor-exit v2
    :try_end_9e
    .catchall {:try_start_7d .. :try_end_9e} :catchall_a2

    .line 1841
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1842
    return-void

    .line 1839
    :catchall_a2
    move-exception v0

    :try_start_a3
    monitor-exit v2
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a2

    throw v0
.end method

.method writePolicyAL()V
    .registers 23
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock",
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 2436
    move-object/from16 v1, p0

    const-string/jumbo v0, "subscription-plan"

    const-string/jumbo v2, "revoked-restrict-background"

    const-string/jumbo v3, "uid-policy"

    const-string/jumbo v4, "whitelist"

    const-string/jumbo v5, "network-policy"

    const-string/jumbo v6, "policy-list"

    sget-boolean v7, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v7, :cond_20

    const-string v7, "NetworkPolicy"

    const-string/jumbo v8, "writePolicyAL()"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    :cond_20
    nop

    .line 2440
    const/4 v7, 0x0

    :try_start_22
    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v8
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_28} :catch_22a

    .line 2442
    :try_start_28
    new-instance v9, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v9}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2443
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v8, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2444
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v9, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2446
    invoke-interface {v9, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2447
    const-string/jumbo v10, "version"

    const/16 v11, 0xb

    invoke-static {v9, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2448
    const-string/jumbo v10, "restrictBackground"

    iget-boolean v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-static {v9, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2451
    const/4 v11, 0x0

    :goto_52
    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_58} :catch_228

    const-string v13, "limitBytes"

    const-string v14, "cyclePeriod"

    const-string v15, "cycleEnd"

    const-string v10, "cycleStart"

    if-ge v11, v12, :cond_109

    .line 2452
    :try_start_62
    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/NetworkPolicy;

    .line 2453
    iget-object v7, v12, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 2454
    invoke-virtual {v7}, Landroid/net/NetworkTemplate;->isPersistable()Z

    move-result v16
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_70} :catch_104

    if-nez v16, :cond_7a

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 v16, v8

    goto/16 :goto_f9

    .line 2456
    :cond_7a
    move-object/from16 v16, v8

    const/4 v8, 0x0

    :try_start_7d
    invoke-interface {v9, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2457
    const-string/jumbo v8, "networkTemplate"

    move-object/from16 v17, v2

    invoke-virtual {v7}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    invoke-static {v9, v8, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2458
    invoke-virtual {v7}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 2459
    if-eqz v2, :cond_9c

    .line 2460
    const-string/jumbo v8, "subscriberId"

    move-object/from16 v18, v4

    const/4 v4, 0x0

    invoke-interface {v9, v4, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_9e

    .line 2459
    :cond_9c
    move-object/from16 v18, v4

    .line 2462
    :goto_9e
    invoke-virtual {v7}, Landroid/net/NetworkTemplate;->getNetworkId()Ljava/lang/String;

    move-result-object v2

    .line 2463
    if-eqz v2, :cond_ab

    .line 2464
    const-string/jumbo v4, "networkId"

    const/4 v7, 0x0

    invoke-interface {v9, v7, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2466
    :cond_ab
    iget-object v2, v12, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v2, v2, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    .line 2467
    invoke-static {v2}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v2

    .line 2466
    invoke-static {v9, v10, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2468
    iget-object v2, v12, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v2, v2, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    .line 2469
    invoke-static {v2}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v2

    .line 2468
    invoke-static {v9, v15, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2470
    iget-object v2, v12, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v2, v2, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 2471
    invoke-static {v2}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/time/Period;)Ljava/lang/String;

    move-result-object v2

    .line 2470
    invoke-static {v9, v14, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2472
    const-string/jumbo v2, "warningBytes"

    iget-wide v7, v12, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v9, v2, v7, v8}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2473
    iget-wide v7, v12, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-static {v9, v13, v7, v8}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2474
    const-string v2, "lastWarningSnooze"

    iget-wide v7, v12, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    invoke-static {v9, v2, v7, v8}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2475
    const-string v2, "lastLimitSnooze"

    iget-wide v7, v12, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    invoke-static {v9, v2, v7, v8}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2476
    const-string v2, "metered"

    iget-boolean v4, v12, Landroid/net/NetworkPolicy;->metered:Z

    invoke-static {v9, v2, v4}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2477
    const-string v2, "inferred"

    iget-boolean v4, v12, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-static {v9, v2, v4}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2478
    const/4 v2, 0x0

    invoke-interface {v9, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2451
    :goto_f9
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v8, v16

    move-object/from16 v2, v17

    move-object/from16 v4, v18

    const/4 v7, 0x0

    goto/16 :goto_52

    .line 2542
    :catch_104
    move-exception v0

    move-object/from16 v16, v8

    goto/16 :goto_22d

    .line 2482
    :cond_109
    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 v16, v8

    const/4 v2, 0x0

    :goto_110
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_1bd

    .line 2483
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 2484
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2485
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/telephony/SubscriptionPlan;

    .line 2486
    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_136

    goto/16 :goto_1b9

    .line 2488
    :cond_136
    array-length v8, v7

    const/4 v11, 0x0

    :goto_138
    if-ge v11, v8, :cond_1b9

    aget-object v12, v7, v11

    .line 2489
    move-object/from16 v19, v7

    const/4 v7, 0x0

    invoke-interface {v9, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2490
    const-string/jumbo v7, "subId"

    invoke-static {v9, v7, v4}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2491
    const-string/jumbo v7, "ownerPackage"

    invoke-static {v9, v7, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2492
    invoke-virtual {v12}, Landroid/telephony/SubscriptionPlan;->getCycleRule()Landroid/util/RecurrenceRule;

    move-result-object v7

    .line 2493
    move/from16 v20, v4

    iget-object v4, v7, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    .line 2494
    invoke-static {v4}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v4

    .line 2493
    invoke-static {v9, v10, v4}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2495
    iget-object v4, v7, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    .line 2496
    invoke-static {v4}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v4

    .line 2495
    invoke-static {v9, v15, v4}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2497
    iget-object v4, v7, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 2498
    invoke-static {v4}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/time/Period;)Ljava/lang/String;

    move-result-object v4

    .line 2497
    invoke-static {v9, v14, v4}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2499
    const-string/jumbo v4, "title"

    invoke-virtual {v12}, Landroid/telephony/SubscriptionPlan;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v9, v4, v7}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2500
    const-string/jumbo v4, "summary"

    invoke-virtual {v12}, Landroid/telephony/SubscriptionPlan;->getSummary()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v9, v4, v7}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2501
    move-object v7, v5

    invoke-virtual {v12}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v4

    invoke-static {v9, v13, v4, v5}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2502
    const-string v4, "limitBehavior"

    invoke-virtual {v12}, Landroid/telephony/SubscriptionPlan;->getDataLimitBehavior()I

    move-result v5

    invoke-static {v9, v4, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2503
    const-string/jumbo v4, "usageBytes"

    move-object/from16 v21, v7

    move v5, v8

    invoke-virtual {v12}, Landroid/telephony/SubscriptionPlan;->getDataUsageBytes()J

    move-result-wide v7

    invoke-static {v9, v4, v7, v8}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2504
    const-string/jumbo v4, "usageTime"

    invoke-virtual {v12}, Landroid/telephony/SubscriptionPlan;->getDataUsageTime()J

    move-result-wide v7

    invoke-static {v9, v4, v7, v8}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2505
    const/4 v4, 0x0

    invoke-interface {v9, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2488
    add-int/lit8 v11, v11, 0x1

    move v8, v5

    move-object/from16 v7, v19

    move/from16 v4, v20

    move-object/from16 v5, v21

    goto :goto_138

    .line 2482
    :cond_1b9
    :goto_1b9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_110

    .line 2510
    :cond_1bd
    const/4 v0, 0x0

    :goto_1be
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2
    :try_end_1c4
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_1c4} :catch_224

    const-string/jumbo v4, "uid"

    if-ge v0, v2, :cond_1ec

    .line 2511
    :try_start_1c9
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 2512
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 2515
    if-nez v5, :cond_1d8

    goto :goto_1e9

    .line 2517
    :cond_1d8
    const/4 v7, 0x0

    invoke-interface {v9, v7, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2518
    invoke-static {v9, v4, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2519
    const-string/jumbo v2, "policy"

    invoke-static {v9, v2, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2520
    const/4 v2, 0x0

    invoke-interface {v9, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2510
    :goto_1e9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1be

    .line 2523
    :cond_1ec
    const/4 v2, 0x0

    invoke-interface {v9, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2526
    move-object/from16 v0, v18

    invoke-interface {v9, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2529
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 2530
    const/4 v3, 0x0

    :goto_1fc
    if-ge v3, v2, :cond_215

    .line 2531
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    .line 2532
    move-object/from16 v6, v17

    const/4 v7, 0x0

    invoke-interface {v9, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2533
    invoke-static {v9, v4, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2534
    invoke-interface {v9, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2530
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v17, v6

    goto :goto_1fc

    .line 2537
    :cond_215
    const/4 v2, 0x0

    invoke-interface {v9, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2539
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2541
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;
    :try_end_21e
    .catch Ljava/io/IOException; {:try_start_1c9 .. :try_end_21e} :catch_224

    move-object/from16 v8, v16

    :try_start_220
    invoke-virtual {v0, v8}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_223
    .catch Ljava/io/IOException; {:try_start_220 .. :try_end_223} :catch_228

    .line 2546
    goto :goto_234

    .line 2542
    :catch_224
    move-exception v0

    move-object/from16 v8, v16

    goto :goto_22d

    :catch_228
    move-exception v0

    goto :goto_22d

    :catch_22a
    move-exception v0

    move-object v2, v7

    move-object v8, v2

    .line 2543
    :goto_22d
    if-eqz v8, :cond_234

    .line 2544
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v8}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2547
    :cond_234
    :goto_234
    return-void
.end method
