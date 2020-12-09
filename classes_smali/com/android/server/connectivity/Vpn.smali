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
.field private static final LOGD:Z = true

.field private static final MAX_ROUTES_TO_EVALUATE:I = 0x96

.field private static final MOST_IPV4_ADDRESSES_COUNT:J

.field private static final MOST_IPV6_ADDRESSES_COUNT:Ljava/math/BigInteger;

.field private static final NETWORKTYPE:Ljava/lang/String; = "VPN"

.field private static final TAG:Ljava/lang/String; = "Vpn"

.field private static final VPN_LAUNCH_IDLE_WHITELIST_DURATION_MS:J = 0xea60L


# instance fields
.field private mAlwaysOn:Z

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

.field private mConnection:Lcom/android/server/connectivity/Vpn$Connection;

.field private final mContext:Landroid/content/Context;

.field private volatile mEnableTeardown:Z

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

.field private mOwnerUID:I

.field private mPackage:Ljava/lang/String;

.field private mStatusIntent:Landroid/app/PendingIntent;

.field private final mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

.field private final mUserHandle:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 148
    const-wide v0, 0xd9999999L

    sput-wide v0, Lcom/android/server/connectivity/Vpn;->MOST_IPV4_ADDRESSES_COUNT:J

    .line 149
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 150
    nop

    .line 151
    const-wide/16 v1, 0x55

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 152
    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/Vpn;->MOST_IPV6_ADDRESSES_COUNT:Ljava/math/BigInteger;

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;I)V
    .registers 11

    .line 217
    new-instance v5, Lcom/android/server/connectivity/Vpn$SystemServices;

    invoke-direct {v5, p2}, Lcom/android/server/connectivity/Vpn$SystemServices;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/Vpn;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;ILcom/android/server/connectivity/Vpn$SystemServices;)V

    .line 218
    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;ILcom/android/server/connectivity/Vpn$SystemServices;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 196
    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 202
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLockdownWhitelist:Ljava/util/List;

    .line 209
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    .line 1443
    new-instance v1, Lcom/android/server/connectivity/Vpn$2;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/Vpn$2;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    .line 223
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 224
    iput-object p3, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    .line 225
    iput p4, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 226
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;

    .line 227
    iput-object p5, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    .line 229
    const-string p1, "[Legacy VPN]"

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 230
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    iget p2, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    .line 231
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->doesPackageTargetAtLeastQ(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageTargetingAtLeastQ:Z

    .line 234
    :try_start_3f
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {p3, p1}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_44} :catch_45

    .line 237
    goto :goto_4d

    .line 235
    :catch_45
    move-exception p1

    .line 236
    const-string p2, "Vpn"

    const-string p3, "Problem registering observer"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    :goto_4d
    new-instance p1, Landroid/net/NetworkInfo;

    const/16 p2, 0x11

    const-string p3, "VPN"

    const-string p4, ""

    invoke-direct {p1, p2, v0, p3, p4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 241
    new-instance p1, Landroid/net/NetworkCapabilities;

    invoke-direct {p1}, Landroid/net/NetworkCapabilities;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 242
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 243
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 p2, 0xf

    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 244
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->updateCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 246
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->loadAlwaysOnPackage()V

    .line 247
    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/Vpn;)Landroid/net/INetworkManagementEventObserver;
    .registers 1

    .line 128
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/Vpn;)V
    .registers 1

    .line 128
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->prepareStatusIntent()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/Vpn;)V
    .registers 1

    .line 128
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentConnect()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;
    .registers 1

    .line 128
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .registers 1

    .line 128
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .registers 1

    .line 128
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I
    .registers 2

    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$502(Lcom/android/server/connectivity/Vpn;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;
    .registers 1

    .line 128
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$Connection;)Lcom/android/server/connectivity/Vpn$Connection;
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .registers 1

    .line 128
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/Vpn;)V
    .registers 1

    .line 128
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/Vpn;)Z
    .registers 1

    .line 128
    iget-boolean p0, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    return p0
.end method

.method private agentConnect()V
    .registers 16

    .line 961
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v7

    .line 970
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 972
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    new-instance v9, Landroid/net/NetworkMisc;

    invoke-direct {v9}, Landroid/net/NetworkMisc;-><init>()V

    .line 975
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    const/4 v11, 0x1

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-nez v0, :cond_25

    move v0, v11

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    iput-boolean v0, v9, Landroid/net/NetworkMisc;->allowBypass:Z

    .line 977
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setEstablishingVpnAppUid(I)V

    .line 978
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/connectivity/Vpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    .line 980
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 982
    :try_start_48
    new-instance v14, Lcom/android/server/connectivity/Vpn$1;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v4, "VPN"

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v8, 0x65

    const/4 v10, -0x2

    move-object v0, v14

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/server/connectivity/Vpn$1;-><init>(Lcom/android/server/connectivity/Vpn;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;I)V

    iput-object v14, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;
    :try_end_5e
    .catchall {:try_start_48 .. :try_end_5e} :catchall_6f

    .line 992
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 993
    nop

    .line 994
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v11}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 995
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "agentConnect"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 996
    return-void

    .line 992
    :catchall_6f
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private agentDisconnect()V
    .registers 3

    .line 1017
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1018
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1019
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "agentDisconnect"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1020
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1022
    :cond_18
    return-void
.end method

.method private agentDisconnect(Landroid/net/NetworkAgent;)V
    .registers 5

    .line 1008
    if-eqz p1, :cond_16

    .line 1009
    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 1010
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1011
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    invoke-virtual {p1, v0}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 1014
    :cond_16
    return-void
.end method

