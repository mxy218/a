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

.field private static final ATTR_SECURITYPAY_POLICY:Ljava/lang/String; = "policy"

.field private static final ATTR_SECURITYPAY_UID:Ljava/lang/String; = "uid"

.field private static final ATTR_SUBSCRIBER_ID:Ljava/lang/String; = "subscriberId"

.field private static final ATTR_SUB_ID:Ljava/lang/String; = "subId"

.field private static final ATTR_SUMMARY:Ljava/lang/String; = "summary"

.field private static final ATTR_TITLE:Ljava/lang/String; = "title"

.field private static final ATTR_UID:Ljava/lang/String; = "uid"

.field private static final ATTR_USAGE_BYTES:Ljava/lang/String; = "usageBytes"

.field private static final ATTR_USAGE_TIME:Ljava/lang/String; = "usageTime"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_VPN_NETWORK_POLICY:Ljava/lang/String; = "policy"

.field private static final ATTR_VPN_UID:Ljava/lang/String; = "uid"

.field private static final ATTR_WARNING_BYTES:Ljava/lang/String; = "warningBytes"

.field private static final CHAIN_TOGGLE_DISABLE:I = 0x2

.field private static final CHAIN_TOGGLE_ENABLE:I = 0x1

.field private static final CHAIN_TOGGLE_NONE:I = 0x0

.field private static final FLYME_BACKGROUND_RULE_SET_MOBILE:I = 0x1

.field private static final FLYME_BACKGROUND_RULE_SET_WIFI:I = 0x2

.field private static final LIMIT_TAG:Ljava/lang/String; = "Limit"

.field private static final LOGD:Z = true

.field private static final LOGV:Z = true

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

.field private static final MSG_UPDATE_INTERFACE_QUOTA:I = 0xa

.field public static final OPPORTUNISTIC_QUOTA_UNKNOWN:I = -0x1

.field private static final PROP_SUB_PLAN_OWNER:Ljava/lang/String; = "persist.sys.sub_plan_owner"

.field private static final QUOTA_FRAC_JOBS_DEFAULT:F = 0.5f

.field private static final QUOTA_FRAC_MULTIPATH_DEFAULT:F = 0.5f

.field private static final QUOTA_LIMITED_DEFAULT:F = 0.1f

.field private static final QUOTA_UNLIMITED_DEFAULT:J

.field private static final SETTINGS_SMART_VPN_ENABLED:Ljava/lang/String; = "settings_smart_vpn_enabled"

.field private static final SUB_IMSI:Ljava/lang/String; = "imsi"

.field static final TAG:Ljava/lang/String; = "NetworkPolicy"

.field private static final TAG_APP_POLICY:Ljava/lang/String; = "app-policy"

.field private static final TAG_NETWORK_POLICY:Ljava/lang/String; = "network-policy"

.field private static final TAG_POLICY_LIST:Ljava/lang/String; = "policy-list"

.field private static final TAG_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrict-background"

.field private static final TAG_REVOKED_RESTRICT_BACKGROUND:Ljava/lang/String; = "revoked-restrict-background"

.field private static final TAG_SECURITYPAY_POLICY:Ljava/lang/String; = "securitypay-policy"

.field private static final TAG_SUBSCRIPTION_PLAN:Ljava/lang/String; = "subscription-plan"

.field private static final TAG_UID_POLICY:Ljava/lang/String; = "uid-policy"

.field private static final TAG_VPN_POLICY:Ljava/lang/String; = "vpn-policy"

.field private static final TAG_WHITELIST:Ljava/lang/String; = "whitelist"

.field private static final TOTAL_BYTES:Ljava/lang/String; = "totalBytes"

.field private static final TRAFFIC_DIALOG_CLASS_NAME:Ljava/lang/String; = "com.meizu.networkmanager.TipActivity"

.field private static final TRAFFIC_DIALOG_PACKAGES_NAME:Ljava/lang/String; = "com.meizu.safe"

.field private static final TRAFFIC_MAINUI_CLASS_NAME:Ljava/lang/String; = "com.meizu.networkmanager.MainActivity"

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

.field private static final WARNING_TAG:Ljava/lang/String; = "Warning"

.field private static mLastUidPolicy:I


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

.field final mAppUidPolicy:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

