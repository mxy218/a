.class public Lcom/android/systemui/statusbar/policy/FiveGServiceClient;
.super Ljava/lang/Object;
.source "FiveGServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/FiveGServiceClient$IFiveGStateListener;,
        Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static sInstance:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;


# instance fields
.field private mBindRetryTimes:I

.field protected mCallback:Lorg/codeaurora/internal/INetworkCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mClient:Lorg/codeaurora/internal/Client;

.field private mContext:Landroid/content/Context;

.field private final mCurrentServiceStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInitRetryTimes:I

.field private final mKeyguardUpdateMonitorCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/keyguard/KeyguardUpdateMonitorCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLastServiceStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

.field private mPackageName:Ljava/lang/String;

.field private mServiceConnected:Z

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field final mStatesListeners:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/policy/FiveGServiceClient$IFiveGStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "FiveGServiceClient"

    const/4 v1, 0x3

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mKeyguardUpdateMonitorCallbacks:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mStatesListeners:Landroid/util/SparseArray;

    .line 99
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mCurrentServiceStates:Landroid/util/SparseArray;

    .line 100
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mLastServiceStates:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 107
    iput v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mBindRetryTimes:I

    .line 108
    iput v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mInitRetryTimes:I

    .line 357
    new-instance v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$1;-><init>(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mHandler:Landroid/os/Handler;

    .line 377
    new-instance v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$2;-><init>(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 419
    new-instance v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;-><init>(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mCallback:Lorg/codeaurora/internal/INetworkCallback;

    .line 173
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mContext:Landroid/content/Context;

    .line 174
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)I
    .registers 1

    .line 77
    iget p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mBindRetryTimes:I

    return p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Landroid/os/Handler;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1200()Z
    .registers 1

    .line 77
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;ILcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)V
    .registers 3

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->updateLevel(ILcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;I)V
    .registers 2

    .line 77
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->notifyListenersIfNecessary(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V
    .registers 1

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->binderService()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V
    .registers 1

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->initFiveGServiceState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V
    .registers 1

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->notifyMonitorCallback()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Lorg/codeaurora/internal/IExtTelephony;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;Lorg/codeaurora/internal/IExtTelephony;)Lorg/codeaurora/internal/IExtTelephony;
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Lorg/codeaurora/internal/Client;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mClient:Lorg/codeaurora/internal/Client;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;Lorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Client;
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mClient:Lorg/codeaurora/internal/Client;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Ljava/lang/String;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;Z)Z
    .registers 2

    .line 77
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mServiceConnected:Z

    return p1
.end method

.method private binderService()V
    .registers 5

    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {v0, v1}, Lorg/codeaurora/internal/ServiceUtil;->bindService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v0

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " bind service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FiveGServiceClient"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_41

    .line 211
    iget v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mBindRetryTimes:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_41

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_41

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mBindRetryTimes:I

    mul-int/lit16 v2, v2, 0x7d0

    add-int/lit16 v2, v2, 0xbb8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 214
    iget v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mBindRetryTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mBindRetryTimes:I

    :cond_41
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/FiveGServiceClient;
    .registers 2

    .line 178
    sget-object v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->sInstance:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    if-nez v0, :cond_b

    .line 179
    new-instance v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->sInstance:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    .line 182
    :cond_b
    sget-object p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->sInstance:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    return-object p0
.end method

.method private getLastServiceState(I)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;
    .registers 2

    .line 228
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mLastServiceStates:Landroid/util/SparseArray;

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getServiceState(ILandroid/util/SparseArray;)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    move-result-object p0

    return-object p0
.end method

.method private getNrIconGroup(II)Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .registers 3

    .line 336
    sget-object p0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/4 p2, 0x1

    if-eq p1, p2, :cond_c

    const/4 p2, 0x2

    if-eq p1, p2, :cond_9

    goto :goto_e

    .line 342
    :cond_9
    sget-object p0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FIVE_G_UWB:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_e

    .line 339
    :cond_c
    sget-object p0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FIVE_G_BASIC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    :goto_e
    return-object p0
.end method

