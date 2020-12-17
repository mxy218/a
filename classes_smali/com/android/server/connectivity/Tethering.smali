.class public Lcom/android/server/connectivity/Tethering;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Tethering$PanServiceListener;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM;,
        Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;,
        Lcom/android/server/connectivity/Tethering$StateReceiver;,
        Lcom/android/server/connectivity/Tethering$TetherState;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final PACKAGE_NAMES_ENABLE_NAT:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z = true

.field private static mUsbLastTetheredState:Z

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
.field private mBluetoothConnectedDeviceCount:I

.field private final mCarrierConfigChange:Landroid/net/util/VersionedBroadcastListener;

.field private volatile mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

.field private final mDefaultSubscriptionChange:Landroid/net/util/VersionedBroadcastListener;

.field private final mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

.field private mEnableNat:Z

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

.field private mNotificationSync:Ljava/lang/Object;

.field private final mOffloadController:Lcom/android/server/connectivity/tethering/OffloadController;

.field protected mPanService:Landroid/bluetooth/BluetoothPan;

.field private final mPolicyManager:Landroid/net/INetworkPolicyManager;

.field private final mPublicSync:Ljava/lang/Object;

.field private mRndisEnabled:Z

.field private mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

.field private mStartWifiTetheringPackage:Ljava/lang/String;

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

