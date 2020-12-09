.class abstract Lcom/android/server/net/NetworkStatsObservers$RequestInfo;
.super Ljava/lang/Object;
.source "NetworkStatsObservers.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsObservers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "RequestInfo"
.end annotation


# instance fields
.field protected final mAccessLevel:I

.field private final mBinder:Landroid/os/IBinder;

.field protected final mCallingUid:I

.field protected mCollection:Lcom/android/server/net/NetworkStatsCollection;

.field private final mMessenger:Landroid/os/Messenger;

.field protected mRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field protected final mRequest:Landroid/net/DataUsageRequest;

.field private final mStatsObserver:Lcom/android/server/net/NetworkStatsObservers;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsObservers;Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;II)V
    .registers 7

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mStatsObserver:Lcom/android/server/net/NetworkStatsObservers;

    .line 240
    iput-object p2, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mRequest:Landroid/net/DataUsageRequest;

    .line 241
    iput-object p3, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mMessenger:Landroid/os/Messenger;

    .line 242
    iput-object p4, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mBinder:Landroid/os/IBinder;

    .line 243
    iput p5, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mCallingUid:I

    .line 244
    iput p6, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mAccessLevel:I

    .line 247
    :try_start_f
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mBinder:Landroid/os/IBinder;

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_15} :catch_16

    .line 250
    goto :goto_1a

    .line 248
    :catch_16
    move-exception p1

    .line 249
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->binderDied()V

    .line 251
    :goto_1a
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/net/NetworkStatsObservers$RequestInfo;)V
    .registers 1

    .line 226
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->unlinkDeathRecipient()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/net/NetworkStatsObservers$RequestInfo;I)V
    .registers 2

    .line 226
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->callCallback(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/net/NetworkStatsObservers$RequestInfo;Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V
    .registers 2

    .line 226
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->updateStats(Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V

    return-void
.end method

.method private callCallback(I)V
    .registers 5

    .line 292
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 293
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mRequest:Landroid/net/DataUsageRequest;

    const-string v2, "DataUsageRequest"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 294
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 295
    iput p1, v1, Landroid/os/Message;->what:I

    .line 296
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 302
    :try_start_15
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p1, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1b

    .line 306
    goto :goto_34

    .line 303
    :catch_1b
    move-exception p1

    .line 305
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RemoteException caught trying to send a callback msg for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mRequest:Landroid/net/DataUsageRequest;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetworkStatsObservers"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :goto_34
    return-void
.end method

.method private callbackTypeToName(I)Ljava/lang/String;
    .registers 3

    .line 319
    if-eqz p1, :cond_b

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    .line 325
    const-string p1, "UNKNOWN"

    return-object p1

    .line 323
    :cond_8
    const-string p1, "RELEASED"

    return-object p1

    .line 321
    :cond_b
    const-string p1, "LIMIT_REACHED"

    return-object p1
.end method

.method private resetRecorder()V
    .registers 2

    .line 310
    new-instance v0, Lcom/android/server/net/NetworkStatsRecorder;

    invoke-direct {v0}, Lcom/android/server/net/NetworkStatsRecorder;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 311
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsRecorder;->getSinceBoot()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mCollection:Lcom/android/server/net/NetworkStatsCollection;

    .line 312
    return-void
.end method

.method private unlinkDeathRecipient()V
    .registers 3

    .line 268
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_8

    .line 269
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 271
    :cond_8
    return-void
.end method

.method private updateStats(Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V
    .registers 3

    .line 277
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    if-nez v0, :cond_b

    .line 279
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->resetRecorder()V

    .line 280
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->recordSample(Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V

    .line 281
    return-void

    .line 283
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->recordSample(Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V

    .line 285
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->checkStats()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 286
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->resetRecorder()V

    .line 287
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->callCallback(I)V

    .line 289
    :cond_1b
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 257
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mStatsObserver:Lcom/android/server/net/NetworkStatsObservers;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mRequest:Landroid/net/DataUsageRequest;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkStatsObservers;->unregister(Landroid/net/DataUsageRequest;I)V

    .line 258
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->callCallback(I)V

    .line 259
    return-void
.end method

.method protected abstract checkStats()Z
.end method

.method protected abstract recordSample(Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestInfo from uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mCallingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mRequest:Landroid/net/DataUsageRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " accessLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mAccessLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
