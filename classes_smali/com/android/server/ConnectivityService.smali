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

.field private final mDetachedRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/NetworkRequest;",
            "Lcom/android/server/ConnectivityService$NetworkRequestInfo;",
            ">;"
        }
    .end annotation
.end field

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

.field private final mIsolatedUids:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mIsolatedUids"
        }
    .end annotation
.end field

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

.field private mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

.field private final mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected final mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mPolicyListener:Landroid/net/INetworkPolicyListener;

.field private mPolicyManager:Landroid/net/INetworkPolicyManager;

.field private mPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

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

    .line 232
    const-class v0, Lcom/android/server/ConnectivityService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    .line 241
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ConnectivityService;->DDBG:Z

    .line 242
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ConnectivityService;->VDBG:Z

    .line 333
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

    .line 849
    nop

    .line 850
    invoke-static {}, Lcom/android/server/ConnectivityService;->getDnsResolver()Landroid/net/IDnsResolver;

    move-result-object v5

    new-instance v6, Landroid/net/metrics/IpConnectivityLog;

    invoke-direct {v6}, Landroid/net/metrics/IpConnectivityLog;-><init>()V

    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object v7

    .line 849
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;Landroid/net/IDnsResolver;Landroid/net/metrics/IpConnectivityLog;Landroid/net/INetd;)V

    .line 851
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;Landroid/net/IDnsResolver;Landroid/net/metrics/IpConnectivityLog;Landroid/net/INetd;)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 856
    invoke-direct {p0}, Landroid/net/IConnectivityManager$Stub;-><init>()V

    .line 290
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    .line 305
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    .line 311
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 329
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mTNSLock:Ljava/lang/Object;

    .line 593
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/server/ConnectivityService;->mNextNetId:I

    .line 596
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/ConnectivityService;->mNextNetworkRequestId:I

    .line 600
    new-instance v2, Landroid/util/LocalLog;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    .line 604
    new-instance v2, Landroid/util/LocalLog;

    const/16 v4, 0x28

    invoke-direct {v2, v4}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkInfoBlockingLogs:Landroid/util/LocalLog;

    .line 607
    new-instance v2, Landroid/util/LocalLog;

    invoke-direct {v2, v3}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/ConnectivityService;->mWakelockLogs:Landroid/util/LocalLog;

    .line 608
    iput v0, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockAcquisitions:I

    .line 609
    iput v0, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockReleases:I

    .line 610
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockDurationMs:J

    .line 611
    iput-wide v2, p0, Lcom/android/server/ConnectivityService;->mMaxWakelockDurationMs:J

    .line 612
    iput-wide v2, p0, Lcom/android/server/ConnectivityService;->mLastWakeLockAcquireTimestamp:J

    .line 616
    new-instance v2, Landroid/util/SparseArray;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/ConnectivityService;->mBandwidthRequests:Landroid/util/SparseArray;

    .line 627
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/ConnectivityService;->mIsolatedUids:Landroid/util/SparseBooleanArray;

    .line 632
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/ConnectivityService;->mDetachedRequests:Ljava/util/HashMap;

    .line 823
    new-instance v2, Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-direct {v2, p0}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v2, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    .line 829
    new-instance v2, Lcom/android/server/ConnectivityService$1;

    invoke-direct {v2, p0}, Lcom/android/server/ConnectivityService$1;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v2, p0, Lcom/android/server/ConnectivityService;->mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

    .line 1659
    new-instance v2, Lcom/android/server/ConnectivityService$3;

    invoke-direct {v2, p0}, Lcom/android/server/ConnectivityService$3;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v2, p0, Lcom/android/server/ConnectivityService;->mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

    .line 1784
    new-instance v2, Lcom/android/server/ConnectivityService$4;

    invoke-direct {v2, p0}, Lcom/android/server/ConnectivityService$4;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v2, p0, Lcom/android/server/ConnectivityService;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    .line 1844
    new-instance v2, Lcom/android/server/ConnectivityService$5;

    invoke-direct {v2, p0}, Lcom/android/server/ConnectivityService$5;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v2, p0, Lcom/android/server/ConnectivityService;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    .line 4847
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/misc/radio/provisioning_urls.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/ConnectivityService;->mProvisioningUrlFile:Ljava/io/File;

    .line 5082
    new-instance v2, Lcom/android/server/ConnectivityService$6;

    invoke-direct {v2, p0}, Lcom/android/server/ConnectivityService$6;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v2, p0, Lcom/android/server/ConnectivityService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 5116
    new-instance v2, Lcom/android/server/ConnectivityService$7;

    invoke-direct {v2, p0}, Lcom/android/server/ConnectivityService$7;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v2, p0, Lcom/android/server/ConnectivityService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    .line 5126
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    .line 5127
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    .line 5131
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    .line 5567
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    .line 5571
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    .line 5576
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/ConnectivityService;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    .line 5582
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    .line 5584
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/ConnectivityService;->mBlockedAppUids:Ljava/util/HashSet;

    .line 857
    const-string v2, "ConnectivityService starting up"

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 859
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getSystemProperties()Lcom/android/server/connectivity/MockableSystemProperties;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    .line 861
    iput-object p6, p0, Lcom/android/server/ConnectivityService;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    .line 862
    sget-object p6, Landroid/net/NetworkRequest$Type;->REQUEST:Landroid/net/NetworkRequest$Type;

    const/4 v2, -0x1

    invoke-direct {p0, v2, p6}, Lcom/android/server/ConnectivityService;->createDefaultInternetRequestForTransport(ILandroid/net/NetworkRequest$Type;)Landroid/net/NetworkRequest;

    move-result-object p6

    iput-object p6, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    .line 863
    new-instance p6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    const/4 v4, 0x0

    invoke-direct {p6, p0, v4, v2, v3}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;)V

    .line 864
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v2, v3, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REGISTER "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {v2, p6}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 867
    sget-object p6, Landroid/net/NetworkRequest$Type;->BACKGROUND_REQUEST:Landroid/net/NetworkRequest$Type;

    invoke-direct {p0, v0, p6}, Lcom/android/server/ConnectivityService;->createDefaultInternetRequestForTransport(ILandroid/net/NetworkRequest$Type;)Landroid/net/NetworkRequest;

    move-result-object p6

    iput-object p6, p0, Lcom/android/server/ConnectivityService;->mDefaultMobileDataRequest:Landroid/net/NetworkRequest;

    .line 873
    sget-object p6, Landroid/net/NetworkRequest$Type;->BACKGROUND_REQUEST:Landroid/net/NetworkRequest$Type;

    invoke-direct {p0, v1, p6}, Lcom/android/server/ConnectivityService;->createDefaultInternetRequestForTransport(ILandroid/net/NetworkRequest$Type;)Landroid/net/NetworkRequest;

    move-result-object p6

    iput-object p6, p0, Lcom/android/server/ConnectivityService;->mDefaultWifiRequest:Landroid/net/NetworkRequest;

    .line 876
    new-instance p6, Landroid/os/HandlerThread;

    const-string v2, "ConnectivityServiceThread"

    invoke-direct {p6, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p6, p0, Lcom/android/server/ConnectivityService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 877
    iget-object p6, p0, Lcom/android/server/ConnectivityService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p6}, Landroid/os/HandlerThread;->start()V

    .line 878
    new-instance p6, Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p6, p0, v2}, Lcom/android/server/ConnectivityService$InternalHandler;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V

    iput-object p6, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 879
    new-instance p6, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p6, p0, v2}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V

    iput-object p6, p0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    .line 881
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p6

    const-string v2, "connectivity_release_pending_intent_delay_ms"

    const/16 v3, 0x1388

    invoke-static {p6, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p6

    iput p6, p0, Lcom/android/server/ConnectivityService;->mReleasePendingIntentDelayMs:I

    .line 884
    iget-object p6, p0, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    const-string/jumbo v2, "persist.netmon.linger"

    const/16 v3, 0x7530

    invoke-virtual {p6, v2, v3}, Lcom/android/server/connectivity/MockableSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p6

    iput p6, p0, Lcom/android/server/ConnectivityService;->mLingerDelayMs:I

    .line 886
    const-string p6, "missing Context"

    invoke-static {p1, p6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/content/Context;

    iput-object p6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 887
    const-string p6, "missing INetworkManagementService"

    invoke-static {p2, p6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/INetworkManagementService;

    iput-object p2, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    .line 888
    const-string p2, "missing INetworkStatsService"

    invoke-static {p3, p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/INetworkStatsService;

    iput-object p2, p0, Lcom/android/server/ConnectivityService;->mStatsService:Landroid/net/INetworkStatsService;

    .line 889
    const-string p2, "missing INetworkPolicyManager"

    invoke-static {p4, p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/INetworkPolicyManager;

    iput-object p2, p0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 890
    const-class p2, Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 891
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 890
    const-string p3, "missing NetworkPolicyManagerInternal"

    invoke-static {p2, p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/net/NetworkPolicyManagerInternal;

    iput-object p2, p0, Lcom/android/server/ConnectivityService;->mPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 893
    const-string p2, "missing IDnsResolver"

    invoke-static {p5, p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/IDnsResolver;

    iput-object p2, p0, Lcom/android/server/ConnectivityService;->mDnsResolver:Landroid/net/IDnsResolver;

    .line 894
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->makeProxyTracker()Lcom/android/server/connectivity/ProxyTracker;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/ConnectivityService;->mProxyTracker:Lcom/android/server/connectivity/ProxyTracker;

    .line 896
    iput-object p7, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/net/INetd;

    .line 897
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    .line 898
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string/jumbo p3, "phone"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 904
    :try_start_1c2
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    iget-object p3, p0, Lcom/android/server/ConnectivityService;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-interface {p2, p3}, Landroid/net/INetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_1c9
    .catch Landroid/os/RemoteException; {:try_start_1c2 .. :try_end_1c9} :catch_1ca

    .line 908
    goto :goto_1e0

    .line 905
    :catch_1ca
    move-exception p2

    .line 907
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "unable to register INetworkPolicyListener"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 910
    :goto_1e0
    const-string/jumbo p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    .line 912
    sget-object p3, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v1, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 913
    iget-object p3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x10e0089

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockTimeout:I

    .line 915
    sget-object p3, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v1, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/ConnectivityService;->mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 917
    const/16 p2, 0x13

    new-array p2, p2, [Landroid/net/NetworkConfig;

    iput-object p2, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    .line 920
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    const-string/jumbo p3, "ro.radio.noril"

    invoke-virtual {p2, p3, v0}, Lcom/android/server/connectivity/MockableSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 921
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "wifiOnly="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 922
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x1070088

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    .line 924
    array-length p4, p3

    move p5, v0

    :goto_239
    if-ge p5, p4, :cond_2d9

    aget-object p6, p3, p5

    .line 926
    :try_start_23d
    new-instance p7, Landroid/net/NetworkConfig;

    invoke-direct {p7, p6}, Landroid/net/NetworkConfig;-><init>(Ljava/lang/String;)V

    .line 927
    sget-boolean v2, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v2, :cond_263

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "naString="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, " config="

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 928
    :cond_263
    iget p6, p7, Landroid/net/NetworkConfig;->type:I

    const/16 v2, 0x12

    if-le p6, v2, :cond_280

    .line 929
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in networkAttributes - ignoring attempt to define type "

    invoke-virtual {p6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p7, p7, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 931
    goto :goto_2d5

    .line 933
    :cond_280
    if-eqz p2, :cond_2a2

    iget p6, p7, Landroid/net/NetworkConfig;->type:I

    invoke-static {p6}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result p6

    if-eqz p6, :cond_2a2

    .line 934
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "networkAttributes - ignoring mobile as this dev is wifiOnly "

    invoke-virtual {p6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p7, p7, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 936
    goto :goto_2d5

    .line 938
    :cond_2a2
    iget-object p6, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    iget v2, p7, Landroid/net/NetworkConfig;->type:I

    aget-object p6, p6, v2

    if-eqz p6, :cond_2c1

    .line 939
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in networkAttributes - ignoring attempt to redefine type "

    invoke-virtual {p6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p7, p7, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 941
    goto :goto_2d5

    .line 943
    :cond_2c1
    iget-object p6, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    iget v2, p7, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {p6, v2}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->addSupportedType(I)V

    .line 945
    iget-object p6, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    iget v2, p7, Landroid/net/NetworkConfig;->type:I

    aput-object p7, p6, v2

    .line 946
    iget p6, p0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    add-int/2addr p6, v1

    iput p6, p0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I
    :try_end_2d3
    .catch Ljava/lang/Exception; {:try_start_23d .. :try_end_2d3} :catch_2d4

    .line 949
    goto :goto_2d5

    .line 947
    :catch_2d4
    move-exception p6

    .line 924
    :goto_2d5
    add-int/lit8 p5, p5, 0x1

    goto/16 :goto_239

    .line 953
    :cond_2d9
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    const/16 p3, 0x11

    aget-object p2, p2, p3

    if-nez p2, :cond_2eb

    .line 956
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {p2, p3}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->addSupportedType(I)V

    .line 957
    iget p2, p0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    .line 962
    :cond_2eb
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    const/16 p3, 0x9

    aget-object p2, p2, p3

    if-nez p2, :cond_305

    const-string p2, "ethernet"

    invoke-virtual {p0, p2}, Lcom/android/server/ConnectivityService;->hasService(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_305

    .line 963
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {p2, p3}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->addSupportedType(I)V

    .line 964
    iget p2, p0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    .line 967
    :cond_305
    sget-boolean p2, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz p2, :cond_31f

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mNetworksDefined="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 969
    :cond_31f
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    .line 970
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x107005e

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p2

    .line 972
    array-length p3, p2

    :goto_332
    if-ge v0, p3, :cond_369

    aget p4, p2, v0

    .line 973
    iget-object p5, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object p5, p5, p4

    if-eqz p5, :cond_352

    iget-object p5, p0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-interface {p5, p6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_352

    .line 974
    iget-object p5, p0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_366

    .line 976
    :cond_352
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Ignoring protectedNetwork "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 972
    :goto_366
    add-int/lit8 v0, v0, 0x1

    goto :goto_332

    .line 980
    :cond_369
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->makeTethering()Lcom/android/server/connectivity/Tethering;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    .line 982
    new-instance p2, Lcom/android/server/connectivity/PermissionMonitor;

    iget-object p3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object p4, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/net/INetd;

    invoke-direct {p2, p3, p4}, Lcom/android/server/connectivity/PermissionMonitor;-><init>(Landroid/content/Context;Landroid/net/INetd;)V

    iput-object p2, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    .line 986
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 987
    const-string p2, "android.intent.action.USER_STARTED"

    invoke-virtual {v3, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 988
    const-string p2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v3, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 989
    const-string p2, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 990
    const-string p2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 991
    const-string p2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v3, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 992
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 998
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/server/ConnectivityService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    sget-object p4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    new-instance p5, Landroid/content/IntentFilter;

    const-string p6, "android.intent.action.USER_PRESENT"

    invoke-direct {p5, p6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 p6, 0x0

    const/4 p7, 0x0

    invoke-virtual/range {p2 .. p7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1002
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1003
    const-string p2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1004
    const-string p2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1005
    const-string p2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1006
    const-string/jumbo p2, "package"

    invoke-virtual {v3, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1007
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1015
    :try_start_3db
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    iget-object p3, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-interface {p2, p3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 1016
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    iget-object p3, p0, Lcom/android/server/ConnectivityService;->mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {p2, p3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_3e9
    .catch Landroid/os/RemoteException; {:try_start_3db .. :try_end_3e9} :catch_3ea

    .line 1019
    goto :goto_3ff

    .line 1017
    :catch_3ea
    move-exception p2

    .line 1018
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Error registering observer :"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1021
    :goto_3ff
    new-instance p2, Lcom/android/server/ConnectivityService$SettingsObserver;

    iget-object p3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object p4, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-direct {p2, p3, p4}, Lcom/android/server/ConnectivityService$SettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    .line 1022
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->registerSettingsCallbacks()V

    .line 1024
    new-instance p2, Lcom/android/server/connectivity/DataConnectionStats;

    iget-object p3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/android/server/connectivity/DataConnectionStats;-><init>(Landroid/content/Context;)V

    .line 1025
    invoke-virtual {p2}, Lcom/android/server/connectivity/DataConnectionStats;->startMonitoring()V

    .line 1027
    const-string/jumbo p2, "user"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    .line 1029
    new-instance p1, Lcom/android/server/connectivity/KeepaliveTracker;

    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-direct {p1, p2, p3}, Lcom/android/server/connectivity/KeepaliveTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    .line 1030
    new-instance p1, Lcom/android/server/connectivity/NetworkNotificationManager;

    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-class p4, Landroid/app/NotificationManager;

    .line 1031
    invoke-virtual {p2, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/NotificationManager;

    invoke-direct {p1, p2, p3, p4}, Lcom/android/server/connectivity/NetworkNotificationManager;-><init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/app/NotificationManager;)V

    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    .line 1033
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x3

    const-string/jumbo p3, "network_switch_notification_daily_limit"

    invoke-static {p1, p3, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1036
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-wide/32 p2, 0xea60

    const-string/jumbo p4, "network_switch_notification_rate_limit_millis"

    invoke-static {p1, p4, p2, p3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1039
    new-instance p1, Lcom/android/server/connectivity/LingerMonitor;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/LingerMonitor;-><init>(Landroid/content/Context;Lcom/android/server/connectivity/NetworkNotificationManager;IJ)V

    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mLingerMonitor:Lcom/android/server/connectivity/LingerMonitor;

    .line 1041
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    new-instance p3, Lcom/android/server/-$$Lambda$ConnectivityService$SFqiR4Pfksb1C7csMC3uNxCllR8;

    invoke-direct {p3, p0}, Lcom/android/server/-$$Lambda$ConnectivityService$SFqiR4Pfksb1C7csMC3uNxCllR8;-><init>(Lcom/android/server/ConnectivityService;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->createMultinetworkPolicyTracker(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/net/util/MultinetworkPolicyTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    .line 1043
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {p1}, Landroid/net/util/MultinetworkPolicyTracker;->start()V

    .line 1045
    new-instance p1, Lcom/android/server/connectivity/MultipathPolicyTracker;

    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-direct {p1, p2, p3}, Lcom/android/server/connectivity/MultipathPolicyTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;

    .line 1047
    new-instance p1, Lcom/android/server/connectivity/DnsManager;

    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/server/ConnectivityService;->mDnsResolver:Landroid/net/IDnsResolver;

    iget-object p4, p0, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    invoke-direct {p1, p2, p3, p4}, Lcom/android/server/connectivity/DnsManager;-><init>(Landroid/content/Context;Landroid/net/IDnsResolver;Lcom/android/server/connectivity/MockableSystemProperties;)V

    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    .line 1048
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->registerPrivateDnsSettingsCallbacks()V

    .line 1049
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .registers 1

    .line 230
    invoke-static {p0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/ConnectivityService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 5

    .line 230
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/ConnectivityService;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V
    .registers 2

    .line 230
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleAsyncChannelHalfConnect(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;
    .registers 1

    .line 230
    iget-object p0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V
    .registers 2

    .line 230
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleAsyncChannelDisconnected(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1300()Z
    .registers 1

    .line 230
    sget-boolean v0, Lcom/android/server/ConnectivityService;->VDBG:Z

    return v0
.end method

.method static synthetic access$1400(I)Ljava/lang/String;
    .registers 1

    .line 230
    invoke-static {p0}, Lcom/android/server/ConnectivityService;->eventName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .registers 1

    .line 230
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V
    .registers 4

    .line 230
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V
    .registers 3

    .line 230
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->updateNetworkInfo(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .registers 3

    .line 230
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->updateNetworkScore(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;
    .registers 1

    .line 230
    iget-object p0, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/ConnectivityService;)Z
    .registers 1

    .line 230
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V
    .registers 3

    .line 230
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->showNetworkNotification(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 2

    .line 230
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 2

    .line 230
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleFreshlyValidatedNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;
    .registers 1

    .line 230
    iget-object p0, p0, Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 2

    .line 230
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->updateInetCondition(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V
    .registers 2

    .line 230
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handlePromptUnvalidated(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 2

    .line 230
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleNetworkUnvalidated(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic access$2700(I)Z
    .registers 1

    .line 230
    invoke-static {p0}, Lcom/android/server/ConnectivityService;->toBool(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 2

    .line 230
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/shared/PrivateDnsConfig;)V
    .registers 3

    .line 230
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->updatePrivateDns(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/shared/PrivateDnsConfig;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/ConnectivityService;)Landroid/net/NetworkRequest;
    .registers 1

    .line 230
    iget-object p0, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/server/ConnectivityService;)Landroid/content/Context;
    .registers 1

    .line 230
    iget-object p0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)Z
    .registers 3

    .line 230
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->isLiveNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 2

    .line 230
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleLingerComplete(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;IZ)V
    .registers 4

    .line 230
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;IZ)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;
    .registers 1

    .line 230
    iget-object p0, p0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/android/server/ConnectivityService;)V
    .registers 1

    .line 230
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceSettingsPermission()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/ConnectivityService;I)V
    .registers 2

    .line 230
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkTransitionWakelock(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V
    .registers 2

    .line 230
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V
    .registers 2

    .line 230
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkFactory(Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/ConnectivityService;IZJ)V
    .registers 5

    .line 230
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/ConnectivityService;->sendDataActivityBroadcast(IZJ)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;)V
    .registers 2

    .line 230
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleUnregisterNetworkFactory(Landroid/os/Messenger;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/INetworkMonitor;)V
    .registers 3

    .line 230
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/INetworkMonitor;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .registers 2

    .line 230
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V
    .registers 2

    .line 230
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequestWithIntent(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .registers 2

    .line 230
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleTimedOutNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/ConnectivityService;Landroid/app/PendingIntent;I)V
    .registers 3

    .line 230
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequestWithIntent(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/ConnectivityService;Landroid/net/Network;ZZ)V
    .registers 4

    .line 230
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->handleSetAcceptUnvalidated(Landroid/net/Network;ZZ)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/ConnectivityService;Landroid/net/Network;ZZ)V
    .registers 4

    .line 230
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->handleSetAcceptPartialConnectivity(Landroid/net/Network;ZZ)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V
    .registers 2

    .line 230
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleSetAvoidUnvalidated(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/ConnectivityService;)V
    .registers 1

    .line 230
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->handleConfigureAlwaysOnNetworks()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;
    .registers 1

    .line 230
    iget-object p0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/android/server/ConnectivityService;Landroid/net/Network;IZ)V
    .registers 4

    .line 230
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->handleReportNetworkConnectivity(Landroid/net/Network;IZ)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/ConnectivityService;)V
    .registers 1

    .line 230
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->handlePrivateDnsSettingsChanged()V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V
    .registers 2

    .line 230
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handlePrivateDnsValidationUpdate(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/ConnectivityService;)V
    .registers 1

    .line 230
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->ensureRunningOnConnectivityServiceThread()V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/ConnectivityService;I)V
    .registers 2

    .line 230
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserStart(I)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/ConnectivityService;I)V
    .registers 2

    .line 230
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserStop(I)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/ConnectivityService;I)V
    .registers 2

    .line 230
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserAdded(I)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/ConnectivityService;I)V
    .registers 2

    .line 230
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserRemoved(I)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/ConnectivityService;I)V
    .registers 2

    .line 230
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserUnlocked(I)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/ConnectivityService;Ljava/lang/String;I)V
    .registers 3

    .line 230
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->onPackageAdded(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;)V
    .registers 1

    .line 230
    invoke-static {p0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/ConnectivityService;Ljava/lang/String;I)V
    .registers 3

    .line 230
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->onPackageReplaced(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/ConnectivityService;Ljava/lang/String;IZ)V
    .registers 4

    .line 230
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->onPackageRemoved(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;)V
    .registers 2

    .line 230
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->ensureNetworkRequestHasType(Landroid/net/NetworkRequest;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;
    .registers 1

    .line 230
    iget-object p0, p0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/ConnectivityService;I)Lcom/android/server/connectivity/NetworkAgentInfo;
    .registers 2

    .line 230
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetId(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/ConnectivityService;IZLjava/lang/String;I)V
    .registers 5

    .line 230
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/ConnectivityService;->handleNat64PrefixEvent(IZLjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/Tethering;
    .registers 1

    .line 230
    iget-object p0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    return-object p0
.end method

.method private addDetachedRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .registers 4

    .line 1913
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDetachedRequests:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1914
    return-void
.end method

.method private addLegacyRouteToHost(Landroid/net/LinkProperties;Ljava/net/InetAddress;II)Z
    .registers 7

    .line 1758
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v0

    .line 1759
    if-nez v0, :cond_13

    .line 1760
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object p1

    goto :goto_2e

    .line 1762
    :cond_13
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object p1

    .line 1763
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1765
    invoke-static {p2, p1}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object p1

    goto :goto_2e

    .line 1769
    :cond_26
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object p1

    .line 1772
    :goto_2e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Adding legacy route "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for UID/PID "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1773
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1772
    invoke-static {p2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1775
    :try_start_56
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {p2, p3, p1, p4}, Landroid/os/INetworkManagementService;->addLegacyRouteForNetId(ILandroid/net/RouteInfo;I)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5b} :catch_5e

    .line 1780
    nop

    .line 1781
    const/4 p1, 0x1

    return p1

    .line 1776
    :catch_5e
    move-exception p1

    .line 1778
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception trying to add a route: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1779
    const/4 p1, 0x0

    return p1
.end method

.method private callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V
    .registers 10

    .line 6239
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->messenger:Landroid/os/Messenger;

    if-nez v0, :cond_5

    .line 6240
    return-void

    .line 6242
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6244
    new-instance v1, Landroid/net/NetworkRequest;

    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {v1, v2}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkRequest;)V

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->putParcelable(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    .line 6245
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 6246
    const v2, 0x80005

    if-eq p3, v2, :cond_22

    .line 6247
    iget-object v2, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->putParcelable(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    .line 6249
    :cond_22
    sparse-switch p3, :sswitch_data_b4

    goto :goto_69

    .line 6274
    :sswitch_26
    iget-object p2, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    if-eqz p4, :cond_2c

    const/4 v2, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    :goto_2d
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/ConnectivityService;->maybeLogBlockedStatusChanged(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Landroid/net/Network;Z)V

    .line 6275
    iput p4, v1, Landroid/os/Message;->arg1:I

    goto :goto_69

    .line 6270
    :sswitch_33
    new-instance p4, Landroid/net/LinkProperties;

    iget-object p2, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {p4, p2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-static {v0, p4}, Lcom/android/server/ConnectivityService;->putParcelable(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    .line 6271
    goto :goto_69

    .line 6264
    :sswitch_3e
    iget-object p2, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget p4, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPid:I

    iget v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    invoke-direct {p0, p2, p4, v2}, Lcom/android/server/ConnectivityService;->networkCapabilitiesRestrictedForCallerPermissions(Landroid/net/NetworkCapabilities;II)Landroid/net/NetworkCapabilities;

    move-result-object p2

    .line 6266
    invoke-static {v0, p2}, Lcom/android/server/ConnectivityService;->putParcelable(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    .line 6267
    goto :goto_69

    .line 6259
    :sswitch_4c
    iput p4, v1, Landroid/os/Message;->arg1:I

    .line 6260
    goto :goto_69

    .line 6251
    :sswitch_4f
    iget-object v2, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget v3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPid:I

    iget v4, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/ConnectivityService;->networkCapabilitiesRestrictedForCallerPermissions(Landroid/net/NetworkCapabilities;II)Landroid/net/NetworkCapabilities;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->putParcelable(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    .line 6253
    new-instance v2, Landroid/net/LinkProperties;

    iget-object p2, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, p2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->putParcelable(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    .line 6255
    iput p4, v1, Landroid/os/Message;->arg1:I

    .line 6256
    nop

    .line 6279
    :goto_69
    iput p3, v1, Landroid/os/Message;->what:I

    .line 6280
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 6282
    :try_start_6e
    sget-boolean p2, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz p2, :cond_95

    .line 6283
    invoke-static {p3}, Landroid/net/ConnectivityManager;->getCallbackName(I)Ljava/lang/String;

    move-result-object p2

    .line 6284
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "sending notification "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6286
    :cond_95
    iget-object p2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {p2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_9a} :catch_9b

    .line 6290
    goto :goto_b2

    .line 6287
    :catch_9b
    move-exception p2

    .line 6289
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "RemoteException caught trying to send a callback msg for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 6291
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

    .line 2052
    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_14

    aget-object v3, p3, v2

    .line 2053
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_11

    .line 2054
    const/4 p1, 0x1

    return p1

    .line 2052
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2057
    :cond_14
    return v1
.end method

.method private varargs checkAnyPermissionOf([Ljava/lang/String;)Z
    .registers 7

    .line 2043
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_14

    aget-object v3, p1, v2

    .line 2044
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_11

    .line 2045
    const/4 p1, 0x1

    return p1

    .line 2043
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2048
    :cond_14
    return v1
.end method

.method private checkNetworkSignalStrengthWakeupPermission(II)Z
    .registers 5

    .line 2135
    const-string v0, "android.permission.NETWORK_SIGNAL_STRENGTH_WAKEUP"

    const-string v1, "android.permission.MAINLINE_NETWORK_STACK"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/ConnectivityService;->checkAnyPermissionOf(II[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private checkNetworkStackPermission()Z
    .registers 3

    .line 2129
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

    .line 2090
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

    .line 2096
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 2098
    const-string v1, "android.permission.MAINLINE_NETWORK_STACK"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_15

    goto :goto_17

    :cond_15
    const/4 p1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p1, 0x1

    .line 2096
    :goto_18
    return p1
.end method

.method private clearNetworkForRequest(I)V
    .registers 4

    .line 5605
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5606
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 5607
    monitor-exit v0

    .line 5608
    return-void

    .line 5607
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method private clearUidIsolated(I)V
    .registers 4

    .line 1900
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mIsolatedUids:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 1901
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mIsolatedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1902
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 1903
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->reattachNetworkRequestsForUid(I)V

    .line 1904
    return-void

    .line 1902
    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method

.method private createDefaultInternetRequestForTransport(ILandroid/net/NetworkRequest$Type;)Landroid/net/NetworkRequest;
    .registers 6

    .line 1085
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 1086
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1087
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1088
    const/4 v1, -0x1

    if-le p1, v1, :cond_15

    .line 1089
    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 1091
    :cond_15
    new-instance p1, Landroid/net/NetworkRequest;

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    move-result v2

    invoke-direct {p1, v0, v1, v2, p2}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V

    return-object p1
.end method

.method private static createDefaultNetworkCapabilitiesForUid(I)Landroid/net/NetworkCapabilities;
    .registers 3

    .line 1075
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 1076
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1077
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1078
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 1079
    invoke-virtual {v0, p0}, Landroid/net/NetworkCapabilities;->setSingleUid(I)Landroid/net/NetworkCapabilities;

    .line 1080
    return-object v0
.end method

.method private createNativeNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .registers 7

    .line 3222
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_20

    .line 3223
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

    .line 3227
    :cond_20
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/net/INetd;

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v3, Landroid/net/Network;->netId:I

    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 3228
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->getNetworkPermission(Landroid/net/NetworkCapabilities;)I

    move-result v4

    .line 3227
    invoke-interface {v1, v3, v4}, Landroid/net/INetd;->networkCreatePhysical(II)V

    .line 3230
    :goto_2f
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDnsResolver:Landroid/net/IDnsResolver;

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v3, Landroid/net/Network;->netId:I

    invoke-interface {v1, v3}, Landroid/net/IDnsResolver;->createNetworkCache(I)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_38} :catch_39
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_38} :catch_39

    .line 3231
    return v2

    .line 3232
    :catch_39
    move-exception v1

    .line 3233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error creating network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget p1, p1, Landroid/net/Network;->netId:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3234
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3233
    invoke-static {p1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 3235
    return v0
.end method

.method private createVpnInfo(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnInfo;
    .registers 10

    .line 4574
    invoke-virtual {p1}, Lcom/android/server/connectivity/Vpn;->getVpnInfo()Lcom/android/internal/net/VpnInfo;

    move-result-object v0

    .line 4575
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 4576
    return-object v1

    .line 4578
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/connectivity/Vpn;->getUnderlyingNetworks()[Landroid/net/Network;

    move-result-object p1

    .line 4581
    const/4 v2, 0x0

    if-nez p1, :cond_1c

    .line 4582
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v3

    .line 4583
    if-eqz v3, :cond_1c

    .line 4584
    const/4 p1, 0x1

    new-array p1, p1, [Landroid/net/Network;

    iget-object v3, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    aput-object v3, p1, v2

    .line 4587
    :cond_1c
    if-eqz p1, :cond_66

    array-length v3, p1

    if-lez v3, :cond_66

    .line 4588
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4589
    array-length v4, p1

    :goto_27
    if-ge v2, v4, :cond_52

    aget-object v5, p1, v2

    .line 4590
    invoke-virtual {p0, v5}, Lcom/android/server/ConnectivityService;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v5

    .line 4591
    if-eqz v5, :cond_4f

    .line 4592
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_39
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4593
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4e

    .line 4594
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4596
    :cond_4e
    goto :goto_39

    .line 4589
    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 4599
    :cond_52
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_66

    .line 4600
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v3, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, v0, Lcom/android/internal/net/VpnInfo;->underlyingIfaces:[Ljava/lang/String;

    .line 4603
    :cond_66
    iget-object p1, v0, Lcom/android/internal/net/VpnInfo;->underlyingIfaces:[Ljava/lang/String;

    if-nez p1, :cond_6b

    move-object v0, v1

    :cond_6b
    return-object v0
.end method

.method private destroyNativeNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 4

    .line 3241
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/net/INetd;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    invoke-interface {v0, v1}, Landroid/net/INetd;->networkDestroy(I)V

    .line 3242
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDnsResolver:Landroid/net/IDnsResolver;

    iget-object p1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget p1, p1, Landroid/net/Network;->netId:I

    invoke-interface {v0, p1}, Landroid/net/IDnsResolver;->destroyNetworkCache(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_12} :catch_13

    .line 3245
    goto :goto_28

    .line 3243
    :catch_13
    move-exception p1

    .line 3244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception destroying network: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 3246
    :goto_28
    return-void
.end method

.method private detachNetworkRequestsForUid(I)V
    .registers 8

    .line 1949
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1950
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 1951
    if-eqz v2, :cond_24

    iget v3, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    if-ne v3, p1, :cond_24

    .line 1952
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1954
    :cond_24
    goto :goto_f

    .line 1955
    :cond_25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 1956
    sget-boolean v1, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v1, :cond_3d

    sget-boolean v1, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v1, :cond_53

    .line 1957
    :cond_3d
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detaching request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    :cond_53
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 1962
    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v3, v3, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSatisfyingRequest(I)Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 1963
    sget-boolean v3, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v3, :cond_7b

    sget-boolean v3, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v3, :cond_9a

    .line 1964
    :cond_7b
    sget-object v3, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sending onLost to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    :cond_9a
    const v3, 0x80004

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 1968
    :cond_a1
    goto :goto_5d

    .line 1971
    :cond_a2
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->handleRemoveNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .line 1975
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDetachedRequests:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    new-instance v3, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-direct {v3, p0, v0}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1976
    goto/16 :goto_29

    .line 1977
    :cond_b3
    return-void
.end method

.method private disallowedBecauseSystemCaller()Z
    .registers 4

    .line 1675
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

    .line 1677
    const-string v0, "This method exists only for app backwards compatibility and must not be called by system services."

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1679
    const/4 v0, 0x1

    return v0

    .line 1681
    :cond_1d
    return v1
.end method

.method private disconnectAndDestroyNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 9

    .line 3139
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

    .line 3142
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(I)V

    .line 3148
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 3149
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v2, v1, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 3152
    :cond_38
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    .line 3153
    const/4 v2, 0x0

    if-eqz v0, :cond_50

    .line 3154
    iput v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 3159
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 3160
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->metricsLogger()Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;->defaultNetworkMetrics()Lcom/android/server/connectivity/DefaultNetworkMetrics;

    move-result-object v5

    invoke-virtual {v5, v3, v4, v1, p1}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->logDefaultNetworkEvent(JLcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3162
    :cond_50
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChangedForNetworkStats()V

    .line 3167
    const v3, 0x80004

    invoke-virtual {p0, p1, v3}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 3168
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    const/16 v4, -0x14

    invoke-virtual {v3, p1, v4}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopAllKeepalives(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 3169
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

    .line 3171
    iget-object v5, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v4, v5, v2}, Lcom/android/server/ConnectivityService;->wakeupModifyInterface(Ljava/lang/String;Landroid/net/NetworkCapabilities;Z)V

    .line 3172
    goto :goto_6a

    .line 3173
    :cond_7c
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor()Landroid/net/NetworkMonitorManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkMonitorManager;->notifyNetworkDisconnected()Z

    .line 3174
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3175
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v3}, Lcom/android/server/connectivity/Nat464Xlat;->update()V

    .line 3176
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v3

    .line 3179
    :try_start_92
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    iget-object v5, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v5, v5, Landroid/net/Network;->netId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 3180
    monitor-exit v3
    :try_end_9c
    .catchall {:try_start_92 .. :try_end_9c} :catchall_116

    .line 3182
    move v3, v2

    :goto_9d
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v4

    if-ge v3, v4, :cond_c4

    .line 3183
    invoke-virtual {p1, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v4

    .line 3184
    iget v5, v4, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityService;->getNetworkForRequest(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v5

    .line 3185
    if-eqz v5, :cond_c1

    iget-object v5, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v5, v5, Landroid/net/Network;->netId:I

    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v6, v6, Landroid/net/Network;->netId:I

    if-ne v5, v6, :cond_c1

    .line 3186
    iget v5, v4, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityService;->clearNetworkForRequest(I)V

    .line 3187
    invoke-direct {p0, v4, v1}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3182
    :cond_c1
    add-int/lit8 v3, v3, 0x1

    goto :goto_9d

    .line 3190
    :cond_c4
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->clearLingerState()V

    .line 3191
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    iget v3, v3, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {p1, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSatisfyingRequest(I)Z

    move-result v3

    if-eqz v3, :cond_de

    .line 3192
    invoke-direct {p0, v1, p1}, Lcom/android/server/ConnectivityService;->updateDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3193
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3194
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->ensureNetworkTransitionWakelock(Ljava/lang/String;)V

    .line 3196
    :cond_de
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v3, p1, v0}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    .line 3197
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-nez v0, :cond_ef

    .line 3198
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->updateAllVpnsCapabilities()V

    .line 3200
    :cond_ef
    invoke-direct {p0, v1, v2}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 3201
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLingerMonitor:Lcom/android/server/connectivity/LingerMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/LingerMonitor;->noteDisconnect(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3202
    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-eqz v0, :cond_105

    .line 3211
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->destroyNativeNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3212
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/DnsManager;->removeNetwork(Landroid/net/Network;)V

    .line 3214
    :cond_105
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3215
    :try_start_108
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    iget-object p1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget p1, p1, Landroid/net/Network;->netId:I

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 3216
    monitor-exit v0

    .line 3217
    return-void

    .line 3216
    :catchall_113
    move-exception p1

    monitor-exit v0
    :try_end_115
    .catchall {:try_start_108 .. :try_end_115} :catchall_113

    throw p1

    .line 3180
    :catchall_116
    move-exception p1

    :try_start_117
    monitor-exit v3
    :try_end_118
    .catchall {:try_start_117 .. :try_end_118} :catchall_116

    throw p1
.end method

.method private doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 12

    .line 2466
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2467
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    invoke-static {p2, v1, v0}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p2

    if-nez p2, :cond_12

    return-void

    .line 2468
    :cond_12
    if-eqz p4, :cond_15

    return-void

    .line 2470
    :cond_15
    const-string p2, "--diag"

    invoke-static {p3, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_21

    .line 2471
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->dumpNetworkDiagnostics(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2472
    return-void

    .line 2473
    :cond_21
    const-string/jumbo p2, "tethering"

    invoke-static {p3, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_30

    .line 2474
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/server/connectivity/Tethering;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2475
    return-void

    .line 2476
    :cond_30
    const-string/jumbo p2, "networks"

    invoke-static {p3, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3d

    .line 2477
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->dumpNetworks(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2478
    return-void

    .line 2479
    :cond_3d
    const-string/jumbo p2, "requests"

    invoke-static {p3, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4a

    .line 2480
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->dumpNetworkRequests(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2481
    return-void

    .line 2484
    :cond_4a
    const-string p2, "NetworkFactories for:"

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2485
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_59
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_7c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    .line 2486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p4, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2487
    goto :goto_59

    .line 2488
    :cond_7c
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2489
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2491
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object p2

    .line 2492
    const-string p4, "Active default network: "

    invoke-virtual {v0, p4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2493
    if-nez p2, :cond_94

    .line 2494
    const-string/jumbo p2, "none"

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9b

    .line 2496
    :cond_94
    iget-object p2, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget p2, p2, Landroid/net/Network;->netId:I

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 2498
    :goto_9b
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2500
    const-string p2, "Current Networks:"

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2501
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2502
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->dumpNetworks(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2503
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2504
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2506
    const-string p2, "Restrict background: "

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2507
    iget-boolean p2, p0, Lcom/android/server/ConnectivityService;->mRestrictBackground:Z

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 2508
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2510
    const-string p2, "Status for known UIDs:"

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2511
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2512
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    .line 2513
    const/4 p4, 0x0

    move v1, p4

    :goto_cc
    if-ge v1, p2, :cond_10c

    .line 2516
    :try_start_ce
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 2517
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2, p4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 2518
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " rules="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_fa
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_ce .. :try_end_fa} :catch_102
    .catch Ljava/util/ConcurrentModificationException; {:try_start_ce .. :try_end_fa} :catch_fb

    goto :goto_108

    .line 2521
    :catch_fb
    move-exception v2

    .line 2522
    const-string v2, "  ConcurrentModificationException"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_109

    .line 2519
    :catch_102
    move-exception v2

    .line 2520
    const-string v2, "  ArrayIndexOutOfBoundsException"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2523
    :goto_108
    nop

    .line 2513
    :goto_109
    add-int/lit8 v1, v1, 0x1

    goto :goto_cc

    .line 2525
    :cond_10c
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2526
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2528
    const-string p2, "Network Requests:"

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2529
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2530
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->dumpNetworkRequests(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2531
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2532
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2534
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {p2, v0}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2536
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2537
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/server/connectivity/Tethering;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2539
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2540
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    invoke-virtual {p2, v0}, Lcom/android/server/connectivity/KeepaliveTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2542
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2543
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->dumpAvoidBadWifiSettings(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2545
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2546
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-virtual {p2, v0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2548
    const-string p2, "--short"

    invoke-static {p3, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_263

    .line 2549
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2550
    const-string p2, "mNetworkRequestInfoLogs (most recent first):"

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2551
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2552
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2553
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2555
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2556
    const-string p2, "mNetworkInfoBlockingLogs (most recent first):"

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2557
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2558
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mNetworkInfoBlockingLogs:Landroid/util/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2559
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2561
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2562
    const-string p2, "NetTransition WakeLock activity (most recent first):"

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2563
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2564
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "total acquisitions: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockAcquisitions:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2565
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "total releases: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockReleases:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2566
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cumulative duration: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockDurationMs:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "s"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2567
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "longest duration: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/ConnectivityService;->mMaxWakelockDurationMs:J

    div-long/2addr v1, v3

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "s"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2568
    iget p2, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockAcquisitions:I

    iget v1, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockReleases:I

    if-le p2, v1, :cond_211

    .line 2569
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v5, p0, Lcom/android/server/ConnectivityService;->mLastWakeLockAcquireTimestamp:J

    sub-long/2addr v1, v5

    .line 2570
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currently holding WakeLock for: "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long/2addr v1, v3

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "s"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2572
    :cond_211
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mWakelockLogs:Landroid/util/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2574
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2575
    const-string p1, "bandwidth update requests (by uid):"

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2576
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2577
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mBandwidthRequests:Landroid/util/SparseArray;

    monitor-enter p1

    .line 2578
    nop

    :goto_225
    :try_start_225
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mBandwidthRequests:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p4, p2, :cond_258

    .line 2579
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/ConnectivityService;->mBandwidthRequests:Landroid/util/SparseArray;

    invoke-virtual {p3, p4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "]: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/ConnectivityService;->mBandwidthRequests:Landroid/util/SparseArray;

    .line 2580
    invoke-virtual {p3, p4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2579
    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2578
    add-int/lit8 p4, p4, 0x1

    goto :goto_225

    .line 2582
    :cond_258
    monitor-exit p1
    :try_end_259
    .catchall {:try_start_225 .. :try_end_259} :catchall_260

    .line 2583
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2585
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_263

    .line 2582
    :catchall_260
    move-exception p2

    :try_start_261
    monitor-exit p1
    :try_end_262
    .catchall {:try_start_261 .. :try_end_262} :catchall_260

    throw p2

    .line 2588
    :cond_263
    :goto_263
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2589
    const-string p1, "NetworkStackClient logs:"

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2590
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2591
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/net/NetworkStackClient;->dump(Ljava/io/PrintWriter;)V

    .line 2592
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2594
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2595
    const-string p1, "Permission Monitor:"

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2596
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2597
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-virtual {p1, v0}, Lcom/android/server/connectivity/PermissionMonitor;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2598
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2599
    return-void
.end method

.method private dumpAvoidBadWifiSettings(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7

    .line 3730
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {v0}, Landroid/net/util/MultinetworkPolicyTracker;->configRestrictsAvoidBadWifi()Z

    move-result v0

    .line 3731
    if-nez v0, :cond_e

    .line 3732
    const-string v0, "Bad Wi-Fi avoidance: unrestricted"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3733
    return-void

    .line 3736
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

    .line 3737
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3738
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Config restrict:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3740
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {v0}, Landroid/net/util/MultinetworkPolicyTracker;->getAvoidBadWifiSetting()Ljava/lang/String;

    move-result-object v0

    .line 3743
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 3744
    const-string v0, "get stuck"

    goto :goto_70

    .line 3745
    :cond_4e
    if-nez v0, :cond_54

    .line 3746
    const-string/jumbo v0, "prompt"

    goto :goto_70

    .line 3747
    :cond_54
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 3748
    const-string v0, "avoid"

    goto :goto_70

    .line 3750
    :cond_5f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (?)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3752
    :goto_70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User setting:      "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3753
    const-string v0, "Network overrides:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3754
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3755
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->networksSortedById()[Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_92
    if-ge v2, v1, :cond_a4

    aget-object v3, v0, v2

    .line 3756
    iget-boolean v4, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->avoidUnvalidated:Z

    if-eqz v4, :cond_a1

    .line 3757
    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3755
    :cond_a1
    add-int/lit8 v2, v2, 0x1

    goto :goto_92

    .line 3760
    :cond_a4
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3761
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3762
    return-void
.end method

.method private dumpNetworkDiagnostics(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 12

    .line 2443
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2445
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->networksSortedById()[Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_25

    aget-object v4, v1, v3

    .line 2447
    new-instance v5, Lcom/android/server/connectivity/NetworkDiagnostics;

    iget-object v6, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    new-instance v7, Landroid/net/LinkProperties;

    iget-object v4, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v7, v4}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    const-wide/16 v8, 0x1388

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/server/connectivity/NetworkDiagnostics;-><init>(Landroid/net/Network;Landroid/net/LinkProperties;J)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2445
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 2453
    :cond_25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkDiagnostics;

    .line 2454
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2455
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkDiagnostics;->waitForMeasurements()V

    .line 2456
    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/NetworkDiagnostics;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2457
    goto :goto_29

    .line 2458
    :cond_3f
    return-void
.end method

.method private dumpNetworkRequests(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 6

    .line 2625
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->requestsSortedById()[Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 2626
    invoke-virtual {v3}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2625
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 2628
    :cond_14
    return-void
.end method

.method private dumpNetworks(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 10

    .line 2602
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->networksSortedById()[Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_80

    aget-object v4, v0, v3

    .line 2603
    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2604
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2605
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 2607
    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->numForegroundNetworkRequests()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 2608
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

    .line 2609
    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->numBackgroundNetworkRequests()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 2610
    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 2605
    const-string v6, "Requests: REQUEST:%d LISTEN:%d BACKGROUND_REQUEST:%d total:%d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2611
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2612
    move v5, v2

    :goto_55
    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v6

    if-ge v5, v6, :cond_69

    .line 2613
    invoke-virtual {v4, v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkRequest;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2612
    add-int/lit8 v5, v5, 0x1

    goto :goto_55

    .line 2615
    :cond_69
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2616
    const-string v5, "Lingered:"

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2617
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2618
    invoke-virtual {v4, p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->dumpLingerTimers(Ljava/io/PrintWriter;)V

    .line 2619
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2620
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2602
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 2622
    :cond_80
    return-void
.end method

.method private static encodeBool(Z)I
    .registers 1

    .line 7229
    return p0
.end method

.method private enforceAccessPermission()V
    .registers 4

    .line 2074
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    return-void
.end method

.method private enforceActiveVpnOrNetworkStackPermission()Lcom/android/server/connectivity/Vpn;
    .registers 3

    .line 7308
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->checkNetworkStackPermission()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 7309
    const/4 v0, 0x0

    return-object v0

    .line 7311
    :cond_8
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 7312
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getVpnIfOwner()Lcom/android/server/connectivity/Vpn;

    move-result-object v1

    .line 7313
    if-eqz v1, :cond_13

    .line 7314
    monitor-exit v0

    return-object v1

    .line 7316
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_1c

    .line 7317
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "App must either be an active VPN or have the NETWORK_STACK permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7316
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

    .line 2061
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->checkAnyPermissionOf([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2065
    return-void

    .line 2062
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requires one of the following permissions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2063
    const-string v2, ", "

    invoke-static {v2, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceChangePermission()V
    .registers 2

    .line 2080
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->enforceChangePermission(Landroid/content/Context;)V

    .line 2081
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .registers 3

    .line 2109
    const-string v0, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v1, "android.permission.MAINLINE_NETWORK_STACK"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->enforceAnyPermissionOf([Ljava/lang/String;)V

    .line 2112
    return-void
.end method

.method private enforceConnectivityRestrictedNetworksPermission()V
    .registers 4

    .line 2142
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_USE_RESTRICTED_NETWORKS"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_9} :catch_a

    .line 2145
    return-void

    .line 2146
    :catch_a
    move-exception v0

    .line 2147
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 2148
    return-void
.end method

.method private enforceControlAlwaysOnVpnPermission()V
    .registers 4

    .line 2115
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONTROL_ALWAYS_ON_VPN"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2118
    return-void
.end method

.method private enforceCrossUserPermission(I)V
    .registers 4

    .line 2033
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 2035
    return-void

    .line 2037
    :cond_7
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v1, "ConnectivityService"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2040
    return-void
.end method

.method private enforceInternetPermission()V
    .registers 4

    .line 2068
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    return-void
.end method

.method private enforceKeepalivePermission()V
    .registers 4

    .line 2151
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.PACKET_KEEPALIVE_OFFLOAD"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2152
    return-void
.end method

.method private enforceMeteredApnPolicy(Landroid/net/NetworkCapabilities;)V
    .registers 5

    .line 5401
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5402
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->isSystem(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 5404
    return-void

    .line 5406
    :cond_b
    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 5408
    return-void

    .line 5410
    :cond_14
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerInternal;->isUidRestrictedOnMeteredNetworks(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 5412
    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 5414
    :cond_1f
    return-void
.end method

.method private enforceNetworkRequestPermissions(Landroid/net/NetworkCapabilities;)V
    .registers 3

    .line 5364
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-nez p1, :cond_c

    .line 5365
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityRestrictedNetworksPermission()V

    goto :goto_f

    .line 5367
    :cond_c
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 5369
    :goto_f
    return-void
.end method

.method private enforceNetworkStackSettingsOrSetup()V
    .registers 5

    .line 2121
    const-string v0, "android.permission.NETWORK_SETTINGS"

    const-string v1, "android.permission.NETWORK_SETUP_WIZARD"

    const-string v2, "android.permission.NETWORK_STACK"

    const-string v3, "android.permission.MAINLINE_NETWORK_STACK"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->enforceAnyPermissionOf([Ljava/lang/String;)V

    .line 2126
    return-void
.end method

.method private enforceSettingsPermission()V
    .registers 3

    .line 2084
    const-string v0, "android.permission.NETWORK_SETTINGS"

    const-string v1, "android.permission.MAINLINE_NETWORK_STACK"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->enforceAnyPermissionOf([Ljava/lang/String;)V

    .line 2087
    return-void
.end method

.method private enforceTetherAccessPermission()V
    .registers 4

    .line 2103
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2106
    return-void
.end method

.method private ensureNetworkRequestHasType(Landroid/net/NetworkRequest;)V
    .registers 3

    .line 5150
    iget-object p1, p1, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    sget-object v0, Landroid/net/NetworkRequest$Type;->NONE:Landroid/net/NetworkRequest$Type;

    if-eq p1, v0, :cond_7

    .line 5154
    return-void

    .line 5151
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "All NetworkRequests in ConnectivityService must have a type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ensureNetworkTransitionWakelock(Ljava/lang/String;)V
    .registers 5

    .line 4202
    monitor-enter p0

    .line 4203
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4204
    monitor-exit p0

    return-void

    .line 4206
    :cond_b
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4207
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/ConnectivityService;->mLastWakeLockAcquireTimestamp:J

    .line 4208
    iget v0, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockAcquisitions:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockAcquisitions:I

    .line 4209
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_44

    .line 4210
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mWakelockLogs:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACQUIRE for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 4211
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 4212
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget v1, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockTimeout:I

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4213
    return-void

    .line 4209
    :catchall_44
    move-exception p1

    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw p1
.end method

.method private ensureRequestableCapabilities(Landroid/net/NetworkCapabilities;)V
    .registers 5

    .line 5247
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->describeFirstNonRequestableCapability()Ljava/lang/String;

    move-result-object p1

    .line 5248
    if-nez p1, :cond_7

    .line 5251
    return-void

    .line 5249
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot request network with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureRunningOnConnectivityServiceThread()V
    .registers 4

    .line 5626
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-virtual {v0}, Lcom/android/server/ConnectivityService$InternalHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_11

    .line 5631
    return-void

    .line 5627
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not running on ConnectivityService thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5629
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
    .registers 5

    .line 5257
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-direct {p0, p2, p3}, Lcom/android/server/ConnectivityService;->checkSettingsPermission(II)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_15

    .line 5258
    :cond_d
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Insufficient permissions to request a specific SSID"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5261
    :cond_15
    :goto_15
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 5262
    invoke-direct {p0, p2, p3}, Lcom/android/server/ConnectivityService;->checkNetworkSignalStrengthWakeupPermission(II)Z

    move-result p1

    if-eqz p1, :cond_22

    goto :goto_2a

    .line 5263
    :cond_22
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Insufficient permissions to request a specific signal strength"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5266
    :cond_2a
    :goto_2a
    return-void
.end method

.method private ensureValidNetworkSpecifier(Landroid/net/NetworkCapabilities;)V
    .registers 3

    .line 5304
    if-nez p1, :cond_3

    .line 5305
    return-void

    .line 5307
    :cond_3
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object p1

    .line 5308
    if-nez p1, :cond_a

    .line 5309
    return-void

    .line 5311
    :cond_a
    invoke-static {p1}, Landroid/net/MatchAllNetworkSpecifier;->checkNotMatchAllNetworkSpecifier(Landroid/net/NetworkSpecifier;)V

    .line 5312
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/net/NetworkSpecifier;->assertValidFromUid(I)V

    .line 5313
    return-void
.end method

.method private static eventName(I)Ljava/lang/String;
    .registers 3

    .line 545
    sget-object v0, Lcom/android/server/ConnectivityService;->sMagicDecoderRing:Landroid/util/SparseArray;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V
    .registers 5

    .line 1314
    if-eqz p1, :cond_2e

    iget-object v0, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_2e

    iget-object v0, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    if-nez v0, :cond_b

    goto :goto_2e

    .line 1316
    :cond_b
    iget-object v0, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/ConnectivityService;->isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;IZ)Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 1317
    iget-object p2, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    sget-object p3, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0, v0}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    :cond_1b
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter p2

    .line 1320
    :try_start_1e
    iget-object p3, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    if-eqz p3, :cond_29

    .line 1321
    iget-object p3, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    iget-object p1, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p3, p1}, Lcom/android/server/net/LockdownVpnTracker;->augmentNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 1323
    :cond_29
    monitor-exit p2

    .line 1324
    return-void

    .line 1323
    :catchall_2b
    move-exception p1

    monitor-exit p2
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_2b

    throw p1

    .line 1314
    :cond_2e
    :goto_2e
    return-void
.end method

.method private findExistingNetworkRequestInfo(Landroid/app/PendingIntent;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .registers 5

    .line 3252
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 3253
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3254
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    .line 3255
    if-eqz v2, :cond_35

    .line 3256
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 3257
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    return-object p1

    .line 3259
    :cond_35
    goto :goto_e

    .line 3260
    :cond_36
    const/4 p1, 0x0

    return-object p1
.end method

.method private getActiveNetworkForUidInternal(IZ)Landroid/net/Network;
    .registers 6

    .line 1356
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1357
    nop

    .line 1358
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1359
    :try_start_8
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Vpn;

    .line 1362
    if-eqz v0, :cond_1d

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Vpn;->appliesToUid(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->getNetId()I

    move-result v0

    goto :goto_1e

    .line 1363
    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_4c

    .line 1365
    if-eqz v0, :cond_37

    .line 1366
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetId(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 1367
    if-eqz v0, :cond_37

    .line 1368
    nop

    .line 1369
    invoke-static {p1}, Lcom/android/server/ConnectivityService;->createDefaultNetworkCapabilitiesForUid(I)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 1370
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1371
    iget-object p1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    return-object p1

    .line 1375
    :cond_37
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 1376
    const/4 v1, 0x0

    if-eqz v0, :cond_47

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 1377
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/ConnectivityService;->isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;IZ)Z

    move-result p1

    if-eqz p1, :cond_47

    .line 1378
    move-object v0, v1

    .line 1380
    :cond_47
    if-eqz v0, :cond_4b

    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    :cond_4b
    return-object v1

    .line 1363
    :catchall_4c
    move-exception p1

    :try_start_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p1
.end method

.method private getAllVpnInfo()[Lcom/android/internal/net/VpnInfo;
    .registers 5

    .line 4551
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->ensureRunningOnConnectivityServiceThread()V

    .line 4552
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4553
    :try_start_6
    iget-boolean v1, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    .line 4554
    new-array v1, v2, [Lcom/android/internal/net/VpnInfo;

    monitor-exit v0

    return-object v1

    .line 4557
    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4558
    nop

    :goto_15
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_31

    .line 4559
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Vpn;

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->createVpnInfo(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnInfo;

    move-result-object v3

    .line 4560
    if-eqz v3, :cond_2e

    .line 4561
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4558
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 4564
    :cond_31
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/internal/net/VpnInfo;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/net/VpnInfo;

    monitor-exit v0

    return-object v1

    .line 4565
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_6 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method private getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;
    .registers 2

    .line 5617
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkForRequest(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultNetworks()[Landroid/net/Network;
    .registers 6

    .line 6990
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->ensureRunningOnConnectivityServiceThread()V

    .line 6991
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6992
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 6993
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

    .line 6994
    iget-boolean v4, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-eqz v4, :cond_33

    if-eq v3, v1, :cond_2e

    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 6995
    :cond_2e
    iget-object v3, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6997
    :cond_33
    goto :goto_16

    .line 6998
    :cond_34
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Network;

    return-object v0
.end method

.method private static getDnsResolver()Landroid/net/IDnsResolver;
    .registers 1

    .line 549
    nop

    .line 550
    const-string v0, "dnsresolver"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IDnsResolver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IDnsResolver;

    move-result-object v0

    .line 549
    return-object v0
.end method

.method private getFilteredNetworkState(II)Landroid/net/NetworkState;
    .registers 13

    .line 1180
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->isTypeSupported(I)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1181
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 1183
    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 1184
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getNetworkState()Landroid/net/NetworkState;

    move-result-object v0

    .line 1185
    iget-object v2, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, p1}, Landroid/net/NetworkInfo;->setType(I)V

    move-object p1, v0

    goto :goto_4e

    .line 1187
    :cond_1c
    new-instance v4, Landroid/net/NetworkInfo;

    .line 1188
    invoke-static {p1}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-direct {v4, p1, v1, v0, v2}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 1189
    sget-object p1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v0, 0x0

    invoke-virtual {v4, p1, v0, v0}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    const/4 p1, 0x1

    invoke-virtual {v4, p1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1191
    new-instance v6, Landroid/net/NetworkCapabilities;

    invoke-direct {v6}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 1192
    const/16 v0, 0x12

    .line 1193
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v2

    .line 1192
    xor-int/2addr p1, v2

    invoke-virtual {v6, v0, p1}, Landroid/net/NetworkCapabilities;->setCapability(IZ)Landroid/net/NetworkCapabilities;

    .line 1194
    new-instance p1, Landroid/net/NetworkState;

    new-instance v5, Landroid/net/LinkProperties;

    invoke-direct {v5}, Landroid/net/LinkProperties;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    :goto_4e
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/ConnectivityService;->filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V

    .line 1198
    return-object p1

    .line 1200
    :cond_52
    sget-object p1, Landroid/net/NetworkState;->EMPTY:Landroid/net/NetworkState;

    return-object p1
.end method

.method private getLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/LinkProperties;
    .registers 4

    .line 1567
    if-nez p1, :cond_4

    .line 1568
    const/4 p1, 0x0

    return-object p1

    .line 1570
    :cond_4
    monitor-enter p1

    .line 1571
    :try_start_5
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    monitor-exit p1

    return-object v0

    .line 1572
    :catchall_e
    move-exception v0

    monitor-exit p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v0
.end method

.method private getLinkPropertiesProxyInfo(Landroid/net/Network;)Landroid/net/ProxyInfo;
    .registers 4

    .line 4334
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object p1

    .line 4335
    const/4 v0, 0x0

    if-nez p1, :cond_8

    return-object v0

    .line 4336
    :cond_8
    monitor-enter p1

    .line 4337
    :try_start_9
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    .line 4338
    if-nez v1, :cond_12

    :goto_11
    goto :goto_18

    :cond_12
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-direct {v0, v1}, Landroid/net/ProxyInfo;-><init>(Landroid/net/ProxyInfo;)V

    goto :goto_11

    :goto_18
    monitor-exit p1

    return-object v0

    .line 4339
    :catchall_1a
    move-exception v0

    monitor-exit p1
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private getNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/Network;
    .registers 2

    .line 5622
    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    :goto_6
    return-object p1
.end method

.method private getNetworkAgentInfoForNetId(I)Lcom/android/server/connectivity/NetworkAgentInfo;
    .registers 4

    .line 1213
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1214
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/connectivity/NetworkAgentInfo;

    monitor-exit v0

    return-object p1

    .line 1215
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method private getNetworkCapabilitiesInternal(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/NetworkCapabilities;
    .registers 5

    .line 1576
    if-eqz p1, :cond_1c

    .line 1577
    monitor-enter p1

    .line 1578
    :try_start_3
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_17

    .line 1579
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1581
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1579
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ConnectivityService;->networkCapabilitiesRestrictedForCallerPermissions(Landroid/net/NetworkCapabilities;II)Landroid/net/NetworkCapabilities;

    move-result-object v0

    monitor-exit p1

    return-object v0

    .line 1583
    :cond_17
    monitor-exit p1

    goto :goto_1c

    :catchall_19
    move-exception v0

    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0

    .line 1585
    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method private getNetworkForRequest(I)Lcom/android/server/connectivity/NetworkAgentInfo;
    .registers 4

    .line 5599
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5600
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/connectivity/NetworkAgentInfo;

    monitor-exit v0

    return-object p1

    .line 5601
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method private getNetworkPermission(Landroid/net/NetworkCapabilities;)I
    .registers 3

    .line 5935
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 5936
    const/4 p1, 0x2

    return p1

    .line 5938
    :cond_a
    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-nez p1, :cond_14

    .line 5939
    const/4 p1, 0x1

    return p1

    .line 5941
    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method private getNriForAppRequest(Landroid/net/NetworkRequest;ILjava/lang/String;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .registers 6

    .line 3364
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 3366
    if-eqz p1, :cond_2d

    .line 3367
    const/16 v0, 0x3e8

    if-eq v0, p2, :cond_2d

    iget v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    if-eq v0, p2, :cond_2d

    .line 3368
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3369
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p1, v0, p2

    .line 3368
    const-string p1, "UID %d attempted to %s for unowned request %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3370
    const/4 p1, 0x0

    return-object p1

    .line 3374
    :cond_2d
    return-object p1
.end method

.method private getProvisioningUrlBaseFromFile()Ljava/lang/String;
    .registers 8

    .line 4859
    nop

    .line 4860
    nop

    .line 4861
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 4864
    const/4 v1, 0x0

    :try_start_d
    new-instance v2, Ljava/io/FileReader;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mProvisioningUrlFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_14} :catch_cc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_14} :catch_b0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_14} :catch_92
    .catchall {:try_start_d .. :try_end_14} :catchall_8f

    .line 4865
    :try_start_14
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 4866
    invoke-interface {v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 4867
    const-string/jumbo v4, "provisioningUrls"

    invoke-static {v3, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 4870
    :goto_21
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4872
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_28} :catch_8d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_28} :catch_8b
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_28} :catch_89
    .catchall {:try_start_14 .. :try_end_28} :catchall_d9

    .line 4873
    if-nez v4, :cond_33

    .line 4892
    nop

    .line 4900
    nop

    .line 4902
    :try_start_2c
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    .line 4903
    :goto_2f
    goto :goto_32

    :catch_30
    move-exception v0

    goto :goto_2f

    .line 4892
    :goto_32
    return-object v1

    .line 4875
    :cond_33
    :try_start_33
    const-string/jumbo v5, "provisioningUrl"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_88

    .line 4876
    const-string v4, "mcc"

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_42
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_42} :catch_8d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_33 .. :try_end_42} :catch_8b
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_42} :catch_89
    .catchall {:try_start_33 .. :try_end_42} :catchall_d9

    .line 4878
    if-eqz v4, :cond_88

    :try_start_44
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget v5, v0, Landroid/content/res/Configuration;->mcc:I

    if-ne v4, v5, :cond_88

    .line 4879
    const-string v4, "mnc"

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4880
    if-eqz v4, :cond_88

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget v5, v0, Landroid/content/res/Configuration;->mnc:I

    if-ne v4, v5, :cond_88

    .line 4881
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 4882
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_88

    .line 4883
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0
    :try_end_6a
    .catch Ljava/lang/NumberFormatException; {:try_start_44 .. :try_end_6a} :catch_72
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_6a} :catch_8d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_44 .. :try_end_6a} :catch_8b
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_6a} :catch_89
    .catchall {:try_start_44 .. :try_end_6a} :catchall_d9

    .line 4900
    nop

    .line 4902
    :try_start_6b
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6f

    .line 4903
    :goto_6e
    goto :goto_71

    :catch_6f
    move-exception v1

    goto :goto_6e

    .line 4883
    :goto_71
    return-object v0

    .line 4887
    :catch_72
    move-exception v4

    .line 4888
    :try_start_73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NumberFormatException in getProvisioningUrlBaseFromFile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_87
    .catch Ljava/io/FileNotFoundException; {:try_start_73 .. :try_end_87} :catch_8d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_73 .. :try_end_87} :catch_8b
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_87} :catch_89
    .catchall {:try_start_73 .. :try_end_87} :catchall_d9

    nop

    .line 4891
    :cond_88
    goto :goto_21

    .line 4897
    :catch_89
    move-exception v0

    goto :goto_94

    .line 4895
    :catch_8b
    move-exception v0

    goto :goto_b2

    .line 4893
    :catch_8d
    move-exception v0

    goto :goto_ce

    .line 4900
    :catchall_8f
    move-exception v0

    move-object v2, v1

    goto :goto_da

    .line 4897
    :catch_92
    move-exception v0

    move-object v2, v1

    .line 4898
    :goto_94
    :try_start_94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "I/O exception reading Carrier Provisioning Urls file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_a8
    .catchall {:try_start_94 .. :try_end_a8} :catchall_d9

    .line 4900
    if-eqz v2, :cond_d8

    .line 4902
    :try_start_aa
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_ae

    goto :goto_d8

    .line 4903
    :catch_ae
    move-exception v0

    goto :goto_d8

    .line 4895
    :catch_b0
    move-exception v0

    move-object v2, v1

    .line 4896
    :goto_b2
    :try_start_b2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Xml parser exception reading Carrier Provisioning Urls file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_c6
    .catchall {:try_start_b2 .. :try_end_c6} :catchall_d9

    .line 4900
    if-eqz v2, :cond_d8

    .line 4902
    :try_start_c8
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cb} :catch_ae

    goto :goto_d8

    .line 4893
    :catch_cc
    move-exception v0

    move-object v2, v1

    .line 4894
    :goto_ce
    :try_start_ce
    const-string v0, "Carrier Provisioning Urls file not found"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_d3
    .catchall {:try_start_ce .. :try_end_d3} :catchall_d9

    .line 4900
    if-eqz v2, :cond_d8

    .line 4902
    :try_start_d5
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_ae

    .line 4906
    :cond_d8
    :goto_d8
    return-object v1

    .line 4900
    :catchall_d9
    move-exception v0

    :goto_da
    if-eqz v2, :cond_e2

    .line 4902
    :try_start_dc
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_df} :catch_e0

    .line 4903
    :goto_df
    goto :goto_e2

    :catch_e0
    move-exception v1

    goto :goto_df

    :cond_e2
    :goto_e2
    throw v0
.end method

.method private getSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;)Ljava/util/ArrayList;
    .registers 6
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

    .line 5269
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 5270
    monitor-enter p1

    .line 5271
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

    .line 5272
    iget-object v3, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v3, v3, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v3

    if-eqz v3, :cond_3d

    iget-object v3, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 5273
    invoke-virtual {p1, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfiesImmutableCapabilitiesOf(Landroid/net/NetworkRequest;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 5274
    iget-object v2, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v2, v2, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 5276
    :cond_3d
    goto :goto_10

    .line 5277
    :cond_3e
    monitor-exit p1
    :try_end_3f
    .catchall {:try_start_6 .. :try_end_3f} :catchall_45

    .line 5278
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 5277
    :catchall_45
    move-exception v0

    :try_start_46
    monitor-exit p1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v0
.end method

.method private getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;
    .registers 3

    .line 1232
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 1234
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getVpnUnderlyingNetworks(I)[Landroid/net/Network;

    move-result-object p1

    .line 1235
    if-eqz p1, :cond_16

    .line 1241
    array-length v0, p1

    if-lez v0, :cond_15

    .line 1242
    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    goto :goto_16

    .line 1244
    :cond_15
    const/4 v0, 0x0

    .line 1248
    :cond_16
    :goto_16
    if-eqz v0, :cond_1d

    .line 1249
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getNetworkState()Landroid/net/NetworkState;

    move-result-object p1

    return-object p1

    .line 1251
    :cond_1d
    sget-object p1, Landroid/net/NetworkState;->EMPTY:Landroid/net/NetworkState;

    return-object p1
.end method

.method private getVpnIfOwner()Lcom/android/server/connectivity/Vpn;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mVpns"
        }
    .end annotation

    .line 7291
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 7292
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 7294
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 7295
    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 7296
    return-object v2

    .line 7298
    :cond_14
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getVpnInfo()Lcom/android/internal/net/VpnInfo;

    move-result-object v3

    .line 7299
    if-eqz v3, :cond_1e

    iget v3, v3, Lcom/android/internal/net/VpnInfo;->ownerUid:I

    if-eq v3, v0, :cond_1f

    :cond_1e
    move-object v1, v2

    :cond_1f
    return-object v1
.end method

.method private getVpnUnderlyingNetworks(I)[Landroid/net/Network;
    .registers 5

    .line 1219
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1220
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    if-nez v1, :cond_21

    .line 1221
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1222
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 1223
    if-eqz v1, :cond_21

    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/Vpn;->appliesToUid(I)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 1224
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getUnderlyingNetworks()[Landroid/net/Network;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 1227
    :cond_21
    monitor-exit v0

    .line 1228
    const/4 p1, 0x0

    return-object p1

    .line 1227
    :catchall_24
    move-exception p1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p1
.end method

.method private handleAlwaysOnNetworkRequest(Landroid/net/NetworkRequest;Ljava/lang/String;Z)V
    .registers 5

    .line 1113
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 1114
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p3}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result p3

    .line 1113
    invoke-static {v0, p2, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Lcom/android/server/ConnectivityService;->toBool(I)Z

    move-result p2

    .line 1115
    iget-object p3, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1d

    const/4 p3, 0x1

    goto :goto_1e

    :cond_1d
    move p3, v0

    .line 1116
    :goto_1e
    if-ne p2, p3, :cond_21

    .line 1117
    return-void

    .line 1120
    :cond_21
    if-eqz p2, :cond_32

    .line 1121
    new-instance p2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    const/4 p3, 0x0

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    invoke-direct {p2, p0, p3, p1, v0}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;)V

    invoke-direct {p0, p2}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    goto :goto_37

    .line 1124
    :cond_32
    const/16 p2, 0x3e8

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;IZ)V

    .line 1127
    :goto_37
    return-void
.end method

.method private handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V
    .registers 4

    .line 4355
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 4356
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4357
    const/4 p1, 0x0

    .line 4359
    :cond_19
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mProxyTracker:Lcom/android/server/connectivity/ProxyTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/ProxyTracker;->setDefaultProxy(Landroid/net/ProxyInfo;)V

    .line 4360
    return-void
.end method

.method private handleAsyncChannelDisconnected(Landroid/os/Message;)V
    .registers 4

    .line 3125
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3126
    if-eqz v0, :cond_10

    .line 3127
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->disconnectAndDestroyNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_33

    .line 3129
    :cond_10
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    .line 3130
    if-eqz p1, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterNetworkFactory for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3132
    :cond_33
    :goto_33
    return-void
.end method

.method private handleAsyncChannelHalfConnect(Landroid/os/Message;)V
    .registers 7

    .line 3072
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/util/AsyncChannel;

    .line 3073
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x11001

    if-eqz v1, :cond_76

    .line 3074
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_69

    .line 3075
    sget-boolean v1, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v1, :cond_1e

    const-string v1, "NetworkFactory connected"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3077
    :cond_1e
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    iget-object p1, p1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 3080
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 3081
    iget-object v2, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v2}, Landroid/net/NetworkRequest;->isListen()Z

    move-result v2

    if-eqz v2, :cond_4c

    goto :goto_37

    .line 3082
    :cond_4c
    iget-object v2, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v2, v2, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->getNetworkForRequest(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    .line 3085
    if-eqz v2, :cond_5d

    .line 3086
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v3

    .line 3087
    iget v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->factorySerialNumber:I

    goto :goto_5f

    .line 3089
    :cond_5d
    const/4 v3, 0x0

    .line 3090
    const/4 v2, -0x1

    .line 3092
    :goto_5f
    const v4, 0x83000

    iget-object v1, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v4, v3, v2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 3094
    goto :goto_37

    :cond_68
    goto :goto_d1

    .line 3096
    :cond_69
    const-string v0, "Error connecting NetworkFactory"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 3097
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d1

    .line 3099
    :cond_76
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 3100
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_9d

    .line 3101
    sget-boolean v0, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v0, :cond_8d

    const-string v0, "NetworkAgent connected"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3103
    :cond_8d
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object p1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 3104
    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_d1

    .line 3106
    :cond_9d
    const-string v0, "Error connecting NetworkAgent"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 3107
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3108
    if-eqz p1, :cond_d1

    .line 3109
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    .line 3110
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v1

    .line 3111
    :try_start_b5
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v3, Landroid/net/Network;->netId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 3112
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v3, Landroid/net/Network;->netId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 3113
    monitor-exit v1
    :try_end_c8
    .catchall {:try_start_b5 .. :try_end_c8} :catchall_ce

    .line 3115
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    goto :goto_d1

    .line 3113
    :catchall_ce
    move-exception p1

    :try_start_cf
    monitor-exit v1
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_ce

    throw p1

    .line 3119
    :cond_d1
    :goto_d1
    return-void
.end method

.method private handleConfigureAlwaysOnNetworks()V
    .registers 4

    .line 1130
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultMobileDataRequest:Landroid/net/NetworkRequest;

    const-string v1, "mobile_data_always_on"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ConnectivityService;->handleAlwaysOnNetworkRequest(Landroid/net/NetworkRequest;Ljava/lang/String;Z)V

    .line 1132
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultWifiRequest:Landroid/net/NetworkRequest;

    const-string/jumbo v1, "wifi_always_requested"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ConnectivityService;->handleAlwaysOnNetworkRequest(Landroid/net/NetworkRequest;Ljava/lang/String;Z)V

    .line 1134
    return-void
.end method

.method private handleFreshlyValidatedNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 4

    .line 2979
    if-nez p1, :cond_3

    return-void

    .line 2982
    :cond_3
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    invoke-virtual {v0}, Lcom/android/server/connectivity/DnsManager;->getPrivateDnsConfig()Landroid/net/shared/PrivateDnsConfig;

    move-result-object v0

    .line 2983
    iget-boolean v1, v0, Landroid/net/shared/PrivateDnsConfig;->useTls:Z

    if-eqz v1, :cond_1f

    iget-object v0, v0, Landroid/net/shared/PrivateDnsConfig;->hostname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2984
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    const/4 v1, 0x0

    iget-object p1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget p1, p1, Landroid/net/Network;->netId:I

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/ConnectivityService;->updateDnses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)V

    .line 2986
    :cond_1f
    return-void
.end method

.method private handleLingerComplete(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 4

    .line 6311
    if-nez p1, :cond_8

    .line 6312
    const-string p1, "Unknown NetworkAgentInfo in handleLingerComplete"

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 6313
    return-void

    .line 6315
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

    .line 6319
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->clearLingerState()V

    .line 6321
    sget-object v0, Lcom/android/server/ConnectivityService$UnneededFor;->TEARDOWN:Lcom/android/server/ConnectivityService$UnneededFor;

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$UnneededFor;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 6323
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_38

    .line 6326
    :cond_2f
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v0

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/ConnectivityService;->updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 6329
    :goto_38
    return-void
.end method

.method private handleNat64PrefixEvent(IZLjava/lang/String;I)V
    .registers 9

    .line 3031
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3032
    if-nez v0, :cond_b

    return-void

    .line 3034
    :cond_b
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3035
    if-eqz p2, :cond_14

    const-string v3, "added"

    goto :goto_17

    :cond_14
    const-string/jumbo v3, "removed"

    :goto_17
    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    aput-object p3, v1, p1

    const/4 p1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    .line 3034
    const-string p1, "NAT64 prefix %s on netId %d: %s/%d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3037
    const/4 p1, 0x0

    .line 3038
    if-eqz p2, :cond_5e

    .line 3040
    :try_start_36
    new-instance p1, Landroid/net/IpPrefix;

    invoke-static {p3}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p2

    invoke-direct {p1, p2, p4}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V
    :try_end_3f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36 .. :try_end_3f} :catch_40

    .line 3045
    goto :goto_5e

    .line 3042
    :catch_40
    move-exception p1

    .line 3043
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid NAT64 prefix "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 3044
    return-void

    .line 3048
    :cond_5e
    :goto_5e
    iget-object p2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {p2, p1}, Lcom/android/server/connectivity/Nat464Xlat;->setNat64Prefix(Landroid/net/IpPrefix;)V

    .line 3049
    new-instance p1, Landroid/net/LinkProperties;

    iget-object p2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {p1, p2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {p0, v0, p1}, Lcom/android/server/ConnectivityService;->handleUpdateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    .line 3050
    return-void
.end method

.method private handleNetworkUnvalidated(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 5

    .line 3862
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 3863
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

    .line 3865
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 3866
    return-void

    .line 3869
    :cond_2a
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {v0}, Landroid/net/util/MultinetworkPolicyTracker;->shouldNotifyWifiUnvalidated()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 3870
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOST_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->showNetworkNotification(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    .line 3872
    :cond_37
    return-void
.end method

.method private handlePerNetworkPrivateDnsConfig(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/shared/PrivateDnsConfig;)V
    .registers 5

    .line 3002
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->networkRequiresPrivateDnsValidation(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 3007
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor()Landroid/net/NetworkMonitorManager;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/shared/PrivateDnsConfig;->toParcel()Landroid/net/PrivateDnsConfigParcel;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkMonitorManager;->notifyPrivateDnsChanged(Landroid/net/PrivateDnsConfigParcel;)Z

    .line 3012
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->updatePrivateDns(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/shared/PrivateDnsConfig;)V

    .line 3013
    return-void
.end method

.method private handlePrivateDnsSettingsChanged()V
    .registers 6

    .line 2989
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    invoke-virtual {v0}, Lcom/android/server/connectivity/DnsManager;->getPrivateDnsConfig()Landroid/net/shared/PrivateDnsConfig;

    move-result-object v0

    .line 2991
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

    .line 2992
    invoke-direct {p0, v2, v0}, Lcom/android/server/ConnectivityService;->handlePerNetworkPrivateDnsConfig(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/shared/PrivateDnsConfig;)V

    .line 2993
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->networkRequiresPrivateDnsValidation(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 2994
    new-instance v3, Landroid/net/LinkProperties;

    iget-object v4, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v3, v4}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/server/ConnectivityService;->handleUpdateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    .line 2996
    :cond_2f
    goto :goto_10

    .line 2997
    :cond_30
    return-void
.end method

.method private handlePrivateDnsValidationUpdate(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V
    .registers 4

    .line 3021
    iget v0, p1, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;->netId:I

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetId(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 3022
    if-nez v0, :cond_9

    .line 3023
    return-void

    .line 3025
    :cond_9
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/DnsManager;->updatePrivateDnsValidation(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V

    .line 3026
    new-instance p1, Landroid/net/LinkProperties;

    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {p1, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {p0, v0, p1}, Lcom/android/server/ConnectivityService;->handleUpdateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    .line 3027
    return-void
.end method

.method private handlePromptUnvalidated(Landroid/net/Network;)V
    .registers 4

    .line 3838
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

    .line 3839
    :cond_1c
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object p1

    .line 3841
    if-eqz p1, :cond_41

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->shouldPromptUnvalidated(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    if-nez v0, :cond_29

    goto :goto_41

    .line 3849
    :cond_29
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x8100f

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 3854
    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->partialConnectivity:Z

    if-eqz v0, :cond_3b

    .line 3855
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->PARTIAL_CONNECTIVITY:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->showNetworkNotification(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    goto :goto_40

    .line 3857
    :cond_3b
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NO_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->showNetworkNotification(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    .line 3859
    :goto_40
    return-void

    .line 3842
    :cond_41
    :goto_41
    return-void
.end method

.method private handleRegisterNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/INetworkMonitor;)V
    .registers 6

    .line 5708
    invoke-virtual {p1, p2}, Lcom/android/server/connectivity/NetworkAgentInfo;->onNetworkMonitorCreated(Landroid/net/INetworkMonitor;)V

    .line 5709
    sget-boolean v0, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v0, :cond_c

    const-string v0, "Got NetworkAgent Messenger"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5710
    :cond_c
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5711
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5712
    :try_start_16
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5713
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_41

    .line 5716
    :try_start_20
    invoke-interface {p2}, Landroid/net/INetworkMonitor;->start()V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_24

    .line 5719
    goto :goto_28

    .line 5717
    :catch_24
    move-exception p2

    .line 5718
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 5720
    :goto_28
    iget-object p2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 5721
    iget-object p2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 5722
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 5723
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->updateNetworkInfo(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V

    .line 5724
    iget-object p2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/ConnectivityService;->updateUids(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)V

    .line 5725
    return-void

    .line 5713
    :catchall_41
    move-exception p1

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p1
.end method

.method private handleRegisterNetworkFactory(Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V
    .registers 5

    .line 5540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got NetworkFactory Messenger for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5541
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5542
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    iget-object p1, p1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 5543
    return-void
.end method

.method private handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .registers 6

    .line 3280
    iget v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->isUidIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3281
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->addDetachedRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .line 3282
    return-void

    .line 3284
    :cond_c
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3285
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REGISTER "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 3286
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0}, Landroid/net/NetworkRequest;->isListen()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 3287
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3288
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v2, v2, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v2

    if-eqz v2, :cond_60

    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 3289
    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfiesImmutableCapabilitiesOf(Landroid/net/NetworkRequest;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 3290
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    const-string v3, "REGISTER"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/ConnectivityService;->updateSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;Landroid/net/NetworkRequest;)V

    .line 3292
    :cond_60
    goto :goto_3b

    .line 3294
    :cond_61
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 3295
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0}, Landroid/net/NetworkRequest;->isRequest()Z

    move-result v0

    if-eqz v0, :cond_7d

    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkForRequest(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    if-nez v0, :cond_7d

    .line 3296
    iget-object p1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, p1, v1}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3298
    :cond_7d
    return-void
.end method

.method private handleRegisterNetworkRequestWithIntent(Landroid/os/Message;)V
    .registers 5

    .line 3264
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 3266
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->findExistingNetworkRequestInfo(Landroid/app/PendingIntent;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    move-result-object v0

    .line 3267
    if-eqz v0, :cond_3c

    .line 3268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Replacing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " because their intents matched."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3270
    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;IZ)V

    goto :goto_45

    .line 3274
    :cond_3c
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->removeDetachedNetworkRequests(Landroid/app/PendingIntent;I)Z

    .line 3276
    :goto_45
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .line 3277
    return-void
.end method

.method private handleReleaseNetworkRequest(Landroid/net/NetworkRequest;IZ)V
    .registers 6

    .line 3393
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->removeDetachedNetworkRequests(Landroid/net/NetworkRequest;I)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 3395
    sget-boolean p3, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez p3, :cond_e

    sget-boolean p3, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz p3, :cond_2d

    .line 3396
    :cond_e
    sget-object p3, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removed detached request = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " uid = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3398
    :cond_2d
    return-void

    .line 3401
    :cond_2e
    nop

    .line 3402
    const-string/jumbo v0, "release NetworkRequest"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/ConnectivityService;->getNriForAppRequest(Landroid/net/NetworkRequest;ILjava/lang/String;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    move-result-object p1

    .line 3403
    if-nez p1, :cond_39

    .line 3404
    return-void

    .line 3406
    :cond_39
    sget-boolean p2, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez p2, :cond_45

    iget-object p2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p2}, Landroid/net/NetworkRequest;->isRequest()Z

    move-result p2

    if-eqz p2, :cond_61

    .line 3407
    :cond_45
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "releasing "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " (release request)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3409
    :cond_61
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRemoveNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .line 3410
    if-eqz p3, :cond_6e

    .line 3411
    const/4 p2, 0x0

    const p3, 0x80005

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 3413
    :cond_6e
    return-void
.end method

.method private handleReleaseNetworkRequestWithIntent(Landroid/app/PendingIntent;I)V
    .registers 4

    .line 3302
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->removeDetachedNetworkRequests(Landroid/app/PendingIntent;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3304
    return-void

    .line 3306
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->findExistingNetworkRequestInfo(Landroid/app/PendingIntent;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    move-result-object p1

    .line 3307
    if-eqz p1, :cond_13

    .line 3308
    iget-object p1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;IZ)V

    .line 3310
    :cond_13
    return-void
.end method

.method private handleReleaseNetworkTransitionWakelock(I)V
    .registers 9

    .line 4233
    invoke-static {p1}, Lcom/android/server/ConnectivityService;->eventName(I)Ljava/lang/String;

    move-result-object p1

    .line 4234
    monitor-enter p0

    .line 4235
    :try_start_5
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_27

    .line 4236
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mWakelockLogs:Landroid/util/LocalLog;

    const-string v3, "RELEASE: already released (%s)"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 4237
    sget-object p1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const-string v0, "expected Net Transition WakeLock to be held"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4238
    monitor-exit p0

    return-void

    .line 4240
    :cond_27
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4241
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/ConnectivityService;->mLastWakeLockAcquireTimestamp:J

    sub-long/2addr v3, v5

    .line 4242
    iget-wide v5, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockDurationMs:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockDurationMs:J

    .line 4243
    iget-wide v5, p0, Lcom/android/server/ConnectivityService;->mMaxWakelockDurationMs:J

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/ConnectivityService;->mMaxWakelockDurationMs:J

    .line 4244
    iget v0, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockReleases:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockReleases:I

    .line 4245
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_56

    .line 4246
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mWakelockLogs:Landroid/util/LocalLog;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "RELEASE (%s)"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 4247
    return-void

    .line 4245
    :catchall_56
    move-exception p1

    :try_start_57
    monitor-exit p0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw p1
.end method

.method private handleRemoveNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .registers 9

    .line 3416
    invoke-virtual {p1}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->unlinkDeathRecipient()V

    .line 3417
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3419
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 3420
    :try_start_d
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    iget v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 3421
    const/4 v2, 0x1

    if-ge v1, v2, :cond_3a

    .line 3422
    sget-object v4, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BUG: too small request count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for UID "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 3424
    :cond_3a
    if-ne v1, v2, :cond_4a

    .line 3425
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    iget v5, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    .line 3426
    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    .line 3425
    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->removeAt(I)V

    goto :goto_52

    .line 3428
    :cond_4a
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    iget v5, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    sub-int/2addr v1, v2

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 3430
    :goto_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_d .. :try_end_53} :catchall_198

    .line 3432
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RELEASE "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 3433
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0}, Landroid/net/NetworkRequest;->isRequest()Z

    move-result v0

    if-eqz v0, :cond_160

    .line 3434
    nop

    .line 3435
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkForRequest(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 3436
    if-eqz v0, :cond_104

    .line 3437
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->isBackgroundNetwork()Z

    move-result v1

    .line 3438
    iget-object v4, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v4, v4, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v0, v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->removeRequest(I)V

    .line 3439
    sget-boolean v4, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v4, :cond_8f

    sget-boolean v4, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v4, :cond_b8

    .line 3440
    :cond_8f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Removing from current network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", leaving "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3441
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " requests."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3440
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3445
    :cond_b8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct {p0, v0, v4, v5}, Lcom/android/server/ConnectivityService;->updateLingerState(Lcom/android/server/connectivity/NetworkAgentInfo;J)V

    .line 3446
    sget-object v4, Lcom/android/server/ConnectivityService$UnneededFor;->TEARDOWN:Lcom/android/server/ConnectivityService$UnneededFor;

    invoke-direct {p0, v0, v4}, Lcom/android/server/ConnectivityService;->unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$UnneededFor;)Z

    move-result v4

    if-eqz v4, :cond_ea

    .line 3447
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no live requests for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; disconnecting"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3448
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    move v4, v3

    goto :goto_eb

    .line 3450
    :cond_ea
    move v4, v2

    .line 3452
    :goto_eb
    iget-object v5, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v5, v5, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityService;->clearNetworkForRequest(I)V

    .line 3453
    if-nez v1, :cond_105

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->isBackgroundNetwork()Z

    move-result v1

    if-eqz v1, :cond_105

    .line 3455
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v1

    iget-object v5, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v1, v0, v5}, Lcom/android/server/ConnectivityService;->updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    goto :goto_105

    .line 3436
    :cond_104
    move v4, v3

    .line 3464
    :cond_105
    :goto_105
    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v1, v1, Landroid/net/NetworkRequest;->legacyType:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_13e

    if-eqz v0, :cond_13e

    .line 3465
    nop

    .line 3466
    if-eqz v4, :cond_133

    .line 3469
    move v1, v3

    :goto_112
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v4

    if-ge v1, v4, :cond_133

    .line 3470
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v4

    .line 3471
    iget v5, v4, Landroid/net/NetworkRequest;->legacyType:I

    iget-object v6, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v6, v6, Landroid/net/NetworkRequest;->legacyType:I

    if-ne v5, v6, :cond_130

    .line 3472
    invoke-virtual {v4}, Landroid/net/NetworkRequest;->isRequest()Z

    move-result v4

    if-eqz v4, :cond_130

    .line 3473
    const-string v2, " still have other legacy request - leaving"

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3474
    move v2, v3

    .line 3469
    :cond_130
    add-int/lit8 v1, v1, 0x1

    goto :goto_112

    .line 3479
    :cond_133
    if-eqz v2, :cond_13e

    .line 3480
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v2, v2, Landroid/net/NetworkRequest;->legacyType:I

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(ILcom/android/server/connectivity/NetworkAgentInfo;Z)V

    .line 3484
    :cond_13e
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_148
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    .line 3485
    iget-object v1, v1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x83001

    iget-object v3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 3487
    goto :goto_148

    .line 3488
    :cond_15f
    goto :goto_197

    .line 3491
    :cond_160
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_197

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3492
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v2, v2, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->removeRequest(I)V

    .line 3493
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v2, v2, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v2

    if-eqz v2, :cond_196

    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 3494
    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfiesImmutableCapabilitiesOf(Landroid/net/NetworkRequest;)Z

    move-result v2

    if-eqz v2, :cond_196

    .line 3495
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    const-string v3, "RELEASE"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/ConnectivityService;->updateSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;Landroid/net/NetworkRequest;)V

    .line 3497
    :cond_196
    goto :goto_16a

    .line 3499
    :cond_197
    :goto_197
    return-void

    .line 3430
    :catchall_198
    move-exception p1

    :try_start_199
    monitor-exit v0
    :try_end_19a
    .catchall {:try_start_199 .. :try_end_19a} :catchall_198

    throw p1
.end method

.method private handleReportNetworkConnectivity(Landroid/net/Network;IZ)V
    .registers 7

    .line 4270
    if-nez p1, :cond_7

    .line 4271
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object p1

    goto :goto_b

    .line 4273
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object p1

    .line 4275
    :goto_b
    if-eqz p1, :cond_69

    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_69

    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 4276
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_22

    goto :goto_69

    .line 4280
    :cond_22
    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-ne p3, v0, :cond_27

    .line 4281
    return-void

    .line 4284
    :cond_27
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v0, v0, Landroid/net/Network;->netId:I

    .line 4285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportNetworkConnectivity("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ") by "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4289
    iget-boolean p3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-nez p3, :cond_55

    .line 4290
    return-void

    .line 4292
    :cond_55
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/LinkProperties;

    move-result-object p3

    .line 4293
    const/4 v0, 0x0

    invoke-direct {p0, p3, p2, v0}, Lcom/android/server/ConnectivityService;->isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;IZ)Z

    move-result p3

    if-eqz p3, :cond_61

    .line 4294
    return-void

    .line 4296
    :cond_61
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor()Landroid/net/NetworkMonitorManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/NetworkMonitorManager;->forceReevaluation(I)Z

    .line 4297
    return-void

    .line 4277
    :cond_69
    :goto_69
    return-void
.end method

.method private handleSetAcceptPartialConnectivity(Landroid/net/Network;ZZ)V
    .registers 6

    .line 3568
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

    .line 3572
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object p1

    .line 3573
    if-nez p1, :cond_2b

    .line 3575
    return-void

    .line 3578
    :cond_2b
    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eqz v0, :cond_30

    .line 3580
    return-void

    .line 3583
    :cond_30
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v0, v0, Landroid/net/NetworkMisc;->acceptPartialConnectivity:Z

    if-eq p2, v0, :cond_3a

    .line 3584
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iput-boolean p2, v0, Landroid/net/NetworkMisc;->acceptPartialConnectivity:Z

    .line 3588
    :cond_3a
    if-eqz p3, :cond_48

    .line 3589
    iget-object p3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v0, 0x81009

    .line 3590
    invoke-static {p2}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result v1

    .line 3589
    invoke-virtual {p3, v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 3593
    :cond_48
    if-nez p2, :cond_56

    .line 3595
    iget-object p2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const p3, 0x8100f

    invoke-virtual {p2, p3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 3597
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_5d

    .line 3605
    :cond_56
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor()Landroid/net/NetworkMonitorManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkMonitorManager;->setAcceptPartialConnectivity()Z

    .line 3607
    :goto_5d
    return-void
.end method

.method private handleSetAcceptUnvalidated(Landroid/net/Network;ZZ)V
    .registers 6

    .line 3522
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

    .line 3525
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object p1

    .line 3526
    if-nez p1, :cond_2b

    .line 3528
    return-void

    .line 3531
    :cond_2b
    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    if-eqz v0, :cond_30

    .line 3533
    return-void

    .line 3536
    :cond_30
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v0, v0, Landroid/net/NetworkMisc;->explicitlySelected:Z

    if-nez v0, :cond_3d

    .line 3537
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const-string v1, "BUG: setAcceptUnvalidated non non-explicitly selected network"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3540
    :cond_3d
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v0, v0, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    if-eq p2, v0, :cond_55

    .line 3541
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v0

    .line 3542
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iput-boolean p2, v1, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    .line 3546
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iput-boolean p2, v1, Landroid/net/NetworkMisc;->acceptPartialConnectivity:Z

    .line 3547
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 3548
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3551
    :cond_55
    if-eqz p3, :cond_63

    .line 3552
    iget-object p3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v0, 0x81009

    .line 3553
    invoke-static {p2}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result v1

    .line 3552
    invoke-virtual {p3, v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 3556
    :cond_63
    if-nez p2, :cond_70

    .line 3558
    iget-object p2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const p3, 0x8100f

    invoke-virtual {p2, p3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 3560
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3563
    :cond_70
    return-void
.end method

.method private handleSetAvoidUnvalidated(Landroid/net/Network;)V
    .registers 4

    .line 3610
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object p1

    .line 3611
    if-eqz p1, :cond_1d

    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eqz v0, :cond_b

    goto :goto_1d

    .line 3615
    :cond_b
    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->avoidUnvalidated:Z

    if-nez v0, :cond_1c

    .line 3616
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v0

    .line 3617
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->avoidUnvalidated:Z

    .line 3618
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 3619
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3621
    :cond_1c
    return-void

    .line 3613
    :cond_1d
    :goto_1d
    return-void
.end method

.method private handleTimedOutNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .registers 5

    .line 3378
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    .line 3379
    return-void

    .line 3381
    :cond_b
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkForRequest(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 3382
    return-void

    .line 3384
    :cond_16
    sget-boolean v0, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v0, :cond_22

    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0}, Landroid/net/NetworkRequest;->isRequest()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 3385
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

    .line 3387
    :cond_3e
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRemoveNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .line 3388
    const/4 v0, 0x0

    const v1, 0x80005

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 3389
    return-void
.end method

.method private handleUnregisterNetworkFactory(Landroid/os/Messenger;)V
    .registers 4

    .line 5552
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    .line 5553
    if-nez p1, :cond_10

    .line 5554
    const-string p1, "Failed to find Messenger in unregisterNetworkFactory"

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 5555
    return-void

    .line 5557
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterNetworkFactory for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5558
    return-void
.end method

.method private hasWifiNetworkListenPermission(Landroid/net/NetworkCapabilities;)Z
    .registers 6

    .line 5456
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 5457
    return v0

    .line 5459
    :cond_4
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object p1

    .line 5460
    array-length v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    aget p1, p1, v0

    if-eq p1, v2, :cond_11

    goto :goto_1e

    .line 5464
    :cond_11
    :try_start_11
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v3, "ConnectivityService"

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_1a} :catch_1c

    .line 5469
    nop

    .line 5470
    return v2

    .line 5467
    :catch_1c
    move-exception p1

    .line 5468
    return v0

    .line 5461
    :cond_1e
    :goto_1e
    return v0
.end method

.method private isDefaultRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)Z
    .registers 3

    .line 5639
    iget-object p1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget p1, p1, Landroid/net/NetworkRequest;->requestId:I

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    if-ne p1, v0, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method private isLiveNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;I)Z
    .registers 6

    .line 2651
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2652
    :cond_6
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 2653
    if-eqz v0, :cond_16

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 p1, 0x1

    return p1

    .line 2654
    :cond_16
    if-nez v0, :cond_1c

    sget-boolean v2, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v2, :cond_3f

    .line 2655
    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/android/server/ConnectivityService;->eventName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " - isLiveNetworkAgent found mismatched netId: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " - "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2658
    :cond_3f
    return v1
.end method

.method private isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;IZ)Z
    .registers 7

    .line 1261
    invoke-direct {p0, p2}, Lcom/android/server/ConnectivityService;->isUidIsolated(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1262
    return v1

    .line 1265
    :cond_8
    if-eqz p3, :cond_c

    .line 1266
    const/4 p1, 0x0

    return p1

    .line 1268
    :cond_c
    iget-object p3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter p3

    .line 1269
    :try_start_f
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Vpn;

    .line 1270
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->getLockdown()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {v0, p2}, Lcom/android/server/connectivity/Vpn;->isBlockingUid(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1271
    monitor-exit p3

    return v1

    .line 1273
    :cond_2b
    monitor-exit p3
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_3c

    .line 1274
    if-nez p1, :cond_31

    const-string p1, ""

    goto :goto_35

    :cond_31
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p1

    .line 1275
    :goto_35
    iget-object p3, p0, Lcom/android/server/ConnectivityService;->mPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-virtual {p3, p2, p1}, Lcom/android/server/net/NetworkPolicyManagerInternal;->isUidNetworkingBlocked(ILjava/lang/String;)Z

    move-result p1

    return p1

    .line 1273
    :catchall_3c
    move-exception p1

    :try_start_3d
    monitor-exit p3
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p1
.end method

.method private isSystem(I)Z
    .registers 3

    .line 5397
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method private isTetheringSupported()Z
    .registers 7

    .line 4132
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

    .line 4133
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "tether_supported"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->toBool(I)Z

    move-result v0

    .line 4135
    const/4 v2, 0x0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    .line 4136
    const-string/jumbo v3, "no_config_tethering"

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v1

    goto :goto_38

    :cond_37
    move v0, v2

    .line 4139
    :goto_38
    nop

    .line 4140
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 4142
    :try_start_3d
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v5
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_56

    .line 4144
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4145
    nop

    .line 4147
    if-eqz v0, :cond_54

    if-eqz v5, :cond_54

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->hasTetherableConfiguration()Z

    move-result v0

    if-eqz v0, :cond_54

    goto :goto_55

    :cond_54
    move v1, v2

    :goto_55
    return v1

    .line 4144
    :catchall_56
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private isUidIsolated(I)Z
    .registers 4

    .line 1907
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mIsolatedUids:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 1908
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mIsolatedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 1909
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method private isUidNetworkingWithVpnBlocked(IIZZ)Z
    .registers 8

    .line 2010
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2011
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 2017
    if-eqz v1, :cond_20

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getLockdown()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/Vpn;->isBlockingUid(I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2018
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 2020
    :cond_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_28

    .line 2022
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/net/NetworkPolicyManagerInternal;->isUidNetworkingBlocked(IIZZ)Z

    move-result p1

    return p1

    .line 2020
    :catchall_28
    move-exception p1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method static synthetic lambda$networksSortedById$1(Lcom/android/server/connectivity/NetworkAgentInfo;)I
    .registers 1

    .line 2636
    iget-object p0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget p0, p0, Landroid/net/Network;->netId:I

    return p0
.end method

.method static synthetic lambda$requestsSortedById$2(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)I
    .registers 1

    .line 2646
    iget-object p0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget p0, p0, Landroid/net/NetworkRequest;->requestId:I

    return p0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    .line 4410
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4411
    return-void
.end method

.method private logNetworkEvent(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .registers 6

    .line 7220
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v0

    .line 7221
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    iget-object p1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget p1, p1, Landroid/net/Network;->netId:I

    new-instance v2, Landroid/net/metrics/NetworkEvent;

    invoke-direct {v2, p2}, Landroid/net/metrics/NetworkEvent;-><init>(I)V

    invoke-virtual {v1, p1, v0, v2}, Landroid/net/metrics/IpConnectivityLog;->log(I[ILandroid/net/metrics/IpConnectivityLog$Event;)Z

    .line 7222
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 2

    .line 4414
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4415
    return-void
.end method

.method private static loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 4418
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4419
    return-void
.end method

.method private makeDefault(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 5

    .line 6332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Switching to new default network: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6335
    :try_start_14
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->setDefaultNetId(I)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1d} :catch_1e

    .line 6338
    goto :goto_33

    .line 6336
    :catch_1e
    move-exception v0

    .line 6337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception setting default network :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 6340
    :goto_33
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6341
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V

    .line 6342
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getTcpBufferSizes()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->updateTcpBufferSizes(Ljava/lang/String;)V

    .line 6343
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    iget-object p1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/DnsManager;->setDefaultDnsSystemProperties(Ljava/util/Collection;)V

    .line 6344
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChangedForNetworkStats()V

    .line 6346
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->updateAllVpnsCapabilities()V

    .line 6347
    return-void
.end method

.method private makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    .line 2165
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2166
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    if-eqz v1, :cond_12

    .line 2167
    new-instance v1, Landroid/net/NetworkInfo;

    invoke-direct {v1, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 2168
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {p1, v1}, Lcom/android/server/net/LockdownVpnTracker;->augmentNetworkInfo(Landroid/net/NetworkInfo;)V

    move-object p1, v1

    .line 2170
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_65

    .line 2172
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2173
    new-instance p2, Landroid/net/NetworkInfo;

    invoke-direct {p2, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    const-string/jumbo v1, "networkInfo"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2174
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p2

    const-string/jumbo v1, "networkType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2175
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result p2

    if-eqz p2, :cond_3d

    .line 2176
    const/4 p2, 0x1

    const-string v1, "isFailover"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2177
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 2179
    :cond_3d
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4d

    .line 2180
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2182
    :cond_4d
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5d

    .line 2183
    nop

    .line 2184
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p1

    .line 2183
    const-string p2, "extraInfo"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2186
    :cond_5d
    iget p1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    const-string p2, "inetCondition"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2187
    return-object v0

    .line 2170
    :catchall_65
    move-exception p1

    :try_start_66
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw p1
.end method

.method private maybeLogBlockedNetworkInfo(Landroid/net/NetworkInfo;I)V
    .registers 8

    .line 1279
    if-eqz p1, :cond_6b

    .line 1283
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mBlockedAppUids:Ljava/util/HashSet;

    monitor-enter v0

    .line 1284
    :try_start_5
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1d

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mBlockedAppUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1285
    move p1, v4

    goto :goto_30

    .line 1286
    :cond_1d
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_66

    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mBlockedAppUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_66

    .line 1287
    move p1, v3

    .line 1291
    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_68

    .line 1292
    if-eqz p1, :cond_36

    const-string p1, "BLOCKED"

    goto :goto_38

    :cond_36
    const-string p1, "UNBLOCKED"

    .line 1293
    :goto_38
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "Returning %s NetworkInfo to uid=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1294
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkInfoBlockingLogs:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1295
    return-void

    .line 1289
    :cond_66
    :try_start_66
    monitor-exit v0

    return-void

    .line 1291
    :catchall_68
    move-exception p1

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_66 .. :try_end_6a} :catchall_68

    throw p1

    .line 1280
    :cond_6b
    return-void
.end method

.method private maybeLogBlockedStatusChanged(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Landroid/net/Network;Z)V
    .registers 7

    .line 1299
    if-eqz p1, :cond_57

    if-eqz p2, :cond_57

    .line 1302
    if-eqz p3, :cond_9

    const-string v0, "BLOCKED"

    goto :goto_b

    :cond_9
    const-string v0, "UNBLOCKED"

    .line 1303
    :goto_b
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, v1, v2

    const/4 p3, 0x1

    iget v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    .line 1304
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p3

    const/4 p3, 0x2

    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v2, v2, Landroid/net/NetworkRequest;->requestId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p3

    const/4 p3, 0x3

    iget p2, p2, Landroid/net/Network;->netId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p3

    .line 1303
    const-string p2, "Blocked status changed to %s for %d(%d) on netId %d"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1305
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mNetworkInfoBlockingLogs:Landroid/util/LocalLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1306
    return-void

    .line 1300
    :cond_57
    return-void
.end method

.method private maybeNotifyNetworkBlocked(Lcom/android/server/connectivity/NetworkAgentInfo;ZZZZ)V
    .registers 12

    .line 6859
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v1

    if-ge v0, v1, :cond_3d

    .line 6860
    invoke-virtual {p1, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v1

    .line 6861
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 6862
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    iget v3, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 6866
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v3

    .line 6867
    :try_start_1e
    iget v4, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    invoke-direct {p0, v4, v2, p2, p4}, Lcom/android/server/ConnectivityService;->isUidNetworkingWithVpnBlocked(IIZZ)Z

    move-result v4

    .line 6869
    iget v5, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    invoke-direct {p0, v5, v2, p3, p5}, Lcom/android/server/ConnectivityService;->isUidNetworkingWithVpnBlocked(IIZZ)Z

    move-result v2

    .line 6871
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_3a

    .line 6872
    if-eq v4, v2, :cond_37

    .line 6873
    const v3, 0x8000b

    .line 6874
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result v2

    .line 6873
    invoke-direct {p0, v1, p1, v3, v2}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 6859
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6871
    :catchall_3a
    move-exception p1

    :try_start_3b
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw p1

    .line 6877
    :cond_3d
    return-void
.end method

.method private maybeNotifyNetworkBlockedForNewUidRules(II)V
    .registers 9

    .line 6885
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

    .line 6886
    iget-object v2, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->isMetered()Z

    move-result v2

    .line 6892
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v3

    .line 6893
    :try_start_1f
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    .line 6894
    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    iget-boolean v5, p0, Lcom/android/server/ConnectivityService;->mRestrictBackground:Z

    .line 6893
    invoke-direct {p0, p1, v4, v2, v5}, Lcom/android/server/ConnectivityService;->isUidNetworkingWithVpnBlocked(IIZZ)Z

    move-result v4

    .line 6895
    iget-boolean v5, p0, Lcom/android/server/ConnectivityService;->mRestrictBackground:Z

    invoke-direct {p0, p1, p2, v2, v5}, Lcom/android/server/ConnectivityService;->isUidNetworkingWithVpnBlocked(IIZZ)Z

    move-result v2

    .line 6897
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_5c

    .line 6898
    if-ne v4, v2, :cond_35

    .line 6899
    goto :goto_a

    .line 6901
    :cond_35
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result v2

    .line 6902
    const/4 v3, 0x0

    :goto_3a
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v4

    if-ge v3, v4, :cond_5b

    .line 6903
    invoke-virtual {v1, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v4

    .line 6904
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 6905
    if-eqz v4, :cond_58

    iget v5, v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    if-ne v5, p1, :cond_58

    .line 6906
    const v5, 0x8000b

    invoke-direct {p0, v4, v1, v5, v2}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 6902
    :cond_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 6909
    :cond_5b
    goto :goto_a

    .line 6897
    :catchall_5c
    move-exception p1

    :try_start_5d
    monitor-exit v3
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw p1

    .line 6910
    :cond_5f
    return-void
.end method

.method private mixInCapabilities(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;
    .registers 7

    .line 5955
    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-eqz v0, :cond_3c

    .line 5956
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 5957
    invoke-virtual {v0, p2}, Landroid/net/NetworkCapabilities;->satisfiedByImmutableNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 5961
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p2}, Landroid/net/NetworkCapabilities;->describeImmutableDifferences(Landroid/net/NetworkCapabilities;)Ljava/lang/String;

    move-result-object v0

    .line 5962
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 5963
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

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5968
    :cond_3c
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p2}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 5969
    iget-boolean p2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    const/16 v1, 0x10

    if-eqz p2, :cond_4b

    .line 5970
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_4e

    .line 5972
    :cond_4b
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 5974
    :goto_4e
    iget-boolean p2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    const/16 v1, 0x11

    if-eqz p2, :cond_58

    .line 5975
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_5b

    .line 5977
    :cond_58
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 5979
    :goto_5b
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isBackgroundNetwork()Z

    move-result p2

    const/16 v1, 0x13

    if-eqz p2, :cond_67

    .line 5980
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_6a

    .line 5982
    :cond_67
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 5984
    :goto_6a
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSuspended()Z

    move-result p2

    const/16 v1, 0x15

    if-eqz p2, :cond_76

    .line 5985
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_79

    .line 5987
    :cond_76
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 5989
    :goto_79
    iget-boolean p1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->partialConnectivity:Z

    const/16 p2, 0x18

    if-eqz p1, :cond_83

    .line 5990
    invoke-virtual {v0, p2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_86

    .line 5992
    :cond_83
    invoke-virtual {v0, p2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 5995
    :goto_86
    return-object v0
.end method

.method private networkCapabilitiesRestrictedForCallerPermissions(Landroid/net/NetworkCapabilities;II)Landroid/net/NetworkCapabilities;
    .registers 5

    .line 1596
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 1597
    invoke-direct {p0, p2, p3}, Lcom/android/server/ConnectivityService;->checkSettingsPermission(II)Z

    move-result p1

    if-nez p1, :cond_12

    .line 1598
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    .line 1599
    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setSSID(Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    .line 1601
    :cond_12
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 1602
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkSpecifier;->redact()Landroid/net/NetworkSpecifier;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    .line 1604
    :cond_23
    return-object v0
.end method

.method private networkRequiresPrivateDnsValidation(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .registers 2

    .line 2975
    iget-object p1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {p1}, Landroid/net/shared/NetworkMonitorUtils;->isPrivateDnsValidationRequired(Landroid/net/NetworkCapabilities;)Z

    move-result p1

    return p1
.end method

.method private networksSortedById()[Lcom/android/server/connectivity/NetworkAgentInfo;
    .registers 3

    .line 2634
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2635
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2636
    sget-object v1, Lcom/android/server/-$$Lambda$ConnectivityService$_NU7EIcPVS-uF_gWH_NWN_gBL4w;->INSTANCE:Lcom/android/server/-$$Lambda$ConnectivityService$_NU7EIcPVS-uF_gWH_NWN_gBL4w;

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2637
    return-object v0
.end method

.method private declared-synchronized nextNetworkRequestId()I
    .registers 3

    monitor-enter p0

    .line 1160
    :try_start_1
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNextNetworkRequestId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/ConnectivityService;->mNextNetworkRequestId:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private notifyIfacesChangedForNetworkStats()V
    .registers 5

    .line 7006
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->ensureRunningOnConnectivityServiceThread()V

    .line 7007
    nop

    .line 7008
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    .line 7009
    if-eqz v0, :cond_f

    .line 7010
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 7009
    :cond_f
    const/4 v0, 0x0

    .line 7018
    :goto_10
    :try_start_10
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mStatsService:Landroid/net/INetworkStatsService;

    .line 7019
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetworks()[Landroid/net/Network;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getAllNetworkState()[Landroid/net/NetworkState;

    move-result-object v3

    .line 7018
    invoke-interface {v1, v2, v3, v0}, Landroid/net/INetworkStatsService;->forceUpdateIfaces([Landroid/net/Network;[Landroid/net/NetworkState;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1d} :catch_1e

    .line 7021
    goto :goto_1f

    .line 7020
    :catch_1e
    move-exception v0

    .line 7022
    :goto_1f
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getAllVpnInfo()[Lcom/android/internal/net/VpnInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsFactory;->updateVpnInfos([Lcom/android/internal/net/VpnInfo;)V

    .line 7023
    return-void
.end method

.method private notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 4

    .line 6698
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 6699
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    if-eqz v1, :cond_1c

    .line 6700
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 6701
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    iget-object p1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, p1}, Lcom/android/server/net/LockdownVpnTracker;->onVpnStateChanged(Landroid/net/NetworkInfo;)V

    goto :goto_1c

    .line 6703
    :cond_17
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {p1}, Lcom/android/server/net/LockdownVpnTracker;->onNetworkInfoChanged()V

    .line 6706
    :cond_1c
    :goto_1c
    monitor-exit v0

    .line 6707
    return-void

    .line 6706
    :catchall_1e
    move-exception p1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method private onPackageAdded(Ljava/lang/String;I)V
    .registers 6

    .line 5022
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    if-gez p2, :cond_9

    goto :goto_f

    .line 5026
    :cond_9
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/connectivity/PermissionMonitor;->onPackageAdded(Ljava/lang/String;I)V

    .line 5027
    return-void

    .line 5023
    :cond_f
    :goto_f
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid package in onPackageAdded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " | "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5024
    return-void
.end method

.method private onPackageRemoved(Ljava/lang/String;IZ)V
    .registers 8

    .line 5050
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_55

    if-gez p2, :cond_9

    goto :goto_55

    .line 5054
    :cond_9
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-virtual {v0, p2}, Lcom/android/server/connectivity/PermissionMonitor;->onPackageRemoved(I)V

    .line 5056
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 5057
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5058
    :try_start_15
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 5059
    if-nez v1, :cond_21

    .line 5060
    monitor-exit v0

    return-void

    .line 5063
    :cond_21
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_50

    if-nez p3, :cond_50

    .line 5064
    sget-object p3, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing always-on VPN package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for user "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5066
    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-virtual {v1, p2, p1, p2}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;ZLjava/util/List;)Z

    .line 5068
    :cond_50
    monitor-exit v0

    .line 5069
    return-void

    .line 5068
    :catchall_52
    move-exception p1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_15 .. :try_end_54} :catchall_52

    throw p1

    .line 5051
    :cond_55
    :goto_55
    sget-object p3, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid package in onPackageRemoved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " | "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5052
    return-void
.end method

.method private onPackageReplaced(Ljava/lang/String;I)V
    .registers 8

    .line 5030
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    if-gez p2, :cond_9

    goto :goto_4c

    .line 5034
    :cond_9
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 5035
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5036
    :try_start_10
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 5037
    if-nez v1, :cond_1c

    .line 5038
    monitor-exit v0

    return-void

    .line 5041
    :cond_1c
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 5042
    sget-object v2, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restarting always-on VPN package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for user "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5044
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->startAlwaysOnVpn()Z

    .line 5046
    :cond_47
    monitor-exit v0

    .line 5047
    return-void

    .line 5046
    :catchall_49
    move-exception p1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_10 .. :try_end_4b} :catchall_49

    throw p1

    .line 5031
    :cond_4c
    :goto_4c
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid package in onPackageReplaced: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " | "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5032
    return-void
.end method

.method private onUserAdded(I)V
    .registers 8

    .line 4994
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/PermissionMonitor;->onUserAdded(I)V

    .line 4995
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/Network;

    move-result-object v0

    .line 4996
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 4997
    :try_start_10
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 4998
    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_2e

    .line 4999
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/Vpn;

    .line 5000
    invoke-virtual {v4, p1}, Lcom/android/server/connectivity/Vpn;->onUserAdded(I)V

    .line 5001
    invoke-virtual {v4, v0}, Lcom/android/server/connectivity/Vpn;->updateCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v5

    .line 5002
    invoke-direct {p0, v4, v5}, Lcom/android/server/ConnectivityService;->updateVpnCapabilities(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkCapabilities;)V

    .line 4998
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 5004
    :cond_2e
    monitor-exit v1

    .line 5005
    return-void

    .line 5004
    :catchall_30
    move-exception p1

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_10 .. :try_end_32} :catchall_30

    throw p1
.end method

.method private onUserRemoved(I)V
    .registers 8

    .line 5008
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/PermissionMonitor;->onUserRemoved(I)V

    .line 5009
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/Network;

    move-result-object v0

    .line 5010
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 5011
    :try_start_10
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 5012
    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_2e

    .line 5013
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/Vpn;

    .line 5014
    invoke-virtual {v4, p1}, Lcom/android/server/connectivity/Vpn;->onUserRemoved(I)V

    .line 5015
    invoke-virtual {v4, v0}, Lcom/android/server/connectivity/Vpn;->updateCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v5

    .line 5016
    invoke-direct {p0, v4, v5}, Lcom/android/server/ConnectivityService;->updateVpnCapabilities(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkCapabilities;)V

    .line 5012
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 5018
    :cond_2e
    monitor-exit v1

    .line 5019
    return-void

    .line 5018
    :catchall_30
    move-exception p1

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_10 .. :try_end_32} :catchall_30

    throw p1
.end method

.method private onUserStart(I)V
    .registers 7

    .line 4967
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4968
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 4969
    if-eqz v1, :cond_14

    .line 4970
    const-string p1, "Starting user already has a VPN"

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 4971
    monitor-exit v0

    return-void

    .line 4973
    :cond_14
    new-instance v1, Lcom/android/server/connectivity/Vpn;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-virtual {v2}, Lcom/android/server/ConnectivityService$InternalHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/android/server/connectivity/Vpn;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;I)V

    .line 4974
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4975
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result p1

    if-eqz p1, :cond_3d

    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 4976
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->updateLockdownVpn()Z

    .line 4978
    :cond_3d
    monitor-exit v0

    .line 4979
    return-void

    .line 4978
    :catchall_3f
    move-exception p1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw p1
.end method

.method private onUserStop(I)V
    .registers 4

    .line 4982
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4983
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 4984
    if-nez v1, :cond_14

    .line 4985
    const-string p1, "Stopped user has no VPN"

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 4986
    monitor-exit v0

    return-void

    .line 4988
    :cond_14
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->onUserStopped()V

    .line 4989
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 4990
    monitor-exit v0

    .line 4991
    return-void

    .line 4990
    :catchall_1e
    move-exception p1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method private onUserUnlocked(I)V
    .registers 4

    .line 5072
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5074
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

    .line 5075
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->updateLockdownVpn()Z

    goto :goto_1c

    .line 5077
    :cond_19
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->startAlwaysOnVpn(I)Z

    .line 5079
    :goto_1c
    monitor-exit v0

    .line 5080
    return-void

    .line 5079
    :catchall_1e
    move-exception p1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method private processListenRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V
    .registers 7

    .line 6351
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

    .line 6352
    iget-object v2, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 6353
    invoke-virtual {v2}, Landroid/net/NetworkRequest;->isListen()Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_a

    .line 6354
    :cond_1f
    iget v3, v2, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {p1, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSatisfyingRequest(I)Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-virtual {p1, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfies(Landroid/net/NetworkRequest;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 6355
    iget-object v2, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v2, v2, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {p1, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->removeRequest(I)V

    .line 6356
    const v2, 0x80004

    const/4 v3, 0x0

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 6358
    :cond_3b
    goto :goto_a

    .line 6360
    :cond_3c
    if-eqz p2, :cond_44

    .line 6361
    const p2, 0x80006

    invoke-virtual {p0, p1, p2}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 6364
    :cond_44
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 6365
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 6366
    invoke-virtual {v1}, Landroid/net/NetworkRequest;->isListen()Z

    move-result v2

    if-nez v2, :cond_63

    goto :goto_4e

    .line 6367
    :cond_63
    invoke-virtual {p1, v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfies(Landroid/net/NetworkRequest;)Z

    move-result v2

    if-eqz v2, :cond_77

    iget v2, v1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {p1, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSatisfyingRequest(I)Z

    move-result v2

    if-nez v2, :cond_77

    .line 6368
    invoke-virtual {p1, v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->addRequest(Landroid/net/NetworkRequest;)Z

    .line 6369
    invoke-virtual {p0, p1, v0}, Lcom/android/server/ConnectivityService;->notifyNetworkAvailable(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .line 6371
    :cond_77
    goto :goto_4e

    .line 6372
    :cond_78
    return-void
.end method

.method private static putParcelable(Landroid/os/Bundle;Landroid/os/Parcelable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Bundle;",
            "TT;)V"
        }
    .end annotation

    .line 6294
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6295
    return-void
.end method

.method private reattachNetworkRequestsForUid(I)V
    .registers 6

    .line 1981
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1982
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDetachedRequests:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 1983
    if-eqz v2, :cond_24

    iget v3, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    if-ne v3, p1, :cond_24

    .line 1984
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1986
    :cond_24
    goto :goto_f

    .line 1987
    :cond_25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 1988
    sget-boolean v1, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v1, :cond_3d

    sget-boolean v1, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v1, :cond_54

    .line 1989
    :cond_3d
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reattaching request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    :cond_54
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDetachedRequests:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1992
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .line 1993
    goto :goto_29

    .line 1994
    :cond_5f
    return-void
.end method

.method private registerPrivateDnsSettingsCallbacks()V
    .registers 7

    .line 1154
    invoke-static {}, Lcom/android/server/connectivity/DnsManager;->getPrivateDnsSettingsUris()[Landroid/net/Uri;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 1155
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    const/16 v5, 0x25

    invoke-virtual {v4, v3, v5}, Lcom/android/server/ConnectivityService$SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 1154
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1157
    :cond_14
    return-void
.end method

.method private registerSettingsCallbacks()V
    .registers 4

    .line 1138
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    .line 1139
    const-string v1, "http_proxy"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1138
    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 1143
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    .line 1144
    const-string v1, "mobile_data_always_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1143
    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 1148
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    .line 1149
    const-string/jumbo v1, "wifi_always_requested"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1148
    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 1151
    return-void
.end method

.method private releasePendingNetworkRequestWithDelay(Landroid/app/PendingIntent;)V
    .registers 6

    .line 5439
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 5441
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v1

    .line 5440
    const/16 v2, 0x1b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget v1, p0, Lcom/android/server/ConnectivityService;->mReleasePendingIntentDelayMs:I

    int-to-long v1, v1

    .line 5439
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5442
    return-void
.end method

.method private rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .registers 8

    .line 6660
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 6661
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v2

    if-ge p2, v2, :cond_12

    .line 6662
    sget-object p2, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/ConnectivityService;->rematchNetworkAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;J)V

    goto :goto_42

    .line 6664
    :cond_12
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    .line 6665
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    new-array p2, p2, [Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 6664
    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 6669
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 6670
    array-length p2, p1

    const/4 v2, 0x0

    :goto_2b
    if-ge v2, p2, :cond_42

    aget-object v3, p1, v2

    .line 6671
    nop

    .line 6675
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    aget-object v4, p1, v4

    if-eq v3, v4, :cond_3a

    sget-object v4, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->DONT_REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    goto :goto_3c

    .line 6676
    :cond_3a
    sget-object v4, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    .line 6671
    :goto_3c
    invoke-direct {p0, v3, v4, v0, v1}, Lcom/android/server/ConnectivityService;->rematchNetworkAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;J)V

    .line 6670
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 6680
    :cond_42
    :goto_42
    return-void
.end method

.method private rematchForAvoidBadWifiUpdate()V
    .registers 5

    .line 3719
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 3720
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

    .line 3721
    iget-object v2, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 3722
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3724
    :cond_27
    goto :goto_f

    .line 3725
    :cond_28
    return-void
.end method

.method private rematchNetworkAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;J)V
    .registers 27

    .line 6403
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v9, p3

    iget-boolean v0, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-nez v0, :cond_b

    return-void

    .line 6404
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v0

    .line 6405
    nop

    .line 6406
    nop

    .line 6408
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isBackgroundNetwork()Z

    move-result v11

    .line 6409
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v12

    .line 6411
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

    .line 6415
    :cond_3a
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 6416
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 6417
    iget-object v15, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 6418
    sget-boolean v3, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v3, :cond_5e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " network has: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6419
    :cond_5e
    iget-object v3, v1, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move v3, v0

    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_6b
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_288

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 6424
    iget-object v5, v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v5}, Landroid/net/NetworkRequest;->isListen()Z

    move-result v5

    if-eqz v5, :cond_80

    goto :goto_6b

    .line 6426
    :cond_80
    iget-object v5, v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v5, v5, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {v1, v5}, Lcom/android/server/ConnectivityService;->getNetworkForRequest(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v5

    .line 6427
    iget-object v7, v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v2, v7}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfies(Landroid/net/NetworkRequest;)Z

    move-result v7

    .line 6428
    const-string v8, "Network "

    if-ne v2, v5, :cond_c2

    if-eqz v7, :cond_c2

    .line 6429
    sget-boolean v3, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v3, :cond_bf

    .line 6430
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " was already satisfying request "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v4, v4, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". No change."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6433
    :cond_bf
    nop

    .line 6434
    const/4 v3, 0x1

    goto :goto_6b

    .line 6438
    :cond_c2
    sget-boolean v18, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v18, :cond_e1

    move-object/from16 v18, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v3

    const-string v3, "  checking if request is satisfied: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_e5

    :cond_e1
    move/from16 v19, v3

    move-object/from16 v18, v6

    .line 6439
    :goto_e5
    if-eqz v7, :cond_1fc

    .line 6442
    sget-boolean v3, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v3, :cond_ef

    sget-boolean v3, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v3, :cond_113

    .line 6443
    :cond_ef
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentScore = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6444
    if-eqz v5, :cond_100

    invoke-virtual {v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v6

    goto :goto_101

    :cond_100
    const/4 v6, 0x0

    :goto_101
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", newScore = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6443
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6447
    :cond_113
    if-eqz v5, :cond_128

    invoke-virtual {v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v3

    if-ge v3, v12, :cond_11c

    goto :goto_128

    :cond_11c
    move/from16 v20, v11

    move/from16 v21, v12

    move-object/from16 v17, v15

    move-object/from16 v12, v18

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto/16 :goto_27b

    .line 6448
    :cond_128
    :goto_128
    sget-boolean v3, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v3, :cond_145

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rematch for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6449
    :cond_145
    if-eqz v5, :cond_18a

    .line 6450
    sget-boolean v3, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v3, :cond_14f

    sget-boolean v3, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v3, :cond_167

    .line 6451
    :cond_14f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   accepting network in place of "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6453
    :cond_167
    iget-object v3, v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v3, v3, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v5, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->removeRequest(I)V

    .line 6454
    iget-object v6, v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v3, v1, Lcom/android/server/ConnectivityService;->mLingerDelayMs:I

    int-to-long v7, v3

    move-object v3, v5

    move/from16 v20, v11

    move-object v11, v4

    move-object v4, v6

    move/from16 v21, v12

    move-object/from16 v17, v15

    move-object/from16 v12, v18

    const/4 v9, 0x0

    move-object v15, v5

    move-wide/from16 v5, p3

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/connectivity/NetworkAgentInfo;->lingerRequest(Landroid/net/NetworkRequest;JJ)V

    .line 6455
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a3

    .line 6457
    :cond_18a
    move/from16 v20, v11

    move/from16 v21, v12

    move-object/from16 v17, v15

    move-object/from16 v12, v18

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v11, v4

    move-object v15, v5

    sget-boolean v3, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v3, :cond_19e

    sget-boolean v3, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v3, :cond_1a3

    :cond_19e
    const-string v3, "   accepting network in place of null"

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6459
    :cond_1a3
    :goto_1a3
    iget-object v3, v11, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->unlingerRequest(Landroid/net/NetworkRequest;)Z

    .line 6460
    iget-object v3, v11, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v3, v3, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {v1, v3, v2}, Lcom/android/server/ConnectivityService;->setNetworkForRequest(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6461
    iget-object v3, v11, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->addRequest(Landroid/net/NetworkRequest;)Z

    move-result v3

    if-nez v3, :cond_1db

    .line 6462
    sget-object v3, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BUG: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " already has "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v11, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 6464
    :cond_1db
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6465
    nop

    .line 6471
    iget-object v3, v11, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {v1, v3, v2}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6472
    invoke-direct {v1, v11}, Lcom/android/server/ConnectivityService;->isDefaultRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)Z

    move-result v3

    if-eqz v3, :cond_1f8

    .line 6473
    nop

    .line 6474
    nop

    .line 6475
    if-eqz v15, :cond_1f3

    .line 6476
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mLingerMonitor:Lcom/android/server/connectivity/LingerMonitor;

    invoke-virtual {v0, v15, v2}, Lcom/android/server/connectivity/LingerMonitor;->noteLingerDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6510
    :cond_1f3
    move-object v6, v15

    const/4 v0, 0x1

    const/4 v3, 0x1

    goto/16 :goto_27e

    .line 6472
    :cond_1f8
    move-object v6, v12

    const/4 v3, 0x1

    goto/16 :goto_27e

    .line 6480
    :cond_1fc
    move/from16 v20, v11

    move/from16 v21, v12

    move-object/from16 v17, v15

    move-object/from16 v12, v18

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v11, v4

    move-object v15, v5

    iget-object v3, v11, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v3, v3, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSatisfyingRequest(I)Z

    move-result v3

    if-eqz v3, :cond_27b

    .line 6489
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " stopped satisfying request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v11, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v4, v4, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6492
    iget-object v3, v11, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v3, v3, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->removeRequest(I)V

    .line 6493
    if-ne v15, v2, :cond_24a

    .line 6494
    iget-object v3, v11, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v3, v3, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {v1, v3}, Lcom/android/server/ConnectivityService;->clearNetworkForRequest(I)V

    .line 6495
    iget-object v3, v11, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {v1, v3, v10}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_275

    .line 6497
    :cond_24a
    sget-object v3, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BUG: Removing request "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v11, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v5, v5, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6498
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " without updating mNetworkForRequestId or factories!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6497
    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 6508
    :goto_275
    const v3, 0x80004

    invoke-direct {v1, v11, v2, v3, v9}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 6510
    :cond_27b
    :goto_27b
    move-object v6, v12

    move/from16 v3, v19

    :goto_27e
    move-wide/from16 v9, p3

    move-object/from16 v15, v17

    move/from16 v11, v20

    move/from16 v12, v21

    goto/16 :goto_6b

    .line 6511
    :cond_288
    move/from16 v19, v3

    move/from16 v20, v11

    move/from16 v21, v12

    move-object/from16 v17, v15

    const/4 v9, 0x0

    move-object v12, v6

    if-eqz v0, :cond_2ab

    .line 6512
    invoke-direct {v1, v2, v12}, Lcom/android/server/ConnectivityService;->updateDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6514
    invoke-direct/range {p0 .. p1}, Lcom/android/server/ConnectivityService;->makeDefault(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6516
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->metricsLogger()Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;->defaultNetworkMetrics()Lcom/android/server/connectivity/DefaultNetworkMetrics;

    move-result-object v3

    move-wide/from16 v4, p3

    invoke-virtual {v3, v4, v5, v2, v12}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->logDefaultNetworkEvent(JLcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6519
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->scheduleReleaseNetworkTransitionWakelock()V

    goto :goto_2ad

    .line 6511
    :cond_2ab
    move-wide/from16 v4, p3

    .line 6522
    :goto_2ad
    iget-object v3, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    move-object/from16 v6, v17

    invoke-virtual {v3, v6}, Landroid/net/NetworkCapabilities;->equalRequestableCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v3

    const/4 v7, 0x2

    const/4 v8, 0x3

    if-nez v3, :cond_2d4

    .line 6523
    sget-object v3, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-array v10, v8, [Ljava/lang/Object;

    .line 6525
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v9

    const/4 v11, 0x1

    aput-object v6, v10, v11

    iget-object v6, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    aput-object v6, v10, v7

    .line 6523
    const-string v6, "BUG: %s changed requestable capabilities during rematch: %s -> %s"

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d5

    .line 6522
    :cond_2d4
    const/4 v11, 0x1

    .line 6527
    :goto_2d5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v3

    move/from16 v6, v21

    if-eq v3, v6, :cond_300

    .line 6528
    sget-object v3, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-array v8, v8, [Ljava/lang/Object;

    .line 6530
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v7

    .line 6528
    const-string v7, "BUG: %s changed score during rematch: %d -> %d"

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 6534
    :cond_300
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isBackgroundNetwork()Z

    move-result v3

    move/from16 v7, v20

    if-eq v7, v3, :cond_30e

    .line 6539
    iget-object v3, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v1, v6, v2, v3}, Lcom/android/server/ConnectivityService;->updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    goto :goto_311

    .line 6541
    :cond_30e
    invoke-direct {v1, v2, v9}, Lcom/android/server/ConnectivityService;->processListenRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    .line 6546
    :goto_311
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_315
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_325

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-virtual {v1, v2, v6}, Lcom/android/server/ConnectivityService;->notifyNetworkAvailable(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    goto :goto_315

    .line 6550
    :cond_325
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_329
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_339

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 6551
    invoke-direct {v1, v6, v4, v5}, Lcom/android/server/ConnectivityService;->updateLingerState(Lcom/android/server/connectivity/NetworkAgentInfo;J)V

    .line 6552
    goto :goto_329

    .line 6555
    :cond_339
    invoke-direct {v1, v2, v4, v5}, Lcom/android/server/ConnectivityService;->updateLingerState(Lcom/android/server/connectivity/NetworkAgentInfo;J)V

    .line 6557
    if-eqz v0, :cond_363

    .line 6562
    if-eqz v12, :cond_34b

    .line 6563
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    iget-object v3, v12, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual {v0, v3, v12, v11}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(ILcom/android/server/connectivity/NetworkAgentInfo;Z)V

    .line 6566
    :cond_34b
    iget-boolean v0, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eqz v0, :cond_352

    const/16 v0, 0x64

    goto :goto_353

    :cond_352
    move v0, v9

    :goto_353
    iput v0, v1, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 6567
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    iget-object v3, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual {v0, v3, v2}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->add(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6568
    invoke-direct/range {p0 .. p1}, Lcom/android/server/ConnectivityService;->notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6571
    :cond_363
    if-eqz v19, :cond_3c5

    .line 6576
    :try_start_365
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    .line 6577
    iget-object v3, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 6579
    iget-object v6, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    .line 6580
    invoke-interface {v0, v6, v3}, Lcom/android/internal/app/IBatteryStats;->noteNetworkInterfaceType(Ljava/lang/String;I)V

    .line 6581
    iget-object v6, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v6}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_382
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_396

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/LinkProperties;

    .line 6582
    invoke-virtual {v7}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    .line 6583
    invoke-interface {v0, v7, v3}, Lcom/android/internal/app/IBatteryStats;->noteNetworkInterfaceType(Ljava/lang/String;I)V
    :try_end_395
    .catch Landroid/os/RemoteException; {:try_start_365 .. :try_end_395} :catch_397

    .line 6584
    goto :goto_382

    .line 6586
    :cond_396
    goto :goto_398

    .line 6585
    :catch_397
    move-exception v0

    .line 6602
    :goto_398
    nop

    :goto_399
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v0

    if-ge v9, v0, :cond_3b8

    .line 6603
    invoke-virtual {v2, v9}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v0

    .line 6604
    iget v3, v0, Landroid/net/NetworkRequest;->legacyType:I

    const/4 v6, -0x1

    if-eq v3, v6, :cond_3b5

    invoke-virtual {v0}, Landroid/net/NetworkRequest;->isRequest()Z

    move-result v3

    if-eqz v3, :cond_3b5

    .line 6606
    iget-object v3, v1, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    iget v0, v0, Landroid/net/NetworkRequest;->legacyType:I

    invoke-virtual {v3, v0, v2}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->add(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6602
    :cond_3b5
    add-int/lit8 v9, v9, 0x1

    goto :goto_399

    .line 6614
    :cond_3b8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v0

    if-eqz v0, :cond_3c5

    .line 6615
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    const/16 v3, 0x11

    invoke-virtual {v0, v3, v2}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->add(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6618
    :cond_3c5
    sget-object v0, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    move-object/from16 v2, p2

    if-ne v2, v0, :cond_413

    .line 6619
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3d5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_413

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 6620
    sget-object v3, Lcom/android/server/ConnectivityService$UnneededFor;->TEARDOWN:Lcom/android/server/ConnectivityService$UnneededFor;

    invoke-direct {v1, v2, v3}, Lcom/android/server/ConnectivityService;->unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$UnneededFor;)Z

    move-result v3

    if-eqz v3, :cond_412

    .line 6621
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->getLingerExpiry()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_3f7

    .line 6629
    invoke-direct {v1, v2, v4, v5}, Lcom/android/server/ConnectivityService;->updateLingerState(Lcom/android/server/connectivity/NetworkAgentInfo;J)V

    goto :goto_412

    .line 6631
    :cond_3f7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reaping "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6632
    invoke-direct {v1, v2}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6635
    :cond_412
    :goto_412
    goto :goto_3d5

    .line 6637
    :cond_413
    return-void
.end method

.method private removeDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 4

    .line 2317
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 2318
    iget-object p1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 2320
    if-eqz v0, :cond_33

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x1

    .line 2321
    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 2324
    :cond_18
    :try_start_18
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {p1, v0}, Landroid/os/INetworkManagementService;->removeIdleTimer(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_1e

    .line 2327
    goto :goto_33

    .line 2325
    :catch_1e
    move-exception p1

    .line 2326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception in removeDataActivityTracking "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2329
    :cond_33
    :goto_33
    return-void
.end method

.method private removeDetachedNetworkRequests(Landroid/app/PendingIntent;I)Z
    .registers 6

    .line 1920
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 1921
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDetachedRequests:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 1922
    iget-object v2, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    .line 1923
    if-eqz v2, :cond_2d

    .line 1924
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1925
    invoke-direct {p0, v1, p2}, Lcom/android/server/ConnectivityService;->removeDetachedNetworkRequests(Lcom/android/server/ConnectivityService$NetworkRequestInfo;I)Z

    move-result p1

    return p1

    .line 1927
    :cond_2d
    goto :goto_e

    .line 1928
    :cond_2e
    const/4 p1, 0x0

    return p1
.end method

.method private removeDetachedNetworkRequests(Landroid/net/NetworkRequest;I)Z
    .registers 4

    .line 1934
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDetachedRequests:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->removeDetachedNetworkRequests(Lcom/android/server/ConnectivityService$NetworkRequestInfo;I)Z

    move-result p1

    return p1
.end method

.method private removeDetachedNetworkRequests(Lcom/android/server/ConnectivityService$NetworkRequestInfo;I)Z
    .registers 4

    .line 1939
    if-eqz p1, :cond_16

    iget v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    if-eq v0, p2, :cond_a

    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_16

    .line 1940
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->unlinkDeathRecipient()V

    .line 1941
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mDetachedRequests:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1942
    const/4 p1, 0x1

    return p1

    .line 1944
    :cond_16
    const/4 p1, 0x0

    return p1
.end method

.method private requestsSortedById()[Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .registers 3

    .line 2644
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 2645
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 2646
    sget-object v1, Lcom/android/server/-$$Lambda$ConnectivityService$iOdlQdHoQM14teTS-EPRH-RRL3k;->INSTANCE:Lcom/android/server/-$$Lambda$ConnectivityService$iOdlQdHoQM14teTS-EPRH-RRL3k;

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2647
    return-object v0
.end method

.method private requiresVpnIsolation(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z
    .registers 6

    .line 6096
    const/4 v0, 0x0

    if-eqz p2, :cond_30

    if-nez p3, :cond_6

    goto :goto_30

    .line 6097
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object p1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean p1, p1, Landroid/net/NetworkMisc;->allowBypass:Z

    if-nez p1, :cond_2e

    .line 6099
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getEstablishingVpnAppUid()I

    move-result p1

    const/16 p2, 0x3e8

    if-eq p1, p2, :cond_2e

    .line 6100
    invoke-virtual {p3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 6101
    invoke-virtual {p3}, Landroid/net/LinkProperties;->hasIPv4DefaultRoute()Z

    move-result p1

    if-nez p1, :cond_2c

    invoke-virtual {p3}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result p1

    if-eqz p1, :cond_2e

    :cond_2c
    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    nop

    .line 6097
    :goto_2f
    return v0

    .line 6096
    :cond_30
    :goto_30
    return v0
.end method

.method private restrictBackgroundRequestForCaller(Landroid/net/NetworkCapabilities;)V
    .registers 4

    .line 1614
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/PermissionMonitor;->hasUseBackgroundNetworksPermission(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1615
    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1617
    :cond_11
    return-void
.end method

.method private restrictRequestUidsForCaller(Landroid/net/NetworkCapabilities;)V
    .registers 3

    .line 1608
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->checkSettingsPermission()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1609
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->setSingleUid(I)Landroid/net/NetworkCapabilities;

    .line 1611
    :cond_d
    return-void
.end method

.method private scheduleReleaseNetworkTransitionWakelock()V
    .registers 5

    .line 4219
    monitor-enter p0

    .line 4220
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_b

    .line 4221
    monitor-exit p0

    return-void

    .line 4223
    :cond_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_23

    .line 4225
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->removeMessages(I)V

    .line 4226
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4227
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4228
    return-void

    .line 4223
    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0
.end method

.method private scheduleUnvalidatedPrompt(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 5

    .line 3624
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

    .line 3625
    :cond_1b
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x1d

    iget-object p1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    .line 3626
    invoke-virtual {v0, v1, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x1f40

    .line 3625
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3628
    return-void
.end method

.method private sendDataActivityBroadcast(IZJ)V
    .registers 14

    .line 2195
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.net.conn.DATA_ACTIVITY_CHANGE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2196
    const-string v0, "deviceType"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2197
    const-string p1, "isActive"

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2198
    const-string/jumbo p1, "tsNanos"

    invoke-virtual {v1, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2199
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 2201
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.RECEIVE_DATA_ACTIVITY_CHANGE"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_2e

    .line 2204
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2205
    nop

    .line 2206
    return-void

    .line 2204
    :catchall_2e
    move-exception p3

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p3
.end method

.method private sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V
    .registers 3

    .line 2191
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2192
    return-void
.end method

.method private sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V
    .registers 3

    .line 2161
    const-string v0, "android.net.conn.INET_CONDITION_ACTION"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 2162
    return-void
.end method

.method private sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .registers 10

    .line 6215
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 6217
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6218
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p0

    invoke-virtual/range {v1 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_23
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_23} :catch_24

    .line 6223
    goto :goto_41

    .line 6219
    :catch_24
    move-exception p2

    .line 6220
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " was not sent, it had been canceled."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6221
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6222
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->releasePendingNetworkRequest(Landroid/app/PendingIntent;)V

    .line 6225
    :goto_41
    return-void
.end method

.method private sendPendingIntentForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .registers 5

    .line 6204
    const v0, 0x80002

    if-ne p3, v0, :cond_24

    iget-boolean p3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntentSent:Z

    if-nez p3, :cond_24

    .line 6205
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 6206
    iget-object p2, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    const-string v0, "android.net.extra.NETWORK"

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6207
    iget-object p2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    const-string v0, "android.net.extra.NETWORK_REQUEST"

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6208
    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntentSent:Z

    .line 6209
    iget-object p1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-direct {p0, p1, p3}, Lcom/android/server/ConnectivityService;->sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 6212
    :cond_24
    return-void
.end method

.method private sendStickyBroadcast(Landroid/content/Intent;)V
    .registers 9

    .line 2209
    monitor-enter p0

    .line 2210
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    if-nez v0, :cond_18

    .line 2211
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2212
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    .line 2214
    :cond_18
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2215
    sget-boolean v0, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v0, :cond_3a

    .line 2216
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

    .line 2219
    :cond_3a
    const/4 v0, 0x0

    .line 2220
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2221
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_91

    .line 2222
    const-string/jumbo v3, "networkInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 2224
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_66

    .line 2225
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE_SUPL"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2226
    const/high16 v4, 0x40000000  # 2.0f

    invoke-virtual {p1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_73

    .line 2228
    :cond_66
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 2229
    const/16 v4, 0x17

    invoke-virtual {v0, v4}, Landroid/app/BroadcastOptions;->setMaxManifestReceiverApiLevel(I)V

    .line 2230
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 2232
    :goto_73
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v4
    :try_end_77
    .catchall {:try_start_1 .. :try_end_77} :catchall_a3

    .line 2234
    :try_start_77
    const-string/jumbo v5, "networkType"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 2236
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2234
    invoke-interface {v4, v5, v3}, Lcom/android/internal/app/IBatteryStats;->noteConnectivityChanged(ILjava/lang/String;)V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_8a} :catch_8b
    .catchall {:try_start_77 .. :try_end_8a} :catchall_a3

    .line 2238
    goto :goto_8c

    .line 2237
    :catch_8b
    move-exception v3

    .line 2239
    :goto_8c
    const/high16 v3, 0x200000

    :try_start_8e
    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_a3

    .line 2242
    :cond_91
    :try_start_91
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, p1, v4, v0}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;)V
    :try_end_98
    .catchall {:try_start_91 .. :try_end_98} :catchall_9e

    .line 2244
    :try_start_98
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2245
    nop

    .line 2246
    monitor-exit p0

    .line 2247
    return-void

    .line 2244
    :catchall_9e
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2246
    :catchall_a3
    move-exception p1

    monitor-exit p0
    :try_end_a5
    .catchall {:try_start_98 .. :try_end_a5} :catchall_a3

    throw p1
.end method

.method private sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 7

    .line 6187
    nop

    .line 6188
    nop

    .line 6189
    const/4 v0, 0x0

    if-eqz p2, :cond_c

    .line 6190
    invoke-virtual {p2}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v0

    .line 6191
    iget p2, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->factorySerialNumber:I

    goto :goto_d

    .line 6189
    :cond_c
    move p2, v0

    .line 6193
    :goto_d
    sget-boolean v1, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v1, :cond_15

    sget-boolean v1, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v1, :cond_36

    .line 6194
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sending new Min Network Score("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/NetworkRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6196
    :cond_36
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    .line 6197
    iget-object v2, v2, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x83000

    invoke-virtual {v2, v3, v0, p2, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 6199
    goto :goto_40

    .line 6200
    :cond_55
    return-void
.end method

.method private sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 5

    .line 6178
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 6179
    invoke-virtual {p1, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v1

    .line 6181
    invoke-virtual {v1}, Landroid/net/NetworkRequest;->isListen()Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_15

    .line 6182
    :cond_12
    invoke-direct {p0, v1, p1}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6178
    :goto_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6184
    :cond_18
    return-void
.end method

.method private setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mVpns"
        }
    .end annotation

    .line 4701
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 4704
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 4705
    if-eqz v0, :cond_a

    .line 4706
    invoke-virtual {v0}, Lcom/android/server/net/LockdownVpnTracker;->shutdown()V

    .line 4709
    :cond_a
    if-eqz p1, :cond_13

    .line 4710
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 4711
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {p1}, Lcom/android/server/net/LockdownVpnTracker;->init()V

    .line 4713
    :cond_13
    return-void
.end method

.method private setNetworkForRequest(ILcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 5

    .line 5611
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5612
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5613
    monitor-exit v0

    .line 5614
    return-void

    .line 5613
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method private setUidIsolated(I)V
    .registers 5

    .line 1893
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mIsolatedUids:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 1894
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mIsolatedUids:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1895
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    .line 1896
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->detachNetworkRequestsForUid(I)V

    .line 1897
    return-void

    .line 1895
    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method private setupDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 7

    .line 2281
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 2284
    nop

    .line 2286
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eqz v1, :cond_23

    .line 2288
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/16 v1, 0xa

    const-string v3, "data_activity_timeout_mobile"

    invoke-static {p1, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 2291
    move v3, v2

    move v2, p1

    goto :goto_3b

    .line 2292
    :cond_23
    iget-object p1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 2294
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/16 v1, 0xf

    const-string v2, "data_activity_timeout_wifi"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2297
    goto :goto_3b

    .line 2300
    :cond_3a
    move v3, v4

    .line 2303
    :goto_3b
    if-lez v2, :cond_5c

    if-eqz v0, :cond_5c

    if-eq v3, v4, :cond_5c

    .line 2305
    :try_start_41
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {p1, v0, v2, v3}, Landroid/os/INetworkManagementService;->addIdleTimer(Ljava/lang/String;II)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_46} :catch_47

    .line 2309
    goto :goto_5c

    .line 2306
    :catch_47
    move-exception p1

    .line 2308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception in setupDataActivityTracking "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2311
    :cond_5c
    :goto_5c
    return-void
.end method

.method private shouldPromptUnvalidated(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .registers 5

    .line 3814
    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    const/4 v1, 0x0

    if-nez v0, :cond_24

    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    if-eqz v0, :cond_a

    goto :goto_24

    .line 3823
    :cond_a
    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->partialConnectivity:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v0, v0, Landroid/net/NetworkMisc;->acceptPartialConnectivity:Z

    if-nez v0, :cond_16

    .line 3824
    return v2

    .line 3830
    :cond_16
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v0, v0, Landroid/net/NetworkMisc;->explicitlySelected:Z

    if-eqz v0, :cond_23

    iget-object p1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean p1, p1, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    if-nez p1, :cond_23

    .line 3831
    return v2

    .line 3834
    :cond_23
    return v1

    .line 3815
    :cond_24
    :goto_24
    return v1
.end method

.method private showNetworkNotification(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V
    .registers 11

    .line 3767
    sget-object v0, Lcom/android/server/ConnectivityService$8;->$SwitchMap$com$android$server$connectivity$NetworkNotificationManager$NotificationType:[I

    invoke-virtual {p2}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_40

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3a

    const/4 v2, 0x3

    if-eq v0, v2, :cond_34

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2b

    .line 3793
    sget-object p1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown notification type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3794
    return-void

    .line 3787
    :cond_2b
    nop

    .line 3790
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v0, Landroid/net/NetworkMisc;->explicitlySelected:Z

    .line 3791
    const-string v0, "android.net.conn.PROMPT_PARTIAL_CONNECTIVITY"

    move v7, v1

    goto :goto_5c

    .line 3782
    :cond_34
    nop

    .line 3784
    nop

    .line 3785
    const-string v0, "android.net.conn.PROMPT_LOST_VALIDATION"

    move v7, v1

    goto :goto_5c

    .line 3777
    :cond_3a
    nop

    .line 3779
    nop

    .line 3780
    const-string v0, "android.net.conn.PROMPT_UNVALIDATED"

    move v7, v1

    goto :goto_5c

    .line 3769
    :cond_40
    nop

    .line 3770
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->removeMessages(I)V

    .line 3771
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v3, Landroid/net/Network;->netId:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x4e20

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3774
    nop

    .line 3775
    const-string v0, "android.settings.WIFI_SETTINGS"

    move v7, v1

    .line 3797
    :goto_5c
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3798
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOGGED_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-eq p2, v0, :cond_84

    .line 3799
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v0, v0, Landroid/net/Network;->netId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "netId"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3800
    const/high16 v0, 0x10000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3801
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.wifi.WifiNoInternetDialog"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3805
    :cond_84
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v4, 0x10000000

    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 3808
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v0, Landroid/net/Network;->netId:I

    move-object v3, p2

    move-object v4, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/connectivity/NetworkNotificationManager;->showNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V

    .line 3809
    return-void
.end method

.method private startAlwaysOnVpn(I)Z
    .registers 6

    .line 4730
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4731
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 4732
    if-nez v1, :cond_2b

    .line 4735
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has no Vpn configuration"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4736
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 4739
    :cond_2b
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->startAlwaysOnVpn()Z

    move-result p1

    monitor-exit v0

    return p1

    .line 4740
    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw p1
.end method

.method private teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 5

    .line 6298
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numRequestNetworkRequests()I

    move-result v0

    if-eqz v0, :cond_2e

    .line 6299
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 6300
    invoke-virtual {p1, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v1

    .line 6302
    invoke-virtual {v1}, Landroid/net/NetworkRequest;->isListen()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 6299
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 6303
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dead network still had at least "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 6307
    :cond_2e
    iget-object p1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {p1}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    .line 6308
    return-void
.end method

.method private throwIfLockdownEnabled()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mVpns"
        }
    .end annotation

    .line 4717
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    if-nez v0, :cond_5

    .line 4720
    return-void

    .line 4718
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unavailable in lockdown mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toBool(I)Z
    .registers 1

    .line 7225
    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method private unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$UnneededFor;)Z
    .registers 8

    .line 3322
    sget-object v0, Lcom/android/server/ConnectivityService$8;->$SwitchMap$com$android$server$ConnectivityService$UnneededFor:[I

    invoke-virtual {p2}, Lcom/android/server/ConnectivityService$UnneededFor;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_16

    .line 3330
    sget-object p1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const-string p2, "Invalid reason. Cannot happen."

    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3331
    return v1

    .line 3327
    :cond_16
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numForegroundNetworkRequests()I

    move-result v0

    .line 3328
    goto :goto_20

    .line 3324
    :cond_1b
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numRequestNetworkRequests()I

    move-result v0

    .line 3325
    nop

    .line 3334
    :goto_20
    iget-boolean v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_86

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v2

    if-nez v2, :cond_86

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isLingering()Z

    move-result v2

    if-nez v2, :cond_86

    if-lez v0, :cond_34

    goto :goto_86

    .line 3337
    :cond_34
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_85

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 3338
    sget-object v4, Lcom/android/server/ConnectivityService$UnneededFor;->LINGER:Lcom/android/server/ConnectivityService$UnneededFor;

    if-ne p2, v4, :cond_57

    iget-object v4, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v4}, Landroid/net/NetworkRequest;->isBackgroundRequest()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 3340
    goto :goto_3e

    .line 3345
    :cond_57
    iget-object v4, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v4}, Landroid/net/NetworkRequest;->isRequest()Z

    move-result v4

    if-eqz v4, :cond_84

    iget-object v4, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p1, v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfies(Landroid/net/NetworkRequest;)Z

    move-result v4

    if-eqz v4, :cond_84

    iget-object v4, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v4, v4, Landroid/net/NetworkRequest;->requestId:I

    .line 3346
    invoke-virtual {p1, v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSatisfyingRequest(I)Z

    move-result v4

    if-nez v4, :cond_83

    iget-object v2, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v2, v2, Landroid/net/NetworkRequest;->requestId:I

    .line 3354
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->getNetworkForRequest(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v2

    .line 3355
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScoreAsValidated()I

    move-result v4

    if-ge v2, v4, :cond_84

    .line 3356
    :cond_83
    return v3

    .line 3358
    :cond_84
    goto :goto_3e

    .line 3359
    :cond_85
    return v1

    .line 3335
    :cond_86
    :goto_86
    return v3
.end method

.method private updateAllVpnsCapabilities()V
    .registers 6

    .line 4636
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/Network;

    move-result-object v0

    .line 4637
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 4638
    const/4 v2, 0x0

    :goto_c
    :try_start_c
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_26

    .line 4639
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Vpn;

    .line 4640
    invoke-virtual {v3, v0}, Lcom/android/server/connectivity/Vpn;->updateCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v4

    .line 4641
    invoke-direct {p0, v3, v4}, Lcom/android/server/ConnectivityService;->updateVpnCapabilities(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkCapabilities;)V

    .line 4638
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 4643
    :cond_26
    monitor-exit v1

    .line 4644
    return-void

    .line 4643
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_28

    throw v0
.end method

.method private updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V
    .registers 13

    .line 6015
    invoke-direct {p0, p2, p3}, Lcom/android/server/ConnectivityService;->mixInCapabilities(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    move-result-object p3

    .line 6017
    iget-object v0, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v0, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 6019
    :cond_d
    iget-object v0, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkPermission(Landroid/net/NetworkCapabilities;)I

    move-result v0

    .line 6020
    invoke-direct {p0, p3}, Lcom/android/server/ConnectivityService;->getNetworkPermission(Landroid/net/NetworkCapabilities;)I

    move-result v1

    .line 6021
    if-eq v0, v1, :cond_42

    iget-boolean v0, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-eqz v0, :cond_42

    invoke-virtual {p2}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v0

    if-nez v0, :cond_42

    .line 6023
    :try_start_23
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    iget-object v2, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    invoke-interface {v0, v2, v1}, Landroid/os/INetworkManagementService;->setNetworkPermission(II)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2c} :catch_2d

    .line 6026
    goto :goto_42

    .line 6024
    :catch_2d
    move-exception v0

    .line 6025
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in setNetworkPermission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 6030
    :cond_42
    :goto_42
    monitor-enter p2

    .line 6031
    :try_start_43
    iget-object v0, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 6032
    invoke-virtual {p2, p3}, Lcom/android/server/connectivity/NetworkAgentInfo;->setNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 6033
    monitor-exit p2
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_9f

    .line 6035
    invoke-direct {p0, p2, v0, p3}, Lcom/android/server/ConnectivityService;->updateUids(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)V

    .line 6037
    invoke-virtual {p2}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, p1, :cond_5d

    invoke-virtual {p3, v0}, Landroid/net/NetworkCapabilities;->equalRequestableCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 6042
    invoke-direct {p0, p2, v2}, Lcom/android/server/ConnectivityService;->processListenRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    goto :goto_66

    .line 6046
    :cond_5d
    invoke-direct {p0, p2, p1}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 6047
    const p1, 0x80006

    invoke-virtual {p0, p2, p1}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 6050
    :goto_66
    if-eqz v0, :cond_94

    .line 6051
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->isMetered()Z

    move-result v5

    .line 6052
    invoke-virtual {p3}, Landroid/net/NetworkCapabilities;->isMetered()Z

    move-result v6

    .line 6053
    const/4 p1, 0x0

    if-eq v5, v6, :cond_75

    move v1, v2

    goto :goto_76

    :cond_75
    move v1, p1

    .line 6055
    :goto_76
    if-eqz v1, :cond_80

    .line 6056
    iget-boolean v8, p0, Lcom/android/server/ConnectivityService;->mRestrictBackground:Z

    move-object v3, p0

    move-object v4, p2

    move v7, v8

    invoke-direct/range {v3 .. v8}, Lcom/android/server/ConnectivityService;->maybeNotifyNetworkBlocked(Lcom/android/server/connectivity/NetworkAgentInfo;ZZZZ)V

    .line 6060
    :cond_80
    const/16 p2, 0x12

    invoke-virtual {v0, p2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    .line 6061
    invoke-virtual {p3, p2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p2

    if-eq v0, p2, :cond_8d

    move p1, v2

    .line 6064
    :cond_8d
    if-nez v1, :cond_91

    if-eqz p1, :cond_94

    .line 6065
    :cond_91
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChangedForNetworkStats()V

    .line 6069
    :cond_94
    const/4 p1, 0x4

    invoke-virtual {p3, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-nez p1, :cond_9e

    .line 6072
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->updateAllVpnsCapabilities()V

    .line 6074
    :cond_9e
    return-void

    .line 6033
    :catchall_9f
    move-exception p1

    :try_start_a0
    monitor-exit p2
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    throw p1
.end method

.method private updateDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 3

    .line 2336
    if-eqz p1, :cond_5

    .line 2337
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->setupDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2339
    :cond_5
    if-eqz p2, :cond_a

    .line 2340
    invoke-direct {p0, p2}, Lcom/android/server/ConnectivityService;->removeDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2342
    :cond_a
    return-void
.end method

.method private updateDnses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)V
    .registers 7

    .line 5885
    if-eqz p2, :cond_9

    invoke-virtual {p1, p2}, Landroid/net/LinkProperties;->isIdenticalDnses(Landroid/net/LinkProperties;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 5886
    return-void

    .line 5889
    :cond_9
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object p2

    .line 5890
    if-eqz p2, :cond_17

    iget-object p2, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget p2, p2, Landroid/net/Network;->netId:I

    if-ne p2, p3, :cond_17

    const/4 p2, 0x1

    goto :goto_18

    :cond_17
    const/4 p2, 0x0

    .line 5893
    :goto_18
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v0

    .line 5894
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting DNS servers for network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5897
    :try_start_38
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    invoke-virtual {v0, p3, p1, p2}, Lcom/android/server/connectivity/DnsManager;->setDnsConfigurationForNetwork(ILandroid/net/LinkProperties;Z)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3d} :catch_3e

    .line 5900
    goto :goto_53

    .line 5898
    :catch_3e
    move-exception p1

    .line 5899
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception in setDnsConfigurationForNetwork: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 5901
    :goto_53
    return-void
.end method

.method private updateInetCondition(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 4

    .line 6684
    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    if-nez v0, :cond_5

    return-void

    .line 6687
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 6689
    :cond_c
    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eqz v0, :cond_13

    const/16 v0, 0x64

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 6691
    :goto_14
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    if-ne v0, v1, :cond_19

    return-void

    .line 6693
    :cond_19
    iput v0, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 6694
    iget-object p1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V

    .line 6695
    return-void
.end method

.method private updateInterfaces(Landroid/net/LinkProperties;Landroid/net/LinkProperties;ILandroid/net/NetworkCapabilities;)V
    .registers 8

    .line 5814
    new-instance v0, Landroid/net/LinkProperties$CompareResult;

    .line 5815
    const/4 v1, 0x0

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object p2

    goto :goto_b

    :cond_a
    move-object p2, v1

    .line 5816
    :goto_b
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v1

    :cond_11
    invoke-direct {v0, p2, v1}, Landroid/net/LinkProperties$CompareResult;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 5817
    iget-object p1, v0, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_62

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 5819
    :try_start_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding iface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5820
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p2, p3}, Landroid/os/INetworkManagementService;->addInterfaceToNetwork(Ljava/lang/String;I)V

    .line 5821
    const/4 v1, 0x1

    invoke-direct {p0, p2, p4, v1}, Lcom/android/server/ConnectivityService;->wakeupModifyInterface(Ljava/lang/String;Landroid/net/NetworkCapabilities;Z)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_4b} :catch_4c

    .line 5824
    goto :goto_61

    .line 5822
    :catch_4c
    move-exception p2

    .line 5823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception adding interface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 5825
    :goto_61
    goto :goto_1a

    .line 5826
    :cond_62
    iget-object p1, v0, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_68
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 5828
    :try_start_74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing iface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from network "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5829
    const/4 v0, 0x0

    invoke-direct {p0, p2, p4, v0}, Lcom/android/server/ConnectivityService;->wakeupModifyInterface(Ljava/lang/String;Landroid/net/NetworkCapabilities;Z)V

    .line 5830
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p2, p3}, Landroid/os/INetworkManagementService;->removeInterfaceFromNetwork(Ljava/lang/String;I)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_99} :catch_9a

    .line 5833
    goto :goto_af

    .line 5831
    :catch_9a
    move-exception p2

    .line 5832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception removing interface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 5834
    :goto_af
    goto :goto_68

    .line 5835
    :cond_b0
    return-void
.end method

.method private updateLingerState(Lcom/android/server/connectivity/NetworkAgentInfo;J)V
    .registers 8

    .line 3057
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->updateLingerTimer()V

    .line 3058
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isLingering()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numForegroundNetworkRequests()I

    move-result v0

    if-lez v0, :cond_2f

    .line 3059
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unlingering "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3060
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->unlinger()V

    .line 3061
    const/4 p2, 0x6

    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->logNetworkEvent(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    goto :goto_7a

    .line 3062
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

    .line 3063
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getLingerExpiry()J

    move-result-wide v0

    sub-long/2addr v0, p2

    long-to-int p2, v0

    .line 3064
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Lingering "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3065
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->linger()V

    .line 3066
    const/4 p3, 0x5

    invoke-direct {p0, p1, p3}, Lcom/android/server/ConnectivityService;->logNetworkEvent(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 3067
    const p3, 0x80003

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 3069
    :cond_7a
    :goto_7a
    return-void
.end method

.method private updateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V
    .registers 6

    .line 5729
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v0, v0, Landroid/net/Network;->netId:I

    .line 5734
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v1, p3, p2}, Lcom/android/server/connectivity/Nat464Xlat;->fixupLinkProperties(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V

    .line 5736
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, p2, p3, v0, v1}, Lcom/android/server/ConnectivityService;->updateInterfaces(Landroid/net/LinkProperties;Landroid/net/LinkProperties;ILandroid/net/NetworkCapabilities;)V

    .line 5740
    invoke-direct {p0, p2, p3, p1}, Lcom/android/server/ConnectivityService;->updateVpnFiltering(Landroid/net/LinkProperties;Landroid/net/LinkProperties;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 5742
    invoke-direct {p0, p2, p3}, Lcom/android/server/ConnectivityService;->updateMtu(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V

    .line 5747
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 5748
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getTcpBufferSizes()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->updateTcpBufferSizes(Ljava/lang/String;)V

    .line 5751
    :cond_21
    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/ConnectivityService;->updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)Z

    .line 5752
    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/ConnectivityService;->updateDnses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)V

    .line 5757
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/connectivity/DnsManager;->updatePrivateDnsStatus(ILandroid/net/LinkProperties;)V

    .line 5759
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 5760
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V

    goto :goto_3d

    .line 5762
    :cond_3a
    invoke-direct {p0, p2, p3}, Lcom/android/server/ConnectivityService;->updateProxy(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V

    .line 5765
    :goto_3d
    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_64

    .line 5766
    monitor-enter p1

    .line 5767
    :try_start_44
    iput-object p2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 5768
    monitor-exit p1
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_61

    .line 5770
    iget-object p3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {p3}, Lcom/android/server/connectivity/Nat464Xlat;->update()V

    .line 5771
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChangedForNetworkStats()V

    .line 5772
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor()Landroid/net/NetworkMonitorManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/net/NetworkMonitorManager;->notifyLinkPropertiesChanged(Landroid/net/LinkProperties;)Z

    .line 5773
    iget-boolean p2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-eqz p2, :cond_64

    .line 5774
    const p2, 0x80007

    invoke-virtual {p0, p1, p2}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    goto :goto_64

    .line 5768
    :catchall_61
    move-exception p2

    :try_start_62
    monitor-exit p1
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw p2

    .line 5778
    :cond_64
    :goto_64
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    invoke-virtual {p2, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleCheckKeepalivesStillValid(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 5779
    return-void
.end method

.method private updateMtu(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V
    .registers 6

    .line 2348
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 2349
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getMtu()I

    move-result v1

    .line 2350
    if-nez p2, :cond_d

    if-nez v1, :cond_d

    .line 2352
    return-void

    .line 2354
    :cond_d
    if-eqz p2, :cond_1f

    invoke-virtual {p1, p2}, Landroid/net/LinkProperties;->isIdenticalMtu(Landroid/net/LinkProperties;)Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 2355
    sget-boolean p1, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz p1, :cond_1e

    const-string p1, "identical MTU - not setting"

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2356
    :cond_1e
    return-void

    .line 2358
    :cond_1f
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasGlobalIpv6Address()Z

    move-result p1

    invoke-static {v1, p1}, Landroid/net/LinkProperties;->isValidMtu(IZ)Z

    move-result p1

    const-string p2, ", "

    if-nez p1, :cond_48

    .line 2359
    if-eqz v1, :cond_47

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected mtu value: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2360
    :cond_47
    return-void

    .line 2364
    :cond_48
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_54

    .line 2365
    const-string p1, "Setting MTU size with null iface."

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2366
    return-void

    .line 2370
    :cond_54
    :try_start_54
    sget-boolean p1, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez p1, :cond_5c

    sget-boolean p1, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz p1, :cond_76

    :cond_5c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting MTU size: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2371
    :cond_76
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {p1, v0, v1}, Landroid/os/INetworkManagementService;->setMtu(Ljava/lang/String;I)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_7b} :catch_7c

    .line 2374
    goto :goto_93

    .line 2372
    :catch_7c
    move-exception p1

    .line 2373
    sget-object p2, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception in setMtu()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    :goto_93
    return-void
.end method

.method private updateNetworkInfo(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V
    .registers 8

    .line 6710
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 6711
    nop

    .line 6712
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v1

    .line 6713
    monitor-enter p1

    .line 6714
    :try_start_a
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 6715
    iput-object p2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 6716
    monitor-exit p1
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_138

    .line 6717
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6720
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " EVENT_NETWORK_INFO_CHANGED, going from "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6721
    if-nez v2, :cond_29

    const-string/jumbo v3, "null"

    goto :goto_2d

    :cond_29
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    :goto_2d
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6720
    invoke-static {p2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6725
    iget-boolean p2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    const/4 v3, 0x1

    if-nez p2, :cond_62

    sget-object p2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, p2, :cond_52

    sget-object p2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, p2, :cond_62

    .line 6727
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result p2

    if-eqz p2, :cond_62

    .line 6730
    :cond_52
    iget-object p2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v4, 0x13

    invoke-virtual {p2, v4}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 6732
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->createNativeNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result p2

    if-nez p2, :cond_60

    return-void

    .line 6733
    :cond_60
    iput-boolean v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    .line 6736
    :cond_62
    iget-boolean p2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    const/4 v4, 0x0

    if-nez p2, :cond_e1

    sget-object p2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, p2, :cond_e1

    .line 6737
    iput-boolean v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    .line 6739
    iget-object p2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    if-nez p2, :cond_8b

    .line 6740
    sget-object p2, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " connected with null LinkProperties"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 6745
    :cond_8b
    monitor-enter p1

    .line 6746
    :try_start_8c
    iget-object p2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p1, p2}, Lcom/android/server/connectivity/NetworkAgentInfo;->setNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 6747
    monitor-exit p1
    :try_end_92
    .catchall {:try_start_8c .. :try_end_92} :catchall_de

    .line 6748
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    invoke-virtual {p2}, Lcom/android/server/connectivity/DnsManager;->getPrivateDnsConfig()Landroid/net/shared/PrivateDnsConfig;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handlePerNetworkPrivateDnsConfig(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/shared/PrivateDnsConfig;)V

    .line 6749
    new-instance p2, Landroid/net/LinkProperties;

    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {p2, v0}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/ConnectivityService;->updateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V

    .line 6756
    iget-object p2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean p2, p2, Landroid/net/NetworkMisc;->acceptPartialConnectivity:Z

    if-eqz p2, :cond_b2

    .line 6757
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor()Landroid/net/NetworkMonitorManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/NetworkMonitorManager;->setAcceptPartialConnectivity()Z

    .line 6759
    :cond_b2
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor()Landroid/net/NetworkMonitorManager;

    move-result-object p2

    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p2, v0, v1}, Landroid/net/NetworkMonitorManager;->notifyNetworkConnected(Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)Z

    .line 6761
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->scheduleUnvalidatedPrompt(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6770
    const-string p2, "CONNECT"

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/ConnectivityService;->updateSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;Landroid/net/NetworkRequest;)V

    .line 6772
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result p2

    if-eqz p2, :cond_ce

    .line 6773
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->updateAllVpnsCapabilities()V

    .line 6777
    :cond_ce
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 6778
    sget-object p2, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/ConnectivityService;->rematchNetworkAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;J)V

    .line 6781
    const p2, 0x80001

    invoke-virtual {p0, p1, p2}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 6782
    goto :goto_137

    .line 6747
    :catchall_de
    move-exception p2

    :try_start_df
    monitor-exit p1
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_de

    throw p2

    .line 6782
    :cond_e1
    sget-object p2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, p2, :cond_104

    .line 6783
    iget-object p2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {p2}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    .line 6784
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result p2

    if-eqz p2, :cond_f5

    .line 6785
    iget-object p2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/ConnectivityService;->updateUids(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)V

    .line 6787
    :cond_f5
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->disconnectAndDestroyNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6788
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result p1

    if-eqz p1, :cond_137

    .line 6793
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mProxyTracker:Lcom/android/server/connectivity/ProxyTracker;

    invoke-virtual {p1}, Lcom/android/server/connectivity/ProxyTracker;->sendProxyBroadcast()V

    goto :goto_137

    .line 6795
    :cond_104
    if-eqz v2, :cond_10e

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p2

    sget-object v2, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-eq p2, v2, :cond_112

    :cond_10e
    sget-object p2, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v0, p2, :cond_137

    .line 6798
    :cond_112
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result p2

    if-eq p2, v1, :cond_11b

    .line 6799
    invoke-direct {p0, p1, v1}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 6801
    :cond_11b
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result p2

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, p2, p1, v1}, Lcom/android/server/ConnectivityService;->updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 6805
    sget-object p2, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v0, p2, :cond_12c

    .line 6806
    const p2, 0x80009

    goto :goto_12f

    .line 6807
    :cond_12c
    const p2, 0x8000a

    .line 6805
    :goto_12f
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 6808
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {p2, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->update(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6810
    :cond_137
    :goto_137
    return-void

    .line 6716
    :catchall_138
    move-exception p2

    :try_start_139
    monitor-exit p1
    :try_end_13a
    .catchall {:try_start_139 .. :try_end_13a} :catchall_138

    throw p2
.end method

.method private updateNetworkScore(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .registers 6

    .line 6813
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

    .line 6814
    :cond_29
    if-gez p2, :cond_4f

    .line 6815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " got a negative score ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ").  Bumping score to min of 0"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 6817
    const/4 p2, 0x0

    .line 6820
    :cond_4f
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v0

    .line 6821
    invoke-virtual {p1, p2}, Lcom/android/server/connectivity/NetworkAgentInfo;->setCurrentScore(I)V

    .line 6823
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 6825
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6826
    return-void
.end method

.method private updatePrivateDns(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/shared/PrivateDnsConfig;)V
    .registers 5

    .line 3016
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/connectivity/DnsManager;->updatePrivateDns(Landroid/net/Network;Landroid/net/shared/PrivateDnsConfig;)Landroid/net/shared/PrivateDnsConfig;

    .line 3017
    iget-object p2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    iget-object p1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget p1, p1, Landroid/net/Network;->netId:I

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Lcom/android/server/ConnectivityService;->updateDnses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)V

    .line 3018
    return-void
.end method

.method private updateProxy(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V
    .registers 4

    .line 4367
    const/4 v0, 0x0

    if-nez p1, :cond_5

    move-object p1, v0

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object p1

    .line 4368
    :goto_9
    if-nez p2, :cond_c

    goto :goto_10

    :cond_c
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    .line 4370
    :goto_10
    invoke-static {p1, v0}, Lcom/android/server/connectivity/ProxyTracker;->proxyInfoEqual(Landroid/net/ProxyInfo;Landroid/net/ProxyInfo;)Z

    move-result p1

    if-nez p1, :cond_1b

    .line 4371
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mProxyTracker:Lcom/android/server/connectivity/ProxyTracker;

    invoke-virtual {p1}, Lcom/android/server/connectivity/ProxyTracker;->sendProxyBroadcast()V

    .line 4373
    :cond_1b
    return-void
.end method

.method private updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)Z
    .registers 9

    .line 5843
    new-instance v0, Landroid/net/LinkProperties$CompareResult;

    .line 5844
    const/4 v1, 0x0

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object p2

    goto :goto_b

    :cond_a
    move-object p2, v1

    .line 5845
    :goto_b
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v1

    :cond_11
    invoke-direct {v0, p2, v1}, Landroid/net/LinkProperties$CompareResult;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 5850
    iget-object p1, v0, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const-string v1, "] to network "

    const-string v2, "Adding Route ["

    if-eqz p2, :cond_7d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/RouteInfo;

    .line 5851
    invoke-virtual {p2}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v3

    if-eqz v3, :cond_31

    goto :goto_1a

    .line 5852
    :cond_31
    sget-boolean v3, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v3, :cond_39

    sget-boolean v3, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v3, :cond_51

    :cond_39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5854
    :cond_51
    :try_start_51
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p3, p2}, Landroid/os/INetworkManagementService;->addRoute(ILandroid/net/RouteInfo;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_56} :catch_57

    .line 5859
    goto :goto_7c

    .line 5855
    :catch_57
    move-exception v1

    .line 5856
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object p2

    instance-of p2, p2, Ljava/net/Inet4Address;

    if-nez p2, :cond_68

    sget-boolean p2, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz p2, :cond_7c

    .line 5857
    :cond_68
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in addRoute for non-gateway: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 5860
    :cond_7c
    :goto_7c
    goto :goto_1a

    .line 5861
    :cond_7d
    iget-object p1, v0, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_83
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_de

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/RouteInfo;

    .line 5862
    invoke-virtual {p2}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v3

    if-nez v3, :cond_96

    goto :goto_83

    .line 5863
    :cond_96
    sget-boolean v3, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v3, :cond_9e

    sget-boolean v3, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v3, :cond_b6

    :cond_9e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5865
    :cond_b6
    :try_start_b6
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p3, p2}, Landroid/os/INetworkManagementService;->addRoute(ILandroid/net/RouteInfo;)V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_bb} :catch_bc

    .line 5870
    goto :goto_dd

    .line 5866
    :catch_bc
    move-exception v3

    .line 5867
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object p2

    instance-of p2, p2, Ljava/net/Inet4Address;

    if-nez p2, :cond_c9

    sget-boolean p2, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz p2, :cond_dd

    .line 5868
    :cond_c9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in addRoute for gateway: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 5871
    :cond_dd
    :goto_dd
    goto :goto_83

    .line 5873
    :cond_de
    iget-object p1, v0, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_130

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/RouteInfo;

    .line 5874
    sget-boolean v1, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v1, :cond_f8

    sget-boolean v1, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v1, :cond_114

    :cond_f8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing Route ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] from network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5876
    :cond_114
    :try_start_114
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p3, p2}, Landroid/os/INetworkManagementService;->removeRoute(ILandroid/net/RouteInfo;)V
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_119} :catch_11a

    .line 5879
    goto :goto_12f

    .line 5877
    :catch_11a
    move-exception p2

    .line 5878
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in removeRoute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 5880
    :goto_12f
    goto :goto_e4

    .line 5881
    :cond_130
    iget-object p1, v0, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_143

    iget-object p1, v0, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_141

    goto :goto_143

    :cond_141
    const/4 p1, 0x0

    goto :goto_144

    :cond_143
    :goto_143
    const/4 p1, 0x1

    :goto_144
    return p1
.end method

.method private updateSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;Landroid/net/NetworkRequest;)V
    .registers 8

    .line 5283
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 5284
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5285
    const-string/jumbo v2, "thresholds"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5287
    sget-boolean v2, Lcom/android/server/ConnectivityService;->VDBG:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1c

    const-string v2, "CONNECT"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_63

    .line 5289
    :cond_1c
    if-eqz p3, :cond_41

    iget-object v2, p3, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 5290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_42

    .line 5292
    :cond_41
    nop

    .line 5294
    :goto_42
    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p2, p3, v3

    const/4 p2, 0x1

    .line 5295
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, p2

    const/4 p2, 0x2

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, p2

    .line 5294
    const-string/jumbo p2, "updateSignalStrengthThresholds: %s, sending %s to %s"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5298
    :cond_63
    iget-object p1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const p2, 0x8100e

    invoke-virtual {p1, p2, v3, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 5301
    return-void
.end method

.method private updateTcpBufferSizes(Ljava/lang/String;)V
    .registers 10

    .line 2388
    const-string v0, " "

    .line 2389
    const-string v1, ","

    if-eqz p1, :cond_b

    .line 2390
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    .line 2389
    :cond_b
    const/4 v2, 0x0

    .line 2393
    :goto_c
    if-eqz v2, :cond_12

    array-length v3, v2

    const/4 v4, 0x6

    if-eq v3, v4, :cond_31

    .line 2394
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid tcpBufferSizes string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", using defaults"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2395
    const-string p1, "4096,87380,110208,4096,16384,110208"

    .line 2396
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2399
    :cond_31
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mCurrentTcpBufferSizes:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    return-void

    .line 2402
    :cond_3a
    const/4 v1, 0x0

    :try_start_3b
    sget-boolean v3, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v3, :cond_43

    sget-boolean v3, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v3, :cond_59

    :cond_43
    sget-object v3, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting tx/rx TCP buffers to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    :cond_59
    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/CharSequence;

    aget-object v5, v2, v1

    aput-object v5, v4, v1

    const/4 v5, 0x1

    aget-object v6, v2, v5

    aput-object v6, v4, v5

    const/4 v6, 0x2

    aget-object v7, v2, v6

    aput-object v7, v4, v6

    invoke-static {v0, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 2405
    new-array v7, v3, [Ljava/lang/CharSequence;

    aget-object v3, v2, v3

    aput-object v3, v7, v1

    const/4 v3, 0x4

    aget-object v3, v2, v3

    aput-object v3, v7, v5

    const/4 v3, 0x5

    aget-object v2, v2, v3

    aput-object v2, v7, v6

    invoke-static {v0, v7}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2406
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/net/INetd;

    invoke-interface {v2, v4, v0}, Landroid/net/INetd;->setTcpRWmemorySize(Ljava/lang/String;Ljava/lang/String;)V

    .line 2407
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mCurrentTcpBufferSizes:Ljava/lang/String;
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_89} :catch_8a
    .catch Landroid/os/ServiceSpecificException; {:try_start_3b .. :try_end_89} :catch_8a

    .line 2410
    goto :goto_9f

    .line 2408
    :catch_8a
    move-exception p1

    .line 2409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set TCP buffer sizes:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2412
    :goto_9f
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    .line 2414
    const-string/jumbo v2, "net.tcp.default_init_rwnd"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/connectivity/MockableSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2412
    const-string/jumbo v1, "tcp_default_init_rwnd"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2416
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_cb

    .line 2417
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "sys.sysctl.tcp_def_init_rwnd"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/connectivity/MockableSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2419
    :cond_cb
    return-void
.end method

.method private updateUids(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)V
    .registers 9

    .line 6106
    const/4 v0, 0x0

    if-nez p2, :cond_5

    move-object v1, v0

    goto :goto_9

    :cond_5
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v1

    .line 6107
    :goto_9
    if-nez p3, :cond_c

    goto :goto_10

    :cond_c
    invoke-virtual {p3}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v0

    .line 6108
    :goto_10
    if-nez v1, :cond_17

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 6109
    :cond_17
    if-nez v0, :cond_1e

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 6110
    :cond_1e
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 6112
    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 6113
    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 6122
    :try_start_29
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_41

    .line 6123
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/UidRange;

    .line 6124
    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 6125
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v4, v4, Landroid/net/Network;->netId:I

    invoke-interface {v3, v4, v2}, Landroid/os/INetworkManagementService;->addVpnUidRanges(I[Landroid/net/UidRange;)V

    .line 6127
    :cond_41
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_59

    .line 6128
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/UidRange;

    .line 6129
    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 6130
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v4, v4, Landroid/net/Network;->netId:I

    invoke-interface {v3, v4, v2}, Landroid/os/INetworkManagementService;->removeVpnUidRanges(I[Landroid/net/UidRange;)V

    .line 6132
    :cond_59
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/ConnectivityService;->requiresVpnIsolation(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z

    move-result v2

    .line 6133
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, p1, p3, v3}, Lcom/android/server/ConnectivityService;->requiresVpnIsolation(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z

    move-result v3

    .line 6134
    iget-object p1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p1

    .line 6146
    if-eqz v2, :cond_7c

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7c

    .line 6147
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    .line 6148
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getEstablishingVpnAppUid()I

    move-result p2

    .line 6147
    invoke-virtual {v2, p1, v1, p2}, Lcom/android/server/connectivity/PermissionMonitor;->onVpnUidRangesRemoved(Ljava/lang/String;Ljava/util/Set;I)V

    .line 6150
    :cond_7c
    if-eqz v3, :cond_8d

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8d

    .line 6151
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    .line 6152
    invoke-virtual {p3}, Landroid/net/NetworkCapabilities;->getEstablishingVpnAppUid()I

    move-result p3

    .line 6151
    invoke-virtual {p2, p1, v0, p3}, Lcom/android/server/connectivity/PermissionMonitor;->onVpnUidRangesAdded(Ljava/lang/String;Ljava/util/Set;I)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_8d} :catch_8e

    .line 6157
    :cond_8d
    goto :goto_94

    .line 6154
    :catch_8e
    move-exception p1

    .line 6156
    const-string p2, "Exception in updateUids: "

    invoke-static {p2, p1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6158
    :goto_94
    return-void
.end method

.method private updateVpnCapabilities(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkCapabilities;)V
    .registers 4

    .line 4647
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->ensureRunningOnConnectivityServiceThread()V

    .line 4648
    invoke-virtual {p1}, Lcom/android/server/connectivity/Vpn;->getNetId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetId(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object p1

    .line 4649
    if-eqz p1, :cond_18

    if-nez p2, :cond_10

    goto :goto_18

    .line 4652
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/ConnectivityService;->updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 4653
    return-void

    .line 4650
    :cond_18
    :goto_18
    return-void
.end method

.method private updateVpnFiltering(Landroid/net/LinkProperties;Landroid/net/LinkProperties;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 7

    .line 5905
    const/4 v0, 0x0

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    .line 5906
    :goto_9
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 5907
    :cond_f
    iget-object v2, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, p3, v2, p2}, Lcom/android/server/ConnectivityService;->requiresVpnIsolation(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z

    move-result p2

    .line 5908
    iget-object v2, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, p3, v2, p1}, Lcom/android/server/ConnectivityService;->requiresVpnIsolation(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z

    move-result p1

    .line 5910
    if-nez p2, :cond_20

    if-nez p1, :cond_20

    .line 5912
    return-void

    .line 5915
    :cond_20
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    if-ne p2, p1, :cond_29

    .line 5917
    return-void

    .line 5920
    :cond_29
    iget-object v2, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v2

    .line 5921
    iget-object p3, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p3}, Landroid/net/NetworkCapabilities;->getEstablishingVpnAppUid()I

    move-result p3

    .line 5926
    if-eqz p2, :cond_3c

    .line 5927
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-virtual {p2, v1, v2, p3}, Lcom/android/server/connectivity/PermissionMonitor;->onVpnUidRangesRemoved(Ljava/lang/String;Ljava/util/Set;I)V

    .line 5929
    :cond_3c
    if-eqz p1, :cond_43

    .line 5930
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-virtual {p1, v0, v2, p3}, Lcom/android/server/connectivity/PermissionMonitor;->onVpnUidRangesAdded(Ljava/lang/String;Ljava/util/Set;I)V

    .line 5932
    :cond_43
    return-void
.end method

.method private wakeupModifyInterface(Ljava/lang/String;Landroid/net/NetworkCapabilities;Z)V
    .registers 7

    .line 5784
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p2

    if-nez p2, :cond_8

    .line 5785
    return-void

    .line 5788
    :cond_8
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10e008a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 5790
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 5795
    if-eqz p2, :cond_5c

    if-nez v0, :cond_27

    goto :goto_5c

    .line 5799
    :cond_27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5801
    if-eqz p3, :cond_40

    .line 5802
    :try_start_3a
    iget-object p3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/net/INetd;

    invoke-interface {p3, p1, v1, p2, v0}, Landroid/net/INetd;->wakeupAddInterface(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_45

    .line 5804
    :cond_40
    iget-object p3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/net/INetd;

    invoke-interface {p3, p1, v1, p2, v0}, Landroid/net/INetd;->wakeupDelInterface(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_45} :catch_46

    .line 5808
    :goto_45
    goto :goto_5b

    .line 5806
    :catch_46
    move-exception p1

    .line 5807
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception modifying wakeup packet monitoring: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 5810
    :goto_5b
    return-void

    .line 5796
    :cond_5c
    :goto_5c
    return-void
.end method


# virtual methods
.method public addVpnAddress(Ljava/lang/String;I)Z
    .registers 6

    .line 7027
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 7028
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 7029
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 7030
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/connectivity/Vpn;->addAddress(Ljava/lang/String;I)Z

    move-result p1

    monitor-exit v1

    return p1

    .line 7031
    :catchall_1c
    move-exception p1

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public avoidBadWifi()Z
    .registers 2

    .line 3702
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {v0}, Landroid/net/util/MultinetworkPolicyTracker;->getAvoidBadWifi()Z

    move-result v0

    return v0
.end method

.method public checkMobileProvisioning(I)I
    .registers 2

    .line 4834
    const/4 p1, -0x1

    return p1
.end method

.method createMultinetworkPolicyTracker(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/net/util/MultinetworkPolicyTracker;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 7200
    new-instance v0, Landroid/net/util/MultinetworkPolicyTracker;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/util/MultinetworkPolicyTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 2462
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/utils/PriorityDump;->dump(Lcom/android/server/utils/PriorityDump$PriorityDumper;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2463
    return-void
.end method

.method public establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .registers 5

    .line 4485
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4486
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 4487
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 4488
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Vpn;->establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    monitor-exit v1

    return-object p1

    .line 4489
    :catchall_1c
    move-exception p1

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public factoryReset()V
    .registers 9

    .line 7116
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 7118
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "no_network_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 7119
    return-void

    .line 7122
    :cond_f
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 7124
    new-instance v1, Lcom/android/server/-$$Lambda$ConnectivityService$LEHWBvz4S-r8QDKRwIiJBgJlcRE;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$ConnectivityService$LEHWBvz4S-r8QDKRwIiJBgJlcRE;-><init>(Lcom/android/server/ConnectivityService;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 7130
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/ConnectivityService;->setAirplaneMode(Z)V

    .line 7132
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v3, "no_config_tethering"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 7134
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 7135
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_36
    if-ge v5, v4, :cond_40

    aget-object v6, v3, v5

    .line 7136
    invoke-virtual {p0, v6, v2}, Lcom/android/server/ConnectivityService;->untether(Ljava/lang/String;Ljava/lang/String;)I

    .line 7135
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 7140
    :cond_40
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v3, "no_config_vpn"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_9b

    .line 7142
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 7143
    :try_start_4f
    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->getAlwaysOnVpnPackage(I)Ljava/lang/String;

    move-result-object v4

    .line 7144
    if-eqz v4, :cond_5b

    .line 7145
    invoke-virtual {p0, v0, v3, v1, v3}, Lcom/android/server/ConnectivityService;->setAlwaysOnVpnPackage(ILjava/lang/String;ZLjava/util/List;)Z

    .line 7146
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/ConnectivityService;->setVpnPackageAuthorization(Ljava/lang/String;IZ)V

    .line 7150
    :cond_5b
    iget-boolean v4, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    if-eqz v4, :cond_7a

    if-nez v0, :cond_7a

    .line 7151
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_65
    .catchall {:try_start_4f .. :try_end_65} :catchall_98

    .line 7153
    :try_start_65
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    const-string v7, "LOCKDOWN_VPN"

    invoke-virtual {v6, v7}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 7154
    iput-boolean v1, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    .line 7155
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V
    :try_end_71
    .catchall {:try_start_65 .. :try_end_71} :catchall_75

    .line 7157
    :try_start_71
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7158
    goto :goto_7a

    .line 7157
    :catchall_75
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 7162
    :cond_7a
    :goto_7a
    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v4

    .line 7163
    if-eqz v4, :cond_96

    .line 7164
    iget-boolean v5, v4, Lcom/android/internal/net/VpnConfig;->legacy:Z

    if-eqz v5, :cond_8c

    .line 7165
    const-string v1, "[Legacy VPN]"

    const-string v4, "[Legacy VPN]"

    invoke-virtual {p0, v1, v4, v0}, Lcom/android/server/ConnectivityService;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_96

    .line 7169
    :cond_8c
    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/ConnectivityService;->setVpnPackageAuthorization(Ljava/lang/String;IZ)V

    .line 7171
    const-string v1, "[Legacy VPN]"

    invoke-virtual {p0, v3, v1, v0}, Lcom/android/server/ConnectivityService;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 7174
    :cond_96
    :goto_96
    monitor-exit v2

    goto :goto_9b

    :catchall_98
    move-exception v0

    monitor-exit v2
    :try_end_9a
    .catchall {:try_start_71 .. :try_end_9a} :catchall_98

    throw v0

    .line 7178
    :cond_9b
    :goto_9b
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    const-string v1, "disallow_config_private_dns"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b4

    .line 7179
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "private_dns_mode"

    const-string/jumbo v2, "opportunistic"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7183
    :cond_b4
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "network_avoid_bad_wifi"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7185
    return-void
.end method

.method public getActiveLinkProperties()Landroid/net/LinkProperties;
    .registers 2

    .line 1541
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1542
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1543
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    move-result-object v0

    .line 1544
    iget-object v0, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method public getActiveNetwork()Landroid/net/Network;
    .registers 3

    .line 1345
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1346
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->getActiveNetworkForUidInternal(IZ)Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNetworkForUid(IZ)Landroid/net/Network;
    .registers 3

    .line 1351
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1352
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->getActiveNetworkForUidInternal(IZ)Landroid/net/Network;

    move-result-object p1

    return-object p1
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .registers 4

    .line 1335
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1336
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1337
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    move-result-object v1

    .line 1338
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/ConnectivityService;->filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V

    .line 1339
    iget-object v2, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-direct {p0, v2, v0}, Lcom/android/server/ConnectivityService;->maybeLogBlockedNetworkInfo(Landroid/net/NetworkInfo;I)V

    .line 1340
    iget-object v0, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getActiveNetworkInfoForUid(IZ)Landroid/net/NetworkInfo;
    .registers 4

    .line 1393
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1394
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    move-result-object v0

    .line 1395
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/ConnectivityService;->filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V

    .line 1396
    iget-object p1, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method public getActiveNetworkInfoUnfiltered()Landroid/net/NetworkInfo;
    .registers 2

    .line 1385
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1386
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1387
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    move-result-object v0

    .line 1388
    iget-object v0, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1641
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

    .line 1643
    new-instance v0, Landroid/net/NetworkQuotaInfo;

    invoke-direct {v0}, Landroid/net/NetworkQuotaInfo;-><init>()V

    return-object v0
.end method

.method public getAllLegacyVpns()[Lcom/android/internal/net/VpnProfile;
    .registers 11

    .line 4494
    const-string v0, "VPN_"

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 4496
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4497
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4499
    :try_start_e
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v4, v0}, Landroid/security/KeyStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_16
    if-ge v6, v5, :cond_3b

    aget-object v7, v4, v6

    .line 4500
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4501
    invoke-virtual {v8, v9}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v8

    .line 4500
    invoke-static {v7, v8}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v7

    .line 4502
    if-eqz v7, :cond_38

    .line 4503
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catchall {:try_start_e .. :try_end_38} :catchall_4c

    .line 4499
    :cond_38
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 4507
    :cond_3b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4508
    nop

    .line 4509
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/net/VpnProfile;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/net/VpnProfile;

    return-object v0

    .line 4507
    :catchall_4c
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .registers 4

    .line 1432
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1433
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->isUidIsolated(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 1435
    new-array v0, v1, [Landroid/net/NetworkInfo;

    return-object v0

    .line 1438
    :cond_11
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1439
    nop

    :goto_16
    const/16 v2, 0x12

    if-gt v1, v2, :cond_26

    .line 1441
    invoke-virtual {p0, v1}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1442
    if-eqz v2, :cond_23

    .line 1443
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1440
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 1446
    :cond_26
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getAllNetworkState()[Landroid/net/NetworkState;
    .registers 6

    .line 1622
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1624
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1625
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_21

    aget-object v4, v1, v3

    .line 1626
    invoke-virtual {p0, v4}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    .line 1627
    if-eqz v4, :cond_1e

    .line 1632
    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->getNetworkState()Landroid/net/NetworkState;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1625
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1635
    :cond_21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/NetworkState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkState;

    return-object v0
.end method

.method public getAllNetworks()[Landroid/net/Network;
    .registers 5

    .line 1462
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1463
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->isUidIsolated(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 1465
    new-array v0, v1, [Landroid/net/Network;

    return-object v0

    .line 1467
    :cond_11
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1468
    :try_start_14
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/Network;

    .line 1469
    nop

    :goto_1d
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_34

    .line 1470
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v3, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    aput-object v3, v2, v1

    .line 1469
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 1472
    :cond_34
    monitor-exit v0

    return-object v2

    .line 1473
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_14 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public getAlwaysOnVpnPackage(I)Ljava/lang/String;
    .registers 6

    .line 4788
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceControlAlwaysOnVpnPermission()V

    .line 4789
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 4791
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4792
    :try_start_9
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 4793
    if-nez v1, :cond_31

    .line 4794
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has no Vpn configuration"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4795
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    .line 4797
    :cond_31
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 4798
    :catchall_37
    move-exception p1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public getCaptivePortalServerUrl()Ljava/lang/String;
    .registers 3

    .line 7063
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 7064
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040195

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7067
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 7068
    return-object v0

    .line 7071
    :cond_17
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "captive_portal_http_url"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7073
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 7074
    return-object v0

    .line 7077
    :cond_2a
    const-string v0, "http://connectivitycheck.gstatic.com/generate_204"

    return-object v0
.end method

.method public getConnectionOwnerUid(Landroid/net/ConnectionInfo;)I
    .registers 5

    .line 7328
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceActiveVpnOrNetworkStackPermission()Lcom/android/server/connectivity/Vpn;

    move-result-object v0

    .line 7329
    iget v1, p1, Landroid/net/ConnectionInfo;->protocol:I

    sget v2, Landroid/system/OsConstants;->IPPROTO_TCP:I

    if-eq v1, v2, :cond_2a

    iget v1, p1, Landroid/net/ConnectionInfo;->protocol:I

    sget v2, Landroid/system/OsConstants;->IPPROTO_UDP:I

    if-ne v1, v2, :cond_11

    goto :goto_2a

    .line 7330
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported protocol "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/net/ConnectionInfo;->protocol:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7333
    :cond_2a
    :goto_2a
    iget v1, p1, Landroid/net/ConnectionInfo;->protocol:I

    iget-object v2, p1, Landroid/net/ConnectionInfo;->local:Ljava/net/InetSocketAddress;

    iget-object p1, p1, Landroid/net/ConnectionInfo;->remote:Ljava/net/InetSocketAddress;

    invoke-static {v1, v2, p1}, Landroid/net/netlink/InetDiagMessage;->getConnectionOwnerUid(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)I

    move-result p1

    .line 7337
    if-eqz v0, :cond_3e

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Vpn;->appliesToUid(I)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 7338
    const/4 p1, -0x1

    return p1

    .line 7341
    :cond_3e
    return p1
.end method

.method public getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;
    .registers 8

    .line 1492
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1494
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1496
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 1497
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getNetworkCapabilitiesInternal(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/NetworkCapabilities;

    move-result-object v2

    .line 1498
    if-eqz v2, :cond_17

    .line 1499
    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1502
    :cond_17
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1503
    :try_start_1a
    iget-boolean v2, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    if-nez v2, :cond_44

    .line 1504
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/connectivity/Vpn;

    .line 1505
    if-eqz p1, :cond_44

    .line 1506
    invoke-virtual {p1}, Lcom/android/server/connectivity/Vpn;->getUnderlyingNetworks()[Landroid/net/Network;

    move-result-object p1

    .line 1507
    if-eqz p1, :cond_44

    .line 1508
    array-length v2, p1

    const/4 v3, 0x0

    :goto_30
    if-ge v3, v2, :cond_44

    aget-object v4, p1, v3

    .line 1509
    invoke-virtual {p0, v4}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v5

    .line 1510
    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityService;->getNetworkCapabilitiesInternal(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/NetworkCapabilities;

    move-result-object v5

    .line 1511
    if-eqz v5, :cond_41

    .line 1512
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 1518
    :cond_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_1a .. :try_end_45} :catchall_56

    .line 1520
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result p1

    new-array p1, p1, [Landroid/net/NetworkCapabilities;

    .line 1521
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/net/NetworkCapabilities;

    .line 1522
    return-object p1

    .line 1518
    :catchall_56
    move-exception p1

    :try_start_57
    monitor-exit v1
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw p1
.end method

.method public getDefaultRequest()Landroid/net/NetworkRequest;
    .registers 2

    .line 3894
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    return-object v0
.end method

.method public getGlobalProxy()Landroid/net/ProxyInfo;
    .registers 2

    .line 4351
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mProxyTracker:Lcom/android/server/connectivity/ProxyTracker;

    invoke-virtual {v0}, Lcom/android/server/connectivity/ProxyTracker;->getGlobalProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .registers 3

    .line 4046
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 4048
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4049
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->getLastTetherError(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 4051
    :cond_10
    const/4 p1, 0x3

    return p1
.end method

.method public getLatestTetheringEntitlementResult(ILandroid/os/ResultReceiver;ZLjava/lang/String;)V
    .registers 6

    .line 4177
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0, p4}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 4178
    iget-object p4, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {p4, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->getLatestTetheringEntitlementResult(ILandroid/os/ResultReceiver;Z)V

    .line 4179
    return-void
.end method

.method public getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;
    .registers 4

    .line 4536
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 4538
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4539
    :try_start_6
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {p1}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 4540
    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;
    .registers 2

    .line 1562
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1563
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/LinkProperties;

    move-result-object p1

    return-object p1
.end method

.method public getLinkPropertiesForType(I)Landroid/net/LinkProperties;
    .registers 4

    .line 1549
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1550
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object p1

    .line 1551
    if-eqz p1, :cond_18

    .line 1552
    monitor-enter p1

    .line 1553
    :try_start_c
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    monitor-exit p1

    return-object v0

    .line 1554
    :catchall_15
    move-exception v0

    monitor-exit p1
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_15

    throw v0

    .line 1556
    :cond_18
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMobileProvisioningUrl()Ljava/lang/String;
    .registers 6

    .line 4911
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 4912
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getProvisioningUrlBaseFromFile()Ljava/lang/String;

    move-result-object v0

    .line 4913
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 4914
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040448

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4915
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMobileProvisioningUrl: mobile_provisioining_url from resource ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_43

    .line 4917
    :cond_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMobileProvisioningUrl: mobile_provisioning_url from File ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4920
    :goto_43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_73

    .line 4921
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 4922
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 4923
    const-string v1, "0000000000"

    .line 4925
    :cond_57
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 4926
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 4927
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    .line 4925
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4931
    :cond_73
    return-object v0
.end method

.method public getMultipathPreference(Landroid/net/Network;)I
    .registers 4

    .line 3876
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 3878
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 3879
    if-eqz v0, :cond_15

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0xb

    .line 3880
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3881
    const/4 p1, 0x7

    return p1

    .line 3884
    :cond_15
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/MultipathPolicyTracker;->getMultipathPreference(Landroid/net/Network;)Ljava/lang/Integer;

    move-result-object p1

    .line 3885
    if-eqz p1, :cond_22

    .line 3886
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 3889
    :cond_22
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {p1}, Landroid/net/util/MultinetworkPolicyTracker;->getMeteredMultipathPreference()I

    move-result p1

    return p1
.end method

.method protected getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1206
    if-nez p1, :cond_4

    .line 1207
    const/4 p1, 0x0

    return-object p1

    .line 1209
    :cond_4
    iget p1, p1, Landroid/net/Network;->netId:I

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetId(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object p1

    return-object p1
.end method

.method public getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    .registers 2

    .line 1590
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1591
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkCapabilitiesInternal(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    return-object p1
.end method

.method public getNetworkForType(I)Landroid/net/Network;
    .registers 5

    .line 1451
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1452
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1453
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->getFilteredNetworkState(II)Landroid/net/NetworkState;

    move-result-object p1

    .line 1454
    iget-object v1, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/ConnectivityService;->isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;IZ)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1455
    iget-object p1, p1, Landroid/net/NetworkState;->network:Landroid/net/Network;

    return-object p1

    .line 1457
    :cond_17
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .registers 5

    .line 1401
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1402
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1403
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getVpnUnderlyingNetworks(I)[Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 1407
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    move-result-object v1

    .line 1408
    iget-object v2, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v2, :cond_24

    iget-object v2, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, p1, :cond_24

    .line 1409
    const/4 p1, 0x0

    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/ConnectivityService;->filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V

    .line 1410
    iget-object p1, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    return-object p1

    .line 1413
    :cond_24
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->getFilteredNetworkState(II)Landroid/net/NetworkState;

    move-result-object p1

    .line 1414
    iget-object p1, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method public getNetworkInfoForUid(Landroid/net/Network;IZ)Landroid/net/NetworkInfo;
    .registers 4

    .line 1419
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1420
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object p1

    .line 1421
    if-eqz p1, :cond_13

    .line 1422
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getNetworkState()Landroid/net/NetworkState;

    move-result-object p1

    .line 1423
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V

    .line 1424
    iget-object p1, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    return-object p1

    .line 1426
    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getNetworkStack()Landroid/net/NetworkStackClient;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5704
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWatchlistConfigHash()[B
    .registers 3

    .line 7189
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/NetworkWatchlistManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkWatchlistManager;

    .line 7190
    if-nez v0, :cond_13

    .line 7191
    const-string v0, "Unable to get NetworkWatchlistManager"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 7192
    const/4 v0, 0x0

    return-object v0

    .line 7195
    :cond_13
    invoke-virtual {v0}, Landroid/net/NetworkWatchlistManager;->getWatchlistConfigHash()[B

    move-result-object v0

    return-object v0
.end method

.method public getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;
    .registers 5

    .line 4309
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mProxyTracker:Lcom/android/server/connectivity/ProxyTracker;

    invoke-virtual {v0}, Lcom/android/server/connectivity/ProxyTracker;->getGlobalProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    .line 4310
    if-eqz v0, :cond_9

    return-object v0

    .line 4311
    :cond_9
    const/4 v0, 0x0

    if-nez p1, :cond_1d

    .line 4313
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/ConnectivityService;->getActiveNetworkForUidInternal(IZ)Landroid/net/Network;

    move-result-object p1

    .line 4315
    if-nez p1, :cond_18

    .line 4316
    return-object v0

    .line 4318
    :cond_18
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getLinkPropertiesProxyInfo(Landroid/net/Network;)Landroid/net/ProxyInfo;

    move-result-object p1

    return-object p1

    .line 4319
    :cond_1d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget v2, p1, Landroid/net/Network;->netId:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ConnectivityService;->queryUserAccess(II)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 4322
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getLinkPropertiesProxyInfo(Landroid/net/Network;)Landroid/net/ProxyInfo;

    move-result-object p1

    return-object p1

    .line 4325
    :cond_2e
    return-object v0
.end method

.method public getRestoreDefaultNetworkDelay(I)I
    .registers 5

    .line 2423
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    const-string v1, "android.telephony.apn-restore"

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/MockableSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2425
    if-eqz v0, :cond_16

    .line 2426
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_16

    .line 2428
    :try_start_10
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_14} :catch_15

    return p1

    .line 2429
    :catch_15
    move-exception v0

    .line 2433
    :cond_16
    const v0, 0xea60

    .line 2435
    const/16 v1, 0x12

    if-gt p1, v1, :cond_27

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v1, p1

    if-eqz v2, :cond_27

    .line 2437
    aget-object p1, v1, p1

    iget v0, p1, Landroid/net/NetworkConfig;->restoreTime:I

    .line 2439
    :cond_27
    return v0
.end method

.method protected getSystemProperties()Lcom/android/server/connectivity/MockableSystemProperties;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2384
    new-instance v0, Lcom/android/server/connectivity/MockableSystemProperties;

    invoke-direct {v0}, Lcom/android/server/connectivity/MockableSystemProperties;-><init>()V

    return-object v0
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .registers 2

    .line 4078
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 4079
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4080
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4082
    :cond_10
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .registers 2

    .line 4100
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 4101
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .registers 2

    .line 4058
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 4059
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4060
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4062
    :cond_10
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .registers 2

    .line 4068
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 4069
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4070
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4072
    :cond_10
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getTetheredDhcpRanges()[Ljava/lang/String;
    .registers 2

    .line 4118
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 4119
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetheredDhcpRanges()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .registers 2

    .line 4106
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 4107
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetheringErroredIfaces()[Ljava/lang/String;
    .registers 2

    .line 4112
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 4113
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getErroredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVpnConfig(I)Lcom/android/internal/net/VpnConfig;
    .registers 4

    .line 4614
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 4615
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4616
    :try_start_6
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/connectivity/Vpn;

    .line 4617
    if-eqz p1, :cond_16

    .line 4618
    invoke-virtual {p1}, Lcom/android/server/connectivity/Vpn;->getVpnConfig()Lcom/android/internal/net/VpnConfig;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 4620
    :cond_16
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    .line 4622
    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public getVpnLockdownWhitelist(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4818
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceControlAlwaysOnVpnPermission()V

    .line 4819
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 4821
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4822
    :try_start_9
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 4823
    if-nez v1, :cond_31

    .line 4824
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has no Vpn configuration"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4825
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    .line 4827
    :cond_31
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getLockdownWhitelist()Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 4828
    :catchall_37
    move-exception p1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_37

    throw p1
.end method

.method handleRestrictBackgroundChanged(Z)V
    .registers 10

    .line 1997
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mRestrictBackground:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 1999
    :cond_5
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2000
    iget-object v1, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->isMetered()Z

    move-result v5

    .line 2001
    iget-boolean v6, p0, Lcom/android/server/ConnectivityService;->mRestrictBackground:Z

    move-object v2, p0

    move v4, v5

    move v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/ConnectivityService;->maybeNotifyNetworkBlocked(Lcom/android/server/connectivity/NetworkAgentInfo;ZZZZ)V

    .line 2003
    goto :goto_f

    .line 2005
    :cond_2b
    iput-boolean p1, p0, Lcom/android/server/ConnectivityService;->mRestrictBackground:Z

    .line 2006
    return-void
.end method

.method handleUidRulesChanged(II)V
    .registers 5

    .line 1868
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1869
    if-ne v0, p2, :cond_a

    return-void

    .line 1871
    :cond_a
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 1872
    invoke-virtual {v1, v0}, Lcom/android/server/net/NetworkPolicyManagerInternal;->isNetworkingIsolatedByUidRules(I)Z

    move-result v0

    .line 1873
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 1874
    invoke-virtual {v1, p2}, Lcom/android/server/net/NetworkPolicyManagerInternal;->isNetworkingIsolatedByUidRules(I)Z

    move-result v1

    .line 1875
    if-eq v1, v0, :cond_21

    .line 1876
    if-eqz v1, :cond_1e

    .line 1877
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->setUidIsolated(I)V

    goto :goto_21

    .line 1879
    :cond_1e
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->clearUidIsolated(I)V

    .line 1883
    :cond_21
    :goto_21
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->maybeNotifyNetworkBlockedForNewUidRules(II)V

    .line 1885
    if-nez p2, :cond_2c

    .line 1886
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_31

    .line 1888
    :cond_2c
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1890
    :goto_31
    return-void
.end method

.method public handleUpdateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V
    .registers 5

    .line 6161
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->ensureRunningOnConnectivityServiceThread()V

    .line 6163
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v0, v0, Landroid/net/Network;->netId:I

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetId(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    if-eq v0, p1, :cond_e

    .line 6165
    return-void

    .line 6168
    :cond_e
    invoke-virtual {p2}, Landroid/net/LinkProperties;->ensureDirectlyConnectedRoutes()V

    .line 6169
    sget-boolean v0, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v0, :cond_19

    sget-boolean v0, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v0, :cond_45

    .line 6170
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

    .line 6174
    :cond_45
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/ConnectivityService;->updateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V

    .line 6175
    return-void
.end method

.method public hasService(Ljava/lang/String;)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 7210
    invoke-static {p1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public isActiveNetworkMetered()Z
    .registers 4

    .line 1648
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1650
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 1651
    const/4 v1, 0x1

    if-eqz v0, :cond_16

    .line 1652
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 1655
    :cond_16
    return v1
.end method

.method public isAlwaysOnVpnPackageSupported(ILjava/lang/String;)Z
    .registers 6

    .line 4745
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceSettingsPermission()V

    .line 4746
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 4748
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4749
    :try_start_9
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 4750
    if-nez v1, :cond_31

    .line 4751
    sget-object p2, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has no Vpn configuration"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4752
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 4754
    :cond_31
    invoke-virtual {v1, p2}, Lcom/android/server/connectivity/Vpn;->isAlwaysOnPackageSupported(Ljava/lang/String;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 4755
    :catchall_37
    move-exception p1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public isCallerCurrentAlwaysOnVpnApp()Z
    .registers 3

    .line 7346
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 7347
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getVpnIfOwner()Lcom/android/server/connectivity/Vpn;

    move-result-object v1

    .line 7348
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getAlwaysOn()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    monitor-exit v0

    return v1

    .line 7349
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public isCallerCurrentAlwaysOnVpnLockdownApp()Z
    .registers 3

    .line 7354
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 7355
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getVpnIfOwner()Lcom/android/server/connectivity/Vpn;

    move-result-object v1

    .line 7356
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getLockdown()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    monitor-exit v0

    return v1

    .line 7357
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method protected isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5635
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    if-ne p1, v0, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public isNetworkSupported(I)Z
    .registers 3

    .line 1527
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1528
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->isTypeSupported(I)Z

    move-result p1

    return p1
.end method

.method public isTetheringSupported(Ljava/lang/String;)Z
    .registers 3

    .line 4124
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 4125
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result p1

    return p1
.end method

.method public isVpnLockdownEnabled(I)Z
    .registers 6

    .line 4803
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceControlAlwaysOnVpnPermission()V

    .line 4804
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 4806
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4807
    :try_start_9
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 4808
    if-nez v1, :cond_31

    .line 4809
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has no Vpn configuration"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4810
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 4812
    :cond_31
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getLockdown()Z

    move-result p1

    monitor-exit v0

    return p1

    .line 4813
    :catchall_37
    move-exception p1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public synthetic lambda$factoryReset$6$ConnectivityService()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7125
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/IpMemoryStore;->getMemoryStore(Landroid/content/Context;)Landroid/net/IpMemoryStore;

    move-result-object v0

    .line 7126
    invoke-virtual {v0}, Landroid/net/IpMemoryStore;->factoryReset()V

    .line 7127
    return-void
.end method

.method public synthetic lambda$new$0$ConnectivityService()V
    .registers 1

    .line 1042
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->rematchForAvoidBadWifiUpdate()V

    return-void
.end method

.method public synthetic lambda$setUnderlyingNetworksForVpn$5$ConnectivityService()V
    .registers 1

    .line 7054
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->updateAllVpnsCapabilities()V

    .line 7055
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChangedForNetworkStats()V

    .line 7056
    return-void
.end method

.method public synthetic lambda$startCaptivePortalApp$3$ConnectivityService(Landroid/net/Network;)V
    .registers 4

    .line 3634
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object p1

    .line 3635
    if-nez p1, :cond_7

    return-void

    .line 3636
    :cond_7
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    .line 3637
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor()Landroid/net/NetworkMonitorManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkMonitorManager;->launchCaptivePortalApp()Z

    .line 3638
    return-void
.end method

.method public synthetic lambda$startCaptivePortalAppInternal$4$ConnectivityService(Landroid/content/Intent;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3667
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;
    .registers 8

    .line 5476
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->hasWifiNetworkListenPermission(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 5477
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 5480
    :cond_9
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 5481
    nop

    .line 5482
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 5481
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/ConnectivityService;->ensureSufficientPermissionsForRequest(Landroid/net/NetworkCapabilities;II)V

    .line 5483
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->restrictRequestUidsForCaller(Landroid/net/NetworkCapabilities;)V

    .line 5489
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->restrictBackgroundRequestForCaller(Landroid/net/NetworkCapabilities;)V

    .line 5490
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->ensureValidNetworkSpecifier(Landroid/net/NetworkCapabilities;)V

    .line 5492
    new-instance p1, Landroid/net/NetworkRequest;

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    move-result v2

    sget-object v3, Landroid/net/NetworkRequest$Type;->LISTEN:Landroid/net/NetworkRequest$Type;

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V

    .line 5494
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;)V

    .line 5495
    sget-boolean p2, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz p2, :cond_4c

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "listenForNetwork for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5497
    :cond_4c
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 p3, 0x15

    invoke-virtual {p2, p3, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5498
    return-object p1
.end method

.method protected makeProxyTracker()Lcom/android/server/connectivity/ProxyTracker;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1071
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

    .line 1054
    new-instance v7, Lcom/android/server/ConnectivityService$2;

    invoke-direct {v7, p0}, Lcom/android/server/ConnectivityService$2;-><init>(Lcom/android/server/ConnectivityService;)V

    .line 1064
    new-instance v8, Lcom/android/server/connectivity/Tethering;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mStatsService:Landroid/net/INetworkStatsService;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 1065
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    new-instance v6, Lcom/android/server/connectivity/MockableSystemProperties;

    invoke-direct {v6}, Lcom/android/server/connectivity/MockableSystemProperties;-><init>()V

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/connectivity/Tethering;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;Landroid/os/Looper;Lcom/android/server/connectivity/MockableSystemProperties;Lcom/android/server/connectivity/tethering/TetheringDependencies;)V

    .line 1064
    return-object v8
.end method

.method public makeWakeupMessage(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ILjava/lang/Object;)Lcom/android/internal/util/WakeupMessage;
    .registers 15
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 7205
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

    .line 7215
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

    .line 6833
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, p2}, Lcom/android/server/ConnectivityService$InternalHandler;->removeMessages(ILjava/lang/Object;)V

    .line 6834
    iget-object v0, p2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    const v1, 0x80002

    if-eqz v0, :cond_12

    .line 6835
    invoke-direct {p0, p2, p1, v1}, Lcom/android/server/ConnectivityService;->sendPendingIntentForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 6837
    return-void

    .line 6840
    :cond_12
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->isMetered()Z

    move-result v0

    .line 6841
    iget v2, p2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    iget v4, p2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    iget-boolean v4, p0, Lcom/android/server/ConnectivityService;->mRestrictBackground:Z

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/android/server/ConnectivityService;->isUidNetworkingWithVpnBlocked(IIZZ)Z

    move-result v0

    .line 6843
    invoke-direct {p0, p2, p1, v1, v0}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 6844
    return-void
.end method

.method protected notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .registers 4

    .line 6979
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 6980
    return-void
.end method

.method protected notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;II)V
    .registers 9

    .line 6960
    sget-boolean v0, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v0, :cond_2d

    .line 6961
    :cond_8
    invoke-static {p2}, Landroid/net/ConnectivityManager;->getCallbackName(I)Ljava/lang/String;

    move-result-object v0

    .line 6962
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6964
    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v1

    if-ge v0, v1, :cond_66

    .line 6965
    invoke-virtual {p1, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v1

    .line 6966
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 6967
    sget-boolean v3, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v3, :cond_58

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " sending notification for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6970
    :cond_58
    iget-object v1, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_60

    .line 6971
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    goto :goto_63

    .line 6973
    :cond_60
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/ConnectivityService;->sendPendingIntentForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 6964
    :goto_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 6976
    :cond_66
    return-void
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .line 6230
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Finished sending "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6231
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6234
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->releasePendingNetworkRequestWithDelay(Landroid/app/PendingIntent;)V

    .line 6235
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 7236
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

    .line 7237
    return-void
.end method

.method public pendingListenForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)V
    .registers 7

    .line 5504
    const-string v0, "PendingIntent cannot be null."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5505
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->hasWifiNetworkListenPermission(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 5506
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 5508
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->ensureValidNetworkSpecifier(Landroid/net/NetworkCapabilities;)V

    .line 5509
    nop

    .line 5510
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5509
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/ConnectivityService;->ensureSufficientPermissionsForRequest(Landroid/net/NetworkCapabilities;II)V

    .line 5512
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 5513
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->restrictRequestUidsForCaller(Landroid/net/NetworkCapabilities;)V

    .line 5515
    new-instance p1, Landroid/net/NetworkRequest;

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    move-result v2

    sget-object v3, Landroid/net/NetworkRequest$Type;->LISTEN:Landroid/net/NetworkRequest$Type;

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V

    .line 5517
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;Landroid/app/PendingIntent;)V

    .line 5518
    sget-boolean p1, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz p1, :cond_4f

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "pendingListenForNetwork for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5520
    :cond_4f
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 p2, 0x15

    invoke-virtual {p1, p2, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5521
    return-void
.end method

.method public pendingRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)Landroid/net/NetworkRequest;
    .registers 7

    .line 5419
    const-string v0, "PendingIntent cannot be null."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5420
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 5421
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->enforceNetworkRequestPermissions(Landroid/net/NetworkCapabilities;)V

    .line 5422
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->enforceMeteredApnPolicy(Landroid/net/NetworkCapabilities;)V

    .line 5423
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->ensureRequestableCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 5424
    nop

    .line 5425
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5424
    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/ConnectivityService;->ensureSufficientPermissionsForRequest(Landroid/net/NetworkCapabilities;II)V

    .line 5426
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->ensureValidNetworkSpecifier(Landroid/net/NetworkCapabilities;)V

    .line 5427
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->restrictRequestUidsForCaller(Landroid/net/NetworkCapabilities;)V

    .line 5429
    new-instance p1, Landroid/net/NetworkRequest;

    .line 5430
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    move-result v1

    sget-object v2, Landroid/net/NetworkRequest$Type;->REQUEST:Landroid/net/NetworkRequest$Type;

    const/4 v3, -0x1

    invoke-direct {p1, v0, v3, v1, v2}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V

    .line 5431
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;Landroid/app/PendingIntent;)V

    .line 5432
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pendingRequest for "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5433
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x1a

    invoke-virtual {p2, v1, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5435
    return-object p1
.end method

.method public prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 6

    .line 4438
    invoke-direct {p0, p3}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 4440
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4441
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 4442
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/connectivity/Vpn;

    .line 4443
    if-eqz p3, :cond_19

    .line 4444
    invoke-virtual {p3, p1, p2}, Lcom/android/server/connectivity/Vpn;->prepare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 4446
    :cond_19
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 4448
    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method protected queryUserAccess(II)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4330
    invoke-static {p1, p2}, Landroid/net/NetworkUtils;->queryUserAccess(II)Z

    move-result p1

    return p1
.end method

.method protected registerNetdEventCallback()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1827
    nop

    .line 1829
    const-string v0, "connmetrics"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1828
    invoke-static {v0}, Landroid/net/IIpConnectivityMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpConnectivityMetrics;

    move-result-object v0

    .line 1830
    if-nez v0, :cond_15

    .line 1831
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const-string v1, "Missing IIpConnectivityMetrics"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    return-void

    .line 1836
    :cond_15
    const/4 v1, 0x0

    :try_start_16
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    invoke-interface {v0, v1, v2}, Landroid/net/IIpConnectivityMetrics;->addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_1c

    .line 1841
    goto :goto_31

    .line 1839
    :catch_1c
    move-exception v0

    .line 1840
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error registering netd callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1842
    :goto_31
    return-void
.end method

.method public registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)I
    .registers 15

    .line 5649
    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/ConnectivityService;->registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;I)I

    move-result p1

    return p1
.end method

.method public registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;I)I
    .registers 27

    .line 5671
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 5673
    new-instance v6, Landroid/net/LinkProperties;

    move-object/from16 v1, p3

    invoke-direct {v6, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 5674
    invoke-virtual {v6}, Landroid/net/LinkProperties;->ensureDirectlyConnectedRoutes()V

    .line 5677
    new-instance v15, Landroid/net/NetworkCapabilities;

    move-object/from16 v1, p4

    invoke-direct {v15, v1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 5678
    new-instance v14, Lcom/android/server/connectivity/NetworkAgentInfo;

    new-instance v3, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v3}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    new-instance v4, Landroid/net/Network;

    .line 5679
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->reserveNetId()I

    move-result v1

    invoke-direct {v4, v1}, Landroid/net/Network;-><init>(I)V

    new-instance v5, Landroid/net/NetworkInfo;

    move-object/from16 v13, p2

    invoke-direct {v5, v13}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    iget-object v9, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v10, v0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    new-instance v11, Landroid/net/NetworkMisc;

    move-object/from16 v1, p6

    invoke-direct {v11, v1}, Landroid/net/NetworkMisc;-><init>(Landroid/net/NetworkMisc;)V

    iget-object v12, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/net/INetd;

    iget-object v8, v0, Lcom/android/server/ConnectivityService;->mDnsResolver:Landroid/net/IDnsResolver;

    iget-object v7, v0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v16, v7

    move-object v7, v15

    move-object/from16 v17, v8

    move/from16 v8, p5

    move-object/from16 v18, v12

    move-object/from16 v12, p0

    move-object/from16 v13, v18

    move-object v0, v14

    move-object/from16 v14, v17

    move-object/from16 p1, v0

    move-object v0, v15

    move-object/from16 v15, v16

    move/from16 v16, p7

    invoke-direct/range {v1 .. v16}, Lcom/android/server/connectivity/NetworkAgentInfo;-><init>(Landroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;Landroid/net/Network;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/content/Context;Landroid/os/Handler;Landroid/net/NetworkMisc;Lcom/android/server/ConnectivityService;Landroid/net/INetd;Landroid/net/IDnsResolver;Landroid/os/INetworkManagementService;I)V

    .line 5683
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v1, v2, v0}, Lcom/android/server/ConnectivityService;->mixInCapabilities(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->setNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 5684
    invoke-virtual/range {p2 .. p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 5685
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 5686
    iget-object v0, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_78

    :cond_77
    nop

    .line 5687
    :goto_78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerNetworkAgent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5688
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 5690
    :try_start_91
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getNetworkStack()Landroid/net/NetworkStackClient;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    new-instance v7, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;

    const/4 v8, 0x0

    invoke-direct {v7, v1, v2, v8}, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;-><init>(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$1;)V

    invoke-virtual {v5, v6, v0, v7}, Landroid/net/NetworkStackClient;->makeNetworkMonitor(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V
    :try_end_a0
    .catchall {:try_start_91 .. :try_end_a0} :catchall_a9

    .line 5693
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5694
    nop

    .line 5699
    iget-object v0, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v0, v0, Landroid/net/Network;->netId:I

    return v0

    .line 5693
    :catchall_a9
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)I
    .registers 6

    .line 5532
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 5533
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 5534
    invoke-static {}, Landroid/net/NetworkFactory$SerialNumber;->nextSerialNumber()I

    move-result v2

    invoke-direct {v0, p2, p1, v1, v2}, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;-><init>(Ljava/lang/String;Landroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;I)V

    .line 5535
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 p2, 0x11

    invoke-virtual {p1, p2, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5536
    iget p1, v0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->factorySerialNumber:I

    return p1
.end method

.method public registerTetheringEventCallback(Landroid/net/ITetheringEventCallback;Ljava/lang/String;)V
    .registers 4

    .line 4185
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 4186
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {p2, p1}, Lcom/android/server/connectivity/Tethering;->registerTetheringEventCallback(Landroid/net/ITetheringEventCallback;)V

    .line 4187
    return-void
.end method

.method public releaseNetworkRequest(Landroid/net/NetworkRequest;)V
    .registers 6

    .line 5525
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->ensureNetworkRequestHasType(Landroid/net/NetworkRequest;)V

    .line 5526
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 5527
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v1

    .line 5526
    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5528
    return-void
.end method

.method public releasePendingNetworkRequest(Landroid/app/PendingIntent;)V
    .registers 6

    .line 5446
    const-string v0, "PendingIntent cannot be null."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5447
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 5448
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v1

    .line 5447
    const/16 v2, 0x1b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5449
    return-void
.end method

.method public removeVpnAddress(Ljava/lang/String;I)Z
    .registers 6

    .line 7036
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 7037
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 7038
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 7039
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/connectivity/Vpn;->removeAddress(Ljava/lang/String;I)Z

    move-result p1

    monitor-exit v1

    return p1

    .line 7040
    :catchall_1c
    move-exception p1

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public reportInetCondition(II)V
    .registers 4

    .line 4252
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object p1

    .line 4253
    if-nez p1, :cond_9

    return-void

    .line 4254
    :cond_9
    iget-object p1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    const/16 v0, 0x32

    if-le p2, v0, :cond_11

    const/4 p2, 0x1

    goto :goto_12

    :cond_11
    const/4 p2, 0x0

    :goto_12
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ConnectivityService;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    .line 4255
    return-void
.end method

.method public reportNetworkConnectivity(Landroid/net/Network;Z)V
    .registers 6

    .line 4259
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 4260
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceInternetPermission()V

    .line 4261
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4262
    invoke-static {p2}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result p2

    .line 4263
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 4264
    const/16 v2, 0x24

    invoke-virtual {v1, v2, v0, p2, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4263
    invoke-virtual {v1, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4265
    return-void
.end method

.method public requestBandwidthUpdate(Landroid/net/Network;)Z
    .registers 6

    .line 5373
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 5374
    nop

    .line 5375
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 5376
    return v0

    .line 5378
    :cond_8
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v1

    .line 5379
    :try_start_b
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    iget p1, p1, Landroid/net/Network;->netId:I

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 5380
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_4b

    .line 5381
    if-eqz p1, :cond_4a

    .line 5382
    iget-object p1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x8100a

    invoke-virtual {p1, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 5383
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mBandwidthRequests:Landroid/util/SparseArray;

    monitor-enter p1

    .line 5384
    :try_start_23
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5385
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mBandwidthRequests:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 5386
    if-nez v2, :cond_36

    .line 5387
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 5389
    :cond_36
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mBandwidthRequests:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5390
    monitor-exit p1

    .line 5391
    return v3

    .line 5390
    :catchall_47
    move-exception v0

    monitor-exit p1
    :try_end_49
    .catchall {:try_start_23 .. :try_end_49} :catchall_47

    throw v0

    .line 5393
    :cond_4a
    return v0

    .line 5380
    :catchall_4b
    move-exception p1

    :try_start_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw p1
.end method

.method public requestNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;ILandroid/os/IBinder;I)Landroid/net/NetworkRequest;
    .registers 9

    .line 5318
    if-nez p1, :cond_5

    .line 5319
    sget-object v0, Landroid/net/NetworkRequest$Type;->TRACK_DEFAULT:Landroid/net/NetworkRequest$Type;

    goto :goto_7

    .line 5320
    :cond_5
    sget-object v0, Landroid/net/NetworkRequest$Type;->REQUEST:Landroid/net/NetworkRequest$Type;

    .line 5324
    :goto_7
    sget-object v1, Landroid/net/NetworkRequest$Type;->TRACK_DEFAULT:Landroid/net/NetworkRequest$Type;

    if-ne v0, v1, :cond_17

    .line 5325
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->createDefaultNetworkCapabilitiesForUid(I)Landroid/net/NetworkCapabilities;

    move-result-object p1

    .line 5326
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    goto :goto_23

    .line 5328
    :cond_17
    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 5329
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->enforceNetworkRequestPermissions(Landroid/net/NetworkCapabilities;)V

    .line 5333
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->enforceMeteredApnPolicy(Landroid/net/NetworkCapabilities;)V

    move-object p1, v1

    .line 5335
    :goto_23
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->ensureRequestableCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 5336
    nop

    .line 5337
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 5336
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/ConnectivityService;->ensureSufficientPermissionsForRequest(Landroid/net/NetworkCapabilities;II)V

    .line 5343
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->restrictRequestUidsForCaller(Landroid/net/NetworkCapabilities;)V

    .line 5345
    if-ltz p3, :cond_77

    .line 5348
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->ensureValidNetworkSpecifier(Landroid/net/NetworkCapabilities;)V

    .line 5350
    new-instance v1, Landroid/net/NetworkRequest;

    .line 5351
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    move-result v2

    invoke-direct {v1, p1, p5, v2, v0}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V

    .line 5352
    new-instance p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-direct {p1, p0, p2, v1, p4}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;)V

    .line 5353
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "requestNetwork for "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5355
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 p4, 0x13

    invoke-virtual {p2, p4, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5356
    if-lez p3, :cond_76

    .line 5357
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 p4, 0x14

    invoke-virtual {p2, p4, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long p3, p3

    invoke-virtual {p2, p1, p3, p4}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5360
    :cond_76
    return-object v1

    .line 5346
    :cond_77
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad timeout specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestRouteToHostAddress(I[B)Z
    .registers 8

    .line 1695
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->disallowedBecauseSystemCaller()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1696
    return v1

    .line 1698
    :cond_8
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 1699
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1700
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1705
    :cond_1a
    :try_start_1a
    invoke-static {p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p2
    :try_end_1e
    .catch Ljava/net/UnknownHostException; {:try_start_1a .. :try_end_1e} :catch_e2

    .line 1709
    nop

    .line 1711
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1712
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "requestRouteToHostAddress on invalid network: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1713
    return v1

    .line 1716
    :cond_3b
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 1717
    if-nez v0, :cond_77

    .line 1718
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {p2, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->isTypeSupported(I)Z

    move-result p2

    if-nez p2, :cond_61

    .line 1719
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "requestRouteToHostAddress on unsupported network: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_76

    .line 1721
    :cond_61
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "requestRouteToHostAddress on down network: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1723
    :goto_76
    return v1

    .line 1727
    :cond_77
    monitor-enter v0

    .line 1728
    :try_start_78
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    .line 1729
    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_78 .. :try_end_7f} :catchall_df

    .line 1731
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v2, v3, :cond_a9

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v2, v3, :cond_a9

    .line 1732
    sget-boolean p2, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz p2, :cond_a8

    .line 1733
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "requestRouteToHostAddress on down network ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") - dropped netState="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1737
    :cond_a8
    return v1

    .line 1740
    :cond_a9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 1741
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1745
    :try_start_b1
    monitor-enter v0
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_da

    .line 1746
    :try_start_b2
    iget-object v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 1747
    iget-object v4, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v4, v4, Landroid/net/Network;->netId:I

    .line 1748
    monitor-exit v0
    :try_end_b9
    .catchall {:try_start_b2 .. :try_end_b9} :catchall_d7

    .line 1749
    :try_start_b9
    invoke-direct {p0, v3, p2, v4, p1}, Lcom/android/server/ConnectivityService;->addLegacyRouteToHost(Landroid/net/LinkProperties;Ljava/net/InetAddress;II)Z

    move-result p1

    .line 1750
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "requestRouteToHostAddress ok="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_d2
    .catchall {:try_start_b9 .. :try_end_d2} :catchall_da

    .line 1751
    nop

    .line 1753
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1751
    return p1

    .line 1748
    :catchall_d7
    move-exception p1

    :try_start_d8
    monitor-exit v0
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_d7

    :try_start_d9
    throw p1
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_da

    .line 1753
    :catchall_da
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 1729
    :catchall_df
    move-exception p1

    :try_start_e0
    monitor-exit v0
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_df

    throw p1

    .line 1706
    :catch_e2
    move-exception p1

    .line 1707
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "requestRouteToHostAddress got "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1708
    return v1
.end method

.method protected reserveNetId()I
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1165
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1166
    const/16 v1, 0x64

    move v2, v1

    :goto_6
    const v3, 0xfbff

    if-gt v2, v3, :cond_29

    .line 1167
    :try_start_b
    iget v4, p0, Lcom/android/server/ConnectivityService;->mNextNetId:I

    .line 1168
    iget v5, p0, Lcom/android/server/ConnectivityService;->mNextNetId:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/server/ConnectivityService;->mNextNetId:I

    if-le v5, v3, :cond_17

    iput v1, p0, Lcom/android/server/ConnectivityService;->mNextNetId:I

    .line 1170
    :cond_17
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_26

    .line 1171
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v4, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1172
    monitor-exit v0

    return v4

    .line 1166
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1175
    :cond_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_b .. :try_end_2a} :catchall_32

    .line 1176
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No free netIds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1175
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public sendConnectedBroadcast(Landroid/net/NetworkInfo;)V
    .registers 3

    .line 2156
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 2157
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 2158
    return-void
.end method

.method protected sendLegacyNetworkBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 6920
    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 6921
    invoke-virtual {v0, p3}, Landroid/net/NetworkInfo;->setType(I)V

    .line 6922
    sget-object p3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v1, 0x0

    if-eq p2, p3, :cond_1b

    .line 6923
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, v1, p1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 6924
    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    goto/16 :goto_9f

    .line 6926
    :cond_1b
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, p3, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 6927
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6928
    const-string/jumbo p3, "networkInfo"

    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6929
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result p3

    const-string/jumbo v2, "networkType"

    invoke-virtual {p2, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6930
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result p3

    const/4 v2, 0x1

    if-eqz p3, :cond_4f

    .line 6931
    const-string p3, "isFailover"

    invoke-virtual {p2, p3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6932
    iget-object p3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 6934
    :cond_4f
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_5f

    .line 6935
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v3, "reason"

    invoke-virtual {p2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6937
    :cond_5f
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_6e

    .line 6938
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p3

    const-string v0, "extraInfo"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6940
    :cond_6e
    nop

    .line 6941
    iget-object p3, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    iget p3, p3, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {p1, p3}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSatisfyingRequest(I)Z

    move-result p1

    if-eqz p1, :cond_8e

    .line 6942
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 6943
    if-eqz v1, :cond_88

    .line 6944
    iget-object p1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    const-string/jumbo p3, "otherNetwork"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_8e

    .line 6947
    :cond_88
    const-string/jumbo p1, "noConnectivity"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6950
    :cond_8e
    :goto_8e
    iget p1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    const-string p3, "inetCondition"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6952
    invoke-direct {p0, p2}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 6953
    if-eqz v1, :cond_9f

    .line 6954
    iget-object p1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    .line 6957
    :cond_9f
    :goto_9f
    return-void
.end method

.method public setAcceptPartialConnectivity(Landroid/net/Network;ZZ)V
    .registers 6

    .line 3510
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceNetworkStackSettingsOrSetup()V

    .line 3511
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 3512
    invoke-static {p2}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result p2

    invoke-static {p3}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result p3

    .line 3511
    const/16 v1, 0x2d

    invoke-virtual {v0, v1, p2, p3, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3513
    return-void
.end method

.method public setAcceptUnvalidated(Landroid/net/Network;ZZ)V
    .registers 6

    .line 3503
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceNetworkStackSettingsOrSetup()V

    .line 3504
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 3505
    invoke-static {p2}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result p2

    invoke-static {p3}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result p3

    .line 3504
    const/16 v1, 0x1c

    invoke-virtual {v0, v1, p2, p3, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3506
    return-void
.end method

.method public setAirplaneMode(Z)V
    .registers 7

    .line 4953
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceNetworkStackSettingsOrSetup()V

    .line 4954
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4956
    :try_start_7
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4957
    const-string v3, "airplane_mode_on"

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4958
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4959
    const-string/jumbo v3, "state"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4960
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_2f

    .line 4962
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4963
    nop

    .line 4964
    return-void

    .line 4962
    :catchall_2f
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setAlwaysOnVpnPackage(ILjava/lang/String;ZLjava/util/List;)Z
    .registers 8
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

    .line 4761
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceControlAlwaysOnVpnPermission()V

    .line 4762
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 4764
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4766
    :try_start_9
    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 4767
    monitor-exit v0

    return v2

    .line 4770
    :cond_12
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 4771
    if-nez v1, :cond_39

    .line 4772
    sget-object p2, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "User "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has no Vpn configuration"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4773
    monitor-exit v0

    return v2

    .line 4775
    :cond_39
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;ZLjava/util/List;)Z

    move-result p2

    if-nez p2, :cond_41

    .line 4776
    monitor-exit v0

    return v2

    .line 4778
    :cond_41
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->startAlwaysOnVpn(I)Z

    move-result p1

    if-nez p1, :cond_4d

    .line 4779
    const/4 p1, 0x0

    invoke-virtual {v1, p1, v2, p1}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;ZLjava/util/List;)Z

    .line 4780
    monitor-exit v0

    return v2

    .line 4782
    :cond_4d
    monitor-exit v0

    .line 4783
    const/4 p1, 0x1

    return p1

    .line 4782
    :catchall_50
    move-exception p1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_9 .. :try_end_52} :catchall_50

    throw p1
.end method

.method public setAvoidUnvalidated(Landroid/net/Network;)V
    .registers 4

    .line 3517
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceNetworkStackSettingsOrSetup()V

    .line 3518
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x23

    invoke-virtual {v0, v1, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3519
    return-void
.end method

.method public setGlobalProxy(Landroid/net/ProxyInfo;)V
    .registers 3

    .line 4344
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 4345
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mProxyTracker:Lcom/android/server/connectivity/ProxyTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/ProxyTracker;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    .line 4346
    return-void
.end method

.method public setProvisioningNotificationVisible(ZILjava/lang/String;)V
    .registers 7

    .line 4937
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 4938
    invoke-static {p2}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 4939
    return-void

    .line 4941
    :cond_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4944
    const v2, 0xfc00

    add-int/lit8 p2, p2, 0x1

    add-int/2addr p2, v2

    .line 4945
    :try_start_14
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/connectivity/NetworkNotificationManager;->setProvNotificationVisible(ZILjava/lang/String;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_1e

    .line 4947
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4948
    nop

    .line 4949
    return-void

    .line 4947
    :catchall_1e
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setUnderlyingNetworksForVpn([Landroid/net/Network;)Z
    .registers 5

    .line 7045
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 7047
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 7048
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 7049
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Vpn;->setUnderlyingNetworks([Landroid/net/Network;)Z

    move-result p1

    .line 7050
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_28

    .line 7051
    if-eqz p1, :cond_27

    .line 7052
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    new-instance v1, Lcom/android/server/-$$Lambda$ConnectivityService$tyyIxrN1UBdbonRFAT6eEH4wVic;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$ConnectivityService$tyyIxrN1UBdbonRFAT6eEH4wVic;-><init>(Lcom/android/server/ConnectivityService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->post(Ljava/lang/Runnable;)Z

    .line 7058
    :cond_27
    return p1

    .line 7050
    :catchall_28
    move-exception p1

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public setUsbTethering(ZLjava/lang/String;)I
    .registers 4

    .line 4088
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 4089
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result p2

    if-eqz p2, :cond_12

    .line 4090
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {p2, p1}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    move-result p1

    return p1

    .line 4092
    :cond_12
    const/4 p1, 0x3

    return p1
.end method

.method public setVpnPackageAuthorization(Ljava/lang/String;IZ)V
    .registers 6

    .line 4466
    invoke-direct {p0, p2}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 4468
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4469
    :try_start_6
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/connectivity/Vpn;

    .line 4470
    if-eqz p2, :cond_13

    .line 4471
    invoke-virtual {p2, p1, p3}, Lcom/android/server/connectivity/Vpn;->setPackageAuthorization(Ljava/lang/String;Z)Z

    .line 4473
    :cond_13
    monitor-exit v0

    .line 4474
    return-void

    .line 4473
    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public shouldAvoidBadWifi()Z
    .registers 3

    .line 3711
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->checkNetworkStackPermission()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3714
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->avoidBadWifi()Z

    move-result v0

    return v0

    .line 3712
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "avoidBadWifi requires NETWORK_STACK permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startCaptivePortalApp(Landroid/net/Network;)V
    .registers 4

    .line 3632
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 3633
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    new-instance v1, Lcom/android/server/-$$Lambda$ConnectivityService$OIhIcUZjeJ-ci4rP6veezE8o67U;

    invoke-direct {v1, p0, p1}, Lcom/android/server/-$$Lambda$ConnectivityService$OIhIcUZjeJ-ci4rP6veezE8o67U;-><init>(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->post(Ljava/lang/Runnable;)Z

    .line 3639
    return-void
.end method

.method public startCaptivePortalAppInternal(Landroid/net/Network;Landroid/os/Bundle;)V
    .registers 6

    .line 3651
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MAINLINE_NETWORK_STACK"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3654
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.CAPTIVE_PORTAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3655
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3656
    new-instance p2, Landroid/net/CaptivePortal;

    new-instance v1, Lcom/android/server/ConnectivityService$CaptivePortalImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/ConnectivityService$CaptivePortalImpl;-><init>(Lcom/android/server/ConnectivityService;Landroid/net/Network;Lcom/android/server/ConnectivityService$1;)V

    .line 3657
    invoke-virtual {v1}, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/net/CaptivePortal;-><init>(Landroid/os/IBinder;)V

    .line 3656
    const-string v1, "android.net.extra.CAPTIVE_PORTAL"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3658
    const/high16 p2, 0x10400000

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3662
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object p1

    .line 3663
    if-eqz p1, :cond_35

    .line 3664
    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->captivePortalValidationPending:Z

    .line 3666
    :cond_35
    new-instance p1, Lcom/android/server/-$$Lambda$ConnectivityService$vGRhfNpFTw0hellWUlmBolfzRy8;

    invoke-direct {p1, p0, v0}, Lcom/android/server/-$$Lambda$ConnectivityService$vGRhfNpFTw0hellWUlmBolfzRy8;-><init>(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 3668
    return-void
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    .registers 6

    .line 4518
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4519
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 4520
    if-eqz v1, :cond_26

    .line 4523
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 4524
    :try_start_11
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 4525
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Vpn;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0, p1, v3, v1}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V

    .line 4526
    monitor-exit v2

    .line 4527
    return-void

    .line 4526
    :catchall_23
    move-exception p1

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_23

    throw p1

    .line 4521
    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Missing active network connection"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startNattKeepalive(Landroid/net/Network;ILandroid/net/ISocketKeepaliveCallback;Ljava/lang/String;ILjava/lang/String;)V
    .registers 16

    .line 7083
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceKeepalivePermission()V

    .line 7084
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    .line 7085
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 7084
    const/4 v2, 0x0

    const/16 v8, 0x1194

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/connectivity/KeepaliveTracker;->startNattKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/io/FileDescriptor;ILandroid/net/ISocketKeepaliveCallback;Ljava/lang/String;ILjava/lang/String;I)V

    .line 7088
    return-void
.end method

.method public startNattKeepaliveWithFd(Landroid/net/Network;Ljava/io/FileDescriptor;IILandroid/net/ISocketKeepaliveCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 17

    .line 7094
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    .line 7095
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    .line 7094
    const/16 v8, 0x1194

    move-object v0, v1

    move-object v1, v2

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/connectivity/KeepaliveTracker;->startNattKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/io/FileDescriptor;IILandroid/net/ISocketKeepaliveCallback;Ljava/lang/String;Ljava/lang/String;I)V

    .line 7098
    return-void
.end method

.method public startOrGetTestNetworkService()Landroid/os/IBinder;
    .registers 5

    .line 7367
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTNSLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7368
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/TestNetworkService;->enforceTestNetworkPermissions(Landroid/content/Context;)V

    .line 7370
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mTNS:Lcom/android/server/TestNetworkService;

    if-nez v1, :cond_17

    .line 7371
    new-instance v1, Lcom/android/server/TestNetworkService;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    invoke-direct {v1, v2, v3}, Lcom/android/server/TestNetworkService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;)V

    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mTNS:Lcom/android/server/TestNetworkService;

    .line 7374
    :cond_17
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mTNS:Lcom/android/server/TestNetworkService;

    monitor-exit v0

    return-object v1

    .line 7375
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public startTcpKeepalive(Landroid/net/Network;Ljava/io/FileDescriptor;ILandroid/net/ISocketKeepaliveCallback;)V
    .registers 6

    .line 7103
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceKeepalivePermission()V

    .line 7104
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    .line 7105
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object p1

    .line 7104
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/connectivity/KeepaliveTracker;->startTcpKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/io/FileDescriptor;ILandroid/net/ISocketKeepaliveCallback;)V

    .line 7106
    return-void
.end method

.method public startTethering(ILandroid/os/ResultReceiver;ZLjava/lang/String;)V
    .registers 6

    .line 4153
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0, p4}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 4154
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result p4

    if-nez p4, :cond_11

    .line 4155
    const/4 p1, 0x3

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 4156
    return-void

    .line 4158
    :cond_11
    iget-object p4, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {p4, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->startTethering(ILandroid/os/ResultReceiver;Z)V

    .line 4159
    return-void
.end method

.method public stopKeepalive(Landroid/net/Network;I)V
    .registers 6

    .line 7110
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const v1, 0x8100c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7112
    return-void
.end method

.method public stopTethering(ILjava/lang/String;)V
    .registers 4

    .line 4163
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 4164
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {p2, p1}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    .line 4165
    return-void
.end method

.method systemReady()V
    .registers 4

    .line 2250
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mProxyTracker:Lcom/android/server/connectivity/ProxyTracker;

    invoke-virtual {v0}, Lcom/android/server/connectivity/ProxyTracker;->loadGlobalProxy()V

    .line 2251
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->registerNetdEventCallback()V

    .line 2252
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->systemReady()V

    .line 2254
    monitor-enter p0

    .line 2255
    const/4 v0, 0x1

    :try_start_f
    iput-boolean v0, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    .line 2256
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    if-eqz v0, :cond_21

    .line 2257
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    .line 2260
    :cond_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_41

    .line 2264
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->updateLockdownVpn()Z

    .line 2267
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2269
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2271
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-virtual {v0}, Lcom/android/server/connectivity/PermissionMonitor;->startMonitoring()V

    .line 2272
    return-void

    .line 2260
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

    .line 4023
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 4024
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result p2

    if-eqz p2, :cond_12

    .line 4025
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {p2, p1}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 4027
    :cond_12
    const/4 p1, 0x3

    return p1
.end method

.method public unregisterNetworkFactory(Landroid/os/Messenger;)V
    .registers 4

    .line 5547
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 5548
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5549
    return-void
.end method

.method public unregisterTetheringEventCallback(Landroid/net/ITetheringEventCallback;Ljava/lang/String;)V
    .registers 4

    .line 4193
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 4194
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {p2, p1}, Lcom/android/server/connectivity/Tethering;->unregisterTetheringEventCallback(Landroid/net/ITetheringEventCallback;)V

    .line 4195
    return-void
.end method

.method public untether(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 4034
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 4036
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result p2

    if-eqz p2, :cond_12

    .line 4037
    iget-object p2, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {p2, p1}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 4039
    :cond_12
    const/4 p1, 0x3

    return p1
.end method

.method updateAlwaysOnNetworks()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1102
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendEmptyMessage(I)Z

    .line 1103
    return-void
.end method

.method public updateLockdownVpn()Z
    .registers 13

    .line 4657
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_11

    .line 4658
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const-string v2, "Lockdown VPN only available to AID_SYSTEM"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4659
    return v1

    .line 4662
    :cond_11
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4664
    :try_start_14
    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    .line 4665
    iget-boolean v2, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_af

    .line 4666
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    const-string v5, "LOCKDOWN_VPN"

    invoke-virtual {v2, v5}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v2

    .line 4667
    if-nez v2, :cond_33

    .line 4668
    sget-object v2, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const-string v3, "Lockdown VPN configured but cannot be read from keystore"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4669
    monitor-exit v0

    return v1

    .line 4671
    :cond_33
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    .line 4672
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VPN_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4673
    invoke-virtual {v2, v6}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v2

    .line 4672
    invoke-static {v5, v2}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v11

    .line 4674
    if-nez v11, :cond_70

    .line 4675
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Lockdown VPN configured invalid profile "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4676
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    .line 4677
    monitor-exit v0

    return v3

    .line 4679
    :cond_70
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 4680
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/android/server/connectivity/Vpn;

    .line 4681
    if-nez v10, :cond_a0

    .line 4682
    sget-object v3, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VPN for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not ready yet. Skipping lockdown"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4683
    monitor-exit v0

    return v1

    .line 4685
    :cond_a0
    new-instance v1, Lcom/android/server/net/LockdownVpnTracker;

    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    move-object v6, v1

    move-object v9, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/server/net/LockdownVpnTracker;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnProfile;)V

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    .line 4686
    goto :goto_b2

    .line 4687
    :cond_af
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    .line 4689
    :goto_b2
    monitor-exit v0

    .line 4691
    return v3

    .line 4689
    :catchall_b4
    move-exception v1

    monitor-exit v0
    :try_end_b6
    .catchall {:try_start_14 .. :try_end_b6} :catchall_b4

    throw v1
.end method

.method updatePrivateDnsSettings()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1108
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendEmptyMessage(I)Z

    .line 1109
    return-void
.end method
