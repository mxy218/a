.class public Lcom/android/server/power/ThermalManagerService;
.super Lcom/android/server/SystemService;
.source "ThermalManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;,
        Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;,
        Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;,
        Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;,
        Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;
    }
.end annotation


# static fields
.field private static final INVALID_THROTTLING:I = -0x80000000

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

.field private mIsStatusOverride:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field final mService:Landroid/os/IThermalService$Stub;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mStatus:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mTemperatureMap:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/Temperature;",
            ">;"
        }
    .end annotation
.end field

.field private final mThermalEventListeners:Landroid/os/RemoteCallbackList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/IThermalEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mThermalStatusListeners:Landroid/os/RemoteCallbackList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/IThermalStatusListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    const-class v0, Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ThermalManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/ThermalManagerService;-><init>(Landroid/content/Context;Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;)V

    .line 108
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 70
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    .line 76
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    .line 81
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    .line 94
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    .line 101
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 307
    new-instance p1, Lcom/android/server/power/ThermalManagerService$1;

    invoke-direct {p1, p0}, Lcom/android/server/power/ThermalManagerService$1;-><init>(Lcom/android/server/power/ThermalManagerService;)V

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService;->mService:Landroid/os/IThermalService$Stub;

    .line 113
    iput-object p2, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    .line 115
    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/android/server/power/ThermalManagerService;->mStatus:I

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/ThermalManagerService;)Ljava/lang/Object;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/power/ThermalManagerService;)Landroid/os/RemoteCallbackList;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/power/ThermalManagerService;)Landroid/util/ArrayMap;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/power/ThermalManagerService;)V
    .registers 1

    .line 66
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService;->onTemperatureMapChangedLocked()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/power/ThermalManagerService;I)V
    .registers 2

    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/power/ThermalManagerService;->setStatusLocked(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/power/ThermalManagerService;Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V
    .registers 3

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/ThermalManagerService;->postEventListenerCurrentTemperatures(Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/power/ThermalManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/power/ThermalManagerService;)Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/power/ThermalManagerService;)Landroid/os/RemoteCallbackList;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/power/ThermalManagerService;Landroid/os/IThermalStatusListener;)V
    .registers 2

    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/power/ThermalManagerService;->postStatusListener(Landroid/os/IThermalStatusListener;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/power/ThermalManagerService;)I
    .registers 1

    .line 66
    iget p0, p0, Lcom/android/server/power/ThermalManagerService;->mStatus:I

    return p0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .registers 1

    .line 66
    sget-object v0, Lcom/android/server/power/ThermalManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/power/ThermalManagerService;)Z
    .registers 1

    .line 66
    iget-boolean p0, p0, Lcom/android/server/power/ThermalManagerService;->mIsStatusOverride:Z

    return p0
.end method

.method static synthetic access$902(Lcom/android/server/power/ThermalManagerService;Z)Z
    .registers 2

    .line 66
    iput-boolean p1, p0, Lcom/android/server/power/ThermalManagerService;->mIsStatusOverride:Z

    return p1
.end method

