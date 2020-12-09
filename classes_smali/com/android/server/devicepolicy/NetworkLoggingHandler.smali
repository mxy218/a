.class final Lcom/android/server/devicepolicy/NetworkLoggingHandler;
.super Landroid/os/Handler;
.source "NetworkLoggingHandler.java"


# static fields
.field private static final BATCH_FINALIZATION_TIMEOUT_ALARM_INTERVAL_MS:J = 0x1b7740L

.field private static final BATCH_FINALIZATION_TIMEOUT_MS:J = 0x5265c0L

.field private static final FORCE_FETCH_THROTTLE_NS:J

.field static final LOG_NETWORK_EVENT_MSG:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MAX_BATCHES:I = 0x5

.field private static final MAX_EVENTS_PER_BATCH:I = 0x4b0

.field static final NETWORK_EVENT_KEY:Ljava/lang/String; = "network_event"

.field private static final NETWORK_LOGGING_TIMEOUT_ALARM_TAG:Ljava/lang/String; = "NetworkLogging.batchTimeout"

.field private static final RETRIEVED_BATCH_DISCARD_DELAY_MS:J = 0x493e0L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mBatchTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private final mBatches:Landroid/util/LongSparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/util/ArrayList<",
            "Landroid/app/admin/NetworkEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCurrentBatchToken:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private final mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field private mId:J

.field private mLastFinalizationNanos:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private mLastRetrievedBatchToken:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private mNetworkEvents:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/admin/NetworkEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mPaused:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 45
    const-class v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    .line 67
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->FORCE_FETCH_THROTTLE_NS:J

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .registers 5

    .line 119
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;-><init>(Landroid/os/Looper;Lcom/android/server/devicepolicy/DevicePolicyManagerService;J)V

    .line 120
    return-void
.end method

.method constructor <init>(Landroid/os/Looper;Lcom/android/server/devicepolicy/DevicePolicyManagerService;J)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 124
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 69
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mLastFinalizationNanos:J

    .line 78
    new-instance p1, Lcom/android/server/devicepolicy/NetworkLoggingHandler$1;

    invoke-direct {p1, p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler$1;-><init>(Lcom/android/server/devicepolicy/NetworkLoggingHandler;)V

    iput-object p1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatchTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 97
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    .line 104
    new-instance p1, Landroid/util/LongSparseArray;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    .line 108
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mPaused:Z

    .line 125
    iput-object p2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 126
    iget-object p1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mAlarmManager:Landroid/app/AlarmManager;

    .line 127
    iput-wide p3, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mId:J

    .line 128
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 43
    sget-object v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/devicepolicy/NetworkLoggingHandler;)Ljava/util/ArrayList;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/devicepolicy/NetworkLoggingHandler;)Landroid/os/Bundle;
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->finalizeBatchAndBuildDeviceOwnerMessageLocked()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/devicepolicy/NetworkLoggingHandler;Landroid/os/Bundle;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->notifyDeviceOwner(Landroid/os/Bundle;)V

    return-void
.end method

.method private buildDeviceOwnerMessageLocked()Landroid/os/Bundle;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 263
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 264
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 265
    iget-wide v2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentBatchToken:J

    const-string v4, "android.app.extra.EXTRA_NETWORK_LOGS_TOKEN"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 266
    const-string v2, "android.app.extra.EXTRA_NETWORK_LOGS_COUNT"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 267
    return-object v0
.end method