.field private mWifiConnectedDeviceCount:I

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiTetherRequested:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 139
    const-class v0, Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    .line 143
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/android/server/connectivity/Tethering;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-class v1, Landroid/net/ip/IpServer;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/connectivity/Tethering;->messageClasses:[Ljava/lang/Class;

    .line 146
    sget-object v0, Lcom/android/server/connectivity/Tethering;->messageClasses:[Ljava/lang/Class;

    .line 147
    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/Tethering;->sMagicDecoderRing:Landroid/util/SparseArray;

    .line 1992
    sput-boolean v2, Lcom/android/server/connectivity/Tethering;->mUsbLastTetheredState:Z

    .line 2217
    const-string v0, "com.meizu.connectivitysettings"

    const-string v1, "com.android.systemui"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/Tethering;->PACKAGE_NAMES_ENABLE_NAT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;Landroid/os/Looper;Lcom/android/server/connectivity/MockableSystemProperties;Lcom/android/server/connectivity/tethering/TetheringDependencies;)V
    .registers 24
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "nmService"  # Landroid/os/INetworkManagementService;
    .param p3, "statsService"  # Landroid/net/INetworkStatsService;
    .param p4, "policyManager"  # Landroid/net/INetworkPolicyManager;
    .param p5, "looper"  # Landroid/os/Looper;
    .param p6, "systemProperties"  # Lcom/android/server/connectivity/MockableSystemProperties;
    .param p7, "deps"  # Lcom/android/server/connectivity/tethering/TetheringDependencies;

    .line 212
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    .line 172
    new-instance v2, Landroid/net/util/SharedLog;

    sget-object v3, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/net/util/SharedLog;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    .line 194
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, v0, Lcom/android/server/connectivity/Tethering;->mTetheringEventCallbacks:Landroid/os/RemoteCallbackList;

    .line 1991
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/connectivity/Tethering;->mEnableNat:Z

    .line 2189
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/connectivity/Tethering;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2190
    new-instance v3, Lcom/android/server/connectivity/Tethering$3;

    invoke-direct {v3, v0}, Lcom/android/server/connectivity/Tethering$3;-><init>(Lcom/android/server/connectivity/Tethering;)V

    iput-object v3, v0, Lcom/android/server/connectivity/Tethering;->mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    .line 213
    iget-object v3, v0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string v4, "constructed"

    invoke-virtual {v3, v4}, Landroid/net/util/SharedLog;->mark(Ljava/lang/String;)V

    .line 214
    move-object/from16 v3, p1

    iput-object v3, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    .line 215
    move-object/from16 v4, p2

    iput-object v4, v0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    .line 216
    move-object/from16 v5, p3

    iput-object v5, v0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    .line 217
    move-object/from16 v6, p4

    iput-object v6, v0, Lcom/android/server/connectivity/Tethering;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 218
    move-object/from16 v7, p5

    iput-object v7, v0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    .line 219
    iput-object v1, v0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    .line 221
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, v0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    .line 222
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, v0, Lcom/android/server/connectivity/Tethering;->mNotificationSync:Ljava/lang/Object;

    .line 224
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    iput-object v8, v0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    .line 226
    new-instance v8, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, v0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    const-string v10, "TetherMaster"

    invoke-direct {v8, v0, v10, v9, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Lcom/android/server/connectivity/tethering/TetheringDependencies;)V

    iput-object v8, v0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    .line 227
    iget-object v8, v0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v8}, Lcom/android/internal/util/StateMachine;->start()V

    .line 229
    iget-object v8, v0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v8}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    .line 230
    new-instance v8, Lcom/android/server/connectivity/tethering/OffloadController;

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    iget-object v9, v0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    .line 231
    invoke-virtual {v9, v10, v11}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getOffloadHardwareInterface(Landroid/os/Handler;Landroid/net/util/SharedLog;)Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    move-result-object v11

    iget-object v9, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    .line 232
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v14, v0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    move-object v9, v8

    invoke-direct/range {v9 .. v14}, Lcom/android/server/connectivity/tethering/OffloadController;-><init>(Landroid/os/Handler;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;Landroid/content/ContentResolver;Landroid/os/INetworkManagementService;Landroid/net/util/SharedLog;)V

    iput-object v8, v0, Lcom/android/server/connectivity/Tethering;->mOffloadController:Lcom/android/server/connectivity/tethering/OffloadController;

    .line 234
    iget-object v8, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v9, v0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const v11, 0x50005

    invoke-virtual {v1, v8, v9, v10, v11}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getUpstreamNetworkMonitor(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/net/util/SharedLog;I)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    .line 236
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    iput-object v8, v0, Lcom/android/server/connectivity/Tethering;->mForwardedDownstreams:Ljava/util/HashSet;

    .line 238
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 239
    .local v8, "filter":Landroid/content/IntentFilter;
    const-string v9, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    iget-object v10, v0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const v14, 0x50008

    move-object/from16 v15, p6

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getEntitlementManager(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/net/util/SharedLog;ILcom/android/server/connectivity/MockableSystemProperties;)Lcom/android/server/connectivity/tethering/EntitlementManager;

    move-result-object v9

    iput-object v9, v0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    .line 244
    iget-object v9, v0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    new-instance v10, Lcom/android/server/connectivity/-$$Lambda$Tethering$3zIH-fISJxjng2YhMI1EBDdSKsk;

    invoke-direct {v10, v0}, Lcom/android/server/connectivity/-$$Lambda$Tethering$3zIH-fISJxjng2YhMI1EBDdSKsk;-><init>(Lcom/android/server/connectivity/Tethering;)V

    invoke-virtual {v9, v10}, Lcom/android/server/connectivity/tethering/EntitlementManager;->setOnUiEntitlementFailedListener(Lcom/android/server/connectivity/tethering/EntitlementManager$OnUiEntitlementFailedListener;)V

    .line 248
    iget-object v9, v0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    new-instance v10, Lcom/android/server/connectivity/-$$Lambda$Tethering$n3LtFaPEJryBHWNNaGBvLgh7QQk;

    invoke-direct {v10, v0}, Lcom/android/server/connectivity/-$$Lambda$Tethering$n3LtFaPEJryBHWNNaGBvLgh7QQk;-><init>(Lcom/android/server/connectivity/Tethering;)V

    invoke-virtual {v9, v10}, Lcom/android/server/connectivity/tethering/EntitlementManager;->setTetheringConfigurationFetcher(Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;)V

    .line 253
    new-instance v15, Landroid/net/util/VersionedBroadcastListener;

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/android/server/connectivity/-$$Lambda$Tethering$a_wqxo60onQxTR27G2Ub5703PoY;

    invoke-direct {v14, v0}, Lcom/android/server/connectivity/-$$Lambda$Tethering$a_wqxo60onQxTR27G2Ub5703PoY;-><init>(Lcom/android/server/connectivity/Tethering;)V

    const-string v10, "CarrierConfigChangeListener"

    move-object v9, v15

    move-object v13, v8

    invoke-direct/range {v9 .. v14}, Landroid/net/util/VersionedBroadcastListener;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Landroid/content/IntentFilter;Ljava/util/function/Consumer;)V

    iput-object v15, v0, Lcom/android/server/connectivity/Tethering;->mCarrierConfigChange:Landroid/net/util/VersionedBroadcastListener;

    .line 261
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    move-object v8, v9

    .line 262
    const-string v9, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    new-instance v9, Landroid/net/util/VersionedBroadcastListener;

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    new-instance v15, Lcom/android/server/connectivity/-$$Lambda$Tethering$Ou4huZtFpEPgpllOn6YJeTgvhHw;

    invoke-direct {v15, v0}, Lcom/android/server/connectivity/-$$Lambda$Tethering$Ou4huZtFpEPgpllOn6YJeTgvhHw;-><init>(Lcom/android/server/connectivity/Tethering;)V

    const-string v11, "DefaultSubscriptionChangeListener"

    move-object v10, v9

    move-object v14, v8

    invoke-direct/range {v10 .. v15}, Landroid/net/util/VersionedBroadcastListener;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Landroid/content/IntentFilter;Ljava/util/function/Consumer;)V

    iput-object v9, v0, Lcom/android/server/connectivity/Tethering;->mDefaultSubscriptionChange:Landroid/net/util/VersionedBroadcastListener;

    .line 277
    new-instance v9, Lcom/android/server/connectivity/Tethering$StateReceiver;

    invoke-direct {v9, v0, v2}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V

    iput-object v9, v0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 280
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 282
    iget-object v2, v0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v2}, Lcom/android/server/connectivity/Tethering;->startStateMachineUpdaters(Landroid/os/Handler;)V

    .line 283
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/Tethering;Landroid/os/ResultReceiver;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"  # Landroid/os/ResultReceiver;
    .param p2, "x2"  # I

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/EntitlementManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/connectivity/Tethering;

    .line 137
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # I

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->enableWifiIpServingLocked(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # I

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->disableWifiIpServingLocked(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/Tethering;IZ)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"  # I
    .param p2, "x2"  # Z

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->mzShowTetheredNotification(IZ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/Tethering;Lcom/android/internal/util/State;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"  # Lcom/android/internal/util/State;
    .param p2, "x2"  # I

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->logMessage(Lcom/android/internal/util/State;I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/connectivity/Tethering;

    .line 137
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/connectivity/Tethering;

    .line 137
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/connectivity/Tethering;

    .line 137
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/connectivity/Tethering;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/connectivity/Tethering;

    .line 137
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->maybeDunSettingChanged()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/connectivity/Tethering;

    .line 137
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/connectivity/Tethering;)Landroid/net/Network;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/connectivity/Tethering;

    .line 137
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherUpstream:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/connectivity/Tethering;Landroid/net/Network;)Landroid/net/Network;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"  # Landroid/net/Network;

    .line 137
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mTetherUpstream:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/server/connectivity/Tethering;Landroid/net/Network;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"  # Landroid/net/Network;

    .line 137
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->reportUpstreamChanged(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/connectivity/Tethering;Landroid/net/NetworkState;)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"  # Landroid/net/NetworkState;

    .line 137
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->pertainsToCurrentUpstream(Landroid/net/NetworkState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/InterfaceSet;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/connectivity/Tethering;

    .line 137
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/server/connectivity/Tethering;Landroid/net/util/InterfaceSet;)Landroid/net/util/InterfaceSet;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"  # Landroid/net/util/InterfaceSet;

    .line 137
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashSet;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/connectivity/Tethering;

    .line 137
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mForwardedDownstreams:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/connectivity/Tethering;)Landroid/net/wifi/WifiManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/connectivity/Tethering;

    .line 137
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/connectivity/Tethering;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/connectivity/Tethering;

    .line 137
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->upstreamWanted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/Tethering;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/connectivity/Tethering;

    .line 137
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/OffloadController;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/connectivity/Tethering;

    .line 137
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mOffloadController:Lcom/android/server/connectivity/tethering/OffloadController;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/connectivity/Tethering;Landroid/net/ip/IpServer;II)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"  # Landroid/net/ip/IpServer;
    .param p2, "x2"  # I
    .param p3, "x3"  # I

    .line 137
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->notifyInterfaceStateChange(Landroid/net/ip/IpServer;II)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/connectivity/Tethering;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/connectivity/Tethering;

    .line 137
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mEnableNat:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/connectivity/Tethering;Landroid/net/ip/IpServer;Landroid/net/LinkProperties;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"  # Landroid/net/ip/IpServer;
    .param p2, "x2"  # Landroid/net/LinkProperties;

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->notifyLinkPropertiesChanged(Landroid/net/ip/IpServer;Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Landroid/content/Intent;

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->mzOnReceivedBroadcast(Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .line 137
    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/connectivity/Tethering;

    .line 137
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/connectivity/Tethering;

    .line 137
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/Tethering;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/connectivity/Tethering;

    .line 137
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/connectivity/Tethering;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"  # Z

    .line 137
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/Tethering;II)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"  # I
    .param p2, "x2"  # I

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->tetherMatchingInterfaces(II)V

    return-void
.end method

.method private static argsContain([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p0, "args"  # [Ljava/lang/String;
    .param p1, "target"  # Ljava/lang/String;

    .line 1850
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p0, v2

    .line 1851
    .local v3, "arg":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v0, 0x1

    return v0

    .line 1850
    .end local v3  # "arg":Ljava/lang/String;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1853
    :cond_12
    return v1
.end method

.method private changeInterfaceState(Ljava/lang/String;I)V
    .registers 7
    .param p1, "ifname"  # Ljava/lang/String;
    .param p2, "requestedState"  # I

    .line 970
    if-eqz p2, :cond_27

    const/4 v0, 0x1

    if-eq p2, v0, :cond_27

    const/4 v0, 0x2

    if-eq p2, v0, :cond_22

    const/4 v0, 0x3

    if-eq p2, v0, :cond_22

    .line 980
    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown interface state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    return-void

    .line 977
    :cond_22
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;I)I

    move-result v0

    .line 978
    .local v0, "result":I
    goto :goto_2c

    .line 973
    .end local v0  # "result":I
    :cond_27
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v0

    .line 974
    .restart local v0  # "result":I
    nop

    .line 983
    :goto_2c
    if-eqz v0, :cond_46

    .line 984
    sget-object v1, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable start or stop tethering on iface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    return-void

    .line 987
    :cond_46
    return-void
.end method

.method private static copy([Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0, "strarray"  # [Ljava/lang/String;

    .line 1984
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private disableWifiIpServingLocked(Ljava/lang/String;I)V
    .registers 7
    .param p1, "ifname"  # Ljava/lang/String;
    .param p2, "apState"  # I

    .line 876
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canceling WiFi tethering request - AP_STATE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 882
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetherRequested:Z

    .line 884
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 885
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 886
    .local v0, "ts":Lcom/android/server/connectivity/Tethering$TetherState;
    if-eqz v0, :cond_2f

    .line 887
    iget-object v1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->ipServer:Landroid/net/ip/IpServer;

    invoke-virtual {v1}, Landroid/net/ip/IpServer;->unwanted()V

    .line 888
    return-void

    .line 892
    .end local v0  # "ts":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_2f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_30
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_4f

    .line 893
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherState;->ipServer:Landroid/net/ip/IpServer;

    .line 894
    .local v1, "ipServer":Landroid/net/ip/IpServer;
    invoke-virtual {v1}, Landroid/net/ip/IpServer;->interfaceType()I

    move-result v2

    if-nez v2, :cond_4c

    .line 895
    invoke-virtual {v1}, Landroid/net/ip/IpServer;->unwanted()V

    .line 896
    return-void

    .line 892
    .end local v1  # "ipServer":Landroid/net/ip/IpServer;
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 900
    .end local v0  # "i":I
    :cond_4f
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error disabling Wi-Fi IP serving; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_65

    const-string/jumbo v2, "no interface name specified"

    goto :goto_77

    .line 902
    :cond_65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "specified interface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 900
    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 903
    return-void
.end method

.method private enableTetheringInternal(IZLandroid/os/ResultReceiver;)V
    .registers 7
    .param p1, "type"  # I
    .param p2, "enable"  # Z
    .param p3, "receiver"  # Landroid/os/ResultReceiver;

    .line 419
    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    if-eq p1, v0, :cond_17

    const/4 v1, 0x2

    if-eq p1, v1, :cond_13

    .line 432
    sget-object v1, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string v2, "Invalid tether type."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-direct {p0, p3, v0}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    goto :goto_27

    .line 429
    :cond_13
    invoke-direct {p0, p2, p3}, Lcom/android/server/connectivity/Tethering;->setBluetoothTethering(ZLandroid/os/ResultReceiver;)V

    .line 430
    goto :goto_27

    .line 425
    :cond_17
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    move-result v0

    .line 426
    .local v0, "result":I
    invoke-direct {p0, p3, v0}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    .line 427
    goto :goto_27

    .line 421
    .end local v0  # "result":I
    :cond_1f
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Tethering;->setWifiTethering(Z)I

    move-result v0

    .line 422
    .restart local v0  # "result":I
    invoke-direct {p0, p3, v0}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    .line 423
    nop

    .line 435
    .end local v0  # "result":I
    :goto_27
    return-void
.end method

.method private enableWifiIpServingLocked(Ljava/lang/String;I)V
    .registers 8
    .param p1, "ifname"  # Ljava/lang/String;
    .param p2, "wifiIpMode"  # I

    .line 909
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1f

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1d

    .line 917
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot enable IP serving in unknown WiFi mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 918
    return-void

    .line 914
    :cond_1d
    const/4 v1, 0x3

    .line 915
    .local v1, "ipServingMode":I
    goto :goto_21

    .line 911
    .end local v1  # "ipServingMode":I
    :cond_1f
    const/4 v1, 0x2

    .line 912
    .restart local v1  # "ipServingMode":I
    nop

    .line 921
    :goto_21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_39

    .line 923
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_30

    goto :goto_31

    :cond_30
    move v2, v3

    :goto_31
    move v0, v2

    .line 924
    .local v0, "interfaceType":I
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->maybeTrackNewInterfaceLocked(Ljava/lang/String;I)V

    .line 925
    invoke-direct {p0, p1, v1}, Lcom/android/server/connectivity/Tethering;->changeInterfaceState(Ljava/lang/String;I)V

    .line 926
    .end local v0  # "interfaceType":I
    goto :goto_4c

    .line 927
    :cond_39
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-array v0, v0, [Ljava/lang/Object;

    .line 929
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 927
    const-string v3, "Cannot enable IP serving in mode %s on missing interface name"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 931
    :goto_4c
    return-void
.end method

.method private getWifiManager()Landroid/net/wifi/WifiManager;
    .registers 3

    .line 317
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private ifaceNameToType(Ljava/lang/String;)I
    .registers 5
    .param p1, "iface"  # Ljava/lang/String;

    .line 371
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    .line 373
    .local v0, "cfg":Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isWifi(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 374
    const-string/jumbo v1, "persist.vendor.wigig.interface"

    const-string/jumbo v2, "wigig0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "wigigIface":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 376
    const/4 v2, 0x3

    return v2

    .line 378
    :cond_1a
    const/4 v2, 0x0

    return v2

    .line 379
    .end local v1  # "wigigIface":Ljava/lang/String;
    :cond_1c
    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isUsb(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 380
    const/4 v1, 0x1

    return v1

    .line 381
    :cond_24
    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 382
    const/4 v1, 0x2

    return v1

    .line 384
    :cond_2c
    const/4 v1, -0x1

    return v1
.end method

.method private logMessage(Lcom/android/internal/util/State;I)V
    .registers 7
    .param p1, "state"  # Lcom/android/internal/util/State;
    .param p2, "what"  # I

    .line 1081
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/connectivity/Tethering;->sMagicDecoderRing:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 1082
    return-void
.end method

.method private makeControlCallback()Landroid/net/ip/IpServer$Callback;
    .registers 2

    .line 1857
    new-instance v0, Lcom/android/server/connectivity/Tethering$2;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$2;-><init>(Lcom/android/server/connectivity/Tethering;)V

    return-object v0
.end method

.method private maybeDefaultDataSubChanged()V
    .registers 3

    .line 338
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 339
    .local v0, "subId":I
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget v1, v1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->subId:I

    if-ne v0, v1, :cond_d

    return-void

    .line 340
    :cond_d
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration(I)V

    .line 341
    return-void
.end method

.method private maybeDunSettingChanged()V
    .registers 3

    .line 332
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->checkDunRequired(Landroid/content/Context;)Z

    move-result v0

    .line 333
    .local v0, "isDunRequired":Z
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-boolean v1, v1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isDunRequired:Z

    if-ne v0, v1, :cond_d

    return-void

    .line 334
    :cond_d
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 335
    return-void
.end method

.method private maybeTrackNewInterfaceLocked(Ljava/lang/String;)V
    .registers 6
    .param p1, "iface"  # Ljava/lang/String;

    .line 1948
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I

    move-result v0

    .line 1949
    .local v0, "interfaceType":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    .line 1950
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not a tetherable iface, ignoring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 1951
    return-void

    .line 1953
    :cond_1e
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->maybeTrackNewInterfaceLocked(Ljava/lang/String;I)V

    .line 1954
    return-void
.end method

.method private maybeTrackNewInterfaceLocked(Ljava/lang/String;I)V
    .registers 15
    .param p1, "iface"  # Ljava/lang/String;
    .param p2, "interfaceType"  # I

    .line 1958
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1959
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "active iface ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") reported as added, ignoring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 1960
    return-void

    .line 1963
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

    .line 1964
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherState;

    new-instance v11, Landroid/net/ip/IpServer;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    .line 1966
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->makeControlCallback()Landroid/net/ip/IpServer$Callback;

    move-result-object v8

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-boolean v9, v1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->enableLegacyDhcpServer:Z

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    .line 1967
    invoke-virtual {v1}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getIpServerDependencies()Landroid/net/ip/IpServer$Dependencies;

    move-result-object v10

    move-object v1, v11

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v1 .. v10}, Landroid/net/ip/IpServer;-><init>(Ljava/lang/String;Landroid/os/Looper;ILandroid/net/util/SharedLog;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/ip/IpServer$Callback;ZLandroid/net/ip/IpServer$Dependencies;)V

    invoke-direct {v0, v11}, Lcom/android/server/connectivity/Tethering$TetherState;-><init>(Landroid/net/ip/IpServer;)V

    .line 1968
    .local v0, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1969
    iget-object v1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->ipServer:Landroid/net/ip/IpServer;

    invoke-virtual {v1}, Landroid/net/ip/IpServer;->start()V

    .line 1970
    return-void
.end method

.method private mzInitialize()V
    .registers 6

    .line 2126
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/Tethering;->mWifiConnectedDeviceCount:I

    .line 2127
    iput v0, p0, Lcom/android/server/connectivity/Tethering;->mBluetoothConnectedDeviceCount:I

    .line 2129
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 2130
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    sget-object v1, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adapter == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    const/4 v1, 0x0

    if-eqz v0, :cond_37

    .line 2133
    :try_start_22
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/connectivity/Tethering$PanServiceListener;

    invoke-direct {v3, p0, v1}, Lcom/android/server/connectivity/Tethering$PanServiceListener;-><init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V

    const/4 v4, 0x5

    invoke-virtual {v0, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2d} :catch_2e

    .line 2137
    goto :goto_37

    .line 2134
    :catch_2e
    move-exception v1

    .line 2135
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string v3, "Error to getProfileProxy "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2136
    return-void

    .line 2140
    .end local v1  # "e":Ljava/lang/Exception;
    :cond_37
    :goto_37
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2141
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-virtual {v2, v3, v1}, Landroid/net/wifi/WifiManager;->registerSoftApCallback(Landroid/net/wifi/WifiManager$SoftApCallback;Landroid/os/Handler;)V

    .line 2143
    return-void
.end method

.method private mzOnReceivedBroadcast(Ljava/lang/String;Landroid/content/Intent;)V
    .registers 8
    .param p1, "action"  # Ljava/lang/String;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 2160
    const-string v0, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2a

    .line 2161
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPanService:Landroid/bluetooth/BluetoothPan;

    if-eqz v0, :cond_8a

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 2162
    const/4 v0, -0x1

    const-string v2, "android.bluetooth.pan.extra.LOCAL_ROLE"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2163
    .local v0, "bluetoothRole":I
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPanService:Landroid/bluetooth/BluetoothPan;

    if-ne v1, v0, :cond_29

    .line 2165
    sget-object v1, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "mzOnReceivedBroadcast: send broadcast in case connected devices num changed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V

    .line 2169
    .end local v0  # "bluetoothRole":I
    :cond_29
    goto :goto_8a

    .line 2170
    :cond_2a
    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 2171
    const/16 v0, 0xe

    const-string/jumbo v2, "wifi_state"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2173
    .local v2, "state":I
    if-eq v2, v0, :cond_6f

    const/16 v0, 0xb

    if-ne v2, v0, :cond_42

    goto :goto_6f

    .line 2177
    :cond_42
    const/16 v0, 0xc

    if-ne v2, v0, :cond_8a

    .line 2179
    const-string v0, "extra_enable_nat"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 2180
    .local v0, "natEnabledExt":Z
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Tethering;->shouldEnableNat(Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mEnableNat:Z

    .line 2181
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mStartWifiTetheringPackage:Ljava/lang/String;

    .line 2182
    sget-object v1, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "softap enabling...,mEnableNat: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/connectivity/Tethering;->mEnableNat:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a

    .line 2175
    .end local v0  # "natEnabledExt":Z
    :cond_6f
    :goto_6f
    iput-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mEnableNat:Z

    .line 2176
    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mEnableNat: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/connectivity/Tethering;->mEnableNat:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    .end local v2  # "state":I
    :cond_8a
    :goto_8a
    return-void
.end method

.method private mzShowTetheredNotification(IZ)V
    .registers 20
    .param p1, "icon"  # I
    .param p2, "needCancelNotification"  # Z

    .line 2035
    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    .line 2036
    const-string/jumbo v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/NotificationManager;

    .line 2037
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v3, :cond_174

    const v0, 0xa0802ba

    if-eq v2, v0, :cond_19

    goto/16 :goto_174

    .line 2041
    :cond_19
    iget-object v4, v1, Lcom/android/server/connectivity/Tethering;->mNotificationSync:Ljava/lang/Object;

    monitor-enter v4

    .line 2043
    :try_start_1c
    iget-object v0, v1, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    if-eqz v0, :cond_25

    if-eqz p2, :cond_25

    .line 2045
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    .line 2049
    :cond_25
    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "com.meizu.connectivitysettings"

    const-string v6, "com.meizu.connectivitysettings.Settings$TetherSettingsActivity"

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v9

    .line 2054
    .local v9, "intent":Landroid/content/Intent;
    iget-object v7, v1, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v7 .. v12}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v5, v0

    .line 2057
    .local v5, "pi":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    move-object v6, v0

    .line 2058
    .local v6, "r":Landroid/content/res/Resources;
    const v0, 0xa10019e

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v7, v0

    .line 2059
    .local v7, "title":Ljava/lang/CharSequence;
    const v8, 0xa10019b

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v10, v0

    .line 2062
    .local v10, "message":Ljava/lang/CharSequence;
    iget-object v0, v1, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "wifi"

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    move-object v11, v0

    .line 2063
    .local v11, "manager":Landroid/net/wifi/WifiManager;
    const/4 v0, 0x0

    .line 2064
    .local v0, "count":I
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getHotspotClients()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    iput v12, v1, Lcom/android/server/connectivity/Tethering;->mWifiConnectedDeviceCount:I

    .line 2065
    const/4 v12, 0x0

    .line 2066
    .local v12, "bluetoothTethered":I
    sget-boolean v13, Lcom/android/server/connectivity/Tethering;->mUsbLastTetheredState:Z

    if-eqz v13, :cond_70

    .line 2067
    const/4 v0, 0x1

    .line 2069
    :cond_70
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getHotspotClients()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    add-int/2addr v13, v0

    .line 2070
    .end local v0  # "count":I
    .local v13, "count":I
    iget-object v0, v1, Lcom/android/server/connectivity/Tethering;->mPanService:Landroid/bluetooth/BluetoothPan;

    if-nez v0, :cond_85

    .line 2071
    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string v14, "bluetoothPan is null"

    invoke-static {v0, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catchall {:try_start_1c .. :try_end_84} :catchall_171

    goto :goto_bd

    .line 2074
    :cond_85
    :try_start_85
    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bluetoothPan is tethered is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/android/server/connectivity/Tethering;->mPanService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v15}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    iget-object v0, v1, Lcom/android/server/connectivity/Tethering;->mPanService:Landroid/bluetooth/BluetoothPan;

    if-eqz v0, :cond_b8

    iget-object v0, v1, Lcom/android/server/connectivity/Tethering;->mPanService:Landroid/bluetooth/BluetoothPan;

    .line 2076
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 2077
    iget-object v0, v1, Lcom/android/server/connectivity/Tethering;->mPanService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_b7} :catch_b9
    .catchall {:try_start_85 .. :try_end_b7} :catchall_171

    move v12, v0

    .line 2082
    :cond_b8
    goto :goto_bd

    .line 2079
    :catch_b9
    move-exception v0

    .line 2081
    .local v0, "e":Ljava/lang/Exception;
    :try_start_ba
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2085
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_bd
    add-int/2addr v13, v12

    .line 2087
    const/4 v0, 0x1

    if-lez v13, :cond_e2

    .line 2089
    const v8, 0xa10019d

    new-array v14, v0, [Ljava/lang/Object;

    .line 2090
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    .line 2089
    invoke-virtual {v6, v8, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 2091
    .end local v10  # "message":Ljava/lang/CharSequence;
    .local v8, "message":Ljava/lang/CharSequence;
    const v10, 0xa10019c

    new-array v14, v0, [Ljava/lang/Object;

    .line 2092
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v16

    .line 2091
    invoke-virtual {v6, v10, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .local v10, "tickerMessage":Ljava/lang/CharSequence;
    goto :goto_e7

    .line 2094
    .end local v8  # "message":Ljava/lang/CharSequence;
    .local v10, "message":Ljava/lang/CharSequence;
    :cond_e2
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 2096
    .end local v10  # "message":Ljava/lang/CharSequence;
    .restart local v8  # "message":Ljava/lang/CharSequence;
    move-object v10, v7

    .line 2098
    .local v10, "tickerMessage":Ljava/lang/CharSequence;
    :goto_e7
    sget-object v14, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mUsbLastTetheredState is "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/connectivity/Tethering;->mUsbLastTetheredState:Z

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " count is "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " message "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    iget-object v0, v1, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    if-nez v0, :cond_144

    .line 2102
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v14, v1, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v15, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_STATUS:Ljava/lang/String;

    invoke-direct {v0, v14, v15}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    .line 2104
    iget-object v0, v1, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    const-wide/16 v14, 0x0

    invoke-virtual {v0, v14, v15}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2105
    const/4 v14, 0x1

    invoke-virtual {v0, v14}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v14, v1, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const v15, 0x106001c

    .line 2106
    invoke-virtual {v14, v15}, Landroid/content/Context;->getColor(I)I

    move-result v14

    invoke-virtual {v0, v14}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2108
    const/4 v14, 0x1

    invoke-virtual {v0, v14}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string/jumbo v14, "status"

    .line 2109
    invoke-virtual {v0, v14}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 2111
    :cond_144
    iget-object v0, v1, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2112
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2113
    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2114
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2115
    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2116
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 2117
    .local v0, "notification":Landroid/app/Notification;
    iput v2, v1, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    .line 2118
    iget-object v14, v0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    const v15, 0xa0802db

    iput v15, v14, Landroid/app/NotificationExt;->notificationIcon:I

    .line 2120
    iget v15, v1, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v1, 0x0

    invoke-virtual {v3, v1, v15, v0, v14}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 2122
    .end local v0  # "notification":Landroid/app/Notification;
    .end local v5  # "pi":Landroid/app/PendingIntent;
    .end local v6  # "r":Landroid/content/res/Resources;
    .end local v7  # "title":Ljava/lang/CharSequence;
    .end local v8  # "message":Ljava/lang/CharSequence;
    .end local v9  # "intent":Landroid/content/Intent;
    .end local v10  # "tickerMessage":Ljava/lang/CharSequence;
    .end local v11  # "manager":Landroid/net/wifi/WifiManager;
    .end local v12  # "bluetoothTethered":I
    .end local v13  # "count":I
    monitor-exit v4

    .line 2123
    return-void

    .line 2122
    :catchall_171
    move-exception v0

    monitor-exit v4
    :try_end_173
    .catchall {:try_start_ba .. :try_end_173} :catchall_171

    throw v0

    .line 2039
    :cond_174
    :goto_174
    return-void
.end method

.method private mzTetherStateChanged(ZZZ)V
    .registers 11
    .param p1, "wifiTethered"  # Z
    .param p2, "bluetoothTethered"  # Z
    .param p3, "usbTethered"  # Z

    .line 1996
    const/4 v0, 0x0

    if-nez p3, :cond_11

    if-nez p1, :cond_11

    if-eqz p2, :cond_8

    goto :goto_11

    .line 2027
    :cond_8
    iput v0, p0, Lcom/android/server/connectivity/Tethering;->mBluetoothConnectedDeviceCount:I

    .line 2029
    sput-boolean p3, Lcom/android/server/connectivity/Tethering;->mUsbLastTetheredState:Z

    .line 2030
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    goto/16 :goto_8e

    .line 1997
    :cond_11
    :goto_11
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 1998
    .local v1, "manager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getHotspotClients()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 1999
    .local v2, "count":I
    iget v3, p0, Lcom/android/server/connectivity/Tethering;->mBluetoothConnectedDeviceCount:I

    .line 2000
    .local v3, "btConnectedDevices":I
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPanService:Landroid/bluetooth/BluetoothPan;

    if-eqz v4, :cond_45

    .line 2002
    :try_start_2a
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 2003
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPanService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/android/server/connectivity/Tethering;->mBluetoothConnectedDeviceCount:I

    goto :goto_44

    .line 2005
    :cond_3d
    iput v0, p0, Lcom/android/server/connectivity/Tethering;->mBluetoothConnectedDeviceCount:I
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_3f} :catch_40

    goto :goto_44

    .line 2007
    :catch_40
    move-exception v4

    .line 2009
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 2010
    .end local v4  # "e":Ljava/lang/Exception;
    :goto_44
    goto :goto_47

    .line 2013
    :cond_45
    iput v0, p0, Lcom/android/server/connectivity/Tethering;->mBluetoothConnectedDeviceCount:I

    .line 2015
    :goto_47
    sget-object v4, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mWifiConnectedDeviceCount "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/connectivity/Tethering;->mWifiConnectedDeviceCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mBluetoothConnectedDeviceCount "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/connectivity/Tethering;->mBluetoothConnectedDeviceCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    if-eqz v4, :cond_83

    if-nez v2, :cond_7b

    iget v4, p0, Lcom/android/server/connectivity/Tethering;->mWifiConnectedDeviceCount:I

    if-ne v4, v2, :cond_83

    :cond_7b
    iget v4, p0, Lcom/android/server/connectivity/Tethering;->mBluetoothConnectedDeviceCount:I

    if-ne v4, v3, :cond_83

    sget-boolean v4, Lcom/android/server/connectivity/Tethering;->mUsbLastTetheredState:Z

    if-eq v4, p3, :cond_8b

    .line 2021
    :cond_83
    sput-boolean p3, Lcom/android/server/connectivity/Tethering;->mUsbLastTetheredState:Z

    .line 2022
    const v4, 0xa0802ba

    invoke-direct {p0, v4, v0}, Lcom/android/server/connectivity/Tethering;->mzShowTetheredNotification(IZ)V

    .line 2024
    :cond_8b
    iput v2, p0, Lcom/android/server/connectivity/Tethering;->mWifiConnectedDeviceCount:I

    .line 2025
    .end local v1  # "manager":Landroid/net/wifi/WifiManager;
    .end local v2  # "count":I
    .end local v3  # "btConnectedDevices":I
    nop

    .line 2032
    :goto_8e
    return-void
.end method

.method private notifyInterfaceStateChange(Landroid/net/ip/IpServer;II)V
    .registers 12
    .param p1, "who"  # Landroid/net/ip/IpServer;
    .param p2, "state"  # I
    .param p3, "error"  # I

    .line 1880
    invoke-virtual {p1}, Landroid/net/ip/IpServer;->interfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1881
    .local v0, "iface":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1882
    :try_start_7
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 1883
    .local v2, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-eqz v2, :cond_1e

    iget-object v3, v2, Lcom/android/server/connectivity/Tethering$TetherState;->ipServer:Landroid/net/ip/IpServer;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1884
    iput p2, v2, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    .line 1885
    iput p3, v2, Lcom/android/server/connectivity/Tethering$TetherState;->lastError:I

    goto :goto_34

    .line 1887
    :cond_1e
    sget-object v3, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got notification from stale iface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    .end local v2  # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :goto_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_9b

    .line 1891
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

    .line 1897
    :try_start_54
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    if-ne p2, v7, :cond_5a

    move v3, v6

    goto :goto_5b

    :cond_5a
    move v3, v4

    :goto_5b
    invoke-interface {v1, v0, v3}, Landroid/net/INetworkPolicyManager;->onTetheringChanged(Ljava/lang/String;Z)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_5e} :catch_5f

    .line 1900
    goto :goto_60

    .line 1898
    :catch_5f
    move-exception v1

    .line 1905
    :goto_60
    const/4 v1, 0x5

    if-ne p3, v1, :cond_6b

    .line 1906
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    const v3, 0x50006

    invoke-virtual {v1, v3, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1909
    :cond_6b
    if-eqz p2, :cond_8e

    if-eq p2, v6, :cond_8e

    if-eq p2, v7, :cond_8a

    if-eq p2, v2, :cond_8a

    .line 1919
    sget-object v1, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown interface state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    return-void

    .line 1916
    :cond_8a
    const v1, 0x50001

    .line 1917
    .local v1, "which":I
    goto :goto_92

    .line 1912
    .end local v1  # "which":I
    :cond_8e
    const v1, 0x50002

    .line 1913
    .restart local v1  # "which":I
    nop

    .line 1922
    :goto_92
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v2, v1, p2, v4, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1923
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V

    .line 1924
    return-void

    .line 1889
    .end local v1  # "which":I
    :catchall_9b
    move-exception v2

    :try_start_9c
    monitor-exit v1
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    throw v2
.end method

.method private notifyLinkPropertiesChanged(Landroid/net/ip/IpServer;Landroid/net/LinkProperties;)V
    .registers 10
    .param p1, "who"  # Landroid/net/ip/IpServer;
    .param p2, "newLp"  # Landroid/net/LinkProperties;

    .line 1927
    invoke-virtual {p1}, Landroid/net/ip/IpServer;->interfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1929
    .local v0, "iface":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1930
    :try_start_7
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 1931
    .local v2, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-eqz v2, :cond_43

    iget-object v3, v2, Lcom/android/server/connectivity/Tethering$TetherState;->ipServer:Landroid/net/ip/IpServer;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 1932
    iget v3, v2, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    .line 1937
    .end local v2  # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    .local v3, "state":I
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_5b

    .line 1939
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    const/4 v5, 0x1

    .line 1941
    invoke-static {v3}, Landroid/net/ip/IpServer;->getStateString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x2

    aput-object p2, v2, v5

    .line 1939
    const-string v5, "OBSERVED LinkProperties update iface=%s state=%s lp=%s"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 1942
    const v1, 0x50007

    .line 1943
    .local v1, "which":I
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    const v5, 0x50007

    invoke-virtual {v2, v5, v3, v4, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1944
    return-void

    .line 1934
    .end local v1  # "which":I
    .end local v3  # "state":I
    .restart local v2  # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_43
    :try_start_43
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got notification from stale iface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 1935
    monitor-exit v1

    return-void

    .line 1937
    .end local v2  # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_5b
    move-exception v2

    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_43 .. :try_end_5d} :catchall_5b

    throw v2
.end method

.method private pertainsToCurrentUpstream(Landroid/net/NetworkState;)Z
    .registers 5
    .param p1, "ns"  # Landroid/net/NetworkState;

    .line 1095
    if-eqz p1, :cond_2d

    iget-object v0, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    if-eqz v0, :cond_2d

    .line 1096
    iget-object v0, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1097
    .local v1, "ifname":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    iget-object v2, v2, Landroid/net/util/InterfaceSet;->ifnames:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1098
    const/4 v0, 0x1

    return v0

    .line 1100
    .end local v1  # "ifname":Ljava/lang/String;
    :cond_2c
    goto :goto_14

    .line 1102
    :cond_2d
    const/4 v0, 0x0

    return v0
.end method

.method private reportUpstreamChanged(Landroid/net/Network;)V
    .registers 5
    .param p1, "network"  # Landroid/net/Network;

    .line 1765
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheringEventCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1767
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_20

    .line 1769
    :try_start_9
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetheringEventCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/ITetheringEventCallback;

    invoke-interface {v2, p1}, Landroid/net/ITetheringEventCallback;->onUpstreamChanged(Landroid/net/Network;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_1c
    .catchall {:try_start_9 .. :try_end_14} :catchall_15

    .line 1772
    goto :goto_1d

    .line 1775
    .end local v1  # "i":I
    :catchall_15
    move-exception v1

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetheringEventCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v1

    .line 1770
    .restart local v1  # "i":I
    :catch_1c
    move-exception v2

    .line 1767
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1775
    .end local v1  # "i":I
    :cond_20
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheringEventCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1776
    nop

    .line 1777
    return-void
.end method

.method private sendTetherResult(Landroid/os/ResultReceiver;I)V
    .registers 4
    .param p1, "receiver"  # Landroid/os/ResultReceiver;
    .param p2, "result"  # I

    .line 438
    if-eqz p1, :cond_6

    .line 439
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 441
    :cond_6
    return-void
.end method

.method private sendTetherStateChangedBroadcast()V
    .registers 17

    .line 557
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->isTetheringSupported()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 559
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 560
    .local v2, "availableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 561
    .local v3, "tetherList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 562
    .local v4, "localOnlyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 564
    .local v5, "erroredList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 565
    .local v0, "wifiTethered":Z
    const/4 v6, 0x0

    .line 566
    .local v6, "usbTethered":Z
    const/4 v7, 0x0

    .line 568
    .local v7, "bluetoothTethered":Z
    iget-object v8, v1, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    .line 569
    .local v8, "cfg":Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    iget-object v9, v1, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v9

    .line 570
    const/4 v10, 0x0

    move v11, v10

    move v12, v7

    move v7, v0

    .end local v0  # "wifiTethered":Z
    .local v7, "wifiTethered":Z
    .local v11, "i":I
    .local v12, "bluetoothTethered":Z
    :goto_2f
    :try_start_2f
    iget-object v0, v1, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v11, v0, :cond_a5

    .line 571
    iget-object v0, v1, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 572
    .local v0, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    iget-object v10, v1, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 573
    .local v10, "iface":Ljava/lang/String;
    sget-object v14, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "tetherState.lastState = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " iface = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget v13, v0, Lcom/android/server/connectivity/Tethering$TetherState;->lastError:I

    if-eqz v13, :cond_70

    .line 575
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a1

    .line 576
    :cond_70
    iget v13, v0, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_79

    .line 577
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a1

    .line 578
    :cond_79
    iget v13, v0, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_82

    .line 579
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a1

    .line 580
    :cond_82
    iget v13, v0, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_a1

    .line 581
    invoke-virtual {v8, v10}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isUsb(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8f

    .line 582
    const/4 v6, 0x1

    goto :goto_9e

    .line 583
    :cond_8f
    invoke-virtual {v8, v10}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isWifi(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_97

    .line 584
    const/4 v7, 0x1

    goto :goto_9e

    .line 585
    :cond_97
    invoke-virtual {v8, v10}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isBluetooth(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9e

    .line 586
    const/4 v12, 0x1

    .line 588
    :cond_9e
    :goto_9e
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    .end local v0  # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    .end local v10  # "iface":Ljava/lang/String;
    :cond_a1
    :goto_a1
    add-int/lit8 v11, v11, 0x1

    const/4 v10, 0x0

    goto :goto_2f

    .line 591
    .end local v11  # "i":I
    :cond_a5
    monitor-exit v9
    :try_end_a6
    .catchall {:try_start_2f .. :try_end_a6} :catchall_1a7

    .line 592
    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "usbTetherd = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " wifiTetherd = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " bluethoothTethered = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    new-instance v0, Landroid/content/Intent;

    const-string v9, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 594
    .local v0, "bcast":Landroid/content/Intent;
    const/high16 v9, 0x24000000

    invoke-virtual {v0, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 596
    const-string v9, "availableArray"

    invoke-virtual {v0, v9, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 597
    const-string/jumbo v9, "localOnlyArray"

    invoke-virtual {v0, v9, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 598
    const-string/jumbo v9, "tetherArray"

    invoke-virtual {v0, v9, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 599
    const-string v9, "erroredArray"

    invoke-virtual {v0, v9, v5}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 601
    iget-boolean v9, v1, Lcom/android/server/connectivity/Tethering;->mEnableNat:Z

    const-string v10, "extra_enable_nat"

    invoke-virtual {v0, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 603
    iget-object v9, v1, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v0, v10}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 605
    sget-object v9, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "avail"

    const/4 v13, 0x0

    aput-object v11, v10, v13

    .line 607
    const-string v11, ","

    invoke-static {v11, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x1

    aput-object v11, v10, v13

    const-string/jumbo v11, "local_only"

    const/4 v13, 0x2

    aput-object v11, v10, v13

    .line 608
    const-string v11, ","

    invoke-static {v11, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x3

    aput-object v11, v10, v13

    const/4 v11, 0x4

    const-string/jumbo v13, "tether"

    aput-object v13, v10, v11

    const/4 v11, 0x5

    .line 609
    const-string v13, ","

    invoke-static {v13, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v11

    const/4 v11, 0x6

    const-string v13, "error"

    aput-object v13, v10, v11

    const/4 v11, 0x7

    .line 610
    const-string v13, ","

    invoke-static {v13, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v11

    .line 605
    const-string/jumbo v11, "sendTetherStateChangedBroadcast %s=[%s] %s=[%s] %s=[%s] %s=[%s]"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    if-eqz v12, :cond_150

    iget-object v9, v1, Lcom/android/server/connectivity/Tethering;->mPanService:Landroid/bluetooth/BluetoothPan;

    if-nez v9, :cond_150

    .line 615
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->mzInitialize()V

    .line 619
    :cond_150
    const v9, 0x108082e

    if-eqz v6, :cond_168

    .line 620
    if-nez v7, :cond_163

    if-eqz v12, :cond_15b

    const/4 v10, 0x1

    goto :goto_164

    .line 627
    :cond_15b
    const v9, 0x108082f

    const/4 v10, 0x1

    invoke-direct {v1, v9, v10}, Lcom/android/server/connectivity/Tethering;->mzShowTetheredNotification(IZ)V

    goto :goto_19a

    .line 620
    :cond_163
    const/4 v10, 0x1

    .line 623
    :goto_164
    invoke-direct {v1, v9, v10}, Lcom/android/server/connectivity/Tethering;->mzShowTetheredNotification(IZ)V

    goto :goto_19a

    .line 629
    :cond_168
    const/4 v10, 0x1

    if-eqz v7, :cond_178

    .line 630
    if-eqz v12, :cond_171

    .line 633
    invoke-direct {v1, v9, v10}, Lcom/android/server/connectivity/Tethering;->mzShowTetheredNotification(IZ)V

    goto :goto_19a

    .line 637
    :cond_171
    const v9, 0x1080830

    invoke-direct {v1, v9, v10}, Lcom/android/server/connectivity/Tethering;->mzShowTetheredNotification(IZ)V

    goto :goto_19a

    .line 639
    :cond_178
    if-eqz v12, :cond_197

    .line 643
    iget-object v9, v1, Lcom/android/server/connectivity/Tethering;->mPanService:Landroid/bluetooth/BluetoothPan;

    if-eqz v9, :cond_18e

    .line 644
    sget-object v9, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "sendTetherStateChangedBroadcast show bluetooth tethering notification!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const v9, 0x108082d

    const/4 v10, 0x1

    invoke-direct {v1, v9, v10}, Lcom/android/server/connectivity/Tethering;->mzShowTetheredNotification(IZ)V

    goto :goto_19a

    .line 647
    :cond_18e
    sget-object v9, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "sendTetherStateChangedBroadcast mPanService is null !"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19a

    .line 651
    :cond_197
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    .line 654
    :goto_19a
    if-nez v6, :cond_1a3

    if-nez v7, :cond_1a3

    if-nez v12, :cond_1a3

    .line 655
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    .line 658
    :cond_1a3
    invoke-direct {v1, v7, v12, v6}, Lcom/android/server/connectivity/Tethering;->mzTetherStateChanged(ZZZ)V

    .line 660
    return-void

    .line 591
    .end local v0  # "bcast":Landroid/content/Intent;
    :catchall_1a7
    move-exception v0

    :try_start_1a8
    monitor-exit v9
    :try_end_1a9
    .catchall {:try_start_1a8 .. :try_end_1a9} :catchall_1a7

    throw v0
.end method

.method private setBluetoothTethering(ZLandroid/os/ResultReceiver;)V
    .registers 7
    .param p1, "enable"  # Z
    .param p2, "receiver"  # Landroid/os/ResultReceiver;

    .line 466
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 467
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_19

    .line 474
    :cond_d
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/connectivity/Tethering$1;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/server/connectivity/Tethering$1;-><init>(Lcom/android/server/connectivity/Tethering;ZLandroid/os/ResultReceiver;Landroid/bluetooth/BluetoothAdapter;)V

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 490
    return-void

    .line 468
    :cond_19
    :goto_19
    sget-object v1, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to enable bluetooth tethering with null or disabled adapter. null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_29

    const/4 v3, 0x1

    goto :goto_2a

    :cond_29
    const/4 v3, 0x0

    :goto_2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const/4 v1, 0x2

    invoke-direct {p0, p2, v1}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    .line 471
    return-void
.end method

.method private setWifiTethering(Z)I
    .registers 8
    .param p1, "enable"  # Z

    .line 444
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 446
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_3e

    .line 447
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v3

    .line 448
    .local v3, "mgr":Landroid/net/wifi/WifiManager;
    if-nez v3, :cond_1b

    .line 449
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v5, "setWifiTethering: failed to get WifiManager!"

    invoke-virtual {v4, v5}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 450
    const/4 v4, 0x2

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_3b

    .line 459
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 450
    return v4

    .line 452
    :cond_1b
    if-eqz p1, :cond_24

    const/4 v4, 0x0

    :try_start_1e
    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->startSoftAp(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    if-nez v4, :cond_2c

    :cond_24
    if-nez p1, :cond_34

    .line 453
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->stopSoftAp()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 454
    :cond_2c
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetherRequested:Z

    .line 455
    const/4 v4, 0x0

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_1e .. :try_end_30} :catchall_3b

    .line 459
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 455
    return v4

    .line 457
    .end local v3  # "mgr":Landroid/net/wifi/WifiManager;
    :cond_34
    :try_start_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_3b

    .line 459
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 460
    nop

    .line 462
    const/4 v2, 0x5

    return v2

    .line 457
    :catchall_3b
    move-exception v3

    :try_start_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/connectivity/Tethering;
    .end local p1  # "enable":Z
    :try_start_3d
    throw v3
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3e

    .line 459
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/connectivity/Tethering;
    .restart local p1  # "enable":Z
    :catchall_3e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private shouldEnableNat(Z)Z
    .registers 9
    .param p1, "natEnabledByBroadcast"  # Z

    .line 2234
    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "natEnabledByBroadcast = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    const/4 v0, 0x1

    if-eqz p1, :cond_1b

    .line 2236
    return v0

    .line 2241
    :cond_1b
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mStartWifiTetheringPackage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 2242
    sget-object v1, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "mStartWifiTetheringPackage is null,shouldEnable Nat"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    return v0

    .line 2246
    :cond_2c
    sget-object v1, Lcom/android/server/connectivity/Tethering;->PACKAGE_NAMES_ENABLE_NAT:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_31
    if-ge v4, v2, :cond_49

    aget-object v5, v1, v4

    .line 2247
    .local v5, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mStartWifiTetheringPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 2248
    sget-object v1, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "mStartWifiTetheringPackage is find in PACKAGE_NAMES_ENABLE_NAT,shouldEnable Nat"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    return v0

    .line 2246
    .end local v5  # "packageName":Ljava/lang/String;
    :cond_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 2255
    :cond_49
    return v3
.end method

.method private startStateMachineUpdaters(Landroid/os/Handler;)V
    .registers 6
    .param p1, "handler"  # Landroid/os/Handler;

    .line 286
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCarrierConfigChange:Landroid/net/util/VersionedBroadcastListener;

    invoke-virtual {v0}, Landroid/net/util/VersionedBroadcastListener;->startListening()V

    .line 287
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDefaultSubscriptionChange:Landroid/net/util/VersionedBroadcastListener;

    invoke-virtual {v0}, Landroid/net/util/VersionedBroadcastListener;->startListening()V

    .line 289
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 290
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    const-string v1, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 299
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

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
    const-class v1, Landroid/os/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManagerInternal;

    .line 307
    .local v1, "umi":Landroid/os/UserManagerInternal;
    if-eqz v1, :cond_5e

    .line 308
    new-instance v2, Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;

    invoke-direct {v2, p0}, Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;-><init>(Lcom/android/server/connectivity/Tethering;)V

    invoke-virtual {v1, v2}, Landroid/os/UserManagerInternal;->addUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V

    .line 312
    :cond_5e
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->mzInitialize()V

    .line 314
    return-void
.end method

.method private stopTrackingInterfaceLocked(Ljava/lang/String;)V
    .registers 6
    .param p1, "iface"  # Ljava/lang/String;

    .line 1973
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 1974
    .local v0, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-nez v0, :cond_26

    .line 1975
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attempting to remove unknown iface ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), ignoring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 1976
    return-void

    .line 1978
    :cond_26
    iget-object v1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->ipServer:Landroid/net/ip/IpServer;

    invoke-virtual {v1}, Landroid/net/ip/IpServer;->stop()V

    .line 1979
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removing TetheringInterfaceStateMachine for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 1980
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1981
    return-void
.end method

.method private tether(Ljava/lang/String;I)I
    .registers 9
    .param p1, "iface"  # Ljava/lang/String;
    .param p2, "requestedState"  # I

    .line 497
    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tethering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    .line 499
    :try_start_19
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 500
    .local v1, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    const/4 v2, 0x1

    if-nez v1, :cond_41

    .line 501
    sget-object v3, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tried to Tether an unknown iface: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", ignoring"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    monitor-exit v0

    return v2

    .line 506
    :cond_41
    iget v3, v1, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    if-eq v3, v2, :cond_63

    .line 507
    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to Tether an unavailable iface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const/4 v2, 0x4

    monitor-exit v0

    return v2

    .line 515
    :cond_63
    iget-object v2, v1, Lcom/android/server/connectivity/Tethering$TetherState;->ipServer:Landroid/net/ip/IpServer;

    const v3, 0x50066

    invoke-virtual {v2, v3, p2}, Landroid/net/ip/IpServer;->sendMessage(II)V

    .line 516
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 517
    .end local v1  # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_6e
    move-exception v1

    monitor-exit v0
    :try_end_70
    .catchall {:try_start_19 .. :try_end_70} :catchall_6e

    throw v1
.end method

.method private tetherMatchingInterfaces(II)V
    .registers 9
    .param p1, "requestedState"  # I
    .param p2, "interfaceType"  # I

    .line 941
    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tetherMatchingInterfaces("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    const/4 v0, 0x0

    .line 946
    .local v0, "ifaces":[Ljava/lang/String;
    :try_start_25
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;

    move-result-object v1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2b} :catch_5e

    move-object v0, v1

    .line 950
    nop

    .line 951
    const/4 v1, 0x0

    .line 952
    .local v1, "chosenIface":Ljava/lang/String;
    if-eqz v0, :cond_41

    .line 953
    array-length v2, v0

    const/4 v3, 0x0

    :goto_32
    if-ge v3, v2, :cond_41

    aget-object v4, v0, v3

    .line 954
    .local v4, "iface":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I

    move-result v5

    if-ne v5, p2, :cond_3e

    .line 955
    move-object v1, v4

    .line 956
    goto :goto_41

    .line 953
    .end local v4  # "iface":Ljava/lang/String;
    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 960
    :cond_41
    :goto_41
    if-nez v1, :cond_5a

    .line 961
    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not find iface of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    return-void

    .line 965
    :cond_5a
    invoke-direct {p0, v1, p1}, Lcom/android/server/connectivity/Tethering;->changeInterfaceState(Ljava/lang/String;I)V

    .line 966
    return-void

    .line 947
    .end local v1  # "chosenIface":Ljava/lang/String;
    :catch_5e
    move-exception v1

    .line 948
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string v3, "Error listing Interfaces"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 949
    return-void
.end method

.method private updateConfiguration()V
    .registers 2

    .line 322
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 323
    .local v0, "subId":I
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration(I)V

    .line 324
    return-void
.end method

.method private updateConfiguration(I)V
    .registers 5
    .param p1, "subId"  # I

    .line 327
    new-instance v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;-><init>(Landroid/content/Context;Landroid/net/util/SharedLog;I)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    .line 328
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-boolean v1, v1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isDunRequired:Z

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->updateMobileRequiresDun(Z)V

    .line 329
    return-void
.end method

.method private upstreamWanted()Z
    .registers 3

    .line 1085
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mForwardedDownstreams:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    .line 1087
    :cond_a
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1088
    :try_start_d
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetherRequested:Z

    monitor-exit v0

    return v1

    .line 1089
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

    .line 739
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    .line 740
    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 741
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v0, :cond_1a

    iget v1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    if-eqz v1, :cond_1a

    .line 742
    const/4 v2, 0x0

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 744
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    .line 746
    :cond_1a
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "writer"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 1783
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1784
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v1

    if-nez v1, :cond_12

    return-void

    .line 1786
    :cond_12
    const-string v1, "Tethering:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1787
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1789
    const-string v1, "Configuration:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1790
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1791
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    .line 1792
    .local v1, "cfg":Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dump(Ljava/io/PrintWriter;)V

    .line 1793
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1795
    const-string v2, "Entitlement:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1796
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1797
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-virtual {v2, v0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->dump(Ljava/io/PrintWriter;)V

    .line 1798
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1800
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v2

    .line 1801
    :try_start_3d
    const-string v3, "Tether state:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1802
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1803
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_46
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_b6

    .line 1804
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1805
    .local v4, "iface":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 1806
    .local v5, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1808
    iget v6, v5, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    if-eqz v6, :cond_97

    const/4 v7, 0x1

    if-eq v6, v7, :cond_91

    const/4 v7, 0x2

    if-eq v6, v7, :cond_8b

    const/4 v7, 0x3

    if-eq v6, v7, :cond_85

    .line 1822
    const-string v6, "UnknownState"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_9d

    .line 1819
    :cond_85
    const-string v6, "LocalHotspotState"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1820
    goto :goto_9d

    .line 1816
    :cond_8b
    const-string v6, "TetheredState"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1817
    goto :goto_9d

    .line 1813
    :cond_91
    const-string v6, "AvailableState"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1814
    goto :goto_9d

    .line 1810
    :cond_97
    const-string v6, "UnavailableState"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1811
    nop

    .line 1825
    :goto_9d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " - lastError = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/server/connectivity/Tethering$TetherState;->lastError:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1803
    .end local v4  # "iface":Ljava/lang/String;
    .end local v5  # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 1827
    .end local v3  # "i":I
    :cond_b6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upstream wanted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->upstreamWanted()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1828
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current upstream interface(s): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1829
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1830
    monitor-exit v2
    :try_end_e8
    .catchall {:try_start_3d .. :try_end_e8} :catchall_11a

    .line 1832
    const-string v2, "Hardware offload:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1833
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1834
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mOffloadController:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-virtual {v2, v0}, Lcom/android/server/connectivity/tethering/OffloadController;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1835
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1837
    const-string v2, "Log:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1838
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1839
    const-string v2, "--short"

    invoke-static {p3, v2}, Lcom/android/server/connectivity/Tethering;->argsContain([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10e

    .line 1840
    const-string v2, "<log removed for brevity>"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_113

    .line 1842
    :cond_10e
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v2, p1, v0, p3}, Landroid/net/util/SharedLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1844
    :goto_113
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1846
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1847
    return-void

    .line 1830
    :catchall_11a
    move-exception v3

    :try_start_11b
    monitor-exit v2
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_11a

    throw v3
.end method

.method public getErroredIfaces()[Ljava/lang/String;
    .registers 6

    .line 1068
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1069
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1070
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    :try_start_9
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_2b

    .line 1071
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 1072
    .local v3, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    iget v4, v3, Lcom/android/server/connectivity/Tethering$TetherState;->lastError:I

    if-eqz v4, :cond_28

    .line 1073
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1070
    .end local v3  # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1076
    .end local v2  # "i":I
    :cond_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_39

    .line 1077
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 1076
    :catchall_39
    move-exception v2

    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v2
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .registers 7
    .param p1, "iface"  # Ljava/lang/String;

    .line 544
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    .line 545
    :try_start_3
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 546
    .local v1, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-nez v1, :cond_2b

    .line 547
    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to getLastTetherError on an unknown iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 551
    :cond_2b
    iget v2, v1, Lcom/android/server/connectivity/Tethering$TetherState;->lastError:I

    monitor-exit v0

    return v2

    .line 552
    .end local v1  # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public getLatestTetheringEntitlementResult(ILandroid/os/ResultReceiver;Z)V
    .registers 5
    .param p1, "type"  # I
    .param p2, "receiver"  # Landroid/os/ResultReceiver;
    .param p3, "showEntitlementUi"  # Z

    .line 1740
    if-eqz p2, :cond_7

    .line 1741
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/connectivity/tethering/EntitlementManager;->getLatestTetheringEntitlementResult(ILandroid/os/ResultReceiver;Z)V

    .line 1743
    :cond_7
    return-void
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .registers 2

    .line 1016
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v0, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->copy([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .registers 7

    .line 1049
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1050
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1051
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    :try_start_9
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 1052
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 1053
    .local v3, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    iget v4, v3, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_29

    .line 1054
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1051
    .end local v3  # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1057
    .end local v2  # "i":I
    :cond_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_3a

    .line 1058
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 1057
    :catchall_3a
    move-exception v2

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v2
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .registers 2

    .line 1008
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v0, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableUsbRegexs:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->copy([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .registers 2

    .line 1012
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v0, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableWifiRegexs:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->copy([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetheredDhcpRanges()[Ljava/lang/String;
    .registers 2

    .line 1064
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v0, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->legacyDhcpRanges:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .registers 7

    .line 1036
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1037
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1038
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    :try_start_9
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 1039
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 1040
    .local v3, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    iget v4, v3, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_29

    .line 1041
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1038
    .end local v3  # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1044
    .end local v2  # "i":I
    :cond_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_3a

    .line 1045
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 1044
    :catchall_3a
    move-exception v2

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v2
.end method

.method public getTetheringConfiguration()Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    .registers 2

    .line 990
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    return-object v0
.end method

.method public hasTetherableConfiguration()Z
    .registers 6

    .line 994
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    .line 995
    .local v0, "cfg":Lcom/android/server/connectivity/tethering/TetheringConfiguration;
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

    .line 999
    .local v1, "hasDownstreamConfiguration":Z
    :goto_17
    iget-object v4, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->preferredUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_26

    iget-boolean v4, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->chooseUpstreamAutomatically:Z

    if-eqz v4, :cond_24

    goto :goto_26

    :cond_24
    move v4, v2

    goto :goto_27

    :cond_26
    :goto_26
    move v4, v3

    .line 1002
    .local v4, "hasUpstreamConfiguration":Z
    :goto_27
    if-eqz v1, :cond_2c

    if-eqz v4, :cond_2c

    move v2, v3

    :cond_2c
    return v2
.end method

.method public interfaceAdded(Ljava/lang/String;)V
    .registers 5
    .param p1, "iface"  # Ljava/lang/String;

    .line 389
    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "interfaceAdded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    .line 391
    :try_start_1a
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->maybeTrackNewInterfaceLocked(Ljava/lang/String;)V

    .line 392
    monitor-exit v0

    .line 393
    return-void

    .line 392
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "iface"  # Ljava/lang/String;
    .param p2, "up"  # Z

    .line 367
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->interfaceStatusChanged(Ljava/lang/String;Z)V

    .line 368
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .registers 5
    .param p1, "iface"  # Ljava/lang/String;

    .line 397
    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "interfaceRemoved "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    .line 399
    :try_start_1a
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->stopTrackingInterfaceLocked(Ljava/lang/String;)V

    .line 400
    monitor-exit v0

    .line 401
    return-void

    .line 400
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "iface"  # Ljava/lang/String;
    .param p2, "up"  # Z

    .line 347
    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "interfaceStatusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    if-eqz p2, :cond_28

    .line 350
    :try_start_24
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->maybeTrackNewInterfaceLocked(Ljava/lang/String;)V

    goto :goto_4a

    .line 352
    :cond_28
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_33

    .line 353
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->stopTrackingInterfaceLocked(Ljava/lang/String;)V

    goto :goto_4a

    .line 359
    :cond_33
    sget-object v1, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ignore interface down for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :goto_4a
    monitor-exit v0

    .line 363
    return-void

    .line 362
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_24 .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method public synthetic lambda$new$0$Tethering(I)V
    .registers 4
    .param p1, "downstream"  # I

    .line 245
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string v1, "OBSERVED UiEnitlementFailed"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    .line 247
    return-void
.end method

.method public synthetic lambda$new$1$Tethering()Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    .registers 2

    .line 249
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->maybeDefaultDataSubChanged()V

    .line 250
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    return-object v0
.end method

.method public synthetic lambda$new$2$Tethering(Landroid/content/Intent;)V
    .registers 4
    .param p1, "ignored"  # Landroid/content/Intent;

    .line 256
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string v1, "OBSERVED carrier config change"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 257
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 258
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->reevaluateSimCardProvisioning(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V

    .line 259
    return-void
.end method

.method public synthetic lambda$new$3$Tethering(Landroid/content/Intent;)V
    .registers 4
    .param p1, "ignored"  # Landroid/content/Intent;

    .line 266
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string v1, "OBSERVED default data subscription change"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 267
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->maybeDefaultDataSubChanged()V

    .line 271
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->getCarrierConfig(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 272
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->reevaluateSimCardProvisioning(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V

    goto :goto_23

    .line 274
    :cond_1c
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string v1, "IGNORED reevaluate provisioning due to no carrier config loaded"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 276
    :goto_23
    return-void
.end method

.method public synthetic lambda$registerTetheringEventCallback$4$Tethering(Landroid/net/ITetheringEventCallback;)V
    .registers 3
    .param p1, "callback"  # Landroid/net/ITetheringEventCallback;

    .line 1749
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherUpstream:Landroid/net/Network;

    invoke-interface {p1, v0}, Landroid/net/ITetheringEventCallback;->onUpstreamChanged(Landroid/net/Network;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1752
    goto :goto_7

    .line 1750
    :catch_6
    move-exception v0

    .line 1753
    :goto_7
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheringEventCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1754
    return-void
.end method

.method public synthetic lambda$unregisterTetheringEventCallback$5$Tethering(Landroid/net/ITetheringEventCallback;)V
    .registers 3
    .param p1, "callback"  # Landroid/net/ITetheringEventCallback;

    .line 1760
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheringEventCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1761
    return-void
.end method

.method public registerTetheringEventCallback(Landroid/net/ITetheringEventCallback;)V
    .registers 4
    .param p1, "callback"  # Landroid/net/ITetheringEventCallback;

    .line 1747
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/connectivity/-$$Lambda$Tethering$CL7AR28AECaRXzwrU9_xiYIE5GE;

    invoke-direct {v1, p0, p1}, Lcom/android/server/connectivity/-$$Lambda$Tethering$CL7AR28AECaRXzwrU9_xiYIE5GE;-><init>(Lcom/android/server/connectivity/Tethering;Landroid/net/ITetheringEventCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1755
    return-void
.end method

.method public setStartTetheringProcessInfo(ILjava/lang/String;)V
    .registers 6
    .param p1, "type"  # I
    .param p2, "packageName"  # Ljava/lang/String;

    .line 2224
    if-eqz p1, :cond_3

    .line 2225
    return-void

    .line 2228
    :cond_3
    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start tethering called by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    iput-object p2, p0, Lcom/android/server/connectivity/Tethering;->mStartWifiTetheringPackage:Ljava/lang/String;

    .line 2230
    return-void
.end method

.method public setUsbTethering(Z)I
    .registers 6
    .param p1, "enable"  # Z

    .line 1020
    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUsbTethering("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 1022
    .local v0, "usbManager":Landroid/hardware/usb/UsbManager;
    if-nez v0, :cond_33

    .line 1023
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v2, "setUsbTethering: failed to get UsbManager!"

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 1024
    const/4 v1, 0x2

    return v1

    .line 1027
    :cond_33
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1028
    if-eqz p1, :cond_3b

    const-wide/16 v2, 0x20

    goto :goto_3d

    .line 1029
    :cond_3b
    const-wide/16 v2, 0x0

    .line 1028
    :goto_3d
    :try_start_3d
    invoke-virtual {v0, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunctions(J)V

    .line 1030
    monitor-exit v1

    .line 1031
    const/4 v1, 0x0

    return v1

    .line 1030
    :catchall_43
    move-exception v2

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_3d .. :try_end_45} :catchall_43

    throw v2
.end method

.method public startTethering(ILandroid/os/ResultReceiver;Z)V
    .registers 5
    .param p1, "type"  # I
    .param p2, "receiver"  # Landroid/os/ResultReceiver;
    .param p3, "showProvisioningUi"  # Z

    .line 404
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/connectivity/tethering/EntitlementManager;->startProvisioningIfNeeded(IZ)V

    .line 405
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/connectivity/Tethering;->enableTetheringInternal(IZLandroid/os/ResultReceiver;)V

    .line 406
    return-void
.end method

.method public stopTethering(I)V
    .registers 4
    .param p1, "type"  # I

    .line 409
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/connectivity/Tethering;->enableTetheringInternal(IZLandroid/os/ResultReceiver;)V

    .line 410
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->stopProvisioningIfNeeded(I)V

    .line 411
    return-void
.end method

.method public systemReady()V
    .registers 4

    .line 1733
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    invoke-virtual {v1}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getDefaultNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->startTrackDefaultNetwork(Landroid/net/NetworkRequest;Lcom/android/server/connectivity/tethering/EntitlementManager;)V

    .line 1735
    return-void
.end method

.method public tether(Ljava/lang/String;)I
    .registers 3
    .param p1, "iface"  # Ljava/lang/String;

    .line 493
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public unregisterTetheringEventCallback(Landroid/net/ITetheringEventCallback;)V
    .registers 4
    .param p1, "callback"  # Landroid/net/ITetheringEventCallback;

    .line 1759
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/connectivity/-$$Lambda$Tethering$XBoGgF8AkKeshbpj45SRWFjtpIQ;

    invoke-direct {v1, p0, p1}, Lcom/android/server/connectivity/-$$Lambda$Tethering$XBoGgF8AkKeshbpj45SRWFjtpIQ;-><init>(Lcom/android/server/connectivity/Tethering;Landroid/net/ITetheringEventCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1762
    return-void
.end method

.method public untether(Ljava/lang/String;)I
    .registers 7
    .param p1, "iface"  # Ljava/lang/String;

    .line 521
    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Untethering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    .line 523
    :try_start_19
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 524
    .local v1, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-nez v1, :cond_41

    .line 525
    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to Untether an unknown iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 528
    :cond_41
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherState;->isCurrentlyServing()Z

    move-result v2

    if-nez v2, :cond_65

    .line 529
    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to untether an inactive iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/4 v2, 0x4

    monitor-exit v0

    return v2

    .line 532
    :cond_65
    iget-object v2, v1, Lcom/android/server/connectivity/Tethering$TetherState;->ipServer:Landroid/net/ip/IpServer;

    const v3, 0x50067

    invoke-virtual {v2, v3}, Landroid/net/ip/IpServer;->sendMessage(I)V

    .line 533
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 534
    .end local v1  # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_70
    move-exception v1

    monitor-exit v0
    :try_end_72
    .catchall {:try_start_19 .. :try_end_72} :catchall_70

    throw v1
.end method

.method public untetherAll()V
    .registers 2

    .line 538
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    .line 539
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    .line 540
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    .line 541
    return-void
.end method