.method public static applyUnderlyingCapabilities(Landroid/net/ConnectivityManager;[Landroid/net/Network;Landroid/net/NetworkCapabilities;Z)V
    .registers 20
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 309
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    const/4 v5, 0x4

    aput v5, v3, v4

    .line 310
    nop

    .line 311
    nop

    .line 314
    nop

    .line 315
    nop

    .line 316
    nop

    .line 318
    nop

    .line 319
    if-eqz v0, :cond_77

    .line 320
    array-length v8, v0

    move/from16 v12, p3

    move-object v9, v3

    move v3, v4

    move v10, v3

    move v11, v10

    move v13, v11

    move v14, v13

    move v15, v14

    :goto_1d
    if-ge v3, v8, :cond_72

    aget-object v4, v0, v3

    .line 322
    move-object/from16 v5, p0

    invoke-virtual {v5, v4}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v4

    .line 323
    if-nez v4, :cond_2b

    move v6, v2

    goto :goto_6d

    .line 324
    :cond_2b
    nop

    .line 325
    invoke-virtual {v4}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v13

    array-length v6, v13

    move-object v2, v9

    const/4 v9, 0x0

    :goto_33
    if-ge v9, v6, :cond_3e

    aget v7, v13, v9

    .line 326
    invoke-static {v2, v7}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v2

    .line 325
    add-int/lit8 v9, v9, 0x1

    goto :goto_33

    .line 331
    :cond_3e
    nop

    .line 332
    invoke-virtual {v4}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v6

    .line 331
    invoke-static {v10, v6}, Landroid/net/NetworkCapabilities;->minBandwidth(II)I

    move-result v10

    .line 333
    nop

    .line 334
    invoke-virtual {v4}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result v6

    .line 333
    invoke-static {v11, v6}, Landroid/net/NetworkCapabilities;->minBandwidth(II)I

    move-result v11

    .line 335
    const/16 v6, 0xb

    invoke-virtual {v4, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v7

    const/4 v6, 0x1

    xor-int/2addr v7, v6

    or-int/2addr v12, v7

    .line 336
    const/16 v7, 0x12

    invoke-virtual {v4, v7}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v9

    xor-int/lit8 v7, v9, 0x1

    or-int/2addr v14, v7

    .line 337
    const/16 v7, 0x14

    invoke-virtual {v4, v7}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    xor-int/2addr v4, v6

    or-int/2addr v4, v15

    move-object v9, v2

    move v15, v4

    move v13, v6

    .line 320
    :goto_6d
    add-int/lit8 v3, v3, 0x1

    move v2, v6

    const/4 v4, 0x0

    goto :goto_1d

    :cond_72
    move v6, v2

    move-object v3, v9

    move v2, v12

    move v4, v14

    goto :goto_7f

    .line 319
    :cond_77
    move v6, v2

    move/from16 v2, p3

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    .line 340
    :goto_7f
    if-nez v13, :cond_86

    .line 342
    nop

    .line 343
    nop

    .line 344
    move v2, v6

    const/4 v4, 0x0

    const/4 v15, 0x0

    .line 347
    :cond_86
    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->setTransportTypes([I)V

    .line 348
    invoke-virtual {v1, v10}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities;

    .line 349
    invoke-virtual {v1, v11}, Landroid/net/NetworkCapabilities;->setLinkUpstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities;

    .line 350
    if-nez v2, :cond_93

    move v0, v6

    goto :goto_94

    :cond_93
    const/4 v0, 0x0

    :goto_94
    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Landroid/net/NetworkCapabilities;->setCapability(IZ)Landroid/net/NetworkCapabilities;

    .line 351
    if-nez v4, :cond_9d

    move v0, v6

    goto :goto_9e

    :cond_9d
    const/4 v0, 0x0

    :goto_9e
    const/16 v2, 0x12

    invoke-virtual {v1, v2, v0}, Landroid/net/NetworkCapabilities;->setCapability(IZ)Landroid/net/NetworkCapabilities;

    .line 352
    if-nez v15, :cond_a6

    goto :goto_a7

    :cond_a6
    const/4 v6, 0x0

    :goto_a7
    const/16 v0, 0x14

    invoke-virtual {v1, v0, v6}, Landroid/net/NetworkCapabilities;->setCapability(IZ)Landroid/net/NetworkCapabilities;

    .line 353
    return-void
.end method

.method private canHaveRestrictedProfile(I)Z
    .registers 5

    .line 999
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1001
    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->canHaveRestrictedProfile(I)Z

    move-result p1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 1003
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1001
    return p1

    .line 1003
    :catchall_12
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private doesPackageTargetAtLeastQ(Ljava/lang/String;)Z
    .registers 6

    .line 825
    const-string v0, "[Legacy VPN]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 826
    return v1

    .line 828
    :cond_a
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 830
    const/4 v2, 0x0

    :try_start_11
    iget v3, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 831
    invoke-virtual {v0, p1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 832
    iget p1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_19} :catch_20

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_1e

    goto :goto_1f

    :cond_1e
    move v1, v2

    :goto_1f
    return v1

    .line 833
    :catch_20
    move-exception v0

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t find \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Vpn"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    return v2
.end method

.method private enforceControlPermission()V
    .registers 4

    .line 1475
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONTROL_VPN"

    const-string v2, "Unauthorized Caller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    return-void
.end method

.method private enforceControlPermissionOrInternalCaller()V
    .registers 4

    .line 1481
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONTROL_VPN"

    const-string v2, "Unauthorized Caller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    return-void
.end method

.method private enforceSettingsPermission()V
    .registers 4

    .line 1486
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    const-string v2, "Unauthorized Caller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    return-void
.end method

.method private static findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;
    .registers 3

    .line 1698
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 1700
    invoke-virtual {v0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    instance-of v1, v1, Ljava/net/Inet4Address;

    if-eqz v1, :cond_23

    .line 1701
    return-object v0

    .line 1703
    :cond_23
    goto :goto_8

    .line 1705
    :cond_24
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to find IPv4 default gateway"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getAppUid(Ljava/lang/String;I)I
    .registers 4

    .line 811
    const-string v0, "[Legacy VPN]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 812
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    return p1

    .line 814
    :cond_d
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 817
    :try_start_13
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p1
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_17} :catch_18

    .line 820
    goto :goto_1a

    .line 818
    :catch_18
    move-exception p1

    .line 819
    const/4 p1, -0x1

    .line 821
    :goto_1a
    return p1
.end method

.method private getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;
    .registers 6
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

    .line 1161
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 1162
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1163
    invoke-direct {p0, v1, p2}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v1

    .line 1164
    const/4 v2, -0x1

    if-eq v1, v2, :cond_23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 1165
    :cond_23
    goto :goto_9

    .line 1166
    :cond_24
    return-object v0
.end method

.method private isCurrentPreparedPackage(Ljava/lang/String;)Z
    .registers 3

    .line 718
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result p1

    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    if-ne p1, v0, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method private static isNullOrLegacyVpn(Ljava/lang/String;)Z
    .registers 2

    .line 530
    if-eqz p0, :cond_d

    const-string v0, "[Legacy VPN]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method private isRunningLocked()Z
    .registers 2

    .line 1149
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

    .line 802
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 803
    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 806
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1
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

    .line 574
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 576
    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v3, "always_on_vpn_app"

    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecureGetStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 578
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v4, "always_on_vpn_lockdown"

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecureGetIntForUser(Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1c

    const/4 v6, 0x1

    .line 580
    :cond_1c
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v4, "always_on_vpn_lockdown_whitelist"

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecureGetStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 582
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 583
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_3b

    :cond_31
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 584
    :goto_3b
    invoke-direct {p0, v2, v6, v3}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackageInternal(Ljava/lang/String;ZLjava/util/List;)Z
    :try_end_3e
    .catchall {:try_start_4 .. :try_end_3e} :catchall_43

    .line 586
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 587
    nop

    .line 588
    return-void

    .line 586
    :catchall_43
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private makeLinkProperties()Landroid/net/LinkProperties;
    .registers 8

    .line 848
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->allowIPv4:Z

    .line 849
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v1, v1, Lcom/android/internal/net/VpnConfig;->allowIPv6:Z

    .line 851
    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    .line 853
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 855
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    if-eqz v3, :cond_3e

    .line 856
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

    .line 857
    invoke-virtual {v2, v4}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 858
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet4Address;

    or-int/2addr v0, v5

    .line 859
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    instance-of v4, v4, Ljava/net/Inet6Address;

    or-int/2addr v1, v4

    .line 860
    goto :goto_20

    .line 863
    :cond_3e
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    if-eqz v3, :cond_6a

    .line 864
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

    .line 865
    invoke-virtual {v2, v4}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 866
    invoke-virtual {v4}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    .line 867
    instance-of v5, v4, Ljava/net/Inet4Address;

    or-int/2addr v0, v5

    .line 868
    instance-of v4, v4, Ljava/net/Inet6Address;

    or-int/2addr v1, v4

    .line 869
    goto :goto_4c

    .line 872
    :cond_6a
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v3, :cond_92

    .line 873
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

    .line 874
    invoke-static {v4}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 875
    invoke-virtual {v2, v4}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 876
    instance-of v5, v4, Ljava/net/Inet4Address;

    or-int/2addr v0, v5

    .line 877
    instance-of v4, v4, Ljava/net/Inet6Address;

    or-int/2addr v1, v4

    .line 878
    goto :goto_78

    .line 881
    :cond_92
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->proxyInfo:Landroid/net/ProxyInfo;

    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 883
    const/4 v3, 0x7

    const/4 v4, 0x0

    if-nez v0, :cond_ac

    .line 884
    new-instance v0, Landroid/net/RouteInfo;

    new-instance v5, Landroid/net/IpPrefix;

    sget-object v6, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {v5, v6, v4}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v0, v5, v3}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-virtual {v2, v0}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 886
    :cond_ac
    if-nez v1, :cond_bd

    .line 887
    new-instance v0, Landroid/net/RouteInfo;

    new-instance v1, Landroid/net/IpPrefix;

    sget-object v5, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {v1, v5, v4}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v0, v1, v3}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-virtual {v2, v0}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 891
    :cond_bd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 892
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-eqz v1, :cond_e5

    .line 893
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 894
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 895
    goto :goto_d0

    .line 897
    :cond_e5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 901
    return-object v2
.end method

.method private prepareInternal(Ljava/lang/String;)V
    .registers 11

    .line 723
    const-string v0, " to call protect() "

    const-string v1, "Vpn"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 726
    :try_start_8
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v4, :cond_1e

    .line 727
    iput-object v5, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 728
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    .line 729
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    .line 730
    iput-object v5, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 731
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    .line 735
    :cond_1e
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_d6

    if-eqz v4, :cond_3f

    .line 737
    :try_start_22
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    invoke-static {v4}, Lcom/android/server/connectivity/Vpn$Connection;->access$000(Lcom/android/server/connectivity/Vpn$Connection;)Landroid/os/IBinder;

    move-result-object v4

    const v6, 0xffffff

    .line 738
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    const/4 v8, 0x1

    .line 737
    invoke-interface {v4, v6, v7, v5, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_33} :catch_34
    .catchall {:try_start_22 .. :try_end_33} :catchall_d6

    .line 741
    goto :goto_35

    .line 739
    :catch_34
    move-exception v4

    .line 742
    :goto_35
    :try_start_35
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    invoke-virtual {v4, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 743
    iput-object v5, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    goto :goto_4a

    .line 744
    :cond_3f
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v4, :cond_4a

    .line 745
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 746
    iput-object v5, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_4a
    .catchall {:try_start_35 .. :try_end_4a} :catchall_d6

    .line 750
    :cond_4a
    :goto_4a
    :try_start_4a
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    iget v6, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-interface {v4, v6}, Landroid/os/INetworkManagementService;->denyProtect(I)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_51} :catch_52
    .catchall {:try_start_4a .. :try_end_51} :catchall_d6

    .line 753
    goto :goto_6f

    .line 751
    :catch_52
    move-exception v4

    .line 752
    :try_start_53
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to disallow UID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :goto_6f
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

    .line 756
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 757
    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, p1, v4}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    .line 758
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->doesPackageTargetAtLeastQ(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageTargetingAtLeastQ:Z
    :try_end_9d
    .catchall {:try_start_53 .. :try_end_9d} :catchall_d6

    .line 760
    :try_start_9d
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-interface {p1, v4}, Landroid/os/INetworkManagementService;->allowProtect(I)V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a4} :catch_a5
    .catchall {:try_start_9d .. :try_end_a4} :catchall_d6

    .line 763
    goto :goto_c2

    .line 761
    :catch_a5
    move-exception p1

    .line 762
    :try_start_a6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to allow UID "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :goto_c2
    iput-object v5, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 766
    sget-object p1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v0, "prepare"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 767
    iget-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V
    :try_end_d1
    .catchall {:try_start_a6 .. :try_end_d1} :catchall_d6

    .line 769
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 770
    nop

    .line 771
    return-void

    .line 769
    :catchall_d6
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private prepareStatusIntent()V
    .registers 4

    .line 1505
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1507
    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    .line 1509
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1510
    nop

    .line 1511
    return-void

    .line 1509
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method static providesRoutesToMostDestinations(Landroid/net/LinkProperties;)Z
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 915
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object p0

    .line 916
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x96

    if-le v0, v2, :cond_e

    return v1

    .line 917
    :cond_e
    invoke-static {}, Landroid/net/IpPrefix;->lengthComparator()Ljava/util/Comparator;

    move-result-object v0

    .line 918
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 919
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 920
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 921
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getType()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_34

    goto :goto_20

    .line 922
    :cond_34
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v0

    .line 923
    invoke-virtual {v0}, Landroid/net/IpPrefix;->isIPv4()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 924
    invoke-virtual {v2, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 926
    :cond_42
    invoke-virtual {v3, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 928
    :goto_45
    goto :goto_20

    .line 929
    :cond_46
    invoke-static {v2}, Landroid/net/NetworkUtils;->routedIPv4AddressCount(Ljava/util/TreeSet;)J

    move-result-wide v4

    sget-wide v6, Lcom/android/server/connectivity/Vpn;->MOST_IPV4_ADDRESSES_COUNT:J

    cmp-long p0, v4, v6

    if-lez p0, :cond_51

    .line 930
    return v1

    .line 932
    :cond_51
    invoke-static {v3}, Landroid/net/NetworkUtils;->routedIPv6AddressCount(Ljava/util/TreeSet;)Ljava/math/BigInteger;

    move-result-object p0

    sget-object v0, Lcom/android/server/connectivity/Vpn;->MOST_IPV6_ADDRESSES_COUNT:Ljava/math/BigInteger;

    .line 933
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-ltz p0, :cond_5e

    goto :goto_5f

    :cond_5e
    const/4 v1, 0x0

    .line 932
    :goto_5f
    return v1
.end method

.method private saveAlwaysOnPackage()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 555
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 557
    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v3, "always_on_vpn_app"

    .line 558
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 557
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecurePutStringForUser(Ljava/lang/String;Ljava/lang/String;I)V

    .line 559
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v3, "always_on_vpn_lockdown"

    .line 560
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

    .line 559
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecurePutIntForUser(Ljava/lang/String;II)V

    .line 561
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v3, "always_on_vpn_lockdown_whitelist"

    const-string v4, ","

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mLockdownWhitelist:Ljava/util/List;

    .line 563
    invoke-static {v4, v5}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 561
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecurePutStringForUser(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_36
    .catchall {:try_start_4 .. :try_end_36} :catchall_3b

    .line 565
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 566
    nop

    .line 567
    return-void

    .line 565
    :catchall_3b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z
    .registers 6
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

    .line 1407
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 1408
    return v1

    .line 1410
    :cond_8
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/UidRange;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/UidRange;

    .line 1412
    :try_start_14
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, v0}, Landroid/os/INetworkManagementService;->setAllowOnlyVpnForUids(Z[Landroid/net/UidRange;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_28
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_19} :catch_28

    .line 1417
    nop

    .line 1418
    if-eqz p1, :cond_22

    .line 1419
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_27

    .line 1421
    :cond_22
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1423
    :goto_27
    return v1

    .line 1413
    :catch_28
    move-exception v0

    .line 1414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating blocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " for UIDs "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1415
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1414
    const-string p2, "Vpn"

    invoke-static {p2, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1416
    const/4 p1, 0x0

    return p1
.end method

.method private setAlwaysOnPackageInternal(Ljava/lang/String;ZLjava/util/List;)Z
    .registers 10
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

    .line 488
    const-string v0, "[Legacy VPN]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Vpn"

    const/4 v3, 0x0

    if-eqz v1, :cond_25

    .line 489
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Not setting legacy VPN \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" as always-on."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    return v3

    .line 493
    :cond_25
    if-eqz p3, :cond_55

    .line 494
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 495
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 496
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not setting always-on vpn, invalid whitelisted package: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    return v3

    .line 499
    :cond_54
    goto :goto_2b

    .line 502
    :cond_55
    const/4 v1, 0x1

    if-eqz p1, :cond_62

    .line 504
    invoke-virtual {p0, p1, v1}, Lcom/android/server/connectivity/Vpn;->setPackageAuthorization(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 505
    return v3

    .line 507
    :cond_5f
    iput-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    goto :goto_66

    .line 509
    :cond_62
    nop

    .line 510
    iput-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    move-object p1, v0

    .line 513
    :goto_66
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v0, :cond_6d

    if-eqz p2, :cond_6d

    move v3, v1

    :cond_6d
    iput-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 514
    iget-boolean p2, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-eqz p2, :cond_7f

    if-eqz p3, :cond_7f

    .line 515
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    goto :goto_83

    .line 516
    :cond_7f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    :goto_83
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mLockdownWhitelist:Ljava/util/List;

    .line 518
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9a

    .line 519
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->updateAlwaysOnNotification(Landroid/net/NetworkInfo$DetailedState;)V

    .line 520
    iget-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    goto :goto_9d

    .line 524
    :cond_9a
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V

    .line 526
    :goto_9d
    return v1
.end method

.method private setVpnForcedLocked(Z)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 1361
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->isNullOrLegacyVpn(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 1362
    move-object v0, v1

    goto :goto_17

    .line 1364
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mLockdownWhitelist:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1365
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1367
    :goto_17
    new-instance v2, Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1369
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    .line 1370
    const/4 v4, 0x1

    if-eqz p1, :cond_59

    .line 1371
    iget p1, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/connectivity/Vpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v3

    .line 1378
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/UidRange;

    .line 1379
    iget v1, v0, Landroid/net/UidRange;->start:I

    if-nez v1, :cond_50

    .line 1380
    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1381
    iget v1, v0, Landroid/net/UidRange;->stop:I

    if-eqz v1, :cond_50

    .line 1382
    new-instance v1, Landroid/net/UidRange;

    iget v0, v0, Landroid/net/UidRange;->stop:I

    invoke-direct {v1, v4, v0}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1385
    :cond_50
    goto :goto_2f

    .line 1387
    :cond_51
    invoke-interface {v2, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1388
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1391
    :cond_59
    const/4 p1, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/server/connectivity/Vpn;->setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z

    .line 1392
    invoke-direct {p0, v4, v3}, Lcom/android/server/connectivity/Vpn;->setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z

    .line 1393
    return-void
.end method

.method private declared-synchronized startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/net/VpnProfile;)V
    .registers 13

    monitor-enter p0

    .line 1845
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->stopLegacyVpnPrivileged()V

    .line 1848
    const-string v0, "[Legacy VPN]"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V

    .line 1849
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "startLegacyVpn"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1852
    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/net/VpnProfile;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 1853
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {p1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->start()V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 1854
    monitor-exit p0

    return-void

    .line 1844
    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static uidRangesForUser(ILjava/util/Set;)Ljava/util/List;
    .registers 5
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

    .line 1263
    invoke-static {p0}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object p0

    .line 1264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1265
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/UidRange;

    .line 1266
    invoke-virtual {p0, v1}, Landroid/net/UidRange;->containsRange(Landroid/net/UidRange;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1267
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1269
    :cond_22
    goto :goto_d

    .line 1270
    :cond_23
    return-object v0
.end method

.method private updateAlwaysOnNotification(Landroid/net/NetworkInfo$DetailedState;)V
    .registers 12

    .line 1603
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_b

    move p1, v1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 1605
    :goto_c
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 1606
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1608
    :try_start_16
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v4
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_a9

    .line 1609
    const/16 v5, 0x11

    const-string v6, "Vpn"

    if-nez p1, :cond_29

    .line 1610
    :try_start_22
    invoke-virtual {v4, v6, v5, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_a9

    .line 1633
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1611
    return-void

    .line 1613
    :cond_29
    :try_start_29
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1614
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v8, 0x1040151

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1616
    const-string v7, "lockdown"

    iget-boolean v8, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1617
    const/high16 v7, 0x10000000

    invoke-virtual {p1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1618
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const/high16 v8, 0xc000000

    invoke-virtual {v7, p1, v8, v0}, Lcom/android/server/connectivity/Vpn$SystemServices;->pendingIntentGetActivityAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 1620
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/android/internal/notification/SystemNotificationChannels;->VPN:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v8, 0x10808e0

    .line 1622
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v9, 0x1040747

    .line 1623
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v9, 0x1040744

    .line 1624
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 1625
    invoke-virtual {v7, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    const-string/jumbo v7, "sys"

    .line 1626
    invoke-virtual {p1, v7}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 1627
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 1628
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v7, 0x106001c

    .line 1629
    invoke-virtual {v1, v7}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 1630
    nop

    .line 1631
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 1630
    invoke-virtual {v4, v6, v5, p1, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_a4
    .catchall {:try_start_29 .. :try_end_a4} :catchall_a9

    .line 1633
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1634
    nop

    .line 1635
    return-void

    .line 1633
    :catchall_a9
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private updateLinkPropertiesInPlaceIfPossible(Landroid/net/NetworkAgent;Lcom/android/internal/net/VpnConfig;)Z
    .registers 7

    .line 943
    iget-boolean v0, p2, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v1, v1, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    const/4 v2, 0x0

    const-string v3, "Vpn"

    if-eq v0, v1, :cond_11

    .line 944
    const-string p1, "Handover not possible due to changes to allowBypass"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    return v2

    .line 950
    :cond_11
    iget-object v0, p2, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object p2, p2, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    .line 951
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2a

    goto :goto_33

    .line 956
    :cond_2a
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 957
    const/4 p1, 0x1

    return p1

    .line 952
    :cond_33
    :goto_33
    const-string p1, "Handover not possible due to changes to whitelisted/blacklisted apps"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    return v2
.end method


# virtual methods
.method public declared-synchronized addAddress(Ljava/lang/String;I)Z
    .registers 4

    monitor-enter p0

    .line 1514
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1b

    if-nez v0, :cond_a

    .line 1515
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 1517
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/connectivity/Vpn;->jniAddAddress(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    .line 1518
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_1b

    .line 1519
    monitor-exit p0

    return p1

    .line 1513
    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V
    .registers 8
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

    .line 1226
    if-eqz p3, :cond_3d

    .line 1228
    nop

    .line 1229
    invoke-direct {p0, p3, p2}, Lcom/android/server/connectivity/Vpn;->getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, -0x1

    move p4, p3

    move v0, p4

    :goto_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1230
    if-ne p4, p3, :cond_21

    .line 1231
    goto :goto_2e

    .line 1232
    :cond_21
    add-int/lit8 v2, v0, 0x1

    if-eq v1, v2, :cond_2f

    .line 1233
    new-instance v2, Landroid/net/UidRange;

    invoke-direct {v2, p4, v0}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1234
    nop

    .line 1236
    :goto_2e
    move p4, v1

    :cond_2f
    nop

    .line 1237
    move v0, v1

    goto :goto_e

    .line 1238
    :cond_32
    if-eq p4, p3, :cond_3c

    new-instance p2, Landroid/net/UidRange;

    invoke-direct {p2, p4, v0}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1239
    :cond_3c
    goto :goto_86

    :cond_3d
    if-eqz p4, :cond_7f

    .line 1241
    invoke-static {p2}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object p3

    .line 1242
    iget v0, p3, Landroid/net/UidRange;->start:I

    .line 1243
    invoke-direct {p0, p4, p2}, Lcom/android/server/connectivity/Vpn;->getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_70

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    .line 1244
    if-ne p4, v0, :cond_62

    .line 1245
    add-int/lit8 v0, v0, 0x1

    goto :goto_6f

    .line 1247
    :cond_62
    new-instance v1, Landroid/net/UidRange;

    add-int/lit8 v2, p4, -0x1

    invoke-direct {v1, v0, v2}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1248
    add-int/lit8 p4, p4, 0x1

    move v0, p4

    .line 1250
    :goto_6f
    goto :goto_4d

    .line 1251
    :cond_70
    iget p2, p3, Landroid/net/UidRange;->stop:I

    if-gt v0, p2, :cond_7e

    new-instance p2, Landroid/net/UidRange;

    iget p3, p3, Landroid/net/UidRange;->stop:I

    invoke-direct {p2, v0, p3}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1252
    :cond_7e
    goto :goto_86

    .line 1254
    :cond_7f
    invoke-static {p2}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1256
    :goto_86
    return-void
.end method

.method public declared-synchronized appliesToUid(I)Z
    .registers 3

    monitor-enter p0

    .line 1579
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_12

    if-nez v0, :cond_a

    .line 1580
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 1582
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->appliesToUid(I)Z

    move-result p1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_12

    monitor-exit p0

    return p1

    .line 1578
    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;
    .registers 9
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

    .line 1186
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1189
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    .line 1192
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->canHaveRestrictedProfile(I)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1193
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1196
    :try_start_12
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_41

    .line 1198
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1199
    nop

    .line 1200
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1201
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_40

    iget v3, v2, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v3, p1, :cond_40

    .line 1202
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, v2, p2, p3}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    .line 1204
    :cond_40
    goto :goto_25

    .line 1198
    :catchall_41
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 1206
    :cond_46
    return-object v0
.end method

.method public declared-synchronized establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .registers 16

    monitor-enter p0

    .line 1033
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 1034
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1e3

    const/4 v3, 0x0

    if-eq v1, v2, :cond_12

    .line 1035
    monitor-exit p0

    return-object v3

    .line 1038
    :cond_12
    :try_start_12
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Vpn;->isVpnUserPreConsented(Ljava/lang/String;)Z

    move-result v1
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_1e3

    if-nez v1, :cond_1c

    .line 1039
    monitor-exit p0

    return-object v3

    .line 1042
    :cond_1c
    :try_start_1c
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.VpnService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1043
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1044
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_2e
    .catchall {:try_start_1c .. :try_end_2e} :catchall_1e3

    .line 1047
    :try_start_2e
    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1048
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_1bb

    .line 1052
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v2, 0x0

    iget v6, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-interface {v0, v1, v3, v2, v6}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1054
    if-eqz v0, :cond_1a2

    .line 1057
    const-string v2, "android.permission.BIND_VPN_SERVICE"

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_51} :catch_1c5
    .catchall {:try_start_2e .. :try_end_51} :catchall_1c3

    if-eqz v0, :cond_184

    .line 1063
    :try_start_53
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1064
    nop

    .line 1067
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 1068
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 1069
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 1070
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1071
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v6}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v6

    .line 1074
    iget v7, p1, Lcom/android/internal/net/VpnConfig;->mtu:I

    invoke-direct {p0, v7}, Lcom/android/server/connectivity/Vpn;->jniCreate(I)I

    move-result v7

    invoke-static {v7}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v7
    :try_end_6f
    .catchall {:try_start_53 .. :try_end_6f} :catchall_1e3

    .line 1076
    :try_start_6f
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/server/connectivity/Vpn;->jniGetName(I)Ljava/lang/String;

    move-result-object v8

    .line 1079
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1080
    iget-object v10, p1, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_82
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/LinkAddress;

    .line 1081
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    goto :goto_82

    .line 1083
    :cond_a3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/server/connectivity/Vpn;->jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    if-lt v9, v10, :cond_167

    .line 1086
    new-instance v9, Lcom/android/server/connectivity/Vpn$Connection;

    invoke-direct {v9, p0, v3}, Lcom/android/server/connectivity/Vpn$Connection;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$1;)V

    .line 1087
    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v11, 0x4000001

    new-instance v12, Landroid/os/UserHandle;

    iget v13, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v10, v1, v9, v11, v12}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_14e

    .line 1093
    iput-object v9, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 1094
    iput-object v8, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 1097
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 1098
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 1099
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iput-wide v9, p1, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 1100
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 1105
    if-eqz v0, :cond_e4

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1106
    invoke-direct {p0, v1, v0}, Lcom/android/server/connectivity/Vpn;->updateLinkPropertiesInPlaceIfPossible(Landroid/net/NetworkAgent;Lcom/android/internal/net/VpnConfig;)Z

    move-result v1

    if-eqz v1, :cond_e4

    goto :goto_f3

    .line 1109
    :cond_e4
    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1110
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v3, "establish"

    invoke-virtual {p0, v1, v3}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1112
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentConnect()V

    .line 1116
    invoke-direct {p0, v5}, Lcom/android/server/connectivity/Vpn;->agentDisconnect(Landroid/net/NetworkAgent;)V

    .line 1119
    :goto_f3
    if-eqz v4, :cond_fa

    .line 1120
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1123
    :cond_fa
    if-eqz v2, :cond_105

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_105

    .line 1124
    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V
    :try_end_105
    .catch Ljava/lang/RuntimeException; {:try_start_6f .. :try_end_105} :catch_16f
    .catchall {:try_start_6f .. :try_end_105} :catchall_1e3

    .line 1128
    :cond_105
    :try_start_105
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-boolean v3, p1, Lcom/android/internal/net/VpnConfig;->blocking:Z

    invoke-static {v1, v3}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V
    :try_end_10e
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_10e} :catch_134
    .catch Ljava/lang/RuntimeException; {:try_start_105 .. :try_end_10e} :catch_16f
    .catchall {:try_start_105 .. :try_end_10e} :catchall_1e3

    .line 1132
    nop

    .line 1143
    nop

    .line 1144
    :try_start_110
    const-string v0, "Vpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Established by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " on "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_132
    .catchall {:try_start_110 .. :try_end_132} :catchall_1e3

    .line 1145
    monitor-exit p0

    return-object v7

    .line 1129
    :catch_134
    move-exception v1

    .line 1130
    :try_start_135
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot set tunnel\'s fd as blocking="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p1, Lcom/android/internal/net/VpnConfig;->blocking:Z

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1090
    :cond_14e
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot bind "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1084
    :cond_167
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one address must be specified"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_16f
    .catch Ljava/lang/RuntimeException; {:try_start_135 .. :try_end_16f} :catch_16f
    .catchall {:try_start_135 .. :try_end_16f} :catchall_1e3

    .line 1133
    :catch_16f
    move-exception p1

    .line 1134
    :try_start_170
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1135
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    .line 1137
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 1138
    iput-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 1139
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    .line 1140
    iput-object v5, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1141
    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 1142
    throw p1
    :try_end_184
    .catchall {:try_start_170 .. :try_end_184} :catchall_1e3

    .line 1058
    :cond_184
    :try_start_184
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not require "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android.permission.BIND_VPN_SERVICE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1055
    :cond_1a2
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1049
    :cond_1bb
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Restricted users cannot establish VPNs"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1c3
    .catch Landroid/os/RemoteException; {:try_start_184 .. :try_end_1c3} :catch_1c5
    .catchall {:try_start_184 .. :try_end_1c3} :catchall_1c3

    .line 1063
    :catchall_1c3
    move-exception p1

    goto :goto_1df

    .line 1060
    :catch_1c5
    move-exception v0

    .line 1061
    :try_start_1c6
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1df
    .catchall {:try_start_1c6 .. :try_end_1df} :catchall_1c3

    .line 1063
    :goto_1df
    :try_start_1df
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
    :try_end_1e3
    .catchall {:try_start_1df .. :try_end_1e3} :catchall_1e3

    .line 1032
    :catchall_1e3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAlwaysOn()Z
    .registers 2

    monitor-enter p0

    .line 392
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAlwaysOnPackage()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 539
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 540
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_e

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    monitor-exit p0

    return-object v0

    .line 538
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;
    .registers 2

    .line 1895
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_7

    .line 1896
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0

    .line 1898
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    .registers 2

    monitor-enter p0

    .line 1874
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 1875
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfoPrivileged()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    .line 1873
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLegacyVpnInfoPrivileged()Lcom/android/internal/net/LegacyVpnInfo;
    .registers 3

    monitor-enter p0

    .line 1883
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_29

    if-nez v0, :cond_8

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 1885
    :cond_8
    :try_start_8
    new-instance v0, Lcom/android/internal/net/LegacyVpnInfo;

    invoke-direct {v0}, Lcom/android/internal/net/LegacyVpnInfo;-><init>()V

    .line 1886
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    .line 1887
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {v1}, Lcom/android/internal/net/LegacyVpnInfo;->stateFromNetworkInfo(Landroid/net/NetworkInfo;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 1888
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1889
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_29

    .line 1891
    :cond_27
    monitor-exit p0

    return-object v0

    .line 1882
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLockdown()Z
    .registers 2

    monitor-enter p0

    .line 385
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

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

    .line 547
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdownWhitelist:Ljava/util/List;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_b

    goto :goto_9

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

    .line 844
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

    .line 840
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public declared-synchronized getUnderlyingNetworks()[Landroid/net/Network;
    .registers 2

    monitor-enter p0

    .line 1557
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_10

    if-nez v0, :cond_a

    .line 1558
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 1560
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    .line 1556
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVpnConfig()Lcom/android/internal/net/VpnConfig;
    .registers 2

    .line 1430
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 1431
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0
.end method

.method public declared-synchronized getVpnInfo()Lcom/android/internal/net/VpnInfo;
    .registers 3

    monitor-enter p0

    .line 1568
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_19

    if-nez v0, :cond_a

    .line 1569
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 1572
    :cond_a
    :try_start_a
    new-instance v0, Lcom/android/internal/net/VpnInfo;

    invoke-direct {v0}, Lcom/android/internal/net/VpnInfo;-><init>()V

    .line 1573
    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    iput v1, v0, Lcom/android/internal/net/VpnInfo;->ownerUid:I

    .line 1574
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnInfo;->vpnIface:Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_19

    .line 1575
    monitor-exit p0

    return-object v0

    .line 1567
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized interfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 1437
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_a
    .catchall {:try_start_1 .. :try_end_6} :catchall_7

    .line 1440
    goto :goto_b

    .line 1436
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1

    .line 1438
    :catch_a
    move-exception p1

    .line 1441
    :goto_b
    monitor-exit p0

    return-void
.end method

.method public isAlwaysOnPackageSupported(Ljava/lang/String;)Z
    .registers 7

    .line 409
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceSettingsPermission()V

    .line 411
    const/4 v0, 0x0

    if-nez p1, :cond_7

    .line 412
    return v0

    .line 415
    :cond_7
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 416
    const/4 v2, 0x0

    .line 418
    :try_start_e
    iget v3, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-virtual {v1, p1, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_14} :catch_15

    .line 421
    goto :goto_31

    .line 419
    :catch_15
    move-exception v3

    .line 420
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" when checking always-on support"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Vpn"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :goto_31
    if-eqz v2, :cond_78

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_3a

    goto :goto_78

    .line 426
    :cond_3a
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.VpnService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    const/16 p1, 0x80

    iget v3, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 429
    invoke-virtual {v1, v2, p1, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    .line 430
    if-eqz p1, :cond_77

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_55

    goto :goto_77

    .line 434
    :cond_55
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_59
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_76

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 435
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 436
    if-eqz v1, :cond_75

    .line 437
    const-string v3, "android.net.VpnService.SUPPORTS_ALWAYS_ON"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_75

    .line 438
    return v0

    .line 440
    :cond_75
    goto :goto_59

    .line 442
    :cond_76
    return v2

    .line 431
    :cond_77
    :goto_77
    return v0

    .line 423
    :cond_78
    :goto_78
    return v0
.end method

.method public declared-synchronized isBlockingUid(I)Z
    .registers 3

    monitor-enter p0

    .line 1595
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1596
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->appliesToUid(I)Z

    move-result p1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_19

    xor-int/lit8 p1, p1, 0x1

    monitor-exit p0

    return p1

    .line 1598
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-static {v0, p1}, Landroid/net/UidRange;->containsUid(Ljava/util/Collection;I)Z

    move-result p1
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_19

    monitor-exit p0

    return p1

    .line 1594
    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected isCallerEstablishedOwnerLocked()Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1156
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
    .registers 5

    .line 1280
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1281
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_42

    iget v0, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    if-ne v0, v1, :cond_42

    .line 1282
    monitor-enter p0

    .line 1283
    :try_start_17
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v0
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_3f

    .line 1284
    if-eqz v0, :cond_38

    .line 1286
    :try_start_1f
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    .line 1290
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2f} :catch_30
    .catchall {:try_start_1f .. :try_end_2f} :catchall_3f

    .line 1293
    goto :goto_38

    .line 1291
    :catch_30
    move-exception p1

    .line 1292
    :try_start_31
    const-string v0, "Vpn"

    const-string v1, "Failed to add restricted user to owner"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1295
    :cond_38
    :goto_38
    iget-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    .line 1296
    monitor-exit p0

    goto :goto_42

    :catchall_3f
    move-exception p1

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_31 .. :try_end_41} :catchall_3f

    throw p1

    .line 1298
    :cond_42
    :goto_42
    return-void
.end method

.method public onUserRemoved(I)V
    .registers 4

    .line 1307
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1308
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_3f

    iget v0, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    if-ne v0, v1, :cond_3f

    .line 1309
    monitor-enter p0

    .line 1310
    :try_start_17
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v0
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_3c

    .line 1311
    if-eqz v0, :cond_35

    .line 1313
    nop

    .line 1314
    :try_start_20
    invoke-static {p1, v0}, Lcom/android/server/connectivity/Vpn;->uidRangesForUser(ILjava/util/Set;)Ljava/util/List;

    move-result-object p1

    .line 1315
    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1318
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2c} :catch_2d
    .catchall {:try_start_20 .. :try_end_2c} :catchall_3c

    .line 1321
    goto :goto_35

    .line 1319
    :catch_2d
    move-exception p1

    .line 1320
    :try_start_2e
    const-string v0, "Vpn"

    const-string v1, "Failed to remove restricted user to owner"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1323
    :cond_35
    :goto_35
    iget-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    .line 1324
    monitor-exit p0

    goto :goto_3f

    :catchall_3c
    move-exception p1

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_2e .. :try_end_3e} :catchall_3c

    throw p1

    .line 1326
    :cond_3f
    :goto_3f
    return-void
.end method

.method public declared-synchronized onUserStopped()V
    .registers 2

    monitor-enter p0

    .line 1333
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Vpn;->setLockdown(Z)V

    .line 1334
    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 1337
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_c

    .line 1338
    monitor-exit p0

    return-void

    .line 1332
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prepare(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    monitor-enter p0

    .line 674
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_43

    .line 676
    :try_start_5
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v2, :cond_11

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v2
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_41

    if-nez v2, :cond_11

    .line 677
    monitor-exit p0

    return v1

    .line 681
    :cond_11
    :try_start_11
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 684
    const-string p2, "[Legacy VPN]"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2a

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isVpnUserPreConsented(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 685
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_11 .. :try_end_28} :catchall_41

    .line 686
    monitor-exit p0

    return v0

    .line 688
    :cond_2a
    monitor-exit p0

    return v1

    .line 689
    :cond_2c
    :try_start_2c
    const-string v2, "[Legacy VPN]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 690
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isVpnUserPreConsented(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_43

    .line 692
    const-string p1, "[Legacy VPN]"

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_2c .. :try_end_3f} :catchall_41

    .line 693
    monitor-exit p0

    return v1

    .line 673
    :catchall_41
    move-exception p1

    goto :goto_68

    .line 698
    :cond_43
    if-eqz p2, :cond_6a

    :try_start_45
    const-string p1, "[Legacy VPN]"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_54

    .line 699
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_54

    goto :goto_6a

    .line 704
    :cond_54
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 707
    iget-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz p1, :cond_63

    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result p1
    :try_end_5f
    .catchall {:try_start_45 .. :try_end_5f} :catchall_41

    if-nez p1, :cond_63

    .line 708
    monitor-exit p0

    return v1

    .line 711
    :cond_63
    :try_start_63
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_41

    .line 712
    monitor-exit p0

    return v0

    .line 673
    :goto_68
    monitor-exit p0

    throw p1

    .line 700
    :cond_6a
    :goto_6a
    monitor-exit p0

    return v0
.end method

.method public declared-synchronized removeAddress(Ljava/lang/String;I)Z
    .registers 4

    monitor-enter p0

    .line 1523
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1b

    if-nez v0, :cond_a

    .line 1524
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 1526
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/connectivity/Vpn;->jniDelAddress(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    .line 1527
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_1b

    .line 1528
    monitor-exit p0

    return p1

    .line 1522
    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAlwaysOnPackage(Ljava/lang/String;ZLjava/util/List;)Z
    .registers 4
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

    monitor-enter p0

    .line 464
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 466
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackageInternal(Ljava/lang/String;ZLjava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 467
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->saveAlwaysOnPackage()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_13

    .line 468
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 470
    :cond_10
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 463
    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setEnableTeardown(Z)V
    .registers 2

    .line 255
    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    .line 256
    return-void
.end method

.method public declared-synchronized setLockdown(Z)V
    .registers 2

    monitor-enter p0

    .line 367
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 369
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    .line 370
    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 374
    iget-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz p1, :cond_10

    .line 375
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->saveAlwaysOnPackage()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 377
    :cond_10
    monitor-exit p0

    return-void

    .line 366
    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPackageAuthorization(Ljava/lang/String;Z)Z
    .registers 10

    .line 778
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 780
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v0

    .line 781
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5e

    const-string v2, "[Legacy VPN]"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_5e

    .line 786
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 788
    :try_start_1a
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v5, "appops"

    .line 789
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    .line 790
    const/16 v5, 0x2f

    .line 791
    const/4 v6, 0x1

    if-eqz p2, :cond_2b

    move p2, v1

    goto :goto_2c

    :cond_2b
    move p2, v6

    .line 790
    :goto_2c
    invoke-virtual {v4, v5, v0, p1, p2}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2f} :catch_36
    .catchall {:try_start_1a .. :try_end_2f} :catchall_34

    .line 792
    nop

    .line 796
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 792
    return v6

    .line 796
    :catchall_34
    move-exception p1

    goto :goto_5a

    .line 793
    :catch_36
    move-exception p2

    .line 794
    :try_start_37
    const-string v4, "Vpn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to set app ops for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", uid "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_55
    .catchall {:try_start_37 .. :try_end_55} :catchall_34

    .line 796
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 797
    nop

    .line 798
    return v1

    .line 796
    :goto_5a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 783
    :cond_5e
    :goto_5e
    return v1
.end method

.method public declared-synchronized setUnderlyingNetworks([Landroid/net/Network;)Z
    .registers 7

    monitor-enter p0

    .line 1538
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_3d

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1539
    monitor-exit p0

    return v1

    .line 1541
    :cond_a
    const/4 v0, 0x0

    if-nez p1, :cond_12

    .line 1542
    :try_start_d
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-object v0, p1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    goto :goto_3a

    .line 1544
    :cond_12
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    array-length v3, p1

    new-array v3, v3, [Landroid/net/Network;

    iput-object v3, v2, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 1545
    nop

    :goto_1a
    array-length v2, p1

    if-ge v1, v2, :cond_3a

    .line 1546
    aget-object v2, p1, v1

    if-nez v2, :cond_28

    .line 1547
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    aput-object v0, v2, v1

    goto :goto_37

    .line 1549
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

    .line 1545
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 1553
    :cond_3a
    :goto_3a
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 1537
    :catchall_3d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startAlwaysOnVpn()Z
    .registers 14

    .line 596
    monitor-enter p0

    .line 597
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v8

    .line 599
    const/4 v9, 0x1

    if-nez v8, :cond_a

    .line 600
    monitor-exit p0

    return v9

    .line 603
    :cond_a
    invoke-virtual {p0, v8}, Lcom/android/server/connectivity/Vpn;->isAlwaysOnPackageSupported(Ljava/lang/String;)Z

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_17

    .line 604
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v10, v0}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;ZLjava/util/List;)Z

    .line 605
    monitor-exit p0

    return v10

    .line 610
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 611
    monitor-exit p0

    return v9

    .line 613
    :cond_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_85

    .line 617
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 619
    :try_start_28
    const-class v0, Lcom/android/server/DeviceIdleController$LocalService;

    .line 620
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleController$LocalService;

    .line 621
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const-wide/32 v3, 0xea60

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    const/4 v6, 0x0

    const-string/jumbo v7, "vpn"

    move-object v2, v8

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/DeviceIdleController$LocalService;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V

    .line 625
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.VpnService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 626
    invoke-virtual {v0, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4b
    .catchall {:try_start_28 .. :try_end_4b} :catchall_80

    .line 628
    :try_start_4b
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_57
    .catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_57} :catch_5f
    .catchall {:try_start_4b .. :try_end_57} :catchall_80

    if-eqz v0, :cond_5a

    goto :goto_5b

    :cond_5a
    move v9, v10

    .line 634
    :goto_5b
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 628
    return v9

    .line 629
    :catch_5f
    move-exception v1

    .line 630
    :try_start_60
    const-string v2, "Vpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VpnService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " failed to start"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7b
    .catchall {:try_start_60 .. :try_end_7b} :catchall_80

    .line 631
    nop

    .line 634
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 631
    return v10

    .line 634
    :catchall_80
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 613
    :catchall_85
    move-exception v0

    :try_start_86
    monitor-exit p0
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw v0
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    .registers 6

    .line 1717
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 1718
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1720
    :try_start_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_f

    .line 1722
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1723
    nop

    .line 1724
    return-void

    .line 1722
    :catchall_f
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    .registers 20

    .line 1734
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    .line 1735
    iget v4, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 1736
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v4

    if-nez v4, :cond_2fe

    new-instance v4, Landroid/os/UserHandle;

    iget v5, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v5, "no_config_vpn"

    invoke-virtual {v3, v5, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_2fe

    .line 1741
    invoke-static/range {p3 .. p3}, Lcom/android/server/connectivity/Vpn;->findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;

    move-result-object v3

    .line 1742
    invoke-virtual {v3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 1743
    invoke-virtual {v3}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v3

    .line 1746
    nop

    .line 1747
    nop

    .line 1748
    nop

    .line 1749
    nop

    .line 1750
    iget-object v5, v1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const-string v7, ""

    if-nez v5, :cond_7c

    .line 1751
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USRPKEY_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1752
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USRCERT_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v8

    .line 1753
    if-nez v8, :cond_74

    const/4 v9, 0x0

    goto :goto_7e

    :cond_74
    new-instance v9, Ljava/lang/String;

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v8, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_7e

    .line 1750
    :cond_7c
    move-object v5, v7

    move-object v9, v5

    .line 1755
    :goto_7e
    iget-object v8, v1, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_a9

    .line 1756
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CACERT_"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v8

    .line 1757
    if-nez v8, :cond_a1

    const/4 v10, 0x0

    goto :goto_aa

    :cond_a1
    new-instance v10, Ljava/lang/String;

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v8, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_aa

    .line 1755
    :cond_a9
    move-object v10, v7

    .line 1759
    :goto_aa
    iget-object v8, v1, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_d5

    .line 1760
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "USRCERT_"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v2

    .line 1761
    if-nez v2, :cond_cd

    const/4 v8, 0x0

    goto :goto_d6

    :cond_cd
    new-instance v8, Ljava/lang/String;

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v2, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_d6

    .line 1759
    :cond_d5
    move-object v8, v7

    .line 1763
    :goto_d6
    if-eqz v5, :cond_2f6

    if-eqz v9, :cond_2f6

    if-eqz v10, :cond_2f6

    if-eqz v8, :cond_2f6

    .line 1768
    nop

    .line 1769
    iget v2, v1, Lcom/android/internal/net/VpnProfile;->type:I

    const-string v12, "1701"

    const/4 v15, 0x5

    const/4 v14, 0x4

    const/4 v6, 0x3

    const/4 v11, 0x2

    const/4 v13, 0x1

    if-eq v2, v13, :cond_193

    if-eq v2, v11, :cond_175

    if-eq v2, v6, :cond_14a

    if-eq v2, v14, :cond_11b

    if-eq v2, v15, :cond_f5

    const/4 v4, 0x0

    goto/16 :goto_1ae

    .line 1795
    :cond_f5
    const/16 v2, 0x9

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v3, v5, v2

    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v2, v5, v13

    const-string v2, "hybridrsa"

    aput-object v2, v5, v11

    aput-object v10, v5, v6

    aput-object v8, v5, v14

    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v2, v5, v15

    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/4 v8, 0x6

    aput-object v2, v5, v8

    const/4 v2, 0x7

    aput-object v7, v5, v2

    const/16 v2, 0x8

    aput-object v4, v5, v2

    move-object v4, v5

    goto/16 :goto_1ae

    .line 1789
    :cond_11b
    const/16 v2, 0xb

    new-array v15, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v3, v15, v2

    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v2, v15, v13

    const-string/jumbo v2, "xauthrsa"

    aput-object v2, v15, v11

    aput-object v5, v15, v6

    aput-object v9, v15, v14

    const/4 v2, 0x5

    aput-object v10, v15, v2

    const/4 v2, 0x6

    aput-object v8, v15, v2

    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/4 v5, 0x7

    aput-object v2, v15, v5

    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/16 v5, 0x8

    aput-object v2, v15, v5

    const/16 v2, 0x9

    aput-object v7, v15, v2

    const/16 v5, 0xa

    aput-object v4, v15, v5

    .line 1793
    move-object v4, v15

    goto :goto_1ae

    .line 1783
    :cond_14a
    const/16 v2, 0x9

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v3, v5, v2

    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v2, v5, v13

    const-string/jumbo v2, "xauthpsk"

    aput-object v2, v5, v11

    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v2, v5, v6

    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v2, v5, v14

    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/4 v8, 0x5

    aput-object v2, v5, v8

    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/4 v8, 0x6

    aput-object v2, v5, v8

    const/4 v2, 0x7

    aput-object v7, v5, v2

    const/16 v2, 0x8

    aput-object v4, v5, v2

    .line 1787
    move-object v4, v5

    goto :goto_1ae

    .line 1777
    :cond_175
    const/16 v2, 0x8

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v3, v4, v2

    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v2, v4, v13

    const-string/jumbo v2, "udprsa"

    aput-object v2, v4, v11

    aput-object v5, v4, v6

    aput-object v9, v4, v14

    const/4 v2, 0x5

    aput-object v10, v4, v2

    const/4 v2, 0x6

    aput-object v8, v4, v2

    const/4 v5, 0x7

    aput-object v12, v4, v5

    .line 1781
    goto :goto_1ae

    .line 1771
    :cond_193
    const/4 v2, 0x6

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v3, v4, v2

    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v2, v4, v13

    const-string/jumbo v2, "udppsk"

    aput-object v2, v4, v11

    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v2, v4, v6

    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v2, v4, v14

    const/4 v2, 0x5

    aput-object v12, v4, v2

    .line 1775
    nop

    .line 1803
    :goto_1ae
    nop

    .line 1804
    iget v2, v1, Lcom/android/internal/net/VpnProfile;->type:I

    const-string v5, "1400"

    if-eqz v2, :cond_22d

    if-eq v2, v13, :cond_1bc

    if-eq v2, v11, :cond_1bc

    const/4 v2, 0x0

    goto/16 :goto_2a9

    .line 1816
    :cond_1bc
    const/16 v2, 0x14

    new-array v2, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v2, v7

    const-string v7, "l2tp"

    aput-object v7, v2, v13

    iget-object v7, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v7, v2, v11

    aput-object v12, v2, v6

    iget-object v6, v1, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    aput-object v6, v2, v14

    const-string/jumbo v6, "name"

    const/4 v7, 0x5

    aput-object v6, v2, v7

    iget-object v6, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/4 v7, 0x6

    aput-object v6, v2, v7

    const-string/jumbo v6, "password"

    const/4 v7, 0x7

    aput-object v6, v2, v7

    iget-object v6, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/16 v7, 0x8

    aput-object v6, v2, v7

    const-string v6, "linkname"

    const/16 v7, 0x9

    aput-object v6, v2, v7

    const/16 v6, 0xa

    const-string/jumbo v7, "vpn"

    aput-object v7, v2, v6

    const-string/jumbo v6, "refuse-eap"

    const/16 v7, 0xb

    aput-object v6, v2, v7

    const/16 v6, 0xc

    const-string/jumbo v7, "nodefaultroute"

    aput-object v7, v2, v6

    const/16 v6, 0xd

    const-string/jumbo v7, "usepeerdns"

    aput-object v7, v2, v6

    const/16 v6, 0xe

    const-string v7, "idle"

    aput-object v7, v2, v6

    const/16 v6, 0xf

    const-string v7, "1800"

    aput-object v7, v2, v6

    const/16 v6, 0x10

    const-string/jumbo v7, "mtu"

    aput-object v7, v2, v6

    const/16 v6, 0x11

    aput-object v5, v2, v6

    const/16 v6, 0x12

    const-string/jumbo v7, "mru"

    aput-object v7, v2, v6

    const/16 v6, 0x13

    aput-object v5, v2, v6

    goto :goto_2a9

    .line 1806
    :cond_22d
    const/16 v2, 0x14

    new-array v2, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v2, v7

    const-string/jumbo v7, "pptp"

    aput-object v7, v2, v13

    iget-object v7, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v7, v2, v11

    const-string v7, "1723"

    aput-object v7, v2, v6

    const-string/jumbo v6, "name"

    aput-object v6, v2, v14

    iget-object v6, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/4 v7, 0x5

    aput-object v6, v2, v7

    const-string/jumbo v6, "password"

    const/4 v7, 0x6

    aput-object v6, v2, v7

    iget-object v6, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/4 v7, 0x7

    aput-object v6, v2, v7

    const-string v6, "linkname"

    const/16 v7, 0x8

    aput-object v6, v2, v7

    const-string/jumbo v6, "vpn"

    const/16 v7, 0x9

    aput-object v6, v2, v7

    const/16 v6, 0xa

    const-string/jumbo v7, "refuse-eap"

    aput-object v7, v2, v6

    const-string/jumbo v6, "nodefaultroute"

    const/16 v7, 0xb

    aput-object v6, v2, v7

    const/16 v6, 0xc

    const-string/jumbo v7, "usepeerdns"

    aput-object v7, v2, v6

    const/16 v6, 0xd

    const-string v7, "idle"

    aput-object v7, v2, v6

    const/16 v6, 0xe

    const-string v7, "1800"

    aput-object v7, v2, v6

    const/16 v6, 0xf

    const-string/jumbo v7, "mtu"

    aput-object v7, v2, v6

    const/16 v6, 0x10

    aput-object v5, v2, v6

    const/16 v6, 0x11

    const-string/jumbo v7, "mru"

    aput-object v7, v2, v6

    const/16 v6, 0x12

    aput-object v5, v2, v6

    const/16 v5, 0x13

    .line 1811
    iget-boolean v6, v1, Lcom/android/internal/net/VpnProfile;->mppe:Z

    if-eqz v6, :cond_2a3

    const-string v6, "+mppe"

    goto :goto_2a6

    :cond_2a3
    const-string/jumbo v6, "nomppe"

    :goto_2a6
    aput-object v6, v2, v5

    .line 1813
    nop

    .line 1825
    :goto_2a9
    new-instance v5, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v5}, Lcom/android/internal/net/VpnConfig;-><init>()V

    .line 1826
    iput-boolean v13, v5, Lcom/android/internal/net/VpnConfig;->legacy:Z

    .line 1827
    iget-object v6, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 1828
    iput-object v3, v5, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 1829
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iput-object v3, v5, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 1830
    const/4 v3, 0x0

    iput-boolean v3, v5, Lcom/android/internal/net/VpnConfig;->isMetered:Z

    .line 1831
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    iput-object v3, v5, Lcom/android/internal/net/VpnConfig;->proxyInfo:Landroid/net/ProxyInfo;

    .line 1833
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    .line 1834
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2dc

    .line 1835
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string v6, " +"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v5, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 1837
    :cond_2dc
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2f2

    .line 1838
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    const-string v6, " +"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v5, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 1840
    :cond_2f2
    invoke-direct {v0, v5, v4, v2, v1}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/net/VpnProfile;)V

    .line 1841
    return-void

    .line 1764
    :cond_2f6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot load credentials"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1738
    :cond_2fe
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Restricted users cannot establish VPNs"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized stopLegacyVpnPrivileged()V
    .registers 3

    monitor-enter p0

    .line 1858
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_15

    .line 1859
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 1860
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 1862
    const-string v0, "LegacyVpnRunner"

    monitor-enter v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_17

    .line 1865
    :try_start_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_12

    :try_start_14
    throw v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_17

    .line 1867
    :cond_15
    :goto_15
    monitor-exit p0

    return-void

    .line 1857
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    .registers 5

    monitor-enter p0

    .line 281
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_39

    if-nez v0, :cond_8

    .line 283
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    .line 286
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 287
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_16

    if-eqz p1, :cond_16

    .line 289
    new-array v0, v2, [Landroid/net/Network;

    aput-object p1, v0, v1

    .line 292
    :cond_16
    iget-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageTargetingAtLeastQ:Z

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean p1, p1, Lcom/android/internal/net/VpnConfig;->isMetered:Z

    if-eqz p1, :cond_21

    move v1, v2

    .line 294
    :cond_21
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/ConnectivityManager;

    .line 295
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 294
    invoke-static {p1, v0, v2, v1}, Lcom/android/server/connectivity/Vpn;->applyUnderlyingCapabilities(Landroid/net/ConnectivityManager;[Landroid/net/Network;Landroid/net/NetworkCapabilities;Z)V

    .line 300
    new-instance p1, Landroid/net/NetworkCapabilities;

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p1, v0}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_39

    monitor-exit p0

    return-object p1

    .line 280
    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 263
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

    .line 264
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz p2, :cond_2e

    .line 266
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p2, v0}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 268
    :cond_2e
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->updateAlwaysOnNotification(Landroid/net/NetworkInfo$DetailedState;)V

    .line 269
    return-void
.end method