.method private finalizeBatchAndBuildDeviceOwnerMessageLocked()Landroid/os/Bundle;
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 224
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mLastFinalizationNanos:J

    .line 225
    nop

    .line 226
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_81

    .line 228
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/NetworkEvent;

    .line 229
    iget-wide v4, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mId:J

    invoke-virtual {v1, v4, v5}, Landroid/app/admin/NetworkEvent;->setId(J)V

    .line 230
    iget-wide v4, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mId:J

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v1, v4, v6

    if-nez v1, :cond_50

    .line 231
    sget-object v1, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reached maximum id value; wrapping around ."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentBatchToken:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mId:J

    goto :goto_53

    .line 234
    :cond_50
    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mId:J

    .line 236
    :goto_53
    goto :goto_15

    .line 238
    :cond_54
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_63

    .line 240
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 242
    :cond_63
    iget-wide v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentBatchToken:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentBatchToken:J

    .line 243
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    iget-wide v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentBatchToken:J

    iget-object v3, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    .line 245
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mPaused:Z

    if-nez v0, :cond_99

    .line 246
    invoke-direct {p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->buildDeviceOwnerMessageLocked()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_9a

    .line 251
    :cond_81
    sget-object v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Was about to finalize the batch, but there were no events to send to the DPC, the batchToken of last available batch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentBatchToken:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_99
    const/4 v0, 0x0

    :goto_9a
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->scheduleBatchFinalization()V

    .line 256
    return-object v0
.end method

.method private notifyDeviceOwner(Landroid/os/Bundle;)V
    .registers 7

    .line 273
    sget-object v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending network logging batch broadcast to device owner, batchToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const-string v2, "android.app.extra.EXTRA_NETWORK_LOGS_TOKEN"

    const-wide/16 v3, -0x1

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 273
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 276
    sget-object p1, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    const-string v0, "Shouldn\'t be called with NetworkLoggingHandler lock held"

    invoke-static {p1, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-void

    .line 279
    :cond_2c
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const-string v1, "android.app.action.NETWORK_LOGS_AVAILABLE"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendDeviceOwnerCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 280
    return-void
.end method


# virtual methods
.method declared-synchronized discardLogs()V
    .registers 3

    monitor-enter p0

    .line 216
    :try_start_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    .line 218
    sget-object v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    const-string v1, "Discarded all network logs"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 219
    monitor-exit p0

    return-void

    .line 215
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method forceBatchFinalization()J
    .registers 6

    .line 173
    monitor-enter p0

    .line 174
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mLastFinalizationNanos:J

    sget-wide v2, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->FORCE_FETCH_THROTTLE_NS:J

    add-long/2addr v0, v2

    .line 175
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 176
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1c

    .line 177
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    .line 179
    :cond_1c
    invoke-direct {p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->finalizeBatchAndBuildDeviceOwnerMessageLocked()Landroid/os/Bundle;

    move-result-object v0

    .line 180
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_27

    .line 181
    if-eqz v0, :cond_26

    .line 182
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->notifyDeviceOwner(Landroid/os/Bundle;)V

    .line 184
    :cond_26
    return-wide v2

    .line 180
    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 132
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    .line 150
    sget-object p1, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    const-string v0, "NetworkLoggingHandler received an unknown of message."

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 134
    :cond_d
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "network_event"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/admin/NetworkEvent;

    .line 135
    if-eqz p1, :cond_3b

    .line 136
    const/4 v0, 0x0

    .line 137
    monitor-enter p0

    .line 138
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object p1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v1, 0x4b0

    if-lt p1, v1, :cond_31

    .line 140
    invoke-direct {p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->finalizeBatchAndBuildDeviceOwnerMessageLocked()Landroid/os/Bundle;

    move-result-object v0

    .line 142
    :cond_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_1e .. :try_end_32} :catchall_38

    .line 143
    if-eqz v0, :cond_37

    .line 144
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->notifyDeviceOwner(Landroid/os/Bundle;)V

    .line 146
    :cond_37
    goto :goto_3b

    .line 142
    :catchall_38
    move-exception p1

    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p1

    .line 154
    :cond_3b
    :goto_3b
    return-void
.end method

.method public synthetic lambda$retrieveFullLogBatch$0$NetworkLoggingHandler(J)V
    .registers 7

    .line 294
    monitor-enter p0

    .line 295
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-gtz v0, :cond_1a

    .line 296
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    goto :goto_1

    .line 298
    :cond_1a
    monitor-exit p0

    .line 299
    return-void

    .line 298
    :catchall_1c
    move-exception p1

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method declared-synchronized pause()V
    .registers 3

    monitor-enter p0

    .line 188
    :try_start_1
    sget-object v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    const-string v1, "Paused network logging"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mPaused:Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 190
    monitor-exit p0

    return-void

    .line 187
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method resume()V
    .registers 5

    .line 193
    nop

    .line 194
    monitor-enter p0

    .line 195
    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mPaused:Z

    if-nez v0, :cond_f

    .line 196
    sget-object v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    const-string v1, "Attempted to resume network logging, but logging is not paused."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    monitor-exit p0

    return-void

    .line 200
    :cond_f
    sget-object v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resumed network logging. Current batch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentBatchToken:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", LastRetrievedBatch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mLastRetrievedBatchToken:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mPaused:Z

    .line 205
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-lez v0, :cond_4c

    iget-wide v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mLastRetrievedBatchToken:J

    iget-wide v2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentBatchToken:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4c

    .line 206
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->scheduleBatchFinalization()V

    .line 207
    invoke-direct {p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->buildDeviceOwnerMessageLocked()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_4d

    .line 209
    :cond_4c
    const/4 v0, 0x0

    :goto_4d
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_2 .. :try_end_4e} :catchall_54

    .line 210
    if-eqz v0, :cond_53

    .line 211
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->notifyDeviceOwner(Landroid/os/Bundle;)V

    .line 213
    :cond_53
    return-void

    .line 209
    :catchall_54
    move-exception v0

    :try_start_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v0
.end method

.method declared-synchronized retrieveFullLogBatch(J)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/app/admin/NetworkEvent;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 283
    :try_start_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_23

    .line 284
    if-gez v0, :cond_c

    .line 286
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    .line 293
    :cond_c
    :try_start_c
    new-instance v1, Lcom/android/server/devicepolicy/-$$Lambda$NetworkLoggingHandler$VKC_fB9Ws13yQKJ8zNkiF3Wp0Jk;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/devicepolicy/-$$Lambda$NetworkLoggingHandler$VKC_fB9Ws13yQKJ8zNkiF3Wp0Jk;-><init>(Lcom/android/server/devicepolicy/NetworkLoggingHandler;J)V

    const-wide/32 v2, 0x493e0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 301
    iput-wide p1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mLastRetrievedBatchToken:J

    .line 302
    iget-object p1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    invoke-virtual {p1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_23

    monitor-exit p0

    return-object p1

    .line 282
    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method scheduleBatchFinalization()V
    .registers 14

    .line 157
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c0

    add-long v6, v0, v2

    .line 160
    iget-object v4, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v11, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatchTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v5, 0x2

    const-wide/32 v8, 0x1b7740

    const-string v10, "NetworkLogging.batchTimeout"

    move-object v12, p0

    invoke-virtual/range {v4 .. v12}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 163
    sget-object v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    const-string v1, "Scheduled a new batch finalization alarm 5400000ms from now."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void
.end method