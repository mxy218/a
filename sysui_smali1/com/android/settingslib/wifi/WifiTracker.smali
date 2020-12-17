.class public Lcom/android/settingslib/wifi/WifiTracker;
.super Ljava/lang/Object;
.source "WifiTracker.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/wifi/WifiTracker$WifiListener;,
        Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExt;,
        Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;,
        Lcom/android/settingslib/wifi/WifiTracker$Scanner;,
        Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;
    }
.end annotation


# static fields
.field static final MAX_SCAN_RESULT_AGE_MILLIS:J = 0x3a98L
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static sCollator:Ljava/text/Collator;

.field public static sVerboseLogging:Z


# instance fields
.field private final mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mFreeWifiEnabled:Z

.field private mFreeWifiManager:Lcom/android/settingslib/wifi/FreeWifiManager;

.field private mFreeWifiRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mFreeWifiService:Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;

.field private mFreeWifiServiceConn:Landroid/content/ServiceConnection;

.field private final mInternalAccessPoints:Ljava/util/List;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mIsTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsViceWifi:Z

.field private mLastConnectFreeWifi:Lcom/android/settingslib/wifi/AccessPoint;

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastNetworkInfo:Landroid/net/NetworkInfo;

.field private mLastScanSucceeded:Z

.field private final mListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

.field private final mLock:Ljava/lang/Object;

.field private mMaxSpeedLabelScoreCacheAge:J

.field private mNetworkCallback:Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;

.field private final mNetworkRequest:Landroid/net/NetworkRequest;

.field private final mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field private mNetworkScoringUiEnabled:Z

.field final mReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mRegistered:Z

.field private mRemoteCallback:Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback;

.field private final mRequestedScores:Ljava/util/Set;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/NetworkKey;",
            ">;"
        }
    .end annotation
.end field

.field private final mScanResultCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

.field private mStaleScanResults:Z

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field mWorkHandler:Landroid/os/Handler;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mWorkThread:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/content/IntentFilter;)V
    .registers 15
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 296
    invoke-direct/range {v0 .. v7}, Lcom/android/settingslib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/content/IntentFilter;Z)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/content/IntentFilter;Z)V
    .registers 11

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mIsTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 153
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 166
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    .line 172
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRequestedScores:Ljava/util/Set;

    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mStaleScanResults:Z

    .line 188
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastScanSucceeded:Z

    .line 192
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    .line 204
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mIsViceWifi:Z

    .line 1055
    new-instance v2, Lcom/android/settingslib/wifi/WifiTracker$2;

    invoke-direct {v2, p0}, Lcom/android/settingslib/wifi/WifiTracker$2;-><init>(Lcom/android/settingslib/wifi/WifiTracker;)V

    iput-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1362
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFreeWifiEnabled:Z

    const/4 v2, 0x0

    .line 1363
    iput-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFreeWifiManager:Lcom/android/settingslib/wifi/FreeWifiManager;

    .line 1379
    new-instance v2, Lcom/android/settingslib/wifi/WifiTracker$3;

    invoke-direct {v2, p0}, Lcom/android/settingslib/wifi/WifiTracker$3;-><init>(Lcom/android/settingslib/wifi/WifiTracker;)V

    iput-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRemoteCallback:Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback;

    .line 1660
    new-instance v2, Lcom/android/settingslib/wifi/WifiTracker$5;

    invoke-direct {v2, p0}, Lcom/android/settingslib/wifi/WifiTracker$5;-><init>(Lcom/android/settingslib/wifi/WifiTracker;)V

    iput-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFreeWifiRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 304
    iput-boolean p7, p0, Lcom/android/settingslib/wifi/WifiTracker;->mIsViceWifi:Z

    .line 305
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    .line 306
    iput-object p3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 307
    new-instance p1, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    invoke-direct {p1, p0, p2}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;-><init>(Lcom/android/settingslib/wifi/WifiTracker;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;)V

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    .line 308
    iput-object p4, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 311
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_69

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result p1

    if-lez p1, :cond_69

    move v1, v0

    :cond_69
    sput-boolean v1, Lcom/android/settingslib/wifi/WifiTracker;->sVerboseLogging:Z

    .line 317
    iget-boolean p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mIsViceWifi:Z

    if-eqz p1, :cond_76

    .line 318
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->newViceWifiIntentFilter()Landroid/content/IntentFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    goto :goto_78

    .line 320
    :cond_76
    iput-object p6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    .line 324
    :goto_78
    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 325
    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    const/16 p2, 0xf

    .line 326
    invoke-virtual {p1, p2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    .line 327
    invoke-virtual {p1, v0}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    .line 328
    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 331
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 332
    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p1

    sput-object p1, Lcom/android/settingslib/wifi/WifiTracker;->sCollator:Ljava/text/Collator;

    .line 336
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/wifi/FreeWifiManager;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/wifi/FreeWifiManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFreeWifiManager:Lcom/android/settingslib/wifi/FreeWifiManager;

    .line 339
    iput-object p5, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    .line 342
    new-instance p1, Landroid/os/HandlerThread;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "WifiTracker{"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "}"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0xa

    invoke-direct {p1, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 345
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 346
    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->setWorkThread(Landroid/os/HandlerThread;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;ZZ)V
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 258
    const-class p3, Landroid/net/wifi/WifiManager;

    .line 259
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Landroid/net/wifi/WifiManager;

    const-class p3, Landroid/net/ConnectivityManager;

    .line 260
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Landroid/net/ConnectivityManager;

    const-class p3, Landroid/net/NetworkScoreManager;

    .line 261
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Landroid/net/NetworkScoreManager;

    .line 262
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->newIntentFilter()Landroid/content/IntentFilter;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 258
    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private static final DBG()Z
    .registers 2

    const-string v0, "WifiTracker"

    const/4 v1, 0x3

    .line 114
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$000(Lcom/android/settingslib/wifi/WifiTracker;)Z
    .registers 1

    .line 102
    iget-boolean p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRegistered:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/settingslib/wifi/WifiTracker;)V
    .registers 1

    .line 102
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->updateNetworkScores()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)V
    .registers 2

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->updateNetworkInfo(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)V
    .registers 2

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->updatePriNetowrkForViceSettings(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)V
    .registers 2

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->updateViceNetworkForPriSetting(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/ConnectivityManager;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static synthetic access$1400()Z
    .registers 1

    .line 102
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->isVerboseLoggingEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/content/Context;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/settingslib/wifi/WifiTracker;I)V
    .registers 2

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->handleLoginStateChange(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/FreeWifiManager;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFreeWifiManager:Lcom/android/settingslib/wifi/FreeWifiManager;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/settingslib/wifi/WifiTracker;Ljava/util/List;)V
    .registers 2

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->handleFreeWifiQueryComplete(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFreeWifiService:Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/android/settingslib/wifi/WifiTracker;Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;)Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFreeWifiService:Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/os/IBinder$DeathRecipient;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFreeWifiRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRemoteCallback:Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/settingslib/wifi/WifiTracker;Z)V
    .registers 2

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->unregisterFreeWifiService(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settingslib/wifi/WifiTracker;I)V
    .registers 2

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->updateWifiState(I)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/settingslib/wifi/WifiTracker;Z)Z
    .registers 2

    .line 102
    iput-boolean p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mStaleScanResults:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settingslib/wifi/WifiTracker;)V
    .registers 1

    .line 102
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->fetchScansAndConfigsAndUpdateAccessPoints()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settingslib/wifi/WifiTracker;)V
    .registers 1

    .line 102
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->queryFreeWifi()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/settingslib/wifi/WifiTracker;)Z
    .registers 1

    .line 102
    iget-boolean p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mIsViceWifi:Z

    return p0
.end method

.method private clearAccessPointsAndConditionallyUpdate()V
    .registers 3

    .line 1019
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1020
    :try_start_3
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1021
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1022
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->conditionallyNotifyListeners()V

    .line 1024
    :cond_13
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method private conditionallyNotifyListeners()V
    .registers 2

    .line 1709
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mStaleScanResults:Z

    if-eqz v0, :cond_5

    return-void

    .line 1713
    :cond_5
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->onAccessPointsChanged()V

    return-void
.end method

.method private dumpBundleAp(Landroid/os/Bundle;)V
    .registers 4

    const-string p0, "WifiTracker"

    const-string v0, "==========================="

    .line 1584
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "freewifi ssid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ssid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "freewifi bssid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bssid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "freewifi description: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "description"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "freewifi CP_CODE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "extra_cp_code"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "freewifi SECURITY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "security"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private evictOldScans()V
    .registers 7

    .line 666
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 667
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 668
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 670
    iget-wide v2, v2, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-lez v2, :cond_e

    .line 671
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_e

    :cond_2b
    return-void
.end method

.method private fetchScansAndConfigsAndUpdateAccessPoints()V
    .registers 4

    .line 699
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mIsViceWifi:Z

    if-eqz v0, :cond_b

    .line 700
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getViceWifiScanResults()Ljava/util/List;

    move-result-object v0

    goto :goto_11

    .line 702
    :cond_b
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 707
    :goto_11
    invoke-direct {p0, v0}, Lcom/android/settingslib/wifi/WifiTracker;->filterScanResultsByCapabilities(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 709
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->isVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetched scan results: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiTracker"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_31
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 714
    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/wifi/WifiTracker;->updateAccessPoints(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private filterScanResultsByCapabilities(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1728
    :cond_4
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isEnhancedOpenSupported()Z

    move-result v0

    .line 1729
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    move-result v1

    .line 1730
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWpa3SuiteBSupported()Z

    move-result p0

    .line 1732
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1736
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1f
    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 1737
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v5, "PSK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 1741
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 1745
    :cond_39
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v5, "SUITE_B_192"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_45

    if-eqz p0, :cond_5d

    :cond_45
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v5, "SAE"

    .line 1746
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_51

    if-eqz v1, :cond_5d

    :cond_51
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v5, "OWE"

    .line 1747
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_86

    if-nez v0, :cond_86

    .line 1748
    :cond_5d
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->isVerboseLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1749
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filterScanResultsByCapabilities: Filtering SSID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " with capabilities: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WifiTracker"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 1754
    :cond_86
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_8a
    return-object v2
.end method

.method private getCachedByKey(Ljava/util/List;Ljava/lang/String;)Lcom/android/settingslib/wifi/AccessPoint;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/settingslib/wifi/AccessPoint;"
        }
    .end annotation

    .line 924
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    .line 925
    :cond_4
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 926
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/wifi/AccessPoint;

    .line 927
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 928
    invoke-interface {p0}, Ljava/util/ListIterator;->remove()V

    return-object p1

    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method private getCachedOrCreate(Ljava/util/List;Ljava/util/List;)Lcom/android/settingslib/wifi/AccessPoint;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;)",
            "Lcom/android/settingslib/wifi/AccessPoint;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 886
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/settingslib/wifi/WifiTracker;->getCachedByKey(Ljava/util/List;Ljava/lang/String;)Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object p2

    if-nez p2, :cond_19

    .line 888
    new-instance p2, Lcom/android/settingslib/wifi/AccessPoint;

    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Ljava/util/Collection;)V

    goto :goto_1c

    .line 890
    :cond_19
    invoke-virtual {p2, p1}, Lcom/android/settingslib/wifi/AccessPoint;->setScanResults(Ljava/util/Collection;)V

    :goto_1c
    return-object p2
.end method

.method private getCachedOrCreateOsu(Landroid/net/wifi/hotspot2/OsuProvider;Ljava/util/List;Ljava/util/List;)Lcom/android/settingslib/wifi/AccessPoint;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/OsuProvider;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;)",
            "Lcom/android/settingslib/wifi/AccessPoint;"
        }
    .end annotation

    .line 914
    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getKey(Landroid/net/wifi/hotspot2/OsuProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/android/settingslib/wifi/WifiTracker;->getCachedByKey(Ljava/util/List;Ljava/lang/String;)Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object p3

    if-nez p3, :cond_12

    .line 916
    new-instance p3, Lcom/android/settingslib/wifi/AccessPoint;

    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/hotspot2/OsuProvider;Ljava/util/Collection;)V

    goto :goto_15

    .line 918
    :cond_12
    invoke-virtual {p3, p2}, Lcom/android/settingslib/wifi/AccessPoint;->setScanResults(Ljava/util/Collection;)V

    :goto_15
    return-object p3
.end method

.method private getCachedOrCreatePasspoint(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/android/settingslib/wifi/AccessPoint;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;)",
            "Lcom/android/settingslib/wifi/AccessPoint;"
        }
    .end annotation

    .line 900
    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getKey(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/android/settingslib/wifi/WifiTracker;->getCachedByKey(Ljava/util/List;Ljava/lang/String;)Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object p4

    if-nez p4, :cond_12

    .line 902
    new-instance p4, Lcom/android/settingslib/wifi/AccessPoint;

    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_18

    .line 904
    :cond_12
    invoke-virtual {p4, p1}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;)V

    .line 905
    invoke-virtual {p4, p2, p3}, Lcom/android/settingslib/wifi/AccessPoint;->setScanResultsPasspoint(Ljava/util/Collection;Ljava/util/Collection;)V

    :goto_18
    return-object p4
.end method

