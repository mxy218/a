.class public Lcom/android/server/ConnectivityService;
.super Landroid/net/IConnectivityManager$Stub;
.source "ConnectivityService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ConnectivityService$ShellCmd;,
        Lcom/android/server/ConnectivityService$NetworkRequestInfo;,
        Lcom/android/server/ConnectivityService$NetworkFactoryInfo;,
        Lcom/android/server/ConnectivityService$SettingsObserver;,
        Lcom/android/server/ConnectivityService$InternalHandler;,
        Lcom/android/server/ConnectivityService$CaptivePortalImpl;,
        Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;,
        Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;,
        Lcom/android/server/ConnectivityService$LegacyTypeTracker;,
        Lcom/android/server/ConnectivityService$UnneededFor;,
        Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;
    }
.end annotation


# static fields
.field private static final ATTR_MCC:Ljava/lang/String; = "mcc"

.field private static final ATTR_MNC:Ljava/lang/String; = "mnc"

.field private static final DBG:Z = true

.field private static final DDBG:Z

.field private static final DEFAULT_CAPTIVE_PORTAL_HTTP_URL:Ljava/lang/String; = "http://connectivitycheck.gstatic.com/generate_204"

.field private static final DEFAULT_LINGER_DELAY_MS:I = 0x7530

.field protected static final DEFAULT_TCP_BUFFER_SIZES:Ljava/lang/String; = "4096,87380,110208,4096,16384,110208"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final DEFAULT_TCP_RWND_KEY:Ljava/lang/String; = "net.tcp.default_init_rwnd"

.field private static final DIAG_ARG:Ljava/lang/String; = "--diag"

.field private static final EVENT_APPLY_GLOBAL_HTTP_PROXY:I = 0x9

.field private static final EVENT_CLEAR_NET_TRANSITION_WAKELOCK:I = 0x8

.field private static final EVENT_CONFIGURE_ALWAYS_ON_NETWORKS:I = 0x1e

.field private static final EVENT_DATA_SAVER_CHANGED:I = 0x28

.field private static final EVENT_EXPIRE_NET_TRANSITION_WAKELOCK:I = 0x18

.field public static final EVENT_NETWORK_TESTED:I = 0x29

.field public static final EVENT_PRIVATE_DNS_CONFIG_RESOLVED:I = 0x2a

.field private static final EVENT_PRIVATE_DNS_SETTINGS_CHANGED:I = 0x25

.field private static final EVENT_PRIVATE_DNS_VALIDATION_UPDATE:I = 0x26

.field private static final EVENT_PROMPT_UNVALIDATED:I = 0x1d

.field public static final EVENT_PROVISIONING_NOTIFICATION:I = 0x2b

.field private static final EVENT_PROXY_HAS_CHANGED:I = 0x10

.field private static final EVENT_REGISTER_NETWORK_AGENT:I = 0x12

.field private static final EVENT_REGISTER_NETWORK_FACTORY:I = 0x11

.field private static final EVENT_REGISTER_NETWORK_LISTENER:I = 0x15

.field private static final EVENT_REGISTER_NETWORK_LISTENER_WITH_INTENT:I = 0x1f

.field private static final EVENT_REGISTER_NETWORK_REQUEST:I = 0x13

.field private static final EVENT_REGISTER_NETWORK_REQUEST_WITH_INTENT:I = 0x1a

.field private static final EVENT_RELEASE_NETWORK_REQUEST:I = 0x16

.field private static final EVENT_RELEASE_NETWORK_REQUEST_WITH_INTENT:I = 0x1b

.field private static final EVENT_REVALIDATE_NETWORK:I = 0x24

.field private static final EVENT_SET_ACCEPT_PARTIAL_CONNECTIVITY:I = 0x2d

.field private static final EVENT_SET_ACCEPT_UNVALIDATED:I = 0x1c

.field private static final EVENT_SET_AVOID_UNVALIDATED:I = 0x23

.field private static final EVENT_SYSTEM_READY:I = 0x19

.field private static final EVENT_TIMEOUT_NETWORK_REQUEST:I = 0x14

.field public static final EVENT_TIMEOUT_NOTIFICATION:I = 0x2c

.field private static final EVENT_UID_RULES_CHANGED:I = 0x27

.field private static final EVENT_UNREGISTER_NETWORK_FACTORY:I = 0x17

.field private static final EVENT_UPDATE_ACTIVE_DATA_SUBID:I = 0xa1

.field private static final EVENT_UPDATE_TCP_BUFFER_FOR_5G:I = 0xa0

.field private static final EVENT_USER_LOGIN_TIMEOUT:I = 0x2e

.field private static final LINGER_DELAY_PROPERTY:Ljava/lang/String; = "persist.netmon.linger"

.field private static final LOGD_BLOCKED_NETWORKINFO:Z = true

.field private static final MAX_NETWORK_INFO_LOGS:I = 0x28

.field private static final MAX_NETWORK_REQUESTS_PER_UID:I = 0x64

.field private static final MAX_NETWORK_REQUEST_LOGS:I = 0x14

.field private static final MAX_NET_ID:I = 0xfbff

.field private static final MAX_WAKELOCK_LOGS:I = 0x14

.field private static final MIN_NET_ID:I = 0x64

.field private static final NETWORK_ARG:Ljava/lang/String; = "networks"

.field private static final NETWORK_RESTORE_DELAY_PROP_NAME:Ljava/lang/String; = "android.telephony.apn-restore"

.field private static final PROMPT_UNVALIDATED_DELAY_MS:I = 0x1f40

.field public static final PROVISIONING_NOTIFICATION_HIDE:I = 0x0

.field public static final PROVISIONING_NOTIFICATION_SHOW:I = 0x1

.field private static final PROVISIONING_URL_PATH:Ljava/lang/String; = "/data/misc/radio/provisioning_urls.xml"

.field private static final REQUEST_ARG:Ljava/lang/String; = "requests"

.field public static final REQUEST_NETWORK_APP_LIST:Ljava/lang/String; = "request_network_applist"

.field private static final RESTORE_DEFAULT_NETWORK_DELAY:I = 0xea60

.field public static final SHORT_ARG:Ljava/lang/String; = "--short"

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_PROVISIONING_URL:Ljava/lang/String; = "provisioningUrl"

.field private static final TAG_PROVISIONING_URLS:Ljava/lang/String; = "provisioningUrls"

.field private static final TETHERING_ARG:Ljava/lang/String; = "tethering"

.field private static final TIMEOUT_NOTIFICATION_DELAY_MS:I = 0x4e20

.field private static final VDBG:Z

.field private static final sMagicDecoderRing:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public appListForRequestNetwork:Ljava/lang/String;

.field private final mBandwidthRequests:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBandwidthRequests"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mBlockedAppUids:Ljava/util/HashSet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBlockedAppUids"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentTcpBufferSizes:Ljava/lang/String;

.field private mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

.field private mDefaultInetConditionPublished:I

.field private final mDefaultMobileDataRequest:Landroid/net/NetworkRequest;

.field private final mDefaultRequest:Landroid/net/NetworkRequest;

.field private final mDefaultWifiRequest:Landroid/net/NetworkRequest;

.field private final mDnsManager:Lcom/android/server/connectivity/DnsManager;

.field protected mDnsResolver:Landroid/net/IDnsResolver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

.field protected final mHandlerThread:Landroid/os/HandlerThread;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mInitialBroadcast:Landroid/content/Intent;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLastWakeLockAcquireTimestamp:J

.field private final mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

.field protected mLingerDelayMs:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mLingerMonitor:Lcom/android/server/connectivity/LingerMonitor;

.field private mLockdownEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mVpns"
        }
    .end annotation
.end field

.field private mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mVpns"
        }
    .end annotation
.end field

.field private mMaxWakelockDurationMs:J

.field private final mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

.field final mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mNMS:Landroid/os/INetworkManagementService;

.field private mNetConfigs:[Landroid/net/NetworkConfig;

.field private final mNetIdInUse:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkForNetId"
        }
    .end annotation
.end field

.field private mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mNetTransitionWakeLockTimeout:I

.field protected mNetd:Landroid/net/INetd;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected final mNetdEventCallback:Landroid/net/INetdEventCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mNetworkAgentInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/Messenger;",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkFactoryInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/Messenger;",
            "Lcom/android/server/ConnectivityService$NetworkFactoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkForNetId:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkForNetId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkForRequestId:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkForRequestId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkInfoBlockingLogs:Landroid/util/LocalLog;

.field private final mNetworkRequestInfoLogs:Landroid/util/LocalLog;

.field private final mNetworkRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/NetworkRequest;",
            "Lcom/android/server/ConnectivityService$NetworkRequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworksDefined:I

.field private mNextNetId:I

.field private mNextNetworkRequestId:I

.field protected mNonDefaultSubscriptionLingerDelayMs:I

.field private mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

.field private final mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected final mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mPolicyListener:Landroid/net/INetworkPolicyListener;

.field private mPolicyManager:Landroid/net/INetworkPolicyManager;

.field private mPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

.field private mPreferredSubId:I

.field private final mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

.field private mProtectedNetworks:Ljava/util/List;

.field private final mProvisioningUrlFile:Ljava/io/File;

.field protected final mProxyTracker:Lcom/android/server/connectivity/ProxyTracker;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mReleasePendingIntentDelayMs:I

.field private mRestrictBackground:Z

.field private final mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

.field private mSystemReady:Z

.field private mTNS:Lcom/android/server/TestNetworkService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mTNSLock"
        }
    .end annotation
.end field

.field private final mTNSLock:Ljava/lang/Object;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTethering:Lcom/android/server/connectivity/Tethering;

.field private mTotalWakelockAcquisitions:I

.field private mTotalWakelockDurationMs:J

.field private mTotalWakelockReleases:I

.field private final mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

.field private mUidRules:Landroid/util/SparseIntArray;

.field private final mUidToNetworkRequestCount:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidToNetworkRequestCount"
        }
    .end annotation
.end field

.field private mUserManager:Landroid/os/UserManager;

.field private mUserPresentReceiver:Landroid/content/BroadcastReceiver;

.field protected final mVpns:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mVpns"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/connectivity/Vpn;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakelockLogs:Landroid/util/LocalLog;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 243
    const-class v0, Lcom/android/server/ConnectivityService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    .line 252
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ConnectivityService;->DDBG:Z

    .line 253
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ConnectivityService;->VDBG:Z

    .line 350
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Lcom/android/internal/util/AsyncChannel;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const-class v3, Lcom/android/server/ConnectivityService;

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const-class v3, Landroid/net/NetworkAgent;

    aput-object v3, v0, v2

    const-class v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/android/server/ConnectivityService;->sMagicDecoderRing:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    .registers 13
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "netManager"  # Landroid/os/INetworkManagementService;
    .param p3, "statsService"  # Landroid/net/INetworkStatsService;
    .param p4, "policyManager"  # Landroid/net/INetworkPolicyManager;

    .line 881
    nop

    .line 882
    invoke-static {}, Lcom/android/server/ConnectivityService;->getDnsResolver()Landroid/net/IDnsResolver;

    move-result-object v5

    new-instance v6, Landroid/net/metrics/IpConnectivityLog;

    invoke-direct {v6}, Landroid/net/metrics/IpConnectivityLog;-><init>()V

    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object v7

    .line 881
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;Landroid/net/IDnsResolver;Landroid/net/metrics/IpConnectivityLog;Landroid/net/INetd;)V

    .line 883
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;Landroid/net/IDnsResolver;Landroid/net/metrics/IpConnectivityLog;Landroid/net/INetd;)V
    .registers 38
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "netManager"  # Landroid/os/INetworkManagementService;
    .param p3, "statsService"  # Landroid/net/INetworkStatsService;
    .param p4, "policyManager"  # Landroid/net/INetworkPolicyManager;
    .param p5, "dnsresolver"  # Landroid/net/IDnsResolver;
    .param p6, "logger"  # Landroid/net/metrics/IpConnectivityLog;
    .param p7, "netd"  # Landroid/net/INetd;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 888
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;-><init>()V

    .line 302
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    .line 317
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    .line 323
    const/4 v3, 0x0

    iput v3, v1, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 346
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mTNSLock:Ljava/lang/Object;

    .line 582
    new-instance v0, Lcom/android/server/ConnectivityService$1;

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$1;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 591
    const/4 v0, -0x1

    iput v0, v1, Lcom/android/server/ConnectivityService;->mPreferredSubId:I

    .line 634
    const/16 v4, 0x64

    iput v4, v1, Lcom/android/server/ConnectivityService;->mNextNetId:I

    .line 637
    const/4 v4, 0x1

    iput v4, v1, Lcom/android/server/ConnectivityService;->mNextNetworkRequestId:I

    .line 641
    new-instance v5, Landroid/util/LocalLog;

    const/16 v6, 0x14

    invoke-direct {v5, v6}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    .line 645
    new-instance v5, Landroid/util/LocalLog;

    const/16 v7, 0x28

    invoke-direct {v5, v7}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mNetworkInfoBlockingLogs:Landroid/util/LocalLog;

    .line 648
    new-instance v5, Landroid/util/LocalLog;

    invoke-direct {v5, v6}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mWakelockLogs:Landroid/util/LocalLog;

    .line 649
    iput v3, v1, Lcom/android/server/ConnectivityService;->mTotalWakelockAcquisitions:I

    .line 650
    iput v3, v1, Lcom/android/server/ConnectivityService;->mTotalWakelockReleases:I

    .line 651
    const-wide/16 v7, 0x0

    iput-wide v7, v1, Lcom/android/server/ConnectivityService;->mTotalWakelockDurationMs:J

    .line 652
    iput-wide v7, v1, Lcom/android/server/ConnectivityService;->mMaxWakelockDurationMs:J

    .line 653
    iput-wide v7, v1, Lcom/android/server/ConnectivityService;->mLastWakeLockAcquireTimestamp:J

    .line 657
    new-instance v5, Landroid/util/SparseArray;

    const/16 v7, 0xa

    invoke-direct {v5, v7}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mBandwidthRequests:Landroid/util/SparseArray;

    .line 855
    new-instance v5, Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-direct {v5, v1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    .line 861
    new-instance v5, Lcom/android/server/ConnectivityService$2;

    invoke-direct {v5, v1}, Lcom/android/server/ConnectivityService$2;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

    .line 1736
    new-instance v5, Lcom/android/server/ConnectivityService$4;

    invoke-direct {v5, v1}, Lcom/android/server/ConnectivityService$4;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

    .line 1861
    new-instance v5, Lcom/android/server/ConnectivityService$5;

    invoke-direct {v5, v1}, Lcom/android/server/ConnectivityService$5;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    .line 1921
    new-instance v5, Lcom/android/server/ConnectivityService$6;

    invoke-direct {v5, v1}, Lcom/android/server/ConnectivityService$6;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    .line 4833
    new-instance v5, Ljava/io/File;

    const-string v7, "/data/misc/radio/provisioning_urls.xml"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mProvisioningUrlFile:Ljava/io/File;

    .line 5068
    new-instance v5, Lcom/android/server/ConnectivityService$7;

    invoke-direct {v5, v1}, Lcom/android/server/ConnectivityService$7;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 5102
    new-instance v5, Lcom/android/server/ConnectivityService$8;

    invoke-direct {v5, v1}, Lcom/android/server/ConnectivityService$8;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    .line 5112
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    .line 5113
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    .line 5117
    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    .line 5570
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    .line 5574
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    .line 5579
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    .line 5585
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    .line 5587
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mBlockedAppUids:Ljava/util/HashSet;

    .line 889
    const-string v5, "ConnectivityService starting up"

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 891
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getSystemProperties()Lcom/android/server/connectivity/MockableSystemProperties;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    .line 893
    move-object/from16 v5, p6

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    .line 894
    sget-object v7, Landroid/net/NetworkRequest$Type;->REQUEST:Landroid/net/NetworkRequest$Type;

    invoke-direct {v1, v0, v7}, Lcom/android/server/ConnectivityService;->createDefaultInternetRequestForTransport(ILandroid/net/NetworkRequest$Type;)Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    .line 895
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    iget-object v7, v1, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    new-instance v8, Landroid/os/Binder;

    invoke-direct {v8}, Landroid/os/Binder;-><init>()V

    const/4 v9, 0x0

    invoke-direct {v0, v1, v9, v7, v8}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;)V

    move-object v7, v0

    .line 896
    .local v7, "defaultNRI":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    iget-object v8, v1, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "REGISTER "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 899
    sget-object v0, Landroid/net/NetworkRequest$Type;->BACKGROUND_REQUEST:Landroid/net/NetworkRequest$Type;

    invoke-direct {v1, v3, v0}, Lcom/android/server/ConnectivityService;->createDefaultInternetRequestForTransport(ILandroid/net/NetworkRequest$Type;)Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mDefaultMobileDataRequest:Landroid/net/NetworkRequest;

    .line 905
    sget-object v0, Landroid/net/NetworkRequest$Type;->BACKGROUND_REQUEST:Landroid/net/NetworkRequest$Type;

    invoke-direct {v1, v4, v0}, Lcom/android/server/ConnectivityService;->createDefaultInternetRequestForTransport(ILandroid/net/NetworkRequest$Type;)Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mDefaultWifiRequest:Landroid/net/NetworkRequest;

    .line 908
    new-instance v0, Landroid/os/HandlerThread;

    const-string v8, "ConnectivityServiceThread"

    invoke-direct {v0, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 909
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 910
    new-instance v0, Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v8, v1, Lcom/android/server/ConnectivityService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v0, v1, v8}, Lcom/android/server/ConnectivityService$InternalHandler;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 911
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    iget-object v8, v1, Lcom/android/server/ConnectivityService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v0, v1, v8}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    .line 913
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v8, 0x1388

    const-string v9, "connectivity_release_pending_intent_delay_ms"

    invoke-static {v0, v9, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mReleasePendingIntentDelayMs:I

    .line 916
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    const-string/jumbo v9, "persist.netmon.linger"

    const/16 v10, 0x7530

    invoke-virtual {v0, v9, v10}, Lcom/android/server/connectivity/MockableSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mLingerDelayMs:I

    .line 917
    iput v8, v1, Lcom/android/server/ConnectivityService;->mNonDefaultSubscriptionLingerDelayMs:I

    .line 919
    const-string/jumbo v0, "missing Context"

    invoke-static {v2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 920
    const-string/jumbo v0, "missing INetworkManagementService"

    move-object/from16 v8, p2

    invoke-static {v8, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/INetworkManagementService;

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    .line 921
    const-string/jumbo v0, "missing INetworkStatsService"

    move-object/from16 v9, p3

    invoke-static {v9, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/INetworkStatsService;

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mStatsService:Landroid/net/INetworkStatsService;

    .line 922
    const-string/jumbo v0, "missing INetworkPolicyManager"

    move-object/from16 v10, p4

    invoke-static {v10, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/INetworkPolicyManager;

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 923
    const-class v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 924
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 923
    const-string/jumbo v11, "missing NetworkPolicyManagerInternal"

    invoke-static {v0, v11}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 926
    const-string/jumbo v0, "missing IDnsResolver"

    move-object/from16 v11, p5

    invoke-static {v11, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IDnsResolver;

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mDnsResolver:Landroid/net/IDnsResolver;

    .line 927
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->makeProxyTracker()Lcom/android/server/connectivity/ProxyTracker;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mProxyTracker:Lcom/android/server/connectivity/ProxyTracker;

    .line 929
    move-object/from16 v12, p7

    iput-object v12, v1, Lcom/android/server/ConnectivityService;->mNetd:Landroid/net/INetd;

    .line 930
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    .line 931
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "phone"

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 932
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 933
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v13, v1, Lcom/android/server/ConnectivityService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/high16 v14, 0x400000

    invoke-virtual {v0, v13, v14}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 939
    :try_start_1e7
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    iget-object v13, v1, Lcom/android/server/ConnectivityService;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-interface {v0, v13}, Landroid/net/INetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_1ee
    .catch Landroid/os/RemoteException; {:try_start_1e7 .. :try_end_1ee} :catch_1ef

    .line 943
    goto :goto_205

    .line 940
    :catch_1ef
    move-exception v0

    .line 942
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "unable to register INetworkPolicyListener"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 945
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_205
    const-string/jumbo v0, "power"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/os/PowerManager;

    .line 947
    .local v13, "powerManager":Landroid/os/PowerManager;
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    invoke-virtual {v13, v4, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 948
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v14, 0x10e0087

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockTimeout:I

    .line 950
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    invoke-virtual {v13, v4, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 952
    new-array v0, v6, [Landroid/net/NetworkConfig;

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    .line 955
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v6, "request_network_applist"

    invoke-static {v0, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->appListForRequestNetwork:Ljava/lang/String;

    .line 959
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    const-string/jumbo v6, "ro.radio.noril"

    invoke-virtual {v0, v6, v3}, Lcom/android/server/connectivity/MockableSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 960
    .local v6, "wifiOnly":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "wifiOnly="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 961
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v14, 0x107007e

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 963
    .local v14, "naStrings":[Ljava/lang/String;
    array-length v15, v14

    :goto_26b
    if-ge v3, v15, :cond_31a

    aget-object v4, v14, v3

    .line 965
    .local v4, "naString":Ljava/lang/String;
    :try_start_26f
    new-instance v0, Landroid/net/NetworkConfig;

    invoke-direct {v0, v4}, Landroid/net/NetworkConfig;-><init>(Ljava/lang/String;)V

    .line 966
    .local v0, "n":Landroid/net/NetworkConfig;
    sget-boolean v18, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v18, :cond_298

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_27d
    .catch Ljava/lang/Exception; {:try_start_26f .. :try_end_27d} :catch_30e

    move-object/from16 v18, v7

    .end local v7  # "defaultNRI":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .local v18, "defaultNRI":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :try_start_27f
    const-string/jumbo v7, "naString="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " config="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_29a

    .end local v18  # "defaultNRI":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .restart local v7  # "defaultNRI":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :cond_298
    move-object/from16 v18, v7

    .line 967
    .end local v7  # "defaultNRI":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .restart local v18  # "defaultNRI":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :goto_29a
    iget v5, v0, Landroid/net/NetworkConfig;->type:I

    const/16 v7, 0x13

    if-le v5, v7, :cond_2b7

    .line 968
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in networkAttributes - ignoring attempt to define type "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 970
    goto :goto_311

    .line 972
    :cond_2b7
    if-eqz v6, :cond_2d9

    iget v5, v0, Landroid/net/NetworkConfig;->type:I

    invoke-static {v5}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v5

    if-eqz v5, :cond_2d9

    .line 973
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "networkAttributes - ignoring mobile as this dev is wifiOnly "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 975
    goto :goto_311

    .line 977
    :cond_2d9
    iget-object v5, v1, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    iget v7, v0, Landroid/net/NetworkConfig;->type:I

    aget-object v5, v5, v7

    if-eqz v5, :cond_2f8

    .line 978
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in networkAttributes - ignoring attempt to redefine type "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 980
    goto :goto_311

    .line 982
    :cond_2f8
    iget-object v5, v1, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    iget v7, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v5, v7}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->addSupportedType(I)V

    .line 984
    iget-object v5, v1, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    iget v7, v0, Landroid/net/NetworkConfig;->type:I

    aput-object v0, v5, v7

    .line 985
    iget v5, v1, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    const/4 v7, 0x1

    add-int/2addr v5, v7

    iput v5, v1, Lcom/android/server/ConnectivityService;->mNetworksDefined:I
    :try_end_30b
    .catch Ljava/lang/Exception; {:try_start_27f .. :try_end_30b} :catch_30c

    .line 988
    .end local v0  # "n":Landroid/net/NetworkConfig;
    goto :goto_311

    .line 986
    :catch_30c
    move-exception v0

    goto :goto_311

    .end local v18  # "defaultNRI":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .restart local v7  # "defaultNRI":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :catch_30e
    move-exception v0

    move-object/from16 v18, v7

    .line 963
    .end local v4  # "naString":Ljava/lang/String;
    .end local v7  # "defaultNRI":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .restart local v18  # "defaultNRI":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :goto_311
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v5, p6

    move-object/from16 v7, v18

    const/4 v4, 0x1

    goto/16 :goto_26b

    .line 992
    .end local v18  # "defaultNRI":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .restart local v7  # "defaultNRI":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :cond_31a
    move-object/from16 v18, v7

    .end local v7  # "defaultNRI":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .restart local v18  # "defaultNRI":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    const/16 v3, 0x11

    aget-object v0, v0, v3

    if-nez v0, :cond_32f

    .line 995
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v0, v3}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->addSupportedType(I)V

    .line 996
    iget v0, v1, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, v1, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    .line 1001
    :cond_32f
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    const/16 v3, 0x9

    aget-object v0, v0, v3

    if-nez v0, :cond_34a

    const-string v0, "ethernet"

    invoke-virtual {v1, v0}, Lcom/android/server/ConnectivityService;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34a

    .line 1002
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v0, v3}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->addSupportedType(I)V

    .line 1003
    iget v0, v1, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, v1, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    .line 1006
    :cond_34a
    sget-boolean v0, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v0, :cond_365

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mNetworksDefined="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1008
    :cond_365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    .line 1009
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1070053

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 1011
    .local v3, "protectedNetworks":[I
    array-length v0, v3

    const/4 v4, 0x0

    :goto_379
    if-ge v4, v0, :cond_3b0

    aget v5, v3, v4

    .line 1012
    .local v5, "p":I
    iget-object v7, v1, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v7, v7, v5

    if-eqz v7, :cond_399

    iget-object v7, v1, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v7, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_399

    .line 1013
    iget-object v7, v1, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3ad

    .line 1015
    :cond_399
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Ignoring protectedNetwork "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1011
    .end local v5  # "p":I
    :goto_3ad
    add-int/lit8 v4, v4, 0x1

    goto :goto_379

    .line 1019
    :cond_3b0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->makeTethering()Lcom/android/server/connectivity/Tethering;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    .line 1021
    new-instance v0, Lcom/android/server/connectivity/PermissionMonitor;

    iget-object v4, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/server/ConnectivityService;->mNetd:Landroid/net/INetd;

    invoke-direct {v0, v4, v5}, Lcom/android/server/connectivity/PermissionMonitor;-><init>(Landroid/content/Context;Landroid/net/INetd;)V

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    .line 1025
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1026
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.USER_STARTED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1027
    const-string v4, "android.intent.action.USER_STOPPED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1028
    const-string v4, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1029
    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1030
    const-string v4, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1031
    iget-object v4, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/server/ConnectivityService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v23, 0x0

    iget-object v7, v1, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v22, v0

    move-object/from16 v24, v7

    invoke-virtual/range {v19 .. v24}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1037
    iget-object v4, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/server/ConnectivityService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v26, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v15, "android.intent.action.USER_PRESENT"

    invoke-direct {v7, v15}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v27, v7

    invoke-virtual/range {v24 .. v29}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1041
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 1042
    .end local v0  # "intentFilter":Landroid/content/IntentFilter;
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1043
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1044
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1045
    const-string/jumbo v0, "package"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1046
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/server/ConnectivityService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v7, v1, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    move-object/from16 v19, v0

    move-object/from16 v20, v5

    move-object/from16 v22, v4

    move-object/from16 v24, v7

    invoke-virtual/range {v19 .. v24}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1054
    :try_start_43b
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    iget-object v5, v1, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-interface {v0, v5}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 1055
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    iget-object v5, v1, Lcom/android/server/ConnectivityService;->mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, v5}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_449
    .catch Landroid/os/RemoteException; {:try_start_43b .. :try_end_449} :catch_44a

    .line 1058
    goto :goto_45f

    .line 1056
    :catch_44a
    move-exception v0

    .line 1057
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error registering observer :"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1060
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_45f
    new-instance v0, Lcom/android/server/ConnectivityService$SettingsObserver;

    iget-object v5, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-direct {v0, v5, v7}, Lcom/android/server/ConnectivityService$SettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    .line 1061
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->registerSettingsCallbacks()V

    .line 1063
    new-instance v0, Lcom/android/server/connectivity/DataConnectionStats;

    iget-object v5, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/android/server/connectivity/DataConnectionStats;-><init>(Landroid/content/Context;)V

    .line 1064
    .local v0, "dataConnectionStats":Lcom/android/server/connectivity/DataConnectionStats;
    invoke-virtual {v0}, Lcom/android/server/connectivity/DataConnectionStats;->startMonitoring()V

    .line 1066
    const-string/jumbo v5, "user"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    .line 1068
    new-instance v5, Lcom/android/server/connectivity/KeepaliveTracker;

    iget-object v7, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v15, v1, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-direct {v5, v7, v15}, Lcom/android/server/connectivity/KeepaliveTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    .line 1069
    new-instance v5, Lcom/android/server/connectivity/NetworkNotificationManager;

    iget-object v7, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v15, v1, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v16, v0

    .end local v0  # "dataConnectionStats":Lcom/android/server/connectivity/DataConnectionStats;
    .local v16, "dataConnectionStats":Lcom/android/server/connectivity/DataConnectionStats;
    const-class v0, Landroid/app/NotificationManager;

    .line 1070
    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-direct {v5, v7, v15, v0}, Lcom/android/server/connectivity/NetworkNotificationManager;-><init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/app/NotificationManager;)V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    .line 1072
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x3

    const-string/jumbo v7, "network_switch_notification_daily_limit"

    invoke-static {v0, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1075
    .local v0, "dailyLimit":I
    iget-object v5, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object v7, v3

    .end local v3  # "protectedNetworks":[I
    .local v7, "protectedNetworks":[I
    const-wide/32 v2, 0xea60

    const-string/jumbo v15, "network_switch_notification_rate_limit_millis"

    invoke-static {v5, v15, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 1078
    .local v2, "rateLimit":J
    new-instance v5, Lcom/android/server/connectivity/LingerMonitor;

    iget-object v15, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v4

    .end local v4  # "intentFilter":Landroid/content/IntentFilter;
    .local v17, "intentFilter":Landroid/content/IntentFilter;
    iget-object v4, v1, Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    move-object/from16 v19, v5

    move-object/from16 v20, v15

    move-object/from16 v21, v4

    move/from16 v22, v0

    move-wide/from16 v23, v2

    invoke-direct/range {v19 .. v24}, Lcom/android/server/connectivity/LingerMonitor;-><init>(Landroid/content/Context;Lcom/android/server/connectivity/NetworkNotificationManager;IJ)V

    iput-object v5, v1, Lcom/android/server/ConnectivityService;->mLingerMonitor:Lcom/android/server/connectivity/LingerMonitor;

    .line 1080
    iget-object v4, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    new-instance v15, Lcom/android/server/-$$Lambda$ConnectivityService$SFqiR4Pfksb1C7csMC3uNxCllR8;

    invoke-direct {v15, v1}, Lcom/android/server/-$$Lambda$ConnectivityService$SFqiR4Pfksb1C7csMC3uNxCllR8;-><init>(Lcom/android/server/ConnectivityService;)V

    invoke-virtual {v1, v4, v5, v15}, Lcom/android/server/ConnectivityService;->createMultinetworkPolicyTracker(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/net/util/MultinetworkPolicyTracker;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/ConnectivityService;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    .line 1082
    iget-object v4, v1, Lcom/android/server/ConnectivityService;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {v4}, Landroid/net/util/MultinetworkPolicyTracker;->start()V

    .line 1084
    new-instance v4, Lcom/android/server/connectivity/MultipathPolicyTracker;

    iget-object v5, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v15, v1, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-direct {v4, v5, v15}, Lcom/android/server/connectivity/MultipathPolicyTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v4, v1, Lcom/android/server/ConnectivityService;->mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;

    .line 1086
    new-instance v4, Lcom/android/server/connectivity/DnsManager;

    iget-object v5, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v15, v1, Lcom/android/server/ConnectivityService;->mDnsResolver:Landroid/net/IDnsResolver;

    move/from16 v19, v0

    .end local v0  # "dailyLimit":I
    .local v19, "dailyLimit":I
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    invoke-direct {v4, v5, v15, v0}, Lcom/android/server/connectivity/DnsManager;-><init>(Landroid/content/Context;Landroid/net/IDnsResolver;Lcom/android/server/connectivity/MockableSystemProperties;)V

    iput-object v4, v1, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    .line 1087
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->registerPrivateDnsSettingsCallbacks()V

    .line 1088
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ConnectivityService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;

    .line 241
    iget v0, p0, Lcom/android/server/ConnectivityService;->mPreferredSubId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;

    .line 241
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/Tethering;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;

    .line 241
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # Landroid/os/Message;

    .line 241
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleAsyncChannelHalfConnect(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;

    .line 241
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # Landroid/os/Message;

    .line 241
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleAsyncChannelDisconnected(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1400()Z
    .registers 1

    .line 241
    sget-boolean v0, Lcom/android/server/ConnectivityService;->VDBG:Z

    return v0
.end method

.method static synthetic access$1500(I)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # I

    .line 241
    invoke-static {p0}, Lcom/android/server/ConnectivityService;->eventName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600()Ljava/lang/String;
    .registers 1

    .line 241
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p3, "x3"  # Landroid/net/NetworkCapabilities;

    .line 241
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "x2"  # Landroid/net/NetworkInfo;

    .line 241
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->updateNetworkInfo(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "x2"  # I

    .line 241
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->updateNetworkScore(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"  # Ljava/lang/String;

    .line 241
    invoke-static {p0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;

    .line 241
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "x2"  # Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    .line 241
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->showNetworkNotification(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 241
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 241
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleFreshlyValidatedNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;

    .line 241
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 241
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->updateInetCondition(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # Landroid/net/Network;

    .line 241
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handlePromptUnvalidated(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 241
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleNetworkUnvalidated(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic access$2800(I)Z
    .registers 2
    .param p0, "x0"  # I

    .line 241
    invoke-static {p0}, Lcom/android/server/ConnectivityService;->toBool(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 241
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/ConnectivityService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 5
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # Ljava/io/FileDescriptor;
    .param p2, "x2"  # Ljava/io/PrintWriter;
    .param p3, "x3"  # [Ljava/lang/String;
    .param p4, "x4"  # Z

    .line 241
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/ConnectivityService;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/shared/PrivateDnsConfig;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "x2"  # Landroid/net/shared/PrivateDnsConfig;

    .line 241
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->updatePrivateDns(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/shared/PrivateDnsConfig;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$LegacyTypeTracker;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;

    .line 241
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/ConnectivityService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;

    .line 241
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)Z
    .registers 4
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "x2"  # I

    .line 241
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->isLiveNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 241
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleLingerComplete(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;IZ)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # Landroid/net/NetworkRequest;
    .param p2, "x2"  # I
    .param p3, "x3"  # Z

    .line 241
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;IZ)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;

    .line 241
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/ConnectivityService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;

    .line 241
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceSettingsPermission()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/ConnectivityService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # I

    .line 241
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkTransitionWakelock(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/ConnectivityService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;

    .line 241
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # Landroid/net/ProxyInfo;

    .line 241
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    .line 241
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkFactory(Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # Landroid/os/Messenger;

    .line 241
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleUnregisterNetworkFactory(Landroid/os/Messenger;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/INetworkMonitor;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "x2"  # Landroid/net/INetworkMonitor;

    .line 241
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/INetworkMonitor;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 241
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # Landroid/os/Message;

    .line 241
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequestWithIntent(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 241
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleTimedOutNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/ConnectivityService;Landroid/app/PendingIntent;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # Landroid/app/PendingIntent;
    .param p2, "x2"  # I

    .line 241
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequestWithIntent(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/ConnectivityService;Landroid/net/Network;ZZ)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # Landroid/net/Network;
    .param p2, "x2"  # Z
    .param p3, "x3"  # Z

    .line 241
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->handleSetAcceptUnvalidated(Landroid/net/Network;ZZ)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/ConnectivityService;Landroid/net/Network;ZZ)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # Landroid/net/Network;
    .param p2, "x2"  # Z
    .param p3, "x3"  # Z

    .line 241
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->handleSetAcceptPartialConnectivity(Landroid/net/Network;ZZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/ConnectivityService;)Landroid/net/NetworkRequest;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;

    .line 241
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # Landroid/net/Network;

    .line 241
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleSetAvoidUnvalidated(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/ConnectivityService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;

    .line 241
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->handleConfigureAlwaysOnNetworks()V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/ConnectivityService;Landroid/net/Network;IZ)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # Landroid/net/Network;
    .param p2, "x2"  # I
    .param p3, "x3"  # Z

    .line 241
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->handleReportNetworkConnectivity(Landroid/net/Network;IZ)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/ConnectivityService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;

    .line 241
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->handlePrivateDnsSettingsChanged()V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;

    .line 241
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handlePrivateDnsValidationUpdate(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/ConnectivityService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;

    .line 241
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->handleUpdateTCPBuffersfor5G()V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/ConnectivityService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # I

    .line 241
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleUpdateActiveDataSubId(I)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/ConnectivityService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;

    .line 241
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->ensureRunningOnConnectivityServiceThread()V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/ConnectivityService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # I

    .line 241
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserStart(I)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/ConnectivityService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # I

    .line 241
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserStop(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/ConnectivityService;IZJ)V
    .registers 5
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Z
    .param p3, "x3"  # J

    .line 241
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/ConnectivityService;->sendDataActivityBroadcast(IZJ)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/ConnectivityService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # I

    .line 241
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserAdded(I)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/ConnectivityService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # I

    .line 241
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserRemoved(I)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/ConnectivityService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # I

    .line 241
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserUnlocked(I)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/ConnectivityService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # I

    .line 241
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->onPackageAdded(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/ConnectivityService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # I

    .line 241
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->onPackageReplaced(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/ConnectivityService;Ljava/lang/String;IZ)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # I
    .param p3, "x3"  # Z

    .line 241
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->onPackageRemoved(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # Landroid/net/NetworkRequest;

    .line 241
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->ensureNetworkRequestHasType(Landroid/net/NetworkRequest;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;

    .line 241
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$700(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"  # Ljava/lang/String;

    .line 241
    invoke-static {p0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/ConnectivityService;I)Lcom/android/server/connectivity/NetworkAgentInfo;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # I

    .line 241
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetId(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/ConnectivityService;IZLjava/lang/String;I)V
    .registers 5
    .param p0, "x0"  # Lcom/android/server/ConnectivityService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Z
    .param p3, "x3"  # Ljava/lang/String;
    .param p4, "x4"  # I

    .line 241
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/ConnectivityService;->handleNat64PrefixEvent(IZLjava/lang/String;I)V

    return-void
.end method

.method private addLegacyRouteToHost(Landroid/net/LinkProperties;Ljava/net/InetAddress;II)Z
    .registers 9
    .param p1, "lp"  # Landroid/net/LinkProperties;
    .param p2, "addr"  # Ljava/net/InetAddress;
    .param p3, "netId"  # I
    .param p4, "uid"  # I

    .line 1835
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v0

    .line 1836
    .local v0, "bestRoute":Landroid/net/RouteInfo;
    if-nez v0, :cond_13

    .line 1837
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v0

    goto :goto_2e

    .line 1839
    :cond_13
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v1

    .line 1840
    .local v1, "iface":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1842
    invoke-static {p2, v1}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v0

    goto :goto_2e

    .line 1846
    :cond_26
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {p2, v2, v1}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v0

    .line 1849
    .end local v1  # "iface":Ljava/lang/String;
    :goto_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding legacy route "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for UID/PID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1850
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1849
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1852
    :try_start_56
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p3, v0, p4}, Landroid/os/INetworkManagementService;->addLegacyRouteForNetId(ILandroid/net/RouteInfo;I)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5b} :catch_5e

    .line 1857
    nop

    .line 1858
    const/4 v1, 0x1

    return v1

    .line 1853
    :catch_5e
    move-exception v1

    .line 1855
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception trying to add a route: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1856
    const/4 v2, 0x0

    return v2
.end method

.method private callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V
    .registers 10
    .param p1, "nri"  # Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .param p2, "networkAgent"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p3, "notificationType"  # I
    .param p4, "arg1"  # I

    .line 6242
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->messenger:Landroid/os/Messenger;

    if-nez v0, :cond_5

    .line 6243
    return-void

    .line 6245
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6247
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Landroid/net/NetworkRequest;

    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {v1, v2}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkRequest;)V

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->putParcelable(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    .line 6248
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 6249
    .local v1, "msg":Landroid/os/Message;
    const v2, 0x80005

    if-eq p3, v2, :cond_22

    .line 6250
    iget-object v2, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->putParcelable(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    .line 6252
    :cond_22
    sparse-switch p3, :sswitch_data_b4

    goto :goto_69

    .line 6277
    :sswitch_26
    iget-object v2, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    if-eqz p4, :cond_2c

    const/4 v3, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v3, 0x0

    :goto_2d
    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/ConnectivityService;->maybeLogBlockedStatusChanged(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Landroid/net/Network;Z)V

    .line 6278
    iput p4, v1, Landroid/os/Message;->arg1:I

    goto :goto_69

    .line 6273
    :sswitch_33
    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->putParcelable(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    .line 6274
    goto :goto_69

    .line 6267
    :sswitch_3e
    iget-object v2, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget v3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPid:I

    iget v4, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/ConnectivityService;->networkCapabilitiesRestrictedForCallerPermissions(Landroid/net/NetworkCapabilities;II)Landroid/net/NetworkCapabilities;

    move-result-object v2

    .line 6269
    .local v2, "nc":Landroid/net/NetworkCapabilities;
    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->putParcelable(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    .line 6270
    goto :goto_69

    .line 6262
    .end local v2  # "nc":Landroid/net/NetworkCapabilities;
    :sswitch_4c
    iput p4, v1, Landroid/os/Message;->arg1:I

    .line 6263
    goto :goto_69

    .line 6254
    :sswitch_4f
    iget-object v2, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget v3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPid:I

    iget v4, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/ConnectivityService;->networkCapabilitiesRestrictedForCallerPermissions(Landroid/net/NetworkCapabilities;II)Landroid/net/NetworkCapabilities;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->putParcelable(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    .line 6256
    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->putParcelable(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    .line 6258
    iput p4, v1, Landroid/os/Message;->arg1:I

    .line 6259
    nop

    .line 6282
    :goto_69
    iput p3, v1, Landroid/os/Message;->what:I

    .line 6283
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 6285
    :try_start_6e
    sget-boolean v2, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v2, :cond_95

    .line 6286
    invoke-static {p3}, Landroid/net/ConnectivityManager;->getCallbackName(I)Ljava/lang/String;

    move-result-object v2

    .line 6287
    .local v2, "notification":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sending notification "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6289
    .end local v2  # "notification":Ljava/lang/String;
    :cond_95
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_9a} :catch_9b

    .line 6293
    goto :goto_b2

    .line 6290
    :catch_9b
    move-exception v2

    .line 6292
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException caught trying to send a callback msg for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 6294
    .end local v2  # "e":Landroid/os/RemoteException;
    :goto_b2
    return-void

    nop

    :sswitch_data_b4
    .sparse-switch
        0x80002 -> :sswitch_4f
        0x80003 -> :sswitch_4c
        0x80006 -> :sswitch_3e
        0x80007 -> :sswitch_33
        0x8000b -> :sswitch_26
    .end sparse-switch
.end method

.method private varargs checkAnyPermissionOf(II[Ljava/lang/String;)Z
    .registers 9
    .param p1, "pid"  # I
    .param p2, "uid"  # I
    .param p3, "permissions"  # [Ljava/lang/String;

    .line 2013
    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_14

    aget-object v3, p3, v2

    .line 2014
    .local v3, "permission":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_11

    .line 2015
    const/4 v0, 0x1

    return v0

    .line 2013
    .end local v3  # "permission":Ljava/lang/String;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2018
    :cond_14
    return v1
.end method

.method private varargs checkAnyPermissionOf([Ljava/lang/String;)Z
    .registers 7
    .param p1, "permissions"  # [Ljava/lang/String;

    .line 2004
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_14

    aget-object v3, p1, v2

    .line 2005
    .local v3, "permission":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_11

    .line 2006
    const/4 v0, 0x1

    return v0

    .line 2004
    .end local v3  # "permission":Ljava/lang/String;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2009
    :cond_14
    return v1
.end method

.method private checkNetworkSignalStrengthWakeupPermission(II)Z
    .registers 5
    .param p1, "pid"  # I
    .param p2, "uid"  # I

    .line 2096
    const-string v0, "android.permission.NETWORK_SIGNAL_STRENGTH_WAKEUP"

    const-string v1, "android.permission.MAINLINE_NETWORK_STACK"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/ConnectivityService;->checkAnyPermissionOf(II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkNetworkStackPermission()Z
    .registers 3

    .line 2090
    const-string v0, "android.permission.NETWORK_STACK"

    const-string v1, "android.permission.MAINLINE_NETWORK_STACK"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->checkAnyPermissionOf([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkSettingsPermission()Z
    .registers 3

    .line 2051
    const-string v0, "android.permission.NETWORK_SETTINGS"

    const-string v1, "android.permission.MAINLINE_NETWORK_STACK"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->checkAnyPermissionOf([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkSettingsPermission(II)Z
    .registers 5
    .param p1, "pid"  # I
    .param p2, "uid"  # I

    .line 2057
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 2059
    const-string v1, "android.permission.MAINLINE_NETWORK_STACK"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 2057
    :goto_18
    return v0
.end method

.method private clearNetworkForRequest(I)V
    .registers 4
    .param p1, "requestId"  # I

    .line 5608
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5609
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 5610
    monitor-exit v0

    .line 5611
    return-void

    .line 5610
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private createDefaultInternetRequestForTransport(ILandroid/net/NetworkRequest$Type;)Landroid/net/NetworkRequest;
    .registers 7
    .param p1, "transportType"  # I
    .param p2, "type"  # Landroid/net/NetworkRequest$Type;

    .line 1124
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 1125
    .local v0, "netCap":Landroid/net/NetworkCapabilities;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1126
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1127
    const/4 v1, -0x1

    if-le p1, v1, :cond_15

    .line 1128
    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 1130
    :cond_15
    new-instance v2, Landroid/net/NetworkRequest;

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    move-result v3

    invoke-direct {v2, v0, v1, v3, p2}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V

    return-object v2
.end method

.method private static createDefaultNetworkCapabilitiesForUid(I)Landroid/net/NetworkCapabilities;
    .registers 3
    .param p0, "uid"  # I

    .line 1114
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 1115
    .local v0, "netCap":Landroid/net/NetworkCapabilities;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1116
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1117
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 1118
    invoke-virtual {v0, p0}, Landroid/net/NetworkCapabilities;->setSingleUid(I)Landroid/net/NetworkCapabilities;

    .line 1119
    return-object v0
.end method

.method private createNativeNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .registers 7
    .param p1, "networkAgent"  # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3227
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_20

    .line 3228
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/net/INetd;

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v3, Landroid/net/Network;->netId:I

    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    if-eqz v4, :cond_1b

    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v4, v4, Landroid/net/NetworkMisc;->allowBypass:Z

    if-nez v4, :cond_19

    goto :goto_1b

    :cond_19
    move v4, v0

    goto :goto_1c

    :cond_1b
    :goto_1b
    move v4, v2

    :goto_1c
    invoke-interface {v1, v3, v4}, Landroid/net/INetd;->networkCreateVpn(IZ)V

    goto :goto_2f

    .line 3232
    :cond_20
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/net/INetd;

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v3, Landroid/net/Network;->netId:I

    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 3233
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->getNetworkPermission(Landroid/net/NetworkCapabilities;)I

    move-result v4

    .line 3232
    invoke-interface {v1, v3, v4}, Landroid/net/INetd;->networkCreatePhysical(II)V

    .line 3235
    :goto_2f
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDnsResolver:Landroid/net/IDnsResolver;

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v3, Landroid/net/Network;->netId:I

    invoke-interface {v1, v3}, Landroid/net/IDnsResolver;->createNetworkCache(I)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_38} :catch_39
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_38} :catch_39

    .line 3236
    return v2

    .line 3237
    :catch_39
    move-exception v1

    .line 3238
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error creating network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v3, Landroid/net/Network;->netId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3239
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3238
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 3240
    return v0
.end method

.method private createVpnInfo(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnInfo;
    .registers 7
    .param p1, "vpn"  # Lcom/android/server/connectivity/Vpn;

    .line 4571
    invoke-virtual {p1}, Lcom/android/server/connectivity/Vpn;->getVpnInfo()Lcom/android/internal/net/VpnInfo;

    move-result-object v0

    .line 4572
    .local v0, "info":Lcom/android/internal/net/VpnInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 4573
    return-object v1

    .line 4575
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/connectivity/Vpn;->getUnderlyingNetworks()[Landroid/net/Network;

    move-result-object v2

    .line 4578
    .local v2, "underlyingNetworks":[Landroid/net/Network;
    if-nez v2, :cond_25

    .line 4579
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v3

    .line 4580
    .local v3, "defaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v3, :cond_38

    iget-object v4, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v4, :cond_38

    .line 4581
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/net/VpnInfo;->primaryUnderlyingIface:Ljava/lang/String;

    goto :goto_38

    .line 4583
    .end local v3  # "defaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_25
    array-length v3, v2

    if-lez v3, :cond_38

    .line 4584
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {p0, v3}, Lcom/android/server/ConnectivityService;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v3

    .line 4585
    .local v3, "linkProperties":Landroid/net/LinkProperties;
    if-eqz v3, :cond_39

    .line 4586
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/net/VpnInfo;->primaryUnderlyingIface:Ljava/lang/String;

    goto :goto_39

    .line 4583
    .end local v3  # "linkProperties":Landroid/net/LinkProperties;
    :cond_38
    :goto_38
    nop

    .line 4589
    :cond_39
    :goto_39
    iget-object v3, v0, Lcom/android/internal/net/VpnInfo;->primaryUnderlyingIface:Ljava/lang/String;

    if-nez v3, :cond_3e

    goto :goto_3f

    :cond_3e
    move-object v1, v0

    :goto_3f
    return-object v1
.end method

.method private destroyNativeNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 5
    .param p1, "networkAgent"  # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3246
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/net/INetd;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    invoke-interface {v0, v1}, Landroid/net/INetd;->networkDestroy(I)V

    .line 3247
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDnsResolver:Landroid/net/IDnsResolver;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    invoke-interface {v0, v1}, Landroid/net/IDnsResolver;->destroyNetworkCache(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_12} :catch_13

    .line 3250
    goto :goto_28

    .line 3248
    :catch_13
    move-exception v0

    .line 3249
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception destroying network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 3251
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_28
    return-void
.end method

.method private disallowedBecauseSystemCaller()Z
    .registers 4

    .line 1752
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->isSystem(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "ro.product.first_api_level"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x1c

    if-le v0, v2, :cond_1d

    .line 1754
    const-string v0, "This method exists only for app backwards compatibility and must not be called by system services."

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1756
    const/4 v0, 0x1

    return v0

    .line 1758
    :cond_1d
    return v1
.end method

.method private disconnectAndDestroyNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 10
    .param p1, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " got DISCONNECTED, was satisfying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3147
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(I)V

    .line 3153
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 3154
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v2, v1, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 3157
    :cond_38
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    .line 3158
    .local v0, "wasDefault":Z
    const/4 v2, 0x0

    if-eqz v0, :cond_50

    .line 3159
    iput v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 3164
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 3165
    .local v3, "now":J
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->metricsLogger()Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;->defaultNetworkMetrics()Lcom/android/server/connectivity/DefaultNetworkMetrics;

    move-result-object v5

    invoke-virtual {v5, v3, v4, v1, p1}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->logDefaultNetworkEvent(JLcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3167
    .end local v3  # "now":J
    :cond_50
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChangedForNetworkStats()V

    .line 3172
    const v3, 0x80004

    invoke-virtual {p0, p1, v3}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 3173
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    const/16 v4, -0x14

    invoke-virtual {v3, p1, v4}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopAllKeepalives(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 3174
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3176
    .local v4, "iface":Ljava/lang/String;
    iget-object v5, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v4, v5, v2}, Lcom/android/server/ConnectivityService;->wakeupModifyInterface(Ljava/lang/String;Landroid/net/NetworkCapabilities;Z)V

    .line 3177
    .end local v4  # "iface":Ljava/lang/String;
    goto :goto_6a

    .line 3178
    :cond_7c
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor()Landroid/net/NetworkMonitorManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkMonitorManager;->notifyNetworkDisconnected()Z

    .line 3179
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3180
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v3}, Lcom/android/server/connectivity/Nat464Xlat;->update()V

    .line 3181
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v3

    .line 3184
    :try_start_92
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    iget-object v5, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v5, v5, Landroid/net/Network;->netId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 3185
    monitor-exit v3
    :try_end_9c
    .catchall {:try_start_92 .. :try_end_9c} :catchall_116

    .line 3187
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9d
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v4

    if-ge v3, v4, :cond_c4

    .line 3188
    invoke-virtual {p1, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v4

    .line 3189
    .local v4, "request":Landroid/net/NetworkRequest;
    iget v5, v4, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityService;->getNetworkForRequest(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v5

    .line 3190
    .local v5, "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v5, :cond_c1

    iget-object v6, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v6, v6, Landroid/net/Network;->netId:I

    iget-object v7, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v7, v7, Landroid/net/Network;->netId:I

    if-ne v6, v7, :cond_c1

    .line 3191
    iget v6, v4, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {p0, v6}, Lcom/android/server/ConnectivityService;->clearNetworkForRequest(I)V

    .line 3192
    invoke-direct {p0, v4, v1}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3187
    .end local v4  # "request":Landroid/net/NetworkRequest;
    .end local v5  # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_c1
    add-int/lit8 v3, v3, 0x1

    goto :goto_9d

    .line 3195
    .end local v3  # "i":I
    :cond_c4
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->clearLingerState()V

    .line 3196
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    iget v3, v3, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {p1, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSatisfyingRequest(I)Z

    move-result v3

    if-eqz v3, :cond_de

    .line 3197
    invoke-direct {p0, v1, p1}, Lcom/android/server/ConnectivityService;->updateDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3198
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3199
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->ensureNetworkTransitionWakelock(Ljava/lang/String;)V

    .line 3201
    :cond_de
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v3, p1, v0}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    .line 3202
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-nez v3, :cond_ef

    .line 3203
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->updateAllVpnsCapabilities()V

    .line 3205
    :cond_ef
    invoke-direct {p0, v1, v2}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 3206
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLingerMonitor:Lcom/android/server/connectivity/LingerMonitor;

    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/LingerMonitor;->noteDisconnect(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3207
    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-eqz v1, :cond_105

    .line 3216
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->destroyNativeNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3217
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/DnsManager;->removeNetwork(Landroid/net/Network;)V

    .line 3219
    :cond_105
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v1

    .line 3220
    :try_start_108
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v3, Landroid/net/Network;->netId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 3221
    monitor-exit v1

    .line 3222
    return-void

    .line 3221
    :catchall_113
    move-exception v2

    monitor-exit v1
    :try_end_115
    .catchall {:try_start_108 .. :try_end_115} :catchall_113

    throw v2

    .line 3185
    :catchall_116
    move-exception v1

    :try_start_117
    monitor-exit v3
    :try_end_118
    .catchall {:try_start_117 .. :try_end_118} :catchall_116

    throw v1
.end method

.method private doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 16
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "writer"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;
    .param p4, "asProto"  # Z

    .line 2440
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2441
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v1

    if-nez v1, :cond_12

    return-void

    .line 2442
    :cond_12
    if-eqz p4, :cond_15

    return-void

    .line 2444
    :cond_15
    const-string v1, "--diag"

    invoke-static {p3, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2445
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->dumpNetworkDiagnostics(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2446
    return-void

    .line 2447
    :cond_21
    const-string/jumbo v1, "tethering"

    invoke-static {p3, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 2448
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v1, p1, v0, p3}, Lcom/android/server/connectivity/Tethering;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2449
    return-void

    .line 2450
    :cond_30
    const-string/jumbo v1, "networks"

    invoke-static {p3, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 2451
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->dumpNetworks(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2452
    return-void

    .line 2453
    :cond_3d
    const-string/jumbo v1, "requests"

    invoke-static {p3, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 2454
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->dumpNetworkRequests(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2455
    return-void

    .line 2458
    :cond_4a
    const-string v1, "NetworkFactories for:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2459
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_59
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    .line 2460
    .local v2, "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2461
    .end local v2  # "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    goto :goto_59

    .line 2462
    :cond_7c
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2463
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2465
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 2466
    .local v1, "defaultNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    const-string v2, "Active default network: "

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2467
    if-nez v1, :cond_94

    .line 2468
    const-string/jumbo v2, "none"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9b

    .line 2470
    :cond_94
    iget-object v2, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 2472
    :goto_9b
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2474
    const-string v2, "Current Networks:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2475
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2476
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->dumpNetworks(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2477
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2478
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2480
    const-string v2, "Restrict background: "

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2481
    iget-boolean v2, p0, Lcom/android/server/ConnectivityService;->mRestrictBackground:Z

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 2482
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2484
    const-string v2, "Status for known UIDs:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2485
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2486
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    .line 2487
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_cb
    const/4 v4, 0x0

    if-ge v3, v2, :cond_10c

    .line 2490
    :try_start_ce
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 2491
    .local v5, "uid":I
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 2492
    .local v4, "uidRules":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " rules="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_fa
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_ce .. :try_end_fa} :catch_102
    .catch Ljava/util/ConcurrentModificationException; {:try_start_ce .. :try_end_fa} :catch_fb

    .end local v4  # "uidRules":I
    .end local v5  # "uid":I
    goto :goto_108

    .line 2495
    :catch_fb
    move-exception v4

    .line 2496
    .local v4, "e":Ljava/util/ConcurrentModificationException;
    const-string v5, "  ConcurrentModificationException"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_109

    .line 2493
    .end local v4  # "e":Ljava/util/ConcurrentModificationException;
    :catch_102
    move-exception v4

    .line 2494
    .local v4, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v5, "  ArrayIndexOutOfBoundsException"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2497
    .end local v4  # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_108
    nop

    .line 2487
    :goto_109
    add-int/lit8 v3, v3, 0x1

    goto :goto_cb

    .line 2499
    .end local v3  # "i":I
    :cond_10c
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2500
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2502
    const-string v3, "Network Requests:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2503
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2504
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->dumpNetworkRequests(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2505
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2506
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2508
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v3, v0}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2510
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2511
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v3, p1, v0, p3}, Lcom/android/server/connectivity/Tethering;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2513
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2514
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    invoke-virtual {v3, v0}, Lcom/android/server/connectivity/KeepaliveTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2516
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2517
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->dumpAvoidBadWifiSettings(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2519
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2520
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-virtual {v3, v0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2522
    const-string v3, "--short"

    invoke-static {p3, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_267

    .line 2523
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2524
    const-string/jumbo v3, "mNetworkRequestInfoLogs (most recent first):"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2525
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2526
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    invoke-virtual {v3, p1, v0, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2527
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2529
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2530
    const-string/jumbo v3, "mNetworkInfoBlockingLogs (most recent first):"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2531
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2532
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkInfoBlockingLogs:Landroid/util/LocalLog;

    invoke-virtual {v3, p1, v0, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2533
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2535
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2536
    const-string v3, "NetTransition WakeLock activity (most recent first):"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2537
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2538
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "total acquisitions: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockAcquisitions:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2539
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "total releases: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockReleases:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2540
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cumulative duration: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockDurationMs:J

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "s"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2541
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "longest duration: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/ConnectivityService;->mMaxWakelockDurationMs:J

    div-long/2addr v5, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "s"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2542
    iget v3, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockAcquisitions:I

    iget v5, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockReleases:I

    if-le v3, v5, :cond_215

    .line 2543
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v9, p0, Lcom/android/server/ConnectivityService;->mLastWakeLockAcquireTimestamp:J

    sub-long/2addr v5, v9

    .line 2544
    .local v5, "duration":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currently holding WakeLock for: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v7, v5, v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "s"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2546
    .end local v5  # "duration":J
    :cond_215
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mWakelockLogs:Landroid/util/LocalLog;

    invoke-virtual {v3, p1, v0, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2548
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2549
    const-string v3, "bandwidth update requests (by uid):"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2550
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2551
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mBandwidthRequests:Landroid/util/SparseArray;

    monitor-enter v3

    .line 2552
    nop

    .local v4, "i":I
    :goto_229
    :try_start_229
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mBandwidthRequests:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_25c

    .line 2553
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mBandwidthRequests:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mBandwidthRequests:Landroid/util/SparseArray;

    .line 2554
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2553
    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2552
    add-int/lit8 v4, v4, 0x1

    goto :goto_229

    .line 2556
    .end local v4  # "i":I
    :cond_25c
    monitor-exit v3
    :try_end_25d
    .catchall {:try_start_229 .. :try_end_25d} :catchall_264

    .line 2557
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2559
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_267

    .line 2556
    :catchall_264
    move-exception v4

    :try_start_265
    monitor-exit v3
    :try_end_266
    .catchall {:try_start_265 .. :try_end_266} :catchall_264

    throw v4

    .line 2562
    :cond_267
    :goto_267
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2563
    const-string v3, "NetworkStackClient logs:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2564
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2565
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/net/NetworkStackClient;->dump(Ljava/io/PrintWriter;)V

    .line 2566
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2568
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2569
    const-string v3, "Permission Monitor:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2570
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2571
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-virtual {v3, v0}, Lcom/android/server/connectivity/PermissionMonitor;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2572
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2573
    return-void
.end method

.method private dumpAvoidBadWifiSettings(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 10
    .param p1, "pw"  # Lcom/android/internal/util/IndentingPrintWriter;

    .line 3720
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {v0}, Landroid/net/util/MultinetworkPolicyTracker;->configRestrictsAvoidBadWifi()Z

    move-result v0

    .line 3721
    .local v0, "configRestrict":Z
    if-nez v0, :cond_e

    .line 3722
    const-string v1, "Bad Wi-Fi avoidance: unrestricted"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3723
    return-void

    .line 3726
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad Wi-Fi avoidance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->avoidBadWifi()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3727
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Config restrict:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3730
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {v1}, Landroid/net/util/MultinetworkPolicyTracker;->getAvoidBadWifiSetting()Ljava/lang/String;

    move-result-object v1

    .line 3733
    .local v1, "value":Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 3734
    const-string v2, "get stuck"

    .local v2, "description":Ljava/lang/String;
    goto :goto_70

    .line 3735
    .end local v2  # "description":Ljava/lang/String;
    :cond_4e
    if-nez v1, :cond_54

    .line 3736
    const-string/jumbo v2, "prompt"

    .restart local v2  # "description":Ljava/lang/String;
    goto :goto_70

    .line 3737
    .end local v2  # "description":Ljava/lang/String;
    :cond_54
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 3738
    const-string v2, "avoid"

    .restart local v2  # "description":Ljava/lang/String;
    goto :goto_70

    .line 3740
    .end local v2  # "description":Ljava/lang/String;
    :cond_5f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (?)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3742
    .restart local v2  # "description":Ljava/lang/String;
    :goto_70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User setting:      "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3743
    const-string v3, "Network overrides:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3744
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3745
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->networksSortedById()[Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_92
    if-ge v5, v4, :cond_a4

    aget-object v6, v3, v5

    .line 3746
    .local v6, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-boolean v7, v6, Lcom/android/server/connectivity/NetworkAgentInfo;->avoidUnvalidated:Z

    if-eqz v7, :cond_a1

    .line 3747
    invoke-virtual {v6}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3745
    .end local v6  # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_a1
    add-int/lit8 v5, v5, 0x1

    goto :goto_92

    .line 3750
    :cond_a4
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3751
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3752
    return-void
.end method

.method private dumpNetworkDiagnostics(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 14
    .param p1, "pw"  # Lcom/android/internal/util/IndentingPrintWriter;

    .line 2417
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2418
    .local v0, "netDiags":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/NetworkDiagnostics;>;"
    const-wide/16 v1, 0x1388

    .line 2419
    .local v1, "DIAG_TIME_MS":J
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->networksSortedById()[Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_d
    if-ge v5, v4, :cond_27

    aget-object v6, v3, v5

    .line 2421
    .local v6, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    new-instance v7, Lcom/android/server/connectivity/NetworkDiagnostics;

    iget-object v8, v6, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    new-instance v9, Landroid/net/LinkProperties;

    iget-object v10, v6, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v9, v10}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    const-wide/16 v10, 0x1388

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/android/server/connectivity/NetworkDiagnostics;-><init>(Landroid/net/Network;Landroid/net/LinkProperties;J)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2419
    .end local v6  # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 2427
    :cond_27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/NetworkDiagnostics;

    .line 2428
    .local v4, "netDiag":Lcom/android/server/connectivity/NetworkDiagnostics;
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2429
    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkDiagnostics;->waitForMeasurements()V

    .line 2430
    invoke-virtual {v4, p1}, Lcom/android/server/connectivity/NetworkDiagnostics;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2431
    .end local v4  # "netDiag":Lcom/android/server/connectivity/NetworkDiagnostics;
    goto :goto_2b

    .line 2432
    :cond_41
    return-void
.end method

.method private dumpNetworkRequests(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7
    .param p1, "pw"  # Lcom/android/internal/util/IndentingPrintWriter;

    .line 2599
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->requestsSortedById()[Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 2600
    .local v3, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    invoke-virtual {v3}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2599
    .end local v3  # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 2602
    :cond_14
    return-void
.end method

.method private dumpNetworks(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 10
    .param p1, "pw"  # Lcom/android/internal/util/IndentingPrintWriter;

    .line 2576
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->networksSortedById()[Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_80

    aget-object v4, v0, v3

    .line 2577
    .local v4, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2578
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2579
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 2581
    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->numForegroundNetworkRequests()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 2582
    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v6

    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->numRequestNetworkRequests()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    .line 2583
    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->numBackgroundNetworkRequests()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 2584
    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 2579
    const-string v6, "Requests: REQUEST:%d LISTEN:%d BACKGROUND_REQUEST:%d total:%d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2585
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2586
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_55
    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v6

    if-ge v5, v6, :cond_69

    .line 2587
    invoke-virtual {v4, v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkRequest;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2586
    add-int/lit8 v5, v5, 0x1

    goto :goto_55

    .line 2589
    .end local v5  # "i":I
    :cond_69
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2590
    const-string v5, "Lingered:"

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2591
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2592
    invoke-virtual {v4, p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->dumpLingerTimers(Ljava/io/PrintWriter;)V

    .line 2593
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2594
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2576
    .end local v4  # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 2596
    :cond_80
    return-void
.end method

.method private static encodeBool(Z)I
    .registers 1
    .param p0, "b"  # Z

    .line 7283
    return p0
.end method

.method private enforceAccessPermission()V
    .registers 4

    .line 2035
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2038
    return-void
.end method

.method private enforceActiveVpnOrNetworkStackPermission()Lcom/android/server/connectivity/Vpn;
    .registers 3

    .line 7362
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->checkNetworkStackPermission()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 7363
    const/4 v0, 0x0

    return-object v0

    .line 7365
    :cond_8
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 7366
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getVpnIfOwner()Lcom/android/server/connectivity/Vpn;

    move-result-object v1

    .line 7367
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v1, :cond_13

    .line 7368
    monitor-exit v0

    return-object v1

    .line 7370
    .end local v1  # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_1c

    .line 7371
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "App must either be an active VPN or have the NETWORK_STACK permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7370
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private varargs enforceAnyPermissionOf([Ljava/lang/String;)V
    .registers 5
    .param p1, "permissions"  # [Ljava/lang/String;

    .line 2022
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->checkAnyPermissionOf([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2026
    return-void

    .line 2023
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requires one of the following permissions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2024
    const-string v2, ", "

    invoke-static {v2, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceChangePermission()V
    .registers 2

    .line 2041
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->enforceChangePermission(Landroid/content/Context;)V

    .line 2042
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .registers 3

    .line 2070
    const-string v0, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v1, "android.permission.MAINLINE_NETWORK_STACK"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->enforceAnyPermissionOf([Ljava/lang/String;)V

    .line 2073
    return-void
.end method

.method private enforceConnectivityRestrictedNetworksPermission()V
    .registers 4

    .line 2103
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_USE_RESTRICTED_NETWORKS"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_9} :catch_a

    .line 2106
    return-void

    .line 2107
    :catch_a
    move-exception v0

    .line 2108
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 2109
    return-void
.end method

.method private enforceControlAlwaysOnVpnPermission()V
    .registers 4

    .line 2076
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONTROL_ALWAYS_ON_VPN"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2079
    return-void
.end method

.method private enforceCrossUserPermission(I)V
    .registers 5
    .param p1, "userId"  # I

    .line 1994
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 1996
    return-void

    .line 1998
    :cond_7
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2001
    return-void
.end method

.method private enforceInternetPermission()V
    .registers 4

    .line 2029
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2032
    return-void
.end method

.method private enforceKeepalivePermission()V
    .registers 4

    .line 2112
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.PACKET_KEEPALIVE_OFFLOAD"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2113
    return-void
.end method

.method private enforceMeteredApnPolicy(Landroid/net/NetworkCapabilities;)V
    .registers 5
    .param p1, "networkCapabilities"  # Landroid/net/NetworkCapabilities;

    .line 5396
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5397
    .local v0, "uid":I
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->isSystem(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 5399
    return-void

    .line 5401
    :cond_b
    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 5403
    return-void

    .line 5405
    :cond_14
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerInternal;->isUidRestrictedOnMeteredNetworks(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 5407
    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 5409
    :cond_1f
    return-void
.end method

.method private enforceNetworkRequestPermissions(Landroid/net/NetworkCapabilities;)V
    .registers 3
    .param p1, "networkCapabilities"  # Landroid/net/NetworkCapabilities;

    .line 5359
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 5360
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityRestrictedNetworksPermission()V

    goto :goto_f

    .line 5362
    :cond_c
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 5364
    :goto_f
    return-void
.end method

.method private enforceNetworkStackSettingsOrSetup()V
    .registers 5

    .line 2082
    const-string v0, "android.permission.NETWORK_SETTINGS"

    const-string v1, "android.permission.NETWORK_SETUP_WIZARD"

    const-string v2, "android.permission.NETWORK_STACK"

    const-string v3, "android.permission.MAINLINE_NETWORK_STACK"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->enforceAnyPermissionOf([Ljava/lang/String;)V

    .line 2087
    return-void
.end method

.method private enforceSettingsPermission()V
    .registers 3

    .line 2045
    const-string v0, "android.permission.NETWORK_SETTINGS"

    const-string v1, "android.permission.MAINLINE_NETWORK_STACK"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->enforceAnyPermissionOf([Ljava/lang/String;)V

    .line 2048
    return-void
.end method

.method private enforceTetherAccessPermission()V
    .registers 4

    .line 2064
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2067
    return-void
.end method

.method private ensureNetworkRequestHasType(Landroid/net/NetworkRequest;)V
    .registers 4
    .param p1, "request"  # Landroid/net/NetworkRequest;

    .line 5136
    iget-object v0, p1, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    sget-object v1, Landroid/net/NetworkRequest$Type;->NONE:Landroid/net/NetworkRequest$Type;

    if-eq v0, v1, :cond_7

    .line 5140
    return-void

    .line 5137
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All NetworkRequests in ConnectivityService must have a type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureNetworkTransitionWakelock(Ljava/lang/String;)V
    .registers 6
    .param p1, "forWhom"  # Ljava/lang/String;

    .line 4204
    monitor-enter p0

    .line 4205
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4206
    monitor-exit p0

    return-void

    .line 4208
    :cond_b
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4209
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/ConnectivityService;->mLastWakeLockAcquireTimestamp:J

    .line 4210
    iget v0, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockAcquisitions:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockAcquisitions:I

    .line 4211
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_44

    .line 4212
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mWakelockLogs:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACQUIRE for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 4213
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4214
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockTimeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4215
    return-void

    .line 4211
    .end local v0  # "msg":Landroid/os/Message;
    :catchall_44
    move-exception v0

    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v0
.end method

.method private ensureRequestableCapabilities(Landroid/net/NetworkCapabilities;)V
    .registers 6
    .param p1, "networkCapabilities"  # Landroid/net/NetworkCapabilities;

    .line 5214
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->describeFirstNonRequestableCapability()Ljava/lang/String;

    move-result-object v0

    .line 5215
    .local v0, "badCapability":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 5218
    return-void

    .line 5216
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot request network with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private ensureRunningOnConnectivityServiceThread()V
    .registers 4

    .line 5629
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-virtual {v0}, Lcom/android/server/ConnectivityService$InternalHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_11

    .line 5634
    return-void

    .line 5630
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not running on ConnectivityService thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5632
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureSufficientPermissionsForRequest(Landroid/net/NetworkCapabilities;II)V
    .registers 6
    .param p1, "nc"  # Landroid/net/NetworkCapabilities;
    .param p2, "callerPid"  # I
    .param p3, "callerUid"  # I

    .line 5224
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-direct {p0, p2, p3}, Lcom/android/server/ConnectivityService;->checkSettingsPermission(II)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_15

    .line 5225
    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Insufficient permissions to request a specific SSID"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5228
    :cond_15
    :goto_15
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 5229
    invoke-direct {p0, p2, p3}, Lcom/android/server/ConnectivityService;->checkNetworkSignalStrengthWakeupPermission(II)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_2a

    .line 5230
    :cond_22
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Insufficient permissions to request a specific signal strength"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5233
    :cond_2a
    :goto_2a
    return-void
.end method

.method private ensureValidNetworkSpecifier(Landroid/net/NetworkCapabilities;)V
    .registers 4
    .param p1, "nc"  # Landroid/net/NetworkCapabilities;

    .line 5271
    if-nez p1, :cond_3

    .line 5272
    return-void

    .line 5274
    :cond_3
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v0

    .line 5275
    .local v0, "ns":Landroid/net/NetworkSpecifier;
    if-nez v0, :cond_a

    .line 5276
    return-void

    .line 5278
    :cond_a
    invoke-static {v0}, Landroid/net/MatchAllNetworkSpecifier;->checkNotMatchAllNetworkSpecifier(Landroid/net/NetworkSpecifier;)V

    .line 5279
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkSpecifier;->assertValidFromUid(I)V

    .line 5280
    return-void
.end method

.method private static eventName(I)Ljava/lang/String;
    .registers 3
    .param p0, "what"  # I

    .line 574
    sget-object v0, Lcom/android/server/ConnectivityService;->sMagicDecoderRing:Landroid/util/SparseArray;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V
    .registers 7
    .param p1, "state"  # Landroid/net/NetworkState;
    .param p2, "uid"  # I
    .param p3, "ignoreBlocked"  # Z

    .line 1400
    if-eqz p1, :cond_2e

    iget-object v0, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_2e

    iget-object v0, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    if-nez v0, :cond_b

    goto :goto_2e

    .line 1402
    :cond_b
    iget-object v0, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/ConnectivityService;->isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;IZ)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1403
    iget-object v0, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    :cond_1b
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1406
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    if-eqz v1, :cond_29

    .line 1407
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    iget-object v2, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/net/LockdownVpnTracker;->augmentNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 1409
    :cond_29
    monitor-exit v0

    .line 1410
    return-void

    .line 1409
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_2b

    throw v1

    .line 1400
    :cond_2e
    :goto_2e
    return-void
.end method

.method private findExistingNetworkRequestInfo(Landroid/app/PendingIntent;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .registers 7
    .param p1, "pendingIntent"  # Landroid/app/PendingIntent;

    .line 3257
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3258
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3259
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/NetworkRequest;Lcom/android/server/ConnectivityService$NetworkRequestInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    iget-object v3, v3, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    .line 3260
    .local v3, "existingPendingIntent":Landroid/app/PendingIntent;
    if-eqz v3, :cond_35

    .line 3261
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 3262
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    return-object v1

    .line 3264
    .end local v2  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/NetworkRequest;Lcom/android/server/ConnectivityService$NetworkRequestInfo;>;"
    .end local v3  # "existingPendingIntent":Landroid/app/PendingIntent;
    :cond_35
    goto :goto_e

    .line 3265
    :cond_36
    const/4 v1, 0x0

    return-object v1
.end method

.method private getActiveNetworkForUidInternal(IZ)Landroid/net/Network;
    .registers 8
    .param p1, "uid"  # I
    .param p2, "ignoreBlocked"  # Z

    .line 1442
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1443
    .local v0, "user":I
    const/4 v1, 0x0

    .line 1444
    .local v1, "vpnNetId":I
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1445
    :try_start_8
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Vpn;

    .line 1448
    .local v3, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v3, :cond_1d

    invoke-virtual {v3, p1}, Lcom/android/server/connectivity/Vpn;->appliesToUid(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-virtual {v3}, Lcom/android/server/connectivity/Vpn;->getNetId()I

    move-result v4

    move v1, v4

    .line 1449
    .end local v3  # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_4c

    .line 1451
    if-eqz v1, :cond_36

    .line 1452
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetId(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    .line 1453
    .local v2, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v2, :cond_36

    .line 1454
    nop

    .line 1455
    invoke-static {p1}, Lcom/android/server/ConnectivityService;->createDefaultNetworkCapabilitiesForUid(I)Landroid/net/NetworkCapabilities;

    move-result-object v3

    .line 1456
    .local v3, "requiredCaps":Landroid/net/NetworkCapabilities;
    iget-object v4, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1457
    iget-object v4, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    return-object v4

    .line 1461
    .end local v2  # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v3  # "requiredCaps":Landroid/net/NetworkCapabilities;
    :cond_36
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    .line 1462
    .restart local v2  # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v2, :cond_45

    iget-object v3, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 1463
    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/ConnectivityService;->isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;IZ)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 1464
    const/4 v2, 0x0

    .line 1466
    :cond_45
    if-eqz v2, :cond_4a

    iget-object v3, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    goto :goto_4b

    :cond_4a
    const/4 v3, 0x0

    :goto_4b
    return-object v3

    .line 1449
    .end local v2  # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :catchall_4c
    move-exception v3

    :try_start_4d
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v3
.end method

.method private getAllVpnInfo()[Lcom/android/internal/net/VpnInfo;
    .registers 5

    .line 4548
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->ensureRunningOnConnectivityServiceThread()V

    .line 4549
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4550
    :try_start_6
    iget-boolean v1, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    .line 4551
    new-array v1, v2, [Lcom/android/internal/net/VpnInfo;

    monitor-exit v0

    return-object v1

    .line 4554
    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4555
    .local v1, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/VpnInfo;>;"
    nop

    .local v2, "i":I
    :goto_15
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_31

    .line 4556
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Vpn;

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->createVpnInfo(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnInfo;

    move-result-object v3

    .line 4557
    .local v3, "info":Lcom/android/internal/net/VpnInfo;
    if-eqz v3, :cond_2e

    .line 4558
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4555
    .end local v3  # "info":Lcom/android/internal/net/VpnInfo;
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 4561
    .end local v2  # "i":I
    :cond_31
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/internal/net/VpnInfo;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/internal/net/VpnInfo;

    monitor-exit v0

    return-object v2

    .line 4562
    .end local v1  # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/VpnInfo;>;"
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_6 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method private getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;
    .registers 2

    .line 5620
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkForRequest(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultNetworks()[Landroid/net/Network;
    .registers 6

    .line 7050
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->ensureRunningOnConnectivityServiceThread()V

    .line 7051
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7052
    .local v0, "defaultNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Network;>;"
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 7053
    .local v1, "defaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 7054
    .local v3, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-boolean v4, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-eqz v4, :cond_33

    if-eq v3, v1, :cond_2e

    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 7055
    :cond_2e
    iget-object v4, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7057
    .end local v3  # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_33
    goto :goto_16

    .line 7058
    :cond_34
    const/4 v2, 0x0

    new-array v2, v2, [Landroid/net/Network;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Network;

    return-object v2
.end method

.method private static getDnsResolver()Landroid/net/IDnsResolver;
    .registers 1

    .line 578
    nop

    .line 579
    const-string v0, "dnsresolver"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IDnsResolver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IDnsResolver;

    move-result-object v0

    .line 578
    return-object v0
.end method

.method private getFilteredNetworkState(II)Landroid/net/NetworkState;
    .registers 20
    .param p1, "networkType"  # I
    .param p2, "uid"  # I

    .line 1223
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v2, v1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->isTypeSupported(I)Z

    move-result v2

    const/16 v3, 0x12

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_5c

    .line 1224
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v2, v1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    .line 1226
    .local v2, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v2, :cond_25

    .line 1227
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->getNetworkState()Landroid/net/NetworkState;

    move-result-object v3

    .line 1228
    .local v3, "state":Landroid/net/NetworkState;
    iget-object v4, v3, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4, v1}, Landroid/net/NetworkInfo;->setType(I)V

    goto :goto_56

    .line 1230
    .end local v3  # "state":Landroid/net/NetworkState;
    :cond_25
    new-instance v8, Landroid/net/NetworkInfo;

    .line 1231
    invoke-static/range {p1 .. p1}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v1, v5, v9, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    move-object v4, v8

    .line 1232
    .local v4, "info":Landroid/net/NetworkInfo;
    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v4, v8, v7, v7}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    invoke-virtual {v4, v6}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1234
    new-instance v7, Landroid/net/NetworkCapabilities;

    invoke-direct {v7}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 1235
    .local v7, "capabilities":Landroid/net/NetworkCapabilities;
    nop

    .line 1236
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v8

    .line 1235
    xor-int/2addr v6, v8

    invoke-virtual {v7, v3, v6}, Landroid/net/NetworkCapabilities;->setCapability(IZ)Landroid/net/NetworkCapabilities;

    .line 1237
    new-instance v3, Landroid/net/NetworkState;

    new-instance v12, Landroid/net/LinkProperties;

    invoke-direct {v12}, Landroid/net/LinkProperties;-><init>()V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v10, v3

    move-object v11, v4

    move-object v13, v7

    invoke-direct/range {v10 .. v16}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    .end local v4  # "info":Landroid/net/NetworkInfo;
    .end local v7  # "capabilities":Landroid/net/NetworkCapabilities;
    .restart local v3  # "state":Landroid/net/NetworkState;
    :goto_56
    move/from16 v8, p2

    invoke-direct {v0, v3, v8, v5}, Lcom/android/server/ConnectivityService;->filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V

    .line 1241
    return-object v3

    .line 1245
    .end local v2  # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v3  # "state":Landroid/net/NetworkState;
    :cond_5c
    move/from16 v8, p2

    new-instance v2, Landroid/net/NetworkInfo;

    .line 1246
    invoke-static/range {p1 .. p1}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v1, v5, v9, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 1247
    .local v2, "info2":Landroid/net/NetworkInfo;
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2, v4, v7, v7}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    invoke-virtual {v2, v6}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1249
    new-instance v4, Landroid/net/NetworkCapabilities;

    invoke-direct {v4}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 1250
    .local v4, "capabilities2":Landroid/net/NetworkCapabilities;
    nop

    .line 1251
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v5

    .line 1250
    xor-int/2addr v5, v6

    invoke-virtual {v4, v3, v5}, Landroid/net/NetworkCapabilities;->setCapability(IZ)Landroid/net/NetworkCapabilities;

    .line 1252
    new-instance v3, Landroid/net/NetworkState;

    new-instance v12, Landroid/net/LinkProperties;

    invoke-direct {v12}, Landroid/net/LinkProperties;-><init>()V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v10, v3

    move-object v11, v2

    move-object v13, v4

    invoke-direct/range {v10 .. v16}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    .local v3, "state2":Landroid/net/NetworkState;
    const/16 v5, 0x13

    if-ne v5, v1, :cond_d7

    .line 1257
    invoke-static/range {p1 .. p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v5

    if-eqz v5, :cond_d7

    .line 1258
    iget-object v5, v0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 1259
    .local v6, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-direct {v0, v6}, Lcom/android/server/ConnectivityService;->isViceWifiNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v7

    if-eqz v7, :cond_d5

    .line 1260
    invoke-virtual {v6}, Lcom/android/server/connectivity/NetworkAgentInfo;->getNetworkState()Landroid/net/NetworkState;

    move-result-object v7

    .line 1261
    .local v7, "state":Landroid/net/NetworkState;
    if-eqz v7, :cond_d5

    .line 1264
    iget-object v5, v7, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v5, :cond_d4

    iget-object v5, v7, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v5, :cond_d3

    iget-object v5, v7, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    .line 1266
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    if-eqz v5, :cond_d4

    iget-object v5, v7, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    .line 1267
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_d3

    goto :goto_d4

    .line 1271
    :cond_d3
    return-object v7

    .line 1268
    :cond_d4
    :goto_d4
    return-object v3

    .line 1274
    .end local v6  # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v7  # "state":Landroid/net/NetworkState;
    :cond_d5
    goto :goto_a2

    .line 1276
    :cond_d6
    return-object v3

    .line 1280
    :cond_d7
    sget-object v5, Landroid/net/NetworkState;->EMPTY:Landroid/net/NetworkState;

    return-object v5
.end method

.method private getIntSpecifier(Landroid/net/NetworkSpecifier;)I
    .registers 5
    .param p1, "networkSpecifierObj"  # Landroid/net/NetworkSpecifier;

    .line 7466
    const/4 v0, 0x0

    .line 7467
    .local v0, "specifierStr":Ljava/lang/String;
    const/4 v1, -0x1

    .line 7468
    .local v1, "specifier":I
    if-eqz p1, :cond_d

    instance-of v2, p1, Landroid/net/StringNetworkSpecifier;

    if-eqz v2, :cond_d

    .line 7470
    move-object v2, p1

    check-cast v2, Landroid/net/StringNetworkSpecifier;

    iget-object v0, v2, Landroid/net/StringNetworkSpecifier;->specifier:Ljava/lang/String;

    .line 7472
    :cond_d
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 7474
    :try_start_15
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_19} :catch_1b

    move v1, v2

    .line 7477
    goto :goto_1d

    .line 7475
    :catch_1b
    move-exception v2

    .line 7476
    .local v2, "e":Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    .line 7479
    .end local v2  # "e":Ljava/lang/NumberFormatException;
    :cond_1d
    :goto_1d
    return v1
.end method

.method private getLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/LinkProperties;
    .registers 4
    .param p1, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 1644
    if-nez p1, :cond_4

    .line 1645
    const/4 v0, 0x0

    return-object v0

    .line 1647
    :cond_4
    monitor-enter p1

    .line 1648
    :try_start_5
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    monitor-exit p1

    return-object v0

    .line 1649
    :catchall_e
    move-exception v0

    monitor-exit p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v0
.end method

.method private getLinkPropertiesProxyInfo(Landroid/net/Network;)Landroid/net/ProxyInfo;
    .registers 5
    .param p1, "network"  # Landroid/net/Network;

    .line 4336
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 4337
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 4338
    :cond_8
    monitor-enter v0

    .line 4339
    :try_start_9
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    .line 4340
    .local v2, "linkHttpProxy":Landroid/net/ProxyInfo;
    if-nez v2, :cond_12

    :goto_11
    goto :goto_18

    :cond_12
    new-instance v1, Landroid/net/ProxyInfo;

    invoke-direct {v1, v2}, Landroid/net/ProxyInfo;-><init>(Landroid/net/ProxyInfo;)V

    goto :goto_11

    :goto_18
    monitor-exit v0

    return-object v1

    .line 4341
    .end local v2  # "linkHttpProxy":Landroid/net/ProxyInfo;
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private getNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/Network;
    .registers 3
    .param p1, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 5625
    if-eqz p1, :cond_5

    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return-object v0
.end method

.method private getNetworkAgentInfoForNetId(I)Lcom/android/server/connectivity/NetworkAgentInfo;
    .registers 4
    .param p1, "netId"  # I

    .line 1303
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1304
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    monitor-exit v0

    return-object v1

    .line 1305
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private getNetworkCapabilitiesInternal(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/NetworkCapabilities;
    .registers 5
    .param p1, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 1653
    if-eqz p1, :cond_1c

    .line 1654
    monitor-enter p1

    .line 1655
    :try_start_3
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_17

    .line 1656
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1658
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1656
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ConnectivityService;->networkCapabilitiesRestrictedForCallerPermissions(Landroid/net/NetworkCapabilities;II)Landroid/net/NetworkCapabilities;

    move-result-object v0

    monitor-exit p1

    return-object v0

    .line 1660
    :cond_17
    monitor-exit p1

    goto :goto_1c

    :catchall_19
    move-exception v0

    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0

    .line 1662
    :cond_1c
    :goto_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method private getNetworkForRequest(I)Lcom/android/server/connectivity/NetworkAgentInfo;
    .registers 4
    .param p1, "requestId"  # I

    .line 5602
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5603
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    monitor-exit v0

    return-object v1

    .line 5604
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private getNetworkPermission(Landroid/net/NetworkCapabilities;)I
    .registers 3
    .param p1, "nc"  # Landroid/net/NetworkCapabilities;

    .line 5938
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 5939
    const/4 v0, 0x2

    return v0

    .line 5941
    :cond_a
    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 5942
    const/4 v0, 0x1

    return v0

    .line 5944
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method private getNriForAppRequest(Landroid/net/NetworkRequest;ILjava/lang/String;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .registers 8
    .param p1, "request"  # Landroid/net/NetworkRequest;
    .param p2, "callingUid"  # I
    .param p3, "requestedOperation"  # Ljava/lang/String;

    .line 3362
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 3364
    .local v0, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    if-eqz v0, :cond_2d

    .line 3365
    const/16 v1, 0x3e8

    if-eq v1, p2, :cond_2d

    iget v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    if-eq v1, p2, :cond_2d

    .line 3366
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3367
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 3366
    const-string v2, "UID %d attempted to %s for unowned request %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3368
    const/4 v1, 0x0

    return-object v1

    .line 3372
    :cond_2d
    return-object v0
.end method

.method private getProvisioningUrlBaseFromFile()Ljava/lang/String;
    .registers 10

    .line 4845
    const/4 v0, 0x0

    .line 4846
    .local v0, "fileReader":Ljava/io/FileReader;
    const/4 v1, 0x0

    .line 4847
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 4850
    .local v2, "config":Landroid/content/res/Configuration;
    const/4 v3, 0x0

    :try_start_d
    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mProvisioningUrlFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v0, v4

    .line 4851
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    move-object v1, v4

    .line 4852
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 4853
    const-string/jumbo v4, "provisioningUrls"

    invoke-static {v1, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 4856
    :goto_23
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4858
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_2a} :catch_c7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_2a} :catch_ac
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_2a} :catch_8f
    .catchall {:try_start_d .. :try_end_2a} :catchall_8d

    .line 4859
    .local v4, "element":Ljava/lang/String;
    if-nez v4, :cond_35

    .line 4878
    .end local v4  # "element":Ljava/lang/String;
    nop

    .line 4886
    nop

    .line 4888
    :try_start_2e
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    .line 4889
    :goto_31
    goto :goto_34

    :catch_32
    move-exception v4

    goto :goto_31

    .line 4878
    :goto_34
    return-object v3

    .line 4861
    .restart local v4  # "element":Ljava/lang/String;
    :cond_35
    :try_start_35
    const-string/jumbo v5, "provisioningUrl"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 4862
    const-string/jumbo v5, "mcc"

    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_45
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_45} :catch_c7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_35 .. :try_end_45} :catch_ac
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_45} :catch_8f
    .catchall {:try_start_35 .. :try_end_45} :catchall_8d

    .line 4864
    .local v5, "mcc":Ljava/lang/String;
    if-eqz v5, :cond_8c

    :try_start_47
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget v7, v2, Landroid/content/res/Configuration;->mcc:I

    if-ne v6, v7, :cond_8c

    .line 4865
    const-string/jumbo v6, "mnc"

    invoke-interface {v1, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4866
    .local v6, "mnc":Ljava/lang/String;
    if-eqz v6, :cond_8c

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget v8, v2, Landroid/content/res/Configuration;->mnc:I

    if-ne v7, v8, :cond_8c

    .line 4867
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 4868
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_8c

    .line 4869
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3
    :try_end_6e
    .catch Ljava/lang/NumberFormatException; {:try_start_47 .. :try_end_6e} :catch_76
    .catch Ljava/io/FileNotFoundException; {:try_start_47 .. :try_end_6e} :catch_c7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_47 .. :try_end_6e} :catch_ac
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_6e} :catch_8f
    .catchall {:try_start_47 .. :try_end_6e} :catchall_8d

    .line 4886
    nop

    .line 4888
    :try_start_6f
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73

    .line 4889
    :goto_72
    goto :goto_75

    :catch_73
    move-exception v7

    goto :goto_72

    .line 4869
    :goto_75
    return-object v3

    .line 4873
    .end local v6  # "mnc":Ljava/lang/String;
    :catch_76
    move-exception v6

    .line 4874
    .local v6, "e":Ljava/lang/NumberFormatException;
    :try_start_77
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NumberFormatException in getProvisioningUrlBaseFromFile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_8b
    .catch Ljava/io/FileNotFoundException; {:try_start_77 .. :try_end_8b} :catch_c7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_77 .. :try_end_8b} :catch_ac
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_8b} :catch_8f
    .catchall {:try_start_77 .. :try_end_8b} :catchall_8d

    nop

    .line 4877
    .end local v4  # "element":Ljava/lang/String;
    .end local v5  # "mcc":Ljava/lang/String;
    .end local v6  # "e":Ljava/lang/NumberFormatException;
    :cond_8c
    goto :goto_23

    .line 4886
    :catchall_8d
    move-exception v3

    goto :goto_d4

    .line 4883
    :catch_8f
    move-exception v4

    .line 4884
    .local v4, "e":Ljava/io/IOException;
    :try_start_90
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "I/O exception reading Carrier Provisioning Urls file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_a4
    .catchall {:try_start_90 .. :try_end_a4} :catchall_8d

    .line 4886
    .end local v4  # "e":Ljava/io/IOException;
    if-eqz v0, :cond_d3

    .line 4888
    :try_start_a6
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_aa

    .line 4889
    :goto_a9
    goto :goto_d3

    :catch_aa
    move-exception v4

    goto :goto_a9

    .line 4881
    :catch_ac
    move-exception v4

    .line 4882
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_ad
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xml parser exception reading Carrier Provisioning Urls file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_c1
    .catchall {:try_start_ad .. :try_end_c1} :catchall_8d

    .line 4886
    .end local v4  # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v0, :cond_d3

    .line 4888
    :try_start_c3
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c6} :catch_aa

    goto :goto_a9

    .line 4879
    :catch_c7
    move-exception v4

    .line 4880
    .local v4, "e":Ljava/io/FileNotFoundException;
    :try_start_c8
    const-string v5, "Carrier Provisioning Urls file not found"

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_cd
    .catchall {:try_start_c8 .. :try_end_cd} :catchall_8d

    .line 4886
    .end local v4  # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_d3

    .line 4888
    :try_start_cf
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_aa

    goto :goto_a9

    .line 4892
    :cond_d3
    :goto_d3
    return-object v3

    .line 4886
    :goto_d4
    if-eqz v0, :cond_dc

    .line 4888
    :try_start_d6
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_d9} :catch_da

    .line 4889
    :goto_d9
    goto :goto_dc

    :catch_da
    move-exception v4

    goto :goto_d9

    :cond_dc
    :goto_dc
    throw v3
.end method

.method private getSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;)Ljava/util/ArrayList;
    .registers 6
    .param p1, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5236
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 5237
    .local v0, "thresholds":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    monitor-enter p1

    .line 5238
    :try_start_6
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 5239
    .local v2, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v3, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v3, v3, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v3

    if-eqz v3, :cond_3d

    iget-object v3, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 5240
    invoke-virtual {p1, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfiesImmutableCapabilitiesOf(Landroid/net/NetworkRequest;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 5241
    iget-object v3, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v3, v3, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 5243
    .end local v2  # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :cond_3d
    goto :goto_10

    .line 5244
    :cond_3e
    monitor-exit p1
    :try_end_3f
    .catchall {:try_start_6 .. :try_end_3f} :catchall_45

    .line 5245
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 5244
    :catchall_45
    move-exception v1

    :try_start_46
    monitor-exit p1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v1
.end method

.method private getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;
    .registers 5
    .param p1, "uid"  # I

    .line 1322
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 1324
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getVpnUnderlyingNetworks(I)[Landroid/net/Network;

    move-result-object v1

    .line 1325
    .local v1, "networks":[Landroid/net/Network;
    if-eqz v1, :cond_16

    .line 1331
    array-length v2, v1

    if-lez v2, :cond_15

    .line 1332
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    goto :goto_16

    .line 1334
    :cond_15
    const/4 v0, 0x0

    .line 1338
    :cond_16
    :goto_16
    if-eqz v0, :cond_1d

    .line 1339
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getNetworkState()Landroid/net/NetworkState;

    move-result-object v2

    return-object v2

    .line 1341
    :cond_1d
    sget-object v2, Landroid/net/NetworkState;->EMPTY:Landroid/net/NetworkState;

    return-object v2
.end method

.method private getVpnIfOwner()Lcom/android/server/connectivity/Vpn;
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mVpns"
        }
    .end annotation

    .line 7345
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 7346
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 7348
    .local v1, "user":I
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    .line 7349
    .local v2, "vpn":Lcom/android/server/connectivity/Vpn;
    const/4 v3, 0x0

    if-nez v2, :cond_14

    .line 7350
    return-object v3

    .line 7352
    :cond_14
    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->getVpnInfo()Lcom/android/internal/net/VpnInfo;

    move-result-object v4

    .line 7353
    .local v4, "info":Lcom/android/internal/net/VpnInfo;
    if-eqz v4, :cond_20

    iget v5, v4, Lcom/android/internal/net/VpnInfo;->ownerUid:I

    if-eq v5, v0, :cond_1f

    goto :goto_20

    :cond_1f
    move-object v3, v2

    :cond_20
    :goto_20
    return-object v3
.end method

.method private getVpnUnderlyingNetworks(I)[Landroid/net/Network;
    .registers 6
    .param p1, "uid"  # I

    .line 1309
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1310
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    if-nez v1, :cond_21

    .line 1311
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1312
    .local v1, "user":I
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    .line 1313
    .local v2, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v2, :cond_21

    invoke-virtual {v2, p1}, Lcom/android/server/connectivity/Vpn;->appliesToUid(I)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1314
    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->getUnderlyingNetworks()[Landroid/net/Network;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 1317
    .end local v1  # "user":I
    .end local v2  # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_21
    monitor-exit v0

    .line 1318
    const/4 v0, 0x0

    return-object v0

    .line 1317
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private handleAlwaysOnNetworkRequest(Landroid/net/NetworkRequest;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "networkRequest"  # Landroid/net/NetworkRequest;
    .param p2, "settingName"  # Ljava/lang/String;
    .param p3, "defaultValue"  # Z

    .line 1155
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 1156
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1155
    const/4 v1, 0x0

    const-string/jumbo v2, "mobile_data_always_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    move v0, v2

    goto :goto_14

    :cond_13
    move v0, v1

    .line 1158
    .local v0, "enable":Z
    :goto_14
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v2, v1

    .line 1159
    .local v2, "isEnabled":Z
    :goto_1e
    if-ne v0, v2, :cond_21

    .line 1160
    return-void

    .line 1163
    :cond_21
    if-eqz v0, :cond_32

    .line 1164
    new-instance v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    const/4 v3, 0x0

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    invoke-direct {v1, p0, v3, p1, v4}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;)V

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    goto :goto_37

    .line 1167
    :cond_32
    const/16 v3, 0x3e8

    invoke-direct {p0, p1, v3, v1}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;IZ)V

    .line 1170
    :goto_37
    return-void
.end method

.method private handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V
    .registers 4
    .param p1, "proxy"  # Landroid/net/ProxyInfo;

    .line 4357
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 4358
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4359
    const/4 p1, 0x0

    .line 4361
    :cond_19
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mProxyTracker:Lcom/android/server/connectivity/ProxyTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/ProxyTracker;->setDefaultProxy(Landroid/net/ProxyInfo;)V

    .line 4362
    return-void
.end method

.method private handleAsyncChannelDisconnected(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"  # Landroid/os/Message;

    .line 3130
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3131
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_10

    .line 3132
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->disconnectAndDestroyNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_33

    .line 3134
    :cond_10
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    .line 3135
    .local v1, "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    if-eqz v1, :cond_33

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterNetworkFactory for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3137
    .end local v1  # "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    :cond_33
    :goto_33
    return-void
.end method

.method private handleAsyncChannelHalfConnect(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"  # Landroid/os/Message;

    .line 3077
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/util/AsyncChannel;

    .line 3078
    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x11001

    if-eqz v1, :cond_76

    .line 3079
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_69

    .line 3080
    sget-boolean v1, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v1, :cond_1e

    const-string v1, "NetworkFactory connected"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3082
    :cond_1e
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    iget-object v1, v1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 3085
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 3086
    .local v2, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v3, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v3}, Landroid/net/NetworkRequest;->isListen()Z

    move-result v3

    if-eqz v3, :cond_4c

    goto :goto_37

    .line 3087
    :cond_4c
    iget-object v3, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v3, v3, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->getNetworkForRequest(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v3

    .line 3090
    .local v3, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v3, :cond_5d

    .line 3091
    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v4

    .line 3092
    .local v4, "score":I
    iget v5, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->factorySerialNumber:I

    .local v5, "serial":I
    goto :goto_5f

    .line 3094
    .end local v4  # "score":I
    .end local v5  # "serial":I
    :cond_5d
    const/4 v4, 0x0

    .line 3095
    .restart local v4  # "score":I
    const/4 v5, -0x1

    .line 3097
    .restart local v5  # "serial":I
    :goto_5f
    const v6, 0x83000

    iget-object v7, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v6, v4, v5, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 3099
    .end local v2  # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .end local v3  # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v4  # "score":I
    .end local v5  # "serial":I
    goto :goto_37

    :cond_68
    goto :goto_d1

    .line 3101
    :cond_69
    const-string v1, "Error connecting NetworkFactory"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 3102
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d1

    .line 3104
    :cond_76
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d1

    .line 3105
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_9d

    .line 3106
    sget-boolean v1, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v1, :cond_8d

    const-string v1, "NetworkAgent connected"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3108
    :cond_8d
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 3109
    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_d1

    .line 3111
    :cond_9d
    const-string v1, "Error connecting NetworkAgent"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 3112
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3113
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v1, :cond_d1

    .line 3114
    invoke-virtual {p0, v1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v2

    .line 3115
    .local v2, "wasDefault":Z
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v3

    .line 3116
    :try_start_b5
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    iget-object v5, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v5, v5, Landroid/net/Network;->netId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 3117
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    iget-object v5, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v5, v5, Landroid/net/Network;->netId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 3118
    monitor-exit v3
    :try_end_c8
    .catchall {:try_start_b5 .. :try_end_c8} :catchall_ce

    .line 3120
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    goto :goto_d1

    .line 3118
    :catchall_ce
    move-exception v4

    :try_start_cf
    monitor-exit v3
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_ce

    throw v4

    .line 3124
    .end local v1  # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v2  # "wasDefault":Z
    :cond_d1
    :goto_d1
    return-void
.end method

.method private handleConfigureAlwaysOnNetworks()V
    .registers 4

    .line 1173
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultMobileDataRequest:Landroid/net/NetworkRequest;

    const-string/jumbo v1, "mobile_data_always_on"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ConnectivityService;->handleAlwaysOnNetworkRequest(Landroid/net/NetworkRequest;Ljava/lang/String;Z)V

    .line 1175
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultWifiRequest:Landroid/net/NetworkRequest;

    const-string/jumbo v1, "wifi_always_requested"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ConnectivityService;->handleAlwaysOnNetworkRequest(Landroid/net/NetworkRequest;Ljava/lang/String;Z)V

    .line 1177
    return-void
.end method

.method private handleFreshlyValidatedNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 6
    .param p1, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2984
    if-nez p1, :cond_3

    return-void

    .line 2987
    :cond_3
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    invoke-virtual {v0}, Lcom/android/server/connectivity/DnsManager;->getPrivateDnsConfig()Landroid/net/shared/PrivateDnsConfig;

    move-result-object v0

    .line 2988
    .local v0, "cfg":Landroid/net/shared/PrivateDnsConfig;
    iget-boolean v1, v0, Landroid/net/shared/PrivateDnsConfig;->useTls:Z

    if-eqz v1, :cond_1f

    iget-object v1, v0, Landroid/net/shared/PrivateDnsConfig;->hostname:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2989
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v3, Landroid/net/Network;->netId:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/ConnectivityService;->updateDnses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)V

    .line 2991
    :cond_1f
    return-void
.end method

.method private handleLingerComplete(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 4
    .param p1, "oldNetwork"  # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 6314
    if-nez p1, :cond_8

    .line 6315
    const-string v0, "Unknown NetworkAgentInfo in handleLingerComplete"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 6316
    return-void

    .line 6318
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleLingerComplete for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6322
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->clearLingerState()V

    .line 6324
    sget-object v0, Lcom/android/server/ConnectivityService$UnneededFor;->TEARDOWN:Lcom/android/server/ConnectivityService$UnneededFor;

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$UnneededFor;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 6326
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_38

    .line 6329
    :cond_2f
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v0

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/ConnectivityService;->updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 6332
    :goto_38
    return-void
.end method

.method private handleNat64PrefixEvent(IZLjava/lang/String;I)V
    .registers 10
    .param p1, "netId"  # I
    .param p2, "added"  # Z
    .param p3, "prefixString"  # Ljava/lang/String;
    .param p4, "prefixLength"  # I

    .line 3036
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3037
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v0, :cond_b

    return-void

    .line 3039
    :cond_b
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3040
    if-eqz p2, :cond_14

    const-string v3, "added"

    goto :goto_17

    :cond_14
    const-string/jumbo v3, "removed"

    :goto_17
    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3039
    const-string v2, "NAT64 prefix %s on netId %d: %s/%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3042
    const/4 v1, 0x0

    .line 3043
    .local v1, "prefix":Landroid/net/IpPrefix;
    if-eqz p2, :cond_5f

    .line 3045
    :try_start_36
    new-instance v2, Landroid/net/IpPrefix;

    invoke-static {p3}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {v2, v3, p4}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V
    :try_end_3f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36 .. :try_end_3f} :catch_41

    move-object v1, v2

    .line 3050
    goto :goto_5f

    .line 3047
    :catch_41
    move-exception v2

    .line 3048
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid NAT64 prefix "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 3049
    return-void

    .line 3053
    .end local v2  # "e":Ljava/lang/IllegalArgumentException;
    :cond_5f
    :goto_5f
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v2, v1}, Lcom/android/server/connectivity/Nat464Xlat;->setNat64Prefix(Landroid/net/IpPrefix;)V

    .line 3054
    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/ConnectivityService;->handleUpdateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    .line 3055
    return-void
.end method

.method private handleNetworkUnvalidated(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 5
    .param p1, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3852
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 3853
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNetworkUnvalidated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3855
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 3856
    return-void

    .line 3859
    :cond_2a
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {v1}, Landroid/net/util/MultinetworkPolicyTracker;->shouldNotifyWifiUnvalidated()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 3860
    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOST_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-direct {p0, p1, v1}, Lcom/android/server/ConnectivityService;->showNetworkNotification(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    .line 3862
    :cond_37
    return-void
.end method

.method private handlePerNetworkPrivateDnsConfig(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/shared/PrivateDnsConfig;)V
    .registers 5
    .param p1, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "cfg"  # Landroid/net/shared/PrivateDnsConfig;

    .line 3007
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->networkRequiresPrivateDnsValidation(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 3012
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor()Landroid/net/NetworkMonitorManager;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/shared/PrivateDnsConfig;->toParcel()Landroid/net/PrivateDnsConfigParcel;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkMonitorManager;->notifyPrivateDnsChanged(Landroid/net/PrivateDnsConfigParcel;)Z

    .line 3017
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->updatePrivateDns(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/shared/PrivateDnsConfig;)V

    .line 3018
    return-void
.end method

.method private handlePrivateDnsSettingsChanged()V
    .registers 6

    .line 2994
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    invoke-virtual {v0}, Lcom/android/server/connectivity/DnsManager;->getPrivateDnsConfig()Landroid/net/shared/PrivateDnsConfig;

    move-result-object v0

    .line 2996
    .local v0, "cfg":Landroid/net/shared/PrivateDnsConfig;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2997
    .local v2, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-direct {p0, v2, v0}, Lcom/android/server/ConnectivityService;->handlePerNetworkPrivateDnsConfig(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/shared/PrivateDnsConfig;)V

    .line 2998
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->networkRequiresPrivateDnsValidation(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 2999
    new-instance v3, Landroid/net/LinkProperties;

    iget-object v4, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v3, v4}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/server/ConnectivityService;->handleUpdateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    .line 3001
    .end local v2  # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_2f
    goto :goto_10

    .line 3002
    :cond_30
    return-void
.end method

.method private handlePrivateDnsValidationUpdate(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V
    .registers 5
    .param p1, "update"  # Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;

    .line 3026
    iget v0, p1, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;->netId:I

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetId(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 3027
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v0, :cond_9

    .line 3028
    return-void

    .line 3030
    :cond_9
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/DnsManager;->updatePrivateDnsValidation(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V

    .line 3031
    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ConnectivityService;->handleUpdateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    .line 3032
    return-void
.end method

.method private handlePromptUnvalidated(Landroid/net/Network;)V
    .registers 5
    .param p1, "network"  # Landroid/net/Network;

    .line 3828
    sget-boolean v0, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v0, :cond_1c

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePromptUnvalidated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3829
    :cond_1c
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 3831
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_41

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->shouldPromptUnvalidated(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v1

    if-nez v1, :cond_29

    goto :goto_41

    .line 3839
    :cond_29
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x8100f

    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 3844
    iget-boolean v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->partialConnectivity:Z

    if-eqz v1, :cond_3b

    .line 3845
    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->PARTIAL_CONNECTIVITY:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->showNetworkNotification(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    goto :goto_40

    .line 3847
    :cond_3b
    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NO_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->showNetworkNotification(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    .line 3849
    :goto_40
    return-void

    .line 3832
    :cond_41
    :goto_41
    return-void
.end method

.method private handleRegisterNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/INetworkMonitor;)V
    .registers 7
    .param p1, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "networkMonitor"  # Landroid/net/INetworkMonitor;

    .line 5711
    invoke-virtual {p1, p2}, Lcom/android/server/connectivity/NetworkAgentInfo;->onNetworkMonitorCreated(Landroid/net/INetworkMonitor;)V

    .line 5712
    sget-boolean v0, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v0, :cond_c

    const-string v0, "Got NetworkAgent Messenger"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5713
    :cond_c
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5714
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5715
    :try_start_16
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5716
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_41

    .line 5719
    :try_start_20
    invoke-interface {p2}, Landroid/net/INetworkMonitor;->start()V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_24

    .line 5722
    goto :goto_28

    .line 5720
    :catch_24
    move-exception v0

    .line 5721
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 5723
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_28
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 5724
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 5725
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 5726
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->updateNetworkInfo(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V

    .line 5727
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/ConnectivityService;->updateUids(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)V

    .line 5728
    return-void

    .line 5716
    .end local v0  # "networkInfo":Landroid/net/NetworkInfo;
    :catchall_41
    move-exception v1

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v1
.end method

.method private handleRegisterNetworkFactory(Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V
    .registers 6
    .param p1, "nfi"  # Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    .line 5543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got NetworkFactory Messenger for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5544
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5545
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    iget-object v3, p1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 5546
    return-void
.end method

.method private handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .registers 6
    .param p1, "nri"  # Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 3282
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3283
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REGISTER "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 3284
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0}, Landroid/net/NetworkRequest;->isListen()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 3285
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3286
    .local v1, "network":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v2, v2, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v2

    if-eqz v2, :cond_54

    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 3287
    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfiesImmutableCapabilitiesOf(Landroid/net/NetworkRequest;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 3288
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    const-string v3, "REGISTER"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/ConnectivityService;->updateSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;Landroid/net/NetworkRequest;)V

    .line 3290
    .end local v1  # "network":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_54
    goto :goto_2f

    .line 3292
    :cond_55
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 3293
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0}, Landroid/net/NetworkRequest;->isRequest()Z

    move-result v0

    if-eqz v0, :cond_71

    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkForRequest(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    if-nez v0, :cond_71

    .line 3294
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3296
    :cond_71
    return-void
.end method

.method private handleRegisterNetworkRequestWithIntent(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"  # Landroid/os/Message;

    .line 3269
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 3271
    .local v0, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->findExistingNetworkRequestInfo(Landroid/app/PendingIntent;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    move-result-object v1

    .line 3272
    .local v1, "existingRequest":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    if-eqz v1, :cond_3b

    .line 3273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Replacing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " because their intents matched."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3275
    iget-object v2, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;IZ)V

    .line 3278
    :cond_3b
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .line 3279
    return-void
.end method

.method private handleReleaseNetworkRequest(Landroid/net/NetworkRequest;IZ)V
    .registers 8
    .param p1, "request"  # Landroid/net/NetworkRequest;
    .param p2, "callingUid"  # I
    .param p3, "callOnUnavailable"  # Z

    .line 3391
    nop

    .line 3392
    const-string/jumbo v0, "release NetworkRequest"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/ConnectivityService;->getNriForAppRequest(Landroid/net/NetworkRequest;ILjava/lang/String;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    move-result-object v0

    .line 3393
    .local v0, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    if-nez v0, :cond_b

    .line 3394
    return-void

    .line 3396
    :cond_b
    sget-boolean v1, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v1, :cond_17

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v1}, Landroid/net/NetworkRequest;->isRequest()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 3397
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releasing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (release request)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3399
    :cond_33
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->handleRemoveNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .line 3400
    if-eqz p3, :cond_40

    .line 3401
    const/4 v1, 0x0

    const v2, 0x80005

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 3403
    :cond_40
    return-void
.end method

.method private handleReleaseNetworkRequestWithIntent(Landroid/app/PendingIntent;I)V
    .registers 6
    .param p1, "pendingIntent"  # Landroid/app/PendingIntent;
    .param p2, "callingUid"  # I

    .line 3300
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->findExistingNetworkRequestInfo(Landroid/app/PendingIntent;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    move-result-object v0

    .line 3301
    .local v0, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    if-eqz v0, :cond_c

    .line 3302
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    const/4 v2, 0x0

    invoke-direct {p0, v1, p2, v2}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;IZ)V

    .line 3304
    :cond_c
    return-void
.end method

.method private handleReleaseNetworkTransitionWakelock(I)V
    .registers 10
    .param p1, "eventId"  # I

    .line 4235
    invoke-static {p1}, Lcom/android/server/ConnectivityService;->eventName(I)Ljava/lang/String;

    move-result-object v0

    .line 4236
    .local v0, "event":Ljava/lang/String;
    monitor-enter p0

    .line 4237
    :try_start_5
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_27

    .line 4238
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mWakelockLogs:Landroid/util/LocalLog;

    const-string v4, "RELEASE: already released (%s)"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 4239
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const-string v2, "expected Net Transition WakeLock to be held"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4240
    monitor-exit p0

    return-void

    .line 4242
    :cond_27
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4243
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/ConnectivityService;->mLastWakeLockAcquireTimestamp:J

    sub-long/2addr v4, v6

    .line 4244
    .local v4, "lockDuration":J
    iget-wide v6, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockDurationMs:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockDurationMs:J

    .line 4245
    iget-wide v6, p0, Lcom/android/server/ConnectivityService;->mMaxWakelockDurationMs:J

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/ConnectivityService;->mMaxWakelockDurationMs:J

    .line 4246
    iget v1, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockReleases:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockReleases:I

    .line 4247
    .end local v4  # "lockDuration":J
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_56

    .line 4248
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mWakelockLogs:Landroid/util/LocalLog;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string v2, "RELEASE (%s)"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 4249
    return-void

    .line 4247
    :catchall_56
    move-exception v1

    :try_start_57
    monitor-exit p0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v1
.end method

.method private handleRemoveNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .registers 10
    .param p1, "nri"  # Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 3406
    invoke-virtual {p1}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->unlinkDeathRecipient()V

    .line 3407
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3409
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 3410
    :try_start_d
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    iget v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 3411
    .local v1, "requests":I
    const/4 v2, 0x1

    if-ge v1, v2, :cond_3a

    .line 3412
    sget-object v2, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BUG: too small request count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 3414
    :cond_3a
    if-ne v1, v2, :cond_4a

    .line 3415
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    iget v5, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    .line 3416
    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    .line 3415
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->removeAt(I)V

    goto :goto_53

    .line 3418
    :cond_4a
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    iget v4, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 3420
    .end local v1  # "requests":I
    :goto_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_d .. :try_end_54} :catchall_196

    .line 3422
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RELEASE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 3423
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0}, Landroid/net/NetworkRequest;->isRequest()Z

    move-result v0

    if-eqz v0, :cond_15e

    .line 3424
    const/4 v0, 0x0

    .line 3425
    .local v0, "wasKept":Z
    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v1, v1, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getNetworkForRequest(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 3426
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v1, :cond_103

    .line 3427
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isBackgroundNetwork()Z

    move-result v2

    .line 3428
    .local v2, "wasBackgroundNetwork":Z
    iget-object v4, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v4, v4, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v1, v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->removeRequest(I)V

    .line 3429
    sget-boolean v4, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v4, :cond_90

    sget-boolean v4, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v4, :cond_b9

    .line 3430
    :cond_90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Removing from current network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", leaving "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3431
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " requests."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3430
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3435
    :cond_b9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct {p0, v1, v4, v5}, Lcom/android/server/ConnectivityService;->updateLingerState(Lcom/android/server/connectivity/NetworkAgentInfo;J)V

    .line 3436
    sget-object v4, Lcom/android/server/ConnectivityService$UnneededFor;->TEARDOWN:Lcom/android/server/ConnectivityService$UnneededFor;

    invoke-direct {p0, v1, v4}, Lcom/android/server/ConnectivityService;->unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$UnneededFor;)Z

    move-result v4

    if-eqz v4, :cond_ea

    .line 3437
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no live requests for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; disconnecting"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3438
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_eb

    .line 3440
    :cond_ea
    const/4 v0, 0x1

    .line 3442
    :goto_eb
    iget-object v4, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v4, v4, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->clearNetworkForRequest(I)V

    .line 3443
    if-nez v2, :cond_103

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isBackgroundNetwork()Z

    move-result v4

    if-eqz v4, :cond_103

    .line 3445
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v4

    iget-object v5, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v4, v1, v5}, Lcom/android/server/ConnectivityService;->updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 3454
    .end local v2  # "wasBackgroundNetwork":Z
    :cond_103
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v2, v2, Landroid/net/NetworkRequest;->legacyType:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_13c

    if-eqz v1, :cond_13c

    .line 3455
    const/4 v2, 0x1

    .line 3456
    .local v2, "doRemove":Z
    if-eqz v0, :cond_131

    .line 3459
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_110
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v5

    if-ge v4, v5, :cond_131

    .line 3460
    invoke-virtual {v1, v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v5

    .line 3461
    .local v5, "otherRequest":Landroid/net/NetworkRequest;
    iget v6, v5, Landroid/net/NetworkRequest;->legacyType:I

    iget-object v7, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v7, v7, Landroid/net/NetworkRequest;->legacyType:I

    if-ne v6, v7, :cond_12e

    .line 3462
    invoke-virtual {v5}, Landroid/net/NetworkRequest;->isRequest()Z

    move-result v6

    if-eqz v6, :cond_12e

    .line 3463
    const-string v6, " still have other legacy request - leaving"

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3464
    const/4 v2, 0x0

    .line 3459
    .end local v5  # "otherRequest":Landroid/net/NetworkRequest;
    :cond_12e
    add-int/lit8 v4, v4, 0x1

    goto :goto_110

    .line 3469
    .end local v4  # "i":I
    :cond_131
    if-eqz v2, :cond_13c

    .line 3470
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    iget-object v5, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v5, v5, Landroid/net/NetworkRequest;->legacyType:I

    invoke-virtual {v4, v5, v1, v3}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(ILcom/android/server/connectivity/NetworkAgentInfo;Z)V

    .line 3474
    .end local v2  # "doRemove":Z
    :cond_13c
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_146
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    .line 3475
    .local v3, "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    iget-object v4, v3, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v5, 0x83001

    iget-object v6, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 3477
    .end local v3  # "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    goto :goto_146

    .line 3478
    .end local v0  # "wasKept":Z
    .end local v1  # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_15d
    goto :goto_195

    .line 3481
    :cond_15e
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_168
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_195

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3482
    .restart local v1  # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v2, v2, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->removeRequest(I)V

    .line 3483
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v2, v2, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v2

    if-eqz v2, :cond_194

    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 3484
    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfiesImmutableCapabilitiesOf(Landroid/net/NetworkRequest;)Z

    move-result v2

    if-eqz v2, :cond_194

    .line 3485
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    const-string v3, "RELEASE"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/ConnectivityService;->updateSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;Landroid/net/NetworkRequest;)V

    .line 3487
    .end local v1  # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_194
    goto :goto_168

    .line 3489
    :cond_195
    :goto_195
    return-void

    .line 3420
    :catchall_196
    move-exception v1

    :try_start_197
    monitor-exit v0
    :try_end_198
    .catchall {:try_start_197 .. :try_end_198} :catchall_196

    throw v1
.end method

.method private handleReportNetworkConnectivity(Landroid/net/Network;IZ)V
    .registers 8
    .param p1, "network"  # Landroid/net/Network;
    .param p2, "uid"  # I
    .param p3, "hasConnectivity"  # Z

    .line 4272
    if-nez p1, :cond_7

    .line 4273
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    goto :goto_b

    .line 4275
    .end local v0  # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 4277
    .restart local v0  # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :goto_b
    if-eqz v0, :cond_69

    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v1, v2, :cond_69

    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 4278
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_22

    goto :goto_69

    .line 4282
    :cond_22
    iget-boolean v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-ne p3, v1, :cond_27

    .line 4283
    return-void

    .line 4286
    :cond_27
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    .line 4287
    .local v1, "netid":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportNetworkConnectivity("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4291
    .end local v1  # "netid":I
    iget-boolean v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-nez v1, :cond_55

    .line 4292
    return-void

    .line 4294
    :cond_55
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/LinkProperties;

    move-result-object v1

    .line 4295
    .local v1, "lp":Landroid/net/LinkProperties;
    const/4 v2, 0x0

    invoke-direct {p0, v1, p2, v2}, Lcom/android/server/ConnectivityService;->isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;IZ)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 4296
    return-void

    .line 4298
    :cond_61
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor()Landroid/net/NetworkMonitorManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/NetworkMonitorManager;->forceReevaluation(I)Z

    .line 4299
    return-void

    .line 4279
    .end local v1  # "lp":Landroid/net/LinkProperties;
    :cond_69
    :goto_69
    return-void
.end method

.method private handleSetAcceptPartialConnectivity(Landroid/net/Network;ZZ)V
    .registers 8
    .param p1, "network"  # Landroid/net/Network;
    .param p2, "accept"  # Z
    .param p3, "always"  # Z

    .line 3558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSetAcceptPartialConnectivity network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " accept="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " always="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3562
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 3563
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v0, :cond_2b

    .line 3565
    return-void

    .line 3568
    :cond_2b
    iget-boolean v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eqz v1, :cond_30

    .line 3570
    return-void

    .line 3573
    :cond_30
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->acceptPartialConnectivity:Z

    if-eq p2, v1, :cond_3a

    .line 3574
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iput-boolean p2, v1, Landroid/net/NetworkMisc;->acceptPartialConnectivity:Z

    .line 3578
    :cond_3a
    if-eqz p3, :cond_48

    .line 3579
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x81009

    .line 3580
    invoke-static {p2}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result v3

    .line 3579
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 3583
    :cond_48
    if-nez p2, :cond_56

    .line 3585
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x8100f

    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 3587
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_5d

    .line 3595
    :cond_56
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor()Landroid/net/NetworkMonitorManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkMonitorManager;->setAcceptPartialConnectivity()Z

    .line 3597
    :goto_5d
    return-void
.end method

.method private handleSetAcceptUnvalidated(Landroid/net/Network;ZZ)V
    .registers 8
    .param p1, "network"  # Landroid/net/Network;
    .param p2, "accept"  # Z
    .param p3, "always"  # Z

    .line 3512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSetAcceptUnvalidated network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " accept="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " always="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3515
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 3516
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v0, :cond_2b

    .line 3518
    return-void

    .line 3521
    :cond_2b
    iget-boolean v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    if-eqz v1, :cond_30

    .line 3523
    return-void

    .line 3526
    :cond_30
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    if-nez v1, :cond_3d

    .line 3527
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const-string v2, "BUG: setAcceptUnvalidated non non-explicitly selected network"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3530
    :cond_3d
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    if-eq p2, v1, :cond_55

    .line 3531
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v1

    .line 3532
    .local v1, "oldScore":I
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iput-boolean p2, v2, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    .line 3536
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iput-boolean p2, v2, Landroid/net/NetworkMisc;->acceptPartialConnectivity:Z

    .line 3537
    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 3538
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3541
    .end local v1  # "oldScore":I
    :cond_55
    if-eqz p3, :cond_63

    .line 3542
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x81009

    .line 3543
    invoke-static {p2}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result v3

    .line 3542
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 3546
    :cond_63
    if-nez p2, :cond_70

    .line 3548
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x8100f

    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 3550
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3553
    :cond_70
    return-void
.end method

.method private handleSetAvoidUnvalidated(Landroid/net/Network;)V
    .registers 5
    .param p1, "network"  # Landroid/net/Network;

    .line 3600
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 3601
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_1d

    iget-boolean v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eqz v1, :cond_b

    goto :goto_1d

    .line 3605
    :cond_b
    iget-boolean v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->avoidUnvalidated:Z

    if-nez v1, :cond_1c

    .line 3606
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v1

    .line 3607
    .local v1, "oldScore":I
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->avoidUnvalidated:Z

    .line 3608
    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 3609
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3611
    .end local v1  # "oldScore":I
    :cond_1c
    return-void

    .line 3603
    :cond_1d
    :goto_1d
    return-void
.end method

.method private handleTimedOutNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .registers 5
    .param p1, "nri"  # Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 3376
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    .line 3377
    return-void

    .line 3379
    :cond_b
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkForRequest(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 3380
    return-void

    .line 3382
    :cond_16
    sget-boolean v0, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v0, :cond_22

    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0}, Landroid/net/NetworkRequest;->isRequest()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 3383
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "releasing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (timeout)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3385
    :cond_3e
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRemoveNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .line 3386
    const/4 v0, 0x0

    const v1, 0x80005

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 3387
    return-void
.end method

.method private handleUnregisterNetworkFactory(Landroid/os/Messenger;)V
    .registers 5
    .param p1, "messenger"  # Landroid/os/Messenger;

    .line 5555
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    .line 5556
    .local v0, "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    if-nez v0, :cond_10

    .line 5557
    const-string v1, "Failed to find Messenger in unregisterNetworkFactory"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 5558
    return-void

    .line 5560
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterNetworkFactory for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5561
    return-void
.end method

.method private handleUpdateActiveDataSubId(I)V
    .registers 4
    .param p1, "subId"  # I

    .line 7506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting mPreferredSubId to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7507
    iput p1, p0, Lcom/android/server/ConnectivityService;->mPreferredSubId:I

    .line 7508
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 7509
    return-void
.end method

.method private handleUpdateTCPBuffersfor5G()V
    .registers 5

    .line 7497
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 7498
    .local v0, "network":Landroid/net/Network;
    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 7500
    .local v1, "ntwAgent":Lcom/android/server/connectivity/NetworkAgentInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUpdateTCPBuffersfor5G nai "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7501
    if-eqz v1, :cond_21

    .line 7502
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->updateTcpBufferSizes(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 7503
    :cond_21
    return-void
.end method

.method private hasWifiNetworkListenPermission(Landroid/net/NetworkCapabilities;)Z
    .registers 8
    .param p1, "nc"  # Landroid/net/NetworkCapabilities;

    .line 5459
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 5460
    return v0

    .line 5462
    :cond_4
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v1

    .line 5463
    .local v1, "transportTypes":[I
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    aget v2, v1, v0

    if-eq v2, v3, :cond_11

    goto :goto_1e

    .line 5467
    :cond_11
    :try_start_11
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_WIFI_STATE"

    const-string v5, "ConnectivityService"

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_1a} :catch_1c

    .line 5472
    nop

    .line 5473
    return v3

    .line 5470
    :catch_1c
    move-exception v2

    .line 5471
    .local v2, "e":Ljava/lang/SecurityException;
    return v0

    .line 5464
    .end local v2  # "e":Ljava/lang/SecurityException;
    :cond_1e
    :goto_1e
    return v0
.end method

.method private isBestMobileMultiNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z
    .registers 7
    .param p1, "currentNetwork"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "currentRequestNc"  # Landroid/net/NetworkCapabilities;
    .param p3, "newNetwork"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "newRequestNc"  # Landroid/net/NetworkCapabilities;
    .param p5, "requestNc"  # Landroid/net/NetworkCapabilities;

    .line 7487
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->isMobileNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 7488
    invoke-direct {p0, p3}, Lcom/android/server/ConnectivityService;->isMobileNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 7489
    invoke-direct {p0, p4, p5}, Lcom/android/server/ConnectivityService;->satisfiesMobileMultiNetworkDataCheck(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 7490
    invoke-direct {p0, p2, p5}, Lcom/android/server/ConnectivityService;->satisfiesMobileMultiNetworkDataCheck(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 7491
    const/4 v0, 0x1

    return v0

    .line 7493
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method private isDefaultRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)Z
    .registers 4
    .param p1, "nri"  # Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 5642
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    iget v1, v1, Landroid/net/NetworkRequest;->requestId:I

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isLiveNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;I)Z
    .registers 7
    .param p1, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "what"  # I

    .line 2625
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2626
    :cond_6
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 2627
    .local v0, "officialNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_16

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v1, 0x1

    return v1

    .line 2628
    :cond_16
    if-nez v0, :cond_1c

    sget-boolean v2, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v2, :cond_3f

    .line 2629
    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/android/server/ConnectivityService;->eventName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - isLiveNetworkAgent found mismatched netId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2632
    :cond_3f
    return v1
.end method

.method private isMobileNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .registers 4
    .param p1, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 7433
    const/4 v0, 0x0

    if-eqz p1, :cond_11

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v1, :cond_11

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 7434
    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 7435
    const/4 v0, 0x1

    return v0

    .line 7437
    :cond_11
    return v0
.end method

.method private isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;IZ)Z
    .registers 7
    .param p1, "lp"  # Landroid/net/LinkProperties;
    .param p2, "uid"  # I
    .param p3, "ignoreBlocked"  # Z

    .line 1351
    if-eqz p3, :cond_4

    .line 1352
    const/4 v0, 0x0

    return v0

    .line 1354
    :cond_4
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1355
    :try_start_7
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 1356
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getLockdown()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {v1, p2}, Lcom/android/server/connectivity/Vpn;->isBlockingUid(I)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1357
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 1359
    .end local v1  # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_35

    .line 1360
    if-nez p1, :cond_2a

    const-string v0, ""

    goto :goto_2e

    :cond_2a
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1361
    .local v0, "iface":Ljava/lang/String;
    :goto_2e
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-virtual {v1, p2, v0}, Lcom/android/server/net/NetworkPolicyManagerInternal;->isUidNetworkingBlocked(ILjava/lang/String;)Z

    move-result v1

    return v1

    .line 1359
    .end local v0  # "iface":Ljava/lang/String;
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v1
.end method

.method private isSystem(I)Z
    .registers 3
    .param p1, "uid"  # I

    .line 5392
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private isTetheringSupported()Z
    .registers 10

    .line 4129
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    const-string/jumbo v1, "ro.tether.denied"

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/MockableSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result v0

    .line 4130
    .local v0, "defaultVal":I
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "tether_supported"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->toBool(I)Z

    move-result v2

    .line 4132
    .local v2, "tetherSupported":Z
    const/4 v3, 0x0

    if-eqz v2, :cond_37

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    .line 4133
    const-string/jumbo v5, "no_config_tethering"

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_37

    move v4, v1

    goto :goto_38

    :cond_37
    move v4, v3

    .line 4136
    .local v4, "tetherEnabledInSettings":Z
    :goto_38
    const/4 v5, 0x0

    .line 4137
    .local v5, "adminUser":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 4139
    .local v6, "token":J
    :try_start_3d
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v8
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_57

    move v5, v8

    .line 4141
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4142
    nop

    .line 4144
    if-eqz v4, :cond_55

    if-eqz v5, :cond_55

    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v8}, Lcom/android/server/connectivity/Tethering;->hasTetherableConfiguration()Z

    move-result v8

    if-eqz v8, :cond_55

    goto :goto_56

    :cond_55
    move v1, v3

    :goto_56
    return v1

    .line 4141
    :catchall_57
    move-exception v1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private isUidNetworkingWithVpnBlocked(IIZZ)Z
    .registers 8
    .param p1, "uid"  # I
    .param p2, "uidRules"  # I
    .param p3, "isNetworkMetered"  # Z
    .param p4, "isBackgroundRestricted"  # Z

    .line 1971
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1972
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 1978
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v1, :cond_20

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getLockdown()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/Vpn;->isBlockingUid(I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1979
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 1981
    .end local v1  # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_28

    .line 1983
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/net/NetworkPolicyManagerInternal;->isUidNetworkingBlocked(IIZZ)Z

    move-result v0

    return v0

    .line 1981
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method private isViceWifiNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .registers 4
    .param p1, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 7525
    if-eqz p1, :cond_12

    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_12

    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0xa

    .line 7526
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 7527
    const/4 v0, 0x1

    return v0

    .line 7529
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$networksSortedById$1(Lcom/android/server/connectivity/NetworkAgentInfo;)I
    .registers 2
    .param p0, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2610
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v0, v0, Landroid/net/Network;->netId:I

    return v0
.end method

.method static synthetic lambda$requestsSortedById$2(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)I
    .registers 2
    .param p0, "nri"  # Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 2620
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"  # Ljava/lang/String;

    .line 4412
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4413
    return-void
.end method

.method private logNetworkEvent(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .registers 7
    .param p1, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "evtype"  # I

    .line 7274
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v0

    .line 7275
    .local v0, "transports":[I
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    new-instance v3, Landroid/net/metrics/NetworkEvent;

    invoke-direct {v3, p2}, Landroid/net/metrics/NetworkEvent;-><init>(I)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/metrics/IpConnectivityLog;->log(I[ILandroid/net/metrics/IpConnectivityLog$Event;)Z

    .line 7276
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"  # Ljava/lang/String;

    .line 4416
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4417
    return-void
.end method

.method private static loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "s"  # Ljava/lang/String;
    .param p1, "t"  # Ljava/lang/Throwable;

    .line 4420
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4421
    return-void
.end method

.method private makeDefault(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 5
    .param p1, "newNetwork"  # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 6335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Switching to new default network: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6338
    :try_start_14
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->setDefaultNetId(I)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1d} :catch_1e

    .line 6341
    goto :goto_33

    .line 6339
    :catch_1e
    move-exception v0

    .line 6340
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception setting default network :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 6343
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_33
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6344
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V

    .line 6345
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getTcpBufferSizes()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->updateTcpBufferSizes(Ljava/lang/String;)V

    .line 6346
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/DnsManager;->setDefaultDnsSystemProperties(Ljava/util/Collection;)V

    .line 6347
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChangedForNetworkStats()V

    .line 6349
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->updateAllVpnsCapabilities()V

    .line 6350
    return-void
.end method

.method private makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .param p1, "info"  # Landroid/net/NetworkInfo;
    .param p2, "bcastType"  # Ljava/lang/String;

    .line 2126
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2127
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    if-eqz v1, :cond_12

    .line 2128
    new-instance v1, Landroid/net/NetworkInfo;

    invoke-direct {v1, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    move-object p1, v1

    .line 2129
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/net/LockdownVpnTracker;->augmentNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 2131
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_67

    .line 2133
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2134
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/net/NetworkInfo;

    invoke-direct {v1, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    const-string/jumbo v2, "networkInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2135
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const-string/jumbo v2, "networkType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2136
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 2137
    const/4 v1, 0x1

    const-string/jumbo v2, "isFailover"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2138
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 2140
    :cond_3e
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4e

    .line 2141
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "reason"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2143
    :cond_4e
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5e

    .line 2144
    nop

    .line 2145
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    .line 2144
    const-string v2, "extraInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2147
    :cond_5e
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    const-string/jumbo v2, "inetCondition"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2148
    return-object v0

    .line 2131
    .end local v0  # "intent":Landroid/content/Intent;
    :catchall_67
    move-exception v1

    :try_start_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw v1
.end method

.method private maybeLogBlockedNetworkInfo(Landroid/net/NetworkInfo;I)V
    .registers 8
    .param p1, "ni"  # Landroid/net/NetworkInfo;
    .param p2, "uid"  # I

    .line 1365
    if-eqz p1, :cond_6b

    .line 1369
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mBlockedAppUids:Ljava/util/HashSet;

    monitor-enter v0

    .line 1370
    :try_start_5
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_1b

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mBlockedAppUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1371
    const/4 v1, 0x1

    .local v1, "blocked":Z
    goto :goto_2e

    .line 1372
    .end local v1  # "blocked":Z
    :cond_1b
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_66

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mBlockedAppUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 1373
    const/4 v1, 0x0

    .line 1377
    .restart local v1  # "blocked":Z
    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_68

    .line 1378
    if-eqz v1, :cond_34

    const-string v0, "BLOCKED"

    goto :goto_36

    :cond_34
    const-string v0, "UNBLOCKED"

    .line 1379
    .local v0, "action":Ljava/lang/String;
    :goto_36
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Returning %s NetworkInfo to uid=%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1380
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkInfoBlockingLogs:Landroid/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1381
    return-void

    .line 1375
    .end local v0  # "action":Ljava/lang/String;
    .end local v1  # "blocked":Z
    :cond_66
    :try_start_66
    monitor-exit v0

    return-void

    .line 1377
    :catchall_68
    move-exception v1

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_66 .. :try_end_6a} :catchall_68

    throw v1

    .line 1366
    :cond_6b
    return-void
.end method

.method private maybeLogBlockedStatusChanged(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Landroid/net/Network;Z)V
    .registers 8
    .param p1, "nri"  # Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .param p2, "net"  # Landroid/net/Network;
    .param p3, "blocked"  # Z

    .line 1385
    if-eqz p1, :cond_57

    if-eqz p2, :cond_57

    .line 1388
    if-eqz p3, :cond_9

    const-string v0, "BLOCKED"

    goto :goto_b

    :cond_9
    const-string v0, "UNBLOCKED"

    .line 1389
    .local v0, "action":Ljava/lang/String;
    :goto_b
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    .line 1390
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v3, v3, Landroid/net/NetworkRequest;->requestId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p2, Landroid/net/Network;->netId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1389
    const-string v2, "Blocked status changed to %s for %d(%d) on netId %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1391
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkInfoBlockingLogs:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1392
    return-void

    .line 1386
    .end local v0  # "action":Ljava/lang/String;
    :cond_57
    return-void
.end method

.method private maybeNotifyNetworkBlocked(Lcom/android/server/connectivity/NetworkAgentInfo;ZZZZ)V
    .registers 14
    .param p1, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "oldMetered"  # Z
    .param p3, "newMetered"  # Z
    .param p4, "oldRestrictBackground"  # Z
    .param p5, "newRestrictBackground"  # Z

    .line 6919
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v1

    if-ge v0, v1, :cond_3d

    .line 6920
    invoke-virtual {p1, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v1

    .line 6921
    .local v1, "nr":Landroid/net/NetworkRequest;
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 6922
    .local v2, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    iget v4, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 6926
    .local v3, "uidRules":I
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v4

    .line 6927
    :try_start_1e
    iget v5, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    invoke-direct {p0, v5, v3, p2, p4}, Lcom/android/server/ConnectivityService;->isUidNetworkingWithVpnBlocked(IIZZ)Z

    move-result v5

    .line 6929
    .local v5, "oldBlocked":Z
    iget v6, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    invoke-direct {p0, v6, v3, p3, p5}, Lcom/android/server/ConnectivityService;->isUidNetworkingWithVpnBlocked(IIZZ)Z

    move-result v6

    .line 6931
    .local v6, "newBlocked":Z
    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_3a

    .line 6932
    if-eq v5, v6, :cond_37

    .line 6933
    const v4, 0x8000b

    .line 6934
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result v7

    .line 6933
    invoke-direct {p0, v2, p1, v4, v7}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 6919
    .end local v1  # "nr":Landroid/net/NetworkRequest;
    .end local v2  # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .end local v3  # "uidRules":I
    .end local v5  # "oldBlocked":Z
    .end local v6  # "newBlocked":Z
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6931
    .restart local v1  # "nr":Landroid/net/NetworkRequest;
    .restart local v2  # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .restart local v3  # "uidRules":I
    :catchall_3a
    move-exception v5

    :try_start_3b
    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v5

    .line 6937
    .end local v0  # "i":I
    .end local v1  # "nr":Landroid/net/NetworkRequest;
    .end local v2  # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .end local v3  # "uidRules":I
    :cond_3d
    return-void
.end method

.method private maybeNotifyNetworkBlockedForNewUidRules(II)V
    .registers 13
    .param p1, "uid"  # I
    .param p2, "newRules"  # I

    .line 6945
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 6946
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v2, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->isMetered()Z

    move-result v2

    .line 6952
    .local v2, "metered":Z
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v3

    .line 6953
    :try_start_1f
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    .line 6954
    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    iget-boolean v5, p0, Lcom/android/server/ConnectivityService;->mRestrictBackground:Z

    .line 6953
    invoke-direct {p0, p1, v4, v2, v5}, Lcom/android/server/ConnectivityService;->isUidNetworkingWithVpnBlocked(IIZZ)Z

    move-result v4

    .line 6955
    .local v4, "oldBlocked":Z
    iget-boolean v5, p0, Lcom/android/server/ConnectivityService;->mRestrictBackground:Z

    invoke-direct {p0, p1, p2, v2, v5}, Lcom/android/server/ConnectivityService;->isUidNetworkingWithVpnBlocked(IIZZ)Z

    move-result v5

    .line 6957
    .local v5, "newBlocked":Z
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_5c

    .line 6958
    if-ne v4, v5, :cond_35

    .line 6959
    goto :goto_a

    .line 6961
    :cond_35
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result v3

    .line 6962
    .local v3, "arg":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3a
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v7

    if-ge v6, v7, :cond_5b

    .line 6963
    invoke-virtual {v1, v6}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v7

    .line 6964
    .local v7, "nr":Landroid/net/NetworkRequest;
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 6965
    .local v8, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    if-eqz v8, :cond_58

    iget v9, v8, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    if-ne v9, p1, :cond_58

    .line 6966
    const v9, 0x8000b

    invoke-direct {p0, v8, v1, v9, v3}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 6962
    .end local v7  # "nr":Landroid/net/NetworkRequest;
    .end local v8  # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :cond_58
    add-int/lit8 v6, v6, 0x1

    goto :goto_3a

    .line 6969
    .end local v1  # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v2  # "metered":Z
    .end local v3  # "arg":I
    .end local v4  # "oldBlocked":Z
    .end local v5  # "newBlocked":Z
    .end local v6  # "i":I
    :cond_5b
    goto :goto_a

    .line 6957
    .restart local v1  # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v2  # "metered":Z
    :catchall_5c
    move-exception v0

    :try_start_5d
    monitor-exit v3
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v0

    .line 6970
    .end local v1  # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v2  # "metered":Z
    :cond_5f
    return-void
.end method

.method private mixInCapabilities(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;
    .registers 7
    .param p1, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "nc"  # Landroid/net/NetworkCapabilities;

    .line 5958
    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-eqz v0, :cond_3c

    .line 5959
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 5960
    invoke-virtual {v0, p2}, Landroid/net/NetworkCapabilities;->satisfiedByImmutableNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 5964
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p2}, Landroid/net/NetworkCapabilities;->describeImmutableDifferences(Landroid/net/NetworkCapabilities;)Ljava/lang/String;

    move-result-object v0

    .line 5965
    .local v0, "diff":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 5966
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BUG: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " lost immutable capabilities:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5971
    .end local v0  # "diff":Ljava/lang/String;
    :cond_3c
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p2}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 5972
    .local v0, "newNc":Landroid/net/NetworkCapabilities;
    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    const/16 v2, 0x10

    if-eqz v1, :cond_4b

    .line 5973
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_4e

    .line 5975
    :cond_4b
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 5977
    :goto_4e
    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    const/16 v2, 0x11

    if-eqz v1, :cond_58

    .line 5978
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_5b

    .line 5980
    :cond_58
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 5982
    :goto_5b
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isBackgroundNetwork()Z

    move-result v1

    const/16 v2, 0x13

    if-eqz v1, :cond_67

    .line 5983
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_6a

    .line 5985
    :cond_67
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 5987
    :goto_6a
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSuspended()Z

    move-result v1

    const/16 v2, 0x15

    if-eqz v1, :cond_76

    .line 5988
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_79

    .line 5990
    :cond_76
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 5992
    :goto_79
    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->partialConnectivity:Z

    const/16 v2, 0x18

    if-eqz v1, :cond_83

    .line 5993
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_86

    .line 5995
    :cond_83
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 5998
    :goto_86
    return-object v0
.end method

.method private networkCapabilitiesRestrictedForCallerPermissions(Landroid/net/NetworkCapabilities;II)Landroid/net/NetworkCapabilities;
    .registers 6
    .param p1, "nc"  # Landroid/net/NetworkCapabilities;
    .param p2, "callerPid"  # I
    .param p3, "callerUid"  # I

    .line 1673
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 1674
    .local v0, "newNc":Landroid/net/NetworkCapabilities;
    invoke-direct {p0, p2, p3}, Lcom/android/server/ConnectivityService;->checkSettingsPermission(II)Z

    move-result v1

    if-nez v1, :cond_12

    .line 1675
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    .line 1676
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setSSID(Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    .line 1678
    :cond_12
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 1679
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkSpecifier;->redact()Landroid/net/NetworkSpecifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    .line 1681
    :cond_23
    return-object v0
.end method

.method private networkRequiresPrivateDnsValidation(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .registers 3
    .param p1, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2980
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v0}, Landroid/net/shared/NetworkMonitorUtils;->isPrivateDnsValidationRequired(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    return v0
.end method

.method private networksSortedById()[Lcom/android/server/connectivity/NetworkAgentInfo;
    .registers 3

    .line 2608
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2609
    .local v0, "networks":[Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2610
    sget-object v1, Lcom/android/server/-$$Lambda$ConnectivityService$_NU7EIcPVS-uF_gWH_NWN_gBL4w;->INSTANCE:Lcom/android/server/-$$Lambda$ConnectivityService$_NU7EIcPVS-uF_gWH_NWN_gBL4w;

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2611
    return-object v0
.end method

.method private declared-synchronized nextNetworkRequestId()I
    .registers 3

    monitor-enter p0

    .line 1203
    :try_start_1
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNextNetworkRequestId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/ConnectivityService;->mNextNetworkRequestId:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .end local p0  # "this":Lcom/android/server/ConnectivityService;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private notifyIfacesChangedForNetworkStats()V
    .registers 7

    .line 7066
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->ensureRunningOnConnectivityServiceThread()V

    .line 7067
    const/4 v0, 0x0

    .line 7068
    .local v0, "activeIface":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 7069
    .local v1, "activeLinkProperties":Landroid/net/LinkProperties;
    if-eqz v1, :cond_e

    .line 7070
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 7073
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mStatsService:Landroid/net/INetworkStatsService;

    .line 7074
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetworks()[Landroid/net/Network;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getAllVpnInfo()[Lcom/android/internal/net/VpnInfo;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getAllNetworkState()[Landroid/net/NetworkState;

    move-result-object v5

    .line 7073
    invoke-interface {v2, v3, v4, v5, v0}, Landroid/net/INetworkStatsService;->forceUpdateIfaces([Landroid/net/Network;[Lcom/android/internal/net/VpnInfo;[Landroid/net/NetworkState;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1f} :catch_20

    .line 7076
    goto :goto_21

    .line 7075
    :catch_20
    move-exception v2

    .line 7077
    :goto_21
    return-void
.end method

.method private notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 5
    .param p1, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 6749
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 6750
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    if-eqz v1, :cond_1c

    .line 6751
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 6752
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/net/LockdownVpnTracker;->onVpnStateChanged(Landroid/net/NetworkInfo;)V

    goto :goto_1c

    .line 6754
    :cond_17
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {v1}, Lcom/android/server/net/LockdownVpnTracker;->onNetworkInfoChanged()V

    .line 6757
    :cond_1c
    :goto_1c
    monitor-exit v0

    .line 6758
    return-void

    .line 6757
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private onPackageAdded(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 5008
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    if-gez p2, :cond_9

    goto :goto_f

    .line 5012
    :cond_9
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/connectivity/PermissionMonitor;->onPackageAdded(Ljava/lang/String;I)V

    .line 5013
    return-void

    .line 5009
    :cond_f
    :goto_f
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid package in onPackageAdded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5010
    return-void
.end method

.method private onPackageRemoved(Ljava/lang/String;IZ)V
    .registers 10
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "isReplacing"  # Z

    .line 5036
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_55

    if-gez p2, :cond_9

    goto :goto_55

    .line 5040
    :cond_9
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-virtual {v0, p2}, Lcom/android/server/connectivity/PermissionMonitor;->onPackageRemoved(I)V

    .line 5042
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 5043
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 5044
    :try_start_15
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    .line 5045
    .local v2, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v2, :cond_21

    .line 5046
    monitor-exit v1

    return-void

    .line 5049
    :cond_21
    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_50

    if-nez p3, :cond_50

    .line 5050
    sget-object v3, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing always-on VPN package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5052
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, v4}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;ZLjava/util/List;)Z

    .line 5054
    .end local v2  # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_50
    monitor-exit v1

    .line 5055
    return-void

    .line 5054
    :catchall_52
    move-exception v2

    monitor-exit v1
    :try_end_54
    .catchall {:try_start_15 .. :try_end_54} :catchall_52

    throw v2

    .line 5037
    .end local v0  # "userId":I
    :cond_55
    :goto_55
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid package in onPackageRemoved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5038
    return-void
.end method

.method private onPackageReplaced(Ljava/lang/String;I)V
    .registers 9
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 5016
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    if-gez p2, :cond_9

    goto :goto_4c

    .line 5020
    :cond_9
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 5021
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 5022
    :try_start_10
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    .line 5023
    .local v2, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v2, :cond_1c

    .line 5024
    monitor-exit v1

    return-void

    .line 5027
    :cond_1c
    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 5028
    sget-object v3, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restarting always-on VPN package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5030
    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->startAlwaysOnVpn()Z

    .line 5032
    .end local v2  # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_47
    monitor-exit v1

    .line 5033
    return-void

    .line 5032
    :catchall_49
    move-exception v2

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_10 .. :try_end_4b} :catchall_49

    throw v2

    .line 5017
    .end local v0  # "userId":I
    :cond_4c
    :goto_4c
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid package in onPackageReplaced: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5018
    return-void
.end method

.method private onUserAdded(I)V
    .registers 8
    .param p1, "userId"  # I

    .line 4980
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/PermissionMonitor;->onUserAdded(I)V

    .line 4981
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/Network;

    move-result-object v0

    .line 4982
    .local v0, "defaultNetwork":Landroid/net/Network;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 4983
    :try_start_10
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 4984
    .local v2, "vpnsSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    if-ge v3, v2, :cond_2e

    .line 4985
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/Vpn;

    .line 4986
    .local v4, "vpn":Lcom/android/server/connectivity/Vpn;
    invoke-virtual {v4, p1}, Lcom/android/server/connectivity/Vpn;->onUserAdded(I)V

    .line 4987
    invoke-virtual {v4, v0}, Lcom/android/server/connectivity/Vpn;->updateCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v5

    .line 4988
    .local v5, "nc":Landroid/net/NetworkCapabilities;
    invoke-direct {p0, v4, v5}, Lcom/android/server/ConnectivityService;->updateVpnCapabilities(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkCapabilities;)V

    .line 4984
    .end local v4  # "vpn":Lcom/android/server/connectivity/Vpn;
    .end local v5  # "nc":Landroid/net/NetworkCapabilities;
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 4990
    .end local v2  # "vpnsSize":I
    .end local v3  # "i":I
    :cond_2e
    monitor-exit v1

    .line 4991
    return-void

    .line 4990
    :catchall_30
    move-exception v2

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_10 .. :try_end_32} :catchall_30

    throw v2
.end method

.method private onUserRemoved(I)V
    .registers 8
    .param p1, "userId"  # I

    .line 4994
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/PermissionMonitor;->onUserRemoved(I)V

    .line 4995
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/Network;

    move-result-object v0

    .line 4996
    .local v0, "defaultNetwork":Landroid/net/Network;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 4997
    :try_start_10
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 4998
    .local v2, "vpnsSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    if-ge v3, v2, :cond_2e

    .line 4999
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/Vpn;

    .line 5000
    .local v4, "vpn":Lcom/android/server/connectivity/Vpn;
    invoke-virtual {v4, p1}, Lcom/android/server/connectivity/Vpn;->onUserRemoved(I)V

    .line 5001
    invoke-virtual {v4, v0}, Lcom/android/server/connectivity/Vpn;->updateCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v5

    .line 5002
    .local v5, "nc":Landroid/net/NetworkCapabilities;
    invoke-direct {p0, v4, v5}, Lcom/android/server/ConnectivityService;->updateVpnCapabilities(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkCapabilities;)V

    .line 4998
    .end local v4  # "vpn":Lcom/android/server/connectivity/Vpn;
    .end local v5  # "nc":Landroid/net/NetworkCapabilities;
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 5004
    .end local v2  # "vpnsSize":I
    .end local v3  # "i":I
    :cond_2e
    monitor-exit v1

    .line 5005
    return-void

    .line 5004
    :catchall_30
    move-exception v2

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_10 .. :try_end_32} :catchall_30

    throw v2
.end method

.method private onUserStart(I)V
    .registers 8
    .param p1, "userId"  # I

    .line 4953
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4954
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 4955
    .local v1, "userVpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v1, :cond_14

    .line 4956
    const-string v2, "Starting user already has a VPN"

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 4957
    monitor-exit v0

    return-void

    .line 4959
    :cond_14
    new-instance v2, Lcom/android/server/connectivity/Vpn;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-virtual {v3}, Lcom/android/server/ConnectivityService$InternalHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    invoke-direct {v2, v3, v4, v5, p1}, Lcom/android/server/connectivity/Vpn;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;I)V

    move-object v1, v2

    .line 4960
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4961
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 4962
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->updateLockdownVpn()Z

    .line 4964
    .end local v1  # "userVpn":Lcom/android/server/connectivity/Vpn;
    :cond_3e
    monitor-exit v0

    .line 4965
    return-void

    .line 4964
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v1
.end method

.method private onUserStop(I)V
    .registers 5
    .param p1, "userId"  # I

    .line 4968
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4969
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 4970
    .local v1, "userVpn":Lcom/android/server/connectivity/Vpn;
    if-nez v1, :cond_14

    .line 4971
    const-string v2, "Stopped user has no VPN"

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 4972
    monitor-exit v0

    return-void

    .line 4974
    :cond_14
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->onUserStopped()V

    .line 4975
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 4976
    .end local v1  # "userVpn":Lcom/android/server/connectivity/Vpn;
    monitor-exit v0

    .line 4977
    return-void

    .line 4976
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private onUserUnlocked(I)V
    .registers 4
    .param p1, "userId"  # I

    .line 5058
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5060
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 5061
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->updateLockdownVpn()Z

    goto :goto_1c

    .line 5063
    :cond_19
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->startAlwaysOnVpn(I)Z

    .line 5065
    :goto_1c
    monitor-exit v0

    .line 5066
    return-void

    .line 5065
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private processListenRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V
    .registers 8
    .param p1, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "capabilitiesChanged"  # Z

    .line 6354
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 6355
    .local v1, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v2, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 6356
    .local v2, "nr":Landroid/net/NetworkRequest;
    invoke-virtual {v2}, Landroid/net/NetworkRequest;->isListen()Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_a

    .line 6357
    :cond_1f
    iget v3, v2, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {p1, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSatisfyingRequest(I)Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-virtual {p1, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfies(Landroid/net/NetworkRequest;)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 6358
    iget-object v3, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v3, v3, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {p1, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->removeRequest(I)V

    .line 6359
    const v3, 0x80004

    const/4 v4, 0x0

    invoke-direct {p0, v1, p1, v3, v4}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 6361
    .end local v1  # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .end local v2  # "nr":Landroid/net/NetworkRequest;
    :cond_3b
    goto :goto_a

    .line 6363
    :cond_3c
    if-eqz p2, :cond_44

    .line 6364
    const v0, 0x80006

    invoke-virtual {p0, p1, v0}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 6367
    :cond_44
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 6368
    .restart local v1  # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v2, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 6369
    .restart local v2  # "nr":Landroid/net/NetworkRequest;
    invoke-virtual {v2}, Landroid/net/NetworkRequest;->isListen()Z

    move-result v3

    if-nez v3, :cond_63

    goto :goto_4e

    .line 6370
    :cond_63
    invoke-virtual {p1, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfies(Landroid/net/NetworkRequest;)Z

    move-result v3

    if-eqz v3, :cond_77

    iget v3, v2, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {p1, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSatisfyingRequest(I)Z

    move-result v3

    if-nez v3, :cond_77

    .line 6371
    invoke-virtual {p1, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->addRequest(Landroid/net/NetworkRequest;)Z

    .line 6372
    invoke-virtual {p0, p1, v1}, Lcom/android/server/ConnectivityService;->notifyNetworkAvailable(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .line 6374
    .end local v1  # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .end local v2  # "nr":Landroid/net/NetworkRequest;
    :cond_77
    goto :goto_4e

    .line 6375
    :cond_78
    return-void
.end method

.method private static putParcelable(Landroid/os/Bundle;Landroid/os/Parcelable;)V
    .registers 3
    .param p0, "bundle"  # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Bundle;",
            "TT;)V"
        }
    .end annotation

    .line 6297
    .local p1, "t":Landroid/os/Parcelable;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6298
    return-void
.end method

.method private registerPrivateDnsSettingsCallbacks()V
    .registers 7

    .line 1197
    invoke-static {}, Lcom/android/server/connectivity/DnsManager;->getPrivateDnsSettingsUris()[Landroid/net/Uri;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 1198
    .local v3, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    const/16 v5, 0x25

    invoke-virtual {v4, v3, v5}, Lcom/android/server/ConnectivityService$SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 1197
    .end local v3  # "uri":Landroid/net/Uri;
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1200
    :cond_14
    return-void
.end method

.method private registerSettingsCallbacks()V
    .registers 4

    .line 1181
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    .line 1182
    const-string v1, "http_proxy"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1181
    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 1186
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    .line 1187
    const-string/jumbo v1, "mobile_data_always_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1186
    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 1191
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    .line 1192
    const-string/jumbo v1, "wifi_always_requested"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1191
    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 1194
    return-void
.end method

.method private releasePendingNetworkRequestWithDelay(Landroid/app/PendingIntent;)V
    .registers 6
    .param p1, "operation"  # Landroid/app/PendingIntent;

    .line 5442
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 5444
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v1

    .line 5443
    const/16 v2, 0x1b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mReleasePendingIntentDelayMs:I

    int-to-long v2, v2

    .line 5442
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5445
    return-void
.end method

.method private rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .registers 10
    .param p1, "changed"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "oldScore"  # I

    .line 6711
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 6712
    .local v0, "now":J
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v2

    if-ge p2, v2, :cond_12

    .line 6713
    sget-object v2, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/server/ConnectivityService;->rematchNetworkAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;J)V

    goto :goto_42

    .line 6715
    :cond_12
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    .line 6716
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 6715
    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 6720
    .local v2, "nais":[Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 6721
    array-length v3, v2

    const/4 v4, 0x0

    :goto_2b
    if-ge v4, v3, :cond_42

    aget-object v5, v2, v4

    .line 6722
    .local v5, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    nop

    .line 6726
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v2, v6

    if-eq v5, v6, :cond_3a

    sget-object v6, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->DONT_REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    goto :goto_3c

    .line 6727
    :cond_3a
    sget-object v6, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    .line 6722
    :goto_3c
    invoke-direct {p0, v5, v6, v0, v1}, Lcom/android/server/ConnectivityService;->rematchNetworkAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;J)V

    .line 6721
    .end local v5  # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 6731
    .end local v2  # "nais":[Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_42
    :goto_42
    return-void
.end method

.method private rematchForAvoidBadWifiUpdate()V
    .registers 5

    .line 3709
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 3710
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3711
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v2, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 3712
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3714
    .end local v1  # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_27
    goto :goto_f

    .line 3715
    :cond_28
    return-void
.end method

.method private rematchNetworkAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;J)V
    .registers 31
    .param p1, "newNetwork"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "reapUnvalidatedNetworks"  # Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;
    .param p3, "now"  # J

    .line 6406
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-wide/from16 v9, p3

    iget-boolean v0, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-nez v0, :cond_b

    return-void

    .line 6407
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v0

    .line 6408
    .local v0, "keep":Z
    const/4 v1, 0x0

    .line 6409
    .local v1, "isNewDefault":Z
    const/4 v2, 0x0

    .line 6411
    .local v2, "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isBackgroundNetwork()Z

    move-result v11

    .line 6412
    .local v11, "wasBackgroundNetwork":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v12

    .line 6414
    .local v12, "score":I
    sget-boolean v3, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v3, :cond_21

    sget-boolean v3, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v3, :cond_3a

    :cond_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rematching "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6418
    :cond_3a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v3

    .line 6419
    .local v13, "affectedNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v3

    .line 6420
    .local v14, "addedRequests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ConnectivityService$NetworkRequestInfo;>;"
    iget-object v15, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 6421
    .local v15, "nc":Landroid/net/NetworkCapabilities;
    sget-boolean v3, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v3, :cond_60

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " network has: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6422
    :cond_60
    iget-object v3, v7, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move/from16 v18, v0

    move/from16 v17, v1

    move-object v6, v2

    .end local v0  # "keep":Z
    .end local v1  # "isNewDefault":Z
    .end local v2  # "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .local v6, "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .local v17, "isNewDefault":Z
    .local v18, "keep":Z
    :goto_6f
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_325

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 6427
    .local v0, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v2}, Landroid/net/NetworkRequest;->isListen()Z

    move-result v2

    if-eqz v2, :cond_84

    goto :goto_6f

    .line 6428
    :cond_84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkRequestInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6430
    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v2, v2, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {v7, v2}, Lcom/android/server/ConnectivityService;->getNetworkForRequest(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v5

    .line 6431
    .local v5, "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v8, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfies(Landroid/net/NetworkRequest;)Z

    move-result v4

    .line 6432
    .local v4, "satisfies":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentNetwork: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "satisfies:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6435
    const/4 v2, 0x0

    .line 6437
    .local v2, "satisfiesMobileMultiNetworkCheck":Z
    if-eqz v4, :cond_de

    .line 6438
    iget-object v3, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v1, v1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v7, v3, v1}, Lcom/android/server/ConnectivityService;->satisfiesMobileMultiNetworkDataCheck(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result v2

    move v3, v2

    goto :goto_df

    .line 6437
    :cond_de
    move v3, v2

    .line 6442
    .end local v2  # "satisfiesMobileMultiNetworkCheck":Z
    .local v3, "satisfiesMobileMultiNetworkCheck":Z
    :goto_df
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "satisfiesMobileMultiNetworkCheck = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6444
    const-string v1, "Network "

    if-ne v8, v5, :cond_129

    if-eqz v3, :cond_129

    .line 6445
    sget-boolean v2, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v2, :cond_125

    .line 6446
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was already satisfying request "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v1, v1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". No change."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6449
    :cond_125
    const/16 v18, 0x1

    .line 6450
    goto/16 :goto_6f

    .line 6454
    :cond_129
    sget-boolean v2, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v2, :cond_146

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v4

    .end local v4  # "satisfies":Z
    .local v20, "satisfies":Z
    const-string v4, "  checking if request is satisfied: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_148

    .end local v20  # "satisfies":Z
    .restart local v4  # "satisfies":Z
    :cond_146
    move/from16 v20, v4

    .line 6455
    .end local v4  # "satisfies":Z
    .restart local v20  # "satisfies":Z
    :goto_148
    if-eqz v3, :cond_288

    .line 6458
    sget-boolean v1, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v1, :cond_152

    sget-boolean v1, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v1, :cond_176

    .line 6459
    :cond_152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentScore = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6460
    if-eqz v5, :cond_163

    invoke-virtual {v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v2

    goto :goto_164

    :cond_163
    const/4 v2, 0x0

    :goto_164
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", newScore = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6459
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6463
    :cond_176
    if-eqz v5, :cond_1a2

    iget-object v4, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v2, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v1, v1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 6464
    move-object/from16 v19, v1

    move-object/from16 v1, p0

    move-object/from16 v21, v2

    move-object v2, v5

    move/from16 v22, v3

    .end local v3  # "satisfiesMobileMultiNetworkCheck":Z
    .local v22, "satisfiesMobileMultiNetworkCheck":Z
    move-object v3, v4

    move-object/from16 v4, p1

    move-object/from16 v23, v5

    .end local v5  # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .local v23, "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    move-object/from16 v5, v21

    move/from16 v21, v11

    move-object v11, v6

    .end local v6  # "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .local v11, "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .local v21, "wasBackgroundNetwork":Z
    move-object/from16 v6, v19

    invoke-direct/range {v1 .. v6}, Lcom/android/server/ConnectivityService;->isBestMobileMultiNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result v1

    if-nez v1, :cond_1a9

    .line 6469
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v1

    if-ge v1, v12, :cond_320

    goto :goto_1a9

    .line 6463
    .end local v21  # "wasBackgroundNetwork":Z
    .end local v22  # "satisfiesMobileMultiNetworkCheck":Z
    .end local v23  # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v3  # "satisfiesMobileMultiNetworkCheck":Z
    .restart local v5  # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v6  # "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .local v11, "wasBackgroundNetwork":Z
    :cond_1a2
    move/from16 v22, v3

    move-object/from16 v23, v5

    move/from16 v21, v11

    move-object v11, v6

    .line 6470
    .end local v3  # "satisfiesMobileMultiNetworkCheck":Z
    .end local v5  # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v6  # "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .local v11, "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v21  # "wasBackgroundNetwork":Z
    .restart local v22  # "satisfiesMobileMultiNetworkCheck":Z
    .restart local v23  # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_1a9
    :goto_1a9
    sget-boolean v1, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v1, :cond_1c6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rematch for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6471
    :cond_1c6
    move-object/from16 v5, v23

    .end local v23  # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v5  # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v5, :cond_21f

    .line 6472
    sget-boolean v1, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v1, :cond_1d2

    sget-boolean v1, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v1, :cond_1ea

    .line 6473
    :cond_1d2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   accepting network in place of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6475
    :cond_1ea
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v1, v1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v5, v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->removeRequest(I)V

    .line 6476
    iget-object v1, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v7, v1}, Lcom/android/server/ConnectivityService;->satisfiesMobileNetworkDataCheck(Landroid/net/NetworkCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_20b

    .line 6477
    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v1, v7, Lcom/android/server/ConnectivityService;->mLingerDelayMs:I

    int-to-long v3, v1

    move-object v1, v5

    move-wide/from16 v23, v3

    move-wide/from16 v3, p3

    move-object/from16 v25, v5

    .end local v5  # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .local v25, "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    move-wide/from16 v5, v23

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/connectivity/NetworkAgentInfo;->lingerRequest(Landroid/net/NetworkRequest;JJ)V

    goto :goto_219

    .line 6479
    .end local v25  # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v5  # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_20b
    move-object/from16 v25, v5

    .end local v5  # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v25  # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v1, v7, Lcom/android/server/ConnectivityService;->mNonDefaultSubscriptionLingerDelayMs:I

    int-to-long v5, v1

    move-object/from16 v1, v25

    move-wide/from16 v3, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/connectivity/NetworkAgentInfo;->lingerRequest(Landroid/net/NetworkRequest;JJ)V

    .line 6481
    :goto_219
    move-object/from16 v5, v25

    .end local v25  # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v5  # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22c

    .line 6483
    :cond_21f
    sget-boolean v1, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v1, :cond_227

    sget-boolean v1, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v1, :cond_22c

    :cond_227
    const-string v1, "   accepting network in place of null"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6485
    :cond_22c
    :goto_22c
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v8, v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->unlingerRequest(Landroid/net/NetworkRequest;)Z

    .line 6486
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v1, v1, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {v7, v1, v8}, Lcom/android/server/ConnectivityService;->setNetworkForRequest(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6487
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v8, v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->addRequest(Landroid/net/NetworkRequest;)Z

    move-result v1

    if-nez v1, :cond_264

    .line 6488
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BUG: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " already has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 6490
    :cond_264
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6491
    const/4 v1, 0x1

    .line 6497
    .end local v18  # "keep":Z
    .local v1, "keep":Z
    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {v7, v2, v8}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6498
    invoke-direct {v7, v0}, Lcom/android/server/ConnectivityService;->isDefaultRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)Z

    move-result v2

    if-eqz v2, :cond_283

    .line 6499
    const/4 v2, 0x1

    .line 6500
    .end local v17  # "isNewDefault":Z
    .local v2, "isNewDefault":Z
    move-object v3, v5

    .line 6501
    .end local v11  # "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .local v3, "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v5, :cond_27c

    .line 6502
    iget-object v4, v7, Lcom/android/server/ConnectivityService;->mLingerMonitor:Lcom/android/server/connectivity/LingerMonitor;

    invoke-virtual {v4, v5, v8}, Lcom/android/server/connectivity/LingerMonitor;->noteLingerDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6542
    .end local v0  # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .end local v5  # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v20  # "satisfies":Z
    .end local v22  # "satisfiesMobileMultiNetworkCheck":Z
    :cond_27c
    move/from16 v18, v1

    move/from16 v17, v2

    move-object v6, v3

    goto/16 :goto_321

    .line 6498
    .end local v2  # "isNewDefault":Z
    .end local v3  # "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v0  # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .restart local v5  # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v11  # "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v17  # "isNewDefault":Z
    .restart local v20  # "satisfies":Z
    .restart local v22  # "satisfiesMobileMultiNetworkCheck":Z
    :cond_283
    move/from16 v18, v1

    move-object v6, v11

    goto/16 :goto_321

    .line 6506
    .end local v1  # "keep":Z
    .end local v21  # "wasBackgroundNetwork":Z
    .end local v22  # "satisfiesMobileMultiNetworkCheck":Z
    .local v3, "satisfiesMobileMultiNetworkCheck":Z
    .restart local v6  # "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .local v11, "wasBackgroundNetwork":Z
    .restart local v18  # "keep":Z
    :cond_288
    move/from16 v22, v3

    move/from16 v21, v11

    move-object v11, v6

    .end local v3  # "satisfiesMobileMultiNetworkCheck":Z
    .end local v6  # "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .local v11, "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v21  # "wasBackgroundNetwork":Z
    .restart local v22  # "satisfiesMobileMultiNetworkCheck":Z
    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v2, v2, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v8, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSatisfyingRequest(I)Z

    move-result v2

    if-eqz v2, :cond_31e

    .line 6515
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " stopped satisfying request "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v1, v1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6518
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v1, v1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v8, v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->removeRequest(I)V

    .line 6519
    if-ne v5, v8, :cond_2d0

    .line 6520
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v1, v1, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {v7, v1}, Lcom/android/server/ConnectivityService;->clearNetworkForRequest(I)V

    .line 6521
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    const/4 v2, 0x0

    invoke-direct {v7, v1, v2}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_2fb

    .line 6523
    :cond_2d0
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BUG: Removing request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v3, v3, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6524
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " without updating mNetworkForRequestId or factories!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6523
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 6536
    :goto_2fb
    iget-object v1, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v7, v1}, Lcom/android/server/ConnectivityService;->satisfiesMobileNetworkDataCheck(Landroid/net/NetworkCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_30b

    .line 6537
    const v1, 0x80004

    const/4 v2, 0x0

    invoke-direct {v7, v0, v8, v1, v2}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    goto :goto_320

    .line 6539
    :cond_30b
    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v1, v7, Lcom/android/server/ConnectivityService;->mNonDefaultSubscriptionLingerDelayMs:I

    int-to-long v3, v1

    move-object/from16 v1, p1

    move-wide/from16 v23, v3

    move-wide/from16 v3, p3

    move-object/from16 v19, v5

    .end local v5  # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .local v19, "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    move-wide/from16 v5, v23

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/connectivity/NetworkAgentInfo;->lingerRequest(Landroid/net/NetworkRequest;JJ)V

    goto :goto_320

    .line 6506
    .end local v19  # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v5  # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_31e
    move-object/from16 v19, v5

    .line 6542
    .end local v0  # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .end local v5  # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v20  # "satisfies":Z
    .end local v22  # "satisfiesMobileMultiNetworkCheck":Z
    :cond_320
    :goto_320
    move-object v6, v11

    .end local v11  # "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v6  # "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    :goto_321
    move/from16 v11, v21

    goto/16 :goto_6f

    .line 6543
    .end local v21  # "wasBackgroundNetwork":Z
    .local v11, "wasBackgroundNetwork":Z
    :cond_325
    move/from16 v21, v11

    move-object v11, v6

    .end local v6  # "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .local v11, "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v21  # "wasBackgroundNetwork":Z
    const-string v1, "Exception in setNetworkPermission: "

    if-eqz v17, :cond_369

    .line 6545
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v0

    if-nez v0, :cond_355

    .line 6547
    :try_start_332
    iget-object v0, v7, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    iget-object v2, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    iget-object v3, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 6548
    invoke-direct {v7, v3}, Lcom/android/server/ConnectivityService;->getNetworkPermission(Landroid/net/NetworkCapabilities;)I

    move-result v3

    .line 6547
    invoke-interface {v0, v2, v3}, Landroid/os/INetworkManagementService;->setNetworkPermission(II)V
    :try_end_341
    .catch Landroid/os/RemoteException; {:try_start_332 .. :try_end_341} :catch_342

    .line 6551
    goto :goto_355

    .line 6549
    :catch_342
    move-exception v0

    .line 6550
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 6553
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_355
    :goto_355
    invoke-direct {v7, v8, v11}, Lcom/android/server/ConnectivityService;->updateDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6555
    invoke-direct/range {p0 .. p1}, Lcom/android/server/ConnectivityService;->makeDefault(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6557
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->metricsLogger()Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;->defaultNetworkMetrics()Lcom/android/server/connectivity/DefaultNetworkMetrics;

    move-result-object v0

    invoke-virtual {v0, v9, v10, v8, v11}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->logDefaultNetworkEvent(JLcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6560
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->scheduleReleaseNetworkTransitionWakelock()V

    .line 6563
    :cond_369
    iget-object v0, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v15}, Landroid/net/NetworkCapabilities;->equalRequestableCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-nez v0, :cond_38f

    .line 6564
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-array v5, v3, [Ljava/lang/Object;

    .line 6566
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v6

    const/16 v16, 0x0

    aput-object v6, v5, v16

    aput-object v15, v5, v4

    iget-object v6, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    aput-object v6, v5, v2

    .line 6564
    const-string v6, "BUG: %s changed requestable capabilities during rematch: %s -> %s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 6568
    :cond_38f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v0

    if-eq v0, v12, :cond_3b9

    .line 6569
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    .line 6571
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    .line 6569
    const-string v2, "BUG: %s changed score during rematch: %d -> %d"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 6575
    :cond_3b9
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isBackgroundNetwork()Z

    move-result v0

    move/from16 v2, v21

    .end local v21  # "wasBackgroundNetwork":Z
    .local v2, "wasBackgroundNetwork":Z
    if-eq v2, v0, :cond_3c8

    .line 6580
    iget-object v0, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v7, v12, v8, v0}, Lcom/android/server/ConnectivityService;->updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    const/4 v3, 0x0

    goto :goto_3cc

    .line 6582
    :cond_3c8
    const/4 v3, 0x0

    invoke-direct {v7, v8, v3}, Lcom/android/server/ConnectivityService;->processListenRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    .line 6585
    :goto_3cc
    iget-object v0, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v7, v0}, Lcom/android/server/ConnectivityService;->satisfiesMobileNetworkDataCheck(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-nez v0, :cond_3f7

    .line 6586
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v0

    if-nez v0, :cond_3f7

    .line 6589
    :try_start_3da
    iget-object v0, v7, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    iget-object v5, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v5, v5, Landroid/net/Network;->netId:I

    invoke-interface {v0, v5, v4}, Landroid/os/INetworkManagementService;->setNetworkPermission(II)V
    :try_end_3e3
    .catch Landroid/os/RemoteException; {:try_start_3da .. :try_end_3e3} :catch_3e4

    .line 6593
    goto :goto_3f7

    .line 6591
    :catch_3e4
    move-exception v0

    .line 6592
    .restart local v0  # "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 6597
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_3f7
    :goto_3f7
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3fb
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .local v1, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    invoke-virtual {v7, v8, v1}, Lcom/android/server/ConnectivityService;->notifyNetworkAvailable(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .end local v1  # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    goto :goto_3fb

    .line 6601
    :cond_40b
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_40f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 6602
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-direct {v7, v1, v9, v10}, Lcom/android/server/ConnectivityService;->updateLingerState(Lcom/android/server/connectivity/NetworkAgentInfo;J)V

    .line 6603
    .end local v1  # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    goto :goto_40f

    .line 6606
    :cond_41f
    invoke-direct {v7, v8, v9, v10}, Lcom/android/server/ConnectivityService;->updateLingerState(Lcom/android/server/connectivity/NetworkAgentInfo;J)V

    .line 6608
    if-eqz v17, :cond_449

    .line 6613
    if-eqz v11, :cond_431

    .line 6614
    iget-object v0, v7, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    iget-object v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-virtual {v0, v1, v11, v4}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(ILcom/android/server/connectivity/NetworkAgentInfo;Z)V

    .line 6617
    :cond_431
    iget-boolean v0, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eqz v0, :cond_438

    const/16 v1, 0x64

    goto :goto_439

    :cond_438
    move v1, v3

    :goto_439
    iput v1, v7, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 6618
    iget-object v0, v7, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    iget-object v1, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-virtual {v0, v1, v8}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->add(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6619
    invoke-direct/range {p0 .. p1}, Lcom/android/server/ConnectivityService;->notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6622
    :cond_449
    if-eqz v18, :cond_4ab

    .line 6627
    :try_start_44b
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    .line 6628
    .local v0, "bs":Lcom/android/internal/app/IBatteryStats;
    iget-object v1, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 6630
    .local v1, "type":I
    iget-object v3, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 6631
    .local v3, "baseIface":Ljava/lang/String;
    invoke-interface {v0, v3, v1}, Lcom/android/internal/app/IBatteryStats;->noteNetworkInterfaceType(Ljava/lang/String;I)V

    .line 6632
    iget-object v4, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_468
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_47c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/LinkProperties;

    .line 6633
    .local v5, "stacked":Landroid/net/LinkProperties;
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    .line 6634
    .local v6, "stackedIface":Ljava/lang/String;
    invoke-interface {v0, v6, v1}, Lcom/android/internal/app/IBatteryStats;->noteNetworkInterfaceType(Ljava/lang/String;I)V
    :try_end_47b
    .catch Landroid/os/RemoteException; {:try_start_44b .. :try_end_47b} :catch_47d

    .line 6635
    .end local v5  # "stacked":Landroid/net/LinkProperties;
    .end local v6  # "stackedIface":Ljava/lang/String;
    goto :goto_468

    .line 6637
    .end local v0  # "bs":Lcom/android/internal/app/IBatteryStats;
    .end local v1  # "type":I
    .end local v3  # "baseIface":Ljava/lang/String;
    :cond_47c
    goto :goto_47e

    .line 6636
    :catch_47d
    move-exception v0

    .line 6653
    :goto_47e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_47f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v1

    if-ge v0, v1, :cond_49e

    .line 6654
    invoke-virtual {v8, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v1

    .line 6655
    .local v1, "nr":Landroid/net/NetworkRequest;
    iget v3, v1, Landroid/net/NetworkRequest;->legacyType:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_49b

    invoke-virtual {v1}, Landroid/net/NetworkRequest;->isRequest()Z

    move-result v3

    if-eqz v3, :cond_49b

    .line 6657
    iget-object v3, v7, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    iget v4, v1, Landroid/net/NetworkRequest;->legacyType:I

    invoke-virtual {v3, v4, v8}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->add(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6653
    .end local v1  # "nr":Landroid/net/NetworkRequest;
    :cond_49b
    add-int/lit8 v0, v0, 0x1

    goto :goto_47f

    .line 6665
    .end local v0  # "i":I
    :cond_49e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v0

    if-eqz v0, :cond_4ab

    .line 6666
    iget-object v0, v7, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v8}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->add(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6669
    :cond_4ab
    sget-object v0, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    move-object/from16 v1, p2

    if-ne v1, v0, :cond_4f9

    .line 6670
    iget-object v0, v7, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4bb
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 6671
    .local v3, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    sget-object v4, Lcom/android/server/ConnectivityService$UnneededFor;->TEARDOWN:Lcom/android/server/ConnectivityService$UnneededFor;

    invoke-direct {v7, v3, v4}, Lcom/android/server/ConnectivityService;->unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$UnneededFor;)Z

    move-result v4

    if-eqz v4, :cond_4f8

    .line 6672
    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->getLingerExpiry()J

    move-result-wide v4

    const-wide/16 v19, 0x0

    cmp-long v4, v4, v19

    if-lez v4, :cond_4dd

    .line 6680
    invoke-direct {v7, v3, v9, v10}, Lcom/android/server/ConnectivityService;->updateLingerState(Lcom/android/server/connectivity/NetworkAgentInfo;J)V

    goto :goto_4f8

    .line 6682
    :cond_4dd
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reaping "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6683
    invoke-direct {v7, v3}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6686
    .end local v3  # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_4f8
    :goto_4f8
    goto :goto_4bb

    .line 6688
    :cond_4f9
    return-void
.end method

.method private removeDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 7
    .param p1, "networkAgent"  # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2278
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 2279
    .local v0, "iface":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 2281
    .local v1, "caps":Landroid/net/NetworkCapabilities;
    if-eqz v0, :cond_33

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_18

    const/4 v2, 0x1

    .line 2282
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 2285
    :cond_18
    :try_start_18
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {v2, v0}, Landroid/os/INetworkManagementService;->removeIdleTimer(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_1e

    .line 2288
    goto :goto_33

    .line 2286
    :catch_1e
    move-exception v2

    .line 2287
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in removeDataActivityTracking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2290
    .end local v2  # "e":Ljava/lang/Exception;
    :cond_33
    :goto_33
    return-void
.end method

.method private requestsSortedById()[Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .registers 3

    .line 2618
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 2619
    .local v0, "requests":[Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 2620
    sget-object v1, Lcom/android/server/-$$Lambda$ConnectivityService$iOdlQdHoQM14teTS-EPRH-RRL3k;->INSTANCE:Lcom/android/server/-$$Lambda$ConnectivityService$iOdlQdHoQM14teTS-EPRH-RRL3k;

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2621
    return-object v0
.end method

.method private requiresVpnIsolation(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z
    .registers 7
    .param p1, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "nc"  # Landroid/net/NetworkCapabilities;
    .param p3, "lp"  # Landroid/net/LinkProperties;

    .line 6099
    const/4 v0, 0x0

    if-eqz p2, :cond_30

    if-nez p3, :cond_6

    goto :goto_30

    .line 6100
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->allowBypass:Z

    if-nez v1, :cond_2e

    .line 6102
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getEstablishingVpnAppUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_2e

    .line 6103
    invoke-virtual {p3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 6104
    invoke-virtual {p3}, Landroid/net/LinkProperties;->hasIPv4DefaultRoute()Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-virtual {p3}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v1

    if-eqz v1, :cond_2e

    :cond_2c
    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    nop

    .line 6100
    :goto_2f
    return v0

    .line 6099
    :cond_30
    :goto_30
    return v0
.end method

.method private restrictBackgroundRequestForCaller(Landroid/net/NetworkCapabilities;)V
    .registers 4
    .param p1, "nc"  # Landroid/net/NetworkCapabilities;

    .line 1691
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/PermissionMonitor;->hasUseBackgroundNetworksPermission(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1692
    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1694
    :cond_11
    return-void
.end method

.method private restrictRequestUidsForCaller(Landroid/net/NetworkCapabilities;)V
    .registers 3
    .param p1, "nc"  # Landroid/net/NetworkCapabilities;

    .line 1685
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->checkSettingsPermission()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1686
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->setSingleUid(I)Landroid/net/NetworkCapabilities;

    .line 1688
    :cond_d
    return-void
.end method

.method private satisfiesMobileMultiNetworkDataCheck(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z
    .registers 4
    .param p1, "agentNc"  # Landroid/net/NetworkCapabilities;
    .param p2, "requestNc"  # Landroid/net/NetworkCapabilities;

    .line 7459
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getIntSpecifier(Landroid/net/NetworkSpecifier;)I

    move-result v0

    if-gez v0, :cond_11

    .line 7460
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->satisfiesMobileNetworkDataCheck(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    return v0

    .line 7462
    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method private satisfiesMobileNetworkDataCheck(Landroid/net/NetworkCapabilities;)Z
    .registers 6
    .param p1, "agentNc"  # Landroid/net/NetworkCapabilities;

    .line 7441
    const/4 v0, 0x1

    if-eqz p1, :cond_3c

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 7442
    iget v2, p0, Lcom/android/server/ConnectivityService;->mPreferredSubId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_10

    return v0

    .line 7444
    :cond_10
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v2, :cond_2e

    .line 7446
    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 7447
    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_3a

    .line 7448
    :cond_2e
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->getIntSpecifier(Landroid/net/NetworkSpecifier;)I

    move-result v2

    iget v3, p0, Lcom/android/server/ConnectivityService;->mPreferredSubId:I

    if-ne v2, v3, :cond_3b

    .line 7449
    :cond_3a
    return v0

    .line 7451
    :cond_3b
    return v1

    .line 7454
    :cond_3c
    return v0
.end method

.method private scheduleReleaseNetworkTransitionWakelock()V
    .registers 5

    .line 4221
    monitor-enter p0

    .line 4222
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_b

    .line 4223
    monitor-exit p0

    return-void

    .line 4225
    :cond_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_23

    .line 4227
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->removeMessages(I)V

    .line 4228
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4229
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4230
    return-void

    .line 4225
    .end local v0  # "msg":Landroid/os/Message;
    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0
.end method

.method private scheduleUnvalidatedPrompt(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 6
    .param p1, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3614
    sget-boolean v0, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scheduleUnvalidatedPrompt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3615
    :cond_1b
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x1d

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    .line 3616
    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f40

    .line 3615
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3618
    return-void
.end method

.method private sendDataActivityBroadcast(IZJ)V
    .registers 22
    .param p1, "deviceType"  # I
    .param p2, "active"  # Z
    .param p3, "tsNanos"  # J

    .line 2156
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.DATA_ACTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 2157
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "deviceType"

    move/from16 v11, p1

    invoke-virtual {v1, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2158
    const-string/jumbo v0, "isActive"

    move/from16 v12, p2

    invoke-virtual {v1, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2159
    const-string/jumbo v0, "tsNanos"

    move-wide/from16 v13, p3

    invoke-virtual {v1, v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2160
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 2162
    .local v15, "ident":J
    move-object/from16 v10, p0

    :try_start_25
    iget-object v2, v10, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "android.permission.RECEIVE_DATA_ACTIVITY_CHANGE"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v0, 0x0

    move-object v3, v1

    move-object v10, v0

    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_35
    .catchall {:try_start_25 .. :try_end_35} :catchall_3a

    .line 2165
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2166
    nop

    .line 2167
    return-void

    .line 2165
    :catchall_3a
    move-exception v0

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V
    .registers 4
    .param p1, "info"  # Landroid/net/NetworkInfo;
    .param p2, "bcastType"  # Ljava/lang/String;

    .line 2152
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2153
    return-void
.end method

.method private sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V
    .registers 3
    .param p1, "info"  # Landroid/net/NetworkInfo;

    .line 2122
    const-string v0, "android.net.conn.INET_CONDITION_ACTION"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 2123
    return-void
.end method

.method private sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .registers 10
    .param p1, "pendingIntent"  # Landroid/app/PendingIntent;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 6218
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 6220
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6221
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p0

    invoke-virtual/range {v1 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_23
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_23} :catch_24

    .line 6226
    goto :goto_41

    .line 6222
    :catch_24
    move-exception v0

    .line 6223
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " was not sent, it had been canceled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6224
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6225
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->releasePendingNetworkRequest(Landroid/app/PendingIntent;)V

    .line 6228
    .end local v0  # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_41
    return-void
.end method

.method private sendPendingIntentForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .registers 7
    .param p1, "nri"  # Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .param p2, "networkAgent"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p3, "notificationType"  # I

    .line 6207
    const v0, 0x80002

    if-ne p3, v0, :cond_24

    iget-boolean v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntentSent:Z

    if-nez v0, :cond_24

    .line 6208
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6209
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    const-string v2, "android.net.extra.NETWORK"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6210
    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    const-string v2, "android.net.extra.NETWORK_REQUEST"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6211
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntentSent:Z

    .line 6212
    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-direct {p0, v1, v0}, Lcom/android/server/ConnectivityService;->sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 6215
    .end local v0  # "intent":Landroid/content/Intent;
    :cond_24
    return-void
.end method

.method private sendStickyBroadcast(Landroid/content/Intent;)V
    .registers 9
    .param p1, "intent"  # Landroid/content/Intent;

    .line 2170
    monitor-enter p0

    .line 2171
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    if-nez v0, :cond_18

    .line 2172
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2173
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    .line 2175
    :cond_18
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2176
    sget-boolean v0, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v0, :cond_3a

    .line 2177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendStickyBroadcast: action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2180
    :cond_3a
    const/4 v0, 0x0

    .line 2181
    .local v0, "options":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2182
    .local v1, "ident":J
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 2183
    const-string/jumbo v3, "networkInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 2185
    .local v3, "ni":Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_66

    .line 2186
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE_SUPL"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2187
    const/high16 v4, 0x40000000  # 2.0f

    invoke-virtual {p1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_74

    .line 2189
    :cond_66
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v4

    .line 2190
    .local v4, "opts":Landroid/app/BroadcastOptions;
    const/16 v5, 0x17

    invoke-virtual {v4, v5}, Landroid/app/BroadcastOptions;->setMaxManifestReceiverApiLevel(I)V

    .line 2191
    invoke-virtual {v4}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    move-object v0, v5

    .line 2193
    .end local v4  # "opts":Landroid/app/BroadcastOptions;
    :goto_74
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v4
    :try_end_78
    .catchall {:try_start_1 .. :try_end_78} :catchall_a4

    .line 2195
    .local v4, "bs":Lcom/android/internal/app/IBatteryStats;
    :try_start_78
    const-string/jumbo v5, "networkType"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 2197
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2195
    invoke-interface {v4, v5, v6}, Lcom/android/internal/app/IBatteryStats;->noteConnectivityChanged(ILjava/lang/String;)V
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_8b} :catch_8c
    .catchall {:try_start_78 .. :try_end_8b} :catchall_a4

    .line 2199
    goto :goto_8d

    .line 2198
    :catch_8c
    move-exception v5

    .line 2200
    :goto_8d
    const/high16 v5, 0x200000

    :try_start_8f
    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_a4

    .line 2203
    .end local v3  # "ni":Landroid/net/NetworkInfo;
    .end local v4  # "bs":Lcom/android/internal/app/IBatteryStats;
    :cond_92
    :try_start_92
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, p1, v4, v0}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;)V
    :try_end_99
    .catchall {:try_start_92 .. :try_end_99} :catchall_9f

    .line 2205
    :try_start_99
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2206
    nop

    .line 2207
    .end local v0  # "options":Landroid/os/Bundle;
    .end local v1  # "ident":J
    monitor-exit p0

    .line 2208
    return-void

    .line 2205
    .restart local v0  # "options":Landroid/os/Bundle;
    .restart local v1  # "ident":J
    :catchall_9f
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/ConnectivityService;
    .end local p1  # "intent":Landroid/content/Intent;
    throw v3

    .line 2207
    .end local v0  # "options":Landroid/os/Bundle;
    .end local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/ConnectivityService;
    .restart local p1  # "intent":Landroid/content/Intent;
    :catchall_a4
    move-exception v0

    monitor-exit p0
    :try_end_a6
    .catchall {:try_start_99 .. :try_end_a6} :catchall_a4

    throw v0
.end method

.method private sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 9
    .param p1, "networkRequest"  # Landroid/net/NetworkRequest;
    .param p2, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 6190
    const/4 v0, 0x0

    .line 6191
    .local v0, "score":I
    const/4 v1, 0x0

    .line 6192
    .local v1, "serial":I
    if-eqz p2, :cond_a

    .line 6193
    invoke-virtual {p2}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v0

    .line 6194
    iget v1, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->factorySerialNumber:I

    .line 6196
    :cond_a
    sget-boolean v2, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v2, :cond_12

    sget-boolean v2, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v2, :cond_33

    .line 6197
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sending new Min Network Score("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/NetworkRequest;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6199
    :cond_33
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    .line 6200
    .local v3, "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    iget-object v4, v3, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v5, 0x83000

    invoke-virtual {v4, v5, v0, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 6202
    .end local v3  # "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    goto :goto_3d

    .line 6203
    :cond_52
    return-void
.end method

.method private sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 5
    .param p1, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 6181
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 6182
    invoke-virtual {p1, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v1

    .line 6184
    .local v1, "nr":Landroid/net/NetworkRequest;
    invoke-virtual {v1}, Landroid/net/NetworkRequest;->isListen()Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_15

    .line 6185
    :cond_12
    invoke-direct {p0, v1, p1}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6181
    .end local v1  # "nr":Landroid/net/NetworkRequest;
    :goto_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6187
    .end local v0  # "i":I
    :cond_18
    return-void
.end method

.method private setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V
    .registers 4
    .param p1, "tracker"  # Lcom/android/server/net/LockdownVpnTracker;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mVpns"
        }
    .end annotation

    .line 4687
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 4690
    .local v0, "existing":Lcom/android/server/net/LockdownVpnTracker;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 4691
    if-eqz v0, :cond_a

    .line 4692
    invoke-virtual {v0}, Lcom/android/server/net/LockdownVpnTracker;->shutdown()V

    .line 4695
    :cond_a
    if-eqz p1, :cond_13

    .line 4696
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 4697
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {v1}, Lcom/android/server/net/LockdownVpnTracker;->init()V

    .line 4699
    :cond_13
    return-void
.end method

.method private setNetworkForRequest(ILcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 5
    .param p1, "requestId"  # I
    .param p2, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 5614
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5615
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5616
    monitor-exit v0

    .line 5617
    return-void

    .line 5616
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private setupDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 8
    .param p1, "networkAgent"  # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2242
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 2245
    .local v0, "iface":Ljava/lang/String;
    const/4 v1, -0x1

    .line 2247
    .local v1, "type":I
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 2249
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/16 v3, 0xa

    const-string v4, "data_activity_timeout_mobile"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2252
    .local v2, "timeout":I
    const/4 v1, 0x0

    goto :goto_3a

    .line 2253
    .end local v2  # "timeout":I
    :cond_20
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 2255
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/16 v3, 0xf

    const-string v4, "data_activity_timeout_wifi"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2258
    .restart local v2  # "timeout":I
    const/4 v1, 0x1

    goto :goto_3a

    .line 2261
    .end local v2  # "timeout":I
    :cond_39
    const/4 v2, 0x0

    .line 2264
    .restart local v2  # "timeout":I
    :goto_3a
    if-lez v2, :cond_5c

    if-eqz v0, :cond_5c

    const/4 v3, -0x1

    if-eq v1, v3, :cond_5c

    .line 2266
    :try_start_41
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {v3, v0, v2, v1}, Landroid/os/INetworkManagementService;->addIdleTimer(Ljava/lang/String;II)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_46} :catch_47

    .line 2270
    goto :goto_5c

    .line 2267
    :catch_47
    move-exception v3

    .line 2269
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in setupDataActivityTracking "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2272
    .end local v3  # "e":Ljava/lang/Exception;
    :cond_5c
    :goto_5c
    return-void
.end method

.method private shouldPromptUnvalidated(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .registers 5
    .param p1, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3804
    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    const/4 v1, 0x0

    if-nez v0, :cond_24

    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    if-eqz v0, :cond_a

    goto :goto_24

    .line 3813
    :cond_a
    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->partialConnectivity:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v0, v0, Landroid/net/NetworkMisc;->acceptPartialConnectivity:Z

    if-nez v0, :cond_16

    .line 3814
    return v2

    .line 3820
    :cond_16
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v0, v0, Landroid/net/NetworkMisc;->explicitlySelected:Z

    if-eqz v0, :cond_23

    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v0, v0, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    if-nez v0, :cond_23

    .line 3821
    return v2

    .line 3824
    :cond_23
    return v1

    .line 3805
    :cond_24
    :goto_24
    return v1
.end method

.method private showNetworkNotification(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V
    .registers 14
    .param p1, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "type"  # Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    .line 3757
    sget-object v0, Lcom/android/server/ConnectivityService$9;->$SwitchMap$com$android$server$connectivity$NetworkNotificationManager$NotificationType:[I

    invoke-virtual {p2}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_38

    const/4 v1, 0x3

    if-eq v0, v1, :cond_33

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2b

    .line 3783
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown notification type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3784
    return-void

    .line 3777
    :cond_2b
    const-string v0, "android.net.conn.PROMPT_PARTIAL_CONNECTIVITY"

    .line 3780
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    .line 3781
    .local v1, "highPriority":Z
    move v8, v1

    goto :goto_58

    .line 3772
    .end local v0  # "action":Ljava/lang/String;
    .end local v1  # "highPriority":Z
    :cond_33
    const-string v0, "android.net.conn.PROMPT_LOST_VALIDATION"

    .line 3774
    .restart local v0  # "action":Ljava/lang/String;
    const/4 v1, 0x1

    .line 3775
    .restart local v1  # "highPriority":Z
    move v8, v1

    goto :goto_58

    .line 3767
    .end local v0  # "action":Ljava/lang/String;
    .end local v1  # "highPriority":Z
    :cond_38
    const-string v0, "android.net.conn.PROMPT_UNVALIDATED"

    .line 3769
    .restart local v0  # "action":Ljava/lang/String;
    const/4 v1, 0x1

    .line 3770
    .restart local v1  # "highPriority":Z
    move v8, v1

    goto :goto_58

    .line 3759
    .end local v0  # "action":Ljava/lang/String;
    .end local v1  # "highPriority":Z
    :cond_3d
    const-string v0, "android.settings.WIFI_SETTINGS"

    .line 3760
    .restart local v0  # "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->removeMessages(I)V

    .line 3761
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v3, Landroid/net/Network;->netId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x4e20

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3764
    const/4 v1, 0x1

    .line 3765
    .restart local v1  # "highPriority":Z
    move v8, v1

    .line 3787
    .end local v1  # "highPriority":Z
    .local v8, "highPriority":Z
    :goto_58
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v9, v1

    .line 3788
    .local v9, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOGGED_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-eq p2, v1, :cond_81

    .line 3789
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "netId"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3790
    const/high16 v1, 0x10000000

    invoke-virtual {v9, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3791
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.wifi.WifiNoInternetDialog"

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3795
    :cond_81
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x10000000

    const/4 v6, 0x0

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v4, v9

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v10

    .line 3798
    .local v10, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    const/4 v5, 0x0

    move-object v3, p2

    move-object v4, p1

    move-object v6, v10

    move v7, v8

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/connectivity/NetworkNotificationManager;->showNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V

    .line 3799
    return-void
.end method

.method private startAlwaysOnVpn(I)Z
    .registers 7
    .param p1, "userId"  # I

    .line 4716
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4717
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 4718
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v1, :cond_2b

    .line 4721
    sget-object v2, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has no Vpn configuration"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4722
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 4725
    :cond_2b
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->startAlwaysOnVpn()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 4726
    .end local v1  # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method private teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 6
    .param p1, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 6301
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numRequestNetworkRequests()I

    move-result v0

    if-eqz v0, :cond_2e

    .line 6302
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 6303
    invoke-virtual {p1, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v1

    .line 6305
    .local v1, "nr":Landroid/net/NetworkRequest;
    invoke-virtual {v1}, Landroid/net/NetworkRequest;->isListen()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 6302
    .end local v1  # "nr":Landroid/net/NetworkRequest;
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 6306
    .restart local v1  # "nr":Landroid/net/NetworkRequest;
    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dead network still had at least "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 6310
    .end local v0  # "i":I
    .end local v1  # "nr":Landroid/net/NetworkRequest;
    :cond_2e
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    .line 6311
    return-void
.end method

.method private throwIfLockdownEnabled()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mVpns"
        }
    .end annotation

    .line 4703
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    if-nez v0, :cond_5

    .line 4706
    return-void

    .line 4704
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unavailable in lockdown mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toBool(I)Z
    .registers 2
    .param p0, "encodedBoolean"  # I

    .line 7279
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$UnneededFor;)Z
    .registers 10
    .param p1, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "reason"  # Lcom/android/server/ConnectivityService$UnneededFor;

    .line 3316
    sget-object v0, Lcom/android/server/ConnectivityService$9;->$SwitchMap$com$android$server$ConnectivityService$UnneededFor:[I

    invoke-virtual {p2}, Lcom/android/server/ConnectivityService$UnneededFor;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_16

    .line 3324
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const-string v2, "Invalid reason. Cannot happen."

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3325
    return v1

    .line 3321
    :cond_16
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numForegroundNetworkRequests()I

    move-result v0

    .line 3322
    .local v0, "numRequests":I
    goto :goto_20

    .line 3318
    .end local v0  # "numRequests":I
    :cond_1b
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numRequestNetworkRequests()I

    move-result v0

    .line 3319
    .restart local v0  # "numRequests":I
    nop

    .line 3328
    :goto_20
    iget-boolean v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_9c

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v2

    if-nez v2, :cond_9c

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isLingering()Z

    move-result v2

    if-nez v2, :cond_9c

    if-lez v0, :cond_34

    goto :goto_9c

    .line 3332
    :cond_34
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 3333
    .local v4, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    sget-object v5, Lcom/android/server/ConnectivityService$UnneededFor;->LINGER:Lcom/android/server/ConnectivityService$UnneededFor;

    if-ne p2, v5, :cond_57

    iget-object v5, v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v5}, Landroid/net/NetworkRequest;->isBackgroundRequest()Z

    move-result v5

    if-eqz v5, :cond_57

    .line 3335
    goto :goto_3e

    .line 3340
    :cond_57
    iget-object v5, v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v5}, Landroid/net/NetworkRequest;->isRequest()Z

    move-result v5

    if-eqz v5, :cond_9a

    iget-object v5, v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p1, v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfies(Landroid/net/NetworkRequest;)Z

    move-result v5

    if-eqz v5, :cond_9a

    iget-object v5, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v6, v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v6, v6, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 3341
    invoke-direct {p0, v5, v6}, Lcom/android/server/ConnectivityService;->satisfiesMobileMultiNetworkDataCheck(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result v5

    if-eqz v5, :cond_9a

    iget-object v5, v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v5, v5, Landroid/net/NetworkRequest;->requestId:I

    .line 3343
    invoke-virtual {p1, v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSatisfyingRequest(I)Z

    move-result v5

    if-nez v5, :cond_99

    iget-object v5, v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v5, v5, Landroid/net/NetworkRequest;->requestId:I

    .line 3351
    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityService;->getNetworkForRequest(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v5

    if-eqz v5, :cond_9a

    iget-object v5, v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v5, v5, Landroid/net/NetworkRequest;->requestId:I

    .line 3352
    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityService;->getNetworkForRequest(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v5

    .line 3353
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScoreAsValidated()I

    move-result v6

    if-ge v5, v6, :cond_9a

    .line 3354
    :cond_99
    return v3

    .line 3356
    .end local v4  # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :cond_9a
    goto :goto_3e

    .line 3357
    :cond_9b
    return v1

    .line 3329
    :cond_9c
    :goto_9c
    return v3
.end method

.method private updateAllVpnsCapabilities()V
    .registers 6

    .line 4622
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/Network;

    move-result-object v0

    .line 4623
    .local v0, "defaultNetwork":Landroid/net/Network;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 4624
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    :try_start_c
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_26

    .line 4625
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Vpn;

    .line 4626
    .local v3, "vpn":Lcom/android/server/connectivity/Vpn;
    invoke-virtual {v3, v0}, Lcom/android/server/connectivity/Vpn;->updateCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v4

    .line 4627
    .local v4, "nc":Landroid/net/NetworkCapabilities;
    invoke-direct {p0, v3, v4}, Lcom/android/server/ConnectivityService;->updateVpnCapabilities(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkCapabilities;)V

    .line 4624
    .end local v3  # "vpn":Lcom/android/server/connectivity/Vpn;
    .end local v4  # "nc":Landroid/net/NetworkCapabilities;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 4629
    .end local v2  # "i":I
    :cond_26
    monitor-exit v1

    .line 4630
    return-void

    .line 4629
    :catchall_28
    move-exception v2

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_28

    throw v2
.end method

.method private updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V
    .registers 24
    .param p1, "oldScore"  # I
    .param p2, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p3, "nc"  # Landroid/net/NetworkCapabilities;

    .line 6018
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-direct {v7, v9, v10}, Lcom/android/server/ConnectivityService;->mixInCapabilities(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    move-result-object v11

    .line 6020
    .local v11, "newNc":Landroid/net/NetworkCapabilities;
    iget-object v0, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v0, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    .line 6022
    :cond_15
    iget-object v0, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v7, v0}, Lcom/android/server/ConnectivityService;->getNetworkPermission(Landroid/net/NetworkCapabilities;)I

    move-result v12

    .line 6023
    .local v12, "oldPermission":I
    invoke-direct {v7, v11}, Lcom/android/server/ConnectivityService;->getNetworkPermission(Landroid/net/NetworkCapabilities;)I

    move-result v13

    .line 6024
    .local v13, "newPermission":I
    if-eq v12, v13, :cond_4a

    iget-boolean v0, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-eqz v0, :cond_4a

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 6026
    :try_start_2b
    iget-object v0, v7, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    iget-object v1, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    invoke-interface {v0, v1, v13}, Landroid/os/INetworkManagementService;->setNetworkPermission(II)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_34} :catch_35

    .line 6029
    goto :goto_4a

    .line 6027
    :catch_35
    move-exception v0

    .line 6028
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in setNetworkPermission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 6033
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_4a
    :goto_4a
    monitor-enter p2

    .line 6034
    :try_start_4b
    iget-object v0, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 6035
    .local v0, "prevNc":Landroid/net/NetworkCapabilities;
    invoke-virtual {v9, v11}, Lcom/android/server/connectivity/NetworkAgentInfo;->setNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 6036
    monitor-exit p2
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_ba

    .line 6038
    invoke-direct {v7, v9, v0, v11}, Lcom/android/server/ConnectivityService;->updateUids(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)V

    .line 6040
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v1

    const/4 v14, 0x1

    if-ne v1, v8, :cond_65

    invoke-virtual {v11, v0}, Landroid/net/NetworkCapabilities;->equalRequestableCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 6045
    invoke-direct {v7, v9, v14}, Lcom/android/server/ConnectivityService;->processListenRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    goto :goto_6e

    .line 6049
    :cond_65
    invoke-direct {v7, v9, v8}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 6050
    const v1, 0x80006

    invoke-virtual {v7, v9, v1}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 6053
    :goto_6e
    if-eqz v0, :cond_af

    .line 6054
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->isMetered()Z

    move-result v15

    .line 6055
    .local v15, "oldMetered":Z
    invoke-virtual {v11}, Landroid/net/NetworkCapabilities;->isMetered()Z

    move-result v6

    .line 6056
    .local v6, "newMetered":Z
    const/16 v16, 0x0

    if-eq v15, v6, :cond_7e

    move v1, v14

    goto :goto_80

    :cond_7e
    move/from16 v1, v16

    :goto_80
    move/from16 v17, v1

    .line 6058
    .local v17, "meteredChanged":Z
    if-eqz v17, :cond_96

    .line 6059
    iget-boolean v5, v7, Lcom/android/server/ConnectivityService;->mRestrictBackground:Z

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v3, v15

    move v4, v6

    move/from16 v18, v5

    move/from16 v19, v6

    .end local v6  # "newMetered":Z
    .local v19, "newMetered":Z
    move/from16 v6, v18

    invoke-direct/range {v1 .. v6}, Lcom/android/server/ConnectivityService;->maybeNotifyNetworkBlocked(Lcom/android/server/connectivity/NetworkAgentInfo;ZZZZ)V

    goto :goto_98

    .line 6058
    .end local v19  # "newMetered":Z
    .restart local v6  # "newMetered":Z
    :cond_96
    move/from16 v19, v6

    .line 6063
    .end local v6  # "newMetered":Z
    .restart local v19  # "newMetered":Z
    :goto_98
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    .line 6064
    invoke-virtual {v11, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eq v2, v1, :cond_a5

    goto :goto_a7

    :cond_a5
    move/from16 v14, v16

    :goto_a7
    move v1, v14

    .line 6067
    .local v1, "roamingChanged":Z
    if-nez v17, :cond_ac

    if-eqz v1, :cond_af

    .line 6068
    :cond_ac
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChangedForNetworkStats()V

    .line 6072
    .end local v1  # "roamingChanged":Z
    .end local v15  # "oldMetered":Z
    .end local v17  # "meteredChanged":Z
    .end local v19  # "newMetered":Z
    :cond_af
    const/4 v1, 0x4

    invoke-virtual {v11, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_b9

    .line 6075
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->updateAllVpnsCapabilities()V

    .line 6077
    :cond_b9
    return-void

    .line 6036
    .end local v0  # "prevNc":Landroid/net/NetworkCapabilities;
    :catchall_ba
    move-exception v0

    :try_start_bb
    monitor-exit p2
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_ba

    throw v0
.end method

.method private updateDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 3
    .param p1, "newNetwork"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "oldNetwork"  # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2297
    if-eqz p1, :cond_5

    .line 2298
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->setupDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2300
    :cond_5
    if-eqz p2, :cond_a

    .line 2301
    invoke-direct {p0, p2}, Lcom/android/server/ConnectivityService;->removeDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2303
    :cond_a
    return-void
.end method

.method private updateDnses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)V
    .registers 9
    .param p1, "newLp"  # Landroid/net/LinkProperties;
    .param p2, "oldLp"  # Landroid/net/LinkProperties;
    .param p3, "netId"  # I

    .line 5888
    if-eqz p2, :cond_9

    invoke-virtual {p1, p2}, Landroid/net/LinkProperties;->isIdenticalDnses(Landroid/net/LinkProperties;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5889
    return-void

    .line 5892
    :cond_9
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 5893
    .local v0, "defaultNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_17

    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    if-ne v1, p3, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    .line 5896
    .local v1, "isDefaultNetwork":Z
    :goto_18
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v2

    .line 5897
    .local v2, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting DNS servers for network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5900
    .end local v2  # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    :try_start_38
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    invoke-virtual {v2, p3, p1, v1}, Lcom/android/server/connectivity/DnsManager;->setDnsConfigurationForNetwork(ILandroid/net/LinkProperties;Z)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3d} :catch_3e

    .line 5903
    goto :goto_53

    .line 5901
    :catch_3e
    move-exception v2

    .line 5902
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in setDnsConfigurationForNetwork: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 5904
    .end local v2  # "e":Ljava/lang/Exception;
    :goto_53
    return-void
.end method

.method private updateInetCondition(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 4
    .param p1, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 6735
    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    if-nez v0, :cond_5

    return-void

    .line 6738
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 6740
    :cond_c
    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eqz v0, :cond_13

    const/16 v0, 0x64

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 6742
    .local v0, "newInetCondition":I
    :goto_14
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    if-ne v0, v1, :cond_19

    return-void

    .line 6744
    :cond_19
    iput v0, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 6745
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V

    .line 6746
    return-void
.end method

.method private updateInterfaces(Landroid/net/LinkProperties;Landroid/net/LinkProperties;ILandroid/net/NetworkCapabilities;)V
    .registers 11
    .param p1, "newLp"  # Landroid/net/LinkProperties;
    .param p2, "oldLp"  # Landroid/net/LinkProperties;
    .param p3, "netId"  # I
    .param p4, "caps"  # Landroid/net/NetworkCapabilities;

    .line 5817
    new-instance v0, Landroid/net/LinkProperties$CompareResult;

    .line 5818
    const/4 v1, 0x0

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v2

    goto :goto_b

    :cond_a
    move-object v2, v1

    .line 5819
    :goto_b
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v1

    :cond_11
    invoke-direct {v0, v2, v1}, Landroid/net/LinkProperties$CompareResult;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 5820
    .local v0, "interfaceDiff":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Ljava/lang/String;>;"
    iget-object v1, v0, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5822
    .local v2, "iface":Ljava/lang/String;
    :try_start_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding iface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5823
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {v3, v2, p3}, Landroid/os/INetworkManagementService;->addInterfaceToNetwork(Ljava/lang/String;I)V

    .line 5824
    const/4 v3, 0x1

    invoke-direct {p0, v2, p4, v3}, Lcom/android/server/ConnectivityService;->wakeupModifyInterface(Ljava/lang/String;Landroid/net/NetworkCapabilities;Z)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_4b} :catch_4c

    .line 5827
    goto :goto_61

    .line 5825
    :catch_4c
    move-exception v3

    .line 5826
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception adding interface: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 5828
    .end local v2  # "iface":Ljava/lang/String;
    .end local v3  # "e":Ljava/lang/Exception;
    :goto_61
    goto :goto_1a

    .line 5829
    :cond_62
    iget-object v1, v0, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_68
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5831
    .restart local v2  # "iface":Ljava/lang/String;
    :try_start_74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing iface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5832
    const/4 v3, 0x0

    invoke-direct {p0, v2, p4, v3}, Lcom/android/server/ConnectivityService;->wakeupModifyInterface(Ljava/lang/String;Landroid/net/NetworkCapabilities;Z)V

    .line 5833
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {v3, v2, p3}, Landroid/os/INetworkManagementService;->removeInterfaceFromNetwork(Ljava/lang/String;I)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_99} :catch_9a

    .line 5836
    goto :goto_af

    .line 5834
    :catch_9a
    move-exception v3

    .line 5835
    .restart local v3  # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception removing interface: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 5837
    .end local v2  # "iface":Ljava/lang/String;
    .end local v3  # "e":Ljava/lang/Exception;
    :goto_af
    goto :goto_68

    .line 5838
    :cond_b0
    return-void
.end method

.method private updateLingerState(Lcom/android/server/connectivity/NetworkAgentInfo;J)V
    .registers 8
    .param p1, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "now"  # J

    .line 3062
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->updateLingerTimer()V

    .line 3063
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isLingering()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numForegroundNetworkRequests()I

    move-result v0

    if-lez v0, :cond_2f

    .line 3064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unlingering "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3065
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->unlinger()V

    .line 3066
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->logNetworkEvent(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    goto :goto_7a

    .line 3067
    :cond_2f
    sget-object v0, Lcom/android/server/ConnectivityService$UnneededFor;->LINGER:Lcom/android/server/ConnectivityService$UnneededFor;

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$UnneededFor;)Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getLingerExpiry()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_7a

    .line 3068
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getLingerExpiry()J

    move-result-wide v0

    sub-long/2addr v0, p2

    long-to-int v0, v0

    .line 3069
    .local v0, "lingerTime":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lingering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3070
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->linger()V

    .line 3071
    const/4 v1, 0x5

    invoke-direct {p0, p1, v1}, Lcom/android/server/ConnectivityService;->logNetworkEvent(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 3072
    const v1, 0x80003

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 3074
    .end local v0  # "lingerTime":I
    :cond_7a
    :goto_7a
    return-void
.end method

.method private updateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V
    .registers 6
    .param p1, "networkAgent"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "newLp"  # Landroid/net/LinkProperties;
    .param p3, "oldLp"  # Landroid/net/LinkProperties;

    .line 5732
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v0, v0, Landroid/net/Network;->netId:I

    .line 5737
    .local v0, "netId":I
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v1, p3, p2}, Lcom/android/server/connectivity/Nat464Xlat;->fixupLinkProperties(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V

    .line 5739
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, p2, p3, v0, v1}, Lcom/android/server/ConnectivityService;->updateInterfaces(Landroid/net/LinkProperties;Landroid/net/LinkProperties;ILandroid/net/NetworkCapabilities;)V

    .line 5743
    invoke-direct {p0, p2, p3, p1}, Lcom/android/server/ConnectivityService;->updateVpnFiltering(Landroid/net/LinkProperties;Landroid/net/LinkProperties;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 5745
    invoke-direct {p0, p2, p3}, Lcom/android/server/ConnectivityService;->updateMtu(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V

    .line 5750
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 5751
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getTcpBufferSizes()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->updateTcpBufferSizes(Ljava/lang/String;)V

    .line 5754
    :cond_21
    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/ConnectivityService;->updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)Z

    .line 5755
    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/ConnectivityService;->updateDnses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)V

    .line 5760
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/connectivity/DnsManager;->updatePrivateDnsStatus(ILandroid/net/LinkProperties;)V

    .line 5762
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 5763
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V

    goto :goto_3d

    .line 5765
    :cond_3a
    invoke-direct {p0, p2, p3}, Lcom/android/server/ConnectivityService;->updateProxy(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V

    .line 5768
    :goto_3d
    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    .line 5769
    monitor-enter p1

    .line 5770
    :try_start_44
    iput-object p2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 5771
    monitor-exit p1
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_61

    .line 5773
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Nat464Xlat;->update()V

    .line 5774
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChangedForNetworkStats()V

    .line 5775
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor()Landroid/net/NetworkMonitorManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/net/NetworkMonitorManager;->notifyLinkPropertiesChanged(Landroid/net/LinkProperties;)Z

    .line 5776
    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-eqz v1, :cond_64

    .line 5777
    const v1, 0x80007

    invoke-virtual {p0, p1, v1}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    goto :goto_64

    .line 5771
    :catchall_61
    move-exception v1

    :try_start_62
    monitor-exit p1
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v1

    .line 5781
    :cond_64
    :goto_64
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleCheckKeepalivesStillValid(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 5782
    return-void
.end method

.method private updateMtu(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V
    .registers 9
    .param p1, "newLp"  # Landroid/net/LinkProperties;
    .param p2, "oldLp"  # Landroid/net/LinkProperties;

    .line 2309
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 2310
    .local v0, "iface":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getMtu()I

    move-result v1

    .line 2311
    .local v1, "mtu":I
    if-nez p2, :cond_d

    if-nez v1, :cond_d

    .line 2313
    return-void

    .line 2315
    :cond_d
    if-eqz p2, :cond_20

    invoke-virtual {p1, p2}, Landroid/net/LinkProperties;->isIdenticalMtu(Landroid/net/LinkProperties;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 2316
    sget-boolean v2, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v2, :cond_1f

    const-string/jumbo v2, "identical MTU - not setting"

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2317
    :cond_1f
    return-void

    .line 2319
    :cond_20
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasGlobalIpv6Address()Z

    move-result v2

    invoke-static {v1, v2}, Landroid/net/LinkProperties;->isValidMtu(IZ)Z

    move-result v2

    const-string v3, ", "

    if-nez v2, :cond_49

    .line 2320
    if-eqz v1, :cond_48

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected mtu value: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2321
    :cond_48
    return-void

    .line 2325
    :cond_49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 2326
    const-string v2, "Setting MTU size with null iface."

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2327
    return-void

    .line 2331
    :cond_55
    :try_start_55
    sget-boolean v2, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v2, :cond_5d

    sget-boolean v2, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v2, :cond_77

    :cond_5d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting MTU size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2332
    :cond_77
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {v2, v0, v1}, Landroid/os/INetworkManagementService;->setMtu(Ljava/lang/String;I)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_7c} :catch_7d

    .line 2335
    goto :goto_94

    .line 2333
    :catch_7d
    move-exception v2

    .line 2334
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception in setMtu()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    .end local v2  # "e":Ljava/lang/Exception;
    :goto_94
    return-void
.end method

.method private updateNetworkInfo(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V
    .registers 10
    .param p1, "networkAgent"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "newInfo"  # Landroid/net/NetworkInfo;

    .line 6761
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 6762
    .local v0, "state":Landroid/net/NetworkInfo$State;
    const/4 v1, 0x0

    .line 6763
    .local v1, "oldInfo":Landroid/net/NetworkInfo;
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v2

    .line 6764
    .local v2, "oldScore":I
    monitor-enter p1

    .line 6765
    :try_start_a
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    move-object v1, v3

    .line 6766
    iput-object p2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 6767
    monitor-exit p1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_160

    .line 6768
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6771
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " EVENT_NETWORK_INFO_CHANGED, going from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6772
    if-nez v1, :cond_2a

    const-string/jumbo v4, "null"

    goto :goto_2e

    :cond_2a
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    :goto_2e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6771
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6776
    iget-boolean v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    const/4 v4, 0x1

    if-nez v3, :cond_63

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v3, :cond_53

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v3, :cond_63

    .line 6778
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v3

    if-eqz v3, :cond_63

    .line 6781
    :cond_53
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v5, 0x13

    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 6783
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->createNativeNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v3

    if-nez v3, :cond_61

    return-void

    .line 6784
    :cond_61
    iput-boolean v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    .line 6787
    :cond_63
    iget-boolean v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    const/4 v5, 0x0

    if-nez v3, :cond_e2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v3, :cond_e2

    .line 6788
    iput-boolean v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    .line 6790
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    if-nez v3, :cond_8c

    .line 6791
    sget-object v3, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " connected with null LinkProperties"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 6796
    :cond_8c
    monitor-enter p1

    .line 6797
    :try_start_8d
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p1, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->setNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 6798
    monitor-exit p1
    :try_end_93
    .catchall {:try_start_8d .. :try_end_93} :catchall_df

    .line 6799
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    invoke-virtual {v3}, Lcom/android/server/connectivity/DnsManager;->getPrivateDnsConfig()Landroid/net/shared/PrivateDnsConfig;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/android/server/ConnectivityService;->handlePerNetworkPrivateDnsConfig(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/shared/PrivateDnsConfig;)V

    .line 6800
    new-instance v3, Landroid/net/LinkProperties;

    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v3, v4}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-direct {p0, p1, v3, v5}, Lcom/android/server/ConnectivityService;->updateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V

    .line 6807
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v3, v3, Landroid/net/NetworkMisc;->acceptPartialConnectivity:Z

    if-eqz v3, :cond_b3

    .line 6808
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor()Landroid/net/NetworkMonitorManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkMonitorManager;->setAcceptPartialConnectivity()Z

    .line 6810
    :cond_b3
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor()Landroid/net/NetworkMonitorManager;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3, v4, v6}, Landroid/net/NetworkMonitorManager;->notifyNetworkConnected(Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)Z

    .line 6812
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->scheduleUnvalidatedPrompt(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6821
    const-string v3, "CONNECT"

    invoke-direct {p0, p1, v3, v5}, Lcom/android/server/ConnectivityService;->updateSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;Landroid/net/NetworkRequest;)V

    .line 6823
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v3

    if-eqz v3, :cond_cf

    .line 6824
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->updateAllVpnsCapabilities()V

    .line 6828
    :cond_cf
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 6829
    .local v3, "now":J
    sget-object v5, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    invoke-direct {p0, p1, v5, v3, v4}, Lcom/android/server/ConnectivityService;->rematchNetworkAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;J)V

    .line 6832
    const v5, 0x80001

    invoke-virtual {p0, p1, v5}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 6833
    .end local v3  # "now":J
    goto :goto_138

    .line 6798
    :catchall_df
    move-exception v3

    :try_start_e0
    monitor-exit p1
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_df

    throw v3

    .line 6833
    :cond_e2
    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v3, :cond_105

    .line 6834
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v3}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    .line 6835
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v3

    if-eqz v3, :cond_f6

    .line 6836
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, p1, v3, v5}, Lcom/android/server/ConnectivityService;->updateUids(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)V

    .line 6838
    :cond_f6
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->disconnectAndDestroyNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6839
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v3

    if-eqz v3, :cond_138

    .line 6844
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mProxyTracker:Lcom/android/server/connectivity/ProxyTracker;

    invoke-virtual {v3}, Lcom/android/server/connectivity/ProxyTracker;->sendProxyBroadcast()V

    goto :goto_138

    .line 6846
    :cond_105
    if-eqz v1, :cond_10f

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_113

    :cond_10f
    sget-object v3, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v0, v3, :cond_138

    .line 6849
    :cond_113
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v3

    if-eq v3, v2, :cond_11c

    .line 6850
    invoke-direct {p0, p1, v2}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 6852
    :cond_11c
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v3

    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v3, p1, v4}, Lcom/android/server/ConnectivityService;->updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 6856
    sget-object v3, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v0, v3, :cond_12d

    .line 6857
    const v3, 0x80009

    goto :goto_130

    .line 6858
    :cond_12d
    const v3, 0x8000a

    .line 6856
    :goto_130
    invoke-virtual {p0, p1, v3}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 6859
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v3, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->update(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6863
    :cond_138
    :goto_138
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MOBILE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15f

    if-eqz v1, :cond_15f

    .line 6864
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_15f

    .line 6865
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_15f

    .line 6866
    const-string/jumbo v3, "notifyIfacesChangedForNetworkStats when mobile network state changed to connected from suspended"

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6867
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChangedForNetworkStats()V

    .line 6870
    :cond_15f
    return-void

    .line 6767
    :catchall_160
    move-exception v3

    :try_start_161
    monitor-exit p1
    :try_end_162
    .catchall {:try_start_161 .. :try_end_162} :catchall_160

    throw v3
.end method

.method private updateNetworkScore(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .registers 6
    .param p1, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "score"  # I

    .line 6873
    sget-boolean v0, Lcom/android/server/ConnectivityService;->VDBG:Z

    const-string/jumbo v1, "updateNetworkScore for "

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v0, :cond_29

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6874
    :cond_29
    if-gez p2, :cond_4f

    .line 6875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " got a negative score ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ").  Bumping score to min of 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 6877
    const/4 p2, 0x0

    .line 6880
    :cond_4f
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v0

    .line 6881
    .local v0, "oldScore":I
    invoke-virtual {p1, p2}, Lcom/android/server/connectivity/NetworkAgentInfo;->setCurrentScore(I)V

    .line 6883
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 6885
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6886
    return-void
.end method

.method private updatePrivateDns(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/shared/PrivateDnsConfig;)V
    .registers 6
    .param p1, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "newCfg"  # Landroid/net/shared/PrivateDnsConfig;

    .line 3021
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/connectivity/DnsManager;->updatePrivateDns(Landroid/net/Network;Landroid/net/shared/PrivateDnsConfig;)Landroid/net/shared/PrivateDnsConfig;

    .line 3022
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/ConnectivityService;->updateDnses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)V

    .line 3023
    return-void
.end method

.method private updateProxy(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V
    .registers 6
    .param p1, "newLp"  # Landroid/net/LinkProperties;
    .param p2, "oldLp"  # Landroid/net/LinkProperties;

    .line 4369
    const/4 v0, 0x0

    if-nez p1, :cond_5

    move-object v1, v0

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    .line 4370
    .local v1, "newProxyInfo":Landroid/net/ProxyInfo;
    :goto_9
    if-nez p2, :cond_c

    goto :goto_10

    :cond_c
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    .line 4372
    .local v0, "oldProxyInfo":Landroid/net/ProxyInfo;
    :goto_10
    invoke-static {v1, v0}, Lcom/android/server/connectivity/ProxyTracker;->proxyInfoEqual(Landroid/net/ProxyInfo;Landroid/net/ProxyInfo;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 4373
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mProxyTracker:Lcom/android/server/connectivity/ProxyTracker;

    invoke-virtual {v2}, Lcom/android/server/connectivity/ProxyTracker;->sendProxyBroadcast()V

    .line 4375
    :cond_1b
    return-void
.end method

.method private updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)Z
    .registers 12
    .param p1, "newLp"  # Landroid/net/LinkProperties;
    .param p2, "oldLp"  # Landroid/net/LinkProperties;
    .param p3, "netId"  # I

    .line 5846
    new-instance v0, Landroid/net/LinkProperties$CompareResult;

    .line 5847
    const/4 v1, 0x0

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v2

    goto :goto_b

    :cond_a
    move-object v2, v1

    .line 5848
    :goto_b
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v1

    :cond_11
    invoke-direct {v0, v2, v1}, Landroid/net/LinkProperties$CompareResult;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 5853
    .local v0, "routeDiff":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/RouteInfo;>;"
    iget-object v1, v0, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "] to network "

    const-string v4, "Adding Route ["

    if-eqz v2, :cond_7d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 5854
    .local v2, "route":Landroid/net/RouteInfo;
    invoke-virtual {v2}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v5

    if-eqz v5, :cond_31

    goto :goto_1a

    .line 5855
    :cond_31
    sget-boolean v5, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v5, :cond_39

    sget-boolean v5, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v5, :cond_51

    :cond_39
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5857
    :cond_51
    :try_start_51
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p3, v2}, Landroid/os/INetworkManagementService;->addRoute(ILandroid/net/RouteInfo;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_56} :catch_57

    .line 5862
    goto :goto_7c

    .line 5858
    :catch_57
    move-exception v3

    .line 5859
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    instance-of v4, v4, Ljava/net/Inet4Address;

    if-nez v4, :cond_68

    sget-boolean v4, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v4, :cond_7c

    .line 5860
    :cond_68
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in addRoute for non-gateway: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 5863
    .end local v2  # "route":Landroid/net/RouteInfo;
    .end local v3  # "e":Ljava/lang/Exception;
    :cond_7c
    :goto_7c
    goto :goto_1a

    .line 5864
    :cond_7d
    iget-object v1, v0, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_83
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_de

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 5865
    .restart local v2  # "route":Landroid/net/RouteInfo;
    invoke-virtual {v2}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v5

    if-nez v5, :cond_96

    goto :goto_83

    .line 5866
    :cond_96
    sget-boolean v5, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v5, :cond_9e

    sget-boolean v5, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v5, :cond_b6

    :cond_9e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5868
    :cond_b6
    :try_start_b6
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {v5, p3, v2}, Landroid/os/INetworkManagementService;->addRoute(ILandroid/net/RouteInfo;)V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_bb} :catch_bc

    .line 5873
    goto :goto_dd

    .line 5869
    :catch_bc
    move-exception v5

    .line 5870
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    instance-of v6, v6, Ljava/net/Inet4Address;

    if-nez v6, :cond_c9

    sget-boolean v6, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v6, :cond_dd

    .line 5871
    :cond_c9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in addRoute for gateway: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 5874
    .end local v2  # "route":Landroid/net/RouteInfo;
    .end local v5  # "e":Ljava/lang/Exception;
    :cond_dd
    :goto_dd
    goto :goto_83

    .line 5876
    :cond_de
    iget-object v1, v0, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_130

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 5877
    .restart local v2  # "route":Landroid/net/RouteInfo;
    sget-boolean v3, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v3, :cond_f8

    sget-boolean v3, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v3, :cond_114

    :cond_f8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing Route ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "] from network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5879
    :cond_114
    :try_start_114
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p3, v2}, Landroid/os/INetworkManagementService;->removeRoute(ILandroid/net/RouteInfo;)V
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_119} :catch_11a

    .line 5882
    goto :goto_12f

    .line 5880
    :catch_11a
    move-exception v3

    .line 5881
    .restart local v3  # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in removeRoute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 5883
    .end local v2  # "route":Landroid/net/RouteInfo;
    .end local v3  # "e":Ljava/lang/Exception;
    :goto_12f
    goto :goto_e4

    .line 5884
    :cond_130
    iget-object v1, v0, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_143

    iget-object v1, v0, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_141

    goto :goto_143

    :cond_141
    const/4 v1, 0x0

    goto :goto_144

    :cond_143
    :goto_143
    const/4 v1, 0x1

    :goto_144
    return v1
.end method

.method private updateSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;Landroid/net/NetworkRequest;)V
    .registers 11
    .param p1, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "reason"  # Ljava/lang/String;
    .param p3, "request"  # Landroid/net/NetworkRequest;

    .line 5250
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 5251
    .local v0, "thresholdsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5252
    .local v1, "thresholds":Landroid/os/Bundle;
    const-string/jumbo v2, "thresholds"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5254
    sget-boolean v2, Lcom/android/server/ConnectivityService;->VDBG:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1c

    const-string v2, "CONNECT"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_63

    .line 5256
    :cond_1c
    if-eqz p3, :cond_41

    iget-object v2, p3, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 5257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p3, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v4}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "detail":Ljava/lang/String;
    goto :goto_42

    .line 5259
    .end local v2  # "detail":Ljava/lang/String;
    :cond_41
    move-object v2, p2

    .line 5261
    .restart local v2  # "detail":Ljava/lang/String;
    :goto_42
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    const/4 v5, 0x1

    .line 5262
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 5261
    const-string/jumbo v5, "updateSignalStrengthThresholds: %s, sending %s to %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5265
    .end local v2  # "detail":Ljava/lang/String;
    :cond_63
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v4, 0x8100e

    invoke-virtual {v2, v4, v3, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 5268
    return-void
.end method

.method private updateTcpBufferSizes(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 5
    .param p1, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2349
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2350
    return-void

    .line 2353
    :cond_7
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getTcpBufferSizes()Ljava/lang/String;

    move-result-object v0

    .line 2354
    .local v0, "tcpBufferSizes":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2355
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 2356
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v1

    .line 2355
    invoke-static {v0, v1}, Lcom/android/server/NetPluginDelegate;->get5GTcpBuffers(Ljava/lang/String;Landroid/net/NetworkSpecifier;)Ljava/lang/String;

    move-result-object v0

    .line 2358
    :cond_20
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->updateTcpBufferSizes(Ljava/lang/String;)V

    .line 2359
    return-void
.end method

.method private updateTcpBufferSizes(Ljava/lang/String;)V
    .registers 10
    .param p1, "tcpBufferSizes"  # Ljava/lang/String;

    .line 2362
    const-string v0, " "

    const/4 v1, 0x0

    .line 2363
    .local v1, "values":[Ljava/lang/String;
    const-string v2, ","

    if-eqz p1, :cond_b

    .line 2364
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2367
    :cond_b
    if-eqz v1, :cond_11

    array-length v3, v1

    const/4 v4, 0x6

    if-eq v3, v4, :cond_30

    .line 2368
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid tcpBufferSizes string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", using defaults"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2369
    const-string p1, "4096,87380,110208,4096,16384,110208"

    .line 2370
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2373
    :cond_30
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mCurrentTcpBufferSizes:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    return-void

    .line 2376
    :cond_39
    const/4 v2, 0x0

    :try_start_3a
    sget-boolean v3, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v3, :cond_42

    sget-boolean v3, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v3, :cond_58

    :cond_42
    sget-object v3, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting tx/rx TCP buffers to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    :cond_58
    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/CharSequence;

    aget-object v5, v1, v2

    aput-object v5, v4, v2

    const/4 v5, 0x1

    aget-object v6, v1, v5

    aput-object v6, v4, v5

    const/4 v6, 0x2

    aget-object v7, v1, v6

    aput-object v7, v4, v6

    invoke-static {v0, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 2379
    .local v4, "rmemValues":Ljava/lang/String;
    new-array v7, v3, [Ljava/lang/CharSequence;

    aget-object v3, v1, v3

    aput-object v3, v7, v2

    const/4 v3, 0x4

    aget-object v3, v1, v3

    aput-object v3, v7, v5

    const/4 v3, 0x5

    aget-object v3, v1, v3

    aput-object v3, v7, v6

    invoke-static {v0, v7}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2380
    .local v0, "wmemValues":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/net/INetd;

    invoke-interface {v3, v4, v0}, Landroid/net/INetd;->setTcpRWmemorySize(Ljava/lang/String;Ljava/lang/String;)V

    .line 2381
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mCurrentTcpBufferSizes:Ljava/lang/String;
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_88} :catch_89
    .catch Landroid/os/ServiceSpecificException; {:try_start_3a .. :try_end_88} :catch_89

    .line 2384
    .end local v0  # "wmemValues":Ljava/lang/String;
    .end local v4  # "rmemValues":Ljava/lang/String;
    goto :goto_9e

    .line 2382
    :catch_89
    move-exception v0

    .line 2383
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t set TCP buffer sizes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2386
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_9e
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    .line 2388
    const-string/jumbo v4, "net.tcp.default_init_rwnd"

    invoke-virtual {v3, v4, v2}, Lcom/android/server/connectivity/MockableSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2386
    const-string/jumbo v3, "tcp_default_init_rwnd"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2389
    .local v0, "rwndValue":Ljava/lang/Integer;
    const-string/jumbo v2, "sys.sysctl.tcp_def_init_rwnd"

    .line 2390
    .local v2, "sysctlKey":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_cd

    .line 2391
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "sys.sysctl.tcp_def_init_rwnd"

    invoke-virtual {v3, v5, v4}, Lcom/android/server/connectivity/MockableSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2393
    :cond_cd
    return-void
.end method

.method private updateUids(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)V
    .registers 12
    .param p1, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "prevNc"  # Landroid/net/NetworkCapabilities;
    .param p3, "newNc"  # Landroid/net/NetworkCapabilities;

    .line 6109
    const/4 v0, 0x0

    if-nez p2, :cond_5

    move-object v1, v0

    goto :goto_9

    :cond_5
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v1

    .line 6110
    .local v1, "prevRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    :goto_9
    if-nez p3, :cond_c

    goto :goto_10

    :cond_c
    invoke-virtual {p3}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v0

    .line 6111
    .local v0, "newRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    :goto_10
    if-nez v1, :cond_18

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 6112
    :cond_18
    if-nez v0, :cond_20

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v2

    .line 6113
    :cond_20
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 6115
    .local v2, "prevRangesCopy":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 6116
    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 6125
    :try_start_2b
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_43

    .line 6126
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Landroid/net/UidRange;

    .line 6127
    .local v3, "addedRangesArray":[Landroid/net/UidRange;
    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 6128
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    iget-object v5, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v5, v5, Landroid/net/Network;->netId:I

    invoke-interface {v4, v5, v3}, Landroid/os/INetworkManagementService;->addVpnUidRanges(I[Landroid/net/UidRange;)V

    .line 6130
    .end local v3  # "addedRangesArray":[Landroid/net/UidRange;
    :cond_43
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5b

    .line 6131
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Landroid/net/UidRange;

    .line 6132
    .local v3, "removedRangesArray":[Landroid/net/UidRange;
    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 6133
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    iget-object v5, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v5, v5, Landroid/net/Network;->netId:I

    invoke-interface {v4, v5, v3}, Landroid/os/INetworkManagementService;->removeVpnUidRanges(I[Landroid/net/UidRange;)V

    .line 6135
    .end local v3  # "removedRangesArray":[Landroid/net/UidRange;
    :cond_5b
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/ConnectivityService;->requiresVpnIsolation(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z

    move-result v3

    .line 6136
    .local v3, "wasFiltering":Z
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, p1, p3, v4}, Lcom/android/server/ConnectivityService;->requiresVpnIsolation(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z

    move-result v4

    .line 6137
    .local v4, "shouldFilter":Z
    iget-object v5, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    .line 6149
    .local v5, "iface":Ljava/lang/String;
    if-eqz v3, :cond_7e

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7e

    .line 6150
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    .line 6151
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getEstablishingVpnAppUid()I

    move-result v7

    .line 6150
    invoke-virtual {v6, v5, v1, v7}, Lcom/android/server/connectivity/PermissionMonitor;->onVpnUidRangesRemoved(Ljava/lang/String;Ljava/util/Set;I)V

    .line 6153
    :cond_7e
    if-eqz v4, :cond_8f

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8f

    .line 6154
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    .line 6155
    invoke-virtual {p3}, Landroid/net/NetworkCapabilities;->getEstablishingVpnAppUid()I

    move-result v7

    .line 6154
    invoke-virtual {v6, v5, v0, v7}, Lcom/android/server/connectivity/PermissionMonitor;->onVpnUidRangesAdded(Ljava/lang/String;Ljava/util/Set;I)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_8f} :catch_90

    .line 6160
    .end local v3  # "wasFiltering":Z
    .end local v4  # "shouldFilter":Z
    .end local v5  # "iface":Ljava/lang/String;
    :cond_8f
    goto :goto_96

    .line 6157
    :catch_90
    move-exception v3

    .line 6159
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "Exception in updateUids: "

    invoke-static {v4, v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6161
    .end local v3  # "e":Ljava/lang/Exception;
    :goto_96
    return-void
.end method

.method private updateVpnCapabilities(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkCapabilities;)V
    .registers 5
    .param p1, "vpn"  # Lcom/android/server/connectivity/Vpn;
    .param p2, "nc"  # Landroid/net/NetworkCapabilities;

    .line 4633
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->ensureRunningOnConnectivityServiceThread()V

    .line 4634
    invoke-virtual {p1}, Lcom/android/server/connectivity/Vpn;->getNetId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetId(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 4635
    .local v0, "vpnNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_18

    if-nez p2, :cond_10

    goto :goto_18

    .line 4638
    :cond_10
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v1

    invoke-direct {p0, v1, v0, p2}, Lcom/android/server/ConnectivityService;->updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 4639
    return-void

    .line 4636
    :cond_18
    :goto_18
    return-void
.end method

.method private updateVpnFiltering(Landroid/net/LinkProperties;Landroid/net/LinkProperties;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 11
    .param p1, "newLp"  # Landroid/net/LinkProperties;
    .param p2, "oldLp"  # Landroid/net/LinkProperties;
    .param p3, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 5908
    const/4 v0, 0x0

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    .line 5909
    .local v1, "oldIface":Ljava/lang/String;
    :goto_9
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 5910
    .local v0, "newIface":Ljava/lang/String;
    :cond_f
    iget-object v2, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, p3, v2, p2}, Lcom/android/server/ConnectivityService;->requiresVpnIsolation(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z

    move-result v2

    .line 5911
    .local v2, "wasFiltering":Z
    iget-object v3, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, p3, v3, p1}, Lcom/android/server/ConnectivityService;->requiresVpnIsolation(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z

    move-result v3

    .line 5913
    .local v3, "needsFiltering":Z
    if-nez v2, :cond_20

    if-nez v3, :cond_20

    .line 5915
    return-void

    .line 5918
    :cond_20
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    if-ne v2, v3, :cond_29

    .line 5920
    return-void

    .line 5923
    :cond_29
    iget-object v4, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v4}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v4

    .line 5924
    .local v4, "ranges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    iget-object v5, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v5}, Landroid/net/NetworkCapabilities;->getEstablishingVpnAppUid()I

    move-result v5

    .line 5929
    .local v5, "vpnAppUid":I
    if-eqz v2, :cond_3c

    .line 5930
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-virtual {v6, v1, v4, v5}, Lcom/android/server/connectivity/PermissionMonitor;->onVpnUidRangesRemoved(Ljava/lang/String;Ljava/util/Set;I)V

    .line 5932
    :cond_3c
    if-eqz v3, :cond_43

    .line 5933
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-virtual {v6, v0, v4, v5}, Lcom/android/server/connectivity/PermissionMonitor;->onVpnUidRangesAdded(Ljava/lang/String;Ljava/util/Set;I)V

    .line 5935
    :cond_43
    return-void
.end method

.method private wakeupModifyInterface(Ljava/lang/String;Landroid/net/NetworkCapabilities;Z)V
    .registers 10
    .param p1, "iface"  # Ljava/lang/String;
    .param p2, "caps"  # Landroid/net/NetworkCapabilities;
    .param p3, "add"  # Z

    .line 5787
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 5788
    return-void

    .line 5791
    :cond_8
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 5793
    .local v0, "mark":I
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 5798
    .local v1, "mask":I
    if-eqz v0, :cond_5d

    if-nez v1, :cond_27

    goto :goto_5d

    .line 5802
    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "iface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5804
    .local v2, "prefix":Ljava/lang/String;
    if-eqz p3, :cond_41

    .line 5805
    :try_start_3b
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/net/INetd;

    invoke-interface {v3, p1, v2, v0, v1}, Landroid/net/INetd;->wakeupAddInterface(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_46

    .line 5807
    :cond_41
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/net/INetd;

    invoke-interface {v3, p1, v2, v0, v1}, Landroid/net/INetd;->wakeupDelInterface(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_46} :catch_47

    .line 5811
    :goto_46
    goto :goto_5c

    .line 5809
    :catch_47
    move-exception v3

    .line 5810
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception modifying wakeup packet monitoring: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 5813
    .end local v3  # "e":Ljava/lang/Exception;
    :goto_5c
    return-void

    .line 5799
    .end local v2  # "prefix":Ljava/lang/String;
    :cond_5d
    :goto_5d
    return-void
.end method


# virtual methods
.method public addToNotShowVpnIcon(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkgName"  # Ljava/lang/String;

    .line 7514
    if-nez p1, :cond_4

    .line 7515
    const/4 v0, 0x0

    return v0

    .line 7516
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 7517
    .local v0, "user":I
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 7518
    :try_start_f
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2, p1}, Lcom/android/server/connectivity/Vpn;->addToNotShowVpnIconList(Ljava/lang/String;)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 7519
    :catchall_1d
    move-exception v2

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_1d

    throw v2
.end method

.method public addVpnAddress(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "address"  # Ljava/lang/String;
    .param p2, "prefixLength"  # I

    .line 7081
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 7082
    .local v0, "user":I
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 7083
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 7084
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/connectivity/Vpn;->addAddress(Ljava/lang/String;I)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 7085
    :catchall_1c
    move-exception v2

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method public avoidBadWifi()Z
    .registers 2

    .line 3692
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {v0}, Landroid/net/util/MultinetworkPolicyTracker;->getAvoidBadWifi()Z

    move-result v0

    return v0
.end method

.method public checkMobileProvisioning(I)I
    .registers 3
    .param p1, "suggestedTimeOutMs"  # I

    .line 4820
    const/4 v0, -0x1

    return v0
.end method

.method createMultinetworkPolicyTracker(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/net/util/MultinetworkPolicyTracker;
    .registers 5
    .param p1, "c"  # Landroid/content/Context;
    .param p2, "h"  # Landroid/os/Handler;
    .param p3, "r"  # Ljava/lang/Runnable;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 7254
    new-instance v0, Landroid/net/util/MultinetworkPolicyTracker;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/util/MultinetworkPolicyTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "writer"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 2436
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/utils/PriorityDump;->dump(Lcom/android/server/utils/PriorityDump$PriorityDumper;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2437
    return-void
.end method

.method public establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .param p1, "config"  # Lcom/android/internal/net/VpnConfig;

    .line 4487
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4488
    .local v0, "user":I
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 4489
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 4490
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2, p1}, Lcom/android/server/connectivity/Vpn;->establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 4491
    :catchall_1c
    move-exception v2

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method public factoryReset()V
    .registers 10

    .line 7170
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 7172
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "no_network_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 7173
    return-void

    .line 7176
    :cond_f
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 7178
    .local v0, "userId":I
    new-instance v1, Lcom/android/server/-$$Lambda$ConnectivityService$LEHWBvz4S-r8QDKRwIiJBgJlcRE;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$ConnectivityService$LEHWBvz4S-r8QDKRwIiJBgJlcRE;-><init>(Lcom/android/server/ConnectivityService;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 7184
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/ConnectivityService;->setAirplaneMode(Z)V

    .line 7186
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v3, "no_config_tethering"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 7188
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 7189
    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_36
    if-ge v5, v4, :cond_40

    aget-object v6, v3, v5

    .line 7190
    .local v6, "tether":Ljava/lang/String;
    invoke-virtual {p0, v6, v2}, Lcom/android/server/ConnectivityService;->untether(Ljava/lang/String;Ljava/lang/String;)I

    .line 7189
    .end local v6  # "tether":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 7194
    .end local v2  # "pkgName":Ljava/lang/String;
    :cond_40
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v3, "no_config_vpn"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_9b

    .line 7196
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 7197
    :try_start_4f
    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->getAlwaysOnVpnPackage(I)Ljava/lang/String;

    move-result-object v4

    .line 7198
    .local v4, "alwaysOnPackage":Ljava/lang/String;
    if-eqz v4, :cond_5b

    .line 7199
    invoke-virtual {p0, v0, v3, v1, v3}, Lcom/android/server/ConnectivityService;->setAlwaysOnVpnPackage(ILjava/lang/String;ZLjava/util/List;)Z

    .line 7200
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/ConnectivityService;->setVpnPackageAuthorization(Ljava/lang/String;IZ)V

    .line 7204
    :cond_5b
    iget-boolean v5, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    if-eqz v5, :cond_7a

    if-nez v0, :cond_7a

    .line 7205
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_65
    .catchall {:try_start_4f .. :try_end_65} :catchall_98

    .line 7207
    .local v5, "ident":J
    :try_start_65
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    const-string v8, "LOCKDOWN_VPN"

    invoke-virtual {v7, v8}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 7208
    iput-boolean v1, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    .line 7209
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V
    :try_end_71
    .catchall {:try_start_65 .. :try_end_71} :catchall_75

    .line 7211
    :try_start_71
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7212
    goto :goto_7a

    .line 7211
    :catchall_75
    move-exception v1

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0  # "userId":I
    .end local p0  # "this":Lcom/android/server/ConnectivityService;
    throw v1

    .line 7216
    .end local v5  # "ident":J
    .restart local v0  # "userId":I
    .restart local p0  # "this":Lcom/android/server/ConnectivityService;
    :cond_7a
    :goto_7a
    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v5

    .line 7217
    .local v5, "vpnConfig":Lcom/android/internal/net/VpnConfig;
    if-eqz v5, :cond_96

    .line 7218
    iget-boolean v6, v5, Lcom/android/internal/net/VpnConfig;->legacy:Z

    if-eqz v6, :cond_8c

    .line 7219
    const-string v1, "[Legacy VPN]"

    const-string v6, "[Legacy VPN]"

    invoke-virtual {p0, v1, v6, v0}, Lcom/android/server/ConnectivityService;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_96

    .line 7223
    :cond_8c
    iget-object v6, v5, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {p0, v6, v0, v1}, Lcom/android/server/ConnectivityService;->setVpnPackageAuthorization(Ljava/lang/String;IZ)V

    .line 7225
    const-string v1, "[Legacy VPN]"

    invoke-virtual {p0, v3, v1, v0}, Lcom/android/server/ConnectivityService;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 7228
    .end local v4  # "alwaysOnPackage":Ljava/lang/String;
    .end local v5  # "vpnConfig":Lcom/android/internal/net/VpnConfig;
    :cond_96
    :goto_96
    monitor-exit v2

    goto :goto_9b

    :catchall_98
    move-exception v1

    monitor-exit v2
    :try_end_9a
    .catchall {:try_start_71 .. :try_end_9a} :catchall_98

    throw v1

    .line 7232
    :cond_9b
    :goto_9b
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    const-string v2, "disallow_config_private_dns"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b4

    .line 7233
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "private_dns_mode"

    const-string/jumbo v4, "opportunistic"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7237
    :cond_b4
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "network_avoid_bad_wifi"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7239
    return-void
.end method

.method public getActiveLinkProperties()Landroid/net/LinkProperties;
    .registers 4

    .line 1618
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1619
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1620
    .local v0, "uid":I
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    move-result-object v1

    .line 1621
    .local v1, "state":Landroid/net/NetworkState;
    iget-object v2, v1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    return-object v2
.end method

.method public getActiveNetwork()Landroid/net/Network;
    .registers 3

    .line 1431
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1432
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->getActiveNetworkForUidInternal(IZ)Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNetworkForUid(IZ)Landroid/net/Network;
    .registers 4
    .param p1, "uid"  # I
    .param p2, "ignoreBlocked"  # Z

    .line 1437
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1438
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->getActiveNetworkForUidInternal(IZ)Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .registers 4

    .line 1421
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1422
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1423
    .local v0, "uid":I
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    move-result-object v1

    .line 1424
    .local v1, "state":Landroid/net/NetworkState;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/ConnectivityService;->filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V

    .line 1425
    iget-object v2, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-direct {p0, v2, v0}, Lcom/android/server/ConnectivityService;->maybeLogBlockedNetworkInfo(Landroid/net/NetworkInfo;I)V

    .line 1426
    iget-object v2, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    return-object v2
.end method

.method public getActiveNetworkInfoForUid(IZ)Landroid/net/NetworkInfo;
    .registers 5
    .param p1, "uid"  # I
    .param p2, "ignoreBlocked"  # Z

    .line 1479
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1480
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    move-result-object v0

    .line 1481
    .local v0, "state":Landroid/net/NetworkState;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/ConnectivityService;->filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V

    .line 1482
    iget-object v1, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    return-object v1
.end method

.method public getActiveNetworkInfoUnfiltered()Landroid/net/NetworkInfo;
    .registers 4

    .line 1471
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1472
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1473
    .local v0, "uid":I
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    move-result-object v1

    .line 1474
    .local v1, "state":Landroid/net/NetworkState;
    iget-object v2, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    return-object v2
.end method

.method public getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1718
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shame on UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for calling the hidden API getNetworkQuotaInfo(). Shame!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    new-instance v0, Landroid/net/NetworkQuotaInfo;

    invoke-direct {v0}, Landroid/net/NetworkQuotaInfo;-><init>()V

    return-object v0
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .registers 4

    .line 1518
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1519
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1520
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkInfo;>;"
    const/4 v1, 0x0

    .local v1, "networkType":I
    :goto_8
    const/16 v2, 0x13

    if-gt v1, v2, :cond_18

    .line 1522
    invoke-virtual {p0, v1}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1523
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_15

    .line 1524
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1521
    .end local v2  # "info":Landroid/net/NetworkInfo;
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1527
    .end local v1  # "networkType":I
    :cond_18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/NetworkInfo;

    return-object v1
.end method

.method public getAllNetworkState()[Landroid/net/NetworkState;
    .registers 8

    .line 1699
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1701
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1702
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkState;>;"
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_21

    aget-object v4, v1, v3

    .line 1703
    .local v4, "network":Landroid/net/Network;
    invoke-virtual {p0, v4}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v5

    .line 1704
    .local v5, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v5, :cond_1e

    .line 1709
    invoke-virtual {v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->getNetworkState()Landroid/net/NetworkState;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1702
    .end local v4  # "network":Landroid/net/Network;
    .end local v5  # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1712
    :cond_21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/NetworkState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/NetworkState;

    return-object v1
.end method

.method public getAllNetworks()[Landroid/net/Network;
    .registers 5

    .line 1543
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1544
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1545
    :try_start_6
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/Network;

    .line 1546
    .local v1, "result":[Landroid/net/Network;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_26

    .line 1547
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v3, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    aput-object v3, v1, v2

    .line 1546
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1549
    .end local v2  # "i":I
    :cond_26
    monitor-exit v0

    return-object v1

    .line 1550
    .end local v1  # "result":[Landroid/net/Network;
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public getAlwaysOnVpnPackage(I)Ljava/lang/String;
    .registers 7
    .param p1, "userId"  # I

    .line 4774
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceControlAlwaysOnVpnPermission()V

    .line 4775
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 4777
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4778
    :try_start_9
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 4779
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v1, :cond_31

    .line 4780
    sget-object v2, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has no Vpn configuration"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4781
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 4783
    :cond_31
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 4784
    .end local v1  # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public getCaptivePortalServerUrl()Ljava/lang/String;
    .registers 4

    .line 7117
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 7118
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104018f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7121
    .local v0, "settingUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 7122
    return-object v0

    .line 7125
    :cond_17
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "captive_portal_http_url"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7127
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 7128
    return-object v0

    .line 7131
    :cond_2a
    const-string v1, "http://connectivitycheck.gstatic.com/generate_204"

    return-object v1
.end method

.method public getConnectionOwnerUid(Landroid/net/ConnectionInfo;)I
    .registers 6
    .param p1, "connectionInfo"  # Landroid/net/ConnectionInfo;

    .line 7382
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceActiveVpnOrNetworkStackPermission()Lcom/android/server/connectivity/Vpn;

    move-result-object v0

    .line 7383
    .local v0, "vpn":Lcom/android/server/connectivity/Vpn;
    iget v1, p1, Landroid/net/ConnectionInfo;->protocol:I

    sget v2, Landroid/system/OsConstants;->IPPROTO_TCP:I

    if-eq v1, v2, :cond_2a

    iget v1, p1, Landroid/net/ConnectionInfo;->protocol:I

    sget v2, Landroid/system/OsConstants;->IPPROTO_UDP:I

    if-ne v1, v2, :cond_11

    goto :goto_2a

    .line 7384
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported protocol "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/net/ConnectionInfo;->protocol:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7387
    :cond_2a
    :goto_2a
    iget v1, p1, Landroid/net/ConnectionInfo;->protocol:I

    iget-object v2, p1, Landroid/net/ConnectionInfo;->local:Ljava/net/InetSocketAddress;

    iget-object v3, p1, Landroid/net/ConnectionInfo;->remote:Ljava/net/InetSocketAddress;

    invoke-static {v1, v2, v3}, Landroid/net/netlink/InetDiagMessage;->getConnectionOwnerUid(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)I

    move-result v1

    .line 7391
    .local v1, "uid":I
    if-eqz v0, :cond_3e

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Vpn;->appliesToUid(I)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 7392
    const/4 v2, -0x1

    return v2

    .line 7395
    :cond_3e
    return v1
.end method

.method public getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;
    .registers 12
    .param p1, "userId"  # I

    .line 1569
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1571
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1573
    .local v0, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Network;Landroid/net/NetworkCapabilities;>;"
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 1574
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getNetworkCapabilitiesInternal(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/NetworkCapabilities;

    move-result-object v2

    .line 1575
    .local v2, "nc":Landroid/net/NetworkCapabilities;
    if-eqz v2, :cond_17

    .line 1576
    iget-object v3, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1579
    :cond_17
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1580
    :try_start_1a
    iget-boolean v4, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    if-nez v4, :cond_46

    .line 1581
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/Vpn;

    .line 1582
    .local v4, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v4, :cond_46

    .line 1583
    invoke-virtual {v4}, Lcom/android/server/connectivity/Vpn;->getUnderlyingNetworks()[Landroid/net/Network;

    move-result-object v5

    .line 1584
    .local v5, "networks":[Landroid/net/Network;
    if-eqz v5, :cond_46

    .line 1585
    array-length v6, v5

    const/4 v7, 0x0

    :goto_30
    if-ge v7, v6, :cond_46

    aget-object v8, v5, v7

    .line 1586
    .local v8, "network":Landroid/net/Network;
    invoke-virtual {p0, v8}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v9

    move-object v1, v9

    .line 1587
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getNetworkCapabilitiesInternal(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/NetworkCapabilities;

    move-result-object v9

    move-object v2, v9

    .line 1588
    if-eqz v2, :cond_43

    .line 1589
    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1585
    .end local v8  # "network":Landroid/net/Network;
    :cond_43
    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    .line 1595
    .end local v4  # "vpn":Lcom/android/server/connectivity/Vpn;
    .end local v5  # "networks":[Landroid/net/Network;
    :cond_46
    monitor-exit v3
    :try_end_47
    .catchall {:try_start_1a .. :try_end_47} :catchall_59

    .line 1597
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v3, v3, [Landroid/net/NetworkCapabilities;

    .line 1598
    .local v3, "out":[Landroid/net/NetworkCapabilities;
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, [Landroid/net/NetworkCapabilities;

    .line 1599
    return-object v3

    .line 1595
    .end local v3  # "out":[Landroid/net/NetworkCapabilities;
    :catchall_59
    move-exception v4

    :try_start_5a
    monitor-exit v3
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v4
.end method

.method public getDefaultRequest()Landroid/net/NetworkRequest;
    .registers 2

    .line 3884
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    return-object v0
.end method

.method public getGlobalProxy()Landroid/net/ProxyInfo;
    .registers 2

    .line 4353
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mProxyTracker:Lcom/android/server/connectivity/ProxyTracker;

    invoke-virtual {v0}, Lcom/android/server/connectivity/ProxyTracker;->getGlobalProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .registers 3
    .param p1, "iface"  # Ljava/lang/String;

    .line 4043
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 4045
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4046
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->getLastTetherError(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 4048
    :cond_10
    const/4 v0, 0x3

    return v0
.end method

.method public getLatestTetheringEntitlementResult(ILandroid/os/ResultReceiver;ZLjava/lang/String;)V
    .registers 6
    .param p1, "type"  # I
    .param p2, "receiver"  # Landroid/os/ResultReceiver;
    .param p3, "showEntitlementUi"  # Z
    .param p4, "callerPkg"  # Ljava/lang/String;

    .line 4179
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0, p4}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 4180
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->getLatestTetheringEntitlementResult(ILandroid/os/ResultReceiver;Z)V

    .line 4181
    return-void
.end method

.method public getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;
    .registers 4
    .param p1, "userId"  # I

    .line 4518
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 4520
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4521
    :try_start_6
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4522
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getLegacyVpnInfoForSmartVpn(I)Lcom/android/internal/net/LegacyVpnInfo;
    .registers 4
    .param p1, "userId"  # I

    .line 4532
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 4534
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4535
    :try_start_6
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfoForSmartVpn()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4536
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;
    .registers 3
    .param p1, "network"  # Landroid/net/Network;

    .line 1639
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1640
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public getLinkPropertiesForType(I)Landroid/net/LinkProperties;
    .registers 5
    .param p1, "networkType"  # I

    .line 1626
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1627
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 1628
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_18

    .line 1629
    monitor-enter v0

    .line 1630
    :try_start_c
    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    monitor-exit v0

    return-object v1

    .line 1631
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_15

    throw v1

    .line 1633
    :cond_18
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMobileProvisioningUrl()Ljava/lang/String;
    .registers 6

    .line 4897
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 4898
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getProvisioningUrlBaseFromFile()Ljava/lang/String;

    move-result-object v0

    .line 4899
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 4900
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040446

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4901
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMobileProvisioningUrl: mobile_provisioining_url from resource ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_43

    .line 4903
    :cond_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMobileProvisioningUrl: mobile_provisioning_url from File ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4906
    :goto_43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_73

    .line 4907
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 4908
    .local v1, "phoneNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 4909
    const-string v1, "0000000000"

    .line 4911
    :cond_57
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 4912
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 4913
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    .line 4911
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4917
    .end local v1  # "phoneNumber":Ljava/lang/String;
    :cond_73
    return-object v0
.end method

.method public getMultipathPreference(Landroid/net/Network;)I
    .registers 5
    .param p1, "network"  # Landroid/net/Network;

    .line 3866
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 3868
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 3869
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_15

    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v2, 0xb

    .line 3870
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 3871
    const/4 v1, 0x7

    return v1

    .line 3874
    :cond_15
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/MultipathPolicyTracker;->getMultipathPreference(Landroid/net/Network;)Ljava/lang/Integer;

    move-result-object v1

    .line 3875
    .local v1, "networkPreference":Ljava/lang/Integer;
    if-eqz v1, :cond_22

    .line 3876
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 3879
    :cond_22
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {v2}, Landroid/net/util/MultinetworkPolicyTracker;->getMeteredMultipathPreference()I

    move-result v2

    return v2
.end method

.method protected getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;
    .registers 3
    .param p1, "network"  # Landroid/net/Network;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1286
    if-nez p1, :cond_4

    .line 1287
    const/4 v0, 0x0

    return-object v0

    .line 1289
    :cond_4
    iget v0, p1, Landroid/net/Network;->netId:I

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetId(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    .registers 3
    .param p1, "network"  # Landroid/net/Network;

    .line 1667
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1668
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkCapabilitiesInternal(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkForType(I)Landroid/net/Network;
    .registers 6
    .param p1, "networkType"  # I

    .line 1532
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1533
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1534
    .local v0, "uid":I
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->getFilteredNetworkState(II)Landroid/net/NetworkState;

    move-result-object v1

    .line 1535
    .local v1, "state":Landroid/net/NetworkState;
    iget-object v2, v1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/ConnectivityService;->isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;IZ)Z

    move-result v2

    if-nez v2, :cond_17

    .line 1536
    iget-object v2, v1, Landroid/net/NetworkState;->network:Landroid/net/Network;

    return-object v2

    .line 1538
    :cond_17
    const/4 v2, 0x0

    return-object v2
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .registers 5
    .param p1, "networkType"  # I

    .line 1487
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1488
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1489
    .local v0, "uid":I
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getVpnUnderlyingNetworks(I)[Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 1493
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    move-result-object v1

    .line 1494
    .local v1, "state":Landroid/net/NetworkState;
    iget-object v2, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v2, :cond_24

    iget-object v2, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, p1, :cond_24

    .line 1495
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/ConnectivityService;->filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V

    .line 1496
    iget-object v2, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    return-object v2

    .line 1499
    .end local v1  # "state":Landroid/net/NetworkState;
    :cond_24
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->getFilteredNetworkState(II)Landroid/net/NetworkState;

    move-result-object v1

    .line 1500
    .restart local v1  # "state":Landroid/net/NetworkState;
    iget-object v2, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    return-object v2
.end method

.method public getNetworkInfoForUid(Landroid/net/Network;IZ)Landroid/net/NetworkInfo;
    .registers 7
    .param p1, "network"  # Landroid/net/Network;
    .param p2, "uid"  # I
    .param p3, "ignoreBlocked"  # Z

    .line 1505
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1506
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 1507
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_13

    .line 1508
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getNetworkState()Landroid/net/NetworkState;

    move-result-object v1

    .line 1509
    .local v1, "state":Landroid/net/NetworkState;
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/ConnectivityService;->filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V

    .line 1510
    iget-object v2, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    return-object v2

    .line 1512
    .end local v1  # "state":Landroid/net/NetworkState;
    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNetworkInfoForViceWifi()Landroid/net/NetworkInfo;
    .registers 2

    .line 7534
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getNetworkStack()Landroid/net/NetworkStackClient;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5707
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWatchlistConfigHash()[B
    .registers 3

    .line 7243
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/NetworkWatchlistManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkWatchlistManager;

    .line 7244
    .local v0, "nwm":Landroid/net/NetworkWatchlistManager;
    if-nez v0, :cond_13

    .line 7245
    const-string v1, "Unable to get NetworkWatchlistManager"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 7246
    const/4 v1, 0x0

    return-object v1

    .line 7249
    :cond_13
    invoke-virtual {v0}, Landroid/net/NetworkWatchlistManager;->getWatchlistConfigHash()[B

    move-result-object v1

    return-object v1
.end method

.method public getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;
    .registers 6
    .param p1, "network"  # Landroid/net/Network;

    .line 4311
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mProxyTracker:Lcom/android/server/connectivity/ProxyTracker;

    invoke-virtual {v0}, Lcom/android/server/connectivity/ProxyTracker;->getGlobalProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    .line 4312
    .local v0, "globalProxy":Landroid/net/ProxyInfo;
    if-eqz v0, :cond_9

    return-object v0

    .line 4313
    :cond_9
    const/4 v1, 0x0

    if-nez p1, :cond_1d

    .line 4315
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/ConnectivityService;->getActiveNetworkForUidInternal(IZ)Landroid/net/Network;

    move-result-object v2

    .line 4317
    .local v2, "activeNetwork":Landroid/net/Network;
    if-nez v2, :cond_18

    .line 4318
    return-object v1

    .line 4320
    :cond_18
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->getLinkPropertiesProxyInfo(Landroid/net/Network;)Landroid/net/ProxyInfo;

    move-result-object v1

    return-object v1

    .line 4321
    .end local v2  # "activeNetwork":Landroid/net/Network;
    :cond_1d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget v3, p1, Landroid/net/Network;->netId:I

    invoke-virtual {p0, v2, v3}, Lcom/android/server/ConnectivityService;->queryUserAccess(II)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 4324
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getLinkPropertiesProxyInfo(Landroid/net/Network;)Landroid/net/ProxyInfo;

    move-result-object v1

    return-object v1

    .line 4327
    :cond_2e
    return-object v1
.end method

.method public getRestoreDefaultNetworkDelay(I)I
    .registers 6
    .param p1, "networkType"  # I

    .line 2397
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    const-string v1, "android.telephony.apn-restore"

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/MockableSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2399
    .local v0, "restoreDefaultNetworkDelayStr":Ljava/lang/String;
    if-eqz v0, :cond_16

    .line 2400
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_16

    .line 2402
    :try_start_10
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_14} :catch_15

    return v1

    .line 2403
    :catch_15
    move-exception v1

    .line 2407
    :cond_16
    const v1, 0xea60

    .line 2409
    .local v1, "ret":I
    const/16 v2, 0x13

    if-gt p1, v2, :cond_27

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v2, p1

    if-eqz v3, :cond_27

    .line 2411
    aget-object v2, v2, p1

    iget v1, v2, Landroid/net/NetworkConfig;->restoreTime:I

    .line 2413
    :cond_27
    return v1
.end method

.method protected getSystemProperties()Lcom/android/server/connectivity/MockableSystemProperties;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2345
    new-instance v0, Lcom/android/server/connectivity/MockableSystemProperties;

    invoke-direct {v0}, Lcom/android/server/connectivity/MockableSystemProperties;-><init>()V

    return-object v0
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .registers 2

    .line 4075
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 4076
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4077
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4079
    :cond_10
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .registers 2

    .line 4097
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 4098
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .registers 2

    .line 4055
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 4056
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4057
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4059
    :cond_10
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .registers 2

    .line 4065
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 4066
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4067
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4069
    :cond_10
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getTetheredDhcpRanges()[Ljava/lang/String;
    .registers 2

    .line 4115
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 4116
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetheredDhcpRanges()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .registers 2

    .line 4103
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 4104
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetheringErroredIfaces()[Ljava/lang/String;
    .registers 2

    .line 4109
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 4110
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getErroredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVpnConfig(I)Lcom/android/internal/net/VpnConfig;
    .registers 5
    .param p1, "userId"  # I

    .line 4600
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 4601
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4602
    :try_start_6
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 4603
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v1, :cond_16

    .line 4604
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getVpnConfig()Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 4606
    :cond_16
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 4608
    .end local v1  # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public getVpnLockdownWhitelist(I)Ljava/util/List;
    .registers 7
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4804
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceControlAlwaysOnVpnPermission()V

    .line 4805
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 4807
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4808
    :try_start_9
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 4809
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v1, :cond_31

    .line 4810
    sget-object v2, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has no Vpn configuration"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4811
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 4813
    :cond_31
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getLockdownWhitelist()Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 4814
    .end local v1  # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_37

    throw v1
.end method

.method handleRestrictBackgroundChanged(Z)V
    .registers 11
    .param p1, "restrictBackground"  # Z

    .line 1958
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mRestrictBackground:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 1960
    :cond_5
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 1961
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v2, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->isMetered()Z

    move-result v8

    .line 1962
    .local v8, "curMetered":Z
    iget-boolean v6, p0, Lcom/android/server/ConnectivityService;->mRestrictBackground:Z

    move-object v2, p0

    move-object v3, v1

    move v4, v8

    move v5, v8

    move v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/ConnectivityService;->maybeNotifyNetworkBlocked(Lcom/android/server/connectivity/NetworkAgentInfo;ZZZZ)V

    .line 1964
    .end local v1  # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v8  # "curMetered":Z
    goto :goto_f

    .line 1966
    :cond_2c
    iput-boolean p1, p0, Lcom/android/server/ConnectivityService;->mRestrictBackground:Z

    .line 1967
    return-void
.end method

.method handleUidRulesChanged(II)V
    .registers 5
    .param p1, "uid"  # I
    .param p2, "newRules"  # I

    .line 1945
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1946
    .local v0, "oldRules":I
    if-ne v0, p2, :cond_a

    return-void

    .line 1948
    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->maybeNotifyNetworkBlockedForNewUidRules(II)V

    .line 1950
    if-nez p2, :cond_15

    .line 1951
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_1a

    .line 1953
    :cond_15
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1955
    :goto_1a
    return-void
.end method

.method public handleUpdateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V
    .registers 5
    .param p1, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "newLp"  # Landroid/net/LinkProperties;

    .line 6164
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->ensureRunningOnConnectivityServiceThread()V

    .line 6166
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v0, v0, Landroid/net/Network;->netId:I

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetId(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    if-eq v0, p1, :cond_e

    .line 6168
    return-void

    .line 6171
    :cond_e
    invoke-virtual {p2}, Landroid/net/LinkProperties;->ensureDirectlyConnectedRoutes()V

    .line 6172
    sget-boolean v0, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v0, :cond_19

    sget-boolean v0, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v0, :cond_45

    .line 6173
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update of LinkProperties for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; created="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; everConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6177
    :cond_45
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/ConnectivityService;->updateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V

    .line 6178
    return-void
.end method

.method public hasService(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 7264
    invoke-static {p1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isActiveNetworkMetered()Z
    .registers 4

    .line 1725
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1727
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 1728
    .local v0, "caps":Landroid/net/NetworkCapabilities;
    const/4 v1, 0x1

    if-eqz v0, :cond_16

    .line 1729
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    xor-int/2addr v1, v2

    return v1

    .line 1732
    :cond_16
    return v1
.end method

.method public isAlwaysOnVpnPackageSupported(ILjava/lang/String;)Z
    .registers 8
    .param p1, "userId"  # I
    .param p2, "packageName"  # Ljava/lang/String;

    .line 4731
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceSettingsPermission()V

    .line 4732
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 4734
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4735
    :try_start_9
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 4736
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v1, :cond_31

    .line 4737
    sget-object v2, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has no Vpn configuration"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4738
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 4740
    :cond_31
    invoke-virtual {v1, p2}, Lcom/android/server/connectivity/Vpn;->isAlwaysOnPackageSupported(Ljava/lang/String;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 4741
    .end local v1  # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public isCallerCurrentAlwaysOnVpnApp()Z
    .registers 4

    .line 7400
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 7401
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getVpnIfOwner()Lcom/android/server/connectivity/Vpn;

    move-result-object v1

    .line 7402
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getAlwaysOn()Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    monitor-exit v0

    return v2

    .line 7403
    .end local v1  # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public isCallerCurrentAlwaysOnVpnLockdownApp()Z
    .registers 4

    .line 7408
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 7409
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getVpnIfOwner()Lcom/android/server/connectivity/Vpn;

    move-result-object v1

    .line 7410
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getLockdown()Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    monitor-exit v0

    return v2

    .line 7411
    .end local v1  # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method protected isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .registers 3
    .param p1, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5638
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isNetworkSupported(I)Z
    .registers 3
    .param p1, "networkType"  # I

    .line 1604
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1605
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->isTypeSupported(I)Z

    move-result v0

    return v0
.end method

.method public isTetheringSupported(Ljava/lang/String;)Z
    .registers 3
    .param p1, "callerPkg"  # Ljava/lang/String;

    .line 4121
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 4122
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    return v0
.end method

.method public isVpnLockdownEnabled(I)Z
    .registers 7
    .param p1, "userId"  # I

    .line 4789
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceControlAlwaysOnVpnPermission()V

    .line 4790
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 4792
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4793
    :try_start_9
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 4794
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v1, :cond_31

    .line 4795
    sget-object v2, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has no Vpn configuration"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4796
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 4798
    :cond_31
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getLockdown()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 4799
    .end local v1  # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public synthetic lambda$factoryReset$6$ConnectivityService()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7179
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/IpMemoryStore;->getMemoryStore(Landroid/content/Context;)Landroid/net/IpMemoryStore;

    move-result-object v0

    .line 7180
    .local v0, "ipMemoryStore":Landroid/net/IpMemoryStore;
    invoke-virtual {v0}, Landroid/net/IpMemoryStore;->factoryReset()V

    .line 7181
    return-void
.end method

.method public synthetic lambda$new$0$ConnectivityService()V
    .registers 1

    .line 1081
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->rematchForAvoidBadWifiUpdate()V

    return-void
.end method

.method public synthetic lambda$setUnderlyingNetworksForVpn$5$ConnectivityService()V
    .registers 1

    .line 7108
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->updateAllVpnsCapabilities()V

    .line 7109
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChangedForNetworkStats()V

    .line 7110
    return-void
.end method

.method public synthetic lambda$startCaptivePortalApp$3$ConnectivityService(Landroid/net/Network;)V
    .registers 5
    .param p1, "network"  # Landroid/net/Network;

    .line 3624
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 3625
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v0, :cond_7

    return-void

    .line 3626
    :cond_7
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_12

    return-void

    .line 3627
    :cond_12
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor()Landroid/net/NetworkMonitorManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkMonitorManager;->launchCaptivePortalApp()Z

    .line 3628
    return-void
.end method

.method public synthetic lambda$startCaptivePortalAppInternal$4$ConnectivityService(Landroid/content/Intent;)V
    .registers 4
    .param p1, "appIntent"  # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3657
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;
    .registers 9
    .param p1, "networkCapabilities"  # Landroid/net/NetworkCapabilities;
    .param p2, "messenger"  # Landroid/os/Messenger;
    .param p3, "binder"  # Landroid/os/IBinder;

    .line 5479
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->hasWifiNetworkListenPermission(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 5480
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 5483
    :cond_9
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 5484
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    nop

    .line 5485
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 5484
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/ConnectivityService;->ensureSufficientPermissionsForRequest(Landroid/net/NetworkCapabilities;II)V

    .line 5486
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->restrictRequestUidsForCaller(Landroid/net/NetworkCapabilities;)V

    .line 5492
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->restrictBackgroundRequestForCaller(Landroid/net/NetworkCapabilities;)V

    .line 5493
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->ensureValidNetworkSpecifier(Landroid/net/NetworkCapabilities;)V

    .line 5495
    new-instance v1, Landroid/net/NetworkRequest;

    const/4 v2, -0x1

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    move-result v3

    sget-object v4, Landroid/net/NetworkRequest$Type;->LISTEN:Landroid/net/NetworkRequest$Type;

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V

    .line 5497
    .local v1, "networkRequest":Landroid/net/NetworkRequest;
    new-instance v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-direct {v2, p0, p2, v1, p3}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;)V

    .line 5498
    .local v2, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    sget-boolean v3, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v3, :cond_4d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "listenForNetwork for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5500
    :cond_4d
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v4, 0x15

    invoke-virtual {v3, v4, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5501
    return-object v1
.end method

.method protected makeProxyTracker()Lcom/android/server/connectivity/ProxyTracker;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1110
    new-instance v0, Lcom/android/server/connectivity/ProxyTracker;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/connectivity/ProxyTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    return-object v0
.end method

.method protected makeTethering()Lcom/android/server/connectivity/Tethering;
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1093
    new-instance v7, Lcom/android/server/ConnectivityService$3;

    invoke-direct {v7, p0}, Lcom/android/server/ConnectivityService$3;-><init>(Lcom/android/server/ConnectivityService;)V

    .line 1103
    .local v7, "deps":Lcom/android/server/connectivity/tethering/TetheringDependencies;
    new-instance v8, Lcom/android/server/connectivity/Tethering;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mStatsService:Landroid/net/INetworkStatsService;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 1104
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    new-instance v6, Lcom/android/server/connectivity/MockableSystemProperties;

    invoke-direct {v6}, Lcom/android/server/connectivity/MockableSystemProperties;-><init>()V

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/connectivity/Tethering;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;Landroid/os/Looper;Lcom/android/server/connectivity/MockableSystemProperties;Lcom/android/server/connectivity/tethering/TetheringDependencies;)V

    .line 1103
    return-object v8
.end method

.method public makeWakeupMessage(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ILjava/lang/Object;)Lcom/android/internal/util/WakeupMessage;
    .registers 15
    .param p1, "c"  # Landroid/content/Context;
    .param p2, "h"  # Landroid/os/Handler;
    .param p3, "s"  # Ljava/lang/String;
    .param p4, "cmd"  # I
    .param p5, "obj"  # Ljava/lang/Object;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 7259
    new-instance v8, Lcom/android/internal/util/WakeupMessage;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;IIILjava/lang/Object;)V

    return-object v8
.end method

.method protected metricsLogger()Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 7269
    const-class v0, Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;

    const-string/jumbo v1, "no IpConnectivityMetrics service"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;

    return-object v0
.end method

.method protected notifyNetworkAvailable(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .registers 8
    .param p1, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "nri"  # Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 6893
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, p2}, Lcom/android/server/ConnectivityService$InternalHandler;->removeMessages(ILjava/lang/Object;)V

    .line 6894
    iget-object v0, p2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    const v1, 0x80002

    if-eqz v0, :cond_12

    .line 6895
    invoke-direct {p0, p2, p1, v1}, Lcom/android/server/ConnectivityService;->sendPendingIntentForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 6897
    return-void

    .line 6900
    :cond_12
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->isMetered()Z

    move-result v0

    .line 6901
    .local v0, "metered":Z
    iget v2, p2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    iget v4, p2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    iget-boolean v4, p0, Lcom/android/server/ConnectivityService;->mRestrictBackground:Z

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/android/server/ConnectivityService;->isUidNetworkingWithVpnBlocked(IIZZ)Z

    move-result v2

    .line 6903
    .local v2, "blocked":Z
    invoke-direct {p0, p2, p1, v1, v2}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 6904
    return-void
.end method

.method protected notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .registers 4
    .param p1, "networkAgent"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "notifyType"  # I

    .line 7039
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 7040
    return-void
.end method

.method protected notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;II)V
    .registers 9
    .param p1, "networkAgent"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "notifyType"  # I
    .param p3, "arg1"  # I

    .line 7020
    sget-boolean v0, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v0, :cond_2d

    .line 7021
    :cond_8
    invoke-static {p2}, Landroid/net/ConnectivityManager;->getCallbackName(I)Ljava/lang/String;

    move-result-object v0

    .line 7022
    .local v0, "notification":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7024
    .end local v0  # "notification":Ljava/lang/String;
    :cond_2d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2e
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v1

    if-ge v0, v1, :cond_66

    .line 7025
    invoke-virtual {p1, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v1

    .line 7026
    .local v1, "nr":Landroid/net/NetworkRequest;
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 7027
    .local v2, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    sget-boolean v3, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v3, :cond_58

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " sending notification for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7030
    :cond_58
    iget-object v3, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez v3, :cond_60

    .line 7031
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    goto :goto_63

    .line 7033
    :cond_60
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/ConnectivityService;->sendPendingIntentForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 7024
    .end local v1  # "nr":Landroid/net/NetworkRequest;
    .end local v2  # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :goto_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 7036
    .end local v0  # "i":I
    :cond_66
    return-void
.end method

.method public notifyNetworkRequestEvent(I)V
    .registers 9
    .param p1, "uid"  # I

    .line 5283
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 5284
    .local v0, "pkgName":Ljava/lang/String;
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyNetworkRequestEvent,app list :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->appListForRequestNetwork:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5286
    .local v1, "mMatchStr":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5287
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5288
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->appListForRequestNetwork:Ljava/lang/String;

    if-eqz v3, :cond_78

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_78

    .line 5289
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->appListForRequestNetwork:Ljava/lang/String;

    .line 5290
    .local v3, "appList":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5291
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5292
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5293
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/ConnectivityService;->appListForRequestNetwork:Ljava/lang/String;

    .line 5294
    sget-object v2, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add app list for request network : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/ConnectivityService;->appListForRequestNetwork:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5295
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/ConnectivityService;->appListForRequestNetwork:Ljava/lang/String;

    const-string/jumbo v6, "request_network_applist"

    invoke-static {v2, v6, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5296
    .end local v3  # "appList":Ljava/lang/String;
    .end local v4  # "sb":Ljava/lang/StringBuilder;
    goto :goto_7f

    .line 5297
    :cond_78
    sget-object v2, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const-string v3, "aready have app name in request network list"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5299
    :goto_7f
    return-void
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "pendingIntent"  # Landroid/app/PendingIntent;
    .param p2, "intent"  # Landroid/content/Intent;
    .param p3, "resultCode"  # I
    .param p4, "resultData"  # Ljava/lang/String;
    .param p5, "resultExtras"  # Landroid/os/Bundle;

    .line 6233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished sending "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6234
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6237
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->releasePendingNetworkRequestWithDelay(Landroid/app/PendingIntent;)V

    .line 6238
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"  # Ljava/io/FileDescriptor;
    .param p2, "out"  # Ljava/io/FileDescriptor;
    .param p3, "err"  # Ljava/io/FileDescriptor;
    .param p4, "args"  # [Ljava/lang/String;
    .param p5, "callback"  # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"  # Landroid/os/ResultReceiver;

    .line 7290
    new-instance v0, Lcom/android/server/ConnectivityService$ShellCmd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/ConnectivityService$ShellCmd;-><init>(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$1;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/ConnectivityService$ShellCmd;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 7291
    return-void
.end method

.method public pendingListenForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)V
    .registers 8
    .param p1, "networkCapabilities"  # Landroid/net/NetworkCapabilities;
    .param p2, "operation"  # Landroid/app/PendingIntent;

    .line 5507
    const-string v0, "PendingIntent cannot be null."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5508
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->hasWifiNetworkListenPermission(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 5509
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 5511
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->ensureValidNetworkSpecifier(Landroid/net/NetworkCapabilities;)V

    .line 5512
    nop

    .line 5513
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5512
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/ConnectivityService;->ensureSufficientPermissionsForRequest(Landroid/net/NetworkCapabilities;II)V

    .line 5515
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 5516
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->restrictRequestUidsForCaller(Landroid/net/NetworkCapabilities;)V

    .line 5518
    new-instance v1, Landroid/net/NetworkRequest;

    const/4 v2, -0x1

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    move-result v3

    sget-object v4, Landroid/net/NetworkRequest$Type;->LISTEN:Landroid/net/NetworkRequest$Type;

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V

    .line 5520
    .local v1, "networkRequest":Landroid/net/NetworkRequest;
    new-instance v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-direct {v2, p0, v1, p2}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;Landroid/app/PendingIntent;)V

    .line 5521
    .local v2, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    sget-boolean v3, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v3, :cond_4f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pendingListenForNetwork for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5523
    :cond_4f
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v4, 0x15

    invoke-virtual {v3, v4, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5524
    return-void
.end method

.method public pendingRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)Landroid/net/NetworkRequest;
    .registers 7
    .param p1, "networkCapabilities"  # Landroid/net/NetworkCapabilities;
    .param p2, "operation"  # Landroid/app/PendingIntent;

    .line 5414
    const-string v0, "PendingIntent cannot be null."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5415
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    move-object p1, v0

    .line 5416
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceNetworkRequestPermissions(Landroid/net/NetworkCapabilities;)V

    .line 5417
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceMeteredApnPolicy(Landroid/net/NetworkCapabilities;)V

    .line 5418
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->ensureRequestableCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 5419
    nop

    .line 5420
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5419
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/ConnectivityService;->ensureSufficientPermissionsForRequest(Landroid/net/NetworkCapabilities;II)V

    .line 5421
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->ensureValidNetworkSpecifier(Landroid/net/NetworkCapabilities;)V

    .line 5422
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->restrictRequestUidsForCaller(Landroid/net/NetworkCapabilities;)V

    .line 5425
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_37

    const/16 v0, 0x43

    .line 5426
    invoke-static {v0}, Lmeizu/security/FlymePermissionManager;->isFlymePermissionGranted(I)Z

    move-result v0

    if-nez v0, :cond_37

    .line 5428
    const/4 v0, 0x0

    return-object v0

    .line 5432
    :cond_37
    new-instance v0, Landroid/net/NetworkRequest;

    const/4 v1, -0x1

    .line 5433
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    move-result v2

    sget-object v3, Landroid/net/NetworkRequest$Type;->REQUEST:Landroid/net/NetworkRequest$Type;

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V

    .line 5434
    .local v0, "networkRequest":Landroid/net/NetworkRequest;
    new-instance v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;Landroid/app/PendingIntent;)V

    .line 5435
    .local v1, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pendingRequest for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5436
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v3, 0x1a

    invoke-virtual {v2, v3, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5438
    return-object v0
.end method

.method public prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7
    .param p1, "oldPackage"  # Ljava/lang/String;
    .param p2, "newPackage"  # Ljava/lang/String;
    .param p3, "userId"  # I

    .line 4440
    invoke-direct {p0, p3}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 4442
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4443
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 4444
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 4445
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v1, :cond_19

    .line 4446
    invoke-virtual {v1, p1, p2}, Lcom/android/server/connectivity/Vpn;->prepare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 4448
    :cond_19
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 4450
    .end local v1  # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method protected queryUserAccess(II)Z
    .registers 4
    .param p1, "uid"  # I
    .param p2, "netId"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4332
    invoke-static {p1, p2}, Landroid/net/NetworkUtils;->queryUserAccess(II)Z

    move-result v0

    return v0
.end method

.method protected registerNetdEventCallback()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1904
    nop

    .line 1906
    const-string v0, "connmetrics"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1905
    invoke-static {v0}, Landroid/net/IIpConnectivityMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpConnectivityMetrics;

    move-result-object v0

    .line 1907
    .local v0, "ipConnectivityMetrics":Landroid/net/IIpConnectivityMetrics;
    if-nez v0, :cond_15

    .line 1908
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const-string v2, "Missing IIpConnectivityMetrics"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    return-void

    .line 1913
    :cond_15
    const/4 v1, 0x0

    :try_start_16
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    invoke-interface {v0, v1, v2}, Landroid/net/IIpConnectivityMetrics;->addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_1c

    .line 1918
    goto :goto_31

    .line 1916
    :catch_1c
    move-exception v1

    .line 1917
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error registering netd callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1919
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_31
    return-void
.end method

.method public registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)I
    .registers 15
    .param p1, "messenger"  # Landroid/os/Messenger;
    .param p2, "networkInfo"  # Landroid/net/NetworkInfo;
    .param p3, "linkProperties"  # Landroid/net/LinkProperties;
    .param p4, "networkCapabilities"  # Landroid/net/NetworkCapabilities;
    .param p5, "currentScore"  # I
    .param p6, "networkMisc"  # Landroid/net/NetworkMisc;

    .line 5652
    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/ConnectivityService;->registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;I)I

    move-result v0

    return v0
.end method

.method public registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;I)I
    .registers 29
    .param p1, "messenger"  # Landroid/os/Messenger;
    .param p2, "networkInfo"  # Landroid/net/NetworkInfo;
    .param p3, "linkProperties"  # Landroid/net/LinkProperties;
    .param p4, "networkCapabilities"  # Landroid/net/NetworkCapabilities;
    .param p5, "currentScore"  # I
    .param p6, "networkMisc"  # Landroid/net/NetworkMisc;
    .param p7, "factorySerialNumber"  # I

    .line 5674
    move-object/from16 v15, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 5676
    new-instance v6, Landroid/net/LinkProperties;

    move-object/from16 v14, p3

    invoke-direct {v6, v14}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 5677
    .local v6, "lp":Landroid/net/LinkProperties;
    invoke-virtual {v6}, Landroid/net/LinkProperties;->ensureDirectlyConnectedRoutes()V

    .line 5680
    new-instance v0, Landroid/net/NetworkCapabilities;

    move-object/from16 v13, p4

    invoke-direct {v0, v13}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    move-object v12, v0

    .line 5681
    .local v12, "nc":Landroid/net/NetworkCapabilities;
    new-instance v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    new-instance v3, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v3}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    new-instance v4, Landroid/net/Network;

    .line 5682
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->reserveNetId()I

    move-result v1

    invoke-direct {v4, v1}, Landroid/net/Network;-><init>(I)V

    new-instance v5, Landroid/net/NetworkInfo;

    move-object/from16 v11, p2

    invoke-direct {v5, v11}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    iget-object v9, v15, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v10, v15, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    new-instance v8, Landroid/net/NetworkMisc;

    move-object/from16 v7, p6

    invoke-direct {v8, v7}, Landroid/net/NetworkMisc;-><init>(Landroid/net/NetworkMisc;)V

    iget-object v2, v15, Lcom/android/server/ConnectivityService;->mNetd:Landroid/net/INetd;

    iget-object v1, v15, Lcom/android/server/ConnectivityService;->mDnsResolver:Landroid/net/IDnsResolver;

    move-object/from16 v17, v6

    .end local v6  # "lp":Landroid/net/LinkProperties;
    .local v17, "lp":Landroid/net/LinkProperties;
    iget-object v6, v15, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    move-object/from16 v16, v1

    move-object v1, v0

    move-object/from16 v18, v2

    move-object/from16 v2, p1

    move-object v7, v12

    move-object/from16 v19, v8

    move/from16 v8, p5

    move-object/from16 v11, v19

    move-object/from16 v20, v12

    .end local v12  # "nc":Landroid/net/NetworkCapabilities;
    .local v20, "nc":Landroid/net/NetworkCapabilities;
    move-object/from16 v12, p0

    move-object/from16 v13, v18

    move-object/from16 v14, v16

    move-object v15, v6

    move/from16 v16, p7

    move-object/from16 v6, v17

    .end local v17  # "lp":Landroid/net/LinkProperties;
    .restart local v6  # "lp":Landroid/net/LinkProperties;
    invoke-direct/range {v1 .. v16}, Lcom/android/server/connectivity/NetworkAgentInfo;-><init>(Landroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;Landroid/net/Network;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/content/Context;Landroid/os/Handler;Landroid/net/NetworkMisc;Lcom/android/server/ConnectivityService;Landroid/net/INetd;Landroid/net/IDnsResolver;Landroid/os/INetworkManagementService;I)V

    .line 5686
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    move-object/from16 v2, p0

    move-object/from16 v3, v20

    .end local v20  # "nc":Landroid/net/NetworkCapabilities;
    .local v3, "nc":Landroid/net/NetworkCapabilities;
    invoke-direct {v2, v1, v3}, Lcom/android/server/ConnectivityService;->mixInCapabilities(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->setNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 5687
    invoke-virtual/range {p2 .. p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    .line 5688
    .local v4, "extraInfo":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 5689
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_7c

    :cond_7b
    move-object v0, v4

    :goto_7c
    move-object v5, v0

    .line 5690
    .local v5, "name":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "registerNetworkAgent "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5691
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 5693
    .local v7, "token":J
    :try_start_96
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getNetworkStack()Landroid/net/NetworkStackClient;

    move-result-object v0

    iget-object v9, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    new-instance v10, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;

    const/4 v11, 0x0

    invoke-direct {v10, v2, v1, v11}, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;-><init>(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$1;)V

    invoke-virtual {v0, v9, v5, v10}, Landroid/net/NetworkStackClient;->makeNetworkMonitor(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V
    :try_end_a5
    .catchall {:try_start_96 .. :try_end_a5} :catchall_ae

    .line 5696
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5697
    nop

    .line 5702
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v0, v0, Landroid/net/Network;->netId:I

    return v0

    .line 5696
    :catchall_ae
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)I
    .registers 6
    .param p1, "messenger"  # Landroid/os/Messenger;
    .param p2, "name"  # Ljava/lang/String;

    .line 5535
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 5536
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 5537
    invoke-static {}, Landroid/net/NetworkFactory$SerialNumber;->nextSerialNumber()I

    move-result v2

    invoke-direct {v0, p2, p1, v1, v2}, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;-><init>(Ljava/lang/String;Landroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;I)V

    .line 5538
    .local v0, "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5539
    iget v1, v0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->factorySerialNumber:I

    return v1
.end method

.method public registerTetheringEventCallback(Landroid/net/ITetheringEventCallback;Ljava/lang/String;)V
    .registers 4
    .param p1, "callback"  # Landroid/net/ITetheringEventCallback;
    .param p2, "callerPkg"  # Ljava/lang/String;

    .line 4187
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 4188
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->registerTetheringEventCallback(Landroid/net/ITetheringEventCallback;)V

    .line 4189
    return-void
.end method

.method public releaseNetworkRequest(Landroid/net/NetworkRequest;)V
    .registers 6
    .param p1, "networkRequest"  # Landroid/net/NetworkRequest;

    .line 5528
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->ensureNetworkRequestHasType(Landroid/net/NetworkRequest;)V

    .line 5529
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 5530
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v1

    .line 5529
    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5531
    return-void
.end method

.method public releasePendingNetworkRequest(Landroid/app/PendingIntent;)V
    .registers 6
    .param p1, "operation"  # Landroid/app/PendingIntent;

    .line 5449
    const-string v0, "PendingIntent cannot be null."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5450
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 5451
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v1

    .line 5450
    const/16 v2, 0x1b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5452
    return-void
.end method

.method public removeVpnAddress(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "address"  # Ljava/lang/String;
    .param p2, "prefixLength"  # I

    .line 7090
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 7091
    .local v0, "user":I
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 7092
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 7093
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/connectivity/Vpn;->removeAddress(Ljava/lang/String;I)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 7094
    :catchall_1c
    move-exception v2

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method public reportInetCondition(II)V
    .registers 6
    .param p1, "networkType"  # I
    .param p2, "percentage"  # I

    .line 4254
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 4255
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v0, :cond_9

    return-void

    .line 4256
    :cond_9
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    const/16 v2, 0x32

    if-le p2, v2, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    invoke-virtual {p0, v1, v2}, Lcom/android/server/ConnectivityService;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    .line 4257
    return-void
.end method

.method public reportNetworkConnectivity(Landroid/net/Network;Z)V
    .registers 7
    .param p1, "network"  # Landroid/net/Network;
    .param p2, "hasConnectivity"  # Z

    .line 4261
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 4262
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceInternetPermission()V

    .line 4263
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4264
    .local v0, "uid":I
    invoke-static {p2}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result v1

    .line 4265
    .local v1, "connectivityInfo":I
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 4266
    const/16 v3, 0x24

    invoke-virtual {v2, v3, v0, v1, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 4265
    invoke-virtual {v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4267
    return-void
.end method

.method public requestBandwidthUpdate(Landroid/net/Network;)Z
    .registers 9
    .param p1, "network"  # Landroid/net/Network;

    .line 5368
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 5369
    const/4 v0, 0x0

    .line 5370
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 5371
    return v1

    .line 5373
    :cond_8
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v2

    .line 5374
    :try_start_b
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    iget v4, p1, Landroid/net/Network;->netId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/NetworkAgentInfo;

    move-object v0, v3

    .line 5375
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_4e

    .line 5376
    if-eqz v0, :cond_4d

    .line 5377
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x8100a

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 5378
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mBandwidthRequests:Landroid/util/SparseArray;

    monitor-enter v2

    .line 5379
    :try_start_24
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 5380
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mBandwidthRequests:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 5381
    .local v4, "uidReqs":Ljava/lang/Integer;
    if-nez v4, :cond_38

    .line 5382
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, v5

    .line 5384
    :cond_38
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mBandwidthRequests:Landroid/util/SparseArray;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v4, v5

    invoke-virtual {v1, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5385
    .end local v3  # "uid":I
    .end local v4  # "uidReqs":Ljava/lang/Integer;
    monitor-exit v2

    .line 5386
    return v6

    .line 5385
    :catchall_4a
    move-exception v1

    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_24 .. :try_end_4c} :catchall_4a

    throw v1

    .line 5388
    :cond_4d
    return v1

    .line 5375
    :catchall_4e
    move-exception v1

    :try_start_4f
    monitor-exit v2
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v1
.end method

.method public requestNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;ILandroid/os/IBinder;I)Landroid/net/NetworkRequest;
    .registers 13
    .param p1, "networkCapabilities"  # Landroid/net/NetworkCapabilities;
    .param p2, "messenger"  # Landroid/os/Messenger;
    .param p3, "timeoutMs"  # I
    .param p4, "binder"  # Landroid/os/IBinder;
    .param p5, "legacyType"  # I

    .line 5304
    if-nez p1, :cond_5

    .line 5305
    sget-object v0, Landroid/net/NetworkRequest$Type;->TRACK_DEFAULT:Landroid/net/NetworkRequest$Type;

    goto :goto_7

    .line 5306
    :cond_5
    sget-object v0, Landroid/net/NetworkRequest$Type;->REQUEST:Landroid/net/NetworkRequest$Type;

    :goto_7
    nop

    .line 5310
    .local v0, "type":Landroid/net/NetworkRequest$Type;
    sget-object v1, Landroid/net/NetworkRequest$Type;->TRACK_DEFAULT:Landroid/net/NetworkRequest$Type;

    if-ne v0, v1, :cond_18

    .line 5311
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->createDefaultNetworkCapabilitiesForUid(I)Landroid/net/NetworkCapabilities;

    move-result-object p1

    .line 5312
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    goto :goto_24

    .line 5314
    :cond_18
    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    move-object p1, v1

    .line 5315
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceNetworkRequestPermissions(Landroid/net/NetworkCapabilities;)V

    .line 5319
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceMeteredApnPolicy(Landroid/net/NetworkCapabilities;)V

    .line 5321
    :goto_24
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->ensureRequestableCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 5322
    nop

    .line 5323
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 5322
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/ConnectivityService;->ensureSufficientPermissionsForRequest(Landroid/net/NetworkCapabilities;II)V

    .line 5329
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->restrictRequestUidsForCaller(Landroid/net/NetworkCapabilities;)V

    .line 5331
    if-ltz p3, :cond_90

    .line 5334
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->ensureValidNetworkSpecifier(Landroid/net/NetworkCapabilities;)V

    .line 5336
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_4c

    const/16 v1, 0x43

    .line 5337
    invoke-static {v1}, Lmeizu/security/FlymePermissionManager;->isFlymePermissionGranted(I)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 5339
    const/4 v1, 0x0

    return-object v1

    .line 5342
    :cond_4c
    new-instance v1, Landroid/net/NetworkRequest;

    .line 5343
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    move-result v2

    invoke-direct {v1, p1, p5, v2, v0}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V

    .line 5344
    .local v1, "networkRequest":Landroid/net/NetworkRequest;
    new-instance v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-direct {v2, p0, p2, v1, p4}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;)V

    .line 5345
    .local v2, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestNetwork for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5347
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v4, 0x13

    invoke-virtual {v3, v4, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5348
    if-lez p3, :cond_88

    .line 5349
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v4, 0x14

    invoke-virtual {v3, v4, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    int-to-long v5, p3

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5353
    :cond_88
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/ConnectivityService;->notifyNetworkRequestEvent(I)V

    .line 5355
    return-object v1

    .line 5332
    .end local v1  # "networkRequest":Landroid/net/NetworkRequest;
    .end local v2  # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :cond_90
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad timeout specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public requestRouteToHostAddress(I[B)Z
    .registers 14
    .param p1, "networkType"  # I
    .param p2, "hostAddress"  # [B

    .line 1772
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->disallowedBecauseSystemCaller()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1773
    return v1

    .line 1775
    :cond_8
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 1776
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1777
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1782
    :cond_1a
    :try_start_1a
    invoke-static {p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_1e
    .catch Ljava/net/UnknownHostException; {:try_start_1a .. :try_end_1e} :catch_e2

    .line 1786
    .local v0, "addr":Ljava/net/InetAddress;
    nop

    .line 1788
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 1789
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestRouteToHostAddress on invalid network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1790
    return v1

    .line 1793
    :cond_3b
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    .line 1794
    .local v2, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v2, :cond_77

    .line 1795
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v3, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->isTypeSupported(I)Z

    move-result v3

    if-nez v3, :cond_61

    .line 1796
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestRouteToHostAddress on unsupported network: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_76

    .line 1798
    :cond_61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestRouteToHostAddress on down network: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1800
    :goto_76
    return v1

    .line 1804
    :cond_77
    monitor-enter v2

    .line 1805
    :try_start_78
    iget-object v3, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    .line 1806
    .local v3, "netState":Landroid/net/NetworkInfo$DetailedState;
    monitor-exit v2
    :try_end_7f
    .catchall {:try_start_78 .. :try_end_7f} :catchall_df

    .line 1808
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_a9

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_a9

    .line 1809
    sget-boolean v4, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v4, :cond_a8

    .line 1810
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestRouteToHostAddress on down network ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") - dropped netState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1814
    :cond_a8
    return v1

    .line 1817
    :cond_a9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1818
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1822
    .local v4, "token":J
    :try_start_b1
    monitor-enter v2
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_da

    .line 1823
    :try_start_b2
    iget-object v6, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 1824
    .local v6, "lp":Landroid/net/LinkProperties;
    iget-object v7, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v7, v7, Landroid/net/Network;->netId:I

    .line 1825
    .local v7, "netId":I
    monitor-exit v2
    :try_end_b9
    .catchall {:try_start_b2 .. :try_end_b9} :catchall_d7

    .line 1826
    :try_start_b9
    invoke-direct {p0, v6, v0, v7, v1}, Lcom/android/server/ConnectivityService;->addLegacyRouteToHost(Landroid/net/LinkProperties;Ljava/net/InetAddress;II)Z

    move-result v8

    .line 1827
    .local v8, "ok":Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "requestRouteToHostAddress ok="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_d2
    .catchall {:try_start_b9 .. :try_end_d2} :catchall_da

    .line 1828
    nop

    .line 1830
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1828
    return v8

    .line 1825
    .end local v6  # "lp":Landroid/net/LinkProperties;
    .end local v7  # "netId":I
    .end local v8  # "ok":Z
    :catchall_d7
    move-exception v6

    :try_start_d8
    monitor-exit v2
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_d7

    .end local v0  # "addr":Ljava/net/InetAddress;
    .end local v1  # "uid":I
    .end local v2  # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v3  # "netState":Landroid/net/NetworkInfo$DetailedState;
    .end local v4  # "token":J
    .end local p0  # "this":Lcom/android/server/ConnectivityService;
    .end local p1  # "networkType":I
    .end local p2  # "hostAddress":[B
    :try_start_d9
    throw v6
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_da

    .line 1830
    .restart local v0  # "addr":Ljava/net/InetAddress;
    .restart local v1  # "uid":I
    .restart local v2  # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v3  # "netState":Landroid/net/NetworkInfo$DetailedState;
    .restart local v4  # "token":J
    .restart local p0  # "this":Lcom/android/server/ConnectivityService;
    .restart local p1  # "networkType":I
    .restart local p2  # "hostAddress":[B
    :catchall_da
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 1806
    .end local v1  # "uid":I
    .end local v3  # "netState":Landroid/net/NetworkInfo$DetailedState;
    .end local v4  # "token":J
    :catchall_df
    move-exception v1

    :try_start_e0
    monitor-exit v2
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_df

    throw v1

    .line 1783
    .end local v0  # "addr":Ljava/net/InetAddress;
    .end local v2  # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :catch_e2
    move-exception v0

    .line 1784
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestRouteToHostAddress got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1785
    return v1
.end method

.method protected reserveNetId()I
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1208
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1209
    const/16 v1, 0x64

    .local v1, "i":I
    :goto_5
    const v2, 0xfbff

    if-gt v1, v2, :cond_2a

    .line 1210
    :try_start_a
    iget v3, p0, Lcom/android/server/ConnectivityService;->mNextNetId:I

    .line 1211
    .local v3, "netId":I
    iget v4, p0, Lcom/android/server/ConnectivityService;->mNextNetId:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/ConnectivityService;->mNextNetId:I

    if-le v4, v2, :cond_18

    const/16 v2, 0x64

    iput v2, p0, Lcom/android/server/ConnectivityService;->mNextNetId:I

    .line 1213
    :cond_18
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_27

    .line 1214
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v3, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1215
    monitor-exit v0

    return v3

    .line 1209
    .end local v3  # "netId":I
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1218
    .end local v1  # "i":I
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_33

    .line 1219
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No free netIds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1218
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public sendConnectedBroadcast(Landroid/net/NetworkInfo;)V
    .registers 3
    .param p1, "info"  # Landroid/net/NetworkInfo;

    .line 2117
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 2118
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 2119
    return-void
.end method

.method protected sendLegacyNetworkBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V
    .registers 9
    .param p1, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "state"  # Landroid/net/NetworkInfo$DetailedState;
    .param p3, "type"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 6980
    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 6981
    .local v0, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v0, p3}, Landroid/net/NetworkInfo;->setType(I)V

    .line 6982
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p2, v1, :cond_1b

    .line 6983
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 6984
    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    goto/16 :goto_a1

    .line 6986
    :cond_1b
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 6987
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6988
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "networkInfo"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6989
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const-string/jumbo v3, "networkType"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6990
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_50

    .line 6991
    const-string/jumbo v2, "isFailover"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6992
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 6994
    :cond_50
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_60

    .line 6995
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "reason"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6997
    :cond_60
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6f

    .line 6998
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    const-string v4, "extraInfo"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7000
    :cond_6f
    const/4 v2, 0x0

    .line 7001
    .local v2, "newDefaultAgent":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    iget v4, v4, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {p1, v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSatisfyingRequest(I)Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 7002
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    .line 7003
    if-eqz v2, :cond_89

    .line 7004
    iget-object v3, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    const-string/jumbo v4, "otherNetwork"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_8f

    .line 7007
    :cond_89
    const-string/jumbo v4, "noConnectivity"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7010
    :cond_8f
    :goto_8f
    iget v3, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    const-string/jumbo v4, "inetCondition"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7012
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 7013
    if-eqz v2, :cond_a1

    .line 7014
    iget-object v3, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0, v3}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    .line 7017
    .end local v1  # "intent":Landroid/content/Intent;
    .end local v2  # "newDefaultAgent":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_a1
    :goto_a1
    return-void
.end method

.method public setAcceptPartialConnectivity(Landroid/net/Network;ZZ)V
    .registers 8
    .param p1, "network"  # Landroid/net/Network;
    .param p2, "accept"  # Z
    .param p3, "always"  # Z

    .line 3500
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceNetworkStackSettingsOrSetup()V

    .line 3501
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 3502
    invoke-static {p2}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result v1

    invoke-static {p3}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result v2

    .line 3501
    const/16 v3, 0x2d

    invoke-virtual {v0, v3, v1, v2, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3503
    return-void
.end method

.method public setAcceptUnvalidated(Landroid/net/Network;ZZ)V
    .registers 8
    .param p1, "network"  # Landroid/net/Network;
    .param p2, "accept"  # Z
    .param p3, "always"  # Z

    .line 3493
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceNetworkStackSettingsOrSetup()V

    .line 3494
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 3495
    invoke-static {p2}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result v1

    invoke-static {p3}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result v2

    .line 3494
    const/16 v3, 0x1c

    invoke-virtual {v0, v3, v1, v2, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3496
    return-void
.end method

.method public setAirplaneMode(Z)V
    .registers 8
    .param p1, "enable"  # Z

    .line 4939
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceNetworkStackSettingsOrSetup()V

    .line 4940
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4942
    .local v0, "ident":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4943
    .local v2, "cr":Landroid/content/ContentResolver;
    const-string v3, "airplane_mode_on"

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4944
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4945
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "state"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4946
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_2f

    .line 4948
    .end local v2  # "cr":Landroid/content/ContentResolver;
    .end local v3  # "intent":Landroid/content/Intent;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4949
    nop

    .line 4950
    return-void

    .line 4948
    :catchall_2f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setAlwaysOnVpnPackage(ILjava/lang/String;ZLjava/util/List;)Z
    .registers 11
    .param p1, "userId"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "lockdown"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 4747
    .local p4, "lockdownWhitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceControlAlwaysOnVpnPermission()V

    .line 4748
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 4750
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4752
    :try_start_9
    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 4753
    monitor-exit v0

    return v2

    .line 4756
    :cond_12
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 4757
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v1, :cond_39

    .line 4758
    sget-object v3, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " has no Vpn configuration"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4759
    monitor-exit v0

    return v2

    .line 4761
    :cond_39
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;ZLjava/util/List;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 4762
    monitor-exit v0

    return v2

    .line 4764
    :cond_41
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->startAlwaysOnVpn(I)Z

    move-result v3

    if-nez v3, :cond_4d

    .line 4765
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;ZLjava/util/List;)Z

    .line 4766
    monitor-exit v0

    return v2

    .line 4768
    .end local v1  # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_4d
    monitor-exit v0

    .line 4769
    const/4 v0, 0x1

    return v0

    .line 4768
    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_9 .. :try_end_52} :catchall_50

    throw v1
.end method

.method public setAvoidUnvalidated(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"  # Landroid/net/Network;

    .line 3507
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceNetworkStackSettingsOrSetup()V

    .line 3508
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x23

    invoke-virtual {v0, v1, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3509
    return-void
.end method

.method public setGlobalProxy(Landroid/net/ProxyInfo;)V
    .registers 3
    .param p1, "proxyProperties"  # Landroid/net/ProxyInfo;

    .line 4346
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 4347
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mProxyTracker:Lcom/android/server/connectivity/ProxyTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/ProxyTracker;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    .line 4348
    return-void
.end method

.method public setProvisioningNotificationVisible(ZILjava/lang/String;)V
    .registers 8
    .param p1, "visible"  # Z
    .param p2, "networkType"  # I
    .param p3, "action"  # Ljava/lang/String;

    .line 4923
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 4924
    invoke-static {p2}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 4925
    return-void

    .line 4927
    :cond_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4930
    .local v0, "ident":J
    const v2, 0xfc00

    add-int/lit8 v3, p2, 0x1

    add-int/2addr v3, v2

    .line 4931
    .local v3, "id":I
    :try_start_14
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    invoke-virtual {v2, p1, v3, p3}, Lcom/android/server/connectivity/NetworkNotificationManager;->setProvNotificationVisible(ZILjava/lang/String;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_1e

    .line 4933
    .end local v3  # "id":I
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4934
    nop

    .line 4935
    return-void

    .line 4933
    :catchall_1e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setUnderlyingNetworksForVpn([Landroid/net/Network;)Z
    .registers 6
    .param p1, "networks"  # [Landroid/net/Network;

    .line 7099
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 7101
    .local v0, "user":I
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 7102
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 7103
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2, p1}, Lcom/android/server/connectivity/Vpn;->setUnderlyingNetworks([Landroid/net/Network;)Z

    move-result v2

    .line 7104
    .local v2, "success":Z
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_28

    .line 7105
    if-eqz v2, :cond_27

    .line 7106
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    new-instance v3, Lcom/android/server/-$$Lambda$ConnectivityService$tyyIxrN1UBdbonRFAT6eEH4wVic;

    invoke-direct {v3, p0}, Lcom/android/server/-$$Lambda$ConnectivityService$tyyIxrN1UBdbonRFAT6eEH4wVic;-><init>(Lcom/android/server/ConnectivityService;)V

    invoke-virtual {v1, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->post(Ljava/lang/Runnable;)Z

    .line 7112
    :cond_27
    return v2

    .line 7104
    .end local v2  # "success":Z
    :catchall_28
    move-exception v2

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v2
.end method

.method public setUsbTethering(ZLjava/lang/String;)I
    .registers 4
    .param p1, "enable"  # Z
    .param p2, "callerPkg"  # Ljava/lang/String;

    .line 4085
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 4086
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4087
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    move-result v0

    return v0

    .line 4089
    :cond_12
    const/4 v0, 0x3

    return v0
.end method

.method public setVpnPackageAuthorization(Ljava/lang/String;IZ)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "authorized"  # Z

    .line 4468
    invoke-direct {p0, p2}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 4470
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4471
    :try_start_6
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 4472
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v1, :cond_13

    .line 4473
    invoke-virtual {v1, p1, p3}, Lcom/android/server/connectivity/Vpn;->setPackageAuthorization(Ljava/lang/String;Z)Z

    .line 4475
    .end local v1  # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_13
    monitor-exit v0

    .line 4476
    return-void

    .line 4475
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public shouldAvoidBadWifi()Z
    .registers 3

    .line 3701
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->checkNetworkStackPermission()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3704
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->avoidBadWifi()Z

    move-result v0

    return v0

    .line 3702
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "avoidBadWifi requires NETWORK_STACK permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startCaptivePortalApp(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"  # Landroid/net/Network;

    .line 3622
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 3623
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    new-instance v1, Lcom/android/server/-$$Lambda$ConnectivityService$OIhIcUZjeJ-ci4rP6veezE8o67U;

    invoke-direct {v1, p0, p1}, Lcom/android/server/-$$Lambda$ConnectivityService$OIhIcUZjeJ-ci4rP6veezE8o67U;-><init>(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->post(Ljava/lang/Runnable;)Z

    .line 3629
    return-void
.end method

.method public startCaptivePortalAppInternal(Landroid/net/Network;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "network"  # Landroid/net/Network;
    .param p2, "appExtras"  # Landroid/os/Bundle;

    .line 3641
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MAINLINE_NETWORK_STACK"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3644
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.CAPTIVE_PORTAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3645
    .local v0, "appIntent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3646
    new-instance v1, Landroid/net/CaptivePortal;

    new-instance v2, Lcom/android/server/ConnectivityService$CaptivePortalImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/ConnectivityService$CaptivePortalImpl;-><init>(Lcom/android/server/ConnectivityService;Landroid/net/Network;Lcom/android/server/ConnectivityService$1;)V

    .line 3647
    invoke-virtual {v2}, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/CaptivePortal;-><init>(Landroid/os/IBinder;)V

    .line 3646
    const-string v2, "android.net.extra.CAPTIVE_PORTAL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3648
    const/high16 v1, 0x10400000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3652
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 3653
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v1, :cond_35

    .line 3654
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->captivePortalValidationPending:Z

    .line 3656
    :cond_35
    new-instance v2, Lcom/android/server/-$$Lambda$ConnectivityService$vGRhfNpFTw0hellWUlmBolfzRy8;

    invoke-direct {v2, p0, v0}, Lcom/android/server/-$$Lambda$ConnectivityService$vGRhfNpFTw0hellWUlmBolfzRy8;-><init>(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 3658
    return-void
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    .registers 7
    .param p1, "profile"  # Lcom/android/internal/net/VpnProfile;

    .line 4500
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4501
    .local v0, "user":I
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 4502
    .local v1, "egress":Landroid/net/LinkProperties;
    if-eqz v1, :cond_26

    .line 4505
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 4506
    :try_start_11
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 4507
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Vpn;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v3, p1, v4, v1}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V

    .line 4508
    monitor-exit v2

    .line 4509
    return-void

    .line 4508
    :catchall_23
    move-exception v3

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_23

    throw v3

    .line 4503
    :cond_26
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Missing active network connection"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public startNattKeepalive(Landroid/net/Network;ILandroid/net/ISocketKeepaliveCallback;Ljava/lang/String;ILjava/lang/String;)V
    .registers 16
    .param p1, "network"  # Landroid/net/Network;
    .param p2, "intervalSeconds"  # I
    .param p3, "cb"  # Landroid/net/ISocketKeepaliveCallback;
    .param p4, "srcAddr"  # Ljava/lang/String;
    .param p5, "srcPort"  # I
    .param p6, "dstAddr"  # Ljava/lang/String;

    .line 7137
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceKeepalivePermission()V

    .line 7138
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    .line 7139
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 7138
    const/4 v2, 0x0

    const/16 v8, 0x1194

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/connectivity/KeepaliveTracker;->startNattKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/io/FileDescriptor;ILandroid/net/ISocketKeepaliveCallback;Ljava/lang/String;ILjava/lang/String;I)V

    .line 7142
    return-void
.end method

.method public startNattKeepaliveWithFd(Landroid/net/Network;Ljava/io/FileDescriptor;IILandroid/net/ISocketKeepaliveCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 18
    .param p1, "network"  # Landroid/net/Network;
    .param p2, "fd"  # Ljava/io/FileDescriptor;
    .param p3, "resourceId"  # I
    .param p4, "intervalSeconds"  # I
    .param p5, "cb"  # Landroid/net/ISocketKeepaliveCallback;
    .param p6, "srcAddr"  # Ljava/lang/String;
    .param p7, "dstAddr"  # Ljava/lang/String;

    .line 7148
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    .line 7149
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    .line 7148
    const/16 v9, 0x1194

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/connectivity/KeepaliveTracker;->startNattKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/io/FileDescriptor;IILandroid/net/ISocketKeepaliveCallback;Ljava/lang/String;Ljava/lang/String;I)V

    .line 7152
    return-void
.end method

.method public startOrGetTestNetworkService()Landroid/os/IBinder;
    .registers 5

    .line 7421
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTNSLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7422
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/TestNetworkService;->enforceTestNetworkPermissions(Landroid/content/Context;)V

    .line 7424
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mTNS:Lcom/android/server/TestNetworkService;

    if-nez v1, :cond_17

    .line 7425
    new-instance v1, Lcom/android/server/TestNetworkService;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    invoke-direct {v1, v2, v3}, Lcom/android/server/TestNetworkService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;)V

    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mTNS:Lcom/android/server/TestNetworkService;

    .line 7428
    :cond_17
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mTNS:Lcom/android/server/TestNetworkService;

    monitor-exit v0

    return-object v1

    .line 7429
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public startTcpKeepalive(Landroid/net/Network;Ljava/io/FileDescriptor;ILandroid/net/ISocketKeepaliveCallback;)V
    .registers 7
    .param p1, "network"  # Landroid/net/Network;
    .param p2, "fd"  # Ljava/io/FileDescriptor;
    .param p3, "intervalSeconds"  # I
    .param p4, "cb"  # Landroid/net/ISocketKeepaliveCallback;

    .line 7157
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceKeepalivePermission()V

    .line 7158
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    .line 7159
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 7158
    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/server/connectivity/KeepaliveTracker;->startTcpKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/io/FileDescriptor;ILandroid/net/ISocketKeepaliveCallback;)V

    .line 7160
    return-void
.end method

.method public startTethering(ILandroid/os/ResultReceiver;ZLjava/lang/String;)V
    .registers 7
    .param p1, "type"  # I
    .param p2, "receiver"  # Landroid/os/ResultReceiver;
    .param p3, "showProvisioningUi"  # Z
    .param p4, "callerPkg"  # Ljava/lang/String;

    .line 4150
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0, p4}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 4151
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-nez v0, :cond_11

    .line 4152
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 4153
    return-void

    .line 4157
    :cond_11
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1, p4}, Lcom/android/server/connectivity/Tethering;->setStartTetheringProcessInfo(ILjava/lang/String;)V

    .line 4160
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->startTethering(ILandroid/os/ResultReceiver;Z)V

    .line 4161
    return-void
.end method

.method public stopKeepalive(Landroid/net/Network;I)V
    .registers 6
    .param p1, "network"  # Landroid/net/Network;
    .param p2, "slot"  # I

    .line 7164
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const v1, 0x8100c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7166
    return-void
.end method

.method public stopTethering(ILjava/lang/String;)V
    .registers 4
    .param p1, "type"  # I
    .param p2, "callerPkg"  # Ljava/lang/String;

    .line 4165
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 4166
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    .line 4167
    return-void
.end method

.method systemReady()V
    .registers 4

    .line 2211
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mProxyTracker:Lcom/android/server/connectivity/ProxyTracker;

    invoke-virtual {v0}, Lcom/android/server/connectivity/ProxyTracker;->loadGlobalProxy()V

    .line 2212
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->registerNetdEventCallback()V

    .line 2213
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->systemReady()V

    .line 2215
    monitor-enter p0

    .line 2216
    const/4 v0, 0x1

    :try_start_f
    iput-boolean v0, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    .line 2217
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    if-eqz v0, :cond_21

    .line 2218
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    .line 2221
    :cond_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_41

    .line 2225
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->updateLockdownVpn()Z

    .line 2228
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2230
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2232
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-virtual {v0}, Lcom/android/server/connectivity/PermissionMonitor;->startMonitoring()V

    .line 2233
    return-void

    .line 2221
    :catchall_41
    move-exception v0

    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v0
.end method

.method public tether(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "iface"  # Ljava/lang/String;
    .param p2, "callerPkg"  # Ljava/lang/String;

    .line 4020
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 4021
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4022
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 4024
    :cond_12
    const/4 v0, 0x3

    return v0
.end method

.method public unregisterNetworkFactory(Landroid/os/Messenger;)V
    .registers 4
    .param p1, "messenger"  # Landroid/os/Messenger;

    .line 5550
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 5551
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5552
    return-void
.end method

.method public unregisterTetheringEventCallback(Landroid/net/ITetheringEventCallback;Ljava/lang/String;)V
    .registers 4
    .param p1, "callback"  # Landroid/net/ITetheringEventCallback;
    .param p2, "callerPkg"  # Ljava/lang/String;

    .line 4195
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 4196
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->unregisterTetheringEventCallback(Landroid/net/ITetheringEventCallback;)V

    .line 4197
    return-void
.end method

.method public untether(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "iface"  # Ljava/lang/String;
    .param p2, "callerPkg"  # Ljava/lang/String;

    .line 4031
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 4033
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4034
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 4036
    :cond_12
    const/4 v0, 0x3

    return v0
.end method

.method updateAlwaysOnNetworks()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1141
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendEmptyMessage(I)Z

    .line 1142
    return-void
.end method

.method public updateLockdownVpn()Z
    .registers 15

    .line 4643
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_11

    .line 4644
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const-string v2, "Lockdown VPN only available to AID_SYSTEM"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4645
    return v1

    .line 4648
    :cond_11
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4650
    :try_start_14
    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    .line 4651
    iget-boolean v2, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_b1

    .line 4652
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    const-string v5, "LOCKDOWN_VPN"

    invoke-virtual {v2, v5}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v2

    .line 4653
    .local v2, "profileTag":[B
    if-nez v2, :cond_33

    .line 4654
    sget-object v3, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const-string v4, "Lockdown VPN configured but cannot be read from keystore"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4655
    monitor-exit v0

    return v1

    .line 4657
    :cond_33
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    .line 4658
    .local v5, "profileName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VPN_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4659
    invoke-virtual {v6, v7}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v6

    .line 4658
    invoke-static {v5, v6}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v6

    .line 4660
    .local v6, "profile":Lcom/android/internal/net/VpnProfile;
    if-nez v6, :cond_70

    .line 4661
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Lockdown VPN configured invalid profile "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4662
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    .line 4663
    monitor-exit v0

    return v3

    .line 4665
    :cond_70
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 4666
    .local v4, "user":I
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/connectivity/Vpn;

    move-object v13, v7

    .line 4667
    .local v13, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v13, :cond_a0

    .line 4668
    sget-object v3, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VPN for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " not ready yet. Skipping lockdown"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4669
    monitor-exit v0

    return v1

    .line 4671
    :cond_a0
    new-instance v1, Lcom/android/server/net/LockdownVpnTracker;

    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    move-object v7, v1

    move-object v9, p0

    move-object v11, v13

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/android/server/net/LockdownVpnTracker;-><init>(Landroid/content/Context;Lcom/android/server/ConnectivityService;Landroid/os/Handler;Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnProfile;)V

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    .line 4672
    .end local v2  # "profileTag":[B
    .end local v4  # "user":I
    .end local v5  # "profileName":Ljava/lang/String;
    .end local v6  # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v13  # "vpn":Lcom/android/server/connectivity/Vpn;
    goto :goto_b4

    .line 4673
    :cond_b1
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    .line 4675
    :goto_b4
    monitor-exit v0

    .line 4677
    return v3

    .line 4675
    :catchall_b6
    move-exception v1

    monitor-exit v0
    :try_end_b8
    .catchall {:try_start_14 .. :try_end_b8} :catchall_b6

    throw v1
.end method

.method updatePrivateDnsSettings()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1147
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendEmptyMessage(I)Z

    .line 1148
    return-void
.end method