.method private static getServiceState(ILandroid/util/SparseArray;)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;",
            ">;)",
            "Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;"
        }
    .end annotation

    .line 233
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    if-nez v0, :cond_10

    .line 235
    new-instance v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;-><init>()V

    .line 236
    invoke-virtual {p1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_10
    return-object v0
.end method

.method private initFiveGServiceState()V
    .registers 3

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initFiveGServiceState size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mStatesListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FiveGServiceClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 265
    :goto_1d
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mStatesListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 266
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mStatesListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 267
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->initFiveGServiceState(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_31
    return-void
.end method

.method private initFiveGServiceState(I)V
    .registers 7

    const-string v0, "initFiveGServiceState: Exception = "

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNetworkService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mClient="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mClient:Lorg/codeaurora/internal/Client;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FiveGServiceClient"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    if-eqz v1, :cond_d7

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mClient:Lorg/codeaurora/internal/Client;

    if-eqz v1, :cond_d7

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query 5G service state for phoneId "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :try_start_40
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->queryNrSignalStrength(I)V

    .line 278
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v1, p1, v3}, Lorg/codeaurora/internal/IExtTelephony;->query5gConfigInfo(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v1

    .line 279
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query5gConfigInfo result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v1, p1, v3}, Lorg/codeaurora/internal/IExtTelephony;->queryNrIconType(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object p1

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryNrIconType result:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catch Landroid/os/DeadObjectException; {:try_start_40 .. :try_end_7b} :catch_b1
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_7b} :catch_7c

    goto :goto_d7

    :catch_7c
    move-exception p1

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mInitRetryTimes:I

    const/4 v0, 0x4

    if-ge p1, v0, :cond_d7

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x401

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_d7

    .line 294
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mInitRetryTimes:I

    mul-int/lit16 v1, v1, 0x7d0

    add-int/lit16 v1, v1, 0xbb8

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 296
    iget p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mInitRetryTimes:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mInitRetryTimes:I

    goto :goto_d7

    :catch_b1
    move-exception p1

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "try to re-binder service"

    .line 285
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 286
    iput p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mInitRetryTimes:I

    .line 287
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mServiceConnected:Z

    const/4 p1, 0x0

    .line 288
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    .line 289
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mClient:Lorg/codeaurora/internal/Client;

    .line 290
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->binderService()V

    :cond_d7
    :goto_d7
    return-void
.end method

.method private notifyListenersIfNecessary(I)V
    .registers 6

    .line 242
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getCurrentServiceState(I)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    move-result-object v0

    .line 243
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getLastServiceState(I)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    move-result-object v1

    .line 244
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->equals(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 246
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->DEBUG:Z

    if-eqz v2, :cond_38

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") Change in state from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " \n\tto "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FiveGServiceClient"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_38
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->copyFrom(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)V

    .line 253
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mStatesListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$IFiveGStateListener;

    if-eqz p1, :cond_48

    .line 255
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$IFiveGStateListener;->onStateChanged(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)V

    .line 258
    :cond_48
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x402

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4f
    return-void
.end method

.method private notifyMonitorCallback()V
    .registers 3

    const/4 v0, 0x0

    .line 349
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mKeyguardUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 350
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mKeyguardUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_1c

    .line 352
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo()V

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    return-void
.end method

.method private updateLevel(ILcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)V
    .registers 3

    const p0, 0x7fffffff

    if-ne p1, p0, :cond_a

    const/4 p0, 0x0

    .line 323
    invoke-static {p2, p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->access$202(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;I)I

    goto :goto_29

    :cond_a
    const/16 p0, -0x5f

    if-lt p1, p0, :cond_13

    const/4 p0, 0x4

    .line 325
    invoke-static {p2, p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->access$202(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;I)I

    goto :goto_29

    :cond_13
    const/16 p0, -0x69

    if-lt p1, p0, :cond_1c

    const/4 p0, 0x3

    .line 327
    invoke-static {p2, p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->access$202(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;I)I

    goto :goto_29

    :cond_1c
    const/16 p0, -0x73

    if-lt p1, p0, :cond_25

    const/4 p0, 0x2

    .line 329
    invoke-static {p2, p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->access$202(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;I)I

    goto :goto_29

    :cond_25
    const/4 p0, 0x1

    .line 331
    invoke-static {p2, p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->access$202(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;I)I

    :goto_29
    return-void
.end method


# virtual methods
.method public getCurrentServiceState(I)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 224
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mCurrentServiceStates:Landroid/util/SparseArray;

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getServiceState(ILandroid/util/SparseArray;)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    move-result-object p0

    return-object p0
.end method

.method public queryNrSignalStrength(I)V
    .registers 5

    .line 303
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    const-string v1, "query queryNrSignalStrength for phoneId "

    const-string v2, "FiveGServiceClient"

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mClient:Lorg/codeaurora/internal/Client;

    if-eqz v0, :cond_42

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :try_start_1e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v0, p1, p0}, Lorg/codeaurora/internal/IExtTelephony;->queryNrSignalStrength(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object p0

    .line 307
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "queryNrSignalStrength result:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_3a} :catch_3b

    goto :goto_54

    :catch_3b
    move-exception p0

    const-string p1, "queryNrSignalStrength"

    .line 309
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_54

    .line 312
    :cond_42
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_54
    return-void
.end method

.method public registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .registers 3

    .line 186
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mKeyguardUpdateMonitorCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method update5GIcon(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 318
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->access$100(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getNrIconGroup(II)Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->access$002(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;)Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    return-void
.end method