.field private mMergedSubscriberIds:[Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
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

.field final mNetworkPolicyTemp:Landroid/util/ArrayMap;
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

.field final mSecurityPayPolicy:Landroid/util/SparseBooleanArray;

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

.field private mUidRulesFlyme:Landroid/util/SparseIntArray;

.field private mUidRulesLockFlyme:Ljava/lang/Object;

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

.field final mVpnPolicy:Landroid/util/SparseBooleanArray;

.field private final mWifiReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 425
    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/net/NetworkPolicyManagerService;->QUOTA_UNLIMITED_DEFAULT:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;)V
    .registers 12
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "activityManager"  # Landroid/app/IActivityManager;
    .param p3, "networkManagement"  # Landroid/os/INetworkManagementService;

    .line 671
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 672
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->getDefaultClock()Ljava/time/Clock;

    move-result-object v5

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->getDefaultSystemDir()Ljava/io/File;

    move-result-object v6

    .line 671
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;Landroid/content/pm/IPackageManager;Ljava/time/Clock;Ljava/io/File;Z)V

    .line 673
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;Landroid/content/pm/IPackageManager;Ljava/time/Clock;Ljava/io/File;Z)V
    .registers 13
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "activityManager"  # Landroid/app/IActivityManager;
    .param p3, "networkManagement"  # Landroid/os/INetworkManagementService;
    .param p4, "pm"  # Landroid/content/pm/IPackageManager;
    .param p5, "clock"  # Ljava/time/Clock;
    .param p6, "systemDir"  # Ljava/io/File;
    .param p7, "suppressDefaultPolicy"  # Z

    .line 686
    invoke-direct {p0}, Landroid/net/INetworkPolicyManager$Stub;-><init>()V

    .line 471
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 472
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 485
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    .line 490
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 494
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppUidPolicy:Landroid/util/ArrayMap;

    .line 498
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicyTemp:Landroid/util/ArrayMap;

    .line 502
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    .line 505
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    .line 509
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;

    .line 513
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 515
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    .line 518
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mVpnPolicy:Landroid/util/SparseBooleanArray;

    .line 519
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSecurityPayPolicy:Landroid/util/SparseBooleanArray;

    .line 522
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 524
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 526
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 530
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 542
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 550
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 553
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 560
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 566
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    .line 574
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    .line 579
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    .line 582
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    .line 586
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    .line 590
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    .line 594
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkMetered:Landroid/util/SparseBooleanArray;

    .line 597
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRoaming:Landroid/util/SparseBooleanArray;

    .line 601
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    .line 605
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    .line 608
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:[Ljava/lang/String;

    .line 615
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    .line 618
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 649
    new-instance v0, Lcom/android/server/net/NetworkPolicyLogger;

    invoke-direct {v0}, Lcom/android/server/net/NetworkPolicyLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    .line 664
    new-instance v0, Lcom/android/internal/util/StatLogger;

    const-string/jumbo v1, "updateNetworkEnabledNL()"

    const-string/jumbo v2, "isUidNetworkingBlocked()"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/StatLogger;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 994
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$4;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    .line 1014
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$5;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    .line 1026
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$6;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 1046
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$7;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$7;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 1065
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$8;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$8;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 1103
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$9;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$9;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    .line 1120
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$10;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$10;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    .line 1134
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$11;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$11;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeReceiver:Landroid/content/BroadcastReceiver;

    .line 1154
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$12;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$12;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    .line 1177
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$13;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$13;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1205
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$14;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$14;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    .line 1676
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$16;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$16;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 1852
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$17;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$17;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigReceiver:Landroid/content/BroadcastReceiver;

    .line 4735
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFlyme:Landroid/util/SparseIntArray;

    .line 4736
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesLockFlyme:Ljava/lang/Object;

    .line 5159
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$18;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$18;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 5284
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$19;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$19;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventHandlerCallback:Landroid/os/Handler$Callback;

    .line 687
    const-string/jumbo v0, "missing context"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 688
    const-string/jumbo v0, "missing activityManager"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 689
    const-string/jumbo v0, "missing networkManagement"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/INetworkManagementService;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 690
    const-string v0, "deviceidle"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 692
    const-string/jumbo v0, "missing Clock"

    invoke-static {p5, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Clock;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    .line 693
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 694
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 695
    iput-object p4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    .line 697
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NetworkPolicy"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 698
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 699
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 702
    new-instance v1, Lcom/android/server/ServiceThread;

    const-string v2, "NetworkPolicy.uid"

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventThread:Lcom/android/server/ServiceThread;

    .line 704
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->start()V

    .line 705
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventHandler:Landroid/os/Handler;

    .line 707
    iput-boolean p7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    .line 709
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "netpolicy.xml"

    invoke-direct {v2, p6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v3, "net-policy"

    invoke-direct {v1, v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 713
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->initFlymeChanges()V

    .line 716
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 719
    const-class v1, Lcom/android/server/net/NetworkPolicyManagerInternal;

    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$1;)V

    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 721
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 331
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 331
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 331
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkMetered:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z
    .registers 4
    .param p0, "x0"  # Landroid/util/SparseBooleanArray;
    .param p1, "x1"  # Z
    .param p2, "x2"  # Landroid/net/Network;

    .line 331
    invoke-static {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateCapabilityChange(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 331
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRoaming:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkPolicyLogger;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 331
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 331
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;)Z
    .registers 4
    .param p0, "x0"  # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Ljava/lang/String;

    .line 331
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyAL(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;)Z
    .registers 4
    .param p0, "x0"  # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Ljava/lang/String;

    .line 331
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeUpdateMobilePolicyCycleAL(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"  # I

    .line 331
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 331
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"  # Landroid/net/INetworkPolicyListener;
    .param p2, "x2"  # I
    .param p3, "x3"  # I

    .line 331
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchUidRulesChanged(Landroid/net/INetworkPolicyListener;II)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"  # Landroid/net/INetworkPolicyListener;
    .param p2, "x2"  # [Ljava/lang/String;

    .line 331
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchMeteredIfacesChanged(Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 331
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkStatsManagerInternal;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 331
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"  # Landroid/net/INetworkPolicyListener;
    .param p2, "x2"  # Z

    .line 331
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchRestrictBackgroundChanged(Landroid/net/INetworkPolicyListener;Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"  # Landroid/net/INetworkPolicyListener;
    .param p2, "x2"  # I
    .param p3, "x3"  # I

    .line 331
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchUidPoliciesChanged(Landroid/net/INetworkPolicyListener;II)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/Boolean;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Ljava/lang/Boolean;

    .line 331
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->broadcastRestrictBackgroundChanged(ILjava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 331
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;J)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # J

    .line 331
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuota(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"  # I

    .line 331
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->resetUidFirewallRules(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 331
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworksInternal()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;III)V
    .registers 5
    .param p0, "x0"  # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"  # Landroid/net/INetworkPolicyListener;
    .param p2, "x2"  # I
    .param p3, "x3"  # I
    .param p4, "x4"  # I

    .line 331
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchSubscriptionOverride(Landroid/net/INetworkPolicyListener;III)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/Set;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"  # Ljava/util/Set;
    .param p2, "x2"  # I

    .line 331
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredRestrictedPackagesInternal(Ljava/util/Set;I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkTemplate;Z)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"  # Landroid/net/NetworkTemplate;
    .param p2, "x2"  # Z

    .line 331
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabledInner(Landroid/net/NetworkTemplate;Z)V

    return-void
.end method

.method static synthetic access$3300(II)Z
    .registers 3
    .param p0, "x0"  # I
    .param p1, "x1"  # I

    .line 331
    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 331
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"  # I

    .line 331
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForTempWhitelistChangeUL(I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/Network;)I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"  # Landroid/net/Network;

    .line 331
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getSubIdLocked(Landroid/net/Network;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/net/NetworkPolicyManagerService;I)Landroid/telephony/SubscriptionPlan;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"  # I

    .line 331
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkTemplate;)I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"  # Landroid/net/NetworkTemplate;

    .line 331
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->findRelevantSubIdNL(Landroid/net/NetworkTemplate;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 331
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"  # I

    .line 331
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictionRulesForUidUL(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"  # I

    .line 331
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->onUidDeletedUL(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 331
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/net/NetworkPolicyManagerService;I)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"  # I

    .line 331
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundWhitelistUidsUL(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/net/NetworkPolicyManagerService;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"  # Z

    .line 331
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 331
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->upgradeWifiMeteredOverrideAL()V

    return-void
.end method

.method private addDefaultRestrictBackgroundWhitelistUidsUL(I)Z
    .registers 13
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 769
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 770
    .local v0, "sysConfig":Lcom/android/server/SystemConfig;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 771
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getAllowInDataUsageSave()Landroid/util/ArraySet;

    move-result-object v2

    .line 772
    .local v2, "allowDataUsage":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 773
    .local v3, "changed":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_10
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_e5

    .line 774
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 776
    .local v5, "pkg":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checking restricted background whitelisting for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " and user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "NetworkPolicy"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const/high16 v6, 0x100000

    :try_start_3c
    invoke-virtual {v1, v5, v6, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6
    :try_end_40
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3c .. :try_end_40} :catch_cb

    .line 785
    .local v6, "app":Landroid/content/pm/ApplicationInfo;
    nop

    .line 786
    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v8

    if-nez v8, :cond_5d

    .line 787
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addDefaultRestrictBackgroundWhitelistUidsUL(): skipping non-privileged app  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    goto/16 :goto_e1

    .line 791
    :cond_5d
    iget v8, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1, v8}, Landroid/os/UserHandle;->getUid(II)I

    move-result v8

    .line 792
    .local v8, "uid":I
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    const/4 v10, 0x1

    invoke-virtual {v9, v8, v10}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 794
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Adding uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " (user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") to default restricted background whitelist. Revoked status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    .line 796
    invoke-virtual {v10, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 794
    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    if-nez v9, :cond_e1

    .line 799
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "adding default package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " (uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " for user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") to restrict background whitelist"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const/4 v7, 0x4

    const/4 v9, 0x0

    invoke-direct {p0, v8, v7, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    .line 802
    const/4 v3, 0x1

    goto :goto_e1

    .line 781
    .end local v6  # "app":Landroid/content/pm/ApplicationInfo;
    .end local v8  # "uid":I
    :catch_cb
    move-exception v6

    .line 782
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No ApplicationInfo for package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    nop

    .line 773
    .end local v5  # "pkg":Ljava/lang/String;
    .end local v6  # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_e1
    :goto_e1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_10

    .line 805
    .end local v4  # "i":I
    :cond_e5
    return v3
.end method

.method private broadcastRestrictBackgroundChanged(ILjava/lang/Boolean;)V
    .registers 12
    .param p1, "uid"  # I
    .param p2, "changed"  # Ljava/lang/Boolean;

    .line 5349
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 5350
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 5351
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_31

    .line 5352
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 5353
    .local v2, "userId":I
    array-length v3, v1

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v3, :cond_31

    aget-object v5, v1, v4

    .line 5354
    .local v5, "packageName":Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5356
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5357
    const/high16 v7, 0x40000000  # 2.0f

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5358
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5353
    .end local v5  # "packageName":Ljava/lang/String;
    .end local v6  # "intent":Landroid/content/Intent;
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 5361
    .end local v2  # "userId":I
    :cond_31
    return-void
.end method

.method private static buildAllowBackgroundDataIntent()Landroid/content/Intent;
    .registers 2

    .line 5574
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.ALLOW_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static buildNetworkOverLimitIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .registers 6
    .param p0, "res"  # Landroid/content/res/Resources;
    .param p1, "template"  # Landroid/net/NetworkTemplate;

    .line 5592
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5598
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.meizu.safe"

    const-string v3, "com.meizu.networkmanager.TipActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5600
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5601
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5602
    return-object v0
.end method

.method private static buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;Landroid/net/NetworkPolicy;JLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 11
    .param p0, "template"  # Landroid/net/NetworkTemplate;
    .param p1, "policy"  # Landroid/net/NetworkPolicy;
    .param p2, "totalBytes"  # J
    .param p4, "imsi"  # Ljava/lang/String;
    .param p5, "warningType"  # Ljava/lang/String;

    .line 6168
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6169
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.meizu.safe"

    const-string v3, "com.meizu.networkmanager.TipActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6170
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6171
    const-string/jumbo v1, "policy"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6173
    const-string/jumbo v1, "imsi"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6174
    const-string/jumbo v1, "warningType"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6175
    const-string v1, "Warning"

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "warningValue"

    if-eqz v1, :cond_39

    .line 6176
    iget-wide v3, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_3e

    .line 6178
    :cond_39
    iget-wide v3, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 6180
    :goto_3e
    const-string/jumbo v1, "totalBytes"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 6181
    return-object v0
.end method

.method private static buildSnoozeRapidIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .registers 3
    .param p0, "template"  # Landroid/net/NetworkTemplate;

    .line 5585
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.SNOOZE_RAPID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5586
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5587
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5588
    return-object v0
.end method

.method private static buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .registers 3
    .param p0, "template"  # Landroid/net/NetworkTemplate;

    .line 5578
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5579
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5580
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5581
    return-object v0
.end method

.method private static buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .registers 6
    .param p0, "res"  # Landroid/content/res/Resources;
    .param p1, "template"  # Landroid/net/NetworkTemplate;

    .line 5606
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5612
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.meizu.safe"

    const-string v3, "com.meizu.networkmanager.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5614
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5615
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5616
    return-object v0
.end method

.method private cancelNotification(Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;)V
    .registers 5
    .param p1, "notificationId"  # Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;

    .line 1668
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 1669
    invoke-virtual {p1}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->getId()I

    move-result v2

    .line 1668
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1670
    return-void
.end method

.method private static collectIfaces(Landroid/util/ArraySet;Landroid/net/NetworkState;)V
    .registers 6
    .param p1, "state"  # Landroid/net/NetworkState;
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

    .line 1998
    .local p0, "ifaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1999
    .local v0, "baseIface":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 2000
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2002
    :cond_b
    iget-object v1, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    .line 2003
    .local v2, "stackedLink":Landroid/net/LinkProperties;
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 2004
    .local v3, "stackedIface":Ljava/lang/String;
    if-eqz v3, :cond_2a

    .line 2005
    invoke-virtual {p0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2007
    .end local v2  # "stackedLink":Landroid/net/LinkProperties;
    .end local v3  # "stackedIface":Ljava/lang/String;
    :cond_2a
    goto :goto_15

    .line 2008
    :cond_2b
    return-void
.end method

.method private static collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V
    .registers 6
    .param p0, "source"  # Landroid/util/SparseIntArray;
    .param p1, "target"  # Landroid/util/SparseBooleanArray;

    .line 5655
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 5656
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_12

    .line 5657
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5656
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 5659
    .end local v1  # "i":I
    :cond_12
    return-void
.end method

.method private static defeatNullable([Landroid/net/NetworkState;)[Landroid/net/NetworkState;
    .registers 2
    .param p0, "val"  # [Landroid/net/NetworkState;

    .line 6009
    if-eqz p0, :cond_4

    move-object v0, p0

    goto :goto_7

    :cond_4
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/net/NetworkState;

    :goto_7
    return-object v0
.end method

.method private dispatchMeteredIfacesChanged(Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V
    .registers 4
    .param p1, "listener"  # Landroid/net/INetworkPolicyListener;
    .param p2, "meteredIfaces"  # [Ljava/lang/String;

    .line 5121
    if-eqz p1, :cond_7

    .line 5123
    :try_start_2
    invoke-interface {p1, p2}, Landroid/net/INetworkPolicyListener;->onMeteredIfacesChanged([Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 5125
    goto :goto_7

    .line 5124
    :catch_6
    move-exception v0

    .line 5127
    :cond_7
    :goto_7
    return-void
.end method

.method private dispatchRestrictBackgroundChanged(Landroid/net/INetworkPolicyListener;Z)V
    .registers 4
    .param p1, "listener"  # Landroid/net/INetworkPolicyListener;
    .param p2, "restrictBackground"  # Z

    .line 5131
    if-eqz p1, :cond_7

    .line 5133
    :try_start_2
    invoke-interface {p1, p2}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundChanged(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 5135
    goto :goto_7

    .line 5134
    :catch_6
    move-exception v0

    .line 5137
    :cond_7
    :goto_7
    return-void
.end method

.method private dispatchSubscriptionOverride(Landroid/net/INetworkPolicyListener;III)V
    .registers 6
    .param p1, "listener"  # Landroid/net/INetworkPolicyListener;
    .param p2, "subId"  # I
    .param p3, "overrideMask"  # I
    .param p4, "overrideValue"  # I

    .line 5151
    if-eqz p1, :cond_7

    .line 5153
    :try_start_2
    invoke-interface {p1, p2, p3, p4}, Landroid/net/INetworkPolicyListener;->onSubscriptionOverride(III)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 5155
    goto :goto_7

    .line 5154
    :catch_6
    move-exception v0

    .line 5157
    :cond_7
    :goto_7
    return-void
.end method

.method private dispatchUidPoliciesChanged(Landroid/net/INetworkPolicyListener;II)V
    .registers 5
    .param p1, "listener"  # Landroid/net/INetworkPolicyListener;
    .param p2, "uid"  # I
    .param p3, "uidPolicies"  # I

    .line 5141
    if-eqz p1, :cond_7

    .line 5143
    :try_start_2
    invoke-interface {p1, p2, p3}, Landroid/net/INetworkPolicyListener;->onUidPoliciesChanged(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 5145
    goto :goto_7

    .line 5144
    :catch_6
    move-exception v0

    .line 5147
    :cond_7
    :goto_7
    return-void
.end method

.method private dispatchUidRulesChanged(Landroid/net/INetworkPolicyListener;II)V
    .registers 5
    .param p1, "listener"  # Landroid/net/INetworkPolicyListener;
    .param p2, "uid"  # I
    .param p3, "uidRules"  # I

    .line 5111
    if-eqz p1, :cond_7

    .line 5113
    :try_start_2
    invoke-interface {p1, p2, p3}, Landroid/net/INetworkPolicyListener;->onUidRulesChanged(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 5115
    goto :goto_7

    .line 5114
    :catch_6
    move-exception v0

    .line 5117
    :cond_7
    :goto_7
    return-void
.end method

.method private dumpStack(Ljava/lang/Exception;)V
    .registers 7
    .param p1, "e"  # Ljava/lang/Exception;

    .line 6185
    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 6186
    .local v0, "traces":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    .line 6187
    .local v1, "index":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6188
    .local v2, "sb":Ljava/lang/StringBuilder;
    :goto_a
    array-length v3, v0

    if-ge v1, v3, :cond_30

    const/16 v3, 0x8

    if-ge v1, v3, :cond_30

    .line 6189
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v1

    .line 6190
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6191
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6192
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 6194
    :cond_30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dump stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NetworkPolicy"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6195
    return-void
.end method

.method private enableFirewallChainUL(IZ)V
    .registers 6
    .param p1, "chain"  # I
    .param p2, "enable"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 5504
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 5505
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_11

    .line 5507
    return-void

    .line 5509
    :cond_11
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5511
    :try_start_16
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2}, Landroid/os/INetworkManagementService;->setFirewallChainEnabled(IZ)V

    .line 5512
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->firewallChainEnabled(IZ)V
    :try_end_20
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_20} :catch_23
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_20} :catch_21

    goto :goto_2c

    .line 5515
    :catch_21
    move-exception v0

    goto :goto_2d

    .line 5513
    :catch_23
    move-exception v0

    .line 5514
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "problem enable firewall chain"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5517
    .end local v0  # "e":Ljava/lang/IllegalStateException;
    :goto_2c
    nop

    .line 5518
    :goto_2d
    return-void
.end method

.method private enforceSubscriptionPlanAccess(IILjava/lang/String;)V
    .registers 14
    .param p1, "subId"  # I
    .param p2, "callingUid"  # I
    .param p3, "callingPackage"  # Ljava/lang/String;

    .line 3558
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p2, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 3562
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3564
    .local v0, "token":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionManager;

    .line 3565
    invoke-virtual {v2, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 3566
    .local v2, "si":Landroid/telephony/SubscriptionInfo;
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v3, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_ab

    .line 3568
    .local v3, "config":Landroid/os/PersistableBundle;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3569
    nop

    .line 3572
    if-eqz v2, :cond_32

    .line 3573
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v4

    if-eqz v4, :cond_32

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4, p3}, Landroid/telephony/SubscriptionInfo;->canManageSubscription(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 3574
    return-void

    .line 3579
    :cond_32
    const/4 v4, 0x0

    if-eqz v3, :cond_49

    .line 3580
    nop

    .line 3581
    const-string v5, "config_plans_package_override_string"

    invoke-virtual {v3, v5, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3582
    .local v5, "overridePackage":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_49

    .line 3583
    invoke-static {v5, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 3584
    return-void

    .line 3589
    .end local v5  # "overridePackage":Ljava/lang/String;
    :cond_49
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v5}, Landroid/telephony/CarrierConfigManager;->getDefaultCarrierServicePackageName()Ljava/lang/String;

    move-result-object v5

    .line 3590
    .local v5, "defaultPackage":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5c

    .line 3591
    invoke-static {v5, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 3592
    return-void

    .line 3596
    :cond_5c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "persist.sys.sub_plan_owner."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3597
    .local v6, "testPackage":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7f

    .line 3598
    invoke-static {v6, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7f

    .line 3599
    return-void

    .line 3603
    :cond_7f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fw.sub_plan_owner."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3604
    .local v4, "legacyTestPackage":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a1

    .line 3605
    invoke-static {v4, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a1

    .line 3606
    return-void

    .line 3610
    :cond_a1
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.MANAGE_SUBSCRIPTION_PLANS"

    const-string v9, "NetworkPolicy"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3611
    return-void

    .line 3568
    .end local v2  # "si":Landroid/telephony/SubscriptionInfo;
    .end local v3  # "config":Landroid/os/PersistableBundle;
    .end local v4  # "legacyTestPackage":Ljava/lang/String;
    .end local v5  # "defaultPackage":Ljava/lang/String;
    .end local v6  # "testPackage":Ljava/lang/String;
    :catchall_ab
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private enqueueNotification(Landroid/net/NetworkPolicy;IJLandroid/content/pm/ApplicationInfo;)V
    .registers 28
    .param p1, "policy"  # Landroid/net/NetworkPolicy;
    .param p2, "type"  # I
    .param p3, "totalBytes"  # J
    .param p5, "rapidBlame"  # Landroid/content/pm/ApplicationInfo;

    .line 1531
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    new-instance v6, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;

    invoke-direct {v6, v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkPolicy;I)V

    .line 1532
    .local v6, "notificationId":Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v8, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1534
    .local v7, "builder":Landroid/app/Notification$Builder;
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 1535
    const-wide/16 v9, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1536
    iget-object v9, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const v10, 0x106001c

    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 1539
    iget-object v9, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1542
    .local v9, "res":Landroid/content/res/Resources;
    const/16 v10, 0x2d

    const/4 v13, 0x0

    if-eq v2, v10, :cond_16b

    const/4 v10, 0x4

    const/16 v14, 0x8

    packed-switch v2, :pswitch_data_210

    .line 1653
    return-void

    .line 1595
    :pswitch_3f  #0x24
    iget-object v15, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v15}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v15

    if-eq v15, v8, :cond_52

    if-eq v15, v10, :cond_4a

    .line 1603
    return-void

    .line 1600
    :cond_4a
    const v10, 0x10401c9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1601
    .local v10, "title":Ljava/lang/CharSequence;
    goto :goto_5a

    .line 1597
    .end local v10  # "title":Ljava/lang/CharSequence;
    :cond_52
    const v10, 0x10401c0

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1598
    .restart local v10  # "title":Ljava/lang/CharSequence;
    nop

    .line 1605
    :goto_5a
    iget-wide v11, v1, Landroid/net/NetworkPolicy;->limitBytes:J

    sub-long v11, v3, v11

    .line 1606
    .local v11, "overBytes":J
    new-array v15, v8, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1607
    invoke-static {v8, v11, v12, v14}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v15, v13

    .line 1606
    const v8, 0x10401bf

    invoke-virtual {v9, v8, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1609
    .local v8, "body":Ljava/lang/CharSequence;
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1610
    const v14, 0x1080078

    invoke-virtual {v7, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1611
    sget-object v14, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_STATUS:Ljava/lang/String;

    invoke-virtual {v7, v14}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1613
    iget-object v14, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v9, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v14

    .line 1615
    .local v14, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isHeadlessSystemUserBuild()Z

    move-result v15

    if-eqz v15, :cond_a1

    .line 1616
    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/16 v17, 0x0

    const/high16 v19, 0x8000000

    const/16 v20, 0x0

    sget-object v21, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v16, v13

    move-object/from16 v18, v14

    invoke-static/range {v16 .. v21}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_1d9

    .line 1620
    :cond_a1
    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {v15, v13, v14, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1623
    goto/16 :goto_1d9

    .line 1567
    .end local v8  # "body":Ljava/lang/CharSequence;
    .end local v10  # "title":Ljava/lang/CharSequence;
    .end local v11  # "overBytes":J
    .end local v14  # "intent":Landroid/content/Intent;
    :pswitch_ae  #0x23
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    const/4 v8, 0x1

    if-eq v2, v8, :cond_c3

    if-eq v2, v10, :cond_ba

    .line 1575
    return-void

    .line 1572
    :cond_ba
    const v2, 0x10401ca

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1573
    .local v2, "title":Ljava/lang/CharSequence;
    move-object v10, v2

    goto :goto_cb

    .line 1569
    .end local v2  # "title":Ljava/lang/CharSequence;
    :cond_c3
    const v2, 0x10401c1

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1570
    .restart local v2  # "title":Ljava/lang/CharSequence;
    move-object v10, v2

    .line 1577
    .end local v2  # "title":Ljava/lang/CharSequence;
    .restart local v10  # "title":Ljava/lang/CharSequence;
    :goto_cb
    const v2, 0x10401be

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1579
    .restart local v8  # "body":Ljava/lang/CharSequence;
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1580
    const v2, 0x10807e5

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1582
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v9, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v2

    .line 1584
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isHeadlessSystemUserBuild()Z

    move-result v11

    if-eqz v11, :cond_ff

    .line 1585
    iget-object v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/16 v17, 0x0

    const/high16 v19, 0x8000000

    const/16 v20, 0x0

    sget-object v21, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v16, v11

    move-object/from16 v18, v2

    invoke-static/range {v16 .. v21}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_1d9

    .line 1589
    :cond_ff
    iget-object v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v12, 0x8000000

    invoke-static {v11, v13, v2, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1592
    goto/16 :goto_1d9

    .line 1544
    .end local v2  # "intent":Landroid/content/Intent;
    .end local v8  # "body":Ljava/lang/CharSequence;
    .end local v10  # "title":Ljava/lang/CharSequence;
    :pswitch_10c  #0x22
    const v2, 0x10401c8

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1545
    .restart local v10  # "title":Ljava/lang/CharSequence;
    const v2, 0x10401c7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1546
    invoke-static {v11, v3, v4, v14}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v13

    .line 1545
    invoke-virtual {v9, v2, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1548
    .restart local v8  # "body":Ljava/lang/CharSequence;
    const v2, 0x1080078

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1550
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v2

    .line 1551
    .local v2, "snoozeIntent":Landroid/content/Intent;
    iget-object v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v12, 0x8000000

    invoke-static {v11, v13, v2, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1554
    iget-object v11, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v9, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v11

    .line 1556
    .local v11, "viewIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isHeadlessSystemUserBuild()Z

    move-result v12

    if-eqz v12, :cond_15f

    .line 1557
    iget-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/16 v17, 0x0

    const/high16 v19, 0x8000000

    const/16 v20, 0x0

    sget-object v21, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v16, v12

    move-object/from16 v18, v11

    invoke-static/range {v16 .. v21}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_1d9

    .line 1561
    :cond_15f
    iget-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v14, 0x8000000

    invoke-static {v12, v13, v11, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1564
    goto :goto_1d9

    .line 1626
    .end local v2  # "snoozeIntent":Landroid/content/Intent;
    .end local v8  # "body":Ljava/lang/CharSequence;
    .end local v10  # "title":Ljava/lang/CharSequence;
    .end local v11  # "viewIntent":Landroid/content/Intent;
    :cond_16b
    const v2, 0x10401c4

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1627
    .restart local v10  # "title":Ljava/lang/CharSequence;
    if-eqz v5, :cond_18c

    .line 1628
    const v2, 0x10401c2

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1629
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v8, v13

    .line 1628
    invoke-virtual {v9, v2, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .local v2, "body":Ljava/lang/CharSequence;
    goto :goto_194

    .line 1631
    .end local v2  # "body":Ljava/lang/CharSequence;
    :cond_18c
    const v2, 0x10401c3

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 1634
    .restart local v8  # "body":Ljava/lang/CharSequence;
    :goto_194
    const v2, 0x1080078

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1636
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildSnoozeRapidIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v2

    .line 1637
    .local v2, "snoozeIntent":Landroid/content/Intent;
    iget-object v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v12, 0x8000000

    invoke-static {v11, v13, v2, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1640
    iget-object v11, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v9, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v11

    .line 1642
    .restart local v11  # "viewIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isHeadlessSystemUserBuild()Z

    move-result v12

    if-eqz v12, :cond_1cd

    .line 1643
    iget-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/16 v17, 0x0

    const/high16 v19, 0x8000000

    const/16 v20, 0x0

    sget-object v21, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v16, v12

    move-object/from16 v18, v11

    invoke-static/range {v16 .. v21}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_1d9

    .line 1647
    :cond_1cd
    iget-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v14, 0x8000000

    invoke-static {v12, v13, v11, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1650
    nop

    .line 1657
    .end local v2  # "snoozeIntent":Landroid/content/Intent;
    .end local v11  # "viewIntent":Landroid/content/Intent;
    :goto_1d9
    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1658
    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1659
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1660
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v2, v8}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 1662
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v11, Landroid/app/NotificationManager;

    invoke-virtual {v2, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {v6}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->getTag()Ljava/lang/String;

    move-result-object v11

    .line 1663
    invoke-virtual {v6}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->getId()I

    move-result v12

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1662
    invoke-virtual {v2, v11, v12, v13, v14}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1664
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1665
    return-void

    nop

    :pswitch_data_210
    .packed-switch 0x22
        :pswitch_10c  #00000022
        :pswitch_ae  #00000023
        :pswitch_3f  #00000024
    .end packed-switch
.end method

.method private ensureActiveMobilePolicyAL()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 2242
    const-string v0, "NetworkPolicy"

    const-string v1, "ensureActiveMobilePolicyAL()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    if-eqz v0, :cond_c

    return-void

    .line 2245
    :cond_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 2246
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 2247
    .local v1, "subId":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2249
    .local v2, "subscriberId":Ljava/lang/String;
    invoke-direct {p0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyAL(ILjava/lang/String;)Z

    .line 2245
    .end local v1  # "subId":I
    .end local v2  # "subscriberId":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 2251
    .end local v0  # "i":I
    :cond_29
    return-void
.end method

.method private ensureActiveMobilePolicyAL(ILjava/lang/String;)Z
    .registers 12
    .param p1, "subId"  # I
    .param p2, "subscriberId"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 2264
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

    .line 2266
    .local v0, "probeIdent":Landroid/net/NetworkIdentity;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_15
    const-string v3, "NetworkPolicy"

    if-ltz v1, :cond_4c

    .line 2267
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    .line 2268
    .local v4, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v4, v0}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 2270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found template "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " which matches subscriber "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2271
    invoke-static {p2}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2270
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    const/4 v2, 0x0

    return v2

    .line 2266
    .end local v4  # "template":Landroid/net/NetworkTemplate;
    :cond_49
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 2277
    .end local v1  # "i":I
    :cond_4c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No policy for subscriber "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; generating default policy"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildDefaultMobilePolicy(ILjava/lang/String;)Landroid/net/NetworkPolicy;

    move-result-object v1

    .line 2280
    .local v1, "policy":Landroid/net/NetworkPolicy;
    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->addNetworkPolicyAL(Landroid/net/NetworkPolicy;)V

    .line 2281
    return v2
.end method

.method private findRapidBlame(Landroid/net/NetworkTemplate;JJ)Landroid/content/pm/ApplicationInfo;
    .registers 20
    .param p1, "template"  # Landroid/net/NetworkTemplate;
    .param p2, "start"  # J
    .param p4, "end"  # J

    .line 1425
    move-object v1, p0

    const-wide/16 v2, 0x0

    .line 1426
    .local v2, "totalBytes":J
    const-wide/16 v4, 0x0

    .line 1427
    .local v4, "maxBytes":J
    const/4 v0, 0x0

    .line 1429
    .local v0, "maxUid":I
    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v6

    .line 1430
    .local v6, "stats":Landroid/net/NetworkStats;
    const/4 v7, 0x0

    .line 1431
    .local v7, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v8, 0x0

    move v9, v0

    .end local v0  # "maxUid":I
    .local v8, "i":I
    .local v9, "maxUid":I
    :goto_d
    invoke-virtual {v6}, Landroid/net/NetworkStats;->size()I

    move-result v0

    if-ge v8, v0, :cond_28

    .line 1432
    invoke-virtual {v6, v8, v7}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v7

    .line 1433
    iget-wide v10, v7, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v12, v7, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v10, v12

    .line 1434
    .local v10, "bytes":J
    add-long/2addr v2, v10

    .line 1435
    cmp-long v0, v10, v4

    if-lez v0, :cond_25

    .line 1436
    move-wide v4, v10

    .line 1437
    iget v0, v7, Landroid/net/NetworkStats$Entry;->uid:I

    move v9, v0

    .line 1431
    .end local v10  # "bytes":J
    :cond_25
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 1443
    .end local v8  # "i":I
    :cond_28
    const-wide/16 v10, 0x0

    cmp-long v0, v4, v10

    if-lez v0, :cond_58

    const-wide/16 v10, 0x2

    div-long v10, v2, v10

    cmp-long v0, v4, v10

    if-lez v0, :cond_58

    .line 1444
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    .line 1445
    .local v8, "packageNames":[Ljava/lang/String;
    if-eqz v8, :cond_58

    array-length v0, v8

    const/4 v10, 0x1

    if-ne v0, v10, :cond_58

    .line 1447
    :try_start_46
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v10, 0x0

    aget-object v10, v8, v10

    const v11, 0x4c2200

    invoke-virtual {v0, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_56
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_46 .. :try_end_56} :catch_57

    return-object v0

    .line 1450
    :catch_57
    move-exception v0

    .line 1455
    .end local v8  # "packageNames":[Ljava/lang/String;
    :cond_58
    const/4 v0, 0x0

    return-object v0
.end method

.method private findRelevantSubIdNL(Landroid/net/NetworkTemplate;)I
    .registers 14
    .param p1, "template"  # Landroid/net/NetworkTemplate;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 1470
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 1471
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1472
    .local v1, "subId":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1473
    .local v2, "subscriberId":Ljava/lang/String;
    new-instance v11, Landroid/net/NetworkIdentity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v3, v11

    move-object v6, v2

    invoke-direct/range {v3 .. v10}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 1476
    .local v3, "probeIdent":Landroid/net/NetworkIdentity;
    invoke-virtual {p1, v3}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1477
    return v1

    .line 1470
    .end local v1  # "subId":I
    .end local v2  # "subscriberId":Ljava/lang/String;
    .end local v3  # "probeIdent":Landroid/net/NetworkIdentity;
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1480
    .end local v0  # "i":I
    :cond_2e
    const/4 v0, -0x1

    return v0
.end method

.method private flymeChangeUidRules(II)I
    .registers 4
    .param p1, "uidRules"  # I
    .param p2, "uidPolicy"  # I

    .line 6203
    and-int/lit16 v0, p2, 0x800

    if-eqz v0, :cond_6

    .line 6204
    or-int/lit16 p1, p1, 0x800

    .line 6208
    :cond_6
    and-int/lit16 v0, p2, 0x400

    if-eqz v0, :cond_c

    .line 6209
    or-int/lit16 p1, p1, 0x400

    .line 6211
    :cond_c
    return p1
.end method

.method private static getBooleanDefeatingNullable(Landroid/os/PersistableBundle;Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "bundle"  # Landroid/os/PersistableBundle;
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "defaultValue"  # Z

    .line 6014
    if-eqz p0, :cond_7

    invoke-virtual {p0, p1, p2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_8

    :cond_7
    move v0, p2

    :goto_8
    return v0
.end method

.method private static getDefaultClock()Ljava/time/Clock;
    .registers 5

    .line 680
    new-instance v0, Landroid/os/BestClock;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/time/Clock;

    invoke-static {}, Landroid/os/SystemClock;->currentNetworkTimeClock()Ljava/time/Clock;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 681
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Landroid/os/BestClock;-><init>(Ljava/time/ZoneId;[Ljava/time/Clock;)V

    .line 680
    return-object v0
.end method

.method private static getDefaultSystemDir()Ljava/io/File;
    .registers 3

    .line 676
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getImsiFromTemplate(Landroid/net/NetworkTemplate;)Ljava/lang/String;
    .registers 20
    .param p1, "template"  # Landroid/net/NetworkTemplate;

    .line 1486
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkTemplate;->isMatchRuleMobile()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_41

    .line 1487
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 1488
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    .line 1491
    .local v3, "sub":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v4

    .line 1492
    .local v4, "subIds":[I
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1b
    if-ge v6, v5, :cond_3e

    aget v7, v4, v6

    .line 1493
    .local v7, "subId":I
    invoke-virtual {v1, v7}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v16

    .line 1494
    .local v16, "subscriberId":Ljava/lang/String;
    new-instance v17, Landroid/net/NetworkIdentity;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v8, v17

    move-object/from16 v11, v16

    invoke-direct/range {v8 .. v15}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 1497
    .local v8, "probeIdent":Landroid/net/NetworkIdentity;
    move-object/from16 v9, p1

    invoke-virtual {v9, v8}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v10

    if-eqz v10, :cond_3b

    .line 1498
    return-object v16

    .line 1492
    .end local v7  # "subId":I
    .end local v8  # "probeIdent":Landroid/net/NetworkIdentity;
    .end local v16  # "subscriberId":Ljava/lang/String;
    :cond_3b
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 1501
    :cond_3e
    move-object/from16 v9, p1

    return-object v2

    .line 1503
    .end local v1  # "tele":Landroid/telephony/TelephonyManager;
    .end local v3  # "sub":Landroid/telephony/SubscriptionManager;
    .end local v4  # "subIds":[I
    :cond_41
    move-object/from16 v9, p1

    return-object v2
.end method

.method private getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .registers 12
    .param p1, "template"  # Landroid/net/NetworkTemplate;
    .param p2, "start"  # J
    .param p4, "end"  # J

    .line 5545
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsManagerInternal;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v0
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_a

    return-wide v0

    .line 5546
    :catch_a
    move-exception v0

    .line 5547
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read network stats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkPolicy"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5548
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .registers 12
    .param p1, "template"  # Landroid/net/NetworkTemplate;
    .param p2, "start"  # J
    .param p4, "end"  # J

    .line 5554
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsManagerInternal;->getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    .line 5555
    :catch_a
    move-exception v0

    .line 5556
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read network stats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkPolicy"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5557
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    return-object v1
.end method

.method private getPlatformDefaultLimitBytes()J
    .registers 3

    .line 2295
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private getPlatformDefaultWarningBytes()J
    .registers 6

    .line 2285
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2287
    .local v0, "dataWarningConfig":I
    int-to-long v1, v0

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_15

    .line 2288
    return-wide v3

    .line 2290
    :cond_15
    int-to-long v1, v0

    const-wide/32 v3, 0x100000

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method private getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;
    .registers 8
    .param p1, "subId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 5946
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/SubscriptionPlan;

    .line 5947
    .local v0, "plans":[Landroid/telephony/SubscriptionPlan;
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 5948
    array-length v1, v0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_39

    aget-object v3, v0, v2

    .line 5949
    .local v3, "plan":Landroid/telephony/SubscriptionPlan;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionPlan;->getCycleRule()Landroid/util/RecurrenceRule;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/RecurrenceRule;->isRecurring()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 5951
    return-object v3

    .line 5954
    :cond_1f
    invoke-virtual {v3}, Landroid/telephony/SubscriptionPlan;->cycleIterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Range;

    .line 5955
    .local v4, "cycle":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    invoke-static {v5}, Ljava/time/ZonedDateTime;->now(Ljava/time/Clock;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 5956
    return-object v3

    .line 5948
    .end local v3  # "plan":Landroid/telephony/SubscriptionPlan;
    .end local v4  # "cycle":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 5961
    :cond_39
    const/4 v1, 0x0

    return-object v1
.end method

.method private getSubIdLocked(Landroid/net/Network;)I
    .registers 5
    .param p1, "network"  # Landroid/net/Network;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 5941
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    iget v1, p1, Landroid/net/Network;->netId:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method private getTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .registers 8
    .param p1, "template"  # Landroid/net/NetworkTemplate;
    .param p2, "start"  # J
    .param p4, "end"  # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5540
    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getUidForPackage(Ljava/lang/String;I)I
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 5916
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x402000

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v0
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_d} :catch_e

    return v0

    .line 5918
    :catch_e
    move-exception v0

    .line 5919
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, -0x1

    return v1
.end method

.method private handleFlymeBackgroundRestriction(IIZ)V
    .registers 15
    .param p1, "uid"  # I
    .param p2, "uidPolicy"  # I
    .param p3, "isForground"  # Z

    .line 4749
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesLockFlyme:Ljava/lang/Object;

    monitor-enter v0

    .line 4750
    and-int/lit16 v1, p2, 0x200

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_b

    move v1, v2

    goto :goto_c

    :cond_b
    move v1, v3

    .line 4751
    .local v1, "restrictMobile":Z
    :goto_c
    and-int/lit16 v4, p2, 0x100

    if-eqz v4, :cond_12

    move v4, v2

    goto :goto_13

    :cond_12
    move v4, v3

    .line 4752
    .local v4, "restrictWifi":Z
    :goto_13
    :try_start_13
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFlyme:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 4753
    .local v5, "restrictions":I
    and-int/lit8 v6, v5, 0x1

    if-eqz v6, :cond_1f

    move v6, v2

    goto :goto_20

    :cond_1f
    move v6, v3

    .line 4754
    .local v6, "rulesOnMobile":Z
    :goto_20
    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_26

    move v7, v2

    goto :goto_27

    :cond_26
    move v7, v3

    .line 4755
    .local v7, "rulesOnWifi":Z
    :goto_27
    const-string v8, "NetworkPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "uid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", isForground: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", mUidRulesFlyme: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4757
    const-string v8, "NetworkPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Uid policy restrictions on mobile and wifi: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4759
    if-eqz p3, :cond_85

    .line 4760
    const-string v8, "NetworkPolicy"

    const-string v9, "Clear uid rules when in forground"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4761
    if-eqz v6, :cond_7a

    .line 4762
    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setFlymeBackgroundRule(IIZ)V

    .line 4764
    :cond_7a
    if-eqz v7, :cond_7f

    .line 4765
    invoke-direct {p0, p1, v2, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setFlymeBackgroundRule(IIZ)V

    .line 4767
    :cond_7f
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFlyme:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_bb

    .line 4769
    :cond_85
    move v8, v5

    .line 4770
    .local v8, "newRules":I
    if-nez v6, :cond_8f

    if-eqz v1, :cond_8f

    .line 4771
    invoke-direct {p0, p1, v3, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setFlymeBackgroundRule(IIZ)V

    .line 4772
    or-int/lit8 v8, v8, 0x1

    .line 4774
    :cond_8f
    if-nez v7, :cond_98

    if-eqz v4, :cond_98

    .line 4775
    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setFlymeBackgroundRule(IIZ)V

    .line 4776
    or-int/lit8 v8, v8, 0x2

    .line 4778
    :cond_98
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Add background rules "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " on uid "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4779
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFlyme:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 4781
    .end local v1  # "restrictMobile":Z
    .end local v4  # "restrictWifi":Z
    .end local v5  # "restrictions":I
    .end local v6  # "rulesOnMobile":Z
    .end local v7  # "rulesOnWifi":Z
    .end local v8  # "newRules":I
    :goto_bb
    monitor-exit v0

    .line 4782
    return-void

    .line 4781
    :catchall_bd
    move-exception v1

    monitor-exit v0
    :try_end_bf
    .catchall {:try_start_13 .. :try_end_bf} :catchall_bd

    throw v1
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

    .line 5976
    .local p1, "oldRestrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p2, "newRestrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManagerReady:Z

    if-nez v0, :cond_5

    .line 5977
    return-void

    .line 5979
    :cond_5
    if-nez p1, :cond_20

    .line 5980
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5981
    .local v1, "uid":I
    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 5982
    .end local v1  # "uid":I
    goto :goto_b

    .line 5983
    :cond_1f
    return-void

    .line 5985
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

    .line 5986
    .restart local v1  # "uid":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 5987
    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 5989
    .end local v1  # "uid":I
    :cond_41
    goto :goto_24

    .line 5990
    :cond_42
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5991
    .restart local v1  # "uid":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_63

    .line 5992
    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 5994
    .end local v1  # "uid":I
    :cond_63
    goto :goto_46

    .line 5995
    :cond_64
    return-void
.end method

.method private hasInternetPermissions(I)Z
    .registers 4
    .param p1, "uid"  # I

    .line 4609
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    const-string v1, "android.permission.INTERNET"

    invoke-interface {v0, v1, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_d

    if-eqz v0, :cond_c

    .line 4611
    const/4 v0, 0x0

    return v0

    .line 4614
    :cond_c
    goto :goto_e

    .line 4613
    :catch_d
    move-exception v0

    .line 4615
    :goto_e
    const/4 v0, 0x1

    return v0
.end method

.method private static hasRule(II)Z
    .registers 3
    .param p0, "uidRules"  # I
    .param p1, "rule"  # I

    .line 6005
    and-int v0, p0, p1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private initFlymeChanges()V
    .registers 2

    .line 6199
    const/4 v0, 0x0

    sput v0, Lcom/android/server/net/NetworkPolicyManagerService;->mLastUidPolicy:I

    .line 6200
    return-void
.end method

.method private initService(Ljava/util/concurrent/CountDownLatch;)V
    .registers 18
    .param p1, "initCompleteSignal"  # Ljava/util/concurrent/CountDownLatch;

    .line 809
    move-object/from16 v1, p0

    const-wide/32 v2, 0x200000

    const-string/jumbo v0, "systemReady"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 810
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v4

    .line 813
    .local v4, "oldPriority":I
    const/4 v0, -0x2

    :try_start_14
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 814
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isBandwidthControlEnabled()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 815
    const-string v0, "NetworkPolicy"

    const-string v5, "bandwidth controls disabled, unable to enforce policy"

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_1df

    .line 970
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 971
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 816
    return-void

    .line 819
    :cond_2b
    :try_start_2b
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 820
    const-class v0, Lcom/android/server/net/NetworkStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsManagerInternal;

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;

    .line 822
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_42
    .catchall {:try_start_2b .. :try_end_42} :catchall_1df

    .line 823
    :try_start_42
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_1dc

    .line 824
    :try_start_45
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveWhitelistUL()V

    .line 825
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 826
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v7, Lcom/android/server/net/NetworkPolicyManagerService$1;

    invoke-direct {v7, v1}, Lcom/android/server/net/NetworkPolicyManagerService$1;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-virtual {v0, v7}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 847
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v7, 0x6

    invoke-virtual {v0, v7}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 850
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    .line 852
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->waitForAdminData()V

    .line 855
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->readPolicyAL()V

    .line 858
    iget-boolean v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    iput-boolean v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundBeforeBsm:Z

    .line 859
    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 v9, 0xa

    .line 860
    invoke-virtual {v8, v9}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundPowerState:Landroid/os/PowerSaveState;

    .line 861
    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundPowerState:Landroid/os/PowerSaveState;

    iget-boolean v8, v8, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 863
    .local v8, "localRestrictBackground":Z
    if-eqz v8, :cond_8a

    iget-boolean v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    if-nez v9, :cond_8a

    .line 864
    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    .line 866
    :cond_8a
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v9, Lcom/android/server/net/NetworkPolicyManagerService$2;

    invoke-direct {v9, v1}, Lcom/android/server/net/NetworkPolicyManagerService$2;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-virtual {v0, v9}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 881
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundWhitelistUidsUL()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 882
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 885
    :cond_9d
    iget-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    invoke-direct {v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundUL(Z)V

    .line 886
    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    .line 887
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 888
    .end local v8  # "localRestrictBackground":Z
    monitor-exit v6
    :try_end_aa
    .catchall {:try_start_45 .. :try_end_aa} :catchall_1d9

    .line 889
    :try_start_aa
    monitor-exit v5
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_1dc

    .line 891
    :try_start_ab
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;
    :try_end_b5
    .catchall {:try_start_ab .. :try_end_b5} :catchall_1df

    .line 893
    :try_start_b5
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v6, 0x3

    const-string v8, "android"

    invoke-interface {v0, v5, v6, v7, v8}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 896
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, v5}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_c6
    .catch Landroid/os/RemoteException; {:try_start_b5 .. :try_end_c6} :catch_c7
    .catchall {:try_start_b5 .. :try_end_c6} :catchall_1df

    .line 899
    goto :goto_c8

    .line 897
    :catch_c7
    move-exception v0

    .line 902
    :goto_c8
    :try_start_c8
    new-instance v0, Landroid/content/IntentFilter;

    const-string v5, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 904
    .local v0, "whitelistFilter":Landroid/content/IntentFilter;
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v0, v8, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 907
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 908
    .local v5, "connFilter":Landroid/content/IntentFilter;
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    const-string v9, "android.permission.CONNECTIVITY_INTERNAL"

    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v5, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 911
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 912
    .local v6, "packageFilter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 913
    const-string/jumbo v7, "package"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 914
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9, v6, v8, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 917
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.UID_REMOVED"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9, v10, v8, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 921
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 922
    .local v7, "userFilter":Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.USER_ADDED"

    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 923
    const-string v9, "android.intent.action.USER_REMOVED"

    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 924
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10, v7, v8, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 927
    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "com.android.server.action.NETWORK_STATS_UPDATED"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 928
    .local v9, "statsFilter":Landroid/content/IntentFilter;
    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    const-string v12, "android.permission.READ_NETWORK_USAGE_HISTORY"

    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v11, v9, v12, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 932
    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "com.android.server.net.action.ALLOW_BACKGROUND"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 933
    .local v10, "allowFilter":Landroid/content/IntentFilter;
    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    const-string v13, "android.permission.MANAGE_NETWORK_POLICY"

    iget-object v14, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v12, v10, v13, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 936
    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v13, Landroid/content/IntentFilter;

    const-string v14, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-direct {v13, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v14, "android.permission.MANAGE_NETWORK_POLICY"

    iget-object v15, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 938
    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v13, Landroid/content/IntentFilter;

    const-string v14, "com.android.server.net.action.SNOOZE_RAPID"

    invoke-direct {v13, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v14, "android.permission.MANAGE_NETWORK_POLICY"

    iget-object v15, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 942
    new-instance v11, Landroid/content/IntentFilter;

    const-string v12, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v11, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 944
    .local v11, "wifiFilter":Landroid/content/IntentFilter;
    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    iget-object v14, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v12, v13, v11, v8, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 947
    new-instance v12, Landroid/content/IntentFilter;

    const-string v13, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v12, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 949
    .local v12, "carrierConfigFilter":Landroid/content/IntentFilter;
    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v14, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigReceiver:Landroid/content/BroadcastReceiver;

    iget-object v15, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v13, v14, v12, v8, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 952
    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v14, Landroid/net/ConnectivityManager;

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/ConnectivityManager;

    new-instance v14, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v14}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 953
    invoke-virtual {v14}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v14

    iget-object v15, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 952
    invoke-virtual {v13, v14, v15}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 955
    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    new-instance v14, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;

    invoke-direct {v14, v1, v8}, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$1;)V

    invoke-virtual {v13, v14}, Landroid/app/usage/UsageStatsManagerInternal;->addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    .line 958
    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v13, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v8, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubscriptionManager;

    new-instance v13, Lcom/android/server/net/NetworkPolicyManagerService$3;

    iget-object v14, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 959
    invoke-virtual {v14}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v14

    invoke-direct {v13, v1, v14}, Lcom/android/server/net/NetworkPolicyManagerService$3;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/os/Looper;)V

    .line 958
    invoke-virtual {v8, v13}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 967
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1d1
    .catchall {:try_start_c8 .. :try_end_1d1} :catchall_1df

    .line 970
    .end local v0  # "whitelistFilter":Landroid/content/IntentFilter;
    .end local v5  # "connFilter":Landroid/content/IntentFilter;
    .end local v6  # "packageFilter":Landroid/content/IntentFilter;
    .end local v7  # "userFilter":Landroid/content/IntentFilter;
    .end local v9  # "statsFilter":Landroid/content/IntentFilter;
    .end local v10  # "allowFilter":Landroid/content/IntentFilter;
    .end local v11  # "wifiFilter":Landroid/content/IntentFilter;
    .end local v12  # "carrierConfigFilter":Landroid/content/IntentFilter;
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 971
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 972
    nop

    .line 973
    return-void

    .line 888
    :catchall_1d9
    move-exception v0

    :try_start_1da
    monitor-exit v6
    :try_end_1db
    .catchall {:try_start_1da .. :try_end_1db} :catchall_1d9

    .end local v4  # "oldPriority":I
    .end local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1  # "initCompleteSignal":Ljava/util/concurrent/CountDownLatch;
    :try_start_1db
    throw v0

    .line 889
    .restart local v4  # "oldPriority":I
    .restart local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1  # "initCompleteSignal":Ljava/util/concurrent/CountDownLatch;
    :catchall_1dc
    move-exception v0

    monitor-exit v5
    :try_end_1de
    .catchall {:try_start_1db .. :try_end_1de} :catchall_1dc

    .end local v4  # "oldPriority":I
    .end local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1  # "initCompleteSignal":Ljava/util/concurrent/CountDownLatch;
    :try_start_1de
    throw v0
    :try_end_1df
    .catchall {:try_start_1de .. :try_end_1df} :catchall_1df

    .line 970
    .restart local v4  # "oldPriority":I
    .restart local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1  # "initCompleteSignal":Ljava/util/concurrent/CountDownLatch;
    :catchall_1df
    move-exception v0

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 971
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private isBandwidthControlEnabled()Z
    .registers 5

    .line 5562
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5564
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v2
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_13
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 5569
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5564
    return v2

    .line 5569
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 5565
    :catch_13
    move-exception v2

    .line 5567
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 5569
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5567
    return v3
.end method

.method private static isHeadlessSystemUserBuild()Z
    .registers 1

    .line 6018
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->MULTIUSER_HEADLESS_SYSTEM_USER:Z

    return v0
.end method

.method private isRestrictedByAdminUL(I)Z
    .registers 4
    .param p1, "uid"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 5999
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    .line 6000
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5999
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 6001
    .local v0, "restrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_1a

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method private static isSystem(I)Z
    .registers 2
    .param p0, "uid"  # I

    .line 5712
    const/16 v0, 0x2710

    if-ge p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private isUidForegroundOnRestrictBackgroundUL(I)Z
    .registers 4
    .param p1, "uid"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4104
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 4105
    .local v0, "procState":I
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result v1

    return v1
.end method

.method private isUidForegroundOnRestrictPowerUL(I)Z
    .registers 4
    .param p1, "uid"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4110
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 4111
    .local v0, "procState":I
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    move-result v1

    return v1
.end method

.method static isUidNetworkingBlockedInternal(IIZZLcom/android/server/net/NetworkPolicyLogger;)Z
    .registers 7
    .param p0, "uid"  # I
    .param p1, "uidRules"  # I
    .param p2, "isNetworkMetered"  # Z
    .param p3, "isBackgroundRestricted"  # Z
    .param p4, "logger"  # Lcom/android/server/net/NetworkPolicyLogger;

    .line 5719
    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isSystem(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5720
    const/4 v0, 0x7

    .local v0, "reason":I
    goto :goto_36

    .line 5722
    .end local v0  # "reason":I
    :cond_8
    const/16 v0, 0x40

    invoke-static {p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 5723
    const/4 v0, 0x0

    .restart local v0  # "reason":I
    goto :goto_36

    .line 5725
    .end local v0  # "reason":I
    :cond_12
    if-nez p2, :cond_16

    .line 5726
    const/4 v0, 0x1

    .restart local v0  # "reason":I
    goto :goto_36

    .line 5728
    .end local v0  # "reason":I
    :cond_16
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 5729
    const/4 v0, 0x2

    .restart local v0  # "reason":I
    goto :goto_36

    .line 5731
    .end local v0  # "reason":I
    :cond_1f
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 5732
    const/4 v0, 0x3

    .restart local v0  # "reason":I
    goto :goto_36

    .line 5734
    .end local v0  # "reason":I
    :cond_28
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 5735
    const/4 v0, 0x4

    .restart local v0  # "reason":I
    goto :goto_36

    .line 5737
    .end local v0  # "reason":I
    :cond_31
    if-eqz p3, :cond_35

    .line 5738
    const/4 v0, 0x5

    .restart local v0  # "reason":I
    goto :goto_36

    .line 5741
    .end local v0  # "reason":I
    :cond_35
    const/4 v0, 0x6

    .line 5745
    .restart local v0  # "reason":I
    :goto_36
    packed-switch v0, :pswitch_data_4a

    .line 5759
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 5751
    :pswitch_3f  #0x1, 0x3, 0x4, 0x6, 0x7
    const/4 v1, 0x0

    .line 5752
    .local v1, "blocked":Z
    goto :goto_43

    .line 5756
    .end local v1  # "blocked":Z
    :pswitch_41  #0x0, 0x2, 0x5
    const/4 v1, 0x1

    .line 5757
    .restart local v1  # "blocked":Z
    nop

    .line 5761
    :goto_43
    if-eqz p4, :cond_48

    .line 5762
    invoke-virtual {p4, p0, v0}, Lcom/android/server/net/NetworkPolicyLogger;->networkBlocked(II)V

    .line 5765
    :cond_48
    return v1

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_41  #00000000
        :pswitch_3f  #00000001
        :pswitch_41  #00000002
        :pswitch_3f  #00000003
        :pswitch_3f  #00000004
        :pswitch_41  #00000005
        :pswitch_3f  #00000006
        :pswitch_3f  #00000007
    .end packed-switch
.end method

.method private isUidStateForeground(I)Z
    .registers 3
    .param p1, "state"  # I

    .line 4116
    const/4 v0, 0x6

    if-gt p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method private isUidValidForBlacklistRules(I)Z
    .registers 3
    .param p1, "uid"  # I

    .line 4522
    const/16 v0, 0x3f5

    if-eq p1, v0, :cond_17

    const/16 v0, 0x3fb

    if-eq p1, v0, :cond_17

    .line 4523
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissions(I)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    .line 4527
    :cond_15
    const/4 v0, 0x0

    return v0

    .line 4524
    :cond_17
    :goto_17
    const/4 v0, 0x1

    return v0
.end method

.method private isUidValidForWhitelistRules(I)Z
    .registers 3
    .param p1, "uid"  # I

    .line 4531
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissions(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private isWhitelistedFromPowerSaveUL(IZ)Z
    .registers 8
    .param p1, "uid"  # I
    .param p2, "deviceIdleMode"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4282
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 4283
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 4284
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_19

    :cond_17
    move v1, v2

    goto :goto_1a

    :cond_19
    :goto_19
    move v1, v3

    .line 4285
    .local v1, "isWhitelisted":Z
    :goto_1a
    if-nez p2, :cond_28

    .line 4286
    if-nez v1, :cond_26

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_27

    :cond_26
    move v2, v3

    :cond_27
    move v1, v2

    .line 4288
    :cond_28
    return v1
.end method

.method static synthetic lambda$updateNetworks$1(Ljava/util/concurrent/CountDownLatch;)V
    .registers 1
    .param p0, "latch"  # Ljava/util/concurrent/CountDownLatch;

    .line 1722
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1723
    return-void
.end method

.method private maybeUpdateMobilePolicyCycleAL(ILjava/lang/String;)Z
    .registers 13
    .param p1, "subId"  # I
    .param p2, "subscriberId"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 1736
    const-string v0, "NetworkPolicy"

    const-string/jumbo v1, "maybeUpdateMobilePolicyCycleAL()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    const/4 v0, 0x0

    .line 1740
    .local v0, "policyUpdated":Z
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

    .line 1742
    .local v1, "probeIdent":Landroid/net/NetworkIdentity;
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1e
    if-ltz v2, :cond_3e

    .line 1743
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkTemplate;

    .line 1744
    .local v3, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v3, v1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 1745
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicy;

    .line 1746
    .local v4, "policy":Landroid/net/NetworkPolicy;
    invoke-direct {p0, p1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateDefaultMobilePolicyAL(ILandroid/net/NetworkPolicy;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1742
    .end local v3  # "template":Landroid/net/NetworkTemplate;
    .end local v4  # "policy":Landroid/net/NetworkPolicy;
    :cond_3b
    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    .line 1749
    .end local v2  # "i":I
    :cond_3e
    return v0
.end method

.method private normalizePoliciesNL()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 3324
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL([Landroid/net/NetworkPolicy;)V

    .line 3325
    return-void
.end method

.method private normalizePoliciesNL([Landroid/net/NetworkPolicy;)V
    .registers 8
    .param p1, "policies"  # [Landroid/net/NetworkPolicy;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 3329
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 3330
    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_54

    aget-object v2, p1, v1

    .line 3331
    .local v2, "policy":Landroid/net/NetworkPolicy;
    if-nez v2, :cond_e

    .line 3332
    goto :goto_51

    .line 3336
    :cond_e
    iget-object v3, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:[Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    iput-object v3, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 3337
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkPolicy;

    .line 3338
    .local v3, "existing":Landroid/net/NetworkPolicy;
    if-eqz v3, :cond_2a

    invoke-virtual {v3, v2}, Landroid/net/NetworkPolicy;->compareTo(Landroid/net/NetworkPolicy;)I

    move-result v4

    if-lez v4, :cond_51

    .line 3339
    :cond_2a
    if-eqz v3, :cond_4a

    .line 3340
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Normalization replaced "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NetworkPolicy"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3342
    :cond_4a
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    iget-object v5, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v4, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3330
    .end local v2  # "policy":Landroid/net/NetworkPolicy;
    .end local v3  # "existing":Landroid/net/NetworkPolicy;
    :cond_51
    :goto_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3345
    :cond_54
    return-void
.end method

.method private notifyOverLimitLocked(Landroid/net/NetworkTemplate;Landroid/net/NetworkPolicy;JLjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "template"  # Landroid/net/NetworkTemplate;
    .param p2, "policy"  # Landroid/net/NetworkPolicy;
    .param p3, "totalBytes"  # J
    .param p5, "imsi"  # Ljava/lang/String;
    .param p6, "warningType"  # Ljava/lang/String;

    .line 6151
    const-string v0, "NetworkPolicy"

    const-string/jumbo v1, "notifyOverLimitLocked overlimit"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6152
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 6153
    const-string/jumbo v1, "notifyOverLimitLocked buildNetworkOverLimitIntent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6155
    :try_start_16
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static/range {p1 .. p6}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;Landroid/net/NetworkPolicy;JLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_16 .. :try_end_1f} :catch_20

    .line 6159
    goto :goto_24

    .line 6157
    :catch_20
    move-exception v0

    .line 6158
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 6160
    .end local v0  # "e":Landroid/content/ActivityNotFoundException;
    :goto_24
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 6162
    :cond_29
    return-void
.end method

.method private notifyOverLimitNL(Landroid/net/NetworkTemplate;)V
    .registers 4
    .param p1, "template"  # Landroid/net/NetworkTemplate;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 1514
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1515
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1516
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1518
    :cond_1a
    return-void
.end method

.method private notifyUnderLimitNL(Landroid/net/NetworkTemplate;)V
    .registers 3
    .param p1, "template"  # Landroid/net/NetworkTemplate;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 1522
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1523
    return-void
.end method

.method private onUidDeletedUL(I)V
    .registers 6
    .param p1, "uid"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4624
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 4625
    .local v0, "oldUidRules":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UID Del: Remove the mobile data restriction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " with rules: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetworkPolicy"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4628
    const/4 v2, 0x1

    :try_start_26
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p1, v1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidChainRule(IIZ)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2b} :catch_2c

    .line 4631
    goto :goto_30

    .line 4629
    :catch_2c
    move-exception v3

    .line 4630
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 4633
    .end local v3  # "e":Ljava/lang/Exception;
    :goto_30
    :try_start_30
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p1, v2, v2}, Landroid/os/INetworkManagementService;->setFirewallUidChainRule(IIZ)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_35} :catch_36

    .line 4636
    goto :goto_3a

    .line 4634
    :catch_36
    move-exception v2

    .line 4635
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 4640
    .end local v2  # "e":Ljava/lang/Exception;
    :goto_3a
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4641
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4642
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4643
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4644
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4645
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4646
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4647
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4648
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4651
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    invoke-virtual {v2, v3, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4652
    return-void
.end method

.method private parseSubId(Landroid/net/NetworkState;)I
    .registers 5
    .param p1, "state"  # Landroid/net/NetworkState;

    .line 5925
    const/4 v0, -0x1

    .line 5926
    .local v0, "subId":I
    if-eqz p1, :cond_26

    iget-object v1, p1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v1, :cond_26

    iget-object v1, p1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v2, 0x0

    .line 5927
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 5928
    iget-object v1, p1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v1

    .line 5929
    .local v1, "spec":Landroid/net/NetworkSpecifier;
    instance-of v2, v1, Landroid/net/StringNetworkSpecifier;

    if-eqz v2, :cond_26

    .line 5931
    :try_start_1a
    move-object v2, v1

    check-cast v2, Landroid/net/StringNetworkSpecifier;

    iget-object v2, v2, Landroid/net/StringNetworkSpecifier;->specifier:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_23} :catch_25

    move v0, v2

    .line 5933
    goto :goto_26

    .line 5932
    :catch_25
    move-exception v2

    .line 5936
    .end local v1  # "spec":Landroid/net/NetworkSpecifier;
    :cond_26
    :goto_26
    return v0
.end method

.method private readPolicyAL()V
    .registers 37
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock",
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 2379
    move-object/from16 v1, p0

    const-string v2, "NetworkPolicy"

    const-string/jumbo v3, "readPolicyAL()"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2382
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 2383
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 2384
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 2385
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    .line 2387
    const/4 v3, 0x0

    .line 2389
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1f
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_25} :catch_42c
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_25} :catch_41a
    .catchall {:try_start_1f .. :try_end_25} :catchall_415

    move-object v3, v4

    .line 2390
    :try_start_26
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 2391
    .local v4, "in":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2395
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 2398
    .local v5, "whitelistedRestrictBackground":Landroid/util/SparseBooleanArray;
    const/4 v6, 0x1

    .line 2399
    .local v6, "version":I
    const/4 v7, 0x0

    move v8, v7

    .line 2400
    .local v8, "insideWhitelist":Z
    :goto_3b
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v10, v9

    .local v10, "type":I
    const/4 v11, 0x1

    if-eq v9, v11, :cond_378

    .line 2401
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9
    :try_end_47
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_47} :catch_410
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_47} :catch_40b
    .catchall {:try_start_26 .. :try_end_47} :catchall_406

    .line 2402
    .local v9, "tag":Ljava/lang/String;
    const-string/jumbo v12, "whitelist"

    const/4 v13, 0x3

    const/4 v14, 0x2

    if-ne v10, v14, :cond_35c

    .line 2403
    :try_start_4e
    const-string/jumbo v15, "policy-list"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_55
    .catch Ljava/io/FileNotFoundException; {:try_start_4e .. :try_end_55} :catch_410
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_55} :catch_40b
    .catchall {:try_start_4e .. :try_end_55} :catchall_406

    if-eqz v15, :cond_75

    .line 2404
    :try_start_57
    iget-boolean v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 2405
    .local v12, "oldValue":Z
    const-string/jumbo v14, "version"

    invoke-static {v4, v14}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v14

    move v6, v14

    .line 2406
    if-lt v6, v13, :cond_6d

    const-string/jumbo v13, "restrictBackground"

    .line 2407
    invoke-static {v4, v13}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6d

    goto :goto_6e

    :cond_6d
    move v11, v7

    :goto_6e
    iput-boolean v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z
    :try_end_70
    .catch Ljava/io/FileNotFoundException; {:try_start_57 .. :try_end_70} :catch_42c
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_70} :catch_41a
    .catchall {:try_start_57 .. :try_end_70} :catchall_415

    .line 2408
    .end local v12  # "oldValue":Z
    move-object/from16 v19, v3

    move v3, v10

    goto/16 :goto_373

    :cond_75
    :try_start_75
    const-string/jumbo v13, "network-policy"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_7c
    .catch Ljava/io/FileNotFoundException; {:try_start_75 .. :try_end_7c} :catch_410
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_7c} :catch_40b
    .catchall {:try_start_75 .. :try_end_7c} :catchall_406

    const-string v15, "cyclePeriod"

    const-string v7, "cycleEnd"

    const-string v11, "cycleStart"

    if-eqz v13, :cond_172

    .line 2409
    :try_start_84
    const-string/jumbo v12, "networkTemplate"

    invoke-static {v4, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v12

    .line 2410
    .local v12, "networkTemplate":I
    const-string/jumbo v13, "subscriberId"

    const/4 v14, 0x0

    invoke-interface {v4, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2412
    .local v13, "subscriberId":Ljava/lang/String;
    const/16 v14, 0x9

    if-lt v6, v14, :cond_a3

    .line 2413
    const-string/jumbo v14, "networkId"
    :try_end_9a
    .catch Ljava/io/FileNotFoundException; {:try_start_84 .. :try_end_9a} :catch_410
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_9a} :catch_40b
    .catchall {:try_start_84 .. :try_end_9a} :catchall_406

    move-object/from16 v19, v3

    const/4 v3, 0x0

    .end local v3  # "fis":Ljava/io/FileInputStream;
    .local v19, "fis":Ljava/io/FileInputStream;
    :try_start_9d
    invoke-interface {v4, v3, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v3, v14

    .local v3, "networkId":Ljava/lang/String;
    goto :goto_a6

    .line 2415
    .end local v19  # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :cond_a3
    move-object/from16 v19, v3

    .end local v3  # "fis":Ljava/io/FileInputStream;
    .restart local v19  # "fis":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 2418
    .local v3, "networkId":Ljava/lang/String;
    :goto_a6
    const/16 v14, 0xb

    if-lt v6, v14, :cond_cf

    .line 2419
    invoke-static {v4, v11}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2420
    .local v11, "start":Ljava/lang/String;
    invoke-static {v4, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2421
    .local v7, "end":Ljava/lang/String;
    invoke-static {v4, v15}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2422
    .local v14, "period":Ljava/lang/String;
    new-instance v15, Landroid/util/RecurrenceRule;

    .line 2423
    move/from16 v20, v10

    .end local v10  # "type":I
    .local v20, "type":I
    invoke-static {v11}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v10

    .line 2424
    move-object/from16 v18, v11

    .end local v11  # "start":Ljava/lang/String;
    .local v18, "start":Ljava/lang/String;
    invoke-static {v7}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v11

    .line 2425
    move-object/from16 v21, v7

    .end local v7  # "end":Ljava/lang/String;
    .local v21, "end":Ljava/lang/String;
    invoke-static {v14}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/lang/String;)Ljava/time/Period;

    move-result-object v7

    invoke-direct {v15, v10, v11, v7}, Landroid/util/RecurrenceRule;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    move-object v7, v15

    .line 2426
    .end local v14  # "period":Ljava/lang/String;
    .end local v18  # "start":Ljava/lang/String;
    .end local v21  # "end":Ljava/lang/String;
    .local v7, "cycleRule":Landroid/util/RecurrenceRule;
    goto :goto_ed

    .line 2427
    .end local v7  # "cycleRule":Landroid/util/RecurrenceRule;
    .end local v20  # "type":I
    .restart local v10  # "type":I
    :cond_cf
    move/from16 v20, v10

    .end local v10  # "type":I
    .restart local v20  # "type":I
    const-string v7, "cycleDay"

    invoke-static {v4, v7}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v7

    .line 2429
    .local v7, "cycleDay":I
    const/4 v10, 0x6

    if-lt v6, v10, :cond_e2

    .line 2430
    const-string v10, "cycleTimezone"

    const/4 v11, 0x0

    invoke-interface {v4, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, "cycleTimezone":Ljava/lang/String;
    goto :goto_e4

    .line 2432
    .end local v10  # "cycleTimezone":Ljava/lang/String;
    :cond_e2
    const-string v10, "UTC"

    .line 2434
    .restart local v10  # "cycleTimezone":Ljava/lang/String;
    :goto_e4
    invoke-static {v10}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/net/NetworkPolicy;->buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object v11

    move-object v7, v11

    .line 2436
    .end local v10  # "cycleTimezone":Ljava/lang/String;
    .local v7, "cycleRule":Landroid/util/RecurrenceRule;
    :goto_ed
    const-string/jumbo v10, "warningBytes"

    invoke-static {v4, v10}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v24

    .line 2437
    .local v24, "warningBytes":J
    const-string/jumbo v10, "limitBytes"

    invoke-static {v4, v10}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v26

    .line 2439
    .local v26, "limitBytes":J
    const/4 v10, 0x5

    if-lt v6, v10, :cond_106

    .line 2440
    const-string/jumbo v10, "lastLimitSnooze"

    invoke-static {v4, v10}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v10

    .local v10, "lastLimitSnooze":J
    goto :goto_113

    .line 2441
    .end local v10  # "lastLimitSnooze":J
    :cond_106
    const/4 v10, 0x2

    if-lt v6, v10, :cond_111

    .line 2442
    const-string/jumbo v10, "lastSnooze"

    invoke-static {v4, v10}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v10

    .restart local v10  # "lastLimitSnooze":J
    goto :goto_113

    .line 2444
    .end local v10  # "lastLimitSnooze":J
    :cond_111
    const-wide/16 v10, -0x1

    .line 2447
    .restart local v10  # "lastLimitSnooze":J
    :goto_113
    const/4 v14, 0x4

    if-lt v6, v14, :cond_11e

    .line 2448
    const-string/jumbo v14, "metered"

    invoke-static {v4, v14}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v14

    .local v14, "metered":Z
    goto :goto_125

    .line 2450
    .end local v14  # "metered":Z
    :cond_11e
    const/4 v14, 0x1

    if-eq v12, v14, :cond_123

    .line 2455
    const/4 v14, 0x0

    .restart local v14  # "metered":Z
    goto :goto_125

    .line 2452
    .end local v14  # "metered":Z
    :cond_123
    const/4 v14, 0x1

    .line 2453
    .restart local v14  # "metered":Z
    nop

    .line 2459
    :goto_125
    const/4 v15, 0x5

    if-lt v6, v15, :cond_130

    .line 2460
    const-string/jumbo v15, "lastWarningSnooze"

    invoke-static {v4, v15}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v16

    .local v16, "lastWarningSnooze":J
    goto :goto_132

    .line 2462
    .end local v16  # "lastWarningSnooze":J
    :cond_130
    const-wide/16 v16, -0x1

    .line 2465
    .restart local v16  # "lastWarningSnooze":J
    :goto_132
    const/4 v15, 0x7

    if-lt v6, v15, :cond_13d

    .line 2466
    const-string/jumbo v15, "inferred"

    invoke-static {v4, v15}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v15

    .local v15, "inferred":Z
    goto :goto_140

    .line 2468
    .end local v15  # "inferred":Z
    :cond_13d
    const/4 v15, 0x0

    move/from16 v18, v15

    .line 2471
    .restart local v15  # "inferred":Z
    :goto_140
    move/from16 v18, v6

    .end local v6  # "version":I
    .local v18, "version":I
    new-instance v6, Landroid/net/NetworkTemplate;

    invoke-direct {v6, v12, v13, v3}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2473
    .local v6, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v6}, Landroid/net/NetworkTemplate;->isPersistable()Z

    move-result v21

    if-eqz v21, :cond_16a

    .line 2474
    move-object/from16 v34, v3

    .end local v3  # "networkId":Ljava/lang/String;
    .local v34, "networkId":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move/from16 v35, v12

    .end local v12  # "networkTemplate":I
    .local v35, "networkTemplate":I
    new-instance v12, Landroid/net/NetworkPolicy;

    move-object/from16 v21, v12

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-wide/from16 v28, v16

    move-wide/from16 v30, v10

    move/from16 v32, v14

    move/from16 v33, v15

    invoke-direct/range {v21 .. v33}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;Landroid/util/RecurrenceRule;JJJJZZ)V

    invoke-virtual {v3, v6, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16e

    .line 2473
    .end local v34  # "networkId":Ljava/lang/String;
    .end local v35  # "networkTemplate":I
    .restart local v3  # "networkId":Ljava/lang/String;
    .restart local v12  # "networkTemplate":I
    :cond_16a
    move-object/from16 v34, v3

    move/from16 v35, v12

    .line 2478
    .end local v3  # "networkId":Ljava/lang/String;
    .end local v6  # "template":Landroid/net/NetworkTemplate;
    .end local v7  # "cycleRule":Landroid/util/RecurrenceRule;
    .end local v10  # "lastLimitSnooze":J
    .end local v12  # "networkTemplate":I
    .end local v13  # "subscriberId":Ljava/lang/String;
    .end local v14  # "metered":Z
    .end local v15  # "inferred":Z
    .end local v16  # "lastWarningSnooze":J
    .end local v24  # "warningBytes":J
    .end local v26  # "limitBytes":J
    :goto_16e
    move/from16 v3, v20

    goto/16 :goto_371

    .end local v18  # "version":I
    .end local v19  # "fis":Ljava/io/FileInputStream;
    .end local v20  # "type":I
    .local v3, "fis":Ljava/io/FileInputStream;
    .local v6, "version":I
    .local v10, "type":I
    :cond_172
    move-object/from16 v19, v3

    move/from16 v18, v6

    move/from16 v20, v10

    .end local v3  # "fis":Ljava/io/FileInputStream;
    .end local v6  # "version":I
    .end local v10  # "type":I
    .restart local v18  # "version":I
    .restart local v19  # "fis":Ljava/io/FileInputStream;
    .restart local v20  # "type":I
    const-string/jumbo v3, "vpn-policy"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_17f
    .catch Ljava/io/FileNotFoundException; {:try_start_9d .. :try_end_17f} :catch_401
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_17f} :catch_3fe
    .catchall {:try_start_9d .. :try_end_17f} :catchall_429

    const-string v6, "  policy = "

    const-string/jumbo v10, "policy"

    const-string/jumbo v13, "uid"

    if-eqz v3, :cond_1b5

    .line 2479
    :try_start_189
    invoke-static {v4, v13}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    .line 2480
    .local v3, "uid":I
    invoke-static {v4, v10}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    .line 2481
    .local v7, "policy":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "vpn uid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mVpnPolicy:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v3, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2483
    .end local v3  # "uid":I
    .end local v7  # "policy":Z
    move/from16 v3, v20

    goto/16 :goto_371

    :cond_1b5
    const-string/jumbo v3, "securitypay-policy"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ea

    .line 2484
    invoke-static {v4, v13}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    .line 2485
    .restart local v3  # "uid":I
    invoke-static {v4, v10}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    .line 2486
    .restart local v7  # "policy":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "securityPay uid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSecurityPayPolicy:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v3, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2488
    .end local v3  # "uid":I
    .end local v7  # "policy":Z
    move/from16 v3, v20

    goto/16 :goto_371

    :cond_1ea
    const-string/jumbo v3, "subscription-plan"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a8

    .line 2489
    invoke-static {v4, v11}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2490
    .local v3, "start":Ljava/lang/String;
    invoke-static {v4, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2491
    .local v6, "end":Ljava/lang/String;
    invoke-static {v4, v15}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2492
    .local v7, "period":Ljava/lang/String;
    new-instance v10, Landroid/telephony/SubscriptionPlan$Builder;

    .line 2493
    invoke-static {v3}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v11

    .line 2494
    invoke-static {v6}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v12

    .line 2495
    invoke-static {v7}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/lang/String;)Ljava/time/Period;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Landroid/telephony/SubscriptionPlan$Builder;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    .line 2496
    .local v10, "builder":Landroid/telephony/SubscriptionPlan$Builder;
    const-string/jumbo v11, "title"

    invoke-static {v4, v11}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 2497
    const-string/jumbo v11, "summary"

    invoke-static {v4, v11}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/telephony/SubscriptionPlan$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 2499
    const-string/jumbo v11, "limitBytes"

    const-wide/16 v12, -0x1

    invoke-static {v4, v11, v12, v13}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v14

    .line 2501
    .local v14, "limitBytes":J
    const-string/jumbo v11, "limitBehavior"

    const/4 v12, -0x1

    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v11

    .line 2503
    .local v11, "limitBehavior":I
    const-wide/16 v12, -0x1

    cmp-long v21, v14, v12

    if-eqz v21, :cond_241

    const/4 v12, -0x1

    if-eq v11, v12, :cond_241

    .line 2505
    invoke-virtual {v10, v14, v15, v11}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    .line 2508
    :cond_241
    const-string/jumbo v12, "usageBytes"

    move-object v13, v6

    move-object/from16 v21, v7

    const-wide/16 v6, -0x1

    .end local v6  # "end":Ljava/lang/String;
    .end local v7  # "period":Ljava/lang/String;
    .local v13, "end":Ljava/lang/String;
    .local v21, "period":Ljava/lang/String;
    invoke-static {v4, v12, v6, v7}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v16

    move-wide/from16 v22, v16

    .line 2510
    .local v22, "usageBytes":J
    const-string/jumbo v12, "usageTime"

    invoke-static {v4, v12, v6, v7}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v16

    move-wide/from16 v24, v16

    .line 2512
    .local v24, "usageTime":J
    move/from16 v16, v11

    move-wide/from16 v11, v22

    .end local v22  # "usageBytes":J
    .local v11, "usageBytes":J
    .local v16, "limitBehavior":I
    cmp-long v17, v11, v6

    if-eqz v17, :cond_26d

    move-wide/from16 v22, v14

    move-object v15, v13

    move-wide/from16 v13, v24

    .end local v14  # "limitBytes":J
    .end local v24  # "usageTime":J
    .local v13, "usageTime":J
    .local v15, "end":Ljava/lang/String;
    .local v22, "limitBytes":J
    cmp-long v6, v13, v6

    if-eqz v6, :cond_272

    .line 2514
    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    goto :goto_272

    .line 2512
    .end local v15  # "end":Ljava/lang/String;
    .end local v22  # "limitBytes":J
    .local v13, "end":Ljava/lang/String;
    .restart local v14  # "limitBytes":J
    .restart local v24  # "usageTime":J
    :cond_26d
    move-wide/from16 v22, v14

    move-object v15, v13

    move-wide/from16 v13, v24

    .line 2517
    .end local v14  # "limitBytes":J
    .end local v24  # "usageTime":J
    .local v13, "usageTime":J
    .restart local v15  # "end":Ljava/lang/String;
    .restart local v22  # "limitBytes":J
    :cond_272
    :goto_272
    const-string/jumbo v6, "subId"

    invoke-static {v4, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    .line 2518
    .local v6, "subId":I
    invoke-virtual {v10}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v7

    .line 2519
    .local v7, "plan":Landroid/telephony/SubscriptionPlan;
    move-object/from16 v17, v3

    .end local v3  # "start":Ljava/lang/String;
    .local v17, "start":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    move-object/from16 v24, v10

    .end local v10  # "builder":Landroid/telephony/SubscriptionPlan$Builder;
    .local v24, "builder":Landroid/telephony/SubscriptionPlan$Builder;
    const-class v10, Landroid/telephony/SubscriptionPlan;

    move-wide/from16 v25, v11

    .end local v11  # "usageBytes":J
    .local v25, "usageBytes":J
    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    .line 2520
    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/telephony/SubscriptionPlan;

    .line 2519
    invoke-static {v10, v11, v7}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/telephony/SubscriptionPlan;

    invoke-virtual {v3, v6, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2522
    const-string/jumbo v3, "ownerPackage"

    invoke-static {v4, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2523
    .local v3, "ownerPackage":Ljava/lang/String;
    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v10, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2525
    .end local v3  # "ownerPackage":Ljava/lang/String;
    .end local v6  # "subId":I
    .end local v7  # "plan":Landroid/telephony/SubscriptionPlan;
    .end local v13  # "usageTime":J
    .end local v15  # "end":Ljava/lang/String;
    .end local v16  # "limitBehavior":I
    .end local v17  # "start":Ljava/lang/String;
    .end local v21  # "period":Ljava/lang/String;
    .end local v22  # "limitBytes":J
    .end local v24  # "builder":Landroid/telephony/SubscriptionPlan$Builder;
    .end local v25  # "usageBytes":J
    move/from16 v3, v20

    goto/16 :goto_371

    :cond_2a8
    const-string/jumbo v3, "uid-policy"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e2

    .line 2526
    invoke-static {v4, v13}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    .line 2527
    .local v3, "uid":I
    invoke-static {v4, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    .line 2529
    .local v6, "policy":I
    invoke-static {v3}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v7

    if-eqz v7, :cond_2c4

    .line 2530
    const/4 v7, 0x0

    invoke-direct {v1, v3, v6, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    goto :goto_2de

    .line 2532
    :cond_2c4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unable to apply policy to UID "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "; ignoring"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2534
    .end local v3  # "uid":I
    .end local v6  # "policy":I
    :goto_2de
    move/from16 v3, v20

    goto/16 :goto_371

    :cond_2e2
    const-string v3, "app-policy"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_320

    .line 2535
    const-string v3, "appId"

    invoke-static {v4, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    .line 2536
    .local v3, "appId":I
    invoke-static {v4, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    .line 2540
    .restart local v6  # "policy":I
    const/4 v7, 0x0

    invoke-static {v7, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v10

    .line 2541
    .local v10, "uid":I
    invoke-static {v10}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v11

    if-eqz v11, :cond_303

    .line 2542
    invoke-direct {v1, v10, v6, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    goto :goto_31d

    .line 2544
    :cond_303
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unable to apply policy to UID "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "; ignoring"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    .end local v3  # "appId":I
    .end local v6  # "policy":I
    .end local v10  # "uid":I
    :goto_31d
    move/from16 v3, v20

    goto :goto_371

    :cond_320
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32d

    .line 2547
    const/4 v3, 0x1

    move v8, v3

    move/from16 v6, v18

    move/from16 v3, v20

    .end local v8  # "insideWhitelist":Z
    .local v3, "insideWhitelist":Z
    goto :goto_373

    .line 2548
    .end local v3  # "insideWhitelist":Z
    .restart local v8  # "insideWhitelist":Z
    :cond_32d
    const-string/jumbo v3, "restrict-background"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_341

    if-eqz v8, :cond_341

    .line 2549
    invoke-static {v4, v13}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    .line 2550
    .local v3, "uid":I
    const/4 v6, 0x1

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .end local v3  # "uid":I
    goto :goto_359

    .line 2551
    :cond_341
    const-string/jumbo v3, "revoked-restrict-background"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_359

    if-eqz v8, :cond_359

    .line 2552
    invoke-static {v4, v13}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    .line 2553
    .restart local v3  # "uid":I
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    const/4 v7, 0x1

    invoke-virtual {v6, v3, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2554
    .end local v3  # "uid":I
    move/from16 v3, v20

    goto :goto_371

    .line 2551
    :cond_359
    :goto_359
    move/from16 v3, v20

    goto :goto_371

    .line 2555
    .end local v18  # "version":I
    .end local v19  # "fis":Ljava/io/FileInputStream;
    .end local v20  # "type":I
    .local v3, "fis":Ljava/io/FileInputStream;
    .local v6, "version":I
    .local v10, "type":I
    :cond_35c
    move-object/from16 v19, v3

    move/from16 v18, v6

    move/from16 v20, v10

    .end local v3  # "fis":Ljava/io/FileInputStream;
    .end local v6  # "version":I
    .end local v10  # "type":I
    .restart local v18  # "version":I
    .restart local v19  # "fis":Ljava/io/FileInputStream;
    .restart local v20  # "type":I
    move/from16 v3, v20

    .end local v20  # "type":I
    .local v3, "type":I
    if-ne v3, v13, :cond_371

    .line 2556
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_371

    .line 2557
    const/4 v6, 0x0

    move v8, v6

    move/from16 v6, v18

    .end local v8  # "insideWhitelist":Z
    .local v6, "insideWhitelist":Z
    goto :goto_373

    .line 2561
    .end local v6  # "insideWhitelist":Z
    .end local v9  # "tag":Ljava/lang/String;
    .restart local v8  # "insideWhitelist":Z
    :cond_371
    :goto_371
    move/from16 v6, v18

    .end local v18  # "version":I
    .local v6, "version":I
    :goto_373
    move-object/from16 v3, v19

    const/4 v7, 0x0

    goto/16 :goto_3b

    .line 2563
    .end local v19  # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    .restart local v10  # "type":I
    :cond_378
    move-object/from16 v19, v3

    move/from16 v18, v6

    move v3, v10

    .end local v6  # "version":I
    .end local v10  # "type":I
    .local v3, "type":I
    .restart local v18  # "version":I
    .restart local v19  # "fis":Ljava/io/FileInputStream;
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    .line 2564
    .local v6, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_382
    if-ge v7, v6, :cond_3fd

    .line 2565
    invoke-virtual {v5, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    .line 2566
    .local v9, "uid":I
    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v11, 0x0

    invoke-virtual {v10, v9, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    .line 2567
    .local v10, "policy":I
    and-int/lit8 v11, v10, 0x1

    if-eqz v11, :cond_3b6

    .line 2568
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "ignoring restrict-background-whitelist for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " because its policy is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2569
    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->uidPoliciesToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2568
    invoke-static {v2, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2570
    const/4 v12, 0x0

    goto :goto_3fa

    .line 2572
    :cond_3b6
    invoke-static {v9}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v11

    if-eqz v11, :cond_3e4

    .line 2573
    or-int/lit8 v11, v10, 0x4

    .line 2575
    .local v11, "newPolicy":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "new policy for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Landroid/net/NetworkPolicyManager;->uidPoliciesToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    const/4 v12, 0x0

    invoke-direct {v1, v9, v11, v12}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    .line 2577
    .end local v11  # "newPolicy":I
    goto :goto_3fa

    .line 2578
    :cond_3e4
    const/4 v12, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "unable to update policy on UID "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3fa
    .catch Ljava/io/FileNotFoundException; {:try_start_189 .. :try_end_3fa} :catch_401
    .catch Ljava/lang/Exception; {:try_start_189 .. :try_end_3fa} :catch_3fe
    .catchall {:try_start_189 .. :try_end_3fa} :catchall_429

    .line 2564
    .end local v9  # "uid":I
    .end local v10  # "policy":I
    :goto_3fa
    add-int/lit8 v7, v7, 0x1

    goto :goto_382

    .line 2588
    .end local v3  # "type":I
    .end local v4  # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5  # "whitelistedRestrictBackground":Landroid/util/SparseBooleanArray;
    .end local v6  # "size":I
    .end local v7  # "i":I
    .end local v8  # "insideWhitelist":Z
    .end local v18  # "version":I
    :cond_3fd
    goto :goto_425

    .line 2585
    :catch_3fe
    move-exception v0

    move-object v3, v0

    goto :goto_41e

    .line 2582
    :catch_401
    move-exception v0

    move-object v2, v0

    move-object/from16 v3, v19

    goto :goto_42e

    .line 2588
    .end local v19  # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :catchall_406
    move-exception v0

    move-object/from16 v19, v3

    move-object v2, v0

    .end local v3  # "fis":Ljava/io/FileInputStream;
    .restart local v19  # "fis":Ljava/io/FileInputStream;
    goto :goto_437

    .line 2585
    .end local v19  # "fis":Ljava/io/FileInputStream;
    .restart local v3  # "fis":Ljava/io/FileInputStream;
    :catch_40b
    move-exception v0

    move-object/from16 v19, v3

    move-object v3, v0

    .end local v3  # "fis":Ljava/io/FileInputStream;
    .restart local v19  # "fis":Ljava/io/FileInputStream;
    goto :goto_41e

    .line 2582
    .end local v19  # "fis":Ljava/io/FileInputStream;
    .restart local v3  # "fis":Ljava/io/FileInputStream;
    :catch_410
    move-exception v0

    move-object/from16 v19, v3

    move-object v2, v0

    .end local v3  # "fis":Ljava/io/FileInputStream;
    .restart local v19  # "fis":Ljava/io/FileInputStream;
    goto :goto_42e

    .line 2588
    .end local v19  # "fis":Ljava/io/FileInputStream;
    .restart local v3  # "fis":Ljava/io/FileInputStream;
    :catchall_415
    move-exception v0

    move-object v2, v0

    move-object/from16 v19, v3

    goto :goto_437

    .line 2585
    :catch_41a
    move-exception v0

    move-object/from16 v19, v3

    move-object v3, v0

    .line 2586
    .local v3, "e":Ljava/lang/Exception;
    .restart local v19  # "fis":Ljava/io/FileInputStream;
    :goto_41e
    :try_start_41e
    const-string/jumbo v4, "problem reading network policy"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_424
    .catchall {:try_start_41e .. :try_end_424} :catchall_429

    .line 2588
    nop

    .end local v3  # "e":Ljava/lang/Exception;
    :goto_425
    invoke-static/range {v19 .. v19}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2589
    goto :goto_436

    .line 2588
    :catchall_429
    move-exception v0

    move-object v2, v0

    goto :goto_437

    .line 2582
    .end local v19  # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :catch_42c
    move-exception v0

    move-object v2, v0

    .line 2584
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_42e
    :try_start_42e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->upgradeDefaultBackgroundDataUL()V
    :try_end_431
    .catchall {:try_start_42e .. :try_end_431} :catchall_415

    .line 2588
    .end local v2  # "e":Ljava/io/FileNotFoundException;
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2589
    move-object/from16 v19, v3

    .line 2590
    .end local v3  # "fis":Ljava/io/FileInputStream;
    .restart local v19  # "fis":Ljava/io/FileInputStream;
    :goto_436
    return-void

    .line 2588
    :goto_437
    invoke-static/range {v19 .. v19}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private removeInterfaceQuota(Ljava/lang/String;)V
    .registers 5
    .param p1, "iface"  # Ljava/lang/String;

    .line 5385
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->removeInterfaceQuota(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_11

    .line 5388
    :catch_6
    move-exception v0

    goto :goto_12

    .line 5386
    :catch_8
    move-exception v0

    .line 5387
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "problem removing interface quota"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5390
    .end local v0  # "e":Ljava/lang/IllegalStateException;
    :goto_11
    nop

    .line 5391
    :goto_12
    return-void
.end method

.method private removeInterfaceQuotaAsync(Ljava/lang/String;)V
    .registers 4
    .param p1, "iface"  # Ljava/lang/String;

    .line 5380
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5381
    return-void
.end method

.method private removeUidStateUL(I)Z
    .registers 5
    .param p1, "uid"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4154
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 4155
    .local v0, "index":I
    if-ltz v0, :cond_2d

    .line 4156
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 4157
    .local v1, "oldUidState":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 4158
    const/16 v2, 0x14

    if-eq v1, v2, :cond_2d

    .line 4159
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictBackgroundRulesOnUidStatusChangedUL(III)V

    .line 4161
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v2, :cond_21

    .line 4162
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    .line 4164
    :cond_21
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eqz v2, :cond_28

    .line 4165
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 4167
    :cond_28
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 4168
    const/4 v2, 0x1

    return v2

    .line 4171
    .end local v1  # "oldUidState":I
    :cond_2d
    const/4 v1, 0x0

    return v1
.end method

.method private resetUidFirewallRules(I)V
    .registers 5
    .param p1, "uid"  # I

    .line 5525
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 5526
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 5527
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x3

    .line 5528
    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 5529
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, v2}, Landroid/os/INetworkManagementService;->setUidMeteredNetworkWhitelist(IZ)V

    .line 5530
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, v2}, Landroid/os/INetworkManagementService;->setUidMeteredNetworkBlacklist(IZ)V
    :try_end_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_1d} :catch_20
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_38

    .line 5533
    :catch_1e
    move-exception v0

    goto :goto_39

    .line 5531
    :catch_20
    move-exception v0

    .line 5532
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "problem resetting firewall uid rules for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkPolicy"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5535
    .end local v0  # "e":Ljava/lang/IllegalStateException;
    :goto_38
    nop

    .line 5536
    :goto_39
    return-void
.end method

.method private sendRestrictBackgroundChangedMsg()V
    .registers 5

    .line 3462
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3463
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 3464
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3465
    return-void
.end method

.method private setFlymeBackgroundRule(IIZ)V
    .registers 5
    .param p1, "uid"  # I
    .param p2, "chain"  # I
    .param p3, "allow"  # Z

    .line 4740
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/INetworkManagementService;->setFirewallUidChainRule(IIZ)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_f

    .line 4743
    :catch_6
    move-exception v0

    .line 4744
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_10

    .line 4741
    .end local v0  # "e":Landroid/os/RemoteException;
    :catch_b
    move-exception v0

    .line 4742
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 4745
    .end local v0  # "e":Ljava/lang/IllegalStateException;
    :goto_f
    nop

    .line 4746
    :goto_10
    return-void
.end method

.method private setInterfaceQuota(Ljava/lang/String;J)V
    .registers 7
    .param p1, "iface"  # Ljava/lang/String;
    .param p2, "quotaBytes"  # J

    .line 5371
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/INetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_11

    .line 5374
    :catch_6
    move-exception v0

    goto :goto_12

    .line 5372
    :catch_8
    move-exception v0

    .line 5373
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "problem setting interface quota"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5376
    .end local v0  # "e":Ljava/lang/IllegalStateException;
    :goto_11
    nop

    .line 5377
    :goto_12
    return-void
.end method

.method private setInterfaceQuotaAsync(Ljava/lang/String;J)V
    .registers 8
    .param p1, "iface"  # Ljava/lang/String;
    .param p2, "quotaBytes"  # J

    .line 5365
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    shr-long v1, p2, v1

    long-to-int v1, v1

    const-wide/16 v2, -0x1

    and-long/2addr v2, p2

    long-to-int v2, v2

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v1, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5366
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5367
    return-void
.end method

.method private setMeteredNetworkBlacklist(IZ)V
    .registers 7
    .param p1, "uid"  # I
    .param p2, "enable"  # Z

    .line 5394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMeteredNetworkBlacklist "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5396
    :try_start_1f
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2}, Landroid/os/INetworkManagementService;->setUidMeteredNetworkBlacklist(IZ)V
    :try_end_24
    .catch Ljava/lang/IllegalStateException; {:try_start_1f .. :try_end_24} :catch_27
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    goto :goto_45

    .line 5399
    :catch_25
    move-exception v0

    goto :goto_46

    .line 5397
    :catch_27
    move-exception v0

    .line 5398
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "problem setting blacklist ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") rules for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5401
    .end local v0  # "e":Ljava/lang/IllegalStateException;
    :goto_45
    nop

    .line 5402
    :goto_46
    return-void
.end method

.method private setMeteredNetworkWhitelist(IZ)V
    .registers 7
    .param p1, "uid"  # I
    .param p2, "enable"  # Z

    .line 5405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMeteredNetworkWhitelist "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5407
    :try_start_1f
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2}, Landroid/os/INetworkManagementService;->setUidMeteredNetworkWhitelist(IZ)V
    :try_end_24
    .catch Ljava/lang/IllegalStateException; {:try_start_1f .. :try_end_24} :catch_27
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    goto :goto_45

    .line 5410
    :catch_25
    move-exception v0

    goto :goto_46

    .line 5408
    :catch_27
    move-exception v0

    .line 5409
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "problem setting whitelist ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") rules for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5412
    .end local v0  # "e":Ljava/lang/IllegalStateException;
    :goto_45
    nop

    .line 5413
    :goto_46
    return-void
.end method

.method private setMeteredRestrictedPackagesInternal(Ljava/util/Set;I)V
    .registers 9
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 5899
    .local p1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5900
    :try_start_3
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 5901
    .local v1, "newRestrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5902
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct {p0, v3, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidForPackage(Ljava/lang/String;I)I

    move-result v4

    .line 5903
    .local v4, "uid":I
    if-ltz v4, :cond_25

    .line 5904
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5906
    .end local v3  # "packageName":Ljava/lang/String;
    .end local v4  # "uid":I
    :cond_25
    goto :goto_c

    .line 5907
    :cond_26
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 5908
    .local v2, "oldRestrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5909
    invoke-direct {p0, v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->handleRestrictedPackagesChangeUL(Ljava/util/Set;Ljava/util/Set;)V

    .line 5910
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v3, v1}, Lcom/android/server/net/NetworkPolicyLogger;->meteredRestrictedPkgsChanged(Ljava/util/Set;)V

    .line 5911
    .end local v1  # "newRestrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v2  # "oldRestrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    monitor-exit v0

    .line 5912
    return-void

    .line 5911
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method private setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V
    .registers 6
    .param p1, "template"  # Landroid/net/NetworkTemplate;
    .param p2, "enabled"  # Z

    .line 1957
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/16 v2, 0x12

    invoke-virtual {v0, v2, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1958
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1959
    return-void
.end method

.method private setNetworkTemplateEnabledInner(Landroid/net/NetworkTemplate;Z)V
    .registers 16
    .param p1, "template"  # Landroid/net/NetworkTemplate;
    .param p2, "enabled"  # Z

    .line 1965
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5e

    .line 1969
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 1970
    .local v0, "matchingSubIds":Landroid/util/IntArray;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1971
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    :try_start_10
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3f

    .line 1972
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1973
    .local v3, "subId":I
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    .line 1975
    .local v8, "subscriberId":Ljava/lang/String;
    new-instance v4, Landroid/net/NetworkIdentity;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v5, v4

    invoke-direct/range {v5 .. v12}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 1979
    .local v4, "probeIdent":Landroid/net/NetworkIdentity;
    invoke-virtual {p1, v4}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 1980
    invoke-virtual {v0, v3}, Landroid/util/IntArray;->add(I)V

    .line 1971
    .end local v3  # "subId":I
    .end local v4  # "probeIdent":Landroid/net/NetworkIdentity;
    .end local v8  # "subscriberId":Ljava/lang/String;
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1983
    .end local v2  # "i":I
    :cond_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_10 .. :try_end_40} :catchall_5b

    .line 1986
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1987
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_4b
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_5e

    .line 1988
    invoke-virtual {v0, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    .line 1989
    .restart local v3  # "subId":I
    invoke-virtual {v1, p2, v3}, Landroid/telephony/TelephonyManager;->setPolicyDataEnabled(ZI)V

    .line 1987
    .end local v3  # "subId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .line 1983
    .end local v1  # "tm":Landroid/telephony/TelephonyManager;
    .end local v2  # "i":I
    :catchall_5b
    move-exception v2

    :try_start_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v2

    .line 1992
    .end local v0  # "matchingSubIds":Landroid/util/IntArray;
    :cond_5e
    return-void
.end method

.method private setRestrictBackgroundUL(Z)V
    .registers 8
    .param p1, "restrictBackground"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 3419
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "setRestrictBackgroundUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3421
    :try_start_9
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-ne p1, v2, :cond_28

    .line 3423
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRestrictBackgroundUL: already "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_95

    .line 3457
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3424
    return-void

    .line 3426
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

    .line 3427
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 3428
    .local v2, "oldRestrictBackground":Z
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 3432
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundUL()V
    :try_end_46
    .catchall {:try_start_28 .. :try_end_46} :catchall_95

    .line 3434
    :try_start_46
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->setDataSaverModeEnabled(Z)Z

    move-result v3

    if-nez v3, :cond_6e

    .line 3435
    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not change Data Saver Mode on NMS to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3437
    iput-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_6a} :catch_6f
    .catchall {:try_start_46 .. :try_end_6a} :catchall_95

    .line 3457
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3440
    return-void

    .line 3444
    :cond_6e
    goto :goto_70

    .line 3442
    :catch_6f
    move-exception v3

    .line 3446
    :goto_70
    :try_start_70
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->sendRestrictBackgroundChangedMsg()V

    .line 3447
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    iget-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {v3, v2, v4}, Lcom/android/server/net/NetworkPolicyLogger;->restrictBackgroundChanged(ZZ)V

    .line 3449
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundPowerState:Landroid/os/PowerSaveState;

    iget-boolean v3, v3, Landroid/os/PowerSaveState;->globalBatterySaverEnabled:Z

    if-eqz v3, :cond_83

    .line 3450
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    .line 3452
    :cond_83
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_86
    .catchall {:try_start_70 .. :try_end_86} :catchall_95

    .line 3453
    :try_start_86
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 3454
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 3455
    monitor-exit v3
    :try_end_8d
    .catchall {:try_start_86 .. :try_end_8d} :catchall_92

    .line 3457
    .end local v2  # "oldRestrictBackground":Z
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3458
    nop

    .line 3459
    return-void

    .line 3455
    .restart local v2  # "oldRestrictBackground":Z
    :catchall_92
    move-exception v4

    :try_start_93
    monitor-exit v3
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    .end local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1  # "restrictBackground":Z
    :try_start_94
    throw v4
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_95

    .line 3457
    .end local v2  # "oldRestrictBackground":Z
    .restart local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1  # "restrictBackground":Z
    :catchall_95
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private setUidFirewallRule(III)V
    .registers 9
    .param p1, "chain"  # I
    .param p2, "uid"  # I
    .param p3, "rule"  # I

    .line 5473
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 5474
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

    .line 5478
    :cond_2c
    const/4 v2, 0x1

    if-ne p1, v2, :cond_37

    .line 5479
    :try_start_2f
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_48

    .line 5495
    :catchall_35
    move-exception v2

    goto :goto_64

    .line 5480
    :cond_37
    const/4 v2, 0x2

    if-ne p1, v2, :cond_40

    .line 5481
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_48

    .line 5482
    :cond_40
    const/4 v2, 0x3

    if-ne p1, v2, :cond_48

    .line 5483
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_48
    .catchall {:try_start_2f .. :try_end_48} :catchall_35

    .line 5487
    :cond_48
    :goto_48
    :try_start_48
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, p2, p3}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 5488
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyLogger;->uidFirewallRuleChanged(III)V
    :try_end_52
    .catch Ljava/lang/IllegalStateException; {:try_start_48 .. :try_end_52} :catch_55
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_52} :catch_53
    .catchall {:try_start_48 .. :try_end_52} :catchall_35

    .line 5493
    goto :goto_5f

    .line 5491
    :catch_53
    move-exception v2

    goto :goto_5f

    .line 5489
    :catch_55
    move-exception v2

    .line 5490
    .local v2, "e":Ljava/lang/IllegalStateException;
    :try_start_56
    const-string v3, "NetworkPolicy"

    const-string/jumbo v4, "problem setting firewall uid rules"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5e
    .catchall {:try_start_56 .. :try_end_5e} :catchall_35

    .line 5493
    nop

    .line 5495
    .end local v2  # "e":Ljava/lang/IllegalStateException;
    :goto_5f
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5496
    nop

    .line 5497
    return-void

    .line 5495
    :goto_64
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private setUidFirewallRulesUL(ILandroid/util/SparseIntArray;)V
    .registers 8
    .param p1, "chain"  # I
    .param p2, "uidRules"  # Landroid/util/SparseIntArray;

    .line 5453
    :try_start_0
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 5454
    .local v0, "size":I
    new-array v1, v0, [I

    .line 5455
    .local v1, "uids":[I
    new-array v2, v0, [I

    .line 5456
    .local v2, "rules":[I
    add-int/lit8 v3, v0, -0x1

    .local v3, "index":I
    :goto_a
    if-ltz v3, :cond_1b

    .line 5457
    invoke-virtual {p2, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    aput v4, v1, v3

    .line 5458
    invoke-virtual {p2, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    aput v4, v2, v3

    .line 5456
    add-int/lit8 v3, v3, -0x1

    goto :goto_a

    .line 5460
    .end local v3  # "index":I
    :cond_1b
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p1, v1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRules(I[I[I)V

    .line 5461
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v3, p1, v1, v2}, Lcom/android/server/net/NetworkPolicyLogger;->firewallRulesChanged(I[I[I)V
    :try_end_25
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_25} :catch_28
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_25} :catch_26

    .end local v0  # "size":I
    .end local v1  # "uids":[I
    .end local v2  # "rules":[I
    goto :goto_31

    .line 5464
    :catch_26
    move-exception v0

    goto :goto_32

    .line 5462
    :catch_28
    move-exception v0

    .line 5463
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "problem setting firewall uid rules"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5466
    .end local v0  # "e":Ljava/lang/IllegalStateException;
    :goto_31
    nop

    .line 5467
    :goto_32
    return-void
.end method

.method private setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V
    .registers 5
    .param p1, "chain"  # I
    .param p2, "uidRules"  # Landroid/util/SparseIntArray;
    .param p3, "toggle"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 5438
    if-eqz p2, :cond_5

    .line 5439
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;)V

    .line 5441
    :cond_5
    if-eqz p3, :cond_f

    .line 5442
    const/4 v0, 0x1

    if-ne p3, v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainUL(IZ)V

    .line 5444
    :cond_f
    return-void
.end method

.method private setUidPolicyUncheckedUL(IIIZ)V
    .registers 15
    .param p1, "uid"  # I
    .param p2, "oldPolicy"  # I
    .param p3, "policy"  # I
    .param p4, "persist"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 3116
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    .line 3119
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForWhitelistRules(I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 3120
    const/4 v0, 0x0

    .local v0, "notifyApp":Z
    goto/16 :goto_74

    .line 3122
    .end local v0  # "notifyApp":Z
    :cond_d
    const/4 v1, 0x1

    if-ne p2, v1, :cond_12

    move v2, v1

    goto :goto_13

    :cond_12
    move v2, v0

    .line 3123
    .local v2, "wasBlacklisted":Z
    :goto_13
    if-ne p3, v1, :cond_17

    move v3, v1

    goto :goto_18

    :cond_17
    move v3, v0

    .line 3124
    .local v3, "isBlacklisted":Z
    :goto_18
    const/4 v4, 0x4

    if-ne p2, v4, :cond_1d

    move v5, v1

    goto :goto_1e

    :cond_1d
    move v5, v0

    .line 3125
    .local v5, "wasWhitelisted":Z
    :goto_1e
    if-ne p3, v4, :cond_22

    move v4, v1

    goto :goto_23

    :cond_22
    move v4, v0

    .line 3126
    .local v4, "isWhitelisted":Z
    :goto_23
    if-nez v2, :cond_2e

    iget-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v6, :cond_2c

    if-nez v5, :cond_2c

    goto :goto_2e

    :cond_2c
    move v6, v0

    goto :goto_2f

    :cond_2e
    :goto_2e
    move v6, v1

    .line 3127
    .local v6, "wasBlocked":Z
    :goto_2f
    if-nez v3, :cond_3a

    iget-boolean v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v7, :cond_38

    if-nez v4, :cond_38

    goto :goto_3a

    :cond_38
    move v7, v0

    goto :goto_3b

    :cond_3a
    :goto_3a
    move v7, v1

    .line 3128
    .local v7, "isBlocked":Z
    :goto_3b
    if-eqz v5, :cond_71

    if-eqz v4, :cond_41

    if-eqz v3, :cond_71

    :cond_41
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    .line 3129
    invoke-virtual {v8, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_71

    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    .line 3130
    invoke-virtual {v8, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-nez v8, :cond_71

    .line 3132
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Adding uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " to revoked restrict background whitelist"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "NetworkPolicy"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3133
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 3135
    :cond_71
    if-eq v6, v7, :cond_74

    move v0, v1

    .line 3137
    .end local v2  # "wasBlacklisted":Z
    .end local v3  # "isBlacklisted":Z
    .end local v4  # "isWhitelisted":Z
    .end local v5  # "wasWhitelisted":Z
    .end local v6  # "wasBlocked":Z
    .end local v7  # "isBlocked":Z
    .restart local v0  # "notifyApp":Z
    :cond_74
    :goto_74
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, p1, p3, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3138
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3139
    if-eqz p4, :cond_90

    .line 3140
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3141
    :try_start_88
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 3142
    monitor-exit v1

    goto :goto_90

    :catchall_8d
    move-exception v2

    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_88 .. :try_end_8f} :catchall_8d

    throw v2

    .line 3144
    :cond_90
    :goto_90
    return-void
.end method

.method private setUidPolicyUncheckedUL(IIZ)V
    .registers 9
    .param p1, "uid"  # I
    .param p2, "policy"  # I
    .param p3, "persist"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 3149
    const/4 v0, 0x0

    .line 3150
    .local v0, "notifyUidRulesChanged":Z
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 3151
    .local v1, "lastUidRules":I
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidPolicy(I)I

    move-result v3

    sput v3, Lcom/android/server/net/NetworkPolicyManagerService;->mLastUidPolicy:I

    .line 3154
    if-nez p2, :cond_16

    .line 3155
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_1b

    .line 3157
    :cond_16
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3161
    :goto_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mLastUidPolicy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/net/NetworkPolicyManagerService;->mLastUidPolicy:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NetworkPolicy"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidWifiAndMobileLocked(I)Z

    move-result v0

    .line 3166
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 3167
    if-eqz p3, :cond_50

    .line 3168
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3169
    :try_start_48
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 3170
    monitor-exit v3

    goto :goto_50

    :catchall_4d
    move-exception v2

    monitor-exit v3
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_4d

    throw v2

    .line 3174
    :cond_50
    :goto_50
    if-eqz v0, :cond_80

    .line 3175
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 3176
    .local v2, "newUidRules":I
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 3177
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 3178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notify uid rules changed: last: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", new: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NetworkPolicy"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3182
    .end local v2  # "newUidRules":I
    :cond_80
    return-void
.end method

.method private static updateCapabilityChange(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z
    .registers 6
    .param p0, "lastValues"  # Landroid/util/SparseBooleanArray;
    .param p1, "newValue"  # Z
    .param p2, "network"  # Landroid/net/Network;

    .line 1169
    iget v0, p2, Landroid/net/Network;->netId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 1170
    .local v0, "lastValue":Z
    if-ne v0, p1, :cond_11

    iget v2, p2, Landroid/net/Network;->netId:I

    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_12

    :cond_11
    const/4 v1, 0x1

    .line 1171
    .local v1, "changed":Z
    :cond_12
    if-eqz v1, :cond_19

    .line 1172
    iget v2, p2, Landroid/net/Network;->netId:I

    invoke-virtual {p0, v2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1174
    :cond_19
    return v1
.end method

.method private updateDefaultMobilePolicyAL(ILandroid/net/NetworkPolicy;)Z
    .registers 22
    .param p1, "subId"  # I
    .param p2, "policy"  # Landroid/net/NetworkPolicy;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 2323
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v2, Landroid/net/NetworkPolicy;->inferred:Z

    const-string v4, "NetworkPolicy"

    const/4 v5, 0x0

    if-nez v3, :cond_22

    .line 2324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring user-defined policy "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    return v5

    .line 2328
    :cond_22
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

    .line 2332
    .local v3, "original":Landroid/net/NetworkPolicy;
    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/telephony/SubscriptionPlan;

    .line 2333
    .local v5, "plans":[Landroid/telephony/SubscriptionPlan;
    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_96

    .line 2334
    const/4 v6, 0x0

    aget-object v8, v5, v6

    .line 2335
    .local v8, "plan":Landroid/telephony/SubscriptionPlan;
    invoke-virtual {v8}, Landroid/telephony/SubscriptionPlan;->getCycleRule()Landroid/util/RecurrenceRule;

    move-result-object v6

    iput-object v6, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    .line 2336
    invoke-virtual {v8}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v9

    .line 2337
    .local v9, "planLimitBytes":J
    const-wide/16 v11, -0x1

    cmp-long v6, v9, v11

    if-nez v6, :cond_71

    .line 2338
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultWarningBytes()J

    move-result-wide v11

    iput-wide v11, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2339
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultLimitBytes()J

    move-result-wide v11

    iput-wide v11, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_95

    .line 2340
    :cond_71
    const-wide v13, 0x7fffffffffffffffL

    cmp-long v6, v9, v13

    if-nez v6, :cond_7f

    .line 2341
    iput-wide v11, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2342
    iput-wide v11, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_95

    .line 2344
    :cond_7f
    const-wide/16 v13, 0x9

    mul-long/2addr v13, v9

    const-wide/16 v15, 0xa

    div-long/2addr v13, v15

    iput-wide v13, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2345
    invoke-virtual {v8}, Landroid/telephony/SubscriptionPlan;->getDataLimitBehavior()I

    move-result v6

    if-eqz v6, :cond_92

    if-eq v6, v7, :cond_92

    .line 2351
    iput-wide v11, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_95

    .line 2348
    :cond_92
    iput-wide v9, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 2349
    nop

    .line 2355
    .end local v8  # "plan":Landroid/telephony/SubscriptionPlan;
    .end local v9  # "planLimitBytes":J
    :goto_95
    goto :goto_cc

    .line 2356
    :cond_96
    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v6, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v6

    .line 2358
    .local v6, "config":Landroid/os/PersistableBundle;
    iget-object v8, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    invoke-virtual {v8}, Landroid/util/RecurrenceRule;->isMonthly()Z

    move-result v8

    if-eqz v8, :cond_ad

    .line 2359
    iget-object v8, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v8, v8, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v8

    .local v8, "currentCycleDay":I
    goto :goto_ae

    .line 2361
    .end local v8  # "currentCycleDay":I
    :cond_ad
    const/4 v8, -0x1

    .line 2363
    .restart local v8  # "currentCycleDay":I
    :goto_ae
    invoke-virtual {v0, v6, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->getCycleDayFromCarrierConfig(Landroid/os/PersistableBundle;I)I

    move-result v9

    .line 2364
    .local v9, "cycleDay":I
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/net/NetworkPolicy;->buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object v10

    iput-object v10, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    .line 2365
    iget-wide v10, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {v0, v6, v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->getWarningBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J

    move-result-wide v10

    iput-wide v10, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2366
    iget-wide v10, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {v0, v6, v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->getLimitBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J

    move-result-wide v10

    iput-wide v10, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 2369
    .end local v6  # "config":Landroid/os/PersistableBundle;
    .end local v8  # "currentCycleDay":I
    .end local v9  # "cycleDay":I
    :goto_cc
    invoke-virtual {v2, v3}, Landroid/net/NetworkPolicy;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d4

    .line 2370
    const/4 v4, 0x0

    return v4

    .line 2372
    :cond_d4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updated "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    return v7
.end method

.method private updateNetworkStats(IZ)V
    .registers 7
    .param p1, "uid"  # I
    .param p2, "uidForeground"  # Z

    .line 4176
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 4177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateNetworkStats: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4178
    if-eqz p2, :cond_21

    const-string v3, "F"

    goto :goto_23

    :cond_21
    const-string v3, "B"

    :goto_23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4177
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4181
    :cond_2d
    :try_start_2d
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/net/NetworkStatsManagerInternal;->setUidForeground(IZ)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_37

    .line 4183
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4184
    nop

    .line 4185
    return-void

    .line 4183
    :catchall_37
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private updateNetworksInternal()V
    .registers 4

    .line 1704
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateSubscriptions()V

    .line 1706
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1707
    :try_start_6
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_1e

    .line 1708
    :try_start_9
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyAL()V

    .line 1709
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL()V

    .line 1710
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 1711
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 1712
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 1713
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_1b

    .line 1714
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1e

    .line 1715
    return-void

    .line 1713
    :catchall_1b
    move-exception v2

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    .end local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_1d
    throw v2

    .line 1714
    .restart local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private updateRestrictBackgroundRulesOnUidStatusChangedUL(III)V
    .registers 6
    .param p1, "uid"  # I
    .param p2, "oldUidState"  # I
    .param p3, "newUidState"  # I

    .line 4189
    nop

    .line 4190
    invoke-static {p2}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result v0

    .line 4191
    .local v0, "oldForeground":Z
    nop

    .line 4192
    invoke-static {p3}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result v1

    .line 4193
    .local v1, "newForeground":Z
    if-eq v0, v1, :cond_f

    .line 4194
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 4196
    :cond_f
    return-void
.end method

.method private updateRestrictionRulesForUidUL(I)V
    .registers 2
    .param p1, "uid"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4670
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    .line 4671
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(I)V

    .line 4672
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 4675
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 4678
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 4679
    return-void
.end method

.method private updateRulesForAllAppsUL(I)V
    .registers 18
    .param p1, "type"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4452
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-wide/32 v3, 0x200000

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 4453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateRulesForRestrictPowerUL-"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4458
    :cond_22
    :try_start_22
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v5, v0

    .line 4462
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v0, "list-users"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_22 .. :try_end_2f} :catchall_b7

    .line 4464
    :try_start_2f
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_af

    move-object v6, v0

    .line 4466
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_36
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 4467
    nop

    .line 4468
    const-string/jumbo v0, "list-uids"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_40
    .catchall {:try_start_36 .. :try_end_40} :catchall_b7

    .line 4470
    const v0, 0x4c0200

    :try_start_43
    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0
    :try_end_47
    .catchall {:try_start_43 .. :try_end_47} :catchall_a6

    .line 4475
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :try_start_47
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 4476
    nop

    .line 4478
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 4479
    .local v7, "usersSize":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 4480
    .local v8, "appsSize":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_54
    if-ge v9, v7, :cond_9e

    .line 4481
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    .line 4482
    .local v10, "user":Landroid/content/pm/UserInfo;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_5d
    if-ge v11, v8, :cond_98

    .line 4483
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ApplicationInfo;

    .line 4484
    .local v12, "app":Landroid/content/pm/ApplicationInfo;
    iget v13, v10, Landroid/content/pm/UserInfo;->id:I

    iget v14, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v13, v14}, Landroid/os/UserHandle;->getUid(II)I

    move-result v13

    .line 4485
    .local v13, "uid":I
    const/4 v14, 0x1

    if-eq v2, v14, :cond_8e

    const/4 v14, 0x2

    if-eq v2, v14, :cond_8a

    .line 4493
    const-string v14, "NetworkPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid type for updateRulesForAllApps: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92

    .line 4490
    :cond_8a
    invoke-direct {v1, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 4491
    goto :goto_92

    .line 4487
    :cond_8e
    invoke-direct {v1, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V
    :try_end_91
    .catchall {:try_start_47 .. :try_end_91} :catchall_b7

    .line 4488
    nop

    .line 4482
    .end local v12  # "app":Landroid/content/pm/ApplicationInfo;
    .end local v13  # "uid":I
    :goto_92
    add-int/lit8 v11, v11, 0x1

    const-wide/32 v3, 0x200000

    goto :goto_5d

    .line 4480
    .end local v10  # "user":Landroid/content/pm/UserInfo;
    .end local v11  # "j":I
    :cond_98
    add-int/lit8 v9, v9, 0x1

    const-wide/32 v3, 0x200000

    goto :goto_54

    .line 4498
    .end local v0  # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v5  # "pm":Landroid/content/pm/PackageManager;
    .end local v6  # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7  # "usersSize":I
    .end local v8  # "appsSize":I
    .end local v9  # "i":I
    :cond_9e
    const-wide/32 v3, 0x200000

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 4499
    nop

    .line 4500
    return-void

    .line 4475
    .restart local v5  # "pm":Landroid/content/pm/PackageManager;
    .restart local v6  # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_a6
    move-exception v0

    move-object v3, v0

    const-wide/32 v7, 0x200000

    :try_start_ab
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .end local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1  # "type":I
    throw v3

    .line 4466
    .end local v6  # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1  # "type":I
    :catchall_af
    move-exception v0

    const-wide/32 v3, 0x200000

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .end local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1  # "type":I
    throw v0
    :try_end_b7
    .catchall {:try_start_ab .. :try_end_b7} :catchall_b7

    .line 4498
    .end local v5  # "pm":Landroid/content/pm/PackageManager;
    .restart local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1  # "type":I
    :catchall_b7
    move-exception v0

    const-wide/32 v3, 0x200000

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private updateRulesForDataUsageRestrictionsUL(I)V
    .registers 6
    .param p1, "uid"  # I

    .line 4721
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 4722
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRulesForDataUsageRestrictionsUL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4726
    :cond_1e
    :try_start_1e
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsULInner(I)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_26

    .line 4728
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4729
    nop

    .line 4730
    return-void

    .line 4728
    :catchall_26
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private updateRulesForDataUsageRestrictionsULInner(I)V
    .registers 20
    .param p1, "uid"  # I

    .line 4786
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForWhitelistRules(I)Z

    move-result v2

    const-string v3, "NetworkPolicy"

    if-nez v2, :cond_22

    .line 4787
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no need to update restrict data rules for uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4788
    return-void

    .line 4791
    :cond_22
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 4792
    .local v2, "uidPolicy":I
    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 4793
    .local v5, "oldUidRules":I
    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictBackgroundUL(I)Z

    move-result v6

    .line 4794
    .local v6, "isForeground":Z
    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isRestrictedByAdminUL(I)Z

    move-result v7

    .line 4796
    .local v7, "isRestrictedByAdmin":Z
    and-int/lit8 v8, v2, 0x1

    if-eqz v8, :cond_3d

    const/4 v8, 0x1

    goto :goto_3e

    :cond_3d
    move v8, v4

    .line 4797
    .local v8, "isBlacklisted":Z
    :goto_3e
    and-int/lit8 v10, v2, 0x4

    if-eqz v10, :cond_44

    const/4 v10, 0x1

    goto :goto_45

    :cond_44
    move v10, v4

    .line 4798
    .local v10, "isWhitelisted":Z
    :goto_45
    and-int/lit8 v11, v5, 0xf

    .line 4799
    .local v11, "oldRule":I
    const/4 v12, 0x0

    .line 4802
    .local v12, "newRule":I
    if-eqz v7, :cond_4c

    .line 4803
    const/4 v12, 0x4

    goto :goto_68

    .line 4804
    :cond_4c
    if-eqz v6, :cond_5d

    .line 4805
    if-nez v8, :cond_5b

    iget-boolean v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v13, :cond_57

    if-nez v10, :cond_57

    goto :goto_5b

    .line 4807
    :cond_57
    if-eqz v10, :cond_68

    .line 4808
    const/4 v12, 0x1

    goto :goto_68

    .line 4806
    :cond_5b
    :goto_5b
    const/4 v12, 0x2

    goto :goto_68

    .line 4811
    :cond_5d
    if-eqz v8, :cond_61

    .line 4812
    const/4 v12, 0x4

    goto :goto_68

    .line 4813
    :cond_61
    iget-boolean v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v13, :cond_68

    if-eqz v10, :cond_68

    .line 4814
    const/4 v12, 0x1

    .line 4817
    :cond_68
    :goto_68
    and-int/lit16 v13, v5, 0xf0

    or-int/2addr v13, v12

    .line 4820
    .local v13, "newUidRules":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "updateRuleForRestrictBackgroundUL("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "): isForeground="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", isBlacklisted="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", isWhitelisted="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", isRestrictedByAdmin="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", oldRule="

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4825
    invoke-static {v11}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", newRule="

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4826
    move-object/from16 v17, v4

    invoke-static {v12}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", newUidRules="

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4827
    invoke-static {v13}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", oldUidRules="

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4828
    invoke-static {v5}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4820
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4832
    invoke-direct {v0, v13, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->flymeChangeUidRules(II)I

    move-result v4

    .line 4836
    .end local v13  # "newUidRules":I
    .local v4, "newUidRules":I
    if-nez v6, :cond_de

    and-int/lit16 v13, v2, 0x200

    if-eqz v13, :cond_de

    .line 4837
    or-int/lit16 v4, v4, 0x200

    .line 4839
    :cond_de
    if-nez v6, :cond_e6

    and-int/lit16 v13, v2, 0x100

    if-eqz v13, :cond_e6

    .line 4840
    or-int/lit16 v4, v4, 0x100

    .line 4844
    :cond_e6
    and-int/lit16 v13, v2, 0x200

    if-nez v13, :cond_ee

    and-int/lit16 v13, v2, 0x100

    if-eqz v13, :cond_f1

    .line 4846
    :cond_ee
    invoke-direct {v0, v1, v2, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->handleFlymeBackgroundRestriction(IIZ)V

    .line 4886
    :cond_f1
    if-nez v4, :cond_f9

    .line 4887
    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_fe

    .line 4889
    :cond_f9
    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 4893
    :goto_fe
    if-eq v12, v11, :cond_1af

    .line 4894
    const/4 v13, 0x2

    invoke-static {v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v14

    if-eqz v14, :cond_113

    .line 4898
    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    .line 4902
    if-eqz v8, :cond_1a5

    .line 4903
    const/4 v14, 0x0

    invoke-direct {v0, v1, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkBlacklist(IZ)V

    goto/16 :goto_1a5

    .line 4905
    :cond_113
    const/4 v14, 0x0

    invoke-static {v11, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v13

    if-eqz v13, :cond_129

    .line 4912
    if-nez v10, :cond_11f

    .line 4913
    invoke-direct {v0, v1, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    .line 4915
    :cond_11f
    if-nez v8, :cond_123

    if-eqz v7, :cond_1a5

    .line 4916
    :cond_123
    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkBlacklist(IZ)V

    goto/16 :goto_1a5

    .line 4918
    :cond_129
    const/4 v13, 0x4

    invoke-static {v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v16

    if-nez v16, :cond_192

    .line 4919
    invoke-static {v11, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v16

    if-eqz v16, :cond_137

    goto :goto_192

    .line 4928
    :cond_137
    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v14

    if-nez v14, :cond_18e

    .line 4929
    invoke-static {v11, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v14

    if-eqz v14, :cond_145

    goto :goto_18e

    .line 4934
    :cond_145
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unexpected change of metered UID state for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ": foreground="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", whitelisted="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", blacklisted="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4939
    invoke-static {v4}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v17

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4940
    invoke-static {v5}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4934
    invoke-static {v3, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a5

    .line 4931
    :cond_18e
    :goto_18e
    invoke-direct {v0, v1, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    goto :goto_1a5

    .line 4921
    :cond_192
    :goto_192
    if-nez v8, :cond_196

    if-eqz v7, :cond_197

    :cond_196
    const/4 v14, 0x1

    :cond_197
    invoke-direct {v0, v1, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkBlacklist(IZ)V

    .line 4922
    invoke-static {v11, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v3

    if-eqz v3, :cond_1a5

    if-eqz v10, :cond_1a5

    .line 4926
    invoke-direct {v0, v1, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    .line 4944
    :cond_1a5
    :goto_1a5
    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    invoke-virtual {v3, v9, v1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 4946
    :cond_1af
    return-void
.end method

.method private updateRulesForGlobalChangeAL(Z)V
    .registers 6
    .param p1, "restrictedNetworksChanged"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock",
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 4397
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 4398
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRulesForGlobalChangeAL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4399
    if-eqz p1, :cond_19

    const-string v3, "R"

    goto :goto_1b

    :cond_19
    const-string v3, "-"

    :goto_1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4398
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4402
    :cond_25
    :try_start_25
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleUL()V

    .line 4403
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V

    .line 4404
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundUL()V

    .line 4407
    if-eqz p1, :cond_36

    .line 4408
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL()V

    .line 4409
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V
    :try_end_36
    .catchall {:try_start_25 .. :try_end_36} :catchall_3b

    .line 4412
    :cond_36
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4413
    nop

    .line 4414
    return-void

    .line 4412
    :catchall_3b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private updateRulesForPowerRestrictionsUL(IIZ)I
    .registers 8
    .param p1, "uid"  # I
    .param p2, "oldUidRules"  # I
    .param p3, "paroled"  # Z

    .line 4989
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 4990
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRulesForPowerRestrictionsUL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4992
    if-eqz p3, :cond_27

    const-string v3, "P"

    goto :goto_29

    :cond_27
    const-string v3, "-"

    :goto_29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4990
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4995
    :cond_33
    :try_start_33
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsULInner(IIZ)I

    move-result v2
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_3b

    .line 4997
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4995
    return v2

    .line 4997
    :catchall_3b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private updateRulesForPowerRestrictionsUL(I)V
    .registers 5
    .param p1, "uid"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4968
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 4970
    .local v0, "oldUidRules":I
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(IIZ)I

    move-result v1

    .line 4972
    .local v1, "newUidRules":I
    if-nez v1, :cond_13

    .line 4973
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_18

    .line 4975
    :cond_13
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 4977
    :goto_18
    return-void
.end method

.method private updateRulesForPowerRestrictionsULInner(IIZ)I
    .registers 20
    .param p1, "uid"  # I
    .param p2, "oldUidRules"  # I
    .param p3, "paroled"  # Z

    .line 5002
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForBlacklistRules(I)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "NetworkPolicy"

    if-nez v3, :cond_25

    .line 5003
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no need to update restrict power rules for uid "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5004
    return v4

    .line 5007
    :cond_25
    if-nez p3, :cond_2f

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    move-result v6

    if-eqz v6, :cond_2f

    const/4 v6, 0x1

    goto :goto_30

    :cond_2f
    move v6, v4

    .line 5008
    .local v6, "isIdle":Z
    :goto_30
    if-nez v6, :cond_3d

    iget-boolean v7, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-nez v7, :cond_3d

    iget-boolean v7, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v7, :cond_3b

    goto :goto_3d

    :cond_3b
    move v7, v4

    goto :goto_3e

    :cond_3d
    :goto_3d
    const/4 v7, 0x1

    .line 5009
    .local v7, "restrictMode":Z
    :goto_3e
    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v8

    .line 5011
    .local v8, "isForeground":Z
    iget-object v9, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 5014
    .local v4, "uidPolicy":I
    iget-boolean v9, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-direct {v0, v1, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->isWhitelistedFromPowerSaveUL(IZ)Z

    move-result v9

    .line 5015
    .local v9, "isWhitelisted":Z
    and-int/lit16 v10, v2, 0xf0

    .line 5016
    .local v10, "oldRule":I
    const/4 v11, 0x0

    .line 5022
    .local v11, "newRule":I
    if-eqz v8, :cond_58

    .line 5023
    if-eqz v7, :cond_62

    .line 5024
    const/16 v11, 0x20

    goto :goto_62

    .line 5026
    :cond_58
    if-eqz v7, :cond_62

    .line 5027
    if-eqz v9, :cond_5f

    const/16 v14, 0x20

    goto :goto_61

    :cond_5f
    const/16 v14, 0x40

    :goto_61
    move v11, v14

    .line 5030
    :cond_62
    :goto_62
    and-int/lit8 v14, v2, 0xf

    or-int/2addr v14, v11

    .line 5033
    .local v14, "newUidRules":I
    invoke-direct {v0, v14, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->flymeChangeUidRules(II)I

    move-result v14

    .line 5037
    and-int/lit16 v15, v2, 0x300

    or-int/2addr v14, v15

    .line 5051
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRulesForPowerRestrictionsUL("

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), isIdle: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mRestrictPower: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mDeviceIdleMode: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isForeground="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isWhitelisted="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", oldRule="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5057
    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", newRule="

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5058
    invoke-static {v11}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", newUidRules="

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5059
    invoke-static {v14}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", oldUidRules="

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5060
    invoke-static/range {p2 .. p2}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 5051
    invoke-static {v5, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5064
    if-eq v11, v10, :cond_15e

    .line 5065
    if-eqz v11, :cond_140

    const/16 v12, 0x20

    invoke-static {v11, v12}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v12

    if-eqz v12, :cond_ea

    goto :goto_140

    .line 5067
    :cond_ea
    const/16 v12, 0x40

    invoke-static {v11, v12}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v12

    if-eqz v12, :cond_107

    .line 5068
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Rejecting non-metered access for UID "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_154

    .line 5071
    :cond_107
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unexpected change of non-metered UID state for "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ": foreground="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", whitelisted="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5074
    invoke-static {v14}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5075
    invoke-static/range {p2 .. p2}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5071
    invoke-static {v5, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_154

    .line 5066
    :cond_140
    :goto_140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Allowing non-metered access for UID "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5077
    :goto_154
    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v1, v14}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 5080
    :cond_15e
    return v14
.end method

.method private updateRulesForRestrictBackgroundUL()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4431
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateRulesForRestrictBackgroundUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4433
    const/4 v2, 0x1

    :try_start_a
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAllAppsUL(I)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_12

    .line 4435
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4436
    nop

    .line 4437
    return-void

    .line 4435
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

    .line 4419
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateRulesForRestrictPowerUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4421
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDeviceIdleUL()V

    .line 4422
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerSaveUL()V

    .line 4423
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAllAppsUL(I)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    .line 4425
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4426
    nop

    .line 4427
    return-void

    .line 4425
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private updateRulesForTempWhitelistChangeUL(I)V
    .registers 7
    .param p1, "appId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4504
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 4505
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 4506
    .local v1, "numUsers":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_28

    .line 4507
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 4508
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 4510
    .local v4, "uid":I
    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(I)V

    .line 4511
    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    .line 4512
    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 4514
    invoke-direct {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 4506
    .end local v3  # "user":Landroid/content/pm/UserInfo;
    .end local v4  # "uid":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 4516
    .end local v2  # "i":I
    :cond_28
    return-void
.end method

.method private updateRulesForUidWifiAndMobileLocked(I)Z
    .registers 14
    .param p1, "uid"  # I

    .line 6066
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidPolicy(I)I

    move-result v0

    .line 6067
    .local v0, "uidPolicy":I
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForeground(I)Z

    move-result v1

    .line 6070
    .local v1, "uidForeground":Z
    const/16 v2, 0x20

    .line 6071
    .local v2, "uidRules":I
    if-nez v1, :cond_12

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_12

    .line 6073
    or-int/lit8 v2, v2, 0x4

    .line 6075
    :cond_12
    if-nez v1, :cond_1a

    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v3, :cond_1a

    .line 6077
    or-int/lit8 v2, v2, 0x4

    .line 6080
    :cond_1a
    and-int/lit16 v3, v0, 0x800

    if-eqz v3, :cond_20

    .line 6081
    or-int/lit16 v2, v2, 0x800

    .line 6084
    :cond_20
    and-int/lit16 v3, v0, 0x400

    if-eqz v3, :cond_26

    .line 6085
    or-int/lit16 v2, v2, 0x400

    .line 6092
    :cond_26
    const/4 v3, 0x0

    .line 6093
    .local v3, "policy3gChanged":Z
    const/4 v4, 0x0

    .line 6094
    .local v4, "policyWifiChanged":Z
    sget v5, Lcom/android/server/net/NetworkPolicyManagerService;->mLastUidPolicy:I

    and-int/lit16 v5, v5, 0x800

    and-int/lit16 v6, v0, 0x800

    xor-int/2addr v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_35

    move v5, v7

    goto :goto_36

    :cond_35
    move v5, v6

    :goto_36
    move v3, v5

    .line 6096
    sget v5, Lcom/android/server/net/NetworkPolicyManagerService;->mLastUidPolicy:I

    and-int/lit16 v5, v5, 0x400

    and-int/lit16 v8, v0, 0x400

    xor-int/2addr v5, v8

    if-eqz v5, :cond_42

    move v5, v7

    goto :goto_43

    :cond_42
    move v5, v6

    :goto_43
    move v4, v5

    .line 6099
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "3gPolicyChanged "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "NetworkPolicy"

    invoke-static {v8, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6100
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "wifiPolicyChanged "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6114
    const-string v5, ""

    if-eqz v3, :cond_a5

    .line 6115
    and-int/lit16 v9, v2, 0x800

    if-nez v9, :cond_79

    move v9, v7

    goto :goto_7a

    :cond_79
    move v9, v6

    .line 6116
    .local v9, "allowNet3g":Z
    :goto_7a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "allowNet3g "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6118
    :try_start_8e
    new-instance v10, Ljava/lang/Exception;

    invoke-direct {v10, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->dumpStack(Ljava/lang/Exception;)V

    .line 6119
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v10, p1, v6, v9}, Landroid/os/INetworkManagementService;->setFirewallUidChainRule(IIZ)V
    :try_end_9b
    .catch Ljava/lang/IllegalStateException; {:try_start_8e .. :try_end_9b} :catch_a1
    .catch Landroid/os/RemoteException; {:try_start_8e .. :try_end_9b} :catch_9c

    goto :goto_a5

    .line 6122
    :catch_9c
    move-exception v10

    .line 6123
    .local v10, "e":Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_a5

    .line 6120
    .end local v10  # "e":Landroid/os/RemoteException;
    :catch_a1
    move-exception v10

    .line 6121
    .local v10, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v10}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 6126
    .end local v9  # "allowNet3g":Z
    .end local v10  # "e":Ljava/lang/IllegalStateException;
    :cond_a5
    :goto_a5
    if-eqz v4, :cond_d9

    .line 6127
    and-int/lit16 v9, v2, 0x400

    if-nez v9, :cond_ad

    move v9, v7

    goto :goto_ae

    :cond_ad
    move v9, v6

    .line 6128
    .local v9, "allowNetWifi":Z
    :goto_ae
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "allowNetWifi "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6130
    :try_start_c2
    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->dumpStack(Ljava/lang/Exception;)V

    .line 6131
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v5, p1, v7, v9}, Landroid/os/INetworkManagementService;->setFirewallUidChainRule(IIZ)V
    :try_end_cf
    .catch Ljava/lang/IllegalStateException; {:try_start_c2 .. :try_end_cf} :catch_d5
    .catch Landroid/os/RemoteException; {:try_start_c2 .. :try_end_cf} :catch_d0

    goto :goto_d9

    .line 6134
    :catch_d0
    move-exception v5

    .line 6135
    .local v5, "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_d9

    .line 6132
    .end local v5  # "e":Landroid/os/RemoteException;
    :catch_d5
    move-exception v5

    .line 6133
    .local v5, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v5}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 6139
    .end local v5  # "e":Ljava/lang/IllegalStateException;
    .end local v9  # "allowNetWifi":Z
    :cond_d9
    :goto_d9
    if-nez v3, :cond_df

    if-eqz v4, :cond_de

    goto :goto_df

    .line 6142
    :cond_de
    return v6

    .line 6140
    :cond_df
    :goto_df
    return v7
.end method

.method private updateRulesForWhitelistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V
    .registers 8
    .param p1, "uidRules"  # Landroid/util/SparseIntArray;
    .param p2, "whitelistedAppIds"  # Landroid/util/SparseBooleanArray;
    .param p3, "userId"  # I

    .line 4263
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1c

    .line 4264
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 4265
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 4266
    .local v2, "appId":I
    invoke-static {p3, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 4267
    .local v3, "uid":I
    invoke-virtual {p1, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 4263
    .end local v2  # "appId":I
    .end local v3  # "uid":I
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 4270
    .end local v0  # "i":I
    :cond_1c
    return-void
.end method

.method private updateRulesForWhitelistedPowerSaveUL(IZI)V
    .registers 8
    .param p1, "uid"  # I
    .param p2, "enabled"  # Z
    .param p3, "chain"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4295
    if-eqz p2, :cond_1d

    .line 4296
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_8

    move v2, v1

    goto :goto_9

    :cond_8
    move v2, v0

    :goto_9
    invoke-direct {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->isWhitelistedFromPowerSaveUL(IZ)Z

    move-result v2

    .line 4298
    .local v2, "isWhitelisted":Z
    if-nez v2, :cond_1a

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_1a

    .line 4301
    :cond_16
    invoke-direct {p0, p3, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    goto :goto_1d

    .line 4299
    :cond_1a
    :goto_1a
    invoke-direct {p0, p3, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    .line 4304
    .end local v2  # "isWhitelisted":Z
    :cond_1d
    :goto_1d
    return-void
.end method

.method private updateRulesForWhitelistedPowerSaveUL(ZILandroid/util/SparseIntArray;)V
    .registers 11
    .param p1, "enabled"  # Z
    .param p2, "chain"  # I
    .param p3, "rules"  # Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4235
    if-eqz p1, :cond_5a

    .line 4238
    move-object v0, p3

    .line 4239
    .local v0, "uidRules":Landroid/util/SparseIntArray;
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 4240
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 4241
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "ui":I
    :goto_12
    if-ltz v2, :cond_35

    .line 4242
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 4243
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V

    .line 4244
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V

    .line 4245
    const/4 v5, 0x3

    if-ne p2, v5, :cond_32

    .line 4246
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V

    .line 4241
    .end local v4  # "user":Landroid/content/pm/UserInfo;
    :cond_32
    add-int/lit8 v2, v2, -0x1

    goto :goto_12

    .line 4250
    .end local v2  # "ui":I
    :cond_35
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_3c
    if-ltz v2, :cond_56

    .line 4251
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-static {v4}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 4252
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 4250
    :cond_53
    add-int/lit8 v2, v2, -0x1

    goto :goto_3c

    .line 4255
    .end local v2  # "i":I
    :cond_56
    invoke-direct {p0, p2, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V

    .line 4256
    .end local v0  # "uidRules":Landroid/util/SparseIntArray;
    .end local v1  # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto :goto_5f

    .line 4257
    :cond_5a
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V

    .line 4259
    :goto_5f
    return-void
.end method

.method private updateUidStateUL(II)Z
    .registers 8
    .param p1, "uid"  # I
    .param p2, "uidState"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4126
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateUidStateUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4128
    :try_start_9
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v3, 0x14

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 4129
    .local v2, "oldUidState":I
    if-eq v2, p2, :cond_3e

    .line 4131
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4132
    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictBackgroundRulesOnUidStatusChangedUL(III)V

    .line 4133
    invoke-static {v2}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    move-result v3

    .line 4134
    invoke-static {p2}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    move-result v4

    if-eq v3, v4, :cond_39

    .line 4135
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(I)V

    .line 4136
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v3, :cond_2f

    .line 4137
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    .line 4139
    :cond_2f
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eqz v3, :cond_36

    .line 4140
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 4142
    :cond_36
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_44

    .line 4144
    :cond_39
    const/4 v3, 0x1

    .line 4147
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4144
    return v3

    .line 4147
    .end local v2  # "oldUidState":I
    :cond_3e
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4148
    nop

    .line 4149
    const/4 v0, 0x0

    return v0

    .line 4147
    :catchall_44
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private upgradeDefaultBackgroundDataUL()V
    .registers 4

    .line 2601
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 2602
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2601
    const/4 v1, 0x0

    const-string v2, "default_restrict_background_data"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    move v1, v2

    :cond_11
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    .line 2612
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

    .line 2620
    const/4 v0, 0x0

    .line 2621
    .local v0, "modified":Z
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 2622
    .local v1, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 2623
    .local v2, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_83

    .line 2624
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicy;

    .line 2625
    .local v4, "policy":Landroid/net/NetworkPolicy;
    iget-object v5, v4, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v5}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_80

    iget-boolean v5, v4, Landroid/net/NetworkPolicy;->inferred:Z

    if-nez v5, :cond_80

    .line 2627
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 2628
    const/4 v0, 0x1

    .line 2630
    iget-object v5, v4, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v5}, Landroid/net/NetworkTemplate;->getNetworkId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/NetworkPolicyManager;->resolveNetworkId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2631
    .local v5, "networkId":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_41
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 2632
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-static {v7}, Landroid/net/NetworkPolicyManager;->resolveNetworkId(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7e

    .line 2633
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found network "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "; upgrading metered hint"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "NetworkPolicy"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2634
    iget-boolean v8, v4, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v8, :cond_78

    .line 2635
    const/4 v8, 0x1

    goto :goto_79

    .line 2636
    :cond_78
    const/4 v8, 0x2

    :goto_79
    iput v8, v7, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 2637
    invoke-virtual {v1, v7}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 2639
    .end local v7  # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_7e
    goto :goto_41

    .line 2640
    .end local v5  # "networkId":Ljava/lang/String;
    :cond_7f
    goto :goto_82

    .line 2641
    :cond_80
    add-int/lit8 v3, v3, 0x1

    .line 2643
    .end local v4  # "policy":Landroid/net/NetworkPolicy;
    :goto_82
    goto :goto_10

    .line 2644
    .end local v3  # "i":I
    :cond_83
    if-eqz v0, :cond_88

    .line 2645
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 2647
    :cond_88
    return-void
.end method

.method private waitForAdminData()V
    .registers 5

    .line 5968
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.device_admin"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 5969
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x2710

    const-string v3, "Wait for admin data"

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/ConcurrentUtils;->waitForCountDownNoInterrupt(Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;)V

    .line 5972
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

    .line 756
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 757
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 759
    .local v1, "numberUsers":I
    const/4 v2, 0x0

    .line 760
    .local v2, "changed":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v1, :cond_26

    .line 761
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 762
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundWhitelistUidsUL(I)Z

    move-result v5

    if-nez v5, :cond_21

    if-eqz v2, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v5, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v5, 0x1

    :goto_22
    move v2, v5

    .line 760
    .end local v4  # "user":Landroid/content/pm/UserInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 764
    .end local v3  # "i":I
    :cond_26
    return v2
.end method

.method addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .registers 3
    .param p1, "handler"  # Landroid/os/MessageQueue$IdleHandler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5621
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 5622
    return-void
.end method

.method addNetworkPolicyAL(Landroid/net/NetworkPolicy;)V
    .registers 4
    .param p1, "policy"  # Landroid/net/NetworkPolicy;

    .line 3291
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 3292
    .local v0, "policies":[Landroid/net/NetworkPolicy;
    const-class v1, Landroid/net/NetworkPolicy;

    invoke-static {v1, v0, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Landroid/net/NetworkPolicy;

    .line 3293
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 3294
    return-void
.end method

.method public addUidPolicy(II)V
    .registers 6
    .param p1, "uid"  # I
    .param p2, "policy"  # I

    .line 3059
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addUidPolicy: uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", policy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Calling PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3063
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", calling UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3064
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3062
    const-string v1, "NetworkPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3067
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 3071
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3072
    :try_start_48
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 3073
    .local v1, "oldPolicy":I
    or-int/2addr p2, v1

    .line 3074
    if-eq v1, p2, :cond_5b

    .line 3075
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIIZ)V

    .line 3076
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v2, p1, v1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->uidPolicyChanged(III)V

    .line 3078
    .end local v1  # "oldPolicy":I
    :cond_5b
    monitor-exit v0

    .line 3079
    return-void

    .line 3078
    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_48 .. :try_end_5f} :catchall_5d

    throw v1

    .line 3068
    :cond_60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot apply policy to UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    .registers 3
    .param p1, "connManager"  # Landroid/net/IConnectivityManager;

    .line 724
    const-string/jumbo v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    .line 725
    return-void
.end method

.method buildDefaultMobilePolicy(ILjava/lang/String;)Landroid/net/NetworkPolicy;
    .registers 20
    .param p1, "subId"  # I
    .param p2, "subscriberId"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2300
    move-object/from16 v1, p0

    invoke-static/range {p2 .. p2}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v15

    .line 2302
    .local v15, "template":Landroid/net/NetworkTemplate;
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/NetworkPolicy;->buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object v16

    .line 2303
    .local v16, "cycleRule":Landroid/util/RecurrenceRule;
    new-instance v0, Landroid/net/NetworkPolicy;

    .line 2304
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultWarningBytes()J

    move-result-wide v5

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultLimitBytes()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    const-wide/16 v11, -0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object v2, v0

    move-object v3, v15

    move-object/from16 v4, v16

    invoke-direct/range {v2 .. v14}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;Landroid/util/RecurrenceRule;JJJJZZ)V

    .line 2306
    .local v2, "policy":Landroid/net/NetworkPolicy;
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2307
    :try_start_30
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_3e

    .line 2308
    move/from16 v5, p1

    :try_start_35
    invoke-direct {v1, v5, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateDefaultMobilePolicyAL(ILandroid/net/NetworkPolicy;)Z

    .line 2309
    monitor-exit v4
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_3b

    .line 2310
    :try_start_39
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_43

    .line 2311
    return-object v2

    .line 2309
    :catchall_3b
    move-exception v0

    :try_start_3c
    monitor-exit v4
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    .end local v2  # "policy":Landroid/net/NetworkPolicy;
    .end local v15  # "template":Landroid/net/NetworkTemplate;
    .end local v16  # "cycleRule":Landroid/util/RecurrenceRule;
    .end local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1  # "subId":I
    .end local p2  # "subscriberId":Ljava/lang/String;
    :try_start_3d
    throw v0

    .line 2310
    .restart local v2  # "policy":Landroid/net/NetworkPolicy;
    .restart local v15  # "template":Landroid/net/NetworkTemplate;
    .restart local v16  # "cycleRule":Landroid/util/RecurrenceRule;
    .restart local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1  # "subId":I
    .restart local p2  # "subscriberId":Ljava/lang/String;
    :catchall_3e
    move-exception v0

    move/from16 v5, p1

    :goto_41
    monitor-exit v3
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_43

    throw v0

    :catchall_43
    move-exception v0

    goto :goto_41
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 16
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "writer"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 3860
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "NetworkPolicy"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 3862
    :cond_b
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3864
    .local v0, "fout":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, p3

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 3865
    .local v1, "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    array-length v2, p3

    const/4 v3, 0x0

    move v4, v3

    :goto_1b
    if-ge v4, v2, :cond_25

    aget-object v5, p3, v4

    .line 3866
    .local v5, "arg":Ljava/lang/String;
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3865
    .end local v5  # "arg":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 3869
    :cond_25
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3870
    :try_start_28
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_3f6

    .line 3871
    :try_start_2b
    const-string v5, "--unsnooze"

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 3872
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    .local v3, "i":I
    :goto_3b
    if-ltz v3, :cond_4b

    .line 3873
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkPolicy;

    invoke-virtual {v6}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 3872
    add-int/lit8 v3, v3, -0x1

    goto :goto_3b

    .line 3876
    .end local v3  # "i":I
    :cond_4b
    invoke-virtual {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 3878
    const-string v3, "Cleared snooze timestamps"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3879
    monitor-exit v4
    :try_end_54
    .catchall {:try_start_2b .. :try_end_54} :catchall_3f3

    :try_start_54
    monitor-exit v2
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_3f6

    return-void

    .line 3882
    :cond_56
    :try_start_56
    const-string v5, "System ready: "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3883
    const-string v5, "Restrict background: "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3884
    const-string v5, "Restrict power: "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3885
    const-string v5, "Device idle: "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3886
    const-string v5, "Metered ifaces: "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3888
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3889
    const-string v5, "Network policies:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3890
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3891
    move v5, v3

    .local v5, "i":I
    :goto_98
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_b2

    .line 3892
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkPolicy;

    invoke-virtual {v6}, Landroid/net/NetworkPolicy;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3891
    add-int/lit8 v5, v5, 0x1

    goto :goto_98

    .line 3894
    .end local v5  # "i":I
    :cond_b2
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3896
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3897
    const-string v5, "Subscription plans:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3898
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3899
    move v5, v3

    .restart local v5  # "i":I
    :goto_c1
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_10c

    .line 3900
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 3901
    .local v6, "subId":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Subscriber ID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3902
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3903
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/telephony/SubscriptionPlan;

    .line 3904
    .local v7, "plans":[Landroid/telephony/SubscriptionPlan;
    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_105

    .line 3905
    array-length v8, v7

    move v9, v3

    :goto_fb
    if-ge v9, v8, :cond_105

    aget-object v10, v7, v9

    .line 3906
    .local v10, "plan":Landroid/telephony/SubscriptionPlan;
    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3905
    .end local v10  # "plan":Landroid/telephony/SubscriptionPlan;
    add-int/lit8 v9, v9, 0x1

    goto :goto_fb

    .line 3909
    :cond_105
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3899
    nop

    .end local v6  # "subId":I
    .end local v7  # "plans":[Landroid/telephony/SubscriptionPlan;
    add-int/lit8 v5, v5, 0x1

    goto :goto_c1

    .line 3911
    .end local v5  # "i":I
    :cond_10c
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3913
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3914
    const-string v5, "Active subscriptions:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3915
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3916
    move v5, v3

    .restart local v5  # "i":I
    :goto_11b
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_14f

    .line 3917
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 3918
    .restart local v6  # "subId":I
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3920
    .local v7, "subscriberId":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3916
    .end local v6  # "subId":I
    .end local v7  # "subscriberId":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_11b

    .line 3922
    .end local v5  # "i":I
    :cond_14f
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3924
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3925
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Merged subscriptions: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:[Ljava/lang/String;

    .line 3926
    invoke-static {v6}, Landroid/net/NetworkIdentity;->scrubSubscriberId([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3925
    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3928
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3929
    const-string v5, "Policy for UIDs:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3930
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3931
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    .line 3932
    .local v5, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_185
    if-ge v6, v5, :cond_1ad

    .line 3933
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 3934
    .local v7, "uid":I
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    .line 3935
    .local v8, "policy":I
    const-string v9, "UID="

    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3936
    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3937
    const-string v9, " policy="

    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3938
    invoke-static {v8}, Landroid/net/NetworkPolicyManager;->uidPoliciesToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3939
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3932
    .end local v7  # "uid":I
    .end local v8  # "policy":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_185

    .line 3941
    .end local v6  # "i":I
    :cond_1ad
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3943
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    .line 3944
    if-lez v5, :cond_1e9

    .line 3945
    const-string v6, "Power save whitelist (except idle) app ids:"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3946
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3947
    const/4 v6, 0x0

    .restart local v6  # "i":I
    :goto_1c2
    if-ge v6, v5, :cond_1e6

    .line 3948
    const-string v7, "UID="

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3949
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3950
    const-string v7, ": "

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3951
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3952
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3947
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c2

    .line 3954
    .end local v6  # "i":I
    :cond_1e6
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3957
    :cond_1e9
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    .line 3958
    if-lez v5, :cond_222

    .line 3959
    const-string v6, "Power save whitelist app ids:"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3960
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3961
    const/4 v6, 0x0

    .restart local v6  # "i":I
    :goto_1fb
    if-ge v6, v5, :cond_21f

    .line 3962
    const-string v7, "UID="

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3963
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3964
    const-string v7, ": "

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3965
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3966
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3961
    add-int/lit8 v6, v6, 0x1

    goto :goto_1fb

    .line 3968
    .end local v6  # "i":I
    :cond_21f
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3971
    :cond_222
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    .line 3972
    if-lez v5, :cond_25b

    .line 3973
    const-string v6, "App idle whitelist app ids:"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3974
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3975
    const/4 v6, 0x0

    .restart local v6  # "i":I
    :goto_234
    if-ge v6, v5, :cond_258

    .line 3976
    const-string v7, "UID="

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3977
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3978
    const-string v7, ": "

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3979
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3980
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3975
    add-int/lit8 v6, v6, 0x1

    goto :goto_234

    .line 3982
    .end local v6  # "i":I
    :cond_258
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3985
    :cond_25b
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    .line 3986
    if-lez v5, :cond_286

    .line 3987
    const-string v6, "Default restrict background whitelist uids:"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3988
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3989
    const/4 v6, 0x0

    .restart local v6  # "i":I
    :goto_26d
    if-ge v6, v5, :cond_283

    .line 3990
    const-string v7, "UID="

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3991
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3992
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3989
    add-int/lit8 v6, v6, 0x1

    goto :goto_26d

    .line 3994
    .end local v6  # "i":I
    :cond_283
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3997
    :cond_286
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    .line 3998
    if-lez v5, :cond_2b1

    .line 3999
    const-string v6, "Default restrict background whitelist uids revoked by users:"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4000
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4001
    const/4 v6, 0x0

    .restart local v6  # "i":I
    :goto_298
    if-ge v6, v5, :cond_2ae

    .line 4002
    const-string v7, "UID="

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4003
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 4004
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4001
    add-int/lit8 v6, v6, 0x1

    goto :goto_298

    .line 4006
    .end local v6  # "i":I
    :cond_2ae
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4009
    :cond_2b1
    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 4010
    .local v6, "knownUids":Landroid/util/SparseBooleanArray;
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-static {v7, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    .line 4011
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-static {v7, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    .line 4013
    const-string v7, "Status for all known UIDs:"

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4014
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4015
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    move v5, v7

    .line 4016
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2ce
    if-ge v7, v5, :cond_318

    .line 4017
    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    .line 4018
    .local v8, "uid":I
    const-string v9, "UID="

    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4019
    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 4021
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v10, 0x14

    invoke-virtual {v9, v8, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    .line 4022
    .local v9, "state":I
    const-string v10, " state="

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4023
    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 4024
    const/4 v10, 0x2

    if-gt v9, v10, :cond_2f5

    .line 4025
    const-string v10, " (fg)"

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_300

    .line 4027
    :cond_2f5
    const/4 v10, 0x6

    if-gt v9, v10, :cond_2fb

    .line 4028
    const-string v10, " (fg svc)"

    goto :goto_2fd

    :cond_2fb
    const-string v10, " (bg)"

    .line 4027
    :goto_2fd
    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4031
    :goto_300
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v8, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    .line 4032
    .local v10, "uidRules":I
    const-string v11, " rules="

    invoke-virtual {v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4033
    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4034
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4016
    .end local v8  # "uid":I
    .end local v9  # "state":I
    .end local v10  # "uidRules":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_2ce

    .line 4036
    .end local v7  # "i":I
    :cond_318
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4038
    const-string v7, "Status for just UIDs with rules:"

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4039
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4040
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    move v5, v7

    .line 4041
    const/4 v7, 0x0

    .restart local v7  # "i":I
    :goto_32b
    if-ge v7, v5, :cond_353

    .line 4042
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 4043
    .restart local v8  # "uid":I
    const-string v9, "UID="

    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4044
    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 4045
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v8, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    .line 4046
    .local v9, "uidRules":I
    const-string v10, " rules="

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4047
    invoke-static {v9}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4048
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4041
    .end local v8  # "uid":I
    .end local v9  # "uidRules":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_32b

    .line 4050
    .end local v7  # "i":I
    :cond_353
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4053
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFlyme:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    move v5, v7

    .line 4054
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Status for just UIDs with Flyme restriction rules,size:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4055
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4056
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesLockFlyme:Ljava/lang/Object;

    monitor-enter v7
    :try_end_377
    .catchall {:try_start_56 .. :try_end_377} :catchall_3f3

    .line 4057
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_378
    if-ge v8, v5, :cond_39c

    .line 4058
    :try_start_37a
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFlyme:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    .line 4059
    .local v9, "uid":I
    const-string v10, "UID="

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4060
    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 4061
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFlyme:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v9, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    .line 4062
    .restart local v10  # "uidRules":I
    const-string v11, " background_restriction="

    invoke-virtual {v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4063
    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 4064
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4057
    .end local v9  # "uid":I
    .end local v10  # "uidRules":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_378

    .line 4066
    .end local v8  # "i":I
    :cond_39c
    monitor-exit v7
    :try_end_39d
    .catchall {:try_start_37a .. :try_end_39d} :catchall_3f0

    .line 4067
    :try_start_39d
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4070
    const-string v3, "Admin restricted uids for metered data:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4071
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4072
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 4073
    .end local v5  # "size":I
    .local v3, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3af
    if-ge v5, v3, :cond_3dd

    .line 4074
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "u"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4075
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 4073
    add-int/lit8 v5, v5, 0x1

    goto :goto_3af

    .line 4077
    .end local v5  # "i":I
    :cond_3dd
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4079
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4080
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v5, v0}, Lcom/android/internal/util/StatLogger;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 4082
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v5, v0}, Lcom/android/server/net/NetworkPolicyLogger;->dumpLogs(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 4083
    .end local v3  # "size":I
    .end local v6  # "knownUids":Landroid/util/SparseBooleanArray;
    monitor-exit v4
    :try_end_3ee
    .catchall {:try_start_39d .. :try_end_3ee} :catchall_3f3

    .line 4084
    :try_start_3ee
    monitor-exit v2
    :try_end_3ef
    .catchall {:try_start_3ee .. :try_end_3ef} :catchall_3f6

    .line 4085
    return-void

    .line 4066
    .local v5, "size":I
    .restart local v6  # "knownUids":Landroid/util/SparseBooleanArray;
    :catchall_3f0
    move-exception v3

    :try_start_3f1
    monitor-exit v7
    :try_end_3f2
    .catchall {:try_start_3f1 .. :try_end_3f2} :catchall_3f0

    .end local v0  # "fout":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v1  # "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1  # "fd":Ljava/io/FileDescriptor;
    .end local p2  # "writer":Ljava/io/PrintWriter;
    .end local p3  # "args":[Ljava/lang/String;
    :try_start_3f2
    throw v3

    .line 4083
    .end local v5  # "size":I
    .end local v6  # "knownUids":Landroid/util/SparseBooleanArray;
    .restart local v0  # "fout":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v1  # "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1  # "fd":Ljava/io/FileDescriptor;
    .restart local p2  # "writer":Ljava/io/PrintWriter;
    .restart local p3  # "args":[Ljava/lang/String;
    :catchall_3f3
    move-exception v3

    monitor-exit v4
    :try_end_3f5
    .catchall {:try_start_3f2 .. :try_end_3f5} :catchall_3f3

    .end local v0  # "fout":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v1  # "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1  # "fd":Ljava/io/FileDescriptor;
    .end local p2  # "writer":Ljava/io/PrintWriter;
    .end local p3  # "args":[Ljava/lang/String;
    :try_start_3f5
    throw v3

    .line 4084
    .restart local v0  # "fout":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v1  # "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1  # "fd":Ljava/io/FileDescriptor;
    .restart local p2  # "writer":Ljava/io/PrintWriter;
    .restart local p3  # "args":[Ljava/lang/String;
    :catchall_3f6
    move-exception v3

    monitor-exit v2
    :try_end_3f8
    .catchall {:try_start_3f5 .. :try_end_3f8} :catchall_3f6

    throw v3
.end method

.method public factoryReset(Ljava/lang/String;)V
    .registers 10
    .param p1, "subscriber"  # Ljava/lang/String;

    .line 5663
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5665
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "no_network_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 5666
    return-void

    .line 5670
    :cond_15
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 5671
    .local v0, "policies":[Landroid/net/NetworkPolicy;
    invoke-static {p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 5672
    .local v1, "template":Landroid/net/NetworkTemplate;
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_26
    if-ge v4, v2, :cond_3e

    aget-object v5, v0, v4

    .line 5673
    .local v5, "policy":Landroid/net/NetworkPolicy;
    iget-object v6, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v6, v1}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 5674
    const-wide/16 v6, -0x1

    iput-wide v6, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 5675
    iput-boolean v3, v5, Landroid/net/NetworkPolicy;->inferred:Z

    .line 5676
    invoke-virtual {v5}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 5672
    .end local v5  # "policy":Landroid/net/NetworkPolicy;
    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 5679
    :cond_3e
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 5682
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    .line 5684
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v4, "no_control_apps"

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 5686
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidsWithPolicy(I)[I

    move-result-object v2

    array-length v4, v2

    move v5, v3

    :goto_56
    if-ge v5, v4, :cond_60

    aget v6, v2, v5

    .line 5687
    .local v6, "uid":I
    invoke-virtual {p0, v6, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicy(II)V

    .line 5686
    .end local v6  # "uid":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_56

    .line 5690
    :cond_60
    return-void
.end method

.method getAppIdleWhitelist()[I
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4567
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4569
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4570
    :try_start_c
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 4571
    .local v1, "len":I
    new-array v2, v1, [I

    .line 4572
    .local v2, "uids":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v1, :cond_22

    .line 4573
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    aput v4, v2, v3

    .line 4572
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 4575
    .end local v3  # "i":I
    :cond_22
    monitor-exit v0

    return-object v2

    .line 4576
    .end local v1  # "len":I
    .end local v2  # "uids":[I
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_24

    throw v1
.end method

.method getCycleDayFromCarrierConfig(Landroid/os/PersistableBundle;I)I
    .registers 7
    .param p1, "config"  # Landroid/os/PersistableBundle;
    .param p2, "fallbackCycleDay"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1765
    if-nez p1, :cond_3

    .line 1766
    return p2

    .line 1768
    :cond_3
    nop

    .line 1769
    const-string/jumbo v0, "monthly_data_cycle_day_int"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1770
    .local v0, "cycleDay":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 1771
    return p2

    .line 1774
    :cond_f
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1775
    .local v1, "cal":Ljava/util/Calendar;
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v3

    if-lt v0, v3, :cond_22

    .line 1776
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v2

    if-le v0, v2, :cond_21

    goto :goto_22

    .line 1781
    :cond_21
    return v0

    .line 1777
    :cond_22
    :goto_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid date in CarrierConfigManager.KEY_MONTHLY_DATA_CYCLE_DAY_INT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetworkPolicy"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    return p2
.end method

.method getLimitBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J
    .registers 9
    .param p1, "config"  # Landroid/os/PersistableBundle;
    .param p2, "fallbackLimitBytes"  # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1830
    if-nez p1, :cond_3

    .line 1831
    return-wide p2

    .line 1833
    :cond_3
    nop

    .line 1834
    const-string v0, "data_limit_threshold_bytes_long"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1836
    .local v0, "limitBytes":J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    const-wide/16 v3, -0x1

    if-nez v2, :cond_13

    .line 1837
    return-wide v3

    .line 1838
    :cond_13
    cmp-long v2, v0, v3

    if-nez v2, :cond_1c

    .line 1839
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultLimitBytes()J

    move-result-wide v2

    return-wide v2

    .line 1840
    :cond_1c
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_39

    .line 1841
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid value in CarrierConfigManager.KEY_DATA_LIMIT_THRESHOLD_BYTES_LONG; expected a non-negative value but got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetworkPolicy"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    return-wide p2

    .line 1846
    :cond_39
    return-wide v0
.end method

.method public getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;
    .registers 7
    .param p1, "callingPackage"  # Ljava/lang/String;

    .line 3298
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3300
    :try_start_9
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_12} :catch_13

    .line 3310
    goto :goto_2f

    .line 3303
    :catch_13
    move-exception v0

    .line 3304
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3306
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x33

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v2, v3, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2f

    .line 3308
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/net/NetworkPolicy;

    return-object v1

    .line 3312
    .end local v0  # "e":Ljava/lang/SecurityException;
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3313
    :try_start_32
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 3314
    .local v1, "size":I
    new-array v2, v1, [Landroid/net/NetworkPolicy;

    .line 3315
    .local v2, "policies":[Landroid/net/NetworkPolicy;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3b
    if-ge v3, v1, :cond_4a

    .line 3316
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicy;

    aput-object v4, v2, v3

    .line 3315
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 3318
    .end local v3  # "i":I
    :cond_4a
    monitor-exit v0

    return-object v2

    .line 3319
    .end local v1  # "size":I
    .end local v2  # "policies":[Landroid/net/NetworkPolicy;
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_32 .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method public getNetworkQuotaInfo(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    .registers 4
    .param p1, "state"  # Landroid/net/NetworkState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Shame on UID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for calling the hidden API getNetworkQuotaInfo(). Shame!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3553
    new-instance v0, Landroid/net/NetworkQuotaInfo;

    invoke-direct {v0}, Landroid/net/NetworkQuotaInfo;-><init>()V

    return-object v0
.end method

.method public getRestrictBackground()Z
    .registers 4

    .line 3496
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3498
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3499
    :try_start_c
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    monitor-exit v0

    return v1

    .line 3500
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_10

    throw v1
.end method

.method public getRestrictBackgroundByCaller()I
    .registers 9

    .line 3469
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3470
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3472
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3474
    :try_start_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_3c

    .line 3477
    .local v2, "token":J
    :try_start_14
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidPolicy(I)I

    move-result v4
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_37

    .line 3479
    .local v4, "policy":I
    :try_start_18
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3480
    nop

    .line 3481
    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ne v4, v6, :cond_22

    .line 3483
    monitor-exit v1

    return v5

    .line 3485
    :cond_22
    iget-boolean v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-nez v7, :cond_28

    .line 3486
    monitor-exit v1

    return v6

    .line 3488
    :cond_28
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_34

    .line 3489
    const/4 v5, 0x2

    goto :goto_35

    .line 3490
    :cond_34
    nop

    :goto_35
    monitor-exit v1

    .line 3488
    return v5

    .line 3479
    .end local v4  # "policy":I
    :catchall_37
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0  # "uid":I
    .end local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    throw v4

    .line 3491
    .end local v2  # "token":J
    .restart local v0  # "uid":I
    .restart local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    :catchall_3c
    move-exception v2

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_18 .. :try_end_3e} :catchall_3c

    throw v2
.end method

.method public getSubscriptionPlans(ILjava/lang/String;)[Landroid/telephony/SubscriptionPlan;
    .registers 19
    .param p1, "subId"  # I
    .param p2, "callingPackage"  # Ljava/lang/String;

    .line 3615
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceSubscriptionPlanAccess(IILjava/lang/String;)V

    .line 3617
    const-string v0, "fw.fake_plan"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3618
    .local v4, "fake":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3de

    .line 3619
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3620
    .local v0, "plans":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionPlan;>;"
    const-string/jumbo v5, "month_hard"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide v6, 0x7fffffffffffffffL

    const-wide/32 v8, 0x40000000

    const-wide v10, 0x140000000L

    if-eqz v5, :cond_d3

    .line 3621
    nop

    .line 3622
    const-string v5, "2007-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3623
    const-string v12, "G-Mobile"

    invoke-virtual {v5, v12}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3624
    const/4 v12, 0x1

    invoke-virtual {v5, v10, v11, v12}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3627
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v13

    const-wide/16 v14, 0x24

    invoke-virtual {v13, v14, v15}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v13

    invoke-virtual {v13}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v13

    invoke-virtual {v13}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v10

    .line 3626
    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3628
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3621
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3629
    nop

    .line 3630
    const-string v5, "2017-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3631
    const-string v8, "G-Mobile Happy"

    invoke-virtual {v5, v8}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3632
    invoke-virtual {v5, v6, v7, v12}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3635
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    .line 3634
    const-wide v8, 0x140000000L

    invoke-virtual {v5, v8, v9, v6, v7}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3636
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3629
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3637
    nop

    .line 3638
    const-string v5, "2017-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3639
    const-string v6, "G-Mobile, Charged after limit"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3640
    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v12}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3643
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v14, v15}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3642
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3644
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3637
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3d1

    .line 3645
    :cond_d3
    const-string/jumbo v5, "month_soft"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v10, 0x0

    const-wide/16 v11, 0x1

    const/4 v13, 0x2

    if-eqz v5, :cond_187

    .line 3646
    nop

    .line 3647
    const-string v5, "2007-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3648
    const-string v6, "G-Mobile is the carriers name who this plan belongs to"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3649
    const-string v6, "Crazy unlimited bandwidth plan with incredibly long title that should be cut off to prevent UI from looking terrible"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3651
    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v13}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3654
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    .line 3653
    invoke-virtual {v5, v8, v9, v6, v7}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3655
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3646
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3656
    nop

    .line 3657
    const-string v5, "2017-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3658
    const-string v6, "G-Mobile, Throttled after limit"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3659
    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v13}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3662
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3661
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3663
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3656
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3664
    nop

    .line 3665
    const-string v5, "2017-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3666
    const-string v6, "G-Mobile, No data connection after limit"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3667
    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3670
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3669
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3671
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3664
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3d1

    .line 3673
    :cond_187
    const-string/jumbo v5, "month_over"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_236

    .line 3674
    nop

    .line 3675
    const-string v5, "2007-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3676
    const-string v6, "G-Mobile is the carriers name who this plan belongs to"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3677
    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v13}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-wide v6, 0x180000000L

    .line 3680
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3679
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3681
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3674
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3682
    nop

    .line 3683
    const-string v5, "2017-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3684
    const-string v6, "G-Mobile, Throttled after limit"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3685
    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v13}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3688
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3687
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3689
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3682
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3690
    nop

    .line 3691
    const-string v5, "2017-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3692
    const-string v6, "G-Mobile, No data connection after limit"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3693
    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3696
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3695
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3697
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3690
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3d1

    .line 3699
    :cond_236
    const-string/jumbo v5, "month_none"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_259

    .line 3700
    nop

    .line 3701
    const-string v5, "2007-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3702
    const-string v6, "G-Mobile"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3703
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3700
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3d1

    .line 3704
    :cond_259
    const-string/jumbo v5, "prepaid"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide/32 v6, 0x20000000

    const-wide/16 v11, 0x3

    const-wide/16 v8, 0xa

    const-wide/16 v13, 0x14

    if-eqz v5, :cond_2aa

    .line 3705
    nop

    .line 3706
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    .line 3707
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    .line 3706
    invoke-static {v5, v8}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3708
    const-string v8, "G-Mobile"

    invoke-virtual {v5, v8}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3709
    invoke-virtual {v5, v6, v7, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3712
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    .line 3711
    const-wide/32 v8, 0x6400000

    invoke-virtual {v5, v8, v9, v6, v7}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3713
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3705
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3d1

    .line 3714
    :cond_2aa
    const-string/jumbo v5, "prepaid_crazy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_385

    .line 3715
    nop

    .line 3716
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    .line 3717
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v15

    invoke-virtual {v15, v8, v9}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v15

    .line 3716
    invoke-static {v5, v15}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3718
    const-string v15, "G-Mobile Anytime"

    invoke-virtual {v5, v15}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3719
    invoke-virtual {v5, v6, v7, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3722
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    .line 3721
    const-wide/32 v10, 0x6400000

    invoke-virtual {v5, v10, v11, v6, v7}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3723
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3715
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3724
    nop

    .line 3725
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    .line 3726
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v13, v14}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    .line 3725
    invoke-static {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3727
    const-string v6, "G-Mobile Nickel Nights"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3728
    const-string v6, "5¢/GB between 1-5AM"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3729
    const/4 v6, 0x2

    const-wide v10, 0x140000000L

    invoke-virtual {v5, v10, v11, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-wide/32 v6, 0xf00000

    .line 3732
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v10

    const-wide/16 v11, 0x1e

    invoke-virtual {v10, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v10

    .line 3731
    invoke-virtual {v5, v6, v7, v10, v11}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3733
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3724
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3734
    nop

    .line 3735
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    .line 3736
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v13, v14}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    .line 3735
    invoke-static {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3737
    const-string v6, "G-Mobile Bonus 3G"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3738
    const-string v6, "Unlimited 3G data"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3739
    const-wide/32 v6, 0x40000000

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v7, v8}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-wide/32 v6, 0x12c00000

    .line 3742
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    const-wide/16 v9, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3741
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3743
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3734
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d1

    .line 3744
    :cond_385
    const-string/jumbo v5, "unlimited"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d1

    .line 3745
    nop

    .line 3746
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    .line 3747
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    .line 3746
    invoke-static {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3748
    const-string v6, "G-Mobile Awesome"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3749
    const-wide v6, 0x7fffffffffffffffL

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v7, v8}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-wide/32 v6, 0x3200000

    .line 3752
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3751
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3753
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3745
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3755
    :cond_3d1
    :goto_3d1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/telephony/SubscriptionPlan;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/telephony/SubscriptionPlan;

    return-object v5

    .line 3758
    .end local v0  # "plans":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionPlan;>;"
    :cond_3de
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3762
    :try_start_3e1
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3763
    .local v0, "ownerPackage":Ljava/lang/String;
    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_419

    .line 3764
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v6

    const/16 v7, 0x3e8

    if-ne v6, v7, :cond_3f8

    goto :goto_419

    .line 3767
    :cond_3f8
    const-string v6, "NetworkPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not returning plans because caller "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " doesn\'t match owner "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3769
    const/4 v6, 0x0

    monitor-exit v5

    return-object v6

    .line 3765
    :cond_419
    :goto_419
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/telephony/SubscriptionPlan;

    monitor-exit v5

    return-object v6

    .line 3771
    .end local v0  # "ownerPackage":Ljava/lang/String;
    :catchall_423
    move-exception v0

    monitor-exit v5
    :try_end_425
    .catchall {:try_start_3e1 .. :try_end_425} :catchall_423

    throw v0
.end method

.method public getSubscriptionPlansOwner(I)Ljava/lang/String;
    .registers 4
    .param p1, "subId"  # I

    .line 3820
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_18

    .line 3824
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3825
    :try_start_b
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 3826
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_15

    throw v1

    .line 3821
    :cond_18
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0
.end method

.method public getUidPolicy(I)I
    .registers 5
    .param p1, "uid"  # I

    .line 3186
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3188
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3189
    :try_start_c
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    monitor-exit v0

    return v1

    .line 3190
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_15

    throw v1
.end method

.method public getUidPolicyForSecurityPay(I)Z
    .registers 5
    .param p1, "uid"  # I

    .line 2991
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2992
    :try_start_3
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSecurityPayPolicy:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2993
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public getUidPolicyForVpn(I)Z
    .registers 5
    .param p1, "uid"  # I

    .line 2842
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2843
    :try_start_3
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mVpnPolicy:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2844
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public getUidsWithPolicy(I)[I
    .registers 8
    .param p1, "policy"  # I

    .line 3195
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3197
    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 3198
    .local v1, "uids":[I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3199
    nop

    .local v0, "i":I
    :goto_10
    :try_start_10
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_34

    .line 3200
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 3201
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 3202
    .local v4, "uidPolicy":I
    if-nez p1, :cond_28

    if-eqz v4, :cond_2c

    :cond_28
    and-int v5, v4, p1

    if-eqz v5, :cond_31

    .line 3204
    :cond_2c
    invoke-static {v1, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    move-object v1, v5

    .line 3199
    .end local v3  # "uid":I
    .end local v4  # "uidPolicy":I
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 3207
    .end local v0  # "i":I
    :cond_34
    monitor-exit v2

    .line 3208
    return-object v1

    .line 3207
    :catchall_36
    move-exception v0

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_10 .. :try_end_38} :catchall_36

    throw v0
.end method

.method public getVpnUidsWithPolicy()[I
    .registers 5

    .line 2848
    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 2849
    .local v0, "uids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mVpnPolicy:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 2850
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mVpnPolicy:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 2851
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mVpnPolicy:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    .line 2852
    .local v3, "uidPolicy":Z
    if-nez v3, :cond_1e

    .line 2853
    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0

    .line 2849
    .end local v2  # "uid":I
    .end local v3  # "uidPolicy":Z
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2856
    .end local v1  # "i":I
    :cond_21
    return-object v0
.end method

.method getWarningBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J
    .registers 9
    .param p1, "config"  # Landroid/os/PersistableBundle;
    .param p2, "fallbackWarningBytes"  # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1797
    if-nez p1, :cond_3

    .line 1798
    return-wide p2

    .line 1800
    :cond_3
    nop

    .line 1801
    const-string v0, "data_warning_threshold_bytes_long"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1803
    .local v0, "warningBytes":J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    const-wide/16 v3, -0x1

    if-nez v2, :cond_13

    .line 1804
    return-wide v3

    .line 1805
    :cond_13
    cmp-long v2, v0, v3

    if-nez v2, :cond_1c

    .line 1806
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultWarningBytes()J

    move-result-wide v2

    return-wide v2

    .line 1807
    :cond_1c
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_39

    .line 1808
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid value in CarrierConfigManager.KEY_DATA_WARNING_THRESHOLD_BYTES_LONG; expected a non-negative value but got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetworkPolicy"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    return-wide p2

    .line 1814
    :cond_39
    return-wide v0
.end method

.method handleNetworkPoliciesUpdateAL(Z)V
    .registers 2
    .param p1, "shouldNormalizePolicies"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock",
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 1894
    if-eqz p1, :cond_5

    .line 1895
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL()V

    .line 1897
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 1898
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 1899
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 1900
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 1901
    return-void
.end method

.method handleUidChanged(IIJ)V
    .registers 10
    .param p1, "uid"  # I
    .param p2, "procState"  # I
    .param p3, "procStateSeq"  # J

    .line 5309
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "onUidStateChanged"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5312
    :try_start_9
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_2c

    .line 5315
    :try_start_c
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/net/NetworkPolicyLogger;->uidStateChanged(IIJ)V

    .line 5317
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateUidStateUL(II)Z

    move-result v3

    .line 5319
    .local v3, "updated":Z
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v4, p1, p3, p4}, Landroid/app/ActivityManagerInternal;->notifyNetworkPolicyRulesUpdated(IJ)V

    .line 5320
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_29

    .line 5323
    if-eqz v3, :cond_24

    .line 5324
    :try_start_1d
    invoke-direct {p0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidStateForeground(I)Z

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkStats(IZ)V
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_2c

    .line 5327
    .end local v3  # "updated":Z
    :cond_24
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5328
    nop

    .line 5329
    return-void

    .line 5320
    :catchall_29
    move-exception v3

    :try_start_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    .end local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1  # "uid":I
    .end local p2  # "procState":I
    .end local p3  # "procStateSeq":J
    :try_start_2b
    throw v3
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2c

    .line 5327
    .restart local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1  # "uid":I
    .restart local p2  # "procState":I
    .restart local p3  # "procStateSeq":J
    :catchall_2c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method handleUidGone(I)V
    .registers 6
    .param p1, "uid"  # I

    .line 5332
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "onUidGone"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5335
    :try_start_9
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_1f

    .line 5336
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeUidStateUL(I)Z

    move-result v3

    .line 5337
    .local v3, "updated":Z
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_1c

    .line 5340
    if-eqz v3, :cond_17

    .line 5341
    const/4 v2, 0x0

    :try_start_14
    invoke-direct {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkStats(IZ)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_1f

    .line 5344
    .end local v3  # "updated":Z
    :cond_17
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5345
    nop

    .line 5346
    return-void

    .line 5337
    :catchall_1c
    move-exception v3

    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    .end local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1  # "uid":I
    :try_start_1e
    throw v3
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    .line 5344
    .restart local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1  # "uid":I
    :catchall_1f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public handleVpnConnectEvent()V
    .registers 14

    .line 2885
    const/4 v0, 0x0

    .line 2886
    .local v0, "info":Lcom/android/internal/net/LegacyVpnInfo;
    const-string v1, "NetworkPolicy"

    const-string v2, "handleVpnConnectEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2888
    :try_start_8
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/net/IConnectivityManager;->getLegacyVpnInfoForSmartVpn(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v2
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_14

    move-object v0, v2

    .line 2891
    goto :goto_18

    .line 2889
    :catch_14
    move-exception v2

    .line 2890
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2892
    .end local v2  # "e":Landroid/os/RemoteException;
    :goto_18
    const/4 v2, 0x0

    .line 2893
    .local v2, "mNetwork":Landroid/net/Network;
    const/4 v3, 0x0

    .line 2894
    .local v3, "netId":I
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const-string/jumbo v6, "settings_smart_vpn_enabled"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2d

    move v4, v6

    goto :goto_2e

    :cond_2d
    move v4, v5

    .line 2895
    .local v4, "mSmartVpnEnabled":Z
    :goto_2e
    if-eqz v0, :cond_113

    iget v7, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_113

    if-eqz v4, :cond_113

    .line 2896
    const-string v7, "Legacy Vpn Connected!"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2897
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v8, Landroid/net/wifi/WifiManager;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 2898
    .local v7, "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    .line 2899
    .local v8, "mWifiInfo":Landroid/net/wifi/WifiInfo;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mWifiInfo = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2900
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v2

    .line 2901
    if-eqz v2, :cond_ae

    .line 2903
    const-string/jumbo v9, "wifiConnected"

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2904
    if-eqz v8, :cond_86

    .line 2905
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mWifiInfo.getNetworkId() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2907
    :cond_86
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v2

    .line 2908
    if-nez v2, :cond_8d

    goto :goto_8f

    :cond_8d
    iget v5, v2, Landroid/net/Network;->netId:I

    :goto_8f
    move v3, v5

    .line 2909
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_91
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mVpnPolicy:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->size()I

    move-result v9

    if-ge v5, v9, :cond_ad

    .line 2910
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mVpnPolicy:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    .line 2911
    .local v9, "uid":I
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mVpnPolicy:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v5}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v10

    .line 2912
    .local v10, "policy":Z
    if-nez v10, :cond_aa

    .line 2913
    invoke-virtual {p0, v9, v3, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyForVpn(IIZ)Z

    .line 2909
    .end local v9  # "uid":I
    .end local v10  # "policy":Z
    :cond_aa
    add-int/lit8 v5, v5, 0x1

    goto :goto_91

    .end local v5  # "i":I
    :cond_ad
    goto :goto_101

    .line 2917
    :cond_ae
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 2918
    .local v9, "mTeleManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v10

    .line 2919
    .local v10, "dateState":I
    const/4 v11, 0x2

    if-ne v10, v11, :cond_fb

    .line 2920
    const-string/jumbo v11, "mobile network connected"

    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2922
    :try_start_c6
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v11, v5}, Landroid/net/IConnectivityManager;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v5
    :try_end_cc
    .catch Landroid/os/RemoteException; {:try_start_c6 .. :try_end_cc} :catch_ce

    move-object v2, v5

    .line 2925
    goto :goto_d2

    .line 2923
    :catch_ce
    move-exception v5

    .line 2924
    .local v5, "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2926
    .end local v5  # "e":Landroid/os/RemoteException;
    :goto_d2
    if-eqz v2, :cond_f5

    .line 2927
    iget v5, v2, Landroid/net/Network;->netId:I

    move v3, v5

    .line 2928
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_d8
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mVpnPolicy:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v11

    if-ge v5, v11, :cond_f4

    .line 2929
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mVpnPolicy:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    .line 2930
    .local v11, "uid":I
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mVpnPolicy:Landroid/util/SparseBooleanArray;

    invoke-virtual {v12, v5}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v12

    .line 2931
    .local v12, "policy":Z
    if-nez v12, :cond_f1

    .line 2932
    invoke-virtual {p0, v11, v3, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyForVpn(IIZ)Z

    .line 2928
    .end local v11  # "uid":I
    .end local v12  # "policy":Z
    :cond_f1
    add-int/lit8 v5, v5, 0x1

    goto :goto_d8

    .end local v5  # "i":I
    :cond_f4
    goto :goto_101

    .line 2936
    :cond_f5
    const-string v5, "can\'t get mobile networkInfo,.abort bindApp to network request"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_101

    .line 2939
    :cond_fb
    const-string/jumbo v5, "mobile not connected,abortting"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2942
    .end local v9  # "mTeleManager":Landroid/telephony/TelephonyManager;
    .end local v10  # "dateState":I
    :goto_101
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getVpnUidsWithPolicy()[I

    move-result-object v5

    .line 2943
    .local v5, "uids":[I
    array-length v9, v5

    if-lez v9, :cond_112

    if-lez v3, :cond_112

    .line 2944
    const-string v9, "at least one app set vpn rules."

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2945
    invoke-virtual {p0, v6, v3, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyForVpn(IIZ)Z

    .line 2947
    .end local v5  # "uids":[I
    .end local v7  # "mWifiManager":Landroid/net/wifi/WifiManager;
    .end local v8  # "mWifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_112
    goto :goto_119

    .line 2948
    :cond_113
    const-string/jumbo v5, "not legacy vpn connect,ignore!!!"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2950
    :goto_119
    return-void
.end method

.method public handleVpnDisconnectEvent()V
    .registers 9

    .line 2860
    const/4 v0, 0x0

    .line 2862
    .local v0, "info":Lcom/android/internal/net/LegacyVpnInfo;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/net/IConnectivityManager;->getLegacyVpnInfoForSmartVpn(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d

    move-object v0, v1

    .line 2865
    goto :goto_11

    .line 2863
    :catch_d
    move-exception v1

    .line 2864
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2866
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_11
    const-string v1, "NetworkPolicy"

    if-eqz v0, :cond_34

    .line 2867
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "legacy vpn info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  info.state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2869
    :cond_34
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v4, "settings_smart_vpn_enabled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_46

    goto :goto_47

    :cond_46
    move v4, v3

    :goto_47
    move v2, v4

    .line 2870
    .local v2, "mSmartVpnEnabled":Z
    const-string/jumbo v4, "legacy vpn disconnected,need to clear vpn uid policy"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2871
    if-eqz v2, :cond_76

    .line 2872
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_51
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mVpnPolicy:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_73

    .line 2873
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mVpnPolicy:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    .line 2874
    .local v5, "uid":I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mVpnPolicy:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    .line 2875
    .local v6, "policy":Z
    if-nez v6, :cond_70

    .line 2876
    const-string/jumbo v7, "we should clean iptables rule when vpn disconnect"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    invoke-virtual {p0, v5, v3, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyForVpn(IIZ)Z

    .line 2872
    .end local v5  # "uid":I
    .end local v6  # "policy":Z
    :cond_70
    add-int/lit8 v4, v4, 0x1

    goto :goto_51

    .line 2880
    .end local v4  # "i":I
    :cond_73
    invoke-virtual {p0, v3, v3, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyForVpn(IIZ)Z

    .line 2882
    :cond_76
    return-void
.end method

.method isUidForeground(I)Z
    .registers 5
    .param p1, "uid"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4096
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4097
    :try_start_3
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v2, 0x14

    .line 4098
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 4097
    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidStateForeground(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 4099
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method isUidIdle(I)Z
    .registers 9
    .param p1, "uid"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4582
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4583
    :try_start_3
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 4585
    monitor-exit v0

    return v2

    .line 4587
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_33

    .line 4589
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 4590
    .local v0, "packages":[Ljava/lang/String;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4592
    .local v1, "userId":I
    if-eqz v0, :cond_31

    .line 4593
    array-length v3, v0

    move v4, v2

    :goto_21
    if-ge v4, v3, :cond_31

    aget-object v5, v0, v4

    .line 4594
    .local v5, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v6, v5, p1, v1}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdle(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_2e

    .line 4595
    return v2

    .line 4593
    .end local v5  # "packageName":Ljava/lang/String;
    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 4599
    :cond_31
    const/4 v2, 0x1

    return v2

    .line 4587
    .end local v0  # "packages":[Ljava/lang/String;
    .end local v1  # "userId":I
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public isUidNetworkingBlocked(IZ)Z
    .registers 10
    .param p1, "uid"  # I
    .param p2, "isNetworkMetered"  # Z

    .line 5694
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v0

    .line 5696
    .local v0, "startTime":J
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5699
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5700
    :try_start_12
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 5701
    .local v3, "uidRules":I
    iget-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 5702
    .local v4, "isBackgroundRestricted":Z
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_29

    .line 5703
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-static {p1, v3, p2, v4, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidNetworkingBlockedInternal(IIZZLcom/android/server/net/NetworkPolicyLogger;)Z

    move-result v2

    .line 5706
    .local v2, "ret":Z
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v0, v1}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 5708
    return v2

    .line 5702
    .end local v2  # "ret":Z
    .end local v3  # "uidRules":I
    .end local v4  # "isBackgroundRestricted":Z
    :catchall_29
    move-exception v3

    :try_start_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v3
.end method

.method public synthetic lambda$networkScoreAndNetworkManagementServiceReady$0$NetworkPolicyManagerService(Ljava/util/concurrent/CountDownLatch;)V
    .registers 2
    .param p1, "initCompleteSignal"  # Ljava/util/concurrent/CountDownLatch;

    .line 978
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->initService(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public networkScoreAndNetworkManagementServiceReady()Ljava/util/concurrent/CountDownLatch;
    .registers 4

    .line 976
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManagerReady:Z

    .line 977
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v0, v1

    .line 978
    .local v0, "initCompleteSignal":Ljava/util/concurrent/CountDownLatch;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/net/-$$Lambda$NetworkPolicyManagerService$HDTUqowtgL-W_V0Kq6psXLWC9ws;

    invoke-direct {v2, p0, v0}, Lcom/android/server/net/-$$Lambda$NetworkPolicyManagerService$HDTUqowtgL-W_V0Kq6psXLWC9ws;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 979
    return-object v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"  # Ljava/io/FileDescriptor;
    .param p2, "out"  # Ljava/io/FileDescriptor;
    .param p3, "err"  # Ljava/io/FileDescriptor;
    .param p4, "args"  # [Ljava/lang/String;
    .param p5, "callback"  # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"  # Landroid/os/ResultReceiver;

    .line 4090
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

    .line 4092
    return-void
.end method

.method public onTetheringChanged(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "iface"  # Ljava/lang/String;
    .param p2, "tethering"  # Z

    .line 3391
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3392
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v1, :cond_28

    if-eqz p2, :cond_28

    .line 3393
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tethering on ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "); disable Data Saver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3394
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    .line 3396
    :cond_28
    monitor-exit v0

    .line 3397
    return-void

    .line 3396
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method performSnooze(Landroid/net/NetworkTemplate;I)V
    .registers 11
    .param p1, "template"  # Landroid/net/NetworkTemplate;
    .param p2, "type"  # I

    .line 3360
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 3361
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3362
    :try_start_9
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_56

    .line 3364
    :try_start_c
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicy;

    .line 3365
    .local v4, "policy":Landroid/net/NetworkPolicy;
    if-eqz v4, :cond_3b

    .line 3369
    const/16 v5, 0x22

    if-eq p2, v5, :cond_31

    const/16 v5, 0x23

    if-eq p2, v5, :cond_2e

    const/16 v5, 0x2d

    if-ne p2, v5, :cond_25

    .line 3377
    iput-wide v0, v4, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    .line 3378
    goto :goto_34

    .line 3380
    :cond_25
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "unexpected type"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0  # "currentTime":J
    .end local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1  # "template":Landroid/net/NetworkTemplate;
    .end local p2  # "type":I
    throw v5

    .line 3374
    .restart local v0  # "currentTime":J
    .restart local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1  # "template":Landroid/net/NetworkTemplate;
    .restart local p2  # "type":I
    :cond_2e
    iput-wide v0, v4, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    .line 3375
    goto :goto_34

    .line 3371
    :cond_31
    iput-wide v0, v4, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 3372
    nop

    .line 3383
    :goto_34
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 3384
    .end local v4  # "policy":Landroid/net/NetworkPolicy;
    monitor-exit v3
    :try_end_39
    .catchall {:try_start_c .. :try_end_39} :catchall_53

    .line 3385
    :try_start_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_56

    .line 3386
    return-void

    .line 3366
    .restart local v4  # "policy":Landroid/net/NetworkPolicy;
    :cond_3b
    :try_start_3b
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unable to find policy for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0  # "currentTime":J
    .end local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1  # "template":Landroid/net/NetworkTemplate;
    .end local p2  # "type":I
    throw v5

    .line 3384
    .end local v4  # "policy":Landroid/net/NetworkPolicy;
    .restart local v0  # "currentTime":J
    .restart local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1  # "template":Landroid/net/NetworkTemplate;
    .restart local p2  # "type":I
    :catchall_53
    move-exception v4

    monitor-exit v3
    :try_end_55
    .catchall {:try_start_3b .. :try_end_55} :catchall_53

    .end local v0  # "currentTime":J
    .end local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1  # "template":Landroid/net/NetworkTemplate;
    .end local p2  # "type":I
    :try_start_55
    throw v4

    .line 3385
    .restart local v0  # "currentTime":J
    .restart local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1  # "template":Landroid/net/NetworkTemplate;
    .restart local p2  # "type":I
    :catchall_56
    move-exception v3

    monitor-exit v2
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_56

    throw v3
.end method

.method public registerListener(Landroid/net/INetworkPolicyListener;)V
    .registers 5
    .param p1, "listener"  # Landroid/net/INetworkPolicyListener;

    .line 3257
    nop

    .line 3259
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3257
    const/16 v1, 0x23

    invoke-static {v1, v0}, Lmeizu/security/TRPEngManager;->setAction(II)V

    .line 3262
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3263
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 3264
    return-void
.end method

.method public removeUidPolicy(II)V
    .registers 8
    .param p1, "uid"  # I
    .param p2, "policy"  # I

    .line 3083
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeUidPolicy: uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", policy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Calling PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3087
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", calling UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3088
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3086
    const-string v1, "NetworkPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3091
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 3096
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 3097
    .local v0, "uidPolicy":I
    and-int/lit16 v1, v0, 0x200

    const/4 v2, 0x1

    if-nez v1, :cond_55

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_58

    .line 3100
    :cond_55
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->handleFlymeBackgroundRestriction(IIZ)V

    .line 3104
    :cond_58
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3105
    :try_start_5b
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 3106
    .local v3, "oldPolicy":I
    not-int v4, p2

    and-int p2, v3, v4

    .line 3107
    if-eq v3, p2, :cond_6f

    .line 3108
    invoke-direct {p0, p1, v3, p2, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIIZ)V

    .line 3109
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/net/NetworkPolicyLogger;->uidPolicyChanged(III)V

    .line 3111
    .end local v3  # "oldPolicy":I
    :cond_6f
    monitor-exit v1

    .line 3112
    return-void

    .line 3111
    :catchall_71
    move-exception v2

    monitor-exit v1
    :try_end_73
    .catchall {:try_start_5b .. :try_end_73} :catchall_71

    throw v2

    .line 3092
    .end local v0  # "uidPolicy":I
    :cond_74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot apply policy to UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeUserStateUL(IZ)Z
    .registers 10
    .param p1, "userId"  # I
    .param p2, "writePolicy"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 3218
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->removingUserState(I)V

    .line 3219
    const/4 v0, 0x0

    .line 3222
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_25

    .line 3223
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 3224
    .local v3, "uid":I
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_22

    .line 3225
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 3226
    const/4 v0, 0x1

    .line 3222
    .end local v3  # "uid":I
    :cond_22
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 3231
    .end local v1  # "i":I
    :cond_25
    const/4 v1, 0x0

    new-array v3, v1, [I

    .line 3232
    .local v3, "uids":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_29
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_44

    .line 3233
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 3234
    .local v5, "uid":I
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p1, :cond_41

    .line 3235
    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    .line 3232
    .end local v5  # "uid":I
    :cond_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 3239
    .end local v4  # "i":I
    :cond_44
    array-length v4, v3

    if-lez v4, :cond_55

    .line 3240
    array-length v4, v3

    :goto_48
    if-ge v1, v4, :cond_54

    aget v5, v3, v1

    .line 3241
    .restart local v5  # "uid":I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->delete(I)V

    .line 3240
    .end local v5  # "uid":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 3243
    :cond_54
    const/4 v0, 0x1

    .line 3245
    :cond_55
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3246
    :try_start_58
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    .line 3247
    if-eqz p2, :cond_62

    if-eqz v0, :cond_62

    .line 3248
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 3250
    :cond_62
    monitor-exit v1

    .line 3251
    return v0

    .line 3250
    :catchall_64
    move-exception v2

    monitor-exit v1
    :try_end_66
    .catchall {:try_start_58 .. :try_end_66} :catchall_64

    throw v2
.end method

.method public saveSecurityPayPolicy(IZ)V
    .registers 11
    .param p1, "uid"  # I
    .param p2, "enable"  # Z

    .line 2970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveSecurityPayPolicy,uid =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2972
    :try_start_22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_72

    .line 2974
    .local v1, "token":J
    :try_start_26
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSecurityPayPolicy:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    .line 2975
    .local v3, "oldSecurityPayPolicy":Z
    move v4, p2

    .line 2976
    .local v4, "newSecurityPayPolicy":Z
    const-string v5, "NetworkPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "oldSecurityPayPolicy = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " newSecurityPayPolicy = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2977
    if-eq v3, v4, :cond_67

    .line 2978
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSecurityPayPolicy:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2979
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_57
    .catchall {:try_start_26 .. :try_end_57} :catchall_6d

    .line 2980
    :try_start_57
    const-string v6, "NetworkPolicy"

    const-string/jumbo v7, "write securityPay policy to netpolicy file"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2981
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 2982
    monitor-exit v5

    goto :goto_67

    :catchall_64
    move-exception v6

    monitor-exit v5
    :try_end_66
    .catchall {:try_start_57 .. :try_end_66} :catchall_64

    .end local v1  # "token":J
    .end local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1  # "uid":I
    .end local p2  # "enable":Z
    :try_start_66
    throw v6
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_6d

    .line 2986
    .end local v3  # "oldSecurityPayPolicy":Z
    .end local v4  # "newSecurityPayPolicy":Z
    .restart local v1  # "token":J
    .restart local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1  # "uid":I
    .restart local p2  # "enable":Z
    :cond_67
    :goto_67
    :try_start_67
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2987
    nop

    .line 2988
    .end local v1  # "token":J
    monitor-exit v0

    .line 2989
    return-void

    .line 2986
    .restart local v1  # "token":J
    :catchall_6d
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1  # "uid":I
    .end local p2  # "enable":Z
    throw v3

    .line 2988
    .end local v1  # "token":J
    .restart local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1  # "uid":I
    .restart local p2  # "enable":Z
    :catchall_72
    move-exception v1

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_67 .. :try_end_74} :catchall_72

    throw v1
.end method

.method public saveUidPolicyForApp(II)V
    .registers 9
    .param p1, "uid"  # I
    .param p2, "enable"  # I

    .line 2999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveUidPolicyForApp:uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3000
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3001
    :try_start_22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_3e

    .line 3003
    .local v1, "token":J
    :try_start_26
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppUidPolicy:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_39

    .line 3005
    :try_start_33
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3006
    nop

    .line 3007
    .end local v1  # "token":J
    monitor-exit v0

    .line 3008
    return-void

    .line 3005
    .restart local v1  # "token":J
    :catchall_39
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1  # "uid":I
    .end local p2  # "enable":I
    throw v3

    .line 3007
    .end local v1  # "token":J
    .restart local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1  # "uid":I
    .restart local p2  # "enable":I
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_33 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public saveUidPolicyForVpn(IZ)V
    .registers 9
    .param p1, "uid"  # I
    .param p2, "enable"  # Z

    .line 2821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveUidPolicyForVpn:uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2823
    :try_start_22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_5b

    .line 2825
    .local v1, "token":J
    :try_start_26
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mVpnPolicy:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2826
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_56

    .line 2827
    :try_start_2e
    const-string v4, "NetworkPolicy"

    const-string/jumbo v5, "write vpn policy to netpolicy file"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2828
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 2829
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_2e .. :try_end_3a} :catchall_53

    .line 2831
    :try_start_3a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2832
    nop

    .line 2833
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getVpnUidsWithPolicy()[I

    move-result-object v3

    .line 2834
    .local v3, "uids":[I
    array-length v4, v3

    if-gtz v4, :cond_51

    .line 2835
    const-string v4, "NetworkPolicy"

    const-string/jumbo v5, "uids set to true equals 0,clear ip rule"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2836
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyForVpn(IIZ)Z

    .line 2838
    .end local v1  # "token":J
    .end local v3  # "uids":[I
    :cond_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_3a .. :try_end_52} :catchall_5b

    .line 2839
    return-void

    .line 2829
    .restart local v1  # "token":J
    :catchall_53
    move-exception v4

    :try_start_54
    monitor-exit v3
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    .end local v1  # "token":J
    .end local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1  # "uid":I
    .end local p2  # "enable":Z
    :try_start_55
    throw v4
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_56

    .line 2831
    .restart local v1  # "token":J
    .restart local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1  # "uid":I
    .restart local p2  # "enable":Z
    :catchall_56
    move-exception v3

    :try_start_57
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1  # "uid":I
    .end local p2  # "enable":Z
    throw v3

    .line 2838
    .end local v1  # "token":J
    .restart local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1  # "uid":I
    .restart local p2  # "enable":Z
    :catchall_5b
    move-exception v1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_57 .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method setAppIdleWhitelist(IZ)V
    .registers 8
    .param p1, "uid"  # I
    .param p2, "shouldWhitelist"  # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4540
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4542
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4543
    :try_start_c
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-ne v1, p2, :cond_16

    .line 4545
    monitor-exit v0

    return-void

    .line 4548
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_3e

    .line 4550
    .local v1, "token":J
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->appIdleWlChanged(IZ)V

    .line 4551
    if-eqz p2, :cond_28

    .line 4552
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2d

    .line 4554
    :cond_28
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4556
    :goto_2d
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(I)V

    .line 4557
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V
    :try_end_33
    .catchall {:try_start_1a .. :try_end_33} :catchall_39

    .line 4559
    :try_start_33
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4560
    nop

    .line 4561
    .end local v1  # "token":J
    monitor-exit v0

    .line 4562
    return-void

    .line 4559
    .restart local v1  # "token":J
    :catchall_39
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1  # "uid":I
    .end local p2  # "shouldWhitelist":Z
    throw v3

    .line 4561
    .end local v1  # "token":J
    .restart local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1  # "uid":I
    .restart local p2  # "shouldWhitelist":Z
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_33 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public setDeviceIdleMode(Z)V
    .registers 6
    .param p1, "enabled"  # Z

    .line 3505
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3506
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "setDeviceIdleMode"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3508
    :try_start_12
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_44

    .line 3509
    :try_start_15
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-ne v3, p1, :cond_1e

    .line 3510
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_41

    .line 3526
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3510
    return-void

    .line 3512
    :cond_1e
    :try_start_1e
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    .line 3513
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v3, p1}, Lcom/android/server/net/NetworkPolicyLogger;->deviceIdleModeEnabled(Z)V

    .line 3514
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    if-eqz v3, :cond_2c

    .line 3517
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V

    .line 3519
    :cond_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_41

    .line 3520
    if-eqz p1, :cond_36

    .line 3521
    :try_start_2f
    const-string/jumbo v2, "net"

    invoke-static {v2}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnPhase(Ljava/lang/String;)V

    goto :goto_3c

    .line 3523
    :cond_36
    const-string/jumbo v2, "net"

    invoke-static {v2}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffPhase(Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_2f .. :try_end_3c} :catchall_44

    .line 3526
    :goto_3c
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3527
    nop

    .line 3528
    return-void

    .line 3519
    :catchall_41
    move-exception v3

    :try_start_42
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    .end local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1  # "enabled":Z
    :try_start_43
    throw v3
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_44

    .line 3526
    .restart local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1  # "enabled":Z
    :catchall_44
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    .registers 7
    .param p1, "policies"  # [Landroid/net/NetworkPolicy;

    .line 3275
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3277
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3279
    .local v0, "token":J
    :try_start_d
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_27

    .line 3280
    :try_start_10
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_24

    .line 3281
    :try_start_13
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL([Landroid/net/NetworkPolicy;)V

    .line 3282
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 3283
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_21

    .line 3284
    :try_start_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_24

    .line 3286
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3287
    nop

    .line 3288
    return-void

    .line 3283
    :catchall_21
    move-exception v4

    :try_start_22
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    .end local v0  # "token":J
    .end local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1  # "policies":[Landroid/net/NetworkPolicy;
    :try_start_23
    throw v4

    .line 3284
    .restart local v0  # "token":J
    .restart local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1  # "policies":[Landroid/net/NetworkPolicy;
    :catchall_24
    move-exception v3

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_24

    .end local v0  # "token":J
    .end local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1  # "policies":[Landroid/net/NetworkPolicy;
    :try_start_26
    throw v3
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    .line 3286
    .restart local v0  # "token":J
    .restart local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1  # "policies":[Landroid/net/NetworkPolicy;
    :catchall_27
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setRestrictBackground(Z)V
    .registers 8
    .param p1, "restrictBackground"  # Z

    .line 3401
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "setRestrictBackground"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3403
    :try_start_9
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3404
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_2e

    .line 3406
    .local v2, "token":J
    :try_start_16
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_29

    .line 3407
    :try_start_19
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundUL(Z)V

    .line 3408
    monitor-exit v4
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_26

    .line 3410
    :try_start_1d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_2e

    .line 3411
    nop

    .line 3413
    .end local v2  # "token":J
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3414
    nop

    .line 3415
    return-void

    .line 3408
    .restart local v2  # "token":J
    :catchall_26
    move-exception v5

    :try_start_27
    monitor-exit v4
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    .end local v2  # "token":J
    .end local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1  # "restrictBackground":Z
    :try_start_28
    throw v5
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    .line 3410
    .restart local v2  # "token":J
    .restart local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1  # "restrictBackground":Z
    :catchall_29
    move-exception v4

    :try_start_2a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1  # "restrictBackground":Z
    throw v4
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2e

    .line 3413
    .end local v2  # "token":J
    .restart local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1  # "restrictBackground":Z
    :catchall_2e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public setSubscriptionOverride(IIIJLjava/lang/String;)V
    .registers 14
    .param p1, "subId"  # I
    .param p2, "overrideMask"  # I
    .param p3, "overrideValue"  # I
    .param p4, "timeoutMillis"  # J
    .param p6, "callingPackage"  # Ljava/lang/String;

    .line 3832
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, v0, p6}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceSubscriptionPlanAccess(IILjava/lang/String;)V

    .line 3835
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3836
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;

    move-result-object v1

    .line 3837
    .local v1, "plan":Landroid/telephony/SubscriptionPlan;
    if-eqz v1, :cond_53

    .line 3838
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan;->getDataLimitBehavior()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_53

    .line 3842
    .end local v1  # "plan":Landroid/telephony/SubscriptionPlan;
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_5b

    .line 3846
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "netpolicy_override_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2a

    goto :goto_2b

    :cond_2a
    move v1, v2

    :goto_2b
    move v0, v1

    .line 3848
    .local v0, "overrideEnabled":Z
    if-nez v0, :cond_30

    if-nez p3, :cond_52

    .line 3849
    :cond_30
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 3850
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3849
    const/16 v4, 0x10

    invoke-virtual {v1, v4, p2, p3, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3851
    const-wide/16 v5, 0x0

    cmp-long v1, p4, v5

    if-lez v1, :cond_52

    .line 3852
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 3853
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3852
    invoke-virtual {v1, v4, p2, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3856
    :cond_52
    return-void

    .line 3839
    .end local v0  # "overrideEnabled":Z
    .restart local v1  # "plan":Landroid/telephony/SubscriptionPlan;
    :cond_53
    :try_start_53
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Must provide valid SubscriptionPlan to enable overriding"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1  # "subId":I
    .end local p2  # "overrideMask":I
    .end local p3  # "overrideValue":I
    .end local p4  # "timeoutMillis":J
    .end local p6  # "callingPackage":Ljava/lang/String;
    throw v2

    .line 3842
    .end local v1  # "plan":Landroid/telephony/SubscriptionPlan;
    .restart local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1  # "subId":I
    .restart local p2  # "overrideMask":I
    .restart local p3  # "overrideValue":I
    .restart local p4  # "timeoutMillis":J
    .restart local p6  # "callingPackage":Ljava/lang/String;
    :catchall_5b
    move-exception v1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method public setSubscriptionPlans(I[Landroid/telephony/SubscriptionPlan;Ljava/lang/String;)V
    .registers 12
    .param p1, "subId"  # I
    .param p2, "plans"  # [Landroid/telephony/SubscriptionPlan;
    .param p3, "callingPackage"  # Ljava/lang/String;

    .line 3776
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceSubscriptionPlanAccess(IILjava/lang/String;)V

    .line 3778
    array-length v0, p2

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_13

    aget-object v2, p2, v1

    .line 3779
    .local v2, "plan":Landroid/telephony/SubscriptionPlan;
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3778
    .end local v2  # "plan":Landroid/telephony/SubscriptionPlan;
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 3782
    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3784
    .local v0, "token":J
    :try_start_17
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_78

    .line 3785
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_75

    .line 3786
    :try_start_1d
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3787
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3789
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3790
    .local v4, "subscriberId":Ljava/lang/String;
    if-eqz v4, :cond_39

    .line 3791
    invoke-direct {p0, p1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyAL(ILjava/lang/String;)Z

    .line 3792
    invoke-direct {p0, p1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeUpdateMobilePolicyCycleAL(ILjava/lang/String;)Z

    goto :goto_4f

    .line 3794
    :cond_39
    const-string v5, "NetworkPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing subscriberId for subId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3797
    :goto_4f
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 3798
    .end local v4  # "subscriberId":Ljava/lang/String;
    monitor-exit v3
    :try_end_54
    .catchall {:try_start_1d .. :try_end_54} :catchall_72

    .line 3799
    :try_start_54
    monitor-exit v2
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_75

    .line 3801
    :try_start_55
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.telephony.action.SUBSCRIPTION_PLANS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3802
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x40000000  # 2.0f

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3803
    const-string v3, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3804
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.MANAGE_SUBSCRIPTION_PLANS"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_6d
    .catchall {:try_start_55 .. :try_end_6d} :catchall_78

    .line 3806
    .end local v2  # "intent":Landroid/content/Intent;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3807
    nop

    .line 3808
    return-void

    .line 3798
    :catchall_72
    move-exception v4

    :try_start_73
    monitor-exit v3
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    .end local v0  # "token":J
    .end local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1  # "subId":I
    .end local p2  # "plans":[Landroid/telephony/SubscriptionPlan;
    .end local p3  # "callingPackage":Ljava/lang/String;
    :try_start_74
    throw v4

    .line 3799
    .restart local v0  # "token":J
    .restart local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1  # "subId":I
    .restart local p2  # "plans":[Landroid/telephony/SubscriptionPlan;
    .restart local p3  # "callingPackage":Ljava/lang/String;
    :catchall_75
    move-exception v3

    monitor-exit v2
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_75

    .end local v0  # "token":J
    .end local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1  # "subId":I
    .end local p2  # "plans":[Landroid/telephony/SubscriptionPlan;
    .end local p3  # "callingPackage":Ljava/lang/String;
    :try_start_77
    throw v3
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_78

    .line 3806
    .restart local v0  # "token":J
    .restart local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1  # "subId":I
    .restart local p2  # "plans":[Landroid/telephony/SubscriptionPlan;
    .restart local p3  # "callingPackage":Ljava/lang/String;
    :catchall_78
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method setSubscriptionPlansOwner(ILjava/lang/String;)V
    .registers 5
    .param p1, "subId"  # I
    .param p2, "packageName"  # Ljava/lang/String;

    .line 3815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.sys.sub_plan_owner."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3816
    return-void
.end method

.method public setUidPolicy(II)V
    .registers 8
    .param p1, "uid"  # I
    .param p2, "policy"  # I

    .line 2784
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUidPolicy: uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", policy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Calling PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2788
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", calling UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2789
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2787
    const-string v1, "NetworkPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 2795
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2796
    :try_start_49
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_6a

    .line 2798
    .local v1, "token":J
    :try_start_4d
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 2799
    .local v3, "oldPolicy":I
    if-eq v3, p2, :cond_5f

    .line 2800
    const/4 v4, 0x1

    invoke-direct {p0, p1, v3, p2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIIZ)V

    .line 2801
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v4, p1, v3, p2}, Lcom/android/server/net/NetworkPolicyLogger;->uidPolicyChanged(III)V
    :try_end_5f
    .catchall {:try_start_4d .. :try_end_5f} :catchall_65

    .line 2804
    .end local v3  # "oldPolicy":I
    :cond_5f
    :try_start_5f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2805
    nop

    .line 2806
    .end local v1  # "token":J
    monitor-exit v0

    .line 2807
    return-void

    .line 2804
    .restart local v1  # "token":J
    :catchall_65
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1  # "uid":I
    .end local p2  # "policy":I
    throw v3

    .line 2806
    .end local v1  # "token":J
    .restart local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1  # "uid":I
    .restart local p2  # "policy":I
    :catchall_6a
    move-exception v1

    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_5f .. :try_end_6c} :catchall_6a

    throw v1

    .line 2793
    :cond_6d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot apply policy to UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUidPolicyForApp(IIZ)Z
    .registers 9
    .param p1, "uid"  # I
    .param p2, "netId"  # I
    .param p3, "enable"  # Z

    .line 3011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUidPolicyForApp,uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " netId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3012
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-lez p1, :cond_4b

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppUidPolicy:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4b

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppUidPolicy:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_4b

    move v3, v0

    goto :goto_4c

    :cond_4b
    move v3, v2

    .line 3013
    .local v3, "isRepeated":Z
    :goto_4c
    if-eqz p3, :cond_6a

    if-eqz v3, :cond_6a

    .line 3014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1: uid : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "already set enabled ,ignore enable again!!!"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    return v2

    .line 3017
    :cond_6a
    invoke-static {p1, p2, p3}, Landroid/net/NetworkUtils;->bindAppToNetwork(IIZ)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 3018
    const-string/jumbo v4, "setUidPolicyForApp succ"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    if-eqz p3, :cond_7c

    .line 3020
    invoke-virtual {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->saveUidPolicyForApp(II)V

    goto :goto_7f

    .line 3022
    :cond_7c
    invoke-virtual {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->saveUidPolicyForApp(II)V

    .line 3024
    :goto_7f
    return v0

    .line 3026
    :cond_80
    const-string/jumbo v0, "setUidPolicyForApp Failed"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3027
    invoke-virtual {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->saveUidPolicyForApp(II)V

    .line 3028
    return v2
.end method

.method public setUidPolicyForAppList([IIZ)Z
    .registers 12
    .param p1, "uids"  # [I
    .param p2, "netId"  # I
    .param p3, "enable"  # Z

    .line 3033
    const/4 v0, 0x1

    .line 3035
    .local v0, "result":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_a3

    .line 3036
    aget v2, p1, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_2f

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppUidPolicy:Landroid/util/ArrayMap;

    aget v5, p1, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppUidPolicy:Landroid/util/ArrayMap;

    aget v5, p1, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_2f

    move v2, v4

    goto :goto_30

    :cond_2f
    move v2, v3

    .line 3037
    .local v2, "isRepeated":Z
    :goto_30
    const-string v5, "NetworkPolicy"

    if-eqz p3, :cond_52

    if-eqz v2, :cond_52

    .line 3038
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2: uid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "already set enabled ,ignore enable again!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    goto :goto_9f

    .line 3041
    :cond_52
    aget v6, p1, v1

    invoke-static {v6, p2, p3}, Landroid/net/NetworkUtils;->bindAppToNetwork(IIZ)Z

    move-result v6

    if-eqz v6, :cond_87

    .line 3042
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setUidPolicyForAppList:succ for uid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, p1, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " netId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3043
    if-eqz p3, :cond_81

    .line 3044
    aget v3, p1, v1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->saveUidPolicyForApp(II)V

    goto :goto_9f

    .line 3046
    :cond_81
    aget v4, p1, v1

    invoke-virtual {p0, v4, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->saveUidPolicyForApp(II)V

    goto :goto_9f

    .line 3049
    :cond_87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setUidPolicyForAppList Failed,uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3050
    const/4 v0, 0x0

    .line 3035
    :goto_9f
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 3053
    .end local v1  # "i":I
    .end local v2  # "isRepeated":Z
    :cond_a3
    return v0
.end method

.method public setUidPolicyForSecurityPay(IIZ)Z
    .registers 7
    .param p1, "uid"  # I
    .param p2, "netId"  # I
    .param p3, "enable"  # Z

    .line 2953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUidPolicyForSecurityPay,uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " netId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    const/4 v0, 0x1

    if-eqz p1, :cond_2f

    if-eq p1, v0, :cond_2f

    .line 2955
    invoke-virtual {p0, p1, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->saveSecurityPayPolicy(IZ)V

    .line 2957
    :cond_2f
    invoke-static {p1, p2, p3}, Landroid/net/NetworkUtils;->bindAppToMobileNetwork(IIZ)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 2958
    const-string/jumbo v2, "setUidPolicyForSecurityPay succ,save uid\'s securityPay policy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2959
    return v0

    .line 2961
    :cond_3c
    const-string v2, "bindAppToNetwork failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2962
    const/4 v1, 0x0

    if-eqz p1, :cond_49

    if-eq p1, v0, :cond_49

    .line 2963
    invoke-virtual {p0, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->saveSecurityPayPolicy(IZ)V

    .line 2965
    :cond_49
    return v1
.end method

.method public setUidPolicyForVpn(IIZ)Z
    .registers 6
    .param p1, "uid"  # I
    .param p2, "netId"  # I
    .param p3, "enable"  # Z

    .line 2811
    invoke-static {p1, p2, p3}, Landroid/net/NetworkUtils;->bindAppToVpnNetwork(IIZ)Z

    move-result v0

    const-string v1, "NetworkPolicy"

    if-eqz v0, :cond_10

    .line 2812
    const-string/jumbo v0, "setUidPolicyForVpn succ,save uid\'s vpn policy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2813
    const/4 v0, 0x1

    return v0

    .line 2815
    :cond_10
    const-string v0, "bindAppToNetwork failed"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    const/4 v0, 0x0

    return v0
.end method

.method public setWifiMeteredOverride(Ljava/lang/String;I)V
    .registers 10
    .param p1, "networkId"  # Ljava/lang/String;
    .param p2, "meteredOverride"  # I

    .line 3532
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3533
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3535
    .local v0, "token":J
    :try_start_d
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 3536
    .local v2, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 3537
    .local v3, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 3538
    .local v5, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-static {v5}, Landroid/net/NetworkPolicyManager;->resolveNetworkId(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 3539
    iput p2, v5, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 3540
    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_3a
    .catchall {:try_start_d .. :try_end_3a} :catchall_40

    .line 3542
    .end local v5  # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_3a
    goto :goto_1f

    .line 3544
    .end local v2  # "wm":Landroid/net/wifi/WifiManager;
    .end local v3  # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_3b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3545
    nop

    .line 3546
    return-void

    .line 3544
    :catchall_40
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public snoozeLimit(Landroid/net/NetworkTemplate;)V
    .registers 5
    .param p1, "template"  # Landroid/net/NetworkTemplate;

    .line 3349
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3351
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3353
    .local v0, "token":J
    const/16 v2, 0x23

    :try_start_f
    invoke-virtual {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->performSnooze(Landroid/net/NetworkTemplate;I)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_17

    .line 3355
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3356
    nop

    .line 3357
    return-void

    .line 3355
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public systemReady(Ljava/util/concurrent/CountDownLatch;)V
    .registers 5
    .param p1, "initCompleteSignal"  # Ljava/util/concurrent/CountDownLatch;

    .line 985
    const-wide/16 v0, 0x1e

    :try_start_2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 991
    nop

    .line 992
    return-void

    .line 986
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Service NetworkPolicy init timeout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1  # "initCompleteSignal":Ljava/util/concurrent/CountDownLatch;
    throw v0
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_14} :catch_14

    .line 988
    .restart local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1  # "initCompleteSignal":Ljava/util/concurrent/CountDownLatch;
    :catch_14
    move-exception v0

    .line 989
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 990
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Service NetworkPolicy init interrupted"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unregisterListener(Landroid/net/INetworkPolicyListener;)V
    .registers 5
    .param p1, "listener"  # Landroid/net/INetworkPolicyListener;

    .line 3269
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3270
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 3271
    return-void
.end method

.method updateNetworkEnabledNL()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 1909
    const-string v0, "NetworkPolicy"

    const-string/jumbo v1, "updateNetworkEnabledNL()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    const-wide/32 v1, 0x200000

    const-string/jumbo v3, "updateNetworkEnabledNL"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1914
    const-string v3, "No need to control the network enable or disable"

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v3

    .line 1946
    .local v3, "startTime":J
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v3, v4}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 1947
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1948
    return-void
.end method

.method updateNetworkRulesNL()V
    .registers 45
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 2057
    move-object/from16 v7, p0

    const-string v0, "NetworkPolicy"

    const-string/jumbo v1, "updateNetworkRulesNL()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    const-wide/32 v8, 0x200000

    const-string/jumbo v1, "updateNetworkRulesNL"

    invoke-static {v8, v9, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2062
    :try_start_13
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getAllNetworkState()[Landroid/net/NetworkState;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->defeatNullable([Landroid/net/NetworkState;)[Landroid/net/NetworkState;

    move-result-object v1
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1d} :catch_35c

    move-object v10, v1

    .line 2066
    .local v10, "states":[Landroid/net/NetworkState;
    nop

    .line 2070
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 2071
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v11, v1

    .line 2072
    .local v11, "identified":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/NetworkState;Landroid/net/NetworkIdentity;>;"
    array-length v1, v10

    const/4 v2, 0x0

    :goto_2c
    const/4 v13, 0x1

    if-ge v2, v1, :cond_5a

    aget-object v3, v10, v2

    .line 2073
    .local v3, "state":Landroid/net/NetworkState;
    iget-object v4, v3, Landroid/net/NetworkState;->network:Landroid/net/Network;

    if-eqz v4, :cond_42

    .line 2074
    iget-object v4, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    iget-object v5, v3, Landroid/net/NetworkState;->network:Landroid/net/Network;

    iget v5, v5, Landroid/net/Network;->netId:I

    invoke-direct {v7, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->parseSubId(Landroid/net/NetworkState;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2076
    :cond_42
    iget-object v4, v3, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v4, :cond_57

    iget-object v4, v3, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 2077
    iget-object v4, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v13}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;Z)Landroid/net/NetworkIdentity;

    move-result-object v4

    .line 2079
    .local v4, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {v11, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2072
    .end local v3  # "state":Landroid/net/NetworkState;
    .end local v4  # "ident":Landroid/net/NetworkIdentity;
    :cond_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 2083
    :cond_5a
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v14, v1

    .line 2084
    .local v14, "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-wide v1, 0x7fffffffffffffffL

    .line 2088
    .local v1, "lowestRule":J
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v15, v3

    .line 2089
    .local v15, "matchingIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v3, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, v13

    move-wide/from16 v16, v1

    move v5, v3

    .end local v1  # "lowestRule":J
    .local v5, "i":I
    .local v16, "lowestRule":J
    :goto_75
    const-wide/16 v18, -0x1

    if-ltz v5, :cond_182

    .line 2090
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/net/NetworkPolicy;

    .line 2093
    .local v6, "policy":Landroid/net/NetworkPolicy;
    invoke-virtual {v15}, Landroid/util/ArraySet;->clear()V

    .line 2094
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v13

    .local v1, "j":I
    :goto_8a
    if-ltz v1, :cond_a8

    .line 2095
    iget-object v2, v6, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v11, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v3, v20

    check-cast v3, Landroid/net/NetworkIdentity;

    invoke-virtual {v2, v3}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 2096
    invoke-virtual {v11, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkState;

    invoke-static {v15, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->collectIfaces(Landroid/util/ArraySet;Landroid/net/NetworkState;)V

    .line 2094
    :cond_a5
    add-int/lit8 v1, v1, -0x1

    goto :goto_8a

    .line 2101
    .end local v1  # "j":I
    :cond_a8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Applying "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to ifaces "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    iget-wide v1, v6, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v1, v1, v18

    if-eqz v1, :cond_cc

    move v1, v13

    goto :goto_cd

    :cond_cc
    const/4 v1, 0x0

    :goto_cd
    move/from16 v20, v1

    .line 2105
    .local v20, "hasWarning":Z
    iget-wide v1, v6, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v1, v1, v18

    if-eqz v1, :cond_d7

    move v1, v13

    goto :goto_d8

    :cond_d7
    const/4 v1, 0x0

    :goto_d8
    move/from16 v18, v1

    .line 2106
    .local v18, "hasLimit":Z
    if-nez v18, :cond_e6

    iget-boolean v1, v6, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v1, :cond_e1

    goto :goto_e6

    :cond_e1
    move/from16 v25, v5

    move-object v12, v6

    goto/16 :goto_163

    .line 2108
    :cond_e6
    :goto_e6
    if-eqz v18, :cond_139

    invoke-virtual {v6}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v1

    if-eqz v1, :cond_139

    .line 2109
    nop

    .line 2110
    invoke-static {v6}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/util/Pair;

    .line 2111
    .local v3, "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v21

    .line 2112
    .local v21, "start":J
    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v23

    .line 2113
    .local v23, "end":J
    iget-object v2, v6, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v1, p0

    move-object/from16 v19, v3

    const-wide/16 v8, 0x1

    .end local v3  # "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    .local v19, "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    move-wide/from16 v3, v21

    move/from16 v25, v5

    move-object v12, v6

    .end local v5  # "i":I
    .end local v6  # "policy":Landroid/net/NetworkPolicy;
    .local v12, "policy":Landroid/net/NetworkPolicy;
    .local v25, "i":I
    move-wide/from16 v5, v23

    invoke-direct/range {v1 .. v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v1

    .line 2115
    .local v1, "totalBytes":J
    iget-wide v3, v12, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v3, v3, v21

    if-ltz v3, :cond_131

    .line 2118
    const-wide v3, 0x7fffffffffffffffL

    .local v3, "quotaBytes":J
    goto :goto_138

    .line 2123
    .end local v3  # "quotaBytes":J
    :cond_131
    iget-wide v3, v12, Landroid/net/NetworkPolicy;->limitBytes:J

    sub-long/2addr v3, v1

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 2125
    .end local v1  # "totalBytes":J
    .end local v19  # "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    .end local v21  # "start":J
    .end local v23  # "end":J
    .restart local v3  # "quotaBytes":J
    :goto_138
    goto :goto_141

    .line 2108
    .end local v3  # "quotaBytes":J
    .end local v12  # "policy":Landroid/net/NetworkPolicy;
    .end local v25  # "i":I
    .restart local v5  # "i":I
    .restart local v6  # "policy":Landroid/net/NetworkPolicy;
    :cond_139
    move/from16 v25, v5

    move-object v12, v6

    .line 2128
    .end local v5  # "i":I
    .end local v6  # "policy":Landroid/net/NetworkPolicy;
    .restart local v12  # "policy":Landroid/net/NetworkPolicy;
    .restart local v25  # "i":I
    const-wide v3, 0x7fffffffffffffffL

    .line 2131
    .restart local v3  # "quotaBytes":J
    :goto_141
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-le v1, v13, :cond_14d

    .line 2133
    const-string/jumbo v1, "shared quota unsupported; generating rule for each iface"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    :cond_14d
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v13

    .local v1, "j":I
    :goto_152
    if-ltz v1, :cond_163

    .line 2137
    invoke-virtual {v15, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2138
    .local v2, "iface":Ljava/lang/String;
    invoke-direct {v7, v2, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuotaAsync(Ljava/lang/String;J)V

    .line 2139
    invoke-virtual {v14, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2136
    .end local v2  # "iface":Ljava/lang/String;
    add-int/lit8 v1, v1, -0x1

    goto :goto_152

    .line 2144
    .end local v1  # "j":I
    .end local v3  # "quotaBytes":J
    :cond_163
    :goto_163
    if-eqz v20, :cond_16f

    iget-wide v1, v12, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v1, v1, v16

    if-gez v1, :cond_16f

    .line 2145
    iget-wide v1, v12, Landroid/net/NetworkPolicy;->warningBytes:J

    move-wide/from16 v16, v1

    .line 2147
    :cond_16f
    if-eqz v18, :cond_17b

    iget-wide v1, v12, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v1, v1, v16

    if-gez v1, :cond_17b

    .line 2148
    iget-wide v1, v12, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v16, v1

    .line 2089
    .end local v12  # "policy":Landroid/net/NetworkPolicy;
    .end local v18  # "hasLimit":Z
    .end local v20  # "hasWarning":Z
    :cond_17b
    add-int/lit8 v5, v25, -0x1

    const-wide/32 v8, 0x200000

    .end local v25  # "i":I
    .restart local v5  # "i":I
    goto/16 :goto_75

    :cond_182
    move/from16 v25, v5

    const-wide/16 v8, 0x1

    .line 2154
    .end local v5  # "i":I
    array-length v0, v10

    const/4 v1, 0x0

    :goto_188
    const-wide v5, 0x7fffffffffffffffL

    if-ge v1, v0, :cond_1cc

    aget-object v2, v10, v1

    .line 2155
    .local v2, "state":Landroid/net/NetworkState;
    iget-object v3, v2, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v3, :cond_1c9

    iget-object v3, v2, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1c9

    iget-object v3, v2, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v4, 0xb

    .line 2156
    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-nez v3, :cond_1c9

    .line 2157
    invoke-virtual {v15}, Landroid/util/ArraySet;->clear()V

    .line 2158
    invoke-static {v15, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->collectIfaces(Landroid/util/ArraySet;Landroid/net/NetworkState;)V

    .line 2159
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v3

    sub-int/2addr v3, v13

    .local v3, "j":I
    :goto_1b2
    if-ltz v3, :cond_1c9

    .line 2160
    invoke-virtual {v15, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2161
    .local v4, "iface":Ljava/lang/String;
    invoke-virtual {v14, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1c6

    .line 2162
    invoke-direct {v7, v4, v5, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuotaAsync(Ljava/lang/String;J)V

    .line 2163
    invoke-virtual {v14, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2159
    .end local v4  # "iface":Ljava/lang/String;
    :cond_1c6
    add-int/lit8 v3, v3, -0x1

    goto :goto_1b2

    .line 2154
    .end local v2  # "state":Landroid/net/NetworkState;
    .end local v3  # "j":I
    :cond_1c9
    add-int/lit8 v1, v1, 0x1

    goto :goto_188

    .line 2170
    :cond_1cc
    iget-object v0, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v13

    .local v0, "i":I
    :goto_1d3
    if-ltz v0, :cond_1e9

    .line 2171
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2172
    .local v1, "iface":Ljava/lang/String;
    invoke-virtual {v14, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e6

    .line 2173
    invoke-direct {v7, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuotaAsync(Ljava/lang/String;)V

    .line 2170
    .end local v1  # "iface":Ljava/lang/String;
    :cond_1e6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d3

    .line 2176
    .end local v0  # "i":I
    :cond_1e9
    iput-object v14, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    .line 2178
    iget-object v0, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2179
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "netpolicy_quota_enabled"

    invoke-static {v0, v1, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1fb

    goto :goto_1fc

    :cond_1fb
    const/4 v13, 0x0

    :goto_1fc
    move v12, v13

    .line 2181
    .local v12, "quotaEnabled":Z
    sget-wide v1, Lcom/android/server/net/NetworkPolicyManagerService;->QUOTA_UNLIMITED_DEFAULT:J

    const-string/jumbo v3, "netpolicy_quota_unlimited"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v21

    .line 2183
    .local v21, "quotaUnlimited":J
    const v1, 0x3dcccccd  # 0.1f

    const-string/jumbo v2, "netpolicy_quota_limited"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v13

    .line 2187
    .local v13, "quotaLimited":F
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->clear()V

    .line 2188
    array-length v3, v10

    const/4 v4, 0x0

    :goto_217
    if-ge v4, v3, :cond_32d

    aget-object v2, v10, v4

    .line 2189
    .restart local v2  # "state":Landroid/net/NetworkState;
    if-nez v12, :cond_227

    move-object/from16 v37, v0

    move/from16 v35, v3

    move/from16 v36, v4

    move-wide/from16 v31, v5

    goto/16 :goto_321

    .line 2190
    :cond_227
    iget-object v1, v2, Landroid/net/NetworkState;->network:Landroid/net/Network;

    if-nez v1, :cond_235

    move-object/from16 v37, v0

    move/from16 v35, v3

    move/from16 v36, v4

    move-wide/from16 v31, v5

    goto/16 :goto_321

    .line 2191
    :cond_235
    iget-object v1, v2, Landroid/net/NetworkState;->network:Landroid/net/Network;

    invoke-direct {v7, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getSubIdLocked(Landroid/net/Network;)I

    move-result v1

    .line 2192
    .local v1, "subId":I
    invoke-direct {v7, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;

    move-result-object v20

    .line 2193
    .local v20, "plan":Landroid/telephony/SubscriptionPlan;
    if-nez v20, :cond_24b

    move-object/from16 v37, v0

    move/from16 v35, v3

    move/from16 v36, v4

    move-wide/from16 v31, v5

    goto/16 :goto_321

    .line 2196
    :cond_24b
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v23

    .line 2197
    .local v23, "limitBytes":J
    iget-object v8, v2, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v9, 0x12

    invoke-virtual {v8, v9}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v8

    if-nez v8, :cond_268

    .line 2199
    const-wide/16 v8, 0x0

    move-object/from16 v37, v0

    move v0, v1

    move-object/from16 v30, v2

    move/from16 v35, v3

    move/from16 v36, v4

    move-wide/from16 v31, v5

    .local v8, "quotaBytes":J
    goto/16 :goto_31c

    .line 2200
    .end local v8  # "quotaBytes":J
    :cond_268
    cmp-long v8, v23, v18

    if-nez v8, :cond_27b

    .line 2201
    const-wide/16 v8, -0x1

    move-object/from16 v37, v0

    move v0, v1

    move-object/from16 v30, v2

    move/from16 v35, v3

    move/from16 v36, v4

    move-wide/from16 v31, v5

    .restart local v8  # "quotaBytes":J
    goto/16 :goto_31c

    .line 2202
    .end local v8  # "quotaBytes":J
    :cond_27b
    cmp-long v8, v23, v5

    if-nez v8, :cond_28e

    .line 2204
    move-wide/from16 v8, v21

    move-object/from16 v37, v0

    move v0, v1

    move-object/from16 v30, v2

    move/from16 v35, v3

    move/from16 v36, v4

    move-wide/from16 v31, v5

    .restart local v8  # "quotaBytes":J
    goto/16 :goto_31c

    .line 2207
    .end local v8  # "quotaBytes":J
    :cond_28e
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SubscriptionPlan;->cycleIterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Range;

    .line 2208
    .local v8, "cycle":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    invoke-virtual {v8}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/time/ZonedDateTime;

    invoke-virtual {v9}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v9

    invoke-virtual {v9}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v26

    .line 2209
    .local v26, "start":J
    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/time/ZonedDateTime;

    invoke-virtual {v9}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v9

    invoke-virtual {v9}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v28

    .line 2210
    .local v28, "end":J
    iget-object v9, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    invoke-virtual {v9}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v9

    .line 2211
    .local v9, "now":Ljava/time/Instant;
    invoke-virtual {v8}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v30

    check-cast v30, Ljava/time/ZonedDateTime;

    invoke-virtual/range {v30 .. v30}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v5

    invoke-static {v9, v5}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v5

    sget-object v6, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    .line 2212
    invoke-virtual {v5, v6}, Ljava/time/ZonedDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object v5

    .line 2213
    invoke-virtual {v5}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v33

    .line 2214
    .local v33, "startOfDay":J
    iget-object v5, v2, Landroid/net/NetworkState;->subscriberId:Ljava/lang/String;

    .line 2215
    invoke-static {v5}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    .line 2214
    move v6, v1

    .end local v1  # "subId":I
    .local v6, "subId":I
    move-object/from16 v1, p0

    move-object/from16 v30, v2

    .end local v2  # "state":Landroid/net/NetworkState;
    .local v30, "state":Landroid/net/NetworkState;
    move-object v2, v5

    move/from16 v35, v3

    move/from16 v36, v4

    move-wide/from16 v3, v26

    move-object/from16 v37, v0

    move v0, v6

    const-wide v31, 0x7fffffffffffffffL

    .end local v6  # "subId":I
    .local v0, "subId":I
    .local v37, "cr":Landroid/content/ContentResolver;
    move-wide/from16 v5, v33

    invoke-direct/range {v1 .. v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v1

    .line 2217
    .local v1, "totalBytes":J
    sub-long v3, v23, v1

    .line 2219
    .local v3, "remainingBytes":J
    nop

    .line 2220
    invoke-virtual {v9}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v5

    sub-long v5, v28, v5

    move-wide/from16 v38, v1

    const-wide/16 v1, 0x1

    .end local v1  # "totalBytes":J
    .local v38, "totalBytes":J
    sub-long/2addr v5, v1

    move-object/from16 v25, v8

    .end local v8  # "cycle":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    .local v25, "cycle":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    sget-object v8, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v40

    div-long v5, v5, v40

    add-long/2addr v5, v1

    .line 2222
    .local v5, "remainingDays":J
    div-long v1, v3, v5

    long-to-float v1, v1

    mul-float/2addr v1, v13

    float-to-long v1, v1

    move-wide/from16 v42, v3

    const-wide/16 v3, 0x0

    .end local v3  # "remainingBytes":J
    .local v42, "remainingBytes":J
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 2225
    .end local v5  # "remainingDays":J
    .end local v9  # "now":Ljava/time/Instant;
    .end local v25  # "cycle":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    .end local v26  # "start":J
    .end local v28  # "end":J
    .end local v33  # "startOfDay":J
    .end local v38  # "totalBytes":J
    .end local v42  # "remainingBytes":J
    .local v8, "quotaBytes":J
    :goto_31c
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0, v8, v9}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 2188
    .end local v0  # "subId":I
    .end local v8  # "quotaBytes":J
    .end local v20  # "plan":Landroid/telephony/SubscriptionPlan;
    .end local v23  # "limitBytes":J
    .end local v30  # "state":Landroid/net/NetworkState;
    :goto_321
    add-int/lit8 v4, v36, 0x1

    move-wide/from16 v5, v31

    move/from16 v3, v35

    move-object/from16 v0, v37

    const-wide/16 v8, 0x1

    goto/16 :goto_217

    .line 2228
    .end local v37  # "cr":Landroid/content/ContentResolver;
    .local v0, "cr":Landroid/content/ContentResolver;
    :cond_32d
    move-object/from16 v37, v0

    .end local v0  # "cr":Landroid/content/ContentResolver;
    .restart local v37  # "cr":Landroid/content/ContentResolver;
    iget-object v0, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2229
    .local v0, "meteredIfaces":[Ljava/lang/String;
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2231
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2233
    const-wide/32 v1, 0x200000

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2234
    return-void

    .line 2063
    .end local v0  # "meteredIfaces":[Ljava/lang/String;
    .end local v10  # "states":[Landroid/net/NetworkState;
    .end local v11  # "identified":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/NetworkState;Landroid/net/NetworkIdentity;>;"
    .end local v12  # "quotaEnabled":Z
    .end local v13  # "quotaLimited":F
    .end local v14  # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v15  # "matchingIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v16  # "lowestRule":J
    .end local v21  # "quotaUnlimited":J
    .end local v37  # "cr":Landroid/content/ContentResolver;
    :catch_35c
    move-exception v0

    .line 2065
    .local v0, "e":Landroid/os/RemoteException;
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

    .line 1719
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworksInternal()V

    .line 1720
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1721
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/net/-$$Lambda$NetworkPolicyManagerService$lv2qqWetKVoJzbe7z3LT5idTu54;

    invoke-direct {v2, v0}, Lcom/android/server/net/-$$Lambda$NetworkPolicyManagerService$lv2qqWetKVoJzbe7z3LT5idTu54;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1724
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 1725
    return-void
.end method

.method updateNotificationsNL()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 1323
    const-string v0, "NetworkPolicy"

    const-string v1, "delay 3000ms to update notification network limit."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$15;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$15;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1330
    return-void
.end method

.method updateNotificationsNLImpl()V
    .registers 32

    .line 1220
    move-object/from16 v8, p0

    const-string v0, "NetworkPolicy"

    const-string/jumbo v1, "updateNotificationsNL()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    const-wide/32 v9, 0x200000

    const-string/jumbo v0, "updateNotificationsNL"

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1228
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, v8, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    move-object v11, v0

    .line 1229
    .local v11, "beforeNotifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;>;"
    iget-object v0, v8, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1235
    iget-object v0, v8, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v12

    .line 1237
    .local v12, "now":J
    iget-object v0, v8, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicyTemp:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1238
    iget-object v1, v8, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1239
    :try_start_2e
    iget-object v0, v8, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v14, 0x1

    sub-int/2addr v0, v14

    .local v0, "i":I
    :goto_36
    if-ltz v0, :cond_50

    .line 1240
    iget-object v2, v8, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicyTemp:Landroid/util/ArrayMap;

    iget-object v3, v8, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkTemplate;

    iget-object v4, v8, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicy;

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    add-int/lit8 v0, v0, -0x1

    goto :goto_36

    .line 1242
    .end local v0  # "i":I
    :cond_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_2e .. :try_end_51} :catchall_17b

    .line 1244
    iget-object v0, v8, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicyTemp:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v14

    .restart local v0  # "i":I
    :goto_58
    if-ltz v0, :cond_159

    .line 1245
    iget-object v1, v8, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicyTemp:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/net/NetworkPolicy;

    .line 1246
    .local v15, "policy":Landroid/net/NetworkPolicy;
    iget-object v1, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {v8, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->findRelevantSubIdNL(Landroid/net/NetworkTemplate;)I

    move-result v7

    .line 1249
    .local v7, "subId":I
    const/4 v1, -0x1

    if-ne v7, v1, :cond_6e

    goto/16 :goto_152

    .line 1250
    :cond_6e
    invoke-virtual {v15}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v1

    if-nez v1, :cond_76

    goto/16 :goto_152

    .line 1255
    :cond_76
    iget-object v1, v8, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v7, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Ljava/lang/String;

    .line 1257
    .local v16, "subImsi":Ljava/lang/String;
    if-nez v16, :cond_8d

    iget-object v1, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->isMatchRuleMobile()Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 1258
    goto/16 :goto_152

    .line 1262
    :cond_8d
    nop

    .line 1263
    invoke-static {v15}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/util/Pair;

    .line 1264
    .local v5, "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    iget-object v1, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v17

    .line 1265
    .local v17, "cycleStart":J
    iget-object v1, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v19

    .line 1266
    .local v19, "cycleEnd":J
    iget-object v2, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v1, p0

    move-wide/from16 v3, v17

    move-object/from16 v21, v5

    .end local v5  # "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    .local v21, "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    move-wide/from16 v5, v19

    invoke-direct/range {v1 .. v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v4

    .line 1269
    .local v4, "totalBytes":J
    iget-object v1, v8, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v1, v7}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v6

    .line 1270
    .local v6, "config":Landroid/os/PersistableBundle;
    invoke-static {v6}, Landroid/telephony/CarrierConfigManager;->isConfigForIdentifiedCarrier(Landroid/os/PersistableBundle;)Z

    move-result v1

    if-nez v1, :cond_d4

    .line 1271
    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "isConfigForIdentifiedCarrier returned false"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    return-void

    .line 1279
    :cond_d4
    const-string v1, "data_warning_notification_bool"

    invoke-static {v6, v1, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->getBooleanDefeatingNullable(Landroid/os/PersistableBundle;Ljava/lang/String;Z)Z

    move-result v22

    .line 1281
    .local v22, "notifyWarning":Z
    const-string v1, "data_limit_notification_bool"

    invoke-static {v6, v1, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->getBooleanDefeatingNullable(Landroid/os/PersistableBundle;Ljava/lang/String;Z)Z

    move-result v23

    .line 1283
    .local v23, "notifyLimit":Z
    const-string v1, "data_rapid_notification_bool"

    invoke-static {v6, v1, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->getBooleanDefeatingNullable(Landroid/os/PersistableBundle;Ljava/lang/String;Z)Z

    move-result v24

    .line 1287
    .local v24, "notifyRapid":Z
    iget-wide v1, v15, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v1, v1, v17

    if-gez v1, :cond_ee

    move v1, v14

    goto :goto_ef

    :cond_ee
    const/4 v1, 0x0

    :goto_ef
    move/from16 v25, v1

    .line 1288
    .local v25, "snoozedThisCycle":Z
    const-wide/16 v2, -0x1

    if-eqz v23, :cond_120

    invoke-virtual {v15, v4, v5}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v1

    if-eqz v1, :cond_120

    .line 1289
    if-eqz v25, :cond_119

    .line 1290
    iget-object v1, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    const-string v26, "Limit"

    move-object/from16 v27, v1

    move-object/from16 v1, p0

    move-wide v9, v2

    move-object/from16 v2, v27

    move-object v3, v15

    move-wide/from16 v28, v4

    .end local v4  # "totalBytes":J
    .local v28, "totalBytes":J
    move-object/from16 v27, v6

    .end local v6  # "config":Landroid/os/PersistableBundle;
    .local v27, "config":Landroid/os/PersistableBundle;
    move-object/from16 v6, v16

    move/from16 v30, v7

    .end local v7  # "subId":I
    .local v30, "subId":I
    move-object/from16 v7, v26

    invoke-direct/range {v1 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyOverLimitLocked(Landroid/net/NetworkTemplate;Landroid/net/NetworkPolicy;JLjava/lang/String;Ljava/lang/String;)V

    .line 1292
    iput-wide v9, v15, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_152

    .line 1289
    .end local v27  # "config":Landroid/os/PersistableBundle;
    .end local v28  # "totalBytes":J
    .end local v30  # "subId":I
    .restart local v4  # "totalBytes":J
    .restart local v6  # "config":Landroid/os/PersistableBundle;
    .restart local v7  # "subId":I
    :cond_119
    move-wide/from16 v28, v4

    move-object/from16 v27, v6

    move/from16 v30, v7

    .end local v4  # "totalBytes":J
    .end local v6  # "config":Landroid/os/PersistableBundle;
    .end local v7  # "subId":I
    .restart local v27  # "config":Landroid/os/PersistableBundle;
    .restart local v28  # "totalBytes":J
    .restart local v30  # "subId":I
    goto :goto_152

    .line 1288
    .end local v27  # "config":Landroid/os/PersistableBundle;
    .end local v28  # "totalBytes":J
    .end local v30  # "subId":I
    .restart local v4  # "totalBytes":J
    .restart local v6  # "config":Landroid/os/PersistableBundle;
    .restart local v7  # "subId":I
    :cond_120
    move-wide v9, v2

    move-wide/from16 v28, v4

    move-object/from16 v27, v6

    move/from16 v30, v7

    .line 1295
    .end local v4  # "totalBytes":J
    .end local v6  # "config":Landroid/os/PersistableBundle;
    .end local v7  # "subId":I
    .restart local v27  # "config":Landroid/os/PersistableBundle;
    .restart local v28  # "totalBytes":J
    .restart local v30  # "subId":I
    iget-object v1, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {v8, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyUnderLimitNL(Landroid/net/NetworkTemplate;)V

    .line 1296
    if-eqz v22, :cond_152

    move-wide/from16 v6, v28

    .end local v28  # "totalBytes":J
    .local v6, "totalBytes":J
    invoke-virtual {v15, v6, v7}, Landroid/net/NetworkPolicy;->isOverWarning(J)Z

    move-result v1

    if-eqz v1, :cond_150

    iget-wide v1, v15, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    cmp-long v1, v1, v17

    if-gez v1, :cond_150

    .line 1297
    iget-object v2, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    const-string v26, "Warning"

    move-object/from16 v1, p0

    move-object v3, v15

    move-wide v4, v6

    move-wide/from16 v28, v6

    .end local v6  # "totalBytes":J
    .restart local v28  # "totalBytes":J
    move-object/from16 v6, v16

    move-object/from16 v7, v26

    invoke-direct/range {v1 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyOverLimitLocked(Landroid/net/NetworkTemplate;Landroid/net/NetworkPolicy;JLjava/lang/String;Ljava/lang/String;)V

    .line 1299
    iput-wide v9, v15, Landroid/net/NetworkPolicy;->warningBytes:J

    goto :goto_152

    .line 1296
    .end local v28  # "totalBytes":J
    .restart local v6  # "totalBytes":J
    :cond_150
    move-wide/from16 v28, v6

    .line 1244
    .end local v6  # "totalBytes":J
    .end local v15  # "policy":Landroid/net/NetworkPolicy;
    .end local v16  # "subImsi":Ljava/lang/String;
    .end local v17  # "cycleStart":J
    .end local v19  # "cycleEnd":J
    .end local v21  # "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    .end local v22  # "notifyWarning":Z
    .end local v23  # "notifyLimit":Z
    .end local v24  # "notifyRapid":Z
    .end local v25  # "snoozedThisCycle":Z
    .end local v27  # "config":Landroid/os/PersistableBundle;
    .end local v30  # "subId":I
    :cond_152
    :goto_152
    add-int/lit8 v0, v0, -0x1

    const-wide/32 v9, 0x200000

    goto/16 :goto_58

    .line 1305
    .end local v0  # "i":I
    :cond_159
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v14

    .restart local v0  # "i":I
    :goto_15e
    if-ltz v0, :cond_174

    .line 1306
    invoke-virtual {v11, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;

    .line 1307
    .local v1, "notificationId":Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;
    iget-object v2, v8, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_171

    .line 1308
    invoke-direct {v8, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->cancelNotification(Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;)V

    .line 1305
    .end local v1  # "notificationId":Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;
    :cond_171
    add-int/lit8 v0, v0, -0x1

    goto :goto_15e

    .line 1312
    .end local v0  # "i":I
    :cond_174
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1313
    return-void

    .line 1242
    :catchall_17b
    move-exception v0

    :try_start_17c
    monitor-exit v1
    :try_end_17d
    .catchall {:try_start_17c .. :try_end_17d} :catchall_17b

    throw v0
.end method

.method updatePowerSaveWhitelistUL()V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 730
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v0}, Landroid/os/IDeviceIdleController;->getAppIdWhitelistExceptIdle()[I

    move-result-object v0

    .line 731
    .local v0, "whitelist":[I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 732
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    .line 733
    array-length v3, v0

    move v4, v1

    :goto_11
    if-ge v4, v3, :cond_1d

    aget v5, v0, v4

    .line 734
    .local v5, "uid":I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 733
    .end local v5  # "uid":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 737
    :cond_1d
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v3}, Landroid/os/IDeviceIdleController;->getAppIdWhitelist()[I

    move-result-object v3

    move-object v0, v3

    .line 738
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 739
    if-eqz v0, :cond_38

    .line 740
    array-length v3, v0

    :goto_2c
    if-ge v1, v3, :cond_38

    aget v4, v0, v1

    .line 741
    .local v4, "uid":I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_35} :catch_39

    .line 740
    .end local v4  # "uid":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 745
    .end local v0  # "whitelist":[I
    :cond_38
    goto :goto_3a

    .line 744
    :catch_39
    move-exception v0

    .line 746
    :goto_3a
    return-void
.end method

.method updateRestrictBackgroundByLowPowerModeUL(Landroid/os/PowerSaveState;)V
    .registers 6
    .param p1, "result"  # Landroid/os/PowerSaveState;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5627
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundPowerState:Landroid/os/PowerSaveState;

    .line 5629
    iget-boolean v0, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 5632
    .local v0, "restrictBackground":Z
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    .line 5634
    .local v1, "localRestrictBgChangedInBsm":Z
    iget-boolean v2, p1, Landroid/os/PowerSaveState;->globalBatterySaverEnabled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1c

    .line 5637
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-nez v2, :cond_14

    iget-boolean v2, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-eqz v2, :cond_14

    goto :goto_15

    :cond_14
    const/4 v3, 0x0

    :goto_15
    move v2, v3

    .line 5638
    .local v2, "shouldInvokeRestrictBackground":Z
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    iput-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundBeforeBsm:Z

    .line 5639
    const/4 v1, 0x0

    goto :goto_21

    .line 5642
    .end local v2  # "shouldInvokeRestrictBackground":Z
    :cond_1c
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    xor-int/2addr v2, v3

    .line 5643
    .restart local v2  # "shouldInvokeRestrictBackground":Z
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundBeforeBsm:Z

    .line 5646
    :goto_21
    if-eqz v2, :cond_26

    .line 5647
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundUL(Z)V

    .line 5651
    :cond_26
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    .line 5652
    return-void
.end method

.method updateRuleForAppIdleUL(I)V
    .registers 8
    .param p1, "uid"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4338
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForBlacklistRules(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 4340
    :cond_7
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 4341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRuleForAppIdleUL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4344
    :cond_25
    :try_start_25
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 4345
    .local v2, "appId":I
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_7c

    const-string v4, "NetworkPolicy"

    const/4 v5, 0x2

    if-nez v3, :cond_59

    :try_start_34
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 4346
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v3

    if-nez v3, :cond_59

    .line 4347
    invoke-direct {p0, v5, p1, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    .line 4348
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateRuleForAppIdleUL DENY "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    .line 4350
    :cond_59
    const/4 v3, 0x0

    invoke-direct {p0, v5, p1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    .line 4351
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateRuleForAppIdleUL "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to DEFAULT"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_34 .. :try_end_77} :catchall_7c

    .line 4354
    .end local v2  # "appId":I
    :goto_77
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4355
    nop

    .line 4356
    return-void

    .line 4354
    :catchall_7c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method updateRuleForDeviceIdleUL(I)V
    .registers 4
    .param p1, "uid"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4227
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(IZI)V

    .line 4228
    return-void
.end method

.method updateRuleForRestrictPowerUL(I)V
    .registers 4
    .param p1, "uid"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4211
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(IZI)V

    .line 4212
    return-void
.end method

.method updateRulesForAppIdleParoleUL()V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4364
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v0}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdleParoleOn()Z

    move-result v0

    .line 4365
    .local v0, "paroled":Z
    xor-int/lit8 v1, v0, 0x1

    .line 4366
    .local v1, "enableChain":Z
    const/4 v2, 0x2

    invoke-direct {p0, v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainUL(IZ)V

    .line 4368
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    .line 4369
    .local v2, "ruleCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    if-ge v3, v2, :cond_3f

    .line 4370
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 4371
    .local v4, "uid":I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    .line 4372
    .local v5, "oldRules":I
    if-eqz v1, :cond_26

    .line 4377
    and-int/lit8 v5, v5, 0xf

    goto :goto_2b

    .line 4380
    :cond_26
    and-int/lit16 v6, v5, 0xf0

    if-nez v6, :cond_2b

    goto :goto_3c

    .line 4382
    :cond_2b
    :goto_2b
    invoke-direct {p0, v4, v5, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(IIZ)I

    move-result v6

    .line 4383
    .local v6, "newUidRules":I
    if-nez v6, :cond_37

    .line 4384
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_3c

    .line 4386
    :cond_37
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 4369
    .end local v4  # "uid":I
    .end local v5  # "oldRules":I
    .end local v6  # "newUidRules":I
    :goto_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 4389
    .end local v3  # "i":I
    :cond_3f
    return-void
.end method

.method updateRulesForAppIdleUL()V
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4308
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateRulesForAppIdleUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4310
    :try_start_9
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 4311
    .local v2, "uidRules":Landroid/util/SparseIntArray;
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 4314
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    .line 4315
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "ui":I
    :goto_1a
    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ltz v4, :cond_4d

    .line 4316
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 4317
    .local v7, "user":Landroid/content/pm/UserInfo;
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Landroid/app/usage/UsageStatsManagerInternal;->getIdleUidsForUser(I)[I

    move-result-object v8

    .line 4318
    .local v8, "idleUids":[I
    array-length v9, v8

    move v10, v6

    :goto_2e
    if-ge v10, v9, :cond_4a

    aget v11, v8, v10

    .line 4319
    .local v11, "uid":I
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v13

    invoke-virtual {v12, v13, v6}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v12

    if-nez v12, :cond_47

    .line 4323
    invoke-direct {p0, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissions(I)Z

    move-result v12

    if-eqz v12, :cond_47

    .line 4324
    invoke-virtual {v2, v11, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 4318
    .end local v11  # "uid":I
    :cond_47
    add-int/lit8 v10, v10, 0x1

    goto :goto_2e

    .line 4315
    .end local v7  # "user":Landroid/content/pm/UserInfo;
    .end local v8  # "idleUids":[I
    :cond_4a
    add-int/lit8 v4, v4, -0x1

    goto :goto_1a

    .line 4330
    .end local v4  # "ui":I
    :cond_4d
    invoke-direct {p0, v5, v2, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V
    :try_end_50
    .catchall {:try_start_9 .. :try_end_50} :catchall_55

    .line 4332
    .end local v2  # "uidRules":Landroid/util/SparseIntArray;
    .end local v3  # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4333
    nop

    .line 4334
    return-void

    .line 4332
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

    .line 4216
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateRulesForDeviceIdleUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4218
    :try_start_9
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(ZILandroid/util/SparseIntArray;)V
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_16

    .line 4221
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4222
    nop

    .line 4223
    return-void

    .line 4221
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

    .line 4200
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateRulesForPowerSaveUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4202
    :try_start_9
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(ZILandroid/util/SparseIntArray;)V
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_16

    .line 4205
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4206
    nop

    .line 4207
    return-void

    .line 4205
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method updateSubscriptions()V
    .registers 15

    .line 2018
    const-string v0, "NetworkPolicy"

    const-string/jumbo v1, "updateSubscriptions()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateSubscriptions"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2021
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 2022
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionManager;

    .line 2024
    .local v3, "sm":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([I)[I

    move-result-object v4

    .line 2025
    .local v4, "subIds":[I
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2027
    .local v5, "mergedSubscriberIds":[Ljava/lang/String;
    new-instance v6, Landroid/util/SparseArray;

    array-length v7, v4

    invoke-direct {v6, v7}, Landroid/util/SparseArray;-><init>(I)V

    .line 2028
    .local v6, "subIdToSubscriberId":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    array-length v7, v4

    const/4 v8, 0x0

    move v9, v8

    :goto_3e
    if-ge v9, v7, :cond_69

    aget v10, v4, v9

    .line 2029
    .local v10, "subId":I
    invoke-virtual {v2, v10}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v11

    .line 2030
    .local v11, "subscriberId":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_50

    .line 2031
    invoke-virtual {v6, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_66

    .line 2033
    :cond_50
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Missing subscriberId for subId "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "NetworkPolicy"

    invoke-static {v13, v12}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    .end local v10  # "subId":I
    .end local v11  # "subscriberId":Ljava/lang/String;
    :goto_66
    add-int/lit8 v9, v9, 0x1

    goto :goto_3e

    .line 2037
    :cond_69
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2038
    :try_start_6c
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 2039
    nop

    .local v8, "i":I
    :goto_72
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_8a

    .line 2040
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 2041
    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2040
    invoke-virtual {v9, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2039
    add-int/lit8 v8, v8, 0x1

    goto :goto_72

    .line 2044
    .end local v8  # "i":I
    :cond_8a
    iput-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:[Ljava/lang/String;

    .line 2045
    monitor-exit v7
    :try_end_8d
    .catchall {:try_start_6c .. :try_end_8d} :catchall_91

    .line 2047
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2048
    return-void

    .line 2045
    :catchall_91
    move-exception v0

    :try_start_92
    monitor-exit v7
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    throw v0
.end method

.method writePolicyAL()V
    .registers 24
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock",
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 2651
    move-object/from16 v1, p0

    const-string/jumbo v0, "revoked-restrict-background"

    const-string/jumbo v2, "uid-policy"

    const-string/jumbo v3, "whitelist"

    const-string/jumbo v4, "securitypay-policy"

    const-string/jumbo v5, "vpn-policy"

    const-string/jumbo v6, "network-policy"

    const-string/jumbo v7, "policy-list"

    const-string v8, "NetworkPolicy"

    const-string/jumbo v9, "writePolicyAL()"

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2653
    const/4 v8, 0x0

    .line 2655
    .local v8, "fos":Ljava/io/FileOutputStream;
    :try_start_20
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v9
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_26} :catch_2a4

    move-object v8, v9

    .line 2657
    :try_start_27
    new-instance v9, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v9}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2658
    .local v9, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v8, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2659
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v9, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2661
    invoke-interface {v9, v11, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2662
    const-string/jumbo v10, "version"

    const/16 v12, 0xb

    invoke-static {v9, v10, v12}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2663
    const-string/jumbo v10, "restrictBackground"

    iget-boolean v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-static {v9, v10, v12}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2666
    const/4 v10, 0x0

    move v12, v10

    .local v12, "i":I
    :goto_53
    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_59} :catch_2a1

    const-string v14, "cyclePeriod"

    const-string v15, "cycleEnd"

    const-string v10, "cycleStart"

    if-ge v12, v13, :cond_115

    .line 2667
    :try_start_61
    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/NetworkPolicy;

    .line 2668
    .local v13, "policy":Landroid/net/NetworkPolicy;
    iget-object v11, v13, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 2669
    .local v11, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v11}, Landroid/net/NetworkTemplate;->isPersistable()Z

    move-result v16
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_6f} :catch_110

    if-nez v16, :cond_79

    move-object/from16 v17, v0

    move-object/from16 v18, v3

    move-object/from16 v16, v8

    goto/16 :goto_104

    .line 2671
    :cond_79
    move-object/from16 v16, v8

    const/4 v8, 0x0

    .end local v8  # "fos":Ljava/io/FileOutputStream;
    .local v16, "fos":Ljava/io/FileOutputStream;
    :try_start_7c
    invoke-interface {v9, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2672
    const-string/jumbo v8, "networkTemplate"

    move-object/from16 v17, v0

    invoke-virtual {v11}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    invoke-static {v9, v8, v0}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2673
    invoke-virtual {v11}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 2674
    .local v0, "subscriberId":Ljava/lang/String;
    if-eqz v0, :cond_9b

    .line 2675
    const-string/jumbo v8, "subscriberId"

    move-object/from16 v18, v3

    const/4 v3, 0x0

    invoke-interface {v9, v3, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_9d

    .line 2674
    :cond_9b
    move-object/from16 v18, v3

    .line 2677
    :goto_9d
    invoke-virtual {v11}, Landroid/net/NetworkTemplate;->getNetworkId()Ljava/lang/String;

    move-result-object v3

    .line 2678
    .local v3, "networkId":Ljava/lang/String;
    if-eqz v3, :cond_ad

    .line 2679
    const-string/jumbo v8, "networkId"

    move-object/from16 v19, v0

    const/4 v0, 0x0

    .end local v0  # "subscriberId":Ljava/lang/String;
    .local v19, "subscriberId":Ljava/lang/String;
    invoke-interface {v9, v0, v8, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_af

    .line 2678
    .end local v19  # "subscriberId":Ljava/lang/String;
    .restart local v0  # "subscriberId":Ljava/lang/String;
    :cond_ad
    move-object/from16 v19, v0

    .line 2681
    .end local v0  # "subscriberId":Ljava/lang/String;
    .restart local v19  # "subscriberId":Ljava/lang/String;
    :goto_af
    iget-object v0, v13, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v0, v0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    .line 2682
    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v0

    .line 2681
    invoke-static {v9, v10, v0}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2683
    iget-object v0, v13, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v0, v0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    .line 2684
    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v0

    .line 2683
    invoke-static {v9, v15, v0}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2685
    iget-object v0, v13, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v0, v0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 2686
    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/time/Period;)Ljava/lang/String;

    move-result-object v0

    .line 2685
    invoke-static {v9, v14, v0}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2687
    const-string/jumbo v0, "warningBytes"

    iget-wide v14, v13, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v9, v0, v14, v15}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2688
    const-string/jumbo v0, "limitBytes"

    iget-wide v14, v13, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-static {v9, v0, v14, v15}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2689
    const-string/jumbo v0, "lastWarningSnooze"

    iget-wide v14, v13, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    invoke-static {v9, v0, v14, v15}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2690
    const-string/jumbo v0, "lastLimitSnooze"

    iget-wide v14, v13, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    invoke-static {v9, v0, v14, v15}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2691
    const-string/jumbo v0, "metered"

    iget-boolean v8, v13, Landroid/net/NetworkPolicy;->metered:Z

    invoke-static {v9, v0, v8}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2692
    const-string/jumbo v0, "inferred"

    iget-boolean v8, v13, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-static {v9, v0, v8}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2693
    const/4 v0, 0x0

    invoke-interface {v9, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_104} :catch_149

    .line 2666
    .end local v3  # "networkId":Ljava/lang/String;
    .end local v11  # "template":Landroid/net/NetworkTemplate;
    .end local v13  # "policy":Landroid/net/NetworkPolicy;
    .end local v19  # "subscriberId":Ljava/lang/String;
    :goto_104
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v8, v16

    move-object/from16 v0, v17

    move-object/from16 v3, v18

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto/16 :goto_53

    .line 2775
    .end local v9  # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v12  # "i":I
    .end local v16  # "fos":Ljava/io/FileOutputStream;
    .restart local v8  # "fos":Ljava/io/FileOutputStream;
    :catch_110
    move-exception v0

    move-object/from16 v16, v8

    .end local v8  # "fos":Ljava/io/FileOutputStream;
    .restart local v16  # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_2a5

    .line 2666
    .end local v16  # "fos":Ljava/io/FileOutputStream;
    .restart local v8  # "fos":Ljava/io/FileOutputStream;
    .restart local v9  # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v12  # "i":I
    :cond_115
    move-object/from16 v17, v0

    move-object/from16 v18, v3

    move-object/from16 v16, v8

    .line 2696
    .end local v8  # "fos":Ljava/io/FileOutputStream;
    .end local v12  # "i":I
    .restart local v16  # "fos":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    move v3, v0

    .local v3, "i":I
    :goto_11d
    :try_start_11d
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mVpnPolicy:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0
    :try_end_123
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_123} :catch_29c

    const-string/jumbo v6, "policy"

    const-string/jumbo v8, "uid"

    if-ge v3, v0, :cond_14e

    .line 2697
    :try_start_12b
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mVpnPolicy:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 2698
    .local v0, "uid":I
    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mVpnPolicy:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v11

    .line 2699
    .local v11, "policy":Z
    const/4 v12, 0x0

    invoke-interface {v9, v12, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2700
    invoke-static {v9, v8, v0}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2701
    invoke-static {v9, v6, v11}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2702
    const/4 v6, 0x0

    invoke-interface {v9, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_145
    .catch Ljava/io/IOException; {:try_start_12b .. :try_end_145} :catch_149

    .line 2696
    nop

    .end local v0  # "uid":I
    .end local v11  # "policy":Z
    add-int/lit8 v3, v3, 0x1

    goto :goto_11d

    .line 2775
    .end local v3  # "i":I
    .end local v9  # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_149
    move-exception v0

    move-object/from16 v8, v16

    goto/16 :goto_2a5

    .line 2705
    .restart local v9  # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_14e
    const/4 v0, 0x0

    move v3, v0

    .restart local v3  # "i":I
    :goto_150
    :try_start_150
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSecurityPayPolicy:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0
    :try_end_156
    .catch Ljava/io/IOException; {:try_start_150 .. :try_end_156} :catch_29c

    if-ge v3, v0, :cond_176

    .line 2706
    :try_start_158
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSecurityPayPolicy:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 2707
    .restart local v0  # "uid":I
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSecurityPayPolicy:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    .line 2708
    .local v5, "policy":Z
    const/4 v11, 0x0

    invoke-interface {v9, v11, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2709
    invoke-static {v9, v8, v0}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2710
    invoke-static {v9, v6, v5}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2711
    const/4 v11, 0x0

    invoke-interface {v9, v11, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_172
    .catch Ljava/io/IOException; {:try_start_158 .. :try_end_172} :catch_149

    .line 2705
    nop

    .end local v0  # "uid":I
    .end local v5  # "policy":Z
    add-int/lit8 v3, v3, 0x1

    goto :goto_150

    .line 2715
    .end local v3  # "i":I
    :cond_176
    const/4 v0, 0x0

    move v3, v0

    .restart local v3  # "i":I
    :goto_178
    :try_start_178
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0
    :try_end_17e
    .catch Ljava/io/IOException; {:try_start_178 .. :try_end_17e} :catch_29c

    if-ge v3, v0, :cond_237

    .line 2716
    :try_start_180
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 2717
    .local v0, "subId":I
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2718
    .local v4, "ownerPackage":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/telephony/SubscriptionPlan;

    .line 2719
    .local v5, "plans":[Landroid/telephony/SubscriptionPlan;
    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19e

    goto/16 :goto_233

    .line 2721
    :cond_19e
    array-length v11, v5

    const/4 v12, 0x0

    :goto_1a0
    if-ge v12, v11, :cond_22e

    aget-object v13, v5, v12

    .line 2722
    .local v13, "plan":Landroid/telephony/SubscriptionPlan;
    move-object/from16 v19, v5

    .end local v5  # "plans":[Landroid/telephony/SubscriptionPlan;
    .local v19, "plans":[Landroid/telephony/SubscriptionPlan;
    const-string/jumbo v5, "subscription-plan"

    move/from16 v20, v11

    const/4 v11, 0x0

    invoke-interface {v9, v11, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2723
    const-string/jumbo v5, "subId"

    invoke-static {v9, v5, v0}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2724
    const-string/jumbo v5, "ownerPackage"

    invoke-static {v9, v5, v4}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2725
    invoke-virtual {v13}, Landroid/telephony/SubscriptionPlan;->getCycleRule()Landroid/util/RecurrenceRule;

    move-result-object v5

    .line 2726
    .local v5, "cycleRule":Landroid/util/RecurrenceRule;
    iget-object v11, v5, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    .line 2727
    invoke-static {v11}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v11

    .line 2726
    invoke-static {v9, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2728
    iget-object v11, v5, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    .line 2729
    invoke-static {v11}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v11

    .line 2728
    invoke-static {v9, v15, v11}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2730
    iget-object v11, v5, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 2731
    invoke-static {v11}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/time/Period;)Ljava/lang/String;

    move-result-object v11

    .line 2730
    invoke-static {v9, v14, v11}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2732
    const-string/jumbo v11, "title"

    move/from16 v21, v0

    .end local v0  # "subId":I
    .local v21, "subId":I
    invoke-virtual {v13}, Landroid/telephony/SubscriptionPlan;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v9, v11, v0}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2733
    const-string/jumbo v0, "summary"

    invoke-virtual {v13}, Landroid/telephony/SubscriptionPlan;->getSummary()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v9, v0, v11}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2734
    const-string/jumbo v0, "limitBytes"

    move-object v11, v4

    move-object/from16 v22, v5

    .end local v4  # "ownerPackage":Ljava/lang/String;
    .end local v5  # "cycleRule":Landroid/util/RecurrenceRule;
    .local v11, "ownerPackage":Ljava/lang/String;
    .local v22, "cycleRule":Landroid/util/RecurrenceRule;
    invoke-virtual {v13}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v4

    invoke-static {v9, v0, v4, v5}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2735
    const-string/jumbo v0, "limitBehavior"

    invoke-virtual {v13}, Landroid/telephony/SubscriptionPlan;->getDataLimitBehavior()I

    move-result v4

    invoke-static {v9, v0, v4}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2736
    const-string/jumbo v0, "usageBytes"

    invoke-virtual {v13}, Landroid/telephony/SubscriptionPlan;->getDataUsageBytes()J

    move-result-wide v4

    invoke-static {v9, v0, v4, v5}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2737
    const-string/jumbo v0, "usageTime"

    invoke-virtual {v13}, Landroid/telephony/SubscriptionPlan;->getDataUsageTime()J

    move-result-wide v4

    invoke-static {v9, v0, v4, v5}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2738
    const-string/jumbo v0, "subscription-plan"

    const/4 v4, 0x0

    invoke-interface {v9, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_222
    .catch Ljava/io/IOException; {:try_start_180 .. :try_end_222} :catch_149

    .line 2721
    nop

    .end local v13  # "plan":Landroid/telephony/SubscriptionPlan;
    .end local v22  # "cycleRule":Landroid/util/RecurrenceRule;
    add-int/lit8 v12, v12, 0x1

    move-object v4, v11

    move-object/from16 v5, v19

    move/from16 v11, v20

    move/from16 v0, v21

    goto/16 :goto_1a0

    .end local v11  # "ownerPackage":Ljava/lang/String;
    .end local v19  # "plans":[Landroid/telephony/SubscriptionPlan;
    .end local v21  # "subId":I
    .restart local v0  # "subId":I
    .restart local v4  # "ownerPackage":Ljava/lang/String;
    .local v5, "plans":[Landroid/telephony/SubscriptionPlan;
    :cond_22e
    move/from16 v21, v0

    move-object v11, v4

    move-object/from16 v19, v5

    .line 2715
    .end local v0  # "subId":I
    .end local v4  # "ownerPackage":Ljava/lang/String;
    .end local v5  # "plans":[Landroid/telephony/SubscriptionPlan;
    :goto_233
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_178

    .line 2743
    .end local v3  # "i":I
    :cond_237
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_238
    :try_start_238
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3
    :try_end_23e
    .catch Ljava/io/IOException; {:try_start_238 .. :try_end_23e} :catch_29c

    if-ge v0, v3, :cond_260

    .line 2744
    :try_start_240
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 2745
    .local v3, "uid":I
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 2748
    .local v4, "policy":I
    if-nez v4, :cond_24f

    goto :goto_25d

    .line 2750
    :cond_24f
    const/4 v5, 0x0

    invoke-interface {v9, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2751
    invoke-static {v9, v8, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2752
    invoke-static {v9, v6, v4}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2753
    const/4 v5, 0x0

    invoke-interface {v9, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_25d
    .catch Ljava/io/IOException; {:try_start_240 .. :try_end_25d} :catch_149

    .line 2743
    .end local v3  # "uid":I
    .end local v4  # "policy":I
    :goto_25d
    add-int/lit8 v0, v0, 0x1

    goto :goto_238

    .line 2756
    .end local v0  # "i":I
    :cond_260
    const/4 v0, 0x0

    :try_start_261
    invoke-interface {v9, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2759
    move-object/from16 v2, v18

    invoke-interface {v9, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2762
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0
    :try_end_26f
    .catch Ljava/io/IOException; {:try_start_261 .. :try_end_26f} :catch_29c

    .line 2763
    .local v0, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_270
    if-ge v3, v0, :cond_28a

    .line 2764
    :try_start_272
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 2765
    .local v4, "uid":I
    move-object/from16 v5, v17

    const/4 v6, 0x0

    invoke-interface {v9, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2766
    invoke-static {v9, v8, v4}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2767
    invoke-interface {v9, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_284
    .catch Ljava/io/IOException; {:try_start_272 .. :try_end_284} :catch_149

    .line 2763
    nop

    .end local v4  # "uid":I
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v17, v5

    goto :goto_270

    .line 2770
    .end local v3  # "i":I
    :cond_28a
    const/4 v3, 0x0

    :try_start_28b
    invoke-interface {v9, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2772
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2774
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;
    :try_end_293
    .catch Ljava/io/IOException; {:try_start_28b .. :try_end_293} :catch_29c

    move-object/from16 v3, v16

    .end local v16  # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_295
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_298
    .catch Ljava/io/IOException; {:try_start_295 .. :try_end_298} :catch_299

    .line 2779
    .end local v0  # "size":I
    .end local v9  # "out":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_2ad

    .line 2775
    :catch_299
    move-exception v0

    move-object v8, v3

    goto :goto_2a5

    .end local v3  # "fos":Ljava/io/FileOutputStream;
    .restart local v16  # "fos":Ljava/io/FileOutputStream;
    :catch_29c
    move-exception v0

    move-object/from16 v3, v16

    move-object v8, v3

    .end local v16  # "fos":Ljava/io/FileOutputStream;
    .restart local v3  # "fos":Ljava/io/FileOutputStream;
    goto :goto_2a5

    .end local v3  # "fos":Ljava/io/FileOutputStream;
    .restart local v8  # "fos":Ljava/io/FileOutputStream;
    :catch_2a1
    move-exception v0

    move-object v3, v8

    .end local v8  # "fos":Ljava/io/FileOutputStream;
    .restart local v3  # "fos":Ljava/io/FileOutputStream;
    goto :goto_2a5

    .end local v3  # "fos":Ljava/io/FileOutputStream;
    .restart local v8  # "fos":Ljava/io/FileOutputStream;
    :catch_2a4
    move-exception v0

    .line 2776
    .local v0, "e":Ljava/io/IOException;
    :goto_2a5
    if-eqz v8, :cond_2ac

    .line 2777
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v8}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2780
    .end local v0  # "e":Ljava/io/IOException;
    :cond_2ac
    move-object v3, v8

    .end local v8  # "fos":Ljava/io/FileOutputStream;
    .restart local v3  # "fos":Ljava/io/FileOutputStream;
    :goto_2ad
    return-void
.end method
