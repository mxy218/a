.class public Lcom/android/server/connectivity/Vpn;
.super Ljava/lang/Object;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;,
        Lcom/android/server/connectivity/Vpn$SystemServices;,
        Lcom/android/server/connectivity/Vpn$Connection;
    }
.end annotation


# static fields
.field private static final EXIT_CODE_PROP_KEY:Ljava/lang/String; = "meizu.vpn.mtpd.exit_status"

.field private static final LIMIT_BLACK_LIST_SIZE:I = 0xf

.field private static final LOGD:Z = true

.field private static final MAX_ROUTES_TO_EVALUATE:I = 0x96

.field private static final MOST_IPV4_ADDRESSES_COUNT:J

.field private static final MOST_IPV6_ADDRESSES_COUNT:Ljava/math/BigInteger;

.field private static final MSG_RECONNECT:I = 0x65

.field private static final MSG_SEND_VPN_STATE_CHANGE_BROADCAST_FOR_PPS:I = 0x67

.field private static final MSG_WAIT_FOR_RECONNECT_TIME_OUT:I = 0x66

.field private static final NETWORKTYPE:Ljava/lang/String; = "VPN"

.field private static final NOTIFICATION_TAG_3RD:Ljava/lang/String; = "3rd_vpn"

.field private static final RECONNECT_DELAY:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "Vpn"

.field private static final VPN_LAUNCH_IDLE_WHITELIST_DURATION_MS:J = 0xea60L

.field private static final WAIT_FOR_RECONNECT_TIME_OUT:I = 0x7530


# instance fields
.field private disableVpnStateChangeBroadcast:Z

.field private mAlwaysOn:Z

.field private mBlackListShowNotify:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockedUsers:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation
.end field

.field protected mConfig:Lcom/android/internal/net/VpnConfig;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mConnService:Landroid/net/IConnectivityManager;

.field private mConnection:Lcom/android/server/connectivity/Vpn$Connection;

.field private mConnectivityChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentConfig:Lcom/android/internal/net/VpnConfig;

.field private mCurrentMtpd:[Ljava/lang/String;

.field private mCurrentRacoon:[Ljava/lang/String;

.field private volatile mEnableTeardown:Z

.field private mFailedDetail:I

.field private mInterface:Ljava/lang/String;

.field private mIsPackageTargetingAtLeastQ:Z

.field private mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

.field private mLockdown:Z

.field private mLockdownWhitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLooper:Landroid/os/Looper;

.field private final mNetd:Landroid/os/INetworkManagementService;

.field protected mNetworkAgent:Landroid/net/NetworkAgent;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected final mNetworkCapabilities:Landroid/net/NetworkCapabilities;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mNetworkInfo:Landroid/net/NetworkInfo;

.field private mObserver:Landroid/net/INetworkManagementEventObserver;

.field private mOldSendVpnState:I

.field private mOwnerUID:I

.field private mPackage:Ljava/lang/String;

.field private mReconnectHandler:Landroid/os/Handler;

.field private mStatusIntent:Landroid/app/PendingIntent;

.field private final mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

.field private final mUserHandle:I

.field private mWaitingForReconnectInfo:Lcom/android/internal/net/LegacyVpnInfo;

.field private mWifiGatewayAddress:Ljava/lang/String;

.field private mWifiGatewayPrifexLength:I

.field private oldVpnState:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 165
    const/16 v0, 0x55

    .line 167
    .local v0, "howManyPercentIsMost":I
    const-wide v1, 0x100000000L

    .line 168
    .local v1, "twoPower32":J
    const-wide v3, 0xd9999999L

    sput-wide v3, Lcom/android/server/connectivity/Vpn;->MOST_IPV4_ADDRESSES_COUNT:J

    .line 169
    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 170
    .local v3, "twoPower128":Ljava/math/BigInteger;
    nop

    .line 171
    const-wide/16 v4, 0x55

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 172
    const-wide/16 v5, 0x64

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sput-object v4, Lcom/android/server/connectivity/Vpn;->MOST_IPV6_ADDRESSES_COUNT:Ljava/math/BigInteger;

    .line 173
    .end local v0  # "howManyPercentIsMost":I
    .end local v1  # "twoPower32":J
    .end local v3  # "twoPower128":Ljava/math/BigInteger;
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;I)V
    .registers 11
    .param p1, "looper"  # Landroid/os/Looper;
    .param p2, "context"  # Landroid/content/Context;
    .param p3, "netService"  # Landroid/os/INetworkManagementService;
    .param p4, "userHandle"  # I

    .line 280
    new-instance v5, Lcom/android/server/connectivity/Vpn$SystemServices;

    invoke-direct {v5, p2}, Lcom/android/server/connectivity/Vpn$SystemServices;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/Vpn;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;ILcom/android/server/connectivity/Vpn$SystemServices;)V

    .line 281
    nop

    .line 282
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 281
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnService:Landroid/net/IConnectivityManager;

    .line 283
    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;ILcom/android/server/connectivity/Vpn$SystemServices;)V
    .registers 12
    .param p1, "looper"  # Landroid/os/Looper;
    .param p2, "context"  # Landroid/content/Context;
    .param p3, "netService"  # Landroid/os/INetworkManagementService;
    .param p4, "userHandle"  # I
    .param p5, "systemServices"  # Lcom/android/server/connectivity/Vpn$SystemServices;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 218
    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 224
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLockdownWhitelist:Ljava/util/List;

    .line 231
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    .line 270
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mBlackListShowNotify:Ljava/util/ArrayList;

    .line 1590
    new-instance v1, Lcom/android/server/connectivity/Vpn$2;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/Vpn$2;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    .line 288
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 289
    iput-object p3, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    .line 290
    iput p4, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 291
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;

    .line 292
    iput-object p5, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    .line 294
    const-string v1, "[Legacy VPN]"

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 295
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, v1, v3}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    .line 296
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Vpn;->doesPackageTargetAtLeastQ(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageTargetingAtLeastQ:Z

    .line 299
    :try_start_48
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {p3, v1}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_4d} :catch_4e

    .line 302
    goto :goto_56

    .line 300
    :catch_4e
    move-exception v1

    .line 301
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Vpn"

    const-string v4, "Problem registering observer"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_56
    new-instance v1, Landroid/net/NetworkInfo;

    const/16 v3, 0x11

    const-string v4, "VPN"

    const-string v5, ""

    invoke-direct {v1, v3, v0, v4, v5}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 306
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 307
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 308
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 309
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Vpn;->updateCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 311
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->loadAlwaysOnPackage()V

    .line 314
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->initFlymeChange()V

    .line 316
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/Vpn;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/connectivity/Vpn;

    .line 148
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/Vpn;)Landroid/net/INetworkManagementEventObserver;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/connectivity/Vpn;

    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/Vpn;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/connectivity/Vpn;

    .line 148
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->prepareStatusIntent()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/Vpn;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/connectivity/Vpn;

    .line 148
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentConnect()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/connectivity/Vpn;

    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/connectivity/Vpn;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/connectivity/Vpn;

    .line 148
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->flymeUpdateStateForFailedDetail()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/connectivity/Vpn;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/connectivity/Vpn;

    .line 148
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->doReconnect()V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/LegacyVpnInfo;)Lcom/android/internal/net/LegacyVpnInfo;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"  # Lcom/android/internal/net/LegacyVpnInfo;

    .line 148
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mWaitingForReconnectInfo:Lcom/android/internal/net/LegacyVpnInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/connectivity/Vpn;

    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/connectivity/Vpn;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"  # I

    .line 148
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->sendVpnStateChangeBroadcast(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"  # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 148
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/connectivity/Vpn;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/connectivity/Vpn;

    .line 148
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->sendVpnStateChangeBroadcastForPPS()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/connectivity/Vpn;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/connectivity/Vpn;

    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mReconnectHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/connectivity/Vpn;

    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"  # Ljava/lang/String;

    .line 148
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"  # Ljava/lang/String;

    .line 148
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/connectivity/Vpn;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"  # Landroid/app/PendingIntent;

    .line 148
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"  # Ljava/lang/String;

    .line 148
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->flymeInterfaceRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/connectivity/Vpn;

    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$Connection;)Lcom/android/server/connectivity/Vpn$Connection;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"  # Lcom/android/server/connectivity/Vpn$Connection;

    .line 148
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/connectivity/Vpn;

    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/Vpn;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/connectivity/Vpn;

    .line 148
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    return-void
.end method