.method private getWifiConfigurationForNetworkId(ILjava/util/List;)Landroid/net/wifi/WifiConfiguration;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)",
            "Landroid/net/wifi/WifiConfiguration;"
        }
    .end annotation

    if-eqz p2, :cond_23

    .line 679
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 680
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_6

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne p1, v1, :cond_6

    iget-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v1, :cond_22

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    if-eqz v1, :cond_6

    :cond_22
    return-object v0

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method private handleFreeWifiQueryComplete(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1533
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "WifiTracker"

    const-string v2, "handleFreeWifiQueryComplete enter"

    .line 1534
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1537
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->DBG()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-direct {p0, v1}, Lcom/android/settingslib/wifi/WifiTracker;->dumpBundleAp(Landroid/os/Bundle;)V

    :cond_25
    const-string/jumbo v2, "ssid"

    .line 1539
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "security"

    .line 1540
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settingslib/wifi/WifiTracker;->switchSecToStr(I)Ljava/lang/String;

    move-result-object v3

    .line 1541
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settingslib/wifi/FreeWifiApInfo;

    invoke-direct {v3, v1}, Lcom/android/settingslib/wifi/FreeWifiApInfo;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 1544
    :cond_4e
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1545
    :try_start_51
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_57
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/wifi/AccessPoint;

    .line 1546
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settingslib/wifi/WifiTracker;->switchSecToStr(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/wifi/FreeWifiApInfo;

    if-eqz v3, :cond_a0

    const-string v4, "WifiTracker"

    .line 1548
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleFreeWifiQueryComplete apInfo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/FreeWifiApInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    :cond_a0
    invoke-virtual {v2, v3}, Lcom/android/settingslib/wifi/AccessPoint;->setFreeWifiApInfo(Lcom/android/settingslib/wifi/FreeWifiApInfo;)Z

    goto :goto_57

    .line 1554
    :cond_a4
    monitor-exit p1

    return-void

    :catchall_a6
    move-exception p0

    monitor-exit p1
    :try_end_a8
    .catchall {:try_start_51 .. :try_end_a8} :catchall_a6

    throw p0
.end method

.method private handleLoginStateChange(I)V
    .registers 5

    .line 1372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoginCallBack state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastConnectFreeWifi:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_39

    .line 1374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoginCallBack state mLastConnectFreeWifi"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastConnectFreeWifi:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastConnectFreeWifi:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->setLoginState(I)V

    :cond_39
    return-void
.end method

.method private initFreeWifi()V
    .registers 3

    .line 1489
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->preLoadService()V

    .line 1490
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFreeWifiEnabled:Z

    .line 1495
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFreeWifiManager:Lcom/android/settingslib/wifi/FreeWifiManager;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/FreeWifiManager;->isFreeWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mIsViceWifi:Z

    if-nez v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFreeWifiEnabled:Z

    if-eqz v0, :cond_1f

    .line 1497
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFreeWifiEnabled:Z

    if-nez v0, :cond_1f

    .line 1499
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->resetFreeWifiAccessPoint()V

    :cond_1f
    return-void
.end method

.method private isDualWifiEnabledState()Z
    .registers 3

    .line 1763
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "dual_wifi_enabled"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_11

    move v0, v1

    :cond_11
    return v0
.end method

.method private static isVerboseLoggingEnabled()Z
    .registers 2

    .line 118
    sget-boolean v0, Lcom/android/settingslib/wifi/WifiTracker;->sVerboseLogging:Z

    if-nez v0, :cond_10

    const/4 v0, 0x2

    const-string v1, "WifiTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    return v0
.end method

.method private static newIntentFilter()Landroid/content/IntentFilter;
    .registers 2

    .line 218
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 219
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    .line 220
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    .line 221
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    .line 222
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    .line 223
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    .line 224
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 225
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.vicewifi.STATE_CHANGE"

    .line 227
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    .line 228
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.AUTH_PASSWORD_WRONG"

    .line 230
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method private newViceWifiIntentFilter()Landroid/content/IntentFilter;
    .registers 2

    .line 237
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.net.vicewifi.WIFI_STATE_CHANGED"

    .line 238
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.SCAN_RESULTS"

    .line 239
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.vicewifi.supplicant.STATE_CHANGE"

    .line 240
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    .line 241
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.vicewifi.LINK_CONFIGURATION_CHANGED"

    .line 242
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.vicewifi.STATE_CHANGE"

    .line 243
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.vicewifi.RSSI_CHANGED"

    .line 244
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 245
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0
.end method

.method private pauseScanning()V
    .registers 3

    .line 401
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 402
    :try_start_3
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    if-eqz v1, :cond_f

    .line 403
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->pause()V

    const/4 v1, 0x0

    .line 404
    iput-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    .line 406
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    const/4 v0, 0x1

    .line 407
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mStaleScanResults:Z

    return-void

    :catchall_14
    move-exception p0

    .line 406
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p0
.end method

.method private preLoadService()V
    .registers 5

    .line 1482
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1483
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.meizu.wifiadmin"

    const-string v3, "com.meizu.wifiadmin.service.FreeWifiService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "com.meizu.wifiadmin.service.FREEWIFISERVICE"

    .line 1484
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1485
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private queryFreeWifi()V
    .registers 4

    .line 1505
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFreeWifiManager:Lcom/android/settingslib/wifi/FreeWifiManager;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/FreeWifiManager;->isFreeWifiEnabled()Z

    move-result v0

    const-string v1, "WifiTracker"

    if-nez v0, :cond_10

    const-string p0, "The feature of free wifi is not enabled."

    .line 1506
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1511
    :cond_10
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mIsViceWifi:Z

    if-eqz v0, :cond_1a

    const-string p0, "queryFreeWifi vice wifi not support free wifi"

    .line 1512
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1517
    :cond_1a
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFreeWifiService:Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;

    if-eqz v0, :cond_49

    :try_start_1e
    const-string v0, "queryFreeWifi before"

    .line 1519
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1522
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFreeWifiService:Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;

    invoke-interface {p0}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;->remoteQuery()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_30} :catch_31

    :cond_30
    return-void

    :catch_31
    move-exception p0

    .line 1526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query failed with exception "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_49
    return-void
.end method

.method private registerFreeWifiService()V
    .registers 5

    .line 1404
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFreeWifiManager:Lcom/android/settingslib/wifi/FreeWifiManager;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/FreeWifiManager;->isFreeWifiEnabled()Z

    move-result v0

    const-string v1, "WifiTracker"

    if-nez v0, :cond_10

    const-string p0, "The free wifi is not enabled."

    .line 1405
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1410
    :cond_10
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mIsViceWifi:Z

    if-eqz v0, :cond_1a

    const-string p0, "registerFreeWifiService vice wifi not support free wifi"

    .line 1411
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1416
    :cond_1a
    new-instance v0, Lcom/android/settingslib/wifi/WifiTracker$4;

    invoke-direct {v0, p0}, Lcom/android/settingslib/wifi/WifiTracker$4;-><init>(Lcom/android/settingslib/wifi/WifiTracker;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFreeWifiServiceConn:Landroid/content/ServiceConnection;

    .line 1453
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.meizu.wifiadmin.service.FREEWIFISERVICE"

    .line 1454
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1455
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.meizu.wifiadmin"

    const-string v3, "com.meizu.wifiadmin.service.FreeWifiService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1456
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFreeWifiServiceConn:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private registerScoreCache()V
    .registers 4

    .line 513
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p0, v2}, Landroid/net/NetworkScoreManager;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V

    return-void
.end method

.method private requestScoresForNetworkKeys(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/NetworkKey;",
            ">;)V"
        }
    .end annotation

    .line 520
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 522
    :cond_7
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->DBG()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting scores for Network Keys: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_23
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/NetworkKey;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/NetworkKey;

    invoke-virtual {v0, v1}, Landroid/net/NetworkScoreManager;->requestScores([Landroid/net/NetworkKey;)Z

    .line 526
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 527
    :try_start_37
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRequestedScores:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 528
    monitor-exit v0

    return-void

    :catchall_3e
    move-exception p0

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_3e

    throw p0
.end method

.method private resetFreeWifiAccessPoint()V
    .registers 4

    .line 1593
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1596
    :try_start_3
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/wifi/AccessPoint;

    .line 1597
    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getFreeWifiApInfo()Lcom/android/settingslib/wifi/FreeWifiApInfo;

    move-result-object v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    .line 1599
    invoke-virtual {v1, v2}, Lcom/android/settingslib/wifi/AccessPoint;->setFreeWifiApInfo(Lcom/android/settingslib/wifi/FreeWifiApInfo;)Z

    goto :goto_9

    .line 1608
    :cond_20
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p0
.end method

.method private switchSecToStr(I)Ljava/lang/String;
    .registers 3

    const-string p0, "_NONE"

    if-eqz p1, :cond_23

    const/4 v0, 0x1

    if-eq p1, v0, :cond_21

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x7

    if-eq p1, v0, :cond_18

    const/16 v0, 0x8

    if-eq p1, v0, :cond_15

    return-object p0

    :cond_15
    const-string p0, "_WAPI_CERT"

    return-object p0

    :cond_18
    const-string p0, "_WAPI_PSK"

    return-object p0

    :cond_1b
    const-string p0, "_EAP"

    return-object p0

    :cond_1e
    const-string p0, "_PSK"

    return-object p0

    :cond_21
    const-string p0, "_WEP"

    :cond_23
    return-object p0
.end method

.method private unregisterFreeWifiService(Z)V
    .registers 6

    .line 1460
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFreeWifiService:Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 1464
    :try_start_5
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFreeWifiRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    if-eqz p1, :cond_18

    .line 1466
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFreeWifiService:Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRemoteCallback:Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback;

    invoke-interface {p1, v0}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;->unRegisterCallback(Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback;)V

    .line 1469
    :cond_18
    iput-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFreeWifiService:Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception p1

    .line 1471
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1475
    :cond_1f
    :goto_1f
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFreeWifiServiceConn:Landroid/content/ServiceConnection;

    if-eqz p1, :cond_2a

    .line 1476
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1477
    iput-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFreeWifiServiceConn:Landroid/content/ServiceConnection;

    :cond_2a
    return-void
.end method

.method private unregisterScoreCache()V
    .registers 4

    .line 561
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/net/NetworkScoreManager;->unregisterNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V

    .line 568
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 569
    :try_start_b
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRequestedScores:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 570
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_12

    throw p0
.end method

.method private updateAccessPoints(Ljava/util/List;Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 722
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    if-eqz p2, :cond_3e

    .line 724
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 725
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAccessPoint,accessPoint.getKey() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getKey(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WifiTracker"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    invoke-static {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getKey(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_3e
    const/4 v1, 0x0

    .line 731
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_4b

    .line 732
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/android/settingslib/wifi/WifiTracker;->getWifiConfigurationForNetworkId(ILjava/util/List;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 737
    :cond_4b
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 739
    :try_start_4e
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->updateScanResultCache(Ljava/util/List;)Landroid/util/ArrayMap;

    move-result-object p1

    .line 742
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "WifiTracker"

    .line 743
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateAccessPoints,cachedAccessPoints = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 746
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 748
    invoke-virtual {p1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_82
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_f2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 751
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v7

    :cond_9b
    :goto_9b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/ScanResult;

    .line 752
    invoke-static {v10}, Landroid/net/NetworkKey;->createFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/NetworkKey;

    move-result-object v11

    if-eqz v11, :cond_b8

    .line 753
    iget-object v12, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRequestedScores:Ljava/util/Set;

    invoke-interface {v12, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b8

    .line 754
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    :cond_b8
    invoke-static {v10}, Lcom/android/settingslib/wifi/AccessPoint;->checkForOweTransitionMode(Landroid/net/wifi/ScanResult;)Z

    move-result v11

    if-eqz v11, :cond_bf

    move v7, v6

    .line 759
    :cond_bf
    invoke-static {v10}, Lcom/android/settingslib/wifi/AccessPoint;->checkForSaeTransitionMode(Landroid/net/wifi/ScanResult;)Z

    move-result v10

    if-eqz v10, :cond_9b

    move v9, v6

    goto :goto_9b

    .line 765
    :cond_c7
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {p0, v6, v2}, Lcom/android/settingslib/wifi/WifiTracker;->getCachedOrCreate(Ljava/util/List;Ljava/util/List;)Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v6

    .line 769
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    if-nez v7, :cond_df

    if-eqz v9, :cond_eb

    :cond_df
    if-nez v5, :cond_eb

    .line 771
    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->getFallbackKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 773
    :cond_eb
    invoke-virtual {v6, v5}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;)V

    .line 775
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_82

    .line 778
    :cond_f2
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 781
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 782
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->getAllMatchingWifiConfigs(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 781
    invoke-virtual {p0, v0, v2}, Lcom/android/settingslib/wifi/WifiTracker;->updatePasspointAccessPoints(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 785
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 786
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->getMatchingOsuProviders(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 785
    invoke-virtual {p0, p1, v2}, Lcom/android/settingslib/wifi/WifiTracker;->updateOsuAccessPoints(Ljava/util/Map;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 788
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p1, :cond_137

    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz p1, :cond_137

    .line 789
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_123
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_137

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/AccessPoint;

    .line 790
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    goto :goto_123

    .line 796
    :cond_137
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_159

    if-eqz v1, :cond_159

    .line 797
    new-instance p1, Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, v1}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 798
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p1, v1, v0, v2}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    .line 799
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-static {p1}, Landroid/net/NetworkKey;->createFromWifiInfo(Landroid/net/wifi/WifiInfo;)Landroid/net/NetworkKey;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 803
    :cond_159
    invoke-direct {p0, v4}, Lcom/android/settingslib/wifi/WifiTracker;->requestScoresForNetworkKeys(Ljava/util/Collection;)V

    .line 804
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_160
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_176

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/AccessPoint;

    .line 805
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    iget-boolean v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkScoringUiEnabled:Z

    iget-wide v4, p0, Lcom/android/settingslib/wifi/WifiTracker;->mMaxSpeedLabelScoreCacheAge:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiNetworkScoreCache;ZJ)Z

    goto :goto_160

    .line 809
    :cond_176
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 812
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->isVerboseLoggingEnabled()Z

    move-result p1

    if-eqz p1, :cond_1e4

    const-string p1, "WifiTracker"

    const-string v0, "------ Dumping AccessPoints that were not seen on this scan ------"

    .line 813
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18c
    :goto_18c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1dd

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/AccessPoint;

    .line 816
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 818
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1be

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/wifi/AccessPoint;

    .line 819
    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getTitle()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1a0

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 820
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a0

    move v1, v6

    goto :goto_1bf

    :cond_1be
    move v1, v7

    :goto_1bf
    if-nez v1, :cond_18c

    const-string v1, "WifiTracker"

    .line 826
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Did not find "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in this scan"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18c

    :cond_1dd
    const-string p1, "WifiTracker"

    const-string v0, "---- Done dumping AccessPoints that were not seen on this scan ----"

    .line 828
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :cond_1e4
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 833
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 834
    monitor-exit p2
    :try_end_1ef
    .catchall {:try_start_4e .. :try_end_1ef} :catchall_1f3

    .line 835
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->conditionallyNotifyListeners()V

    return-void

    :catchall_1f3
    move-exception p0

    .line 834
    :try_start_1f4
    monitor-exit p2
    :try_end_1f5
    .catchall {:try_start_1f4 .. :try_end_1f5} :catchall_1f3

    throw p0
.end method

.method private updateNetworkInfo(Landroid/net/NetworkInfo;)V
    .registers 12

    .line 941
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_103

    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mIsViceWifi:Z

    if-eqz v0, :cond_18

    .line 942
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->isDualWifiEnabledState()Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_103

    :cond_18
    if-eqz p1, :cond_4f

    .line 949
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 950
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->DBG()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastNetworkInfo set: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_3a
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eq v0, p1, :cond_4f

    .line 955
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->onConnectedChanged()V

    :cond_4f
    const/4 p1, 0x0

    .line 965
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mIsViceWifi:Z

    if-eqz v0, :cond_5d

    .line 966
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getViceWifiConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    goto :goto_65

    .line 968
    :cond_5d
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 971
    :goto_65
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->DBG()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastInfo set as: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :cond_83
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_95

    .line 975
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p1

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 976
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 975
    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/wifi/WifiTracker;->getWifiConfigurationForNetworkId(ILjava/util/List;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 982
    :cond_95
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 983
    :try_start_98
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_a2
    if-ltz v1, :cond_d5

    .line 984
    iget-object v5, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/wifi/AccessPoint;

    .line 985
    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v6

    .line 986
    iget-object v7, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v8, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5, p1, v7, v8}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    move-result v7

    if-eqz v7, :cond_c4

    .line 988
    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v4

    if-eq v6, v4, :cond_c3

    move v3, v2

    move v4, v3

    goto :goto_c4

    :cond_c3
    move v4, v2

    .line 990
    :cond_c4
    :goto_c4
    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    iget-boolean v7, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkScoringUiEnabled:Z

    iget-wide v8, p0, Lcom/android/settingslib/wifi/WifiTracker;->mMaxSpeedLabelScoreCacheAge:J

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiNetworkScoreCache;ZJ)Z

    move-result v5

    if-eqz v5, :cond_d2

    move v3, v2

    move v4, v3

    :cond_d2
    add-int/lit8 v1, v1, -0x1

    goto :goto_a2

    :cond_d5
    if-eqz v3, :cond_dc

    .line 997
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_dc
    if-eqz v4, :cond_e1

    .line 1000
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->conditionallyNotifyListeners()V

    .line 1004
    :cond_e1
    iget-boolean p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mStaleScanResults:Z

    if-eqz p1, :cond_fe

    sget-object p1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 1005
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    if-eq p1, v1, :cond_f9

    sget-object p1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 1006
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    if-ne p1, v1, :cond_fe

    .line 1007
    :cond_f9
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->onAccessPointsChanged()V

    .line 1010
    :cond_fe
    monitor-exit v0

    return-void

    :catchall_100
    move-exception p0

    monitor-exit v0
    :try_end_102
    .catchall {:try_start_98 .. :try_end_102} :catchall_100

    throw p0

    .line 944
    :cond_103
    :goto_103
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->clearAccessPointsAndConditionallyUpdate()V

    return-void
.end method

.method private updateNetworkScores()V
    .registers 9

    .line 1035
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 1037
    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_25

    .line 1038
    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v4, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    iget-boolean v5, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkScoringUiEnabled:Z

    iget-wide v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mMaxSpeedLabelScoreCacheAge:J

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiNetworkScoreCache;ZJ)Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 v2, 0x1

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_25
    if-eqz v2, :cond_2f

    .line 1044
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1045
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->conditionallyNotifyListeners()V

    .line 1047
    :cond_2f
    monitor-exit v0

    return-void

    :catchall_31
    move-exception p0

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_31

    throw p0
.end method

.method private updatePriNetowrkForViceSettings(Landroid/net/NetworkInfo;)V
    .registers 5

    .line 1823
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->isWifiEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1824
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    invoke-virtual {p0, v1}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->onOtherWifiConnectionChanged(Landroid/net/NetworkInfo;)V

    return-void

    :cond_d
    if-eqz p1, :cond_26

    .line 1829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePriNetowrkForViceSettings info: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WifiTracker"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    if-eqz p1, :cond_36

    .line 1832
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 1833
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    if-ne v0, v2, :cond_36

    .line 1834
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->onOtherWifiConnectionChanged(Landroid/net/NetworkInfo;)V

    goto :goto_3b

    .line 1837
    :cond_36
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    invoke-virtual {p0, v1}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->onOtherWifiConnectionChanged(Landroid/net/NetworkInfo;)V

    :goto_3b
    return-void
.end method

.method private updateScanResultCache(Ljava/util/List;)Landroid/util/ArrayMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;>;"
        }
    .end annotation

    .line 619
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 620
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_4

    .line 623
    :cond_1b
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    iget-object v2, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 627
    :cond_23
    iget-boolean p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mStaleScanResults:Z

    if-nez p1, :cond_32

    const-string p1, "WifiTracker"

    const-string/jumbo v0, "udpateScanResultCache,evict old scan results!"

    .line 628
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->evictOldScans()V

    .line 632
    :cond_32
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 633
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_41
    :goto_41
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 635
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_41

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "[IBSS]"

    .line 636
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_62

    goto :goto_41

    .line 640
    :cond_62
    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v1

    .line 642
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 643
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_7c

    .line 645
    :cond_73
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 646
    invoke-virtual {p1, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    .line 649
    :goto_7c
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_80
    return-object p1
.end method

.method private updateViceNetworkForPriSetting(Landroid/net/NetworkInfo;)V
    .registers 12

    .line 1769
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_c7

    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mIsViceWifi:Z

    if-eqz v0, :cond_18

    .line 1770
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->isDualWifiEnabledState()Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_c7

    :cond_18
    if-eqz p1, :cond_31

    .line 1777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateViceNetworkForPriSetting info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    const/4 v0, 0x0

    .line 1783
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getViceWifiConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 1785
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->DBG()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 1786
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateViceNetworkForPriSetting viceInfo is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WifiTracker"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    if-eqz v1, :cond_65

    .line 1789
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1790
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 1789
    invoke-direct {p0, v0, v2}, Lcom/android/settingslib/wifi/WifiTracker;->getWifiConfigurationForNetworkId(ILjava/util/List;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1796
    :cond_65
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1797
    :try_start_68
    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    move v6, v5

    :goto_72
    if-ltz v3, :cond_93

    .line 1798
    iget-object v7, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/wifi/AccessPoint;

    .line 1799
    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v8

    .line 1800
    invoke-virtual {v7, v0, v1, p1}, Lcom/android/settingslib/wifi/AccessPoint;->updateViceAp(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    move-result v9

    if-eqz v9, :cond_90

    .line 1802
    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v6

    if-eq v8, v6, :cond_8f

    move v5, v4

    move v6, v5

    goto :goto_90

    :cond_8f
    move v6, v4

    :cond_90
    :goto_90
    add-int/lit8 v3, v3, -0x1

    goto :goto_72

    :cond_93
    if-eqz v5, :cond_9a

    .line 1807
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_9a
    if-eqz v6, :cond_9f

    .line 1810
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->conditionallyNotifyListeners()V

    .line 1813
    :cond_9f
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mStaleScanResults:Z

    if-eqz v0, :cond_c2

    if-eqz p1, :cond_c2

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 1814
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    if-eq v0, v1, :cond_bd

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    .line 1815
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    if-eq v0, v1, :cond_bd

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 1816
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    if-ne v0, p1, :cond_c2

    .line 1817
    :cond_bd
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->onAccessPointsChanged()V

    .line 1819
    :cond_c2
    monitor-exit v2

    return-void

    :catchall_c4
    move-exception p0

    monitor-exit v2
    :try_end_c6
    .catchall {:try_start_68 .. :try_end_c6} :catchall_c4

    throw p0

    .line 1771
    :cond_c7
    :goto_c7
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->clearAccessPointsAndConditionallyUpdate()V

    return-void
.end method

.method private updateWifiState(I)V
    .registers 4

    .line 1143
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->isVerboseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateWifiState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    const/4 v0, 0x3

    if-ne p1, v0, :cond_31

    .line 1147
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1148
    :try_start_23
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    if-eqz v1, :cond_2c

    .line 1151
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->resume()V

    .line 1153
    :cond_2c
    monitor-exit v0

    goto :goto_49

    :catchall_2e
    move-exception p0

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_23 .. :try_end_30} :catchall_2e

    throw p0

    .line 1155
    :cond_31
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->clearAccessPointsAndConditionallyUpdate()V

    const/4 v0, 0x0

    .line 1156
    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 1157
    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 1158
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1159
    :try_start_3c
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    if-eqz v1, :cond_45

    .line 1160
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->pause()V

    .line 1162
    :cond_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_4f

    const/4 v0, 0x1

    .line 1163
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mStaleScanResults:Z

    .line 1165
    :goto_49
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->onWifiStateChanged(I)V

    return-void

    :catchall_4f
    move-exception p0

    .line 1162
    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw p0
.end method


# virtual methods
.method public connect(Lcom/android/settingslib/wifi/AccessPoint;)V
    .registers 4

    if-eqz p1, :cond_12

    .line 1612
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastConnectFreeWifi:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_12

    .line 1614
    invoke-virtual {p1, v0}, Lcom/android/settingslib/wifi/AccessPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1615
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastConnectFreeWifi:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/wifi/AccessPoint;->setLoginState(I)V

    .line 1617
    :cond_12
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastConnectFreeWifi:Lcom/android/settingslib/wifi/AccessPoint;

    .line 1619
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFreeWifiManager:Lcom/android/settingslib/wifi/FreeWifiManager;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/FreeWifiManager;->isFreeWifiEnabled()Z

    move-result v0

    const-string v1, "WifiTracker"

    if-nez v0, :cond_24

    const-string p0, "The feature of free wifi is not enabled when connect."

    .line 1620
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_24
    if-nez p1, :cond_2c

    const-string p0, "connect free wifi ap is null"

    .line 1625
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1627
    :cond_2c
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getFreeWifiApInfo()Lcom/android/settingslib/wifi/FreeWifiApInfo;

    move-result-object v0

    if-nez v0, :cond_38

    const-string p0, "connect free wifi ap getfreewifi info is null"

    .line 1628
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1632
    :cond_38
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFreeWifiService:Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;

    if-nez v0, :cond_42

    const-string p0, "The service is null."

    .line 1633
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1638
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getFreeWifiApInfo()Lcom/android/settingslib/wifi/FreeWifiApInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/wifi/FreeWifiApInfo;->getBundle(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/os/Bundle;

    move-result-object p1

    .line 1639
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->DBG()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->dumpBundleAp(Landroid/os/Bundle;)V

    .line 1640
    :cond_53
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFreeWifiService:Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;

    invoke-interface {p0, p1}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;->remoteConnect(Landroid/os/Bundle;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_58} :catch_59

    return-void

    :catch_59
    move-exception p0

    const-string p1, "connect failed with exception "

    .line 1643
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    const-string v0, "  - wifi tracker ------"

    .line 609
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/AccessPoint;

    .line 611
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d

    :cond_2e
    return-void
.end method

.method forceUpdate()V
    .registers 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 499
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mIsViceWifi:Z

    if-eqz v0, :cond_13

    .line 500
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getViceWifiConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 501
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getViceCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    goto :goto_21

    .line 503
    :cond_13
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 504
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    .line 507
    :goto_21
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 509
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->fetchScansAndConfigsAndUpdateAccessPoints()V

    return-void
.end method

.method public getAccessPoints()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 582
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception p0

    .line 583
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public getManager()Landroid/net/wifi/WifiManager;
    .registers 1

    .line 587
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method public isWifiEnabled()Z
    .registers 1

    .line 591
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public onDestroy()V
    .registers 1

    .line 374
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public onStart()V
    .registers 7

    .line 443
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->forceUpdate()V

    .line 445
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->registerScoreCache()V

    .line 447
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->initFreeWifi()V

    .line 450
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    .line 452
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "network_scoring_ui_enabled"

    .line 451
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1a

    move v1, v2

    :cond_1a
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkScoringUiEnabled:Z

    .line 455
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    .line 457
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/32 v3, 0x124f80

    const-string/jumbo v1, "speed_label_cache_eviction_age_millis"

    .line 456
    invoke-static {v0, v1, v3, v4}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mMaxSpeedLabelScoreCacheAge:J

    .line 461
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->resumeScanning()V

    .line 463
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRegistered:Z

    if-nez v0, :cond_58

    .line 465
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->registerFreeWifiService()V

    .line 475
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    iget-object v4, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWorkHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 477
    new-instance v0, Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;

    invoke-direct {v0, p0, v5}, Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;-><init>(Lcom/android/settingslib/wifi/WifiTracker;Lcom/android/settingslib/wifi/WifiTracker$1;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkCallback:Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;

    .line 478
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkCallback:Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;

    iget-object v4, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v3, v4}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 480
    iput-boolean v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRegistered:Z

    :cond_58
    return-void
.end method

.method public onStop()V
    .registers 3

    .line 544
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRegistered:Z

    if-eqz v0, :cond_21

    .line 545
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x1

    .line 547
    invoke-direct {p0, v0}, Lcom/android/settingslib/wifi/WifiTracker;->unregisterFreeWifiService(Z)V

    .line 549
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFreeWifiManager:Lcom/android/settingslib/wifi/FreeWifiManager;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/FreeWifiManager;->isFreeWifiEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFreeWifiEnabled:Z

    .line 551
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkCallback:Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    .line 552
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRegistered:Z

    .line 554
    :cond_21
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->unregisterScoreCache()V

    .line 555
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->pauseScanning()V

    .line 557
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWorkHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public resumeScanning()V
    .registers 3

    .line 416
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 417
    :try_start_3
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    if-nez v1, :cond_e

    .line 418
    new-instance v1, Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    invoke-direct {v1, p0}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;-><init>(Lcom/android/settingslib/wifi/WifiTracker;)V

    iput-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    .line 425
    :cond_e
    iget-boolean v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mIsViceWifi:Z

    if-nez v1, :cond_18

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_28

    :cond_18
    iget-boolean v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mIsViceWifi:Z

    if-eqz v1, :cond_2d

    .line 426
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->isDualWifiEnabledState()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 428
    :cond_28
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->resume()V

    .line 430
    :cond_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method setWorkThread(Landroid/os/HandlerThread;)V
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 357
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWorkThread:Landroid/os/HandlerThread;

    .line 358
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWorkHandler:Landroid/os/Handler;

    .line 359
    new-instance p1, Landroid/net/wifi/WifiNetworkScoreCache;

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/settingslib/wifi/WifiTracker$1;

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWorkHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/wifi/WifiTracker$1;-><init>(Lcom/android/settingslib/wifi/WifiTracker;Landroid/os/Handler;)V

    invoke-direct {p1, v0, v1}, Landroid/net/wifi/WifiNetworkScoreCache;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;)V

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    return-void
.end method

.method updateOsuAccessPoints(Ljava/util/Map;Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/net/wifi/hotspot2/OsuProvider;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .line 867
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 869
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 871
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 870
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->getMatchingPasspointConfigsForOsuProviders(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v1

    .line 871
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 872
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/hotspot2/OsuProvider;

    .line 873
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 875
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {p0, v3, v4, p2}, Lcom/android/settingslib/wifi/WifiTracker;->getCachedOrCreateOsu(Landroid/net/wifi/hotspot2/OsuProvider;Ljava/util/List;Ljava/util/List;)Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v3

    .line 877
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_3b
    return-object v0
.end method

.method updatePasspointAccessPoints(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/net/wifi/WifiConfiguration;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;>;>;>;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .line 842
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 844
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 846
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 847
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 848
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 849
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    const/4 v5, 0x0

    .line 850
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 851
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    const/4 v5, 0x1

    .line 852
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 855
    invoke-direct {p0, v3, v4, v2, p2}, Lcom/android/settingslib/wifi/WifiTracker;->getCachedOrCreatePasspoint(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v2

    .line 857
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_4c
    return-object v0
.end method
