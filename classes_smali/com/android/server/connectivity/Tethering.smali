.class public Lcom/android/server/connectivity/Tethering;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Tethering$TetherMasterSM;,
        Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;,
        Lcom/android/server/connectivity/Tethering$StateReceiver;,
        Lcom/android/server/connectivity/Tethering$TetherState;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z = false

.field private static final messageClasses:[Ljava/lang/Class;

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
.field private mActiveDataSubId:I

.field private final mCarrierConfigChange:Landroid/net/util/VersionedBroadcastListener;

.field private volatile mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

.field private final mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

.field private final mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

.field private final mForwardedDownstreams:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/net/ip/IpServer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mLastNotificationId:I

.field private final mLog:Landroid/net/util/SharedLog;

.field private final mLooper:Landroid/os/Looper;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private final mOffloadController:Lcom/android/server/connectivity/tethering/OffloadController;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mPolicyManager:Landroid/net/INetworkPolicyManager;

.field private final mPublicSync:Ljava/lang/Object;

.field private mRndisEnabled:Z

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private final mTetherMasterSM:Lcom/android/internal/util/StateMachine;

.field private final mTetherStates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/connectivity/Tethering$TetherState;",
            ">;"
        }
    .end annotation
.end field

.field private mTetherUpstream:Landroid/net/Network;

.field private mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mTetheringEventCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/net/ITetheringEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpstreamNetworkMonitor:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

.field private mWifiTetherRequested:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 140
    const-class v0, Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    .line 144
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/android/server/connectivity/Tethering;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Landroid/net/ip/IpServer;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/connectivity/Tethering;->messageClasses:[Ljava/lang/Class;

    .line 147
    sget-object v0, Lcom/android/server/connectivity/Tethering;->messageClasses:[Ljava/lang/Class;

    .line 148
    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/Tethering;->sMagicDecoderRing:Landroid/util/SparseArray;

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;Landroid/os/Looper;Lcom/android/server/connectivity/MockableSystemProperties;Lcom/android/server/connectivity/tethering/TetheringDependencies;)V
    .registers 14

    .line 212
    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    .line 173
    new-instance v0, Landroid/net/util/SharedLog;

    sget-object v1, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/net/util/SharedLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    .line 194
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheringEventCallbacks:Landroid/os/RemoteCallbackList;

    .line 197
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/Tethering;->mActiveDataSubId:I

    .line 213
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string v1, "constructed"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->mark(Ljava/lang/String;)V

    .line 214
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    .line 215
    iput-object p2, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    .line 216
    iput-object p3, p0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    .line 217
    iput-object p4, p0, Lcom/android/server/connectivity/Tethering;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 218
    iput-object p5, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    .line 219
    iput-object p7, p0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    .line 221
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    .line 223
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    .line 225
    new-instance p1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object p2, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    const-string p3, "TetherMaster"

    invoke-direct {p1, p0, p3, p2, p7}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Lcom/android/server/connectivity/tethering/TetheringDependencies;)V

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    .line 226
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {p1}, Lcom/android/internal/util/StateMachine;->start()V

    .line 228
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {p1}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    .line 229
    new-instance p1, Lcom/android/server/connectivity/tethering/OffloadController;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    iget-object p3, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    .line 230
    invoke-virtual {p2, v1, p3}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getOffloadHardwareInterface(Landroid/os/Handler;Landroid/net/util/SharedLog;)Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    move-result-object v2

    iget-object p2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    .line 231
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/tethering/OffloadController;-><init>(Landroid/os/Handler;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;Landroid/content/ContentResolver;Landroid/os/INetworkManagementService;Landroid/net/util/SharedLog;)V

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mOffloadController:Lcom/android/server/connectivity/tethering/OffloadController;

    .line 233
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    iget-object p3, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const p4, 0x50005

    invoke-virtual {p7, p1, p2, p3, p4}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getUpstreamNetworkMonitor(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/net/util/SharedLog;I)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    .line 235
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mForwardedDownstreams:Ljava/util/HashSet;

    .line 237
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 238
    const-string p2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const v4, 0x50008

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getEntitlementManager(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/net/util/SharedLog;ILcom/android/server/connectivity/MockableSystemProperties;)Lcom/android/server/connectivity/tethering/EntitlementManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    .line 243
    iget-object p2, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    new-instance p3, Lcom/android/server/connectivity/-$$Lambda$Tethering$3zIH-fISJxjng2YhMI1EBDdSKsk;

    invoke-direct {p3, p0}, Lcom/android/server/connectivity/-$$Lambda$Tethering$3zIH-fISJxjng2YhMI1EBDdSKsk;-><init>(Lcom/android/server/connectivity/Tethering;)V

    invoke-virtual {p2, p3}, Lcom/android/server/connectivity/tethering/EntitlementManager;->setOnUiEntitlementFailedListener(Lcom/android/server/connectivity/tethering/EntitlementManager$OnUiEntitlementFailedListener;)V

    .line 247
    iget-object p2, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    new-instance p3, Lcom/android/server/connectivity/-$$Lambda$Tethering$n3LtFaPEJryBHWNNaGBvLgh7QQk;

    invoke-direct {p3, p0}, Lcom/android/server/connectivity/-$$Lambda$Tethering$n3LtFaPEJryBHWNNaGBvLgh7QQk;-><init>(Lcom/android/server/connectivity/Tethering;)V

    invoke-virtual {p2, p3}, Lcom/android/server/connectivity/tethering/EntitlementManager;->setTetheringConfigurationFetcher(Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;)V

    .line 251
    new-instance v0, Landroid/net/util/VersionedBroadcastListener;

    iget-object p4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object p5, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    new-instance p7, Lcom/android/server/connectivity/-$$Lambda$Tethering$a_wqxo60onQxTR27G2Ub5703PoY;

    invoke-direct {p7, p0}, Lcom/android/server/connectivity/-$$Lambda$Tethering$a_wqxo60onQxTR27G2Ub5703PoY;-><init>(Lcom/android/server/connectivity/Tethering;)V

    const-string p3, "CarrierConfigChangeListener"

    move-object p2, v0

    move-object p6, p1

    invoke-direct/range {p2 .. p7}, Landroid/net/util/VersionedBroadcastListener;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Landroid/content/IntentFilter;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCarrierConfigChange:Landroid/net/util/VersionedBroadcastListener;

    .line 259
    new-instance p1, Lcom/android/server/connectivity/Tethering$1;

    iget-object p2, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {p1, p0, p2}, Lcom/android/server/connectivity/Tethering$1;-><init>(Lcom/android/server/connectivity/Tethering;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 279
    new-instance p1, Lcom/android/server/connectivity/Tethering$StateReceiver;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 282
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 284
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->startStateMachineUpdaters(Landroid/os/Handler;)V

    .line 285
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/Tethering;)I
    .registers 1

    .line 138
    iget p0, p0, Lcom/android/server/connectivity/Tethering;->mActiveDataSubId:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/server/connectivity/Tethering;I)I
    .registers 2

    .line 138
    iput p1, p0, Lcom/android/server/connectivity/Tethering;->mActiveDataSubId:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;
    .registers 1

    .line 138
    iget-object p0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/Tethering;II)V
    .registers 3

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->tetherMatchingInterfaces(II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;I)V
    .registers 3

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->enableWifiIpServingLocked(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;I)V
    .registers 3

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->disableWifiIpServingLocked(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/Tethering;Lcom/android/internal/util/State;I)V
    .registers 3

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->logMessage(Lcom/android/internal/util/State;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;
    .registers 1

    .line 138
    iget-object p0, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/server/connectivity/Tethering;)V
    .registers 1

    .line 138
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->maybeDunSettingChanged()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
    .registers 1

    .line 138
    iget-object p0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/Tethering;)V
    .registers 1

    .line 138
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/connectivity/Tethering;)Landroid/net/Network;
    .registers 1

    .line 138
    iget-object p0, p0, Lcom/android/server/connectivity/Tethering;->mTetherUpstream:Landroid/net/Network;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/android/server/connectivity/Tethering;Landroid/net/Network;)Landroid/net/Network;
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mTetherUpstream:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/connectivity/Tethering;Landroid/net/Network;)V
    .registers 2

    .line 138
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->reportUpstreamChanged(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/connectivity/Tethering;Landroid/net/NetworkState;)Z
    .registers 2

    .line 138
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->pertainsToCurrentUpstream(Landroid/net/NetworkState;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/InterfaceSet;
    .registers 1

    .line 138
    iget-object p0, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/android/server/connectivity/Tethering;Landroid/net/util/InterfaceSet;)Landroid/net/util/InterfaceSet;
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashSet;
    .registers 1

    .line 138
    iget-object p0, p0, Lcom/android/server/connectivity/Tethering;->mForwardedDownstreams:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/server/connectivity/Tethering;)Landroid/net/wifi/WifiManager;
    .registers 1

    .line 138
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600()Ljava/lang/String;
    .registers 1

    .line 138
    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/connectivity/Tethering;)Z
    .registers 1

    .line 138
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->upstreamWanted()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    .registers 1

    .line 138
    iget-object p0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/OffloadController;
    .registers 1

    .line 138
    iget-object p0, p0, Lcom/android/server/connectivity/Tethering;->mOffloadController:Lcom/android/server/connectivity/tethering/OffloadController;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/android/server/connectivity/Tethering;Landroid/net/ip/IpServer;II)V
    .registers 4

    .line 138
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->notifyInterfaceStateChange(Landroid/net/ip/IpServer;II)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/connectivity/Tethering;Landroid/net/ip/IpServer;Landroid/net/LinkProperties;)V
    .registers 3

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->notifyLinkPropertiesChanged(Landroid/net/ip/IpServer;Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/EntitlementManager;
    .registers 1

    .line 138
    iget-object p0, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;
    .registers 1

    .line 138
    iget-object p0, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/Tethering;Landroid/os/ResultReceiver;I)V
    .registers 3

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;
    .registers 1

    .line 138
    iget-object p0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/Tethering;)Z
    .registers 1

    .line 138
    iget-boolean p0, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    return p0