.method public static synthetic lambda$9JFHCKCwrnUIYoXDsqNamhlY5VU(Lcom/android/server/power/ThermalManagerService;Landroid/os/Temperature;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/ThermalManagerService;->onTemperatureChangedCallback(Landroid/os/Temperature;)V

    return-void
.end method

.method static synthetic lambda$postEventListener$1(Landroid/os/IThermalEventListener;Landroid/os/Temperature;)V
    .registers 3

    .line 232
    :try_start_0
    invoke-interface {p0, p1}, Landroid/os/IThermalEventListener;->notifyThrottling(Landroid/os/Temperature;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    .line 235
    goto :goto_c

    .line 233
    :catch_4
    move-exception p0

    .line 234
    sget-object p1, Lcom/android/server/power/ThermalManagerService;->TAG:Ljava/lang/String;

    const-string v0, "Thermal callback failed to call"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    :goto_c
    return-void
.end method

.method private notifyEventListenersLocked(Landroid/os/Temperature;)V
    .registers 7

    .line 243
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 245
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_27

    .line 246
    :try_start_a
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    .line 247
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/os/IThermalEventListener;

    .line 248
    iget-object v4, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    .line 249
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 250
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/power/ThermalManagerService;->postEventListener(Landroid/os/Temperature;Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_20

    .line 245
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 253
    :catchall_20
    move-exception p1

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw p1

    :cond_27
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 254
    nop

    .line 255
    const/16 v0, 0xab1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 256
    invoke-virtual {p1}, Landroid/os/Temperature;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/os/Temperature;->getValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    const/4 p1, 0x4

    iget v1, p0, Lcom/android/server/power/ThermalManagerService;->mStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, p1

    .line 255
    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 257
    return-void
.end method

.method private notifyStatusListenersLocked()V
    .registers 4

    .line 175
    iget v0, p0, Lcom/android/server/power/ThermalManagerService;->mStatus:I

    invoke-static {v0}, Landroid/os/Temperature;->isValidStatus(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 176
    return-void

    .line 178
    :cond_9
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 180
    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_27

    .line 181
    :try_start_12
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    .line 182
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/os/IThermalStatusListener;

    .line 183
    invoke-direct {p0, v2}, Lcom/android/server/power/ThermalManagerService;->postStatusListener(Landroid/os/IThermalStatusListener;)V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_20

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 186
    :catchall_20
    move-exception v0

    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0

    :cond_27
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 187
    nop

    .line 188
    return-void
.end method

.method private onActivityManagerReady()V
    .registers 8

    .line 131
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_b

    move v1, v2

    goto :goto_c

    :cond_b
    move v1, v3

    .line 134
    :goto_c
    if-nez v1, :cond_1b

    .line 135
    new-instance v1, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;

    invoke-direct {v1}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    .line 136
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    invoke-virtual {v1}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->connectToHal()Z

    move-result v1

    .line 138
    :cond_1b
    if-nez v1, :cond_2a

    .line 139
    new-instance v1, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;

    invoke-direct {v1}, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    .line 140
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    invoke-virtual {v1}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->connectToHal()Z

    move-result v1

    .line 142
    :cond_2a
    if-nez v1, :cond_39

    .line 143
    new-instance v1, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;

    invoke-direct {v1}, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    .line 144
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    invoke-virtual {v1}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->connectToHal()Z

    move-result v1

    .line 146
    :cond_39
    iget-object v4, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    new-instance v5, Lcom/android/server/power/-$$Lambda$ThermalManagerService$9JFHCKCwrnUIYoXDsqNamhlY5VU;

    invoke-direct {v5, p0}, Lcom/android/server/power/-$$Lambda$ThermalManagerService$9JFHCKCwrnUIYoXDsqNamhlY5VU;-><init>(Lcom/android/server/power/ThermalManagerService;)V

    invoke-virtual {v4, v5}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->setCallback(Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;)V

    .line 147
    if-nez v1, :cond_47

    .line 148
    monitor-exit v0

    return-void

    .line 150
    :cond_47
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    invoke-virtual {v1, v3, v3}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentTemperatures(ZI)Ljava/util/List;

    move-result-object v1

    .line 152
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 153
    move v5, v3

    :goto_52
    if-ge v5, v4, :cond_60

    .line 154
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Temperature;

    invoke-direct {p0, v6, v3}, Lcom/android/server/power/ThermalManagerService;->onTemperatureChanged(Landroid/os/Temperature;Z)V

    .line 153
    add-int/lit8 v5, v5, 0x1

    goto :goto_52

    .line 156
    :cond_60
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService;->onTemperatureMapChangedLocked()V

    .line 157
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 158
    monitor-exit v0

    .line 159
    return-void

    .line 158
    :catchall_6a
    move-exception v1

    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_3 .. :try_end_6c} :catchall_6a

    throw v1
.end method

.method private onTemperatureChanged(Landroid/os/Temperature;Z)V
    .registers 6

    .line 281
    invoke-direct {p0, p1}, Lcom/android/server/power/ThermalManagerService;->shutdownIfNeeded(Landroid/os/Temperature;)V

    .line 282
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_6
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Temperature;

    .line 284
    if-eqz v1, :cond_22

    .line 285
    invoke-virtual {v1}, Landroid/os/Temperature;->getStatus()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result v2

    if-eq v1, v2, :cond_25

    .line 286
    invoke-direct {p0, p1}, Lcom/android/server/power/ThermalManagerService;->notifyEventListenersLocked(Landroid/os/Temperature;)V

    goto :goto_25

    .line 289
    :cond_22
    invoke-direct {p0, p1}, Lcom/android/server/power/ThermalManagerService;->notifyEventListenersLocked(Landroid/os/Temperature;)V

    .line 291
    :cond_25
    :goto_25
    if-eqz p2, :cond_2a

    .line 292
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService;->onTemperatureMapChangedLocked()V

    .line 294
    :cond_2a
    monitor-exit v0

    .line 295
    return-void

    .line 294
    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method private onTemperatureChangedCallback(Landroid/os/Temperature;)V
    .registers 5

    .line 299
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 301
    const/4 v2, 0x1

    :try_start_5
    invoke-direct {p0, p1, v2}, Lcom/android/server/power/ThermalManagerService;->onTemperatureChanged(Landroid/os/Temperature;Z)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    .line 303
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 304
    nop

    .line 305
    return-void

    .line 303
    :catchall_d
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private onTemperatureMapChangedLocked()V
    .registers 6

    .line 191
    nop

    .line 192
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 193
    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_21

    .line 194
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Temperature;

    .line 195
    invoke-virtual {v3}, Landroid/os/Temperature;->getStatus()I

    move-result v4

    if-lt v4, v1, :cond_1e

    .line 196
    invoke-virtual {v3}, Landroid/os/Temperature;->getStatus()I

    move-result v1

    .line 193
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 200
    :cond_21
    iget-boolean v0, p0, Lcom/android/server/power/ThermalManagerService;->mIsStatusOverride:Z

    if-nez v0, :cond_28

    .line 201
    invoke-direct {p0, v1}, Lcom/android/server/power/ThermalManagerService;->setStatusLocked(I)V

    .line 203
    :cond_28
    return-void
.end method

.method private postEventListener(Landroid/os/Temperature;Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V
    .registers 5

    .line 227
    if-eqz p3, :cond_d

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1}, Landroid/os/Temperature;->getType()I

    move-result v0

    if-eq p3, v0, :cond_d

    .line 228
    return-void

    .line 230
    :cond_d
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object p3

    new-instance v0, Lcom/android/server/power/-$$Lambda$ThermalManagerService$x5obtNvJKZxnpguOiQsFBDmBZ4k;

    invoke-direct {v0, p2, p1}, Lcom/android/server/power/-$$Lambda$ThermalManagerService$x5obtNvJKZxnpguOiQsFBDmBZ4k;-><init>(Landroid/os/IThermalEventListener;Landroid/os/Temperature;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    .line 237
    if-nez p1, :cond_23

    .line 238
    sget-object p1, Lcom/android/server/power/ThermalManagerService;->TAG:Ljava/lang/String;

    const-string p2, "Thermal callback failed to queue"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_23
    return-void
.end method

.method private postEventListenerCurrentTemperatures(Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V
    .registers 7

    .line 214
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 216
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1a

    .line 217
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Temperature;

    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/power/ThermalManagerService;->postEventListener(Landroid/os/Temperature;Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 220
    :cond_1a
    monitor-exit v0

    .line 221
    return-void

    .line 220
    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method private postStatusListener(Landroid/os/IThermalStatusListener;)V
    .registers 4

    .line 162
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ZPQKzo9ZjU-hL4QYH693hWuTqjk;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ZPQKzo9ZjU-hL4QYH693hWuTqjk;-><init>(Lcom/android/server/power/ThermalManagerService;Landroid/os/IThermalStatusListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    .line 169
    if-nez p1, :cond_16

    .line 170
    sget-object p1, Lcom/android/server/power/ThermalManagerService;->TAG:Ljava/lang/String;

    const-string v0, "Thermal callback failed to queue"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_16
    return-void
.end method

.method private setStatusLocked(I)V
    .registers 3

    .line 206
    iget v0, p0, Lcom/android/server/power/ThermalManagerService;->mStatus:I

    if-eq p1, v0, :cond_9

    .line 207
    iput p1, p0, Lcom/android/server/power/ThermalManagerService;->mStatus:I

    .line 208
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService;->notifyStatusListenersLocked()V

    .line 210
    :cond_9
    return-void
.end method

.method private shutdownIfNeeded(Landroid/os/Temperature;)V
    .registers 5

    .line 260
    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_8

    .line 261
    return-void

    .line 263
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 264
    invoke-virtual {p1}, Landroid/os/Temperature;->getType()I

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_30

    const/4 v2, 0x1

    if-eq p1, v2, :cond_30

    const/4 v2, 0x2

    if-eq p1, v2, :cond_29

    const/4 v2, 0x3

    if-eq p1, v2, :cond_30

    const/16 v2, 0x9

    if-eq p1, v2, :cond_30

    goto :goto_37

    .line 275
    :cond_29
    const-string/jumbo p1, "thermal,battery"

    invoke-virtual {v0, v1, p1, v1}, Landroid/os/PowerManager;->shutdown(ZLjava/lang/String;Z)V

    goto :goto_37

    .line 272
    :cond_30
    const-string/jumbo p1, "thermal"

    invoke-virtual {v0, v1, p1, v1}, Landroid/os/PowerManager;->shutdown(ZLjava/lang/String;Z)V

    .line 273
    nop

    .line 278
    :goto_37
    return-void
.end method


# virtual methods
.method public synthetic lambda$postStatusListener$0$ThermalManagerService(Landroid/os/IThermalStatusListener;)V
    .registers 4

    .line 164
    :try_start_0
    iget v0, p0, Lcom/android/server/power/ThermalManagerService;->mStatus:I

    invoke-interface {p1, v0}, Landroid/os/IThermalStatusListener;->onStatusChange(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    .line 167
    goto :goto_e

    .line 165
    :catch_6
    move-exception p1

    .line 166
    sget-object v0, Lcom/android/server/power/ThermalManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Thermal callback failed to call"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    :goto_e
    return-void
.end method

.method public onBootPhase(I)V
    .registers 3

    .line 125
    const/16 v0, 0x226

    if-ne p1, v0, :cond_7

    .line 126
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService;->onActivityManagerReady()V

    .line 128
    :cond_7
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mService:Landroid/os/IThermalService$Stub;

    const-string/jumbo v1, "thermalservice"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/ThermalManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 121
    return-void
.end method