.method private agentConnect()V
    .registers 19

    .line 1055
    move-object/from16 v12, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v13

    .line 1064
    .local v13, "lp":Landroid/net/LinkProperties;
    iget-object v0, v12, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1066
    iget-object v0, v12, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    new-instance v0, Landroid/net/NetworkMisc;

    invoke-direct {v0}, Landroid/net/NetworkMisc;-><init>()V

    move-object v14, v0

    .line 1069
    .local v14, "networkMisc":Landroid/net/NetworkMisc;
    iget-object v0, v12, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    const/4 v15, 0x1

    if-eqz v0, :cond_28

    iget-boolean v0, v12, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-nez v0, :cond_28

    move v0, v15

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    iput-boolean v0, v14, Landroid/net/NetworkMisc;->allowBypass:Z

    .line 1071
    iget-object v0, v12, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setEstablishingVpnAppUid(I)V

    .line 1072
    iget-object v0, v12, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iget v1, v12, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    iget-object v2, v12, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    iget-object v3, v12, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    invoke-virtual {v12, v1, v2, v3}, Lcom/android/server/connectivity/Vpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    .line 1074
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1076
    .local v16, "token":J
    :try_start_4b
    new-instance v0, Lcom/android/server/connectivity/Vpn$1;

    iget-object v3, v12, Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;

    iget-object v4, v12, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v5, "VPN"

    iget-object v6, v12, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v7, v12, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v9, 0x65

    const/4 v11, -0x2

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v8, v13

    move-object v10, v14

    invoke-direct/range {v1 .. v11}, Lcom/android/server/connectivity/Vpn$1;-><init>(Lcom/android/server/connectivity/Vpn;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;I)V

    iput-object v0, v12, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;
    :try_end_64
    .catchall {:try_start_4b .. :try_end_64} :catchall_75

    .line 1086
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1087
    nop

    .line 1088
    iget-object v0, v12, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v15}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1089
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "agentConnect"

    invoke-virtual {v12, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1090
    return-void

    .line 1086
    :catchall_75
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private agentDisconnect()V
    .registers 3

    .line 1111
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1112
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1113
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "agentDisconnect"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1116
    :cond_18
    return-void
.end method

.method private agentDisconnect(Landroid/net/NetworkAgent;)V
    .registers 5
    .param p1, "networkAgent"  # Landroid/net/NetworkAgent;

    .line 1102
    if-eqz p1, :cond_16

    .line 1103
    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 1104
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1105
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    invoke-virtual {p1, v0}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 1108
    .end local v0  # "networkInfo":Landroid/net/NetworkInfo;
    :cond_16
    return-void
.end method

.method public static applyUnderlyingCapabilities(Landroid/net/ConnectivityManager;[Landroid/net/Network;Landroid/net/NetworkCapabilities;Z)V
    .registers 21
    .param p0, "cm"  # Landroid/net/ConnectivityManager;
    .param p1, "underlyingNetworks"  # [Landroid/net/Network;
    .param p2, "caps"  # Landroid/net/NetworkCapabilities;
    .param p3, "isAlwaysMetered"  # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 389
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    const/4 v5, 0x4

    aput v5, v3, v4

    .line 390
    .local v3, "transportTypes":[I
    const/4 v5, 0x0

    .line 391
    .local v5, "downKbps":I
    const/4 v6, 0x0

    .line 394
    .local v6, "upKbps":I
    move/from16 v7, p3

    .line 395
    .local v7, "metered":Z
    const/4 v8, 0x0

    .line 396
    .local v8, "roaming":Z
    const/4 v9, 0x0

    .line 398
    .local v9, "congested":Z
    const/4 v10, 0x0

    .line 399
    .local v10, "hadUnderlyingNetworks":Z
    if-eqz v0, :cond_7f

    .line 400
    array-length v14, v0

    move v15, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move-object v5, v3

    move v3, v4

    .end local v3  # "transportTypes":[I
    .local v5, "transportTypes":[I
    .local v6, "downKbps":I
    .local v7, "upKbps":I
    .local v8, "metered":Z
    .local v9, "roaming":Z
    .local v10, "congested":Z
    .local v15, "hadUnderlyingNetworks":Z
    :goto_1d
    if-ge v3, v14, :cond_76

    aget-object v4, v0, v3

    .line 402
    .local v4, "underlying":Landroid/net/Network;
    move-object/from16 v11, p0

    invoke-virtual {v11, v4}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v12

    .line 403
    .local v12, "underlyingCaps":Landroid/net/NetworkCapabilities;
    if-nez v12, :cond_2a

    goto :goto_70

    .line 404
    :cond_2a
    const/4 v15, 0x1

    .line 405
    invoke-virtual {v12}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v2

    array-length v13, v2

    move-object v0, v5

    const/4 v5, 0x0

    .end local v5  # "transportTypes":[I
    .local v0, "transportTypes":[I
    :goto_32
    if-ge v5, v13, :cond_41

    move-object/from16 v16, v4

    .end local v4  # "underlying":Landroid/net/Network;
    .local v16, "underlying":Landroid/net/Network;
    aget v4, v2, v5

    .line 406
    .local v4, "underlyingType":I
    invoke-static {v0, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0

    .line 405
    .end local v4  # "underlyingType":I
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v4, v16

    goto :goto_32

    .line 411
    .end local v16  # "underlying":Landroid/net/Network;
    .local v4, "underlying":Landroid/net/Network;
    :cond_41
    move-object/from16 v16, v4

    .line 412
    .end local v4  # "underlying":Landroid/net/Network;
    .restart local v16  # "underlying":Landroid/net/Network;
    invoke-virtual {v12}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v2

    .line 411
    invoke-static {v6, v2}, Landroid/net/NetworkCapabilities;->minBandwidth(II)I

    move-result v6

    .line 413
    nop

    .line 414
    invoke-virtual {v12}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result v2

    .line 413
    invoke-static {v7, v2}, Landroid/net/NetworkCapabilities;->minBandwidth(II)I

    move-result v7

    .line 415
    const/16 v2, 0xb

    invoke-virtual {v12, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    const/4 v2, 0x1

    xor-int/2addr v4, v2

    or-int/2addr v8, v4

    .line 416
    const/16 v4, 0x12

    invoke-virtual {v12, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    xor-int/lit8 v4, v5, 0x1

    or-int/2addr v9, v4

    .line 417
    const/16 v4, 0x14

    invoke-virtual {v12, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    xor-int/lit8 v4, v5, 0x1

    or-int/2addr v10, v4

    move-object v5, v0

    .line 400
    .end local v0  # "transportTypes":[I
    .end local v12  # "underlyingCaps":Landroid/net/NetworkCapabilities;
    .end local v16  # "underlying":Landroid/net/Network;
    .restart local v5  # "transportTypes":[I
    :goto_70
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    const/4 v4, 0x0

    goto :goto_1d

    :cond_76
    move-object/from16 v11, p0

    move-object v3, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    goto :goto_82

    .line 399
    .end local v15  # "hadUnderlyingNetworks":Z
    .restart local v3  # "transportTypes":[I
    .local v5, "downKbps":I
    .local v6, "upKbps":I
    .local v7, "metered":Z
    .local v8, "roaming":Z
    .local v9, "congested":Z
    .local v10, "hadUnderlyingNetworks":Z
    :cond_7f
    move-object/from16 v11, p0

    move v15, v10

    .line 420
    .end local v10  # "hadUnderlyingNetworks":Z
    .restart local v15  # "hadUnderlyingNetworks":Z
    :goto_82
    if-nez v15, :cond_87

    .line 422
    const/4 v7, 0x1

    .line 423
    const/4 v8, 0x0

    .line 424
    const/4 v9, 0x0

    .line 427
    :cond_87
    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->setTransportTypes([I)V

    .line 428
    invoke-virtual {v1, v5}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities;

    .line 429
    invoke-virtual {v1, v6}, Landroid/net/NetworkCapabilities;->setLinkUpstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities;

    .line 430
    if-nez v7, :cond_94

    move v0, v2

    goto :goto_95

    :cond_94
    const/4 v0, 0x0

    :goto_95
    const/16 v4, 0xb

    invoke-virtual {v1, v4, v0}, Landroid/net/NetworkCapabilities;->setCapability(IZ)Landroid/net/NetworkCapabilities;

    .line 431
    if-nez v8, :cond_9e

    move v0, v2

    goto :goto_9f

    :cond_9e
    const/4 v0, 0x0

    :goto_9f
    const/16 v4, 0x12

    invoke-virtual {v1, v4, v0}, Landroid/net/NetworkCapabilities;->setCapability(IZ)Landroid/net/NetworkCapabilities;

    .line 432
    if-nez v9, :cond_a7

    goto :goto_a8

    :cond_a7
    const/4 v2, 0x0

    :goto_a8
    const/16 v0, 0x14

    invoke-virtual {v1, v0, v2}, Landroid/net/NetworkCapabilities;->setCapability(IZ)Landroid/net/NetworkCapabilities;

    .line 433
    return-void
.end method

.method private backupParasForReconnect(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .param p1, "config"  # Lcom/android/internal/net/VpnConfig;
    .param p2, "racoon"  # [Ljava/lang/String;
    .param p3, "mtpd"  # [Ljava/lang/String;

    .line 2532
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mCurrentRacoon:[Ljava/lang/String;

    .line 2533
    iput-object p3, p0, Lcom/android/server/connectivity/Vpn;->mCurrentMtpd:[Ljava/lang/String;

    .line 2534
    new-instance v0, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v0}, Lcom/android/internal/net/VpnConfig;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCurrentConfig:Lcom/android/internal/net/VpnConfig;

    .line 2535
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCurrentConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 2536
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCurrentConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, p1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 2537
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCurrentConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 2538
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCurrentConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, p1, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    .line 2539
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCurrentConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, p1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 2540
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCurrentConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, p1, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 2541
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCurrentConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v1, p1, Lcom/android/internal/net/VpnConfig;->legacy:Z

    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->legacy:Z

    .line 2542
    return-void
.end method

.method private canHaveRestrictedProfile(I)Z
    .registers 5
    .param p1, "userId"  # I

    .line 1093
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1095
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->canHaveRestrictedProfile(I)Z

    move-result v2
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 1097
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1095
    return v2

    .line 1097
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private doReconnect()V
    .registers 8

    .line 2574
    const-string v0, "Vpn"

    const-string v1, "doReconnect() ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2575
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mWaitingForReconnectInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-nez v1, :cond_12

    .line 2576
    const-string/jumbo v1, "state is wrong, no need reconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2577
    return-void

    .line 2580
    :cond_12
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->getDefaultNetwork()[Ljava/lang/String;

    move-result-object v1

    .line 2581
    .local v1, "network":[Ljava/lang/String;
    if-nez v1, :cond_1f

    .line 2582
    const-string/jumbo v2, "no availible network interface"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    return-void

    .line 2586
    :cond_1f
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mWaitingForReconnectInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    if-ne v2, v3, :cond_85

    .line 2587
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mWaitingForReconnectInfo:Lcom/android/internal/net/LegacyVpnInfo;

    const/4 v3, 0x2

    iput v3, v2, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 2593
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reconnect using interface :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-object v5, v1, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2594
    aget-object v0, v1, v4

    .line 2595
    .local v0, "interfaze":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v5, v1, v2

    .line 2596
    .local v5, "gateway":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mCurrentConfig:Lcom/android/internal/net/VpnConfig;

    iput-object v0, v6, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 2598
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mCurrentMtpd:[Ljava/lang/String;

    if-eqz v6, :cond_52

    .line 2599
    aput-object v0, v6, v4

    .line 2602
    :cond_52
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mCurrentRacoon:[Ljava/lang/String;

    if-eqz v6, :cond_7a

    .line 2603
    aput-object v0, v6, v4

    .line 2604
    aget-object v3, v6, v3

    .line 2605
    .local v3, "vpnType":Ljava/lang/String;
    const-string/jumbo v4, "xauthpsk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_74

    const-string v4, "hybridrsa"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_74

    const-string/jumbo v4, "xauthrsa"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 2606
    :cond_74
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mCurrentRacoon:[Ljava/lang/String;

    array-length v6, v4

    sub-int/2addr v6, v2

    aput-object v5, v4, v6

    .line 2613
    .end local v3  # "vpnType":Ljava/lang/String;
    :cond_7a
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mCurrentConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mCurrentRacoon:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mCurrentMtpd:[Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {p0, v2, v3, v4, v6}, Lcom/android/server/connectivity/Vpn;->startLegacyVpnNoneSync(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/net/VpnProfile;)V

    .line 2615
    return-void

    .line 2589
    .end local v0  # "interfaze":Ljava/lang/String;
    .end local v5  # "gateway":Ljava/lang/String;
    :cond_85
    const-string/jumbo v2, "vpn is reconnecting"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2590
    return-void
.end method

.method private doesPackageTargetAtLeastQ(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"  # Ljava/lang/String;

    .line 919
    const-string v0, "[Legacy VPN]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 920
    return v1

    .line 922
    :cond_a
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 924
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    :try_start_11
    iget v3, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 925
    invoke-virtual {v0, p1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 926
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_19} :catch_20

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_1e

    goto :goto_1f

    :cond_1e
    move v1, v2

    :goto_1f
    return v1

    .line 927
    .end local v3  # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_20
    move-exception v1

    .line 928
    .local v1, "unused":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Vpn"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    return v2
.end method

.method private enforceControlPermission()V
    .registers 4

    .line 1626
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONTROL_VPN"

    const-string v2, "Unauthorized Caller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    return-void
.end method

.method private enforceControlPermissionOrInternalCaller()V
    .registers 4

    .line 1632
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONTROL_VPN"

    const-string v2, "Unauthorized Caller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    return-void
.end method

.method private enforceSettingsPermission()V
    .registers 4

    .line 1637
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    const-string v2, "Unauthorized Caller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    return-void
.end method

.method private static findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;
    .registers 4
    .param p0, "prop"  # Landroid/net/LinkProperties;

    .line 1854
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 1856
    .local v1, "route":Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_23

    .line 1857
    return-object v1

    .line 1859
    .end local v1  # "route":Landroid/net/RouteInfo;
    :cond_23
    goto :goto_8

    .line 1861
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to find IPv4 default gateway"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private flymeInterfaceRemoved(Ljava/lang/String;)V
    .registers 9
    .param p1, "interfaze"  # Ljava/lang/String;

    .line 2741
    const/4 v0, 0x0

    .line 2742
    .local v0, "isUserVpnRemoved":Z
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    if-eqz v1, :cond_6

    .line 2743
    const/4 v0, 0x1

    .line 2747
    :cond_6
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v1

    .line 2748
    .local v1, "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    if-eqz v1, :cond_26

    .line 2749
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/UidRange;

    .line 2750
    .local v3, "user":Landroid/net/UidRange;
    invoke-virtual {v3}, Landroid/net/UidRange;->getStartUser()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Vpn;->hideNotification(I)V

    .line 2751
    .end local v3  # "user":Landroid/net/UidRange;
    goto :goto_12

    .line 2755
    :cond_26
    if-nez v0, :cond_4f

    .line 2775
    const-string v2, "Vpn"

    const-string v3, "There isn\'t any activeNetwork, set it to wait for reconnect status"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2777
    new-instance v2, Lcom/android/internal/net/LegacyVpnInfo;

    invoke-direct {v2}, Lcom/android/internal/net/LegacyVpnInfo;-><init>()V

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mWaitingForReconnectInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .line 2778
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mWaitingForReconnectInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mCurrentConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    .line 2779
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mWaitingForReconnectInfo:Lcom/android/internal/net/LegacyVpnInfo;

    const/4 v3, 0x6

    iput v3, v2, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 2781
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mReconnectHandler:Landroid/os/Handler;

    const/16 v4, 0x66

    const-wide/16 v5, 0x7530

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2782
    invoke-direct {p0, v3}, Lcom/android/server/connectivity/Vpn;->sendVpnStateChangeBroadcast(I)V

    .line 2785
    :cond_4f
    return-void
.end method

.method private flymeResetWifiGatewayInfo()V
    .registers 2

    .line 2670
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mWifiGatewayAddress:Ljava/lang/String;

    .line 2671
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/Vpn;->mWifiGatewayPrifexLength:I

    .line 2672
    return-void
.end method

.method private flymeUpdateStateForFailedDetail()V
    .registers 3

    .line 2629
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "execute"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 2630
    return-void
.end method

.method private getAppUid(Ljava/lang/String;I)I
    .registers 5
    .param p1, "app"  # Ljava/lang/String;
    .param p2, "userHandle"  # I

    .line 905
    const-string v0, "[Legacy VPN]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 906
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    return v0

    .line 908
    :cond_d
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 911
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :try_start_13
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_17} :catch_18

    .line 914
    .local v1, "result":I
    goto :goto_1a

    .line 912
    .end local v1  # "result":I
    :catch_18
    move-exception v1

    .line 913
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, -0x1

    .line 915
    .local v1, "result":I
    :goto_1a
    return v1
.end method

.method private getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;
    .registers 8
    .param p2, "userHandle"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/SortedSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1260
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 1261
    .local v0, "uids":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1262
    .local v2, "app":Ljava/lang/String;
    invoke-direct {p0, v2, p2}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v3

    .line 1263
    .local v3, "uid":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_23

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 1264
    .end local v2  # "app":Ljava/lang/String;
    .end local v3  # "uid":I
    :cond_23
    goto :goto_9

    .line 1265
    :cond_24
    return-object v0
.end method

.method private getDefaultNetwork()[Ljava/lang/String;
    .registers 8

    .line 2633
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnService:Landroid/net/IConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2634
    return-object v1

    .line 2636
    :cond_6
    const/4 v2, 0x0

    .line 2638
    .local v2, "alp":Landroid/net/LinkProperties;
    :try_start_7
    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_58

    .line 2641
    .end local v2  # "alp":Landroid/net/LinkProperties;
    .local v0, "alp":Landroid/net/LinkProperties;
    nop

    .line 2643
    if-nez v0, :cond_17

    .line 2644
    const-string v2, "Vpn"

    const-string/jumbo v3, "no active link"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    return-object v1

    .line 2648
    :cond_17
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 2649
    .local v2, "interfaze":Ljava/lang/String;
    if-nez v2, :cond_1e

    .line 2650
    return-object v1

    .line 2652
    :cond_1e
    const/4 v3, 0x0

    .line 2653
    .local v3, "gateway":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/RouteInfo;

    .line 2654
    .local v5, "route":Landroid/net/RouteInfo;
    invoke-virtual {v5}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v6

    if-eqz v6, :cond_4a

    invoke-virtual {v5}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    instance-of v6, v6, Ljava/net/Inet4Address;

    if-eqz v6, :cond_4a

    .line 2655
    invoke-virtual {v5}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 2656
    goto :goto_4b

    .line 2658
    .end local v5  # "route":Landroid/net/RouteInfo;
    :cond_4a
    goto :goto_27

    .line 2659
    :cond_4b
    :goto_4b
    if-nez v3, :cond_4e

    .line 2660
    return-object v1

    .line 2663
    :cond_4e
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const/4 v4, 0x1

    aput-object v3, v1, v4

    return-object v1

    .line 2639
    .end local v0  # "alp":Landroid/net/LinkProperties;
    .end local v3  # "gateway":Ljava/lang/String;
    .local v2, "alp":Landroid/net/LinkProperties;
    :catch_58
    move-exception v0

    .line 2640
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method private hideNotification(I)V
    .registers 6
    .param p1, "user"  # I

    .line 2827
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 2828
    const-string v0, "Vpn"

    const-string v1, "hide notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 2830
    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2832
    .local v0, "nm":Landroid/app/NotificationManager;
    if-eqz v0, :cond_24

    .line 2835
    const v1, 0xa0802c1

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    const-string v3, "3rd_vpn"

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 2838
    :cond_24
    return-void
.end method

.method private initFlymeChange()V
    .registers 4

    .line 2675
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/Vpn;->mFailedDetail:I

    .line 2676
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/connectivity/Vpn;->oldVpnState:I

    .line 2677
    iput-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->disableVpnStateChangeBroadcast:Z

    .line 2678
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mWifiGatewayAddress:Ljava/lang/String;

    .line 2679
    iput v0, p0, Lcom/android/server/connectivity/Vpn;->mWifiGatewayPrifexLength:I

    .line 2680
    new-instance v0, Lcom/android/server/connectivity/Vpn$3;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Vpn$3;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mReconnectHandler:Landroid/os/Handler;

    .line 2699
    new-instance v0, Lcom/android/server/connectivity/Vpn$4;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Vpn$4;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnectivityChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 2720
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2721
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2722
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConnectivityChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2724
    return-void
.end method

.method private isCurrentPreparedPackage(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;

    .line 798
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static isNullOrLegacyVpn(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"  # Ljava/lang/String;

    .line 610
    if-eqz p0, :cond_d

    const-string v0, "[Legacy VPN]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private isPackageInVpnBlackList(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"  # Ljava/lang/String;

    .line 2854
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mBlackListShowNotify:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const-string v2, "Vpn"

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ge v0, v3, :cond_f

    goto :goto_43

    .line 2859
    :cond_f
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mBlackListShowNotify:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2860
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 2861
    return v3

    .line 2862
    .end local v4  # "name":Ljava/lang/String;
    :cond_28
    goto :goto_15

    .line 2863
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " package : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not in mBlackListShowNotify"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    return v1

    .line 2855
    :cond_43
    :goto_43
    const-string/jumbo v0, "mBlackListShowNotify is null or mBlackListShowNotify size is null"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    return v1
.end method

.method private isRunningLocked()Z
    .registers 2

    .line 1248
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private isVpnUserPreConsented(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;

    .line 896
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 897
    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 900
    .local v0, "appOps":Landroid/app/AppOpsManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method

.method private native jniAddAddress(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native jniCheck(Ljava/lang/String;)I
.end method

.method private native jniCreate(I)I
.end method

.method private native jniDelAddress(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native jniGetName(I)Ljava/lang/String;
.end method

.method private native jniReset(Ljava/lang/String;)V
.end method

.method private native jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private loadAlwaysOnPackage()V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 654
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 656
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v3, "always_on_vpn_app"

    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecureGetStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 658
    .local v2, "alwaysOnPackage":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v4, "always_on_vpn_lockdown"

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecureGetIntForUser(Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1c

    const/4 v6, 0x1

    :cond_1c
    move v3, v6

    .line 660
    .local v3, "alwaysOnLockdown":Z
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v5, "always_on_vpn_lockdown_whitelist"

    iget v6, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecureGetStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 662
    .local v4, "whitelistString":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 663
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    goto :goto_3c

    :cond_32
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 664
    .local v5, "whitelistedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3c
    invoke-direct {p0, v2, v3, v5}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackageInternal(Ljava/lang/String;ZLjava/util/List;)Z
    :try_end_3f
    .catchall {:try_start_4 .. :try_end_3f} :catchall_45

    .line 666
    nop

    .end local v2  # "alwaysOnPackage":Ljava/lang/String;
    .end local v3  # "alwaysOnLockdown":Z
    .end local v4  # "whitelistString":Ljava/lang/String;
    .end local v5  # "whitelistedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 667
    nop

    .line 668
    return-void

    .line 666
    :catchall_45
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private makeLinkProperties()Landroid/net/LinkProperties;
    .registers 9

    .line 942
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->allowIPv4:Z

    .line 943
    .local v0, "allowIPv4":Z
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v1, v1, Lcom/android/internal/net/VpnConfig;->allowIPv6:Z

    .line 945
    .local v1, "allowIPv6":Z
    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    .line 947
    .local v2, "lp":Landroid/net/LinkProperties;
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 949
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    if-eqz v3, :cond_3e

    .line 950
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 951
    .local v4, "address":Landroid/net/LinkAddress;
    invoke-virtual {v2, v4}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 952
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet4Address;

    or-int/2addr v0, v5

    .line 953
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet6Address;

    or-int/2addr v1, v5

    .line 954
    .end local v4  # "address":Landroid/net/LinkAddress;
    goto :goto_20

    .line 957
    :cond_3e
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    if-eqz v3, :cond_6a

    .line 958
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    .line 959
    .local v4, "route":Landroid/net/RouteInfo;
    invoke-virtual {v2, v4}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 960
    invoke-virtual {v4}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    .line 961
    .local v5, "address":Ljava/net/InetAddress;
    instance-of v6, v5, Ljava/net/Inet4Address;

    or-int/2addr v0, v6

    .line 962
    instance-of v6, v5, Ljava/net/Inet6Address;

    or-int/2addr v1, v6

    .line 963
    .end local v4  # "route":Landroid/net/RouteInfo;
    .end local v5  # "address":Ljava/net/InetAddress;
    goto :goto_4c

    .line 966
    :cond_6a
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v3, :cond_92

    .line 967
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_78
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_92

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 968
    .local v4, "dnsServer":Ljava/lang/String;
    invoke-static {v4}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 969
    .restart local v5  # "address":Ljava/net/InetAddress;
    invoke-virtual {v2, v5}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 970
    instance-of v6, v5, Ljava/net/Inet4Address;

    or-int/2addr v0, v6

    .line 971
    instance-of v6, v5, Ljava/net/Inet6Address;

    or-int/2addr v1, v6

    .line 972
    .end local v4  # "dnsServer":Ljava/lang/String;
    .end local v5  # "address":Ljava/net/InetAddress;
    goto :goto_78

    .line 975
    :cond_92
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->proxyInfo:Landroid/net/ProxyInfo;

    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 977
    const/4 v3, 0x7

    const/4 v4, 0x0

    if-nez v0, :cond_ac

    .line 978
    new-instance v5, Landroid/net/RouteInfo;

    new-instance v6, Landroid/net/IpPrefix;

    sget-object v7, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {v6, v7, v4}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v5, v6, v3}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-virtual {v2, v5}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 980
    :cond_ac
    if-nez v1, :cond_bd

    .line 981
    new-instance v5, Landroid/net/RouteInfo;

    new-instance v6, Landroid/net/IpPrefix;

    sget-object v7, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {v6, v7, v4}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v5, v6, v3}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-virtual {v2, v5}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 985
    :cond_bd
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 986
    .local v3, "buffer":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-eqz v4, :cond_e5

    .line 987
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 988
    .local v5, "domain":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 989
    .end local v5  # "domain":Ljava/lang/String;
    goto :goto_d0

    .line 991
    :cond_e5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 995
    return-object v2
.end method

.method private prepareInternal(Ljava/lang/String;)V
    .registers 11
    .param p1, "newPackage"  # Ljava/lang/String;

    .line 805
    const-string v0, " to call protect() "

    const-string v1, "Vpn"

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->removeFlymeReconnectInfo()V

    .line 808
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 811
    .local v2, "token":J
    :try_start_b
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v4, :cond_41

    .line 812
    iput-object v5, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 814
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v4}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v4

    .line 815
    .local v4, "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    if-eqz v4, :cond_32

    .line 816
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_32

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/UidRange;

    .line 817
    .local v7, "user":Landroid/net/UidRange;
    invoke-virtual {v7}, Landroid/net/UidRange;->getStartUser()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/server/connectivity/Vpn;->hideNotification(I)V

    .line 818
    .end local v7  # "user":Landroid/net/UidRange;
    goto :goto_1e

    .line 822
    :cond_32
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    .line 823
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    .line 824
    iput-object v5, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 825
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v6, v5}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    .line 829
    .end local v4  # "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    :cond_41
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    :try_end_43
    .catchall {:try_start_b .. :try_end_43} :catchall_f9

    if-eqz v4, :cond_62

    .line 831
    :try_start_45
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    invoke-static {v4}, Lcom/android/server/connectivity/Vpn$Connection;->access$000(Lcom/android/server/connectivity/Vpn$Connection;)Landroid/os/IBinder;

    move-result-object v4

    const v6, 0xffffff

    .line 832
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    const/4 v8, 0x1

    .line 831
    invoke-interface {v4, v6, v7, v5, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_56} :catch_57
    .catchall {:try_start_45 .. :try_end_56} :catchall_f9

    .line 835
    goto :goto_58

    .line 833
    :catch_57
    move-exception v4

    .line 836
    :goto_58
    :try_start_58
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    invoke-virtual {v4, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 837
    iput-object v5, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    goto :goto_6d

    .line 838
    :cond_62
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v4, :cond_6d

    .line 839
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 840
    iput-object v5, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_6d
    .catchall {:try_start_58 .. :try_end_6d} :catchall_f9

    .line 844
    :cond_6d
    :goto_6d
    :try_start_6d
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    iget v6, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-interface {v4, v6}, Landroid/os/INetworkManagementService;->denyProtect(I)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_74} :catch_75
    .catchall {:try_start_6d .. :try_end_74} :catchall_f9

    .line 847
    goto :goto_92

    .line 845
    :catch_75
    move-exception v4

    .line 846
    .local v4, "e":Ljava/lang/Exception;
    :try_start_76
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to disallow UID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    .end local v4  # "e":Ljava/lang/Exception;
    :goto_92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Switched from "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 851
    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, p1, v4}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    .line 852
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->doesPackageTargetAtLeastQ(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageTargetingAtLeastQ:Z
    :try_end_c0
    .catchall {:try_start_76 .. :try_end_c0} :catchall_f9

    .line 854
    :try_start_c0
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    iget v6, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-interface {v4, v6}, Landroid/os/INetworkManagementService;->allowProtect(I)V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c7} :catch_c8
    .catchall {:try_start_c0 .. :try_end_c7} :catchall_f9

    .line 857
    goto :goto_e5

    .line 855
    :catch_c8
    move-exception v4

    .line 856
    .restart local v4  # "e":Ljava/lang/Exception;
    :try_start_c9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to allow UID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    .end local v4  # "e":Ljava/lang/Exception;
    :goto_e5
    iput-object v5, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 860
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "prepare"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 861
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V
    :try_end_f4
    .catchall {:try_start_c9 .. :try_end_f4} :catchall_f9

    .line 863
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 864
    nop

    .line 865
    return-void

    .line 863
    :catchall_f9
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private prepareStatusIntent()V
    .registers 4

    .line 1656
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1658
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    .line 1660
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1661
    nop

    .line 1662
    return-void

    .line 1660
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method static providesRoutesToMostDestinations(Landroid/net/LinkProperties;)Z
    .registers 10
    .param p0, "lp"  # Landroid/net/LinkProperties;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1009
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v0

    .line 1010
    .local v0, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x96

    if-le v1, v3, :cond_e

    return v2

    .line 1011
    :cond_e
    invoke-static {}, Landroid/net/IpPrefix;->lengthComparator()Ljava/util/Comparator;

    move-result-object v1

    .line 1012
    .local v1, "prefixLengthComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/net/IpPrefix;>;"
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 1013
    .local v3, "ipv4Prefixes":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Landroid/net/IpPrefix;>;"
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 1014
    .local v4, "ipv6Prefixes":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Landroid/net/IpPrefix;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_46

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/RouteInfo;

    .line 1015
    .local v6, "route":Landroid/net/RouteInfo;
    invoke-virtual {v6}, Landroid/net/RouteInfo;->getType()I

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_34

    goto :goto_20

    .line 1016
    :cond_34
    invoke-virtual {v6}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v7

    .line 1017
    .local v7, "destination":Landroid/net/IpPrefix;
    invoke-virtual {v7}, Landroid/net/IpPrefix;->isIPv4()Z

    move-result v8

    if-eqz v8, :cond_42

    .line 1018
    invoke-virtual {v3, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 1020
    :cond_42
    invoke-virtual {v4, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1022
    .end local v6  # "route":Landroid/net/RouteInfo;
    .end local v7  # "destination":Landroid/net/IpPrefix;
    :goto_45
    goto :goto_20

    .line 1023
    :cond_46
    invoke-static {v3}, Landroid/net/NetworkUtils;->routedIPv4AddressCount(Ljava/util/TreeSet;)J

    move-result-wide v5

    sget-wide v7, Lcom/android/server/connectivity/Vpn;->MOST_IPV4_ADDRESSES_COUNT:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_51

    .line 1024
    return v2

    .line 1026
    :cond_51
    invoke-static {v4}, Landroid/net/NetworkUtils;->routedIPv6AddressCount(Ljava/util/TreeSet;)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Lcom/android/server/connectivity/Vpn;->MOST_IPV6_ADDRESSES_COUNT:Ljava/math/BigInteger;

    .line 1027
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-ltz v5, :cond_5e

    goto :goto_5f

    :cond_5e
    const/4 v2, 0x0

    .line 1026
    :goto_5f
    return v2
.end method

.method private removeFlymeReconnectInfo()V
    .registers 3

    .line 2728
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mWaitingForReconnectInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v0, :cond_1d

    .line 2729
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mReconnectHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2730
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mWaitingForReconnectInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .line 2734
    const-string v0, "Vpn"

    const-string/jumbo v1, "removeMessages MSG_RECONNECT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2735
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mReconnectHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2737
    :cond_1d
    return-void
.end method

.method private saveAlwaysOnPackage()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 635
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 637
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v3, "always_on_vpn_app"

    .line 638
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 637
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecurePutStringForUser(Ljava/lang/String;Ljava/lang/String;I)V

    .line 639
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v3, "always_on_vpn_lockdown"

    .line 640
    iget-boolean v4, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v4, :cond_1f

    iget-boolean v4, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-eqz v4, :cond_1f

    const/4 v4, 0x1

    goto :goto_20

    :cond_1f
    const/4 v4, 0x0

    :goto_20
    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 639
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecurePutIntForUser(Ljava/lang/String;II)V

    .line 641
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v3, "always_on_vpn_lockdown_whitelist"

    const-string v4, ","

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mLockdownWhitelist:Ljava/util/List;

    .line 643
    invoke-static {v4, v5}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 641
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecurePutStringForUser(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_36
    .catchall {:try_start_4 .. :try_end_36} :catchall_3b

    .line 645
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 646
    nop

    .line 647
    return-void

    .line 645
    :catchall_3b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendVpnStateChangeBroadcast(I)V
    .registers 6
    .param p1, "vpnState"  # I

    .line 2552
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->disableVpnStateChangeBroadcast:Z

    if-nez v0, :cond_47

    iget v0, p0, Lcom/android/server/connectivity/Vpn;->oldVpnState:I

    if-eq p1, v0, :cond_47

    .line 2553
    iput p1, p0, Lcom/android/server/connectivity/Vpn;->oldVpnState:I

    .line 2555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendVpnStateChangeBroadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string/jumbo v2, "vpnState:%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vpn"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2556
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "meizu.intent.action.VPN_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2557
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "vpn_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2558
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2560
    .end local v0  # "intent":Landroid/content/Intent;
    :cond_47
    return-void
.end method

.method private sendVpnStateChangeBroadcastForPPS()V
    .registers 5

    .line 2563
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {v0}, Lcom/android/internal/net/LegacyVpnInfo;->stateFromNetworkInfo(Landroid/net/NetworkInfo;)I

    move-result v0

    .line 2564
    .local v0, "vpnState":I
    iput v0, p0, Lcom/android/server/connectivity/Vpn;->mOldSendVpnState:I

    .line 2565
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.meizu.pps.vpn"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2566
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "state"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2567
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    const-string/jumbo v3, "package"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2568
    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    const-string/jumbo v3, "uid"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2569
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2570
    return-void
.end method

.method private setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z
    .registers 7
    .param p1, "enforce"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Landroid/net/UidRange;",
            ">;)Z"
        }
    .end annotation

    .line 1554
    .local p2, "ranges":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/UidRange;>;"
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 1555
    return v1

    .line 1557
    :cond_8
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/UidRange;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/UidRange;

    .line 1559
    .local v0, "rangesArray":[Landroid/net/UidRange;
    :try_start_14
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, v0}, Landroid/os/INetworkManagementService;->setAllowOnlyVpnForUids(Z[Landroid/net/UidRange;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_28
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_19} :catch_28

    .line 1564
    nop

    .line 1565
    if-eqz p1, :cond_22

    .line 1566
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_27

    .line 1568
    :cond_22
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1570
    :goto_27
    return v1

    .line 1560
    :catch_28
    move-exception v1

    .line 1561
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating blocked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " for UIDs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1562
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1561
    const-string v3, "Vpn"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1563
    const/4 v2, 0x0

    return v2
.end method

.method private setAlwaysOnPackageInternal(Ljava/lang/String;ZLjava/util/List;)Z
    .registers 9
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "lockdown"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 568
    .local p3, "lockdownWhitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "[Legacy VPN]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Vpn"

    const/4 v2, 0x0

    if-eqz v0, :cond_25

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not setting legacy VPN \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" as always-on."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    return v2

    .line 573
    :cond_25
    if-eqz p3, :cond_55

    .line 574
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 575
    .local v3, "pkg":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not setting always-on vpn, invalid whitelisted package: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    return v2

    .line 579
    .end local v3  # "pkg":Ljava/lang/String;
    :cond_54
    goto :goto_2b

    .line 582
    :cond_55
    const/4 v0, 0x1

    if-eqz p1, :cond_62

    .line 584
    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->setPackageAuthorization(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 585
    return v2

    .line 587
    :cond_5f
    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    goto :goto_66

    .line 589
    :cond_62
    const-string p1, "[Legacy VPN]"

    .line 590
    iput-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 593
    :goto_66
    iget-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v1, :cond_6d

    if-eqz p2, :cond_6d

    move v2, v0

    :cond_6d
    iput-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 594
    iget-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-eqz v1, :cond_7f

    if-eqz p3, :cond_7f

    .line 595
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_83

    .line 596
    :cond_7f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_83
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLockdownWhitelist:Ljava/util/List;

    .line 598
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 599
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Vpn;->updateAlwaysOnNotification(Landroid/net/NetworkInfo$DetailedState;)V

    .line 600
    iget-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    goto :goto_9d

    .line 604
    :cond_9a
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V

    .line 606
    :goto_9d
    return v0
.end method

.method private setVpnForcedLocked(Z)V
    .registers 10
    .param p1, "enforce"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 1508
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->isNullOrLegacyVpn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1509
    const/4 v0, 0x0

    .local v0, "exemptedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_16

    .line 1511
    .end local v0  # "exemptedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLockdownWhitelist:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1512
    .restart local v0  # "exemptedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1514
    :goto_16
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1516
    .local v1, "removedRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    .line 1517
    .local v2, "addedRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    const/4 v3, 0x1

    if-eqz p1, :cond_59

    .line 1518
    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v0}, Lcom/android/server/connectivity/Vpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v2

    .line 1525
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/UidRange;

    .line 1526
    .local v5, "range":Landroid/net/UidRange;
    iget v6, v5, Landroid/net/UidRange;->start:I

    if-nez v6, :cond_50

    .line 1527
    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1528
    iget v6, v5, Landroid/net/UidRange;->stop:I

    if-eqz v6, :cond_50

    .line 1529
    new-instance v6, Landroid/net/UidRange;

    iget v7, v5, Landroid/net/UidRange;->stop:I

    invoke-direct {v6, v3, v7}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1532
    .end local v5  # "range":Landroid/net/UidRange;
    :cond_50
    goto :goto_2f

    .line 1534
    :cond_51
    invoke-interface {v1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1535
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-interface {v2, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1538
    :cond_59
    const/4 v4, 0x0

    invoke-direct {p0, v4, v1}, Lcom/android/server/connectivity/Vpn;->setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z

    .line 1539
    invoke-direct {p0, v3, v2}, Lcom/android/server/connectivity/Vpn;->setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z

    .line 1540
    return-void
.end method

.method private showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;ILjava/lang/String;)V
    .registers 18
    .param p1, "label"  # Ljava/lang/String;
    .param p2, "icon"  # Landroid/graphics/Bitmap;
    .param p3, "user"  # I
    .param p4, "tag"  # Ljava/lang/String;

    .line 2791
    move-object v1, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2793
    .local v2, "token":J
    :try_start_5
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_cc

    .line 2795
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2796
    nop

    .line 2798
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 2799
    const-string/jumbo v4, "notification"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2801
    .local v0, "nm":Landroid/app/NotificationManager;
    if-eqz v0, :cond_c6

    .line 2802
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_2c

    iget-object v6, v1, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v7, 0x104074b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_39

    .line 2803
    :cond_2c
    iget-object v6, v1, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v7, 0x104074c

    new-array v8, v4, [Ljava/lang/Object;

    aput-object p1, v8, v5

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_39
    nop

    .line 2804
    .local v6, "title":Ljava/lang/String;
    iget-object v7, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v7, v7, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    if-nez v7, :cond_4a

    iget-object v7, v1, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v8, 0x1040749

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_81

    .line 2805
    :cond_4a
    iget-object v7, v1, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v8, 0x104074a

    new-array v9, v4, [Ljava/lang/Object;

    .line 2806
    iget-object v10, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v10, v10, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0xa

    if-le v10, v11, :cond_77

    .line 2807
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v12, v12, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {v12, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_7b

    :cond_77
    iget-object v10, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v10, v10, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    :goto_7b
    aput-object v10, v9, v5

    .line 2805
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_81
    nop

    .line 2809
    .local v7, "text":Ljava/lang/String;
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v9, v1, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    sget-object v10, Lcom/android/internal/notification/SystemNotificationChannels;->VPN:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2810
    const v9, 0xa0802c1

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 2811
    move-object v10, p2

    invoke-virtual {v8, p2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 2812
    invoke-virtual {v8, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 2813
    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v11, v1, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 2814
    invoke-virtual {v8, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 2815
    invoke-virtual {v8, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 2816
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2817
    .local v4, "builder":Landroid/app/Notification$Builder;
    iget-object v5, v4, Landroid/app/Notification$Builder;->mFlymeNotificationBuilder:Landroid/app/NotificationBuilderExt;

    const v8, 0xa0802e0

    invoke-virtual {v5, v8}, Landroid/app/NotificationBuilderExt;->setNotificationIcon(I)V

    .line 2819
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    .line 2820
    .local v5, "notification":Landroid/app/Notification;
    new-instance v8, Landroid/os/UserHandle;

    move/from16 v11, p3

    invoke-direct {v8, v11}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v12, p4

    invoke-virtual {v0, v12, v9, v5, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_cb

    .line 2801
    .end local v4  # "builder":Landroid/app/Notification$Builder;
    .end local v5  # "notification":Landroid/app/Notification;
    .end local v6  # "title":Ljava/lang/String;
    .end local v7  # "text":Ljava/lang/String;
    :cond_c6
    move-object v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    .line 2824
    :goto_cb
    return-void

    .line 2795
    .end local v0  # "nm":Landroid/app/NotificationManager;
    :catchall_cc
    move-exception v0

    move-object v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private declared-synchronized startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/net/VpnProfile;)V
    .registers 5
    .param p1, "config"  # Lcom/android/internal/net/VpnConfig;
    .param p2, "racoon"  # [Ljava/lang/String;
    .param p3, "mtpd"  # [Ljava/lang/String;
    .param p4, "profile"  # Lcom/android/internal/net/VpnProfile;

    monitor-enter p0

    .line 2041
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/connectivity/Vpn;->startLegacyVpnNoneSync(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/net/VpnProfile;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 2042
    monitor-exit p0

    return-void

    .line 2040
    .end local p0  # "this":Lcom/android/server/connectivity/Vpn;
    .end local p1  # "config":Lcom/android/internal/net/VpnConfig;
    .end local p2  # "racoon":[Ljava/lang/String;
    .end local p3  # "mtpd":[Ljava/lang/String;
    .end local p4  # "profile":Lcom/android/internal/net/VpnProfile;
    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private startLegacyVpnNoneSync(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/net/VpnProfile;)V
    .registers 13
    .param p1, "config"  # Lcom/android/internal/net/VpnConfig;
    .param p2, "racoon"  # [Ljava/lang/String;
    .param p3, "mtpd"  # [Ljava/lang/String;
    .param p4, "profile"  # Lcom/android/internal/net/VpnProfile;

    .line 2049
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->stopLegacyVpnPrivileged()V

    .line 2051
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->disableVpnStateChangeBroadcast:Z

    .line 2055
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->flymeResetWifiGatewayInfo()V

    .line 2060
    const-string v0, "[Legacy VPN]"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V

    .line 2063
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->disableVpnStateChangeBroadcast:Z

    .line 2064
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->backupParasForReconnect(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 2067
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "startLegacyVpn"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 2070
    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/net/VpnProfile;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 2071
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->start()V

    .line 2072
    return-void
.end method

.method private static uidRangesForUser(ILjava/util/Set;)Ljava/util/List;
    .registers 7
    .param p0, "userHandle"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation

    .line 1402
    .local p1, "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    invoke-static {p0}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object v0

    .line 1403
    .local v0, "userRange":Landroid/net/UidRange;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1404
    .local v1, "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/UidRange;

    .line 1405
    .local v3, "range":Landroid/net/UidRange;
    invoke-virtual {v0, v3}, Landroid/net/UidRange;->containsRange(Landroid/net/UidRange;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1406
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1408
    .end local v3  # "range":Landroid/net/UidRange;
    :cond_22
    goto :goto_d

    .line 1409
    :cond_23
    return-object v1
.end method

.method private updateAlwaysOnNotification(Landroid/net/NetworkInfo$DetailedState;)V
    .registers 15
    .param p1, "networkState"  # Landroid/net/NetworkInfo$DetailedState;

    .line 1754
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 1756
    .local v0, "visible":Z
    :goto_c
    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 1757
    .local v2, "user":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1759
    .local v3, "token":J
    :try_start_16
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v5
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_aa

    .line 1760
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    const/16 v6, 0x11

    const-string v7, "Vpn"

    if-nez v0, :cond_29

    .line 1761
    :try_start_22
    invoke-virtual {v5, v7, v6, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_aa

    .line 1789
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1762
    return-void

    .line 1764
    :cond_29
    :try_start_29
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1765
    .local v8, "intent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v10, 0x104014c

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1767
    const-string/jumbo v9, "lockdown"

    iget-boolean v10, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1768
    const/high16 v9, 0x10000000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1769
    iget-object v9, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const/high16 v10, 0xc000000

    invoke-virtual {v9, v8, v10, v2}, Lcom/android/server/connectivity/Vpn$SystemServices;->pendingIntentGetActivityAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 1771
    .local v9, "configIntent":Landroid/app/PendingIntent;
    new-instance v10, Landroid/app/Notification$Builder;

    iget-object v11, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    sget-object v12, Lcom/android/internal/notification/SystemNotificationChannels;->VPN:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v11, 0xa0802c1

    .line 1777
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v12, 0x1040747

    .line 1779
    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v12, 0x1040744

    .line 1780
    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 1781
    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v10

    const-string/jumbo v11, "sys"

    .line 1782
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 1783
    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 1784
    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v11, 0x106001c

    .line 1785
    invoke-virtual {v10, v11}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1786
    .local v1, "builder":Landroid/app/Notification$Builder;
    nop

    .line 1787
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    .line 1786
    invoke-virtual {v5, v7, v6, v10, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_a5
    .catchall {:try_start_29 .. :try_end_a5} :catchall_aa

    .line 1789
    .end local v1  # "builder":Landroid/app/Notification$Builder;
    .end local v5  # "notificationManager":Landroid/app/NotificationManager;
    .end local v8  # "intent":Landroid/content/Intent;
    .end local v9  # "configIntent":Landroid/app/PendingIntent;
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1790
    nop

    .line 1791
    return-void

    .line 1789
    :catchall_aa
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private updateLinkPropertiesInPlaceIfPossible(Landroid/net/NetworkAgent;Lcom/android/internal/net/VpnConfig;)Z
    .registers 7
    .param p1, "agent"  # Landroid/net/NetworkAgent;
    .param p2, "oldConfig"  # Lcom/android/internal/net/VpnConfig;

    .line 1037
    iget-boolean v0, p2, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v1, v1, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    const/4 v2, 0x0

    const-string v3, "Vpn"

    if-eq v0, v1, :cond_11

    .line 1038
    const-string v0, "Handover not possible due to changes to allowBypass"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    return v2

    .line 1044
    :cond_11
    iget-object v0, p2, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p2, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    .line 1045
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_33

    .line 1050
    :cond_2a
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 1051
    const/4 v0, 0x1

    return v0

    .line 1046
    :cond_33
    :goto_33
    const-string v0, "Handover not possible due to changes to whitelisted/blacklisted apps"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    return v2
.end method

.method private updateStateForFailedDetail(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V
    .registers 5
    .param p1, "detailedState"  # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "reason"  # Ljava/lang/String;
    .param p3, "failedDatail"  # I

    .line 2546
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 2547
    iput p3, p0, Lcom/android/server/connectivity/Vpn;->mFailedDetail:I

    .line 2548
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mFailedDetail:I

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->sendVpnStateChangeBroadcast(I)V

    .line 2549
    return-void
.end method


# virtual methods
.method public declared-synchronized addAddress(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "address"  # Ljava/lang/String;
    .param p2, "prefixLength"  # I

    monitor-enter p0

    .line 1665
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1b

    if-nez v0, :cond_a

    .line 1666
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1668
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/connectivity/Vpn;->jniAddAddress(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 1669
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_1b

    .line 1670
    monitor-exit p0

    return v0

    .line 1664
    .end local v0  # "success":Z
    .end local p0  # "this":Lcom/android/server/connectivity/Vpn;
    .end local p1  # "address":Ljava/lang/String;
    .end local p2  # "prefixLength":I
    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addToNotShowVpnIconList(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;

    .line 2843
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 2844
    return v0

    .line 2845
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isPackageInVpnBlackList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2846
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is already in mBlackListShowNotify"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Vpn"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2847
    return v0

    .line 2849
    :cond_27
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mBlackListShowNotify:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2850
    const/4 v0, 0x1

    return v0
.end method

.method addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V
    .registers 22
    .param p2, "userHandle"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1325
    .local p1, "ranges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .local p3, "allowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "disallowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    if-eqz v4, :cond_45

    .line 1327
    const/4 v0, -0x1

    .local v0, "start":I
    const/4 v6, -0x1

    .line 1328
    .local v6, "stop":I
    invoke-direct {v1, v4, v3}, Lcom/android/server/connectivity/Vpn;->getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_16
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, -0x1

    if-eqz v8, :cond_3a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1329
    .local v8, "uid":I
    if-ne v0, v9, :cond_2b

    .line 1330
    move v0, v8

    goto :goto_38

    .line 1331
    :cond_2b
    add-int/lit8 v9, v6, 0x1

    if-eq v8, v9, :cond_38

    .line 1332
    new-instance v9, Landroid/net/UidRange;

    invoke-direct {v9, v0, v6}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {v2, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1333
    move v0, v8

    .line 1335
    :cond_38
    :goto_38
    move v6, v8

    .line 1336
    .end local v8  # "uid":I
    goto :goto_16

    .line 1337
    :cond_3a
    if-eq v0, v9, :cond_44

    new-instance v7, Landroid/net/UidRange;

    invoke-direct {v7, v0, v6}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1338
    .end local v0  # "start":I
    .end local v6  # "stop":I
    :cond_44
    goto :goto_8d

    :cond_45
    if-eqz v5, :cond_86

    .line 1340
    invoke-static/range {p2 .. p2}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object v0

    .line 1341
    .local v0, "userRange":Landroid/net/UidRange;
    iget v6, v0, Landroid/net/UidRange;->start:I

    .line 1342
    .local v6, "start":I
    invoke-direct {v1, v5, v3}, Lcom/android/server/connectivity/Vpn;->getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_55
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_77

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1343
    .restart local v8  # "uid":I
    if-ne v8, v6, :cond_6a

    .line 1344
    add-int/lit8 v6, v6, 0x1

    goto :goto_76

    .line 1346
    :cond_6a
    new-instance v9, Landroid/net/UidRange;

    add-int/lit8 v10, v8, -0x1

    invoke-direct {v9, v6, v10}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {v2, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1347
    add-int/lit8 v6, v8, 0x1

    .line 1349
    .end local v8  # "uid":I
    :goto_76
    goto :goto_55

    .line 1350
    :cond_77
    iget v7, v0, Landroid/net/UidRange;->stop:I

    if-gt v6, v7, :cond_85

    new-instance v7, Landroid/net/UidRange;

    iget v8, v0, Landroid/net/UidRange;->stop:I

    invoke-direct {v7, v6, v8}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1351
    .end local v0  # "userRange":Landroid/net/UidRange;
    .end local v6  # "start":I
    :cond_85
    goto :goto_8d

    .line 1353
    :cond_86
    invoke-static/range {p2 .. p2}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1357
    :goto_8d
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/server/connectivity/Vpn;->isPackageInVpnBlackList(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    move v6, v0

    .line 1358
    .local v6, "needShow":Z
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    const-string v7, "[Legacy VPN]"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_125

    if-nez v6, :cond_a4

    goto/16 :goto_125

    .line 1362
    :cond_a4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1365
    .local v7, "token":J
    :try_start_a8
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_ae} :catch_11f
    .catchall {:try_start_a8 .. :try_end_ae} :catchall_11a

    move-object v9, v0

    .line 1366
    .local v9, "pm":Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    .line 1368
    .local v10, "app":Landroid/content/pm/ApplicationInfo;
    :try_start_b0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v11, v1, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-interface {v0, v11, v12, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_bb
    .catch Landroid/os/RemoteException; {:try_start_b0 .. :try_end_bb} :catch_111
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_bb} :catch_11f
    .catchall {:try_start_b0 .. :try_end_bb} :catchall_11a

    .line 1371
    .end local v10  # "app":Landroid/content/pm/ApplicationInfo;
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    nop

    .line 1372
    :try_start_bc
    invoke-virtual {v0, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1374
    .local v10, "label":Ljava/lang/String;
    invoke-virtual {v0, v9}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 1375
    .local v11, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v13, 0x0

    .line 1376
    .local v13, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    if-lez v14, :cond_109

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    if-lez v14, :cond_109

    .line 1377
    iget-object v14, v1, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1050005

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 1379
    .local v14, "width":I
    iget-object v15, v1, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v12, 0x1050006

    invoke-virtual {v15, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 1381
    .local v12, "height":I
    const/4 v15, 0x0

    invoke-virtual {v11, v15, v15, v14, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1382
    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v12, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object v13, v15

    .line 1383
    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1384
    .local v15, "c":Landroid/graphics/Canvas;
    invoke-virtual {v11, v15}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1385
    move-object/from16 v16, v0

    .end local v0  # "app":Landroid/content/pm/ApplicationInfo;
    .local v16, "app":Landroid/content/pm/ApplicationInfo;
    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_10b

    .line 1376
    .end local v12  # "height":I
    .end local v14  # "width":I
    .end local v15  # "c":Landroid/graphics/Canvas;
    .end local v16  # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v0  # "app":Landroid/content/pm/ApplicationInfo;
    :cond_109
    move-object/from16 v16, v0

    .line 1387
    .end local v0  # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v16  # "app":Landroid/content/pm/ApplicationInfo;
    :goto_10b
    const-string v0, "3rd_vpn"

    invoke-direct {v1, v10, v13, v3, v0}, Lcom/android/server/connectivity/Vpn;->showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;ILjava/lang/String;)V

    .end local v9  # "pm":Landroid/content/pm/PackageManager;
    .end local v10  # "label":Ljava/lang/String;
    .end local v11  # "icon":Landroid/graphics/drawable/Drawable;
    .end local v13  # "bitmap":Landroid/graphics/Bitmap;
    .end local v16  # "app":Landroid/content/pm/ApplicationInfo;
    goto :goto_120

    .line 1369
    .restart local v9  # "pm":Landroid/content/pm/PackageManager;
    .local v10, "app":Landroid/content/pm/ApplicationInfo;
    :catch_111
    move-exception v0

    .line 1370
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Invalid application"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v6  # "needShow":Z
    .end local v7  # "token":J
    .end local p0  # "this":Lcom/android/server/connectivity/Vpn;
    .end local p1  # "ranges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .end local p2  # "userHandle":I
    .end local p3  # "allowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p4  # "disallowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    throw v11
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_11a} :catch_11f
    .catchall {:try_start_bc .. :try_end_11a} :catchall_11a

    .line 1391
    .end local v0  # "e":Landroid/os/RemoteException;
    .end local v9  # "pm":Landroid/content/pm/PackageManager;
    .end local v10  # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v6  # "needShow":Z
    .restart local v7  # "token":J
    .restart local p0  # "this":Lcom/android/server/connectivity/Vpn;
    .restart local p1  # "ranges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .restart local p2  # "userHandle":I
    .restart local p3  # "allowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p4  # "disallowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_11a
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1388
    :catch_11f
    move-exception v0

    .line 1391
    :goto_120
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1392
    nop

    .line 1395
    return-void

    .line 1358
    .end local v7  # "token":J
    :cond_125
    :goto_125
    return-void
.end method

.method public declared-synchronized appliesToUid(I)Z
    .registers 3
    .param p1, "uid"  # I

    monitor-enter p0

    .line 1730
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_12

    if-nez v0, :cond_a

    .line 1731
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1733
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->appliesToUid(I)Z

    move-result v0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_12

    monitor-exit p0

    return v0

    .line 1729
    .end local p0  # "this":Lcom/android/server/connectivity/Vpn;
    .end local p1  # "uid":I
    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;
    .registers 11
    .param p1, "userHandle"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation

    .line 1285
    .local p2, "allowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "disallowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1288
    .local v0, "ranges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    .line 1291
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->canHaveRestrictedProfile(I)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1292
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1295
    .local v1, "token":J
    :try_start_12
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_41

    .line 1297
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1298
    nop

    .line 1299
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_46

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 1300
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v6

    if-eqz v6, :cond_40

    iget v6, v5, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v6, p1, :cond_40

    .line 1301
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, v6, p2, p3}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    .line 1303
    .end local v5  # "user":Landroid/content/pm/UserInfo;
    :cond_40
    goto :goto_25

    .line 1297
    .end local v3  # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_41
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1305
    .end local v1  # "token":J
    :cond_46
    return-object v0
.end method

.method public declared-synchronized establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .registers 22
    .param p1, "config"  # Lcom/android/internal/net/VpnConfig;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    monitor-enter p0

    .line 1127
    :try_start_5
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    move-object v3, v0

    .line 1128
    .local v3, "mgr":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v4, v1, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_22f

    const/4 v5, 0x0

    if-eq v0, v4, :cond_17

    .line 1129
    monitor-exit p0

    return-object v5

    .line 1133
    :cond_17
    :try_start_17
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->flymeResetWifiGatewayInfo()V

    .line 1137
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/server/connectivity/Vpn;->isVpnUserPreConsented(Ljava/lang/String;)Z

    move-result v0
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_22f

    if-nez v0, :cond_24

    .line 1138
    monitor-exit p0

    return-object v5

    .line 1141
    :cond_24
    :try_start_24
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.net.VpnService"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 1142
    .local v4, "intent":Landroid/content/Intent;
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v4, v0, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1143
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_37
    .catchall {:try_start_24 .. :try_end_37} :catchall_22f

    .line 1146
    .local v6, "token":J
    :try_start_37
    iget v0, v1, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-virtual {v3, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1147
    .local v0, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v8

    if-nez v8, :cond_1fb

    .line 1151
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    const/4 v9, 0x0

    iget v10, v1, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-interface {v8, v4, v5, v9, v10}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 1153
    .local v8, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v8, :cond_1df

    .line 1156
    const-string v9, "android.permission.BIND_VPN_SERVICE"

    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_5a} :catch_20d
    .catchall {:try_start_37 .. :try_end_5a} :catchall_208

    if-eqz v9, :cond_1be

    .line 1162
    .end local v0  # "user":Landroid/content/pm/UserInfo;
    .end local v8  # "info":Landroid/content/pm/ResolveInfo;
    :try_start_5c
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1163
    nop

    .line 1166
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object v8, v0

    .line 1167
    .local v8, "oldConfig":Lcom/android/internal/net/VpnConfig;
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object v9, v0

    .line 1168
    .local v9, "oldInterface":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    move-object v10, v0

    .line 1169
    .local v10, "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    move-object v11, v0

    .line 1170
    .local v11, "oldNetworkAgent":Landroid/net/NetworkAgent;
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v0

    move-object v12, v0

    .line 1173
    .local v12, "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    iget v0, v2, Lcom/android/internal/net/VpnConfig;->mtu:I

    invoke-direct {v1, v0}, Lcom/android/server/connectivity/Vpn;->jniCreate(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_7d
    .catchall {:try_start_5c .. :try_end_7d} :catchall_22f

    move-object v13, v0

    .line 1175
    .local v13, "tun":Landroid/os/ParcelFileDescriptor;
    :try_start_7e
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/server/connectivity/Vpn;->jniGetName(I)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 1178
    .local v14, "interfaze":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v0

    .line 1179
    .local v15, "builder":Ljava/lang/StringBuilder;
    iget-object v0, v2, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_93
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v16
    :try_end_97
    .catch Ljava/lang/RuntimeException; {:try_start_7e .. :try_end_97} :catch_1a6
    .catchall {:try_start_7e .. :try_end_97} :catchall_22f

    if-eqz v16, :cond_c3

    :try_start_99
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/LinkAddress;

    move-object/from16 v17, v16

    .line 1180
    .local v17, "address":Landroid/net/LinkAddress;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v0

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    .end local v17  # "address":Landroid/net/LinkAddress;
    .local v0, "address":Landroid/net/LinkAddress;
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b9
    .catch Ljava/lang/RuntimeException; {:try_start_99 .. :try_end_b9} :catch_bd
    .catchall {:try_start_99 .. :try_end_b9} :catchall_22f

    .line 1181
    move-object/from16 v0, v18

    const/4 v5, 0x0

    .end local v0  # "address":Landroid/net/LinkAddress;
    goto :goto_93

    .line 1232
    .end local v14  # "interfaze":Ljava/lang/String;
    .end local v15  # "builder":Ljava/lang/StringBuilder;
    .end local p0  # "this":Lcom/android/server/connectivity/Vpn;
    :catch_bd
    move-exception v0

    move-object/from16 v17, v3

    move-object v15, v4

    goto/16 :goto_1aa

    .line 1182
    .restart local v14  # "interfaze":Ljava/lang/String;
    .restart local v15  # "builder":Ljava/lang/StringBuilder;
    :cond_c3
    :try_start_c3
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v14, v0}, Lcom/android/server/connectivity/Vpn;->jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v5, 0x1

    if-lt v0, v5, :cond_197

    .line 1185
    new-instance v0, Lcom/android/server/connectivity/Vpn$Connection;

    const/4 v5, 0x0

    invoke-direct {v0, v1, v5}, Lcom/android/server/connectivity/Vpn$Connection;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$1;)V

    move-object v5, v0

    .line 1186
    .local v5, "connection":Lcom/android/server/connectivity/Vpn$Connection;
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    :try_end_d7
    .catch Ljava/lang/RuntimeException; {:try_start_c3 .. :try_end_d7} :catch_1a6
    .catchall {:try_start_c3 .. :try_end_d7} :catchall_22f

    move-object/from16 v17, v3

    .end local v3  # "mgr":Landroid/os/UserManager;
    .local v17, "mgr":Landroid/os/UserManager;
    :try_start_d9
    new-instance v3, Landroid/os/UserHandle;

    move-object/from16 v19, v15

    .end local v15  # "builder":Ljava/lang/StringBuilder;
    .local v19, "builder":Ljava/lang/StringBuilder;
    iget v15, v1, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {v3, v15}, Landroid/os/UserHandle;-><init>(I)V

    const v15, 0x4000001

    invoke-virtual {v0, v4, v5, v15, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_178

    .line 1192
    iput-object v5, v1, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 1193
    iput-object v14, v1, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 1196
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 1197
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;
    :try_end_f7
    .catch Ljava/lang/RuntimeException; {:try_start_d9 .. :try_end_f7} :catch_194
    .catchall {:try_start_d9 .. :try_end_f7} :catchall_22f

    .line 1198
    move-object v15, v4

    .end local v4  # "intent":Landroid/content/Intent;
    .local v15, "intent":Landroid/content/Intent;
    :try_start_f8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 1199
    iput-object v2, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 1204
    if-eqz v8, :cond_10b

    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1205
    invoke-direct {v1, v0, v8}, Lcom/android/server/connectivity/Vpn;->updateLinkPropertiesInPlaceIfPossible(Landroid/net/NetworkAgent;Lcom/android/internal/net/VpnConfig;)Z

    move-result v0

    if-eqz v0, :cond_10b

    goto :goto_11b

    .line 1208
    :cond_10b
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1209
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v3, "establish"

    invoke-virtual {v1, v0, v3}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1211
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->agentConnect()V

    .line 1215
    invoke-direct {v1, v11}, Lcom/android/server/connectivity/Vpn;->agentDisconnect(Landroid/net/NetworkAgent;)V

    .line 1218
    :goto_11b
    if-eqz v10, :cond_122

    .line 1219
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1222
    :cond_122
    if-eqz v9, :cond_12d

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12d

    .line 1223
    invoke-direct {v1, v9}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V
    :try_end_12d
    .catch Ljava/lang/RuntimeException; {:try_start_f8 .. :try_end_12d} :catch_1a4
    .catchall {:try_start_f8 .. :try_end_12d} :catchall_22f

    .line 1227
    :cond_12d
    :try_start_12d
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iget-boolean v3, v2, Lcom/android/internal/net/VpnConfig;->blocking:Z

    invoke-static {v0, v3}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V
    :try_end_136
    .catch Ljava/io/IOException; {:try_start_12d .. :try_end_136} :catch_15c
    .catch Ljava/lang/RuntimeException; {:try_start_12d .. :try_end_136} :catch_1a4
    .catchall {:try_start_12d .. :try_end_136} :catchall_22f

    .line 1231
    nop

    .line 1242
    .end local v5  # "connection":Lcom/android/server/connectivity/Vpn$Connection;
    .end local v14  # "interfaze":Ljava/lang/String;
    .end local v19  # "builder":Ljava/lang/StringBuilder;
    nop

    .line 1243
    :try_start_138
    const-string v0, "Vpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Established by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15a
    .catchall {:try_start_138 .. :try_end_15a} :catchall_22f

    .line 1244
    monitor-exit p0

    return-object v13

    .line 1228
    .restart local v5  # "connection":Lcom/android/server/connectivity/Vpn$Connection;
    .restart local v14  # "interfaze":Ljava/lang/String;
    .restart local v19  # "builder":Ljava/lang/StringBuilder;
    :catch_15c
    move-exception v0

    .line 1229
    .local v0, "e":Ljava/io/IOException;
    :try_start_15d
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v5

    .end local v5  # "connection":Lcom/android/server/connectivity/Vpn$Connection;
    .local v16, "connection":Lcom/android/server/connectivity/Vpn$Connection;
    const-string v5, "Cannot set tunnel\'s fd as blocking="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v2, Lcom/android/internal/net/VpnConfig;->blocking:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v6  # "token":J
    .end local v8  # "oldConfig":Lcom/android/internal/net/VpnConfig;
    .end local v9  # "oldInterface":Ljava/lang/String;
    .end local v10  # "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    .end local v11  # "oldNetworkAgent":Landroid/net/NetworkAgent;
    .end local v12  # "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .end local v13  # "tun":Landroid/os/ParcelFileDescriptor;
    .end local v15  # "intent":Landroid/content/Intent;
    .end local v17  # "mgr":Landroid/os/UserManager;
    .end local p1  # "config":Lcom/android/internal/net/VpnConfig;
    throw v3

    .line 1189
    .end local v0  # "e":Ljava/io/IOException;
    .end local v16  # "connection":Lcom/android/server/connectivity/Vpn$Connection;
    .restart local v4  # "intent":Landroid/content/Intent;
    .restart local v5  # "connection":Lcom/android/server/connectivity/Vpn$Connection;
    .restart local v6  # "token":J
    .restart local v8  # "oldConfig":Lcom/android/internal/net/VpnConfig;
    .restart local v9  # "oldInterface":Ljava/lang/String;
    .restart local v10  # "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    .restart local v11  # "oldNetworkAgent":Landroid/net/NetworkAgent;
    .restart local v12  # "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .restart local v13  # "tun":Landroid/os/ParcelFileDescriptor;
    .restart local v17  # "mgr":Landroid/os/UserManager;
    .restart local p1  # "config":Lcom/android/internal/net/VpnConfig;
    :cond_178
    move-object v15, v4

    move-object/from16 v16, v5

    .end local v4  # "intent":Landroid/content/Intent;
    .end local v5  # "connection":Lcom/android/server/connectivity/Vpn$Connection;
    .restart local v15  # "intent":Landroid/content/Intent;
    .restart local v16  # "connection":Lcom/android/server/connectivity/Vpn$Connection;
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot bind "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v6  # "token":J
    .end local v8  # "oldConfig":Lcom/android/internal/net/VpnConfig;
    .end local v9  # "oldInterface":Ljava/lang/String;
    .end local v10  # "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    .end local v11  # "oldNetworkAgent":Landroid/net/NetworkAgent;
    .end local v12  # "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .end local v13  # "tun":Landroid/os/ParcelFileDescriptor;
    .end local v15  # "intent":Landroid/content/Intent;
    .end local v17  # "mgr":Landroid/os/UserManager;
    .end local p1  # "config":Lcom/android/internal/net/VpnConfig;
    throw v0

    .line 1232
    .end local v14  # "interfaze":Ljava/lang/String;
    .end local v16  # "connection":Lcom/android/server/connectivity/Vpn$Connection;
    .end local v19  # "builder":Ljava/lang/StringBuilder;
    .restart local v4  # "intent":Landroid/content/Intent;
    .restart local v6  # "token":J
    .restart local v8  # "oldConfig":Lcom/android/internal/net/VpnConfig;
    .restart local v9  # "oldInterface":Ljava/lang/String;
    .restart local v10  # "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    .restart local v11  # "oldNetworkAgent":Landroid/net/NetworkAgent;
    .restart local v12  # "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .restart local v13  # "tun":Landroid/os/ParcelFileDescriptor;
    .restart local v17  # "mgr":Landroid/os/UserManager;
    .restart local p1  # "config":Lcom/android/internal/net/VpnConfig;
    :catch_194
    move-exception v0

    move-object v15, v4

    .end local v4  # "intent":Landroid/content/Intent;
    .restart local v15  # "intent":Landroid/content/Intent;
    goto :goto_1aa

    .line 1183
    .end local v17  # "mgr":Landroid/os/UserManager;
    .restart local v3  # "mgr":Landroid/os/UserManager;
    .restart local v4  # "intent":Landroid/content/Intent;
    .restart local v14  # "interfaze":Ljava/lang/String;
    .local v15, "builder":Ljava/lang/StringBuilder;
    :cond_197
    move-object/from16 v17, v3

    move-object/from16 v19, v15

    move-object v15, v4

    .end local v3  # "mgr":Landroid/os/UserManager;
    .end local v4  # "intent":Landroid/content/Intent;
    .local v15, "intent":Landroid/content/Intent;
    .restart local v17  # "mgr":Landroid/os/UserManager;
    .restart local v19  # "builder":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "At least one address must be specified"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v6  # "token":J
    .end local v8  # "oldConfig":Lcom/android/internal/net/VpnConfig;
    .end local v9  # "oldInterface":Ljava/lang/String;
    .end local v10  # "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    .end local v11  # "oldNetworkAgent":Landroid/net/NetworkAgent;
    .end local v12  # "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .end local v13  # "tun":Landroid/os/ParcelFileDescriptor;
    .end local v15  # "intent":Landroid/content/Intent;
    .end local v17  # "mgr":Landroid/os/UserManager;
    .end local p1  # "config":Lcom/android/internal/net/VpnConfig;
    throw v0
    :try_end_1a4
    .catch Ljava/lang/RuntimeException; {:try_start_15d .. :try_end_1a4} :catch_1a4
    .catchall {:try_start_15d .. :try_end_1a4} :catchall_22f

    .line 1232
    .end local v14  # "interfaze":Ljava/lang/String;
    .end local v19  # "builder":Ljava/lang/StringBuilder;
    .restart local v6  # "token":J
    .restart local v8  # "oldConfig":Lcom/android/internal/net/VpnConfig;
    .restart local v9  # "oldInterface":Ljava/lang/String;
    .restart local v10  # "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    .restart local v11  # "oldNetworkAgent":Landroid/net/NetworkAgent;
    .restart local v12  # "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .restart local v13  # "tun":Landroid/os/ParcelFileDescriptor;
    .restart local v15  # "intent":Landroid/content/Intent;
    .restart local v17  # "mgr":Landroid/os/UserManager;
    .restart local p1  # "config":Lcom/android/internal/net/VpnConfig;
    :catch_1a4
    move-exception v0

    goto :goto_1aa

    .end local v15  # "intent":Landroid/content/Intent;
    .end local v17  # "mgr":Landroid/os/UserManager;
    .restart local v3  # "mgr":Landroid/os/UserManager;
    .restart local v4  # "intent":Landroid/content/Intent;
    :catch_1a6
    move-exception v0

    move-object/from16 v17, v3

    move-object v15, v4

    .line 1233
    .end local v3  # "mgr":Landroid/os/UserManager;
    .end local v4  # "intent":Landroid/content/Intent;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v15  # "intent":Landroid/content/Intent;
    .restart local v17  # "mgr":Landroid/os/UserManager;
    :goto_1aa
    :try_start_1aa
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1234
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    .line 1236
    iput-object v8, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 1237
    iput-object v10, v1, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 1238
    iget-object v3, v1, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3, v12}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    .line 1239
    iput-object v11, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1240
    iput-object v9, v1, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 1241
    throw v0
    :try_end_1be
    .catchall {:try_start_1aa .. :try_end_1be} :catchall_22f

    .line 1157
    .end local v9  # "oldInterface":Ljava/lang/String;
    .end local v10  # "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    .end local v11  # "oldNetworkAgent":Landroid/net/NetworkAgent;
    .end local v12  # "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .end local v13  # "tun":Landroid/os/ParcelFileDescriptor;
    .end local v15  # "intent":Landroid/content/Intent;
    .end local v17  # "mgr":Landroid/os/UserManager;
    .local v0, "user":Landroid/content/pm/UserInfo;
    .restart local v3  # "mgr":Landroid/os/UserManager;
    .restart local v4  # "intent":Landroid/content/Intent;
    .local v8, "info":Landroid/content/pm/ResolveInfo;
    :cond_1be
    move-object/from16 v17, v3

    move-object v15, v4

    .end local v3  # "mgr":Landroid/os/UserManager;
    .end local v4  # "intent":Landroid/content/Intent;
    .restart local v15  # "intent":Landroid/content/Intent;
    .restart local v17  # "mgr":Landroid/os/UserManager;
    :try_start_1c1
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not require "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "android.permission.BIND_VPN_SERVICE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v6  # "token":J
    .end local v15  # "intent":Landroid/content/Intent;
    .end local v17  # "mgr":Landroid/os/UserManager;
    .end local p1  # "config":Lcom/android/internal/net/VpnConfig;
    throw v3

    .line 1154
    .restart local v3  # "mgr":Landroid/os/UserManager;
    .restart local v4  # "intent":Landroid/content/Intent;
    .restart local v6  # "token":J
    .restart local p0  # "this":Lcom/android/server/connectivity/Vpn;
    .restart local p1  # "config":Lcom/android/internal/net/VpnConfig;
    :cond_1df
    move-object/from16 v17, v3

    move-object v15, v4

    .end local v3  # "mgr":Landroid/os/UserManager;
    .end local v4  # "intent":Landroid/content/Intent;
    .restart local v15  # "intent":Landroid/content/Intent;
    .restart local v17  # "mgr":Landroid/os/UserManager;
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v6  # "token":J
    .end local v15  # "intent":Landroid/content/Intent;
    .end local v17  # "mgr":Landroid/os/UserManager;
    .end local p0  # "this":Lcom/android/server/connectivity/Vpn;
    .end local p1  # "config":Lcom/android/internal/net/VpnConfig;
    throw v3

    .line 1148
    .end local v8  # "info":Landroid/content/pm/ResolveInfo;
    .restart local v3  # "mgr":Landroid/os/UserManager;
    .restart local v4  # "intent":Landroid/content/Intent;
    .restart local v6  # "token":J
    .restart local p0  # "this":Lcom/android/server/connectivity/Vpn;
    .restart local p1  # "config":Lcom/android/internal/net/VpnConfig;
    :cond_1fb
    move-object/from16 v17, v3

    move-object v15, v4

    .end local v3  # "mgr":Landroid/os/UserManager;
    .end local v4  # "intent":Landroid/content/Intent;
    .restart local v15  # "intent":Landroid/content/Intent;
    .restart local v17  # "mgr":Landroid/os/UserManager;
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Restricted users cannot establish VPNs"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v6  # "token":J
    .end local v15  # "intent":Landroid/content/Intent;
    .end local v17  # "mgr":Landroid/os/UserManager;
    .end local p0  # "this":Lcom/android/server/connectivity/Vpn;
    .end local p1  # "config":Lcom/android/internal/net/VpnConfig;
    throw v3
    :try_end_206
    .catch Landroid/os/RemoteException; {:try_start_1c1 .. :try_end_206} :catch_206
    .catchall {:try_start_1c1 .. :try_end_206} :catchall_22a

    .line 1159
    .end local v0  # "user":Landroid/content/pm/UserInfo;
    .restart local v6  # "token":J
    .restart local v15  # "intent":Landroid/content/Intent;
    .restart local v17  # "mgr":Landroid/os/UserManager;
    .restart local p0  # "this":Lcom/android/server/connectivity/Vpn;
    .restart local p1  # "config":Lcom/android/internal/net/VpnConfig;
    :catch_206
    move-exception v0

    goto :goto_211

    .line 1162
    .end local v15  # "intent":Landroid/content/Intent;
    .end local v17  # "mgr":Landroid/os/UserManager;
    .restart local v3  # "mgr":Landroid/os/UserManager;
    .restart local v4  # "intent":Landroid/content/Intent;
    :catchall_208
    move-exception v0

    move-object/from16 v17, v3

    move-object v15, v4

    .end local v3  # "mgr":Landroid/os/UserManager;
    .end local v4  # "intent":Landroid/content/Intent;
    .restart local v15  # "intent":Landroid/content/Intent;
    .restart local v17  # "mgr":Landroid/os/UserManager;
    goto :goto_22b

    .line 1159
    .end local v15  # "intent":Landroid/content/Intent;
    .end local v17  # "mgr":Landroid/os/UserManager;
    .restart local v3  # "mgr":Landroid/os/UserManager;
    .restart local v4  # "intent":Landroid/content/Intent;
    :catch_20d
    move-exception v0

    move-object/from16 v17, v3

    move-object v15, v4

    .line 1160
    .end local v3  # "mgr":Landroid/os/UserManager;
    .end local v4  # "intent":Landroid/content/Intent;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v15  # "intent":Landroid/content/Intent;
    .restart local v17  # "mgr":Landroid/os/UserManager;
    :goto_211
    :try_start_211
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v6  # "token":J
    .end local v15  # "intent":Landroid/content/Intent;
    .end local v17  # "mgr":Landroid/os/UserManager;
    .end local p0  # "this":Lcom/android/server/connectivity/Vpn;
    .end local p1  # "config":Lcom/android/internal/net/VpnConfig;
    throw v3
    :try_end_22a
    .catchall {:try_start_211 .. :try_end_22a} :catchall_22a

    .line 1162
    .end local v0  # "e":Landroid/os/RemoteException;
    .restart local v6  # "token":J
    .restart local v15  # "intent":Landroid/content/Intent;
    .restart local v17  # "mgr":Landroid/os/UserManager;
    .restart local p0  # "this":Lcom/android/server/connectivity/Vpn;
    .restart local p1  # "config":Lcom/android/internal/net/VpnConfig;
    :catchall_22a
    move-exception v0

    :goto_22b
    :try_start_22b
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_22f
    .catchall {:try_start_22b .. :try_end_22f} :catchall_22f

    .line 1126
    .end local v6  # "token":J
    .end local v15  # "intent":Landroid/content/Intent;
    .end local v17  # "mgr":Landroid/os/UserManager;
    .end local p0  # "this":Lcom/android/server/connectivity/Vpn;
    .end local p1  # "config":Lcom/android/internal/net/VpnConfig;
    :catchall_22f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAlwaysOn()Z
    .registers 2

    monitor-enter p0

    .line 472
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0  # "this":Lcom/android/server/connectivity/Vpn;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAlwaysOnPackage()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 619
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 620
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_e

    goto :goto_c

    .end local p0  # "this":Lcom/android/server/connectivity/Vpn;
    :cond_b
    const/4 v0, 0x0

    :goto_c
    monitor-exit p0

    return-object v0

    .line 618
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;
    .registers 2

    .line 2142
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_7

    .line 2143
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0

    .line 2145
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    .registers 2

    monitor-enter p0

    .line 2093
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 2095
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mWaitingForReconnectInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v0, :cond_c

    .line 2096
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mWaitingForReconnectInfo:Lcom/android/internal/net/LegacyVpnInfo;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_12

    monitor-exit p0

    return-object v0

    .line 2099
    .end local p0  # "this":Lcom/android/server/connectivity/Vpn;
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfoPrivileged()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    .line 2092
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLegacyVpnInfoForSmartVpn()Lcom/android/internal/net/LegacyVpnInfo;
    .registers 2

    monitor-enter p0

    .line 2108
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mWaitingForReconnectInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v0, :cond_9

    .line 2109
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mWaitingForReconnectInfo:Lcom/android/internal/net/LegacyVpnInfo;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_f

    monitor-exit p0

    return-object v0

    .line 2112
    .end local p0  # "this":Lcom/android/server/connectivity/Vpn;
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfoPrivileged()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 2107
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLegacyVpnInfoPrivileged()Lcom/android/internal/net/LegacyVpnInfo;
    .registers 3

    monitor-enter p0

    .line 2121
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_29

    if-nez v0, :cond_8

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 2123
    :cond_8
    :try_start_8
    new-instance v0, Lcom/android/internal/net/LegacyVpnInfo;

    invoke-direct {v0}, Lcom/android/internal/net/LegacyVpnInfo;-><init>()V

    .line 2124
    .local v0, "info":Lcom/android/internal/net/LegacyVpnInfo;
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    .line 2127
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {v1}, Lcom/android/internal/net/LegacyVpnInfo;->stateFromNetworkInfo(Landroid/net/NetworkInfo;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 2135
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2136
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_29

    .line 2138
    .end local p0  # "this":Lcom/android/server/connectivity/Vpn;
    :cond_27
    monitor-exit p0

    return-object v0

    .line 2120
    .end local v0  # "info":Lcom/android/internal/net/LegacyVpnInfo;
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLockdown()Z
    .registers 2

    monitor-enter p0

    .line 465
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0  # "this":Lcom/android/server/connectivity/Vpn;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLockdownWhitelist()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 627
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdownWhitelist:Ljava/util/List;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_b

    goto :goto_9

    .end local p0  # "this":Lcom/android/server/connectivity/Vpn;
    :cond_8
    const/4 v0, 0x0

    :goto_9
    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNetId()I
    .registers 2

    .line 938
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_7

    iget v0, v0, Landroid/net/NetworkAgent;->netId:I

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .registers 2

    .line 934
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public declared-synchronized getUnderlyingNetworks()[Landroid/net/Network;
    .registers 2

    monitor-enter p0

    .line 1708
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_10

    if-nez v0, :cond_a

    .line 1709
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 1711
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    .line 1707
    .end local p0  # "this":Lcom/android/server/connectivity/Vpn;
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVpnConfig()Lcom/android/internal/net/VpnConfig;
    .registers 2

    .line 1577
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 1578
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0
.end method

.method public declared-synchronized getVpnInfo()Lcom/android/internal/net/VpnInfo;
    .registers 3

    monitor-enter p0

    .line 1719
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_19

    if-nez v0, :cond_a

    .line 1720
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 1723
    :cond_a
    :try_start_a
    new-instance v0, Lcom/android/internal/net/VpnInfo;

    invoke-direct {v0}, Lcom/android/internal/net/VpnInfo;-><init>()V

    .line 1724
    .local v0, "info":Lcom/android/internal/net/VpnInfo;
    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    iput v1, v0, Lcom/android/internal/net/VpnInfo;->ownerUid:I

    .line 1725
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnInfo;->vpnIface:Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_19

    .line 1726
    monitor-exit p0

    return-object v0

    .line 1718
    .end local v0  # "info":Lcom/android/internal/net/VpnInfo;
    .end local p0  # "this":Lcom/android/server/connectivity/Vpn;
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized interfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "iface"  # Ljava/lang/String;
    .param p2, "up"  # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 1584
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_3} :catch_c
    .catchall {:try_start_1 .. :try_end_3} :catchall_9

    :try_start_3
    invoke-interface {v0, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_6} :catch_7
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    .line 1587
    goto :goto_d

    .line 1585
    .end local p0  # "this":Lcom/android/server/connectivity/Vpn;
    :catch_7
    move-exception v0

    goto :goto_d

    .line 1583
    .end local p1  # "iface":Ljava/lang/String;
    .end local p2  # "up":Z
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1

    .line 1585
    .restart local p0  # "this":Lcom/android/server/connectivity/Vpn;
    .restart local p1  # "iface":Ljava/lang/String;
    .restart local p2  # "up":Z
    :catch_c
    move-exception v0

    .line 1588
    :goto_d
    monitor-exit p0

    return-void
.end method

.method public isAlwaysOnPackageSupported(Ljava/lang/String;)Z
    .registers 12
    .param p1, "packageName"  # Ljava/lang/String;

    .line 489
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceSettingsPermission()V

    .line 491
    const/4 v0, 0x0

    if-nez p1, :cond_7

    .line 492
    return v0

    .line 495
    :cond_7
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 496
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 498
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_e
    iget v3, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-virtual {v1, p1, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_14} :catch_16

    move-object v2, v3

    .line 501
    goto :goto_32

    .line 499
    :catch_16
    move-exception v3

    .line 500
    .local v3, "unused":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t find \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" when checking always-on support"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Vpn"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    .end local v3  # "unused":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_32
    if-eqz v2, :cond_79

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x18

    if-ge v3, v4, :cond_3b

    goto :goto_79

    .line 506
    :cond_3b
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.net.VpnService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 507
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    const/16 v4, 0x80

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 509
    invoke-virtual {v1, v3, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    .line 510
    .local v4, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_78

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_56

    goto :goto_78

    .line 514
    :cond_56
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_77

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 515
    .local v6, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 516
    .local v8, "metaData":Landroid/os/Bundle;
    if-eqz v8, :cond_76

    .line 517
    const-string v9, "android.net.VpnService.SUPPORTS_ALWAYS_ON"

    invoke-virtual {v8, v9, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_76

    .line 518
    return v0

    .line 520
    .end local v6  # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v8  # "metaData":Landroid/os/Bundle;
    :cond_76
    goto :goto_5a

    .line 522
    :cond_77
    return v7

    .line 511
    :cond_78
    :goto_78
    return v0

    .line 503
    .end local v3  # "intent":Landroid/content/Intent;
    .end local v4  # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_79
    :goto_79
    return v0
.end method

.method public declared-synchronized isBlockingUid(I)Z
    .registers 3
    .param p1, "uid"  # I

    monitor-enter p0

    .line 1746
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1747
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->appliesToUid(I)Z

    move-result v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_19

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    .line 1749
    .end local p0  # "this":Lcom/android/server/connectivity/Vpn;
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-static {v0, p1}, Landroid/net/UidRange;->containsUid(Ljava/util/Collection;I)Z

    move-result v0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_19

    monitor-exit p0

    return v0

    .line 1745
    .end local p1  # "uid":I
    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected isCallerEstablishedOwnerLocked()Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1255
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public onUserAdded(I)V
    .registers 7
    .param p1, "userHandle"  # I

    .line 1419
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1420
    .local v0, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_49

    iget v1, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    if-ne v1, v2, :cond_49

    .line 1421
    monitor-enter p0

    .line 1422
    :try_start_17
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v1
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_46

    .line 1423
    .local v1, "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    if-eqz v1, :cond_3f

    .line 1425
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    .line 1429
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2, v1}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    .line 1430
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/connectivity/Vpn;->updateCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 1432
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->hideNotification(I)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_36} :catch_37
    .catchall {:try_start_1f .. :try_end_36} :catchall_46

    .line 1436
    goto :goto_3f

    .line 1434
    :catch_37
    move-exception v2

    .line 1435
    .local v2, "e":Ljava/lang/Exception;
    :try_start_38
    const-string v3, "Vpn"

    const-string v4, "Failed to add restricted user to owner"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1438
    .end local v2  # "e":Ljava/lang/Exception;
    :cond_3f
    :goto_3f
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    .line 1439
    .end local v1  # "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    monitor-exit p0

    goto :goto_49

    :catchall_46
    move-exception v1

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_38 .. :try_end_48} :catchall_46

    throw v1

    .line 1441
    :cond_49
    :goto_49
    return-void
.end method

.method public onUserRemoved(I)V
    .registers 7
    .param p1, "userHandle"  # I

    .line 1450
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1451
    .local v0, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_46

    iget v1, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    if-ne v1, v2, :cond_46

    .line 1452
    monitor-enter p0

    .line 1453
    :try_start_17
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v1
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_43

    .line 1454
    .local v1, "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    if-eqz v1, :cond_3c

    .line 1456
    nop

    .line 1457
    :try_start_20
    invoke-static {p1, v1}, Lcom/android/server/connectivity/Vpn;->uidRangesForUser(ILjava/util/Set;)Ljava/util/List;

    move-result-object v2

    .line 1458
    .local v2, "removedRanges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    invoke-interface {v1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1461
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3, v1}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    .line 1462
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/Vpn;->updateCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 1464
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->hideNotification(I)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_33} :catch_34
    .catchall {:try_start_20 .. :try_end_33} :catchall_43

    .line 1468
    .end local v2  # "removedRanges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    goto :goto_3c

    .line 1466
    :catch_34
    move-exception v2

    .line 1467
    .local v2, "e":Ljava/lang/Exception;
    :try_start_35
    const-string v3, "Vpn"

    const-string v4, "Failed to remove restricted user to owner"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1470
    .end local v2  # "e":Ljava/lang/Exception;
    :cond_3c
    :goto_3c
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    .line 1471
    .end local v1  # "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    monitor-exit p0

    goto :goto_46

    :catchall_43
    move-exception v1

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_35 .. :try_end_45} :catchall_43

    throw v1

    .line 1473
    :cond_46
    :goto_46
    return-void
.end method

.method public declared-synchronized onUserStopped()V
    .registers 2

    monitor-enter p0

    .line 1480
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Vpn;->setLockdown(Z)V

    .line 1481
    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 1484
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_c

    .line 1485
    monitor-exit p0

    return-void

    .line 1479
    .end local p0  # "this":Lcom/android/server/connectivity/Vpn;
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prepare(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "oldPackage"  # Ljava/lang/String;
    .param p2, "newPackage"  # Ljava/lang/String;

    monitor-enter p0

    .line 754
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_43

    .line 756
    :try_start_5
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v2, :cond_11

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v2
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_41

    if-nez v2, :cond_11

    .line 757
    monitor-exit p0

    return v1

    .line 761
    .end local p0  # "this":Lcom/android/server/connectivity/Vpn;
    :cond_11
    :try_start_11
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 764
    const-string v2, "[Legacy VPN]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isVpnUserPreConsented(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 765
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_11 .. :try_end_28} :catchall_41

    .line 766
    monitor-exit p0

    return v0

    .line 768
    :cond_2a
    monitor-exit p0

    return v1

    .line 769
    :cond_2c
    :try_start_2c
    const-string v2, "[Legacy VPN]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 770
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isVpnUserPreConsented(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 772
    const-string v0, "[Legacy VPN]"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_2c .. :try_end_3f} :catchall_41

    .line 773
    monitor-exit p0

    return v1

    .line 753
    .end local p1  # "oldPackage":Ljava/lang/String;
    .end local p2  # "newPackage":Ljava/lang/String;
    :catchall_41
    move-exception p1

    goto :goto_68

    .line 778
    .restart local p1  # "oldPackage":Ljava/lang/String;
    .restart local p2  # "newPackage":Ljava/lang/String;
    :cond_43
    if-eqz p2, :cond_6a

    :try_start_45
    const-string v2, "[Legacy VPN]"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    .line 779
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    goto :goto_6a

    .line 784
    :cond_54
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 787
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v2, :cond_63

    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v2
    :try_end_5f
    .catchall {:try_start_45 .. :try_end_5f} :catchall_41

    if-nez v2, :cond_63

    .line 788
    monitor-exit p0

    return v1

    .line 791
    :cond_63
    :try_start_63
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_41

    .line 792
    monitor-exit p0

    return v0

    .line 753
    .end local p1  # "oldPackage":Ljava/lang/String;
    .end local p2  # "newPackage":Ljava/lang/String;
    :goto_68
    monitor-exit p0

    throw p1

    .line 780
    .restart local p0  # "this":Lcom/android/server/connectivity/Vpn;
    .restart local p1  # "oldPackage":Ljava/lang/String;
    .restart local p2  # "newPackage":Ljava/lang/String;
    :cond_6a
    :goto_6a
    monitor-exit p0

    return v0
.end method

.method public declared-synchronized removeAddress(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "address"  # Ljava/lang/String;
    .param p2, "prefixLength"  # I

    monitor-enter p0

    .line 1674
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1b

    if-nez v0, :cond_a

    .line 1675
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1677
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/connectivity/Vpn;->jniDelAddress(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 1678
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_1b

    .line 1679
    monitor-exit p0

    return v0

    .line 1673
    .end local v0  # "success":Z
    .end local p0  # "this":Lcom/android/server/connectivity/Vpn;
    .end local p1  # "address":Ljava/lang/String;
    .end local p2  # "prefixLength":I
    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAlwaysOnPackage(Ljava/lang/String;ZLjava/util/List;)Z
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "lockdown"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .local p3, "lockdownWhitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 544
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 546
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackageInternal(Ljava/lang/String;ZLjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 547
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->saveAlwaysOnPackage()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_13

    .line 548
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 550
    .end local p0  # "this":Lcom/android/server/connectivity/Vpn;
    :cond_10
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 543
    .end local p1  # "packageName":Ljava/lang/String;
    .end local p2  # "lockdown":Z
    .end local p3  # "lockdownWhitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setEnableTeardown(Z)V
    .registers 2
    .param p1, "enableTeardown"  # Z

    .line 324
    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    .line 325
    return-void
.end method

.method public declared-synchronized setLockdown(Z)V
    .registers 3
    .param p1, "lockdown"  # Z

    monitor-enter p0

    .line 447
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 449
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    .line 450
    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 454
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v0, :cond_10

    .line 455
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->saveAlwaysOnPackage()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 457
    .end local p0  # "this":Lcom/android/server/connectivity/Vpn;
    :cond_10
    monitor-exit p0

    return-void

    .line 446
    .end local p1  # "lockdown":Z
    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPackageAuthorization(Ljava/lang/String;Z)Z
    .registers 11
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "authorized"  # Z

    .line 872
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 874
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v0

    .line 875
    .local v0, "uid":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5f

    const-string v2, "[Legacy VPN]"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_5f

    .line 880
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 882
    .local v2, "token":J
    :try_start_1a
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v5, "appops"

    .line 883
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    .line 884
    .local v4, "appOps":Landroid/app/AppOpsManager;
    const/16 v5, 0x2f

    .line 885
    const/4 v6, 0x1

    if-eqz p2, :cond_2b

    move v7, v1

    goto :goto_2c

    :cond_2b
    move v7, v6

    .line 884
    :goto_2c
    invoke-virtual {v4, v5, v0, p1, v7}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2f} :catch_36
    .catchall {:try_start_1a .. :try_end_2f} :catchall_34

    .line 886
    nop

    .line 890
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 886
    return v6

    .line 890
    .end local v4  # "appOps":Landroid/app/AppOpsManager;
    :catchall_34
    move-exception v1

    goto :goto_5b

    .line 887
    :catch_36
    move-exception v4

    .line 888
    .local v4, "e":Ljava/lang/Exception;
    :try_start_37
    const-string v5, "Vpn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to set app ops for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_55
    .catchall {:try_start_37 .. :try_end_55} :catchall_34

    .line 890
    nop

    .end local v4  # "e":Ljava/lang/Exception;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 891
    nop

    .line 892
    return v1

    .line 890
    :goto_5b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 877
    .end local v2  # "token":J
    :cond_5f
    :goto_5f
    return v1
.end method

.method public declared-synchronized setUnderlyingNetworks([Landroid/net/Network;)Z
    .registers 7
    .param p1, "networks"  # [Landroid/net/Network;

    monitor-enter p0

    .line 1689
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_3d

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1690
    monitor-exit p0

    return v1

    .line 1692
    :cond_a
    const/4 v0, 0x0

    if-nez p1, :cond_12

    .line 1693
    :try_start_d
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    goto :goto_3a

    .line 1695
    .end local p0  # "this":Lcom/android/server/connectivity/Vpn;
    :cond_12
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    array-length v3, p1

    new-array v3, v3, [Landroid/net/Network;

    iput-object v3, v2, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 1696
    nop

    .local v1, "i":I
    :goto_1a
    array-length v2, p1

    if-ge v1, v2, :cond_3a

    .line 1697
    aget-object v2, p1, v1

    if-nez v2, :cond_28

    .line 1698
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    aput-object v0, v2, v1

    goto :goto_37

    .line 1700
    :cond_28
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    new-instance v3, Landroid/net/Network;

    aget-object v4, p1, v1

    iget v4, v4, Landroid/net/Network;->netId:I

    invoke-direct {v3, v4}, Landroid/net/Network;-><init>(I)V

    aput-object v3, v2, v1
    :try_end_37
    .catchall {:try_start_d .. :try_end_37} :catchall_3d

    .line 1696
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 1704
    .end local v1  # "i":I
    :cond_3a
    :goto_3a
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 1688
    .end local p1  # "networks":[Landroid/net/Network;
    :catchall_3d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startAlwaysOnVpn()Z
    .registers 14

    .line 676
    monitor-enter p0

    .line 677
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v0

    .line 679
    .local v0, "alwaysOnPackage":Ljava/lang/String;
    const/4 v9, 0x1

    if-nez v0, :cond_a

    .line 680
    monitor-exit p0

    return v9

    .line 683
    :cond_a
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Vpn;->isAlwaysOnPackageSupported(Ljava/lang/String;)Z

    move-result v1

    const/4 v10, 0x0

    if-nez v1, :cond_17

    .line 684
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v10, v1}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;ZLjava/util/List;)Z

    .line 685
    monitor-exit p0

    return v10

    .line 690
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 691
    monitor-exit p0

    return v9

    .line 693
    :cond_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_85

    .line 697
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 699
    .local v11, "oldId":J
    :try_start_28
    const-class v1, Lcom/android/server/DeviceIdleController$LocalService;

    .line 700
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DeviceIdleController$LocalService;

    .line 701
    .local v1, "idleController":Lcom/android/server/DeviceIdleController$LocalService;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const-wide/32 v4, 0xea60

    iget v6, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    const/4 v7, 0x0

    const-string/jumbo v8, "vpn"

    move-object v3, v0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/DeviceIdleController$LocalService;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V

    .line 705
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.VpnService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 706
    .local v2, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4b
    .catchall {:try_start_28 .. :try_end_4b} :catchall_80

    .line 708
    :try_start_4b
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v3
    :try_end_57
    .catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_57} :catch_5f
    .catchall {:try_start_4b .. :try_end_57} :catchall_80

    if-eqz v3, :cond_5a

    goto :goto_5b

    :cond_5a
    move v9, v10

    .line 714
    :goto_5b
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 708
    return v9

    .line 709
    :catch_5f
    move-exception v3

    .line 710
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_60
    const-string v4, "Vpn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VpnService "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " failed to start"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7b
    .catchall {:try_start_60 .. :try_end_7b} :catchall_80

    .line 711
    nop

    .line 714
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 711
    return v10

    .line 714
    .end local v1  # "idleController":Lcom/android/server/DeviceIdleController$LocalService;
    .end local v2  # "serviceIntent":Landroid/content/Intent;
    .end local v3  # "e":Ljava/lang/RuntimeException;
    :catchall_80
    move-exception v1

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 693
    .end local v0  # "alwaysOnPackage":Ljava/lang/String;
    .end local v11  # "oldId":J
    :catchall_85
    move-exception v0

    :try_start_86
    monitor-exit p0
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw v0
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    .registers 7
    .param p1, "profile"  # Lcom/android/internal/net/VpnProfile;
    .param p2, "keyStore"  # Landroid/security/KeyStore;
    .param p3, "egress"  # Landroid/net/LinkProperties;

    .line 1873
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 1874
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1876
    .local v0, "token":J
    :try_start_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_f

    .line 1878
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1879
    nop

    .line 1880
    return-void

    .line 1878
    :catchall_f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    .registers 30
    .param p1, "profile"  # Lcom/android/internal/net/VpnProfile;
    .param p2, "keyStore"  # Landroid/security/KeyStore;
    .param p3, "egress"  # Landroid/net/LinkProperties;

    .line 1895
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/net/VpnProfile;->needKeyStore()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual/range {p2 .. p2}, Landroid/security/KeyStore;->isUnlocked()Z

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_1b

    .line 1896
    :cond_13
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "KeyStore isn\'t unlocked"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1900
    :cond_1b
    :goto_1b
    iget-object v3, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    .line 1901
    .local v3, "mgr":Landroid/os/UserManager;
    iget v4, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 1902
    .local v4, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v5

    if-nez v5, :cond_348

    new-instance v5, Landroid/os/UserHandle;

    iget v6, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v6, "no_config_vpn"

    invoke-virtual {v3, v6, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    if-nez v5, :cond_348

    .line 1907
    invoke-static/range {p3 .. p3}, Lcom/android/server/connectivity/Vpn;->findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;

    move-result-object v5

    .line 1908
    .local v5, "ipv4DefaultRoute":Landroid/net/RouteInfo;
    invoke-virtual {v5}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    .line 1909
    .local v6, "gateway":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v7

    .line 1912
    .local v7, "iface":Ljava/lang/String;
    const-string v8, ""

    .line 1913
    .local v8, "privateKey":Ljava/lang/String;
    const-string v9, ""

    .line 1914
    .local v9, "userCert":Ljava/lang/String;
    const-string v10, ""

    .line 1915
    .local v10, "caCert":Ljava/lang/String;
    const-string v11, ""

    .line 1916
    .local v11, "serverCert":Ljava/lang/String;
    iget-object v12, v1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    const/4 v13, 0x0

    if-nez v12, :cond_94

    .line 1917
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "USRPKEY_"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1918
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "USRCERT_"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v12

    .line 1919
    .local v12, "value":[B
    if-nez v12, :cond_8c

    move-object v14, v13

    goto :goto_93

    :cond_8c
    new-instance v14, Ljava/lang/String;

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v14, v12, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_93
    move-object v9, v14

    .line 1921
    .end local v12  # "value":[B
    :cond_94
    iget-object v12, v1, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_bf

    .line 1922
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CACERT_"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v12

    .line 1923
    .restart local v12  # "value":[B
    if-nez v12, :cond_b7

    move-object v14, v13

    goto :goto_be

    :cond_b7
    new-instance v14, Ljava/lang/String;

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v14, v12, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_be
    move-object v10, v14

    .line 1925
    .end local v12  # "value":[B
    :cond_bf
    iget-object v12, v1, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_e9

    .line 1926
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "USRCERT_"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v12

    .line 1927
    .restart local v12  # "value":[B
    if-nez v12, :cond_e1

    goto :goto_e8

    :cond_e1
    new-instance v13, Ljava/lang/String;

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v13, v12, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_e8
    move-object v11, v13

    .line 1929
    .end local v12  # "value":[B
    :cond_e9
    if-eqz v8, :cond_339

    if-eqz v9, :cond_339

    if-eqz v10, :cond_339

    if-eqz v11, :cond_339

    .line 1939
    const/4 v12, 0x0

    .line 1940
    .local v12, "racoon":[Ljava/lang/String;
    iget v13, v1, Lcom/android/internal/net/VpnProfile;->type:I

    const-string v15, "1701"

    const/16 v16, 0x7

    const/4 v14, 0x2

    const/4 v2, 0x1

    if-eq v13, v2, :cond_1be

    if-eq v13, v14, :cond_19c

    const-string v23, ""

    const/4 v14, 0x3

    if-eq v13, v14, :cond_16a

    const/4 v14, 0x4

    if-eq v13, v14, :cond_137

    const/4 v14, 0x5

    if-eq v13, v14, :cond_10b

    goto/16 :goto_1e0

    .line 1966
    :cond_10b
    const/16 v13, 0x9

    new-array v14, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v7, v14, v13

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v13, v14, v2

    const-string v13, "hybridrsa"

    const/16 v24, 0x2

    aput-object v13, v14, v24

    const/4 v13, 0x3

    aput-object v10, v14, v13

    const/4 v13, 0x4

    aput-object v11, v14, v13

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/16 v20, 0x5

    aput-object v13, v14, v20

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/16 v19, 0x6

    aput-object v13, v14, v19

    aput-object v23, v14, v16

    const/16 v13, 0x8

    aput-object v6, v14, v13

    move-object v12, v14

    goto/16 :goto_1e0

    .line 1960
    :cond_137
    const/16 v13, 0xb

    new-array v14, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v7, v14, v13

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v13, v14, v2

    const-string/jumbo v13, "xauthrsa"

    const/16 v24, 0x2

    aput-object v13, v14, v24

    const/4 v13, 0x3

    aput-object v8, v14, v13

    const/4 v13, 0x4

    aput-object v9, v14, v13

    const/4 v13, 0x5

    aput-object v10, v14, v13

    const/4 v13, 0x6

    aput-object v11, v14, v13

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v13, v14, v16

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/16 v18, 0x8

    aput-object v13, v14, v18

    const/16 v13, 0x9

    aput-object v23, v14, v13

    const/16 v17, 0xa

    aput-object v6, v14, v17

    move-object v12, v14

    .line 1964
    goto/16 :goto_1e0

    .line 1954
    :cond_16a
    const/16 v13, 0x9

    new-array v14, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v7, v14, v13

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v13, v14, v2

    const-string/jumbo v13, "xauthpsk"

    const/16 v24, 0x2

    aput-object v13, v14, v24

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    const/16 v22, 0x3

    aput-object v13, v14, v22

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    const/16 v21, 0x4

    aput-object v13, v14, v21

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/16 v20, 0x5

    aput-object v13, v14, v20

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/16 v19, 0x6

    aput-object v13, v14, v19

    aput-object v23, v14, v16

    const/16 v13, 0x8

    aput-object v6, v14, v13

    move-object v12, v14

    .line 1958
    goto :goto_1e0

    .line 1948
    :cond_19c
    const/16 v13, 0x8

    new-array v14, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v7, v14, v13

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v13, v14, v2

    const-string/jumbo v13, "udprsa"

    const/16 v23, 0x2

    aput-object v13, v14, v23

    const/4 v13, 0x3

    aput-object v8, v14, v13

    const/4 v13, 0x4

    aput-object v9, v14, v13

    const/4 v13, 0x5

    aput-object v10, v14, v13

    const/4 v13, 0x6

    aput-object v11, v14, v13

    aput-object v15, v14, v16

    move-object v12, v14

    .line 1952
    goto :goto_1e0

    .line 1942
    :cond_1be
    const/4 v13, 0x6

    new-array v14, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v7, v14, v13

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v13, v14, v2

    const-string/jumbo v13, "udppsk"

    const/16 v23, 0x2

    aput-object v13, v14, v23

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    const/16 v22, 0x3

    aput-object v13, v14, v22

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    const/16 v21, 0x4

    aput-object v13, v14, v21

    const/4 v13, 0x5

    aput-object v15, v14, v13

    move-object v12, v14

    .line 1946
    nop

    .line 1974
    :goto_1e0
    const/4 v13, 0x0

    .line 1975
    .local v13, "mtpd":[Ljava/lang/String;
    iget v14, v1, Lcom/android/internal/net/VpnProfile;->type:I

    const-string v23, "1400"

    if-eqz v14, :cond_269

    if-eq v14, v2, :cond_1ee

    const/4 v2, 0x2

    if-eq v14, v2, :cond_1ee

    goto/16 :goto_2eb

    .line 1987
    :cond_1ee
    const/16 v2, 0x14

    new-array v2, v2, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v7, v2, v14

    const-string/jumbo v14, "l2tp"

    const/16 v25, 0x1

    aput-object v14, v2, v25

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v24, 0x2

    aput-object v14, v2, v24

    const/4 v14, 0x3

    aput-object v15, v2, v14

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    const/4 v15, 0x4

    aput-object v14, v2, v15

    const-string/jumbo v14, "name"

    const/4 v15, 0x5

    aput-object v14, v2, v15

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/4 v15, 0x6

    aput-object v14, v2, v15

    const-string/jumbo v14, "password"

    aput-object v14, v2, v16

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/16 v15, 0x8

    aput-object v14, v2, v15

    const-string/jumbo v14, "linkname"

    const/16 v15, 0x9

    aput-object v14, v2, v15

    const/16 v14, 0xa

    const-string/jumbo v15, "vpn"

    aput-object v15, v2, v14

    const-string/jumbo v14, "refuse-eap"

    const/16 v15, 0xb

    aput-object v14, v2, v15

    const/16 v14, 0xc

    const-string/jumbo v15, "nodefaultroute"

    aput-object v15, v2, v14

    const/16 v14, 0xd

    const-string/jumbo v15, "usepeerdns"

    aput-object v15, v2, v14

    const/16 v14, 0xe

    const-string/jumbo v15, "idle"

    aput-object v15, v2, v14

    const/16 v14, 0xf

    const-string v15, "1800"

    aput-object v15, v2, v14

    const/16 v14, 0x10

    const-string/jumbo v15, "mtu"

    aput-object v15, v2, v14

    const/16 v14, 0x11

    aput-object v23, v2, v14

    const/16 v14, 0x12

    const-string/jumbo v15, "mru"

    aput-object v15, v2, v14

    const/16 v14, 0x13

    aput-object v23, v2, v14

    move-object v13, v2

    goto/16 :goto_2eb

    .line 1977
    :cond_269
    const/16 v2, 0x14

    new-array v2, v2, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v7, v2, v14

    const-string/jumbo v14, "pptp"

    const/4 v15, 0x1

    aput-object v14, v2, v15

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v15, 0x2

    aput-object v14, v2, v15

    const-string v14, "1723"

    const/4 v15, 0x3

    aput-object v14, v2, v15

    const-string/jumbo v14, "name"

    const/4 v15, 0x4

    aput-object v14, v2, v15

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/4 v15, 0x5

    aput-object v14, v2, v15

    const-string/jumbo v14, "password"

    const/4 v15, 0x6

    aput-object v14, v2, v15

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v14, v2, v16

    const-string/jumbo v14, "linkname"

    const/16 v15, 0x8

    aput-object v14, v2, v15

    const-string/jumbo v14, "vpn"

    const/16 v15, 0x9

    aput-object v14, v2, v15

    const/16 v14, 0xa

    const-string/jumbo v15, "refuse-eap"

    aput-object v15, v2, v14

    const-string/jumbo v14, "nodefaultroute"

    const/16 v15, 0xb

    aput-object v14, v2, v15

    const/16 v14, 0xc

    const-string/jumbo v15, "usepeerdns"

    aput-object v15, v2, v14

    const/16 v14, 0xd

    const-string/jumbo v15, "idle"

    aput-object v15, v2, v14

    const/16 v14, 0xe

    const-string v15, "1800"

    aput-object v15, v2, v14

    const/16 v14, 0xf

    const-string/jumbo v15, "mtu"

    aput-object v15, v2, v14

    const/16 v14, 0x10

    aput-object v23, v2, v14

    const/16 v14, 0x11

    const-string/jumbo v15, "mru"

    aput-object v15, v2, v14

    const/16 v14, 0x12

    aput-object v23, v2, v14

    const/16 v14, 0x13

    .line 1982
    iget-boolean v15, v1, Lcom/android/internal/net/VpnProfile;->mppe:Z

    if-eqz v15, :cond_2e4

    const-string v15, "+mppe"

    goto :goto_2e7

    :cond_2e4
    const-string/jumbo v15, "nomppe"

    :goto_2e7
    aput-object v15, v2, v14

    move-object v13, v2

    .line 1984
    nop

    .line 1996
    :goto_2eb
    new-instance v2, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v2}, Lcom/android/internal/net/VpnConfig;-><init>()V

    .line 1997
    .local v2, "config":Lcom/android/internal/net/VpnConfig;
    const/4 v14, 0x1

    iput-boolean v14, v2, Lcom/android/internal/net/VpnConfig;->legacy:Z

    .line 1998
    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iput-object v14, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 1999
    iput-object v7, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 2000
    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iput-object v14, v2, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 2001
    const/4 v14, 0x0

    iput-boolean v14, v2, Lcom/android/internal/net/VpnConfig;->isMetered:Z

    .line 2002
    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    iput-object v14, v2, Lcom/android/internal/net/VpnConfig;->proxyInfo:Landroid/net/ProxyInfo;

    .line 2004
    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v2, v14}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    .line 2005
    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_31f

    .line 2006
    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string v15, " +"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    iput-object v14, v2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 2008
    :cond_31f
    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_335

    .line 2009
    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    const-string v15, " +"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    iput-object v14, v2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 2011
    :cond_335
    invoke-direct {v0, v2, v12, v13, v1}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/net/VpnProfile;)V

    .line 2012
    return-void

    .line 1934
    .end local v2  # "config":Lcom/android/internal/net/VpnConfig;
    .end local v12  # "racoon":[Ljava/lang/String;
    .end local v13  # "mtpd":[Ljava/lang/String;
    :cond_339
    new-instance v2, Ljava/lang/IllegalStateException;

    iget-object v12, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v13, 0xa1001b8

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1904
    .end local v5  # "ipv4DefaultRoute":Landroid/net/RouteInfo;
    .end local v6  # "gateway":Ljava/lang/String;
    .end local v7  # "iface":Ljava/lang/String;
    .end local v8  # "privateKey":Ljava/lang/String;
    .end local v9  # "userCert":Ljava/lang/String;
    .end local v10  # "caCert":Ljava/lang/String;
    .end local v11  # "serverCert":Ljava/lang/String;
    :cond_348
    new-instance v2, Ljava/lang/SecurityException;

    const-string v5, "Restricted users cannot establish VPNs"

    invoke-direct {v2, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public declared-synchronized stopLegacyVpnPrivileged()V
    .registers 3

    monitor-enter p0

    .line 2077
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_17

    .line 2078
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 2079
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 2081
    const-string v0, "LegacyVpnRunner"

    monitor-enter v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_19

    .line 2084
    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_12

    goto :goto_17

    :catchall_12
    move-exception v1

    :goto_13
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_15

    :try_start_14
    throw v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_19

    .end local p0  # "this":Lcom/android/server/connectivity/Vpn;
    :catchall_15
    move-exception v1

    goto :goto_13

    .line 2086
    :cond_17
    :goto_17
    monitor-exit p0

    return-void

    .line 2076
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    .registers 6
    .param p1, "defaultNetwork"  # Landroid/net/Network;

    monitor-enter p0

    .line 361
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3a

    if-nez v0, :cond_8

    .line 363
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 366
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 367
    .local v0, "underlyingNetworks":[Landroid/net/Network;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_17

    if-eqz p1, :cond_17

    .line 369
    new-array v3, v2, [Landroid/net/Network;

    aput-object p1, v3, v1

    move-object v0, v3

    .line 372
    .end local p0  # "this":Lcom/android/server/connectivity/Vpn;
    :cond_17
    iget-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageTargetingAtLeastQ:Z

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v3, v3, Lcom/android/internal/net/VpnConfig;->isMetered:Z

    if-eqz v3, :cond_22

    move v1, v2

    .line 374
    .local v1, "isAlwaysMetered":Z
    :cond_22
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-class v3, Landroid/net/ConnectivityManager;

    .line 375
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 374
    invoke-static {v2, v0, v3, v1}, Lcom/android/server/connectivity/Vpn;->applyUnderlyingCapabilities(Landroid/net/ConnectivityManager;[Landroid/net/Network;Landroid/net/NetworkCapabilities;Z)V

    .line 380
    new-instance v2, Landroid/net/NetworkCapabilities;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v2, v3}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V
    :try_end_38
    .catchall {:try_start_8 .. :try_end_38} :catchall_3a

    monitor-exit p0

    return-object v2

    .line 360
    .end local v0  # "underlyingNetworks":[Landroid/net/Network;
    .end local v1  # "isAlwaysMetered":Z
    .end local p1  # "defaultNetwork":Landroid/net/Network;
    :catchall_3a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .registers 5
    .param p1, "detailedState"  # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "reason"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setting state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vpn"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_2e

    .line 335
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 337
    :cond_2e
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->updateAlwaysOnNotification(Landroid/net/NetworkInfo$DetailedState;)V

    .line 340
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {v0}, Lcom/android/internal/net/LegacyVpnInfo;->stateFromNetworkInfo(Landroid/net/NetworkInfo;)I

    move-result v0

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOldSendVpnState:I

    if-eq v0, v1, :cond_42

    .line 341
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mReconnectHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 345
    :cond_42
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    const-string v1, "[Legacy VPN]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 347
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {v0}, Lcom/android/internal/net/LegacyVpnInfo;->stateFromNetworkInfo(Landroid/net/NetworkInfo;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->sendVpnStateChangeBroadcast(I)V

    .line 349
    :cond_55
    return-void
.end method