.end method

.method static synthetic access$902(Lcom/android/server/connectivity/Tethering;Z)Z
    .registers 2

    .line 138
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    return p1
.end method

.method private static argsContain([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1816
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p0, v2

    .line 1817
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 p0, 0x1

    return p0

    .line 1816
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1819
    :cond_12
    return v1
.end method

.method private changeInterfaceState(Ljava/lang/String;I)V
    .registers 5

    .line 935
    if-eqz p2, :cond_27

    const/4 v0, 0x1

    if-eq p2, v0, :cond_27

    const/4 v0, 0x2

    if-eq p2, v0, :cond_22

    const/4 v0, 0x3

    if-eq p2, v0, :cond_22

    .line 945
    sget-object p1, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown interface state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    return-void

    .line 942
    :cond_22
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;I)I

    move-result p2

    .line 943
    goto :goto_2c

    .line 938
    :cond_27
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result p2

    .line 939
    nop

    .line 948
    :goto_2c
    if-eqz p2, :cond_46

    .line 949
    sget-object p2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unable start or stop tethering on iface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    return-void

    .line 952
    :cond_46
    return-void
.end method

.method private static copy([Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    .line 1942
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private disableWifiIpServingLocked(Ljava/lang/String;I)V
    .registers 6

    .line 843
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canceling WiFi tethering request - AP_STATE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 849
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetherRequested:Z

    .line 851
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 852
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 853
    if-eqz v0, :cond_2f

    .line 854
    iget-object p1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->ipServer:Landroid/net/ip/IpServer;

    invoke-virtual {p1}, Landroid/net/ip/IpServer;->unwanted()V

    .line 855
    return-void

    .line 859
    :cond_2f
    nop

    :goto_30
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge p2, v0, :cond_4f

    .line 860
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherState;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherState;->ipServer:Landroid/net/ip/IpServer;

    .line 861
    invoke-virtual {v0}, Landroid/net/ip/IpServer;->interfaceType()I

    move-result v1

    if-nez v1, :cond_4c

    .line 862
    invoke-virtual {v0}, Landroid/net/ip/IpServer;->unwanted()V

    .line 863
    return-void

    .line 859
    :cond_4c
    add-int/lit8 p2, p2, 0x1

    goto :goto_30

    .line 867
    :cond_4f
    iget-object p2, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error disabling Wi-Fi IP serving; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_65

    const-string/jumbo p1, "no interface name specified"

    goto :goto_77

    .line 869
    :cond_65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "specified interface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_77
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 867
    invoke-virtual {p2, p1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 870
    return-void
.end method

.method private enableTetheringInternal(IZLandroid/os/ResultReceiver;)V
    .registers 6

    .line 413
    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    if-eq p1, v0, :cond_17

    const/4 v1, 0x2

    if-eq p1, v1, :cond_13

    .line 426
    sget-object p1, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string p2, "Invalid tether type."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-direct {p0, p3, v0}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    goto :goto_27

    .line 423
    :cond_13
    invoke-direct {p0, p2, p3}, Lcom/android/server/connectivity/Tethering;->setBluetoothTethering(ZLandroid/os/ResultReceiver;)V

    .line 424
    goto :goto_27

    .line 419
    :cond_17
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    move-result p1

    .line 420
    invoke-direct {p0, p3, p1}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    .line 421
    goto :goto_27

    .line 415
    :cond_1f
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Tethering;->setWifiTethering(Z)I

    move-result p1

    .line 416
    invoke-direct {p0, p3, p1}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    .line 417
    nop

    .line 429
    :goto_27
    return-void
.end method

.method private enableWifiIpServingLocked(Ljava/lang/String;I)V
    .registers 6

    .line 876
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1f

    if-eq p2, v0, :cond_1d

    .line 884
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot enable IP serving in unknown WiFi mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 885
    return-void

    .line 881
    :cond_1d
    const/4 v0, 0x3

    .line 882
    goto :goto_21

    .line 878
    :cond_1f
    nop

    .line 879
    nop

    .line 888
    :goto_21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v2, 0x0

    if-nez p2, :cond_2f

    .line 889
    invoke-direct {p0, p1, v2}, Lcom/android/server/connectivity/Tethering;->maybeTrackNewInterfaceLocked(Ljava/lang/String;I)V

    .line 890
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->changeInterfaceState(Ljava/lang/String;I)V

    goto :goto_42

    .line 892
    :cond_2f
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-array p2, v1, [Ljava/lang/Object;

    .line 894
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    .line 892
    const-string v0, "Cannot enable IP serving in mode %s on missing interface name"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 896
    :goto_42
    return-void
.end method

.method private getWifiManager()Landroid/net/wifi/WifiManager;
    .registers 3

    .line 325
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private ifaceNameToType(Ljava/lang/String;)I
    .registers 4

    .line 369
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    .line 371
    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isWifi(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 372
    const/4 p1, 0x0

    return p1

    .line 373
    :cond_a
    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isUsb(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 374
    const/4 p1, 0x1

    return p1

    .line 375
    :cond_12
    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isBluetooth(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 376
    const/4 p1, 0x2

    return p1

    .line 378
    :cond_1a
    const/4 p1, -0x1

    return p1
.end method

.method private logMessage(Lcom/android/internal/util/State;I)V
    .registers 6

    .line 1046
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " got "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/server/connectivity/Tethering;->sMagicDecoderRing:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 1047
    return-void
.end method

.method private makeControlCallback()Landroid/net/ip/IpServer$Callback;
    .registers 2

    .line 1823
    new-instance v0, Lcom/android/server/connectivity/Tethering$4;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$4;-><init>(Lcom/android/server/connectivity/Tethering;)V

    return-object v0
.end method

.method private maybeDunSettingChanged()V
    .registers 3

    .line 335
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/connectivity/Tethering;->mActiveDataSubId:I

    invoke-static {v0, v1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->checkDunRequired(Landroid/content/Context;I)Z

    move-result v0

    .line 337
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-boolean v1, v1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isDunRequired:Z

    if-ne v0, v1, :cond_f

    return-void

    .line 338
    :cond_f
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 339
    return-void
.end method

.method private maybeTrackNewInterfaceLocked(Ljava/lang/String;)V
    .registers 4

    .line 1906
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I

    move-result v0

    .line 1907
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    .line 1908
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a tetherable iface, ignoring"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 1909
    return-void

    .line 1911
    :cond_1e
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->maybeTrackNewInterfaceLocked(Ljava/lang/String;I)V

    .line 1912
    return-void
.end method

.method private maybeTrackNewInterfaceLocked(Ljava/lang/String;I)V
    .registers 15

    .line 1916
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1917
    iget-object p2, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "active iface ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") reported as added, ignoring"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 1918
    return-void

    .line 1921
    :cond_24
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adding TetheringInterfaceStateMachine for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 1922
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherState;

    new-instance v11, Landroid/net/ip/IpServer;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    .line 1924
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->makeControlCallback()Landroid/net/ip/IpServer$Callback;

    move-result-object v8

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-boolean v9, v1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->enableLegacyDhcpServer:Z

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    .line 1925
    invoke-virtual {v1}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getIpServerDependencies()Landroid/net/ip/IpServer$Dependencies;

    move-result-object v10

    move-object v1, v11

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v1 .. v10}, Landroid/net/ip/IpServer;-><init>(Ljava/lang/String;Landroid/os/Looper;ILandroid/net/util/SharedLog;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/ip/IpServer$Callback;ZLandroid/net/ip/IpServer$Dependencies;)V

    invoke-direct {v0, v11}, Lcom/android/server/connectivity/Tethering$TetherState;-><init>(Landroid/net/ip/IpServer;)V

    .line 1926
    iget-object p2, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1927
    iget-object p1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->ipServer:Landroid/net/ip/IpServer;

    invoke-virtual {p1}, Landroid/net/ip/IpServer;->start()V

    .line 1928
    return-void
.end method

.method private notifyInterfaceStateChange(Landroid/net/ip/IpServer;II)V
    .registers 12

    .line 1838
    invoke-virtual {p1}, Landroid/net/ip/IpServer;->interfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1839
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1840
    :try_start_7
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 1841
    if-eqz v2, :cond_1d

    iget-object v3, v2, Lcom/android/server/connectivity/Tethering$TetherState;->ipServer:Landroid/net/ip/IpServer;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1842
    iput p2, v2, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    .line 1843
    iput p3, v2, Lcom/android/server/connectivity/Tethering$TetherState;->lastError:I

    .line 1847
    :cond_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_84

    .line 1849
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v3, v7

    const-string v5, "OBSERVED iface=%s state=%s error=%s"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 1855
    :try_start_3d
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    if-ne p2, v7, :cond_43

    move v3, v6

    goto :goto_44

    :cond_43
    move v3, v4

    :goto_44
    invoke-interface {v1, v0, v3}, Landroid/net/INetworkPolicyManager;->onTetheringChanged(Ljava/lang/String;Z)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_47} :catch_48

    .line 1858
    goto :goto_49

    .line 1856
    :catch_48
    move-exception v0

    .line 1863
    :goto_49
    const/4 v0, 0x5

    if-ne p3, v0, :cond_54

    .line 1864
    iget-object p3, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    const v0, 0x50006

    invoke-virtual {p3, v0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1867
    :cond_54
    if-eqz p2, :cond_77

    if-eq p2, v6, :cond_77

    if-eq p2, v7, :cond_73

    if-eq p2, v2, :cond_73

    .line 1877
    sget-object p1, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown interface state: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    return-void

    .line 1874
    :cond_73
    const p3, 0x50001

    .line 1875
    goto :goto_7b

    .line 1870
    :cond_77
    const p3, 0x50002

    .line 1871
    nop

    .line 1880
    :goto_7b
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v0, p3, p2, v4, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1881
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V

    .line 1882
    return-void

    .line 1847
    :catchall_84
    move-exception p1

    :try_start_85
    monitor-exit v1
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    throw p1
.end method

.method private notifyLinkPropertiesChanged(Landroid/net/ip/IpServer;Landroid/net/LinkProperties;)V
    .registers 8

    .line 1885
    invoke-virtual {p1}, Landroid/net/ip/IpServer;->interfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1887
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1888
    :try_start_7
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 1889
    if-eqz v2, :cond_40

    iget-object v3, v2, Lcom/android/server/connectivity/Tethering$TetherState;->ipServer:Landroid/net/ip/IpServer;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_40

    .line 1890
    iget p1, v2, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    .line 1895
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_58

    .line 1897
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    .line 1899
    invoke-static {p1}, Landroid/net/ip/IpServer;->getStateString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    const/4 v0, 0x2

    aput-object p2, v2, v0

    .line 1897
    const-string v0, "OBSERVED LinkProperties update iface=%s state=%s lp=%s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 1901
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    const v1, 0x50007

    invoke-virtual {v0, v1, p1, v3, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1902
    return-void

    .line 1892
    :cond_40
    :try_start_40
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got notification from stale iface "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 1893
    monitor-exit v1

    return-void

    .line 1895
    :catchall_58
    move-exception p1

    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_40 .. :try_end_5a} :catchall_58

    throw p1
.end method

.method private pertainsToCurrentUpstream(Landroid/net/NetworkState;)Z
    .registers 4

    .line 1060
    if-eqz p1, :cond_2d

    iget-object v0, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    if-eqz v0, :cond_2d

    .line 1061
    iget-object p1, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1062
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    iget-object v1, v1, Landroid/net/util/InterfaceSet;->ifnames:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1063
    const/4 p1, 0x1

    return p1

    .line 1065
    :cond_2c
    goto :goto_14

    .line 1067
    :cond_2d
    const/4 p1, 0x0

    return p1
.end method

.method private reportUpstreamChanged(Landroid/net/Network;)V
    .registers 5

    .line 1731
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheringEventCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1733
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_20

    .line 1735
    :try_start_9
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetheringEventCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/ITetheringEventCallback;

    invoke-interface {v2, p1}, Landroid/net/ITetheringEventCallback;->onUpstreamChanged(Landroid/net/Network;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_1c
    .catchall {:try_start_9 .. :try_end_14} :catchall_15

    .line 1738
    goto :goto_1d

    .line 1741
    :catchall_15
    move-exception p1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheringEventCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw p1

    .line 1736
    :catch_1c
    move-exception v2

    .line 1733
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1741
    :cond_20
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering;->mTetheringEventCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1742
    nop

    .line 1743
    return-void
.end method

.method private sendTetherResult(Landroid/os/ResultReceiver;I)V
    .registers 4

    .line 432
    if-eqz p1, :cond_6

    .line 433
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 435
    :cond_6
    return-void
.end method

.method private sendTetherStateChangedBroadcast()V
    .registers 16

    .line 564
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->isTetheringSupported()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 566
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 567
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 568
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 569
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 571
    nop

    .line 572
    nop

    .line 573
    nop

    .line 575
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    .line 577
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v5

    .line 578
    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    move v9, v8

    :goto_29
    :try_start_29
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v6, v10, :cond_7d

    .line 579
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v10, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 580
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 581
    iget v12, v10, Lcom/android/server/connectivity/Tethering$TetherState;->lastError:I

    if-eqz v12, :cond_49

    .line 582
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7a

    .line 583
    :cond_49
    iget v12, v10, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_52

    .line 584
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7a

    .line 585
    :cond_52
    iget v12, v10, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    const/4 v14, 0x3

    if-ne v12, v14, :cond_5b

    .line 586
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7a

    .line 587
    :cond_5b
    iget v10, v10, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    const/4 v12, 0x2

    if-ne v10, v12, :cond_7a

    .line 588
    invoke-virtual {v4, v11}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isUsb(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_68

    .line 589
    move v7, v13

    goto :goto_77

    .line 590
    :cond_68
    invoke-virtual {v4, v11}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isWifi(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_70

    .line 591
    move v8, v13

    goto :goto_77

    .line 592
    :cond_70
    invoke-virtual {v4, v11}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isBluetooth(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_77

    .line 593
    move v9, v13

    .line 595
    :cond_77
    :goto_77
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    :cond_7a
    :goto_7a
    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    .line 598
    :cond_7d
    monitor-exit v5
    :try_end_7e
    .catchall {:try_start_29 .. :try_end_7e} :catchall_d1

    .line 599
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 600
    const/high16 v5, 0x24000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 602
    const-string v5, "availableArray"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 603
    const-string v0, "localOnlyArray"

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 604
    const-string/jumbo v0, "tetherArray"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 605
    const-string v0, "erroredArray"

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 606
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 616
    const/16 v0, 0xe

    if-eqz v7, :cond_b9

    .line 617
    if-nez v8, :cond_b5

    if-eqz v9, :cond_af

    goto :goto_b5

    .line 620
    :cond_af
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_d0

    .line 618
    :cond_b5
    :goto_b5
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_d0

    .line 622
    :cond_b9
    if-eqz v8, :cond_c5

    .line 623
    if-eqz v9, :cond_c1

    .line 624
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_d0

    .line 627
    :cond_c1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    goto :goto_d0

    .line 629
    :cond_c5
    if-eqz v9, :cond_cd

    .line 630
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_d0

    .line 632
    :cond_cd
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    .line 634
    :goto_d0
    return-void

    .line 598
    :catchall_d1
    move-exception v0

    :try_start_d2
    monitor-exit v5
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d1

    throw v0
.end method

.method private setBluetoothTethering(ZLandroid/os/ResultReceiver;)V
    .registers 6

    .line 460
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 461
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_19

    .line 468
    :cond_d
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/connectivity/Tethering$3;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/server/connectivity/Tethering$3;-><init>(Lcom/android/server/connectivity/Tethering;ZLandroid/os/ResultReceiver;Landroid/bluetooth/BluetoothAdapter;)V

    const/4 p1, 0x5

    invoke-virtual {v0, v1, v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 497
    return-void

    .line 462
    :cond_19
    :goto_19
    sget-object p1, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to enable bluetooth tethering with null or disabled adapter. null: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_29

    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const/4 p1, 0x2

    invoke-direct {p0, p2, p1}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    .line 465
    return-void
.end method

.method private setWifiTethering(Z)I
    .registers 7

    .line 438
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 440
    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_3e

    .line 441
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v3

    .line 442
    if-nez v3, :cond_1b

    .line 443
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v3, "setWifiTethering: failed to get WifiManager!"

    invoke-virtual {p1, v3}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 444
    const/4 p1, 0x2

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_3b

    .line 453
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 444
    return p1

    .line 446
    :cond_1b
    if-eqz p1, :cond_24

    const/4 v4, 0x0

    :try_start_1e
    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->startSoftAp(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    if-nez v4, :cond_2c

    :cond_24
    if-nez p1, :cond_34

    .line 447
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->stopSoftAp()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 448
    :cond_2c
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetherRequested:Z

    .line 449
    const/4 p1, 0x0

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_1e .. :try_end_30} :catchall_3b

    .line 453
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 449
    return p1

    .line 451
    :cond_34
    :try_start_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_3b

    .line 453
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 454
    nop

    .line 456
    const/4 p1, 0x5

    return p1

    .line 451
    :catchall_3b
    move-exception p1

    :try_start_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    :try_start_3d
    throw p1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3e

    .line 453
    :catchall_3e
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private showTetheredNotification(I)V
    .registers 3

    .line 637
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(IZ)V

    .line 638
    return-void
.end method

.method private startStateMachineUpdaters(Landroid/os/Handler;)V
    .registers 6

    .line 288
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCarrierConfigChange:Landroid/net/util/VersionedBroadcastListener;

    invoke-virtual {v0}, Landroid/net/util/VersionedBroadcastListener;->startListening()V

    .line 289
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/high16 v2, 0x400000

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 292
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 293
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 299
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 300
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    const-string v1, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 303
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 305
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    .line 307
    if-eqz v0, :cond_60

    .line 308
    new-instance v1, Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;-><init>(Lcom/android/server/connectivity/Tethering;)V

    invoke-virtual {v0, v1}, Landroid/os/UserManagerInternal;->addUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V

    .line 312
    :cond_60
    new-instance v0, Lcom/android/server/connectivity/Tethering$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/connectivity/Tethering$2;-><init>(Lcom/android/server/connectivity/Tethering;Landroid/os/Handler;)V

    .line 319
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "tethering_allow_vpn_upstreams"

    invoke-static {v1}, Llineageos/providers/LineageSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 322
    return-void
.end method

.method private stopTrackingInterfaceLocked(Ljava/lang/String;)V
    .registers 5

    .line 1931
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 1932
    if-nez v0, :cond_26

    .line 1933
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attempting to remove unknown iface ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "), ignoring"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 1934
    return-void

    .line 1936
    :cond_26
    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherState;->ipServer:Landroid/net/ip/IpServer;

    invoke-virtual {v0}, Landroid/net/ip/IpServer;->stop()V

    .line 1937
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removing TetheringInterfaceStateMachine for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 1938
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1939
    return-void
.end method

.method private tether(Ljava/lang/String;I)I
    .registers 7

    .line 505
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    .line 506
    :try_start_3
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 507
    const/4 v2, 0x1

    if-nez v1, :cond_2b

    .line 508
    sget-object p2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to Tether an unknown iface: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ignoring"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    monitor-exit v0

    return v2

    .line 513
    :cond_2b
    iget v3, v1, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    if-eq v3, v2, :cond_4d

    .line 514
    sget-object p2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to Tether an unavailable iface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ignoring"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const/4 p1, 0x4

    monitor-exit v0

    return p1

    .line 522
    :cond_4d
    iget-object p1, v1, Lcom/android/server/connectivity/Tethering$TetherState;->ipServer:Landroid/net/ip/IpServer;

    const v1, 0x50066

    invoke-virtual {p1, v1, p2}, Landroid/net/ip/IpServer;->sendMessage(II)V

    .line 523
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 524
    :catchall_58
    move-exception p1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_3 .. :try_end_5a} :catchall_58

    throw p1
.end method

.method private tetherMatchingInterfaces(II)V
    .registers 9

    .line 909
    nop

    .line 911
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_3a

    .line 915
    nop

    .line 916
    const/4 v1, 0x0

    .line 917
    if-eqz v0, :cond_1d

    .line 918
    array-length v2, v0

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_1d

    aget-object v4, v0, v3

    .line 919
    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I

    move-result v5

    if-ne v5, p2, :cond_1a

    .line 920
    nop

    .line 921
    move-object v1, v4

    goto :goto_1d

    .line 918
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 925
    :cond_1d
    :goto_1d
    if-nez v1, :cond_36

    .line 926
    sget-object p1, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "could not find iface of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    return-void

    .line 930
    :cond_36
    invoke-direct {p0, v1, p1}, Lcom/android/server/connectivity/Tethering;->changeInterfaceState(Ljava/lang/String;I)V

    .line 931
    return-void

    .line 912
    :catch_3a
    move-exception p1

    .line 913
    sget-object p2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string v0, "Error listing Interfaces"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 914
    return-void
.end method

.method private updateConfiguration()V
    .registers 5

    .line 330
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    iget v3, p0, Lcom/android/server/connectivity/Tethering;->mActiveDataSubId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->generateTetheringConfiguration(Landroid/content/Context;Landroid/net/util/SharedLog;I)Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    .line 331
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-boolean v1, v1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isDunRequired:Z

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->updateMobileRequiresDun(Z)V

    .line 332
    return-void
.end method

.method private upstreamWanted()Z
    .registers 3

    .line 1050
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mForwardedDownstreams:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    .line 1052
    :cond_a
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1053
    :try_start_d
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetherRequested:Z

    monitor-exit v0

    return v1

    .line 1054
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_11

    throw v1
.end method


# virtual methods
.method protected clearTetheredNotification()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 711
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    .line 712
    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 713
    if-eqz v0, :cond_1a

    iget v1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    if-eqz v1, :cond_1a

    .line 714
    const/4 v2, 0x0

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 716
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    .line 718
    :cond_1a
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    .line 1749
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1750
    iget-object p2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    invoke-static {p2, v1, v0}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p2

    if-nez p2, :cond_12

    return-void

    .line 1752
    :cond_12
    const-string p2, "Tethering:"

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1753
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1755
    const-string p2, "Configuration:"

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1756
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1757
    iget-object p2, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    .line 1758
    invoke-virtual {p2, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dump(Ljava/io/PrintWriter;)V

    .line 1759
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1761
    const-string p2, "Entitlement:"

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1762
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1763
    iget-object p2, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-virtual {p2, v0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->dump(Ljava/io/PrintWriter;)V

    .line 1764
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1766
    iget-object p2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter p2

    .line 1767
    :try_start_3d
    const-string v1, "Tether state:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1768
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1769
    const/4 v1, 0x0

    :goto_46
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_b6

    .line 1770
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1771
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 1772
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1774
    iget v2, v3, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    if-eqz v2, :cond_97

    const/4 v4, 0x1

    if-eq v2, v4, :cond_91

    const/4 v4, 0x2

    if-eq v2, v4, :cond_8b

    const/4 v4, 0x3

    if-eq v2, v4, :cond_85

    .line 1788
    const-string v2, "UnknownState"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_9d

    .line 1785
    :cond_85
    const-string v2, "LocalHotspotState"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1786
    goto :goto_9d

    .line 1782
    :cond_8b
    const-string v2, "TetheredState"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1783
    goto :goto_9d

    .line 1779
    :cond_91
    const-string v2, "AvailableState"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1780
    goto :goto_9d

    .line 1776
    :cond_97
    const-string v2, "UnavailableState"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1777
    nop

    .line 1791
    :goto_9d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - lastError = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/android/server/connectivity/Tethering$TetherState;->lastError:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1769
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 1793
    :cond_b6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upstream wanted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->upstreamWanted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1794
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current upstream interface(s): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1795
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1796
    monitor-exit p2
    :try_end_e8
    .catchall {:try_start_3d .. :try_end_e8} :catchall_11a

    .line 1798
    const-string p2, "Hardware offload:"

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1799
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1800
    iget-object p2, p0, Lcom/android/server/connectivity/Tethering;->mOffloadController:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-virtual {p2, v0}, Lcom/android/server/connectivity/tethering/OffloadController;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1801
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1803
    const-string p2, "Log:"

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1804
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1805
    const-string p2, "--short"

    invoke-static {p3, p2}, Lcom/android/server/connectivity/Tethering;->argsContain([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_10e

    .line 1806
    const-string p1, "<log removed for brevity>"

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_113

    .line 1808
    :cond_10e
    iget-object p2, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {p2, p1, v0, p3}, Landroid/net/util/SharedLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1810
    :goto_113
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1812
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1813
    return-void

    .line 1796
    :catchall_11a
    move-exception p1

    :try_start_11b
    monitor-exit p2
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_11a

    throw p1
.end method

.method public getErroredIfaces()[Ljava/lang/String;
    .registers 5

    .line 1033
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1034
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1035
    const/4 v2, 0x0

    :goto_9
    :try_start_9
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_2b

    .line 1036
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 1037
    iget v3, v3, Lcom/android/server/connectivity/Tethering$TetherState;->lastError:I

    if-eqz v3, :cond_28

    .line 1038
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1035
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1041
    :cond_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_39

    .line 1042
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 1041
    :catchall_39
    move-exception v0

    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v0
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .registers 6

    .line 551
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    .line 552
    :try_start_3
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 553
    if-nez v1, :cond_2b

    .line 554
    sget-object v1, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to getLastTetherError on an unknown iface :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ignoring"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 558
    :cond_2b
    iget p1, v1, Lcom/android/server/connectivity/Tethering$TetherState;->lastError:I

    monitor-exit v0

    return p1

    .line 559
    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public getLatestTetheringEntitlementResult(ILandroid/os/ResultReceiver;Z)V
    .registers 5

    .line 1706
    if-eqz p2, :cond_7

    .line 1707
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/connectivity/tethering/EntitlementManager;->getLatestTetheringEntitlementResult(ILandroid/os/ResultReceiver;Z)V

    .line 1709
    :cond_7
    return-void
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .registers 2

    .line 981
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v0, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->copy([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .registers 6

    .line 1014
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1015
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1016
    const/4 v2, 0x0

    :goto_9
    :try_start_9
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 1017
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 1018
    iget v3, v3, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_29

    .line 1019
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1016
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1022
    :cond_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_3a

    .line 1023
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 1022
    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .registers 2

    .line 973
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v0, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableUsbRegexs:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->copy([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .registers 2

    .line 977
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v0, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableWifiRegexs:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->copy([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetheredDhcpRanges()[Ljava/lang/String;
    .registers 2

    .line 1029
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v0, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->legacyDhcpRanges:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .registers 6

    .line 1001
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1002
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1003
    const/4 v2, 0x0

    :goto_9
    :try_start_9
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 1004
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 1005
    iget v3, v3, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_29

    .line 1006
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1003
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1009
    :cond_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_3a

    .line 1010
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 1009
    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method public getTetheringConfiguration()Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    .registers 2

    .line 955
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    return-object v0
.end method

.method public hasTetherableConfiguration()Z
    .registers 6

    .line 959
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    .line 960
    iget-object v1, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableUsbRegexs:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_16

    iget-object v1, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableWifiRegexs:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_16

    iget-object v1, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableBluetoothRegexs:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_14

    goto :goto_16

    :cond_14
    move v1, v2

    goto :goto_17

    :cond_16
    :goto_16
    move v1, v3

    .line 964
    :goto_17
    iget-object v4, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->preferredUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_26

    iget-boolean v0, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->chooseUpstreamAutomatically:Z

    if-eqz v0, :cond_24

    goto :goto_26

    :cond_24
    move v0, v2

    goto :goto_27

    :cond_26
    :goto_26
    move v0, v3

    .line 967
    :goto_27
    if-eqz v1, :cond_2c

    if-eqz v0, :cond_2c

    move v2, v3

    :cond_2c
    return v2
.end method

.method public interfaceAdded(Ljava/lang/String;)V
    .registers 3

    .line 384
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    .line 385
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->maybeTrackNewInterfaceLocked(Ljava/lang/String;)V

    .line 386
    monitor-exit v0

    .line 387
    return-void

    .line 386
    :catchall_8
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .registers 3

    .line 365
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->interfaceStatusChanged(Ljava/lang/String;Z)V

    .line 366
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .registers 3

    .line 392
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    .line 393
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->stopTrackingInterfaceLocked(Ljava/lang/String;)V

    .line 394
    monitor-exit v0

    .line 395
    return-void

    .line 394
    :catchall_8
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 5

    .line 346
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    .line 347
    if-eqz p2, :cond_9

    .line 348
    :try_start_5
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->maybeTrackNewInterfaceLocked(Ljava/lang/String;)V

    goto :goto_13

    .line 350
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I

    move-result p2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_13

    .line 351
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->stopTrackingInterfaceLocked(Ljava/lang/String;)V

    .line 360
    :cond_13
    :goto_13
    monitor-exit v0

    .line 361
    return-void

    .line 360
    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public synthetic lambda$new$0$Tethering(I)V
    .registers 4

    .line 244
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string v1, "OBSERVED UiEnitlementFailed"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    .line 246
    return-void
.end method

.method public synthetic lambda$new$1$Tethering()Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    .registers 2

    .line 248
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    return-object v0
.end method

.method public synthetic lambda$new$2$Tethering(Landroid/content/Intent;)V
    .registers 3

    .line 254
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string v0, "OBSERVED carrier config change"

    invoke-virtual {p1, v0}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 255
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 256
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    invoke-virtual {p1, v0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->reevaluateSimCardProvisioning(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V

    .line 257
    return-void
.end method

.method public synthetic lambda$registerTetheringEventCallback$3$Tethering(Landroid/net/ITetheringEventCallback;)V
    .registers 3

    .line 1715
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherUpstream:Landroid/net/Network;

    invoke-interface {p1, v0}, Landroid/net/ITetheringEventCallback;->onUpstreamChanged(Landroid/net/Network;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1718
    goto :goto_7

    .line 1716
    :catch_6
    move-exception v0

    .line 1719
    :goto_7
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheringEventCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1720
    return-void
.end method

.method public synthetic lambda$unregisterTetheringEventCallback$4$Tethering(Landroid/net/ITetheringEventCallback;)V
    .registers 3

    .line 1726
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheringEventCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1727
    return-void
.end method

.method public registerTetheringEventCallback(Landroid/net/ITetheringEventCallback;)V
    .registers 4

    .line 1713
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/connectivity/-$$Lambda$Tethering$-5WeutLnGVKFlJUG298UCM4G4Wk;

    invoke-direct {v1, p0, p1}, Lcom/android/server/connectivity/-$$Lambda$Tethering$-5WeutLnGVKFlJUG298UCM4G4Wk;-><init>(Lcom/android/server/connectivity/Tethering;Landroid/net/ITetheringEventCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1721
    return-void
.end method

.method public setUsbTethering(Z)I
    .registers 6

    .line 986
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 987
    if-nez v0, :cond_17

    .line 988
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v0, "setUsbTethering: failed to get UsbManager!"

    invoke-virtual {p1, v0}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 989
    const/4 p1, 0x2

    return p1

    .line 992
    :cond_17
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    .line 993
    if-eqz p1, :cond_1f

    const-wide/16 v2, 0x20

    goto :goto_21

    .line 994
    :cond_1f
    const-wide/16 v2, 0x0

    .line 993
    :goto_21
    :try_start_21
    invoke-virtual {v0, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunctions(J)V

    .line 995
    monitor-exit v1

    .line 996
    const/4 p1, 0x0

    return p1

    .line 995
    :catchall_27
    move-exception p1

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_27

    throw p1
.end method

.method protected showTetheredNotification(IZ)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 642
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    .line 643
    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 644
    if-nez v0, :cond_e

    .line 645
    return-void

    .line 647
    :cond_e
    nop

    .line 648
    const/16 v1, 0xf

    if-eq p1, v1, :cond_1f

    const/16 v1, 0x10

    if-eq p1, v1, :cond_1b

    .line 657
    const v1, 0x1080821

    goto :goto_23

    .line 653
    :cond_1b
    const v1, 0x1080820

    .line 654
    goto :goto_23

    .line 650
    :cond_1f
    const v1, 0x1080822

    .line 651
    nop

    .line 661
    :goto_23
    iget v2, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    const/4 v3, 0x0

    if-eqz v2, :cond_33

    .line 662
    if-ne v2, v1, :cond_2b

    .line 663
    return-void

    .line 665
    :cond_2b
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v2, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 667
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    .line 670
    :cond_33
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 671
    const-string v2, "com.android.settings"

    const-string v4, "com.android.settings.TetherSettings"

    invoke-virtual {v6, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 672
    const/high16 v2, 0x40000000  # 2.0f

    invoke-virtual {v6, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 674
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 677
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 681
    if-eqz p2, :cond_64

    .line 682
    const p2, 0x10406f1

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 683
    const v5, 0x10406f0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_72

    .line 685
    :cond_64
    const p2, 0x1040202

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 686
    const v5, 0x1040201

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 689
    :goto_72
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    if-nez v5, :cond_a5

    .line 690
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_STATUS:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    .line 692
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 693
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const v8, 0x106001c

    .line 694
    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 696
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 697
    const-string/jumbo v6, "status"

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 699
    :cond_a5
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 700
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 701
    invoke-virtual {p2, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 702
    invoke-virtual {p2, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 703
    iput p1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    .line 705
    iget p1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    iget-object p2, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 706
    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->buildInto(Landroid/app/Notification;)Landroid/app/Notification;

    move-result-object p2

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 705
    invoke-virtual {v0, v3, p1, p2, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 707
    return-void
.end method

.method public startTethering(ILandroid/os/ResultReceiver;Z)V
    .registers 5

    .line 398
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/connectivity/tethering/EntitlementManager;->startProvisioningIfNeeded(IZ)V

    .line 399
    const/4 p3, 0x1

    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/connectivity/Tethering;->enableTetheringInternal(IZLandroid/os/ResultReceiver;)V

    .line 400
    return-void
.end method

.method public stopTethering(I)V
    .registers 4

    .line 403
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/connectivity/Tethering;->enableTetheringInternal(IZLandroid/os/ResultReceiver;)V

    .line 404
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->stopProvisioningIfNeeded(I)V

    .line 405
    return-void
.end method

.method public systemReady()V
    .registers 4

    .line 1699
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    invoke-virtual {v1}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getDefaultNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->startTrackDefaultNetwork(Landroid/net/NetworkRequest;Lcom/android/server/connectivity/tethering/EntitlementManager;)V

    .line 1701
    return-void
.end method

.method public tether(Ljava/lang/String;)I
    .registers 3

    .line 500
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public unregisterTetheringEventCallback(Landroid/net/ITetheringEventCallback;)V
    .registers 4

    .line 1725
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/connectivity/-$$Lambda$Tethering$ejzAj9HzzUH3vxPx7BPSoYluGzM;

    invoke-direct {v1, p0, p1}, Lcom/android/server/connectivity/-$$Lambda$Tethering$ejzAj9HzzUH3vxPx7BPSoYluGzM;-><init>(Lcom/android/server/connectivity/Tethering;Landroid/net/ITetheringEventCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1728
    return-void
.end method

.method public untether(Ljava/lang/String;)I
    .registers 6

    .line 529
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    .line 530
    :try_start_3
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 531
    if-nez v1, :cond_2b

    .line 532
    sget-object v1, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to Untether an unknown iface :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ignoring"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 535
    :cond_2b
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherState;->isCurrentlyServing()Z

    move-result v2

    if-nez v2, :cond_4f

    .line 536
    sget-object v1, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to untether an inactive iface :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ignoring"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/4 p1, 0x4

    monitor-exit v0

    return p1

    .line 539
    :cond_4f
    iget-object p1, v1, Lcom/android/server/connectivity/Tethering$TetherState;->ipServer:Landroid/net/ip/IpServer;

    const v1, 0x50067

    invoke-virtual {p1, v1}, Landroid/net/ip/IpServer;->sendMessage(I)V

    .line 540
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 541
    :catchall_5a
    move-exception p1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5a

    throw p1
.end method

.method public untetherAll()V
    .registers 2

    .line 545
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    .line 546
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    .line 547
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    .line 548
    return-void
.end method
