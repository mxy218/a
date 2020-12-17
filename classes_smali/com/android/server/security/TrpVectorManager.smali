.class public Lcom/android/server/security/TrpVectorManager;
.super Ljava/lang/Object;
.source "TrpVectorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/security/TrpVectorManager$OnTriggerListener;,
        Lcom/android/server/security/TrpVectorManager$DetectTask;,
        Lcom/android/server/security/TrpVectorManager$TimeTickRunnable;
    }
.end annotation


# static fields
.field private static volatile sInstance:Lcom/android/server/security/TrpVectorManager;


# instance fields
.field private mKeyIdList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMonitorAppQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScheduledExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private mService:Lcom/android/server/security/TRPEngService;

.field private mTimeTickExecutor:Ljava/util/concurrent/ExecutorService;

.field private mTriggerListener:Lcom/android/server/security/TrpVectorManager$OnTriggerListener;

.field private mTrpConfig:Lmeizu/security/TrpConfig;

.field private mVectorMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/security/TrpVector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/security/TrpVectorManager;->sInstance:Lcom/android/server/security/TrpVectorManager;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/security/TRPEngService;)V
    .registers 2
    .param p1, "service"  # Lcom/android/server/security/TRPEngService;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/server/security/TrpVectorManager;->mService:Lcom/android/server/security/TRPEngService;

    .line 44
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/security/TrpVectorManager;J)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/security/TrpVectorManager;
    .param p1, "x1"  # J

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/server/security/TrpVectorManager;->runTimeTick(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/security/TrpVectorManager;)Ljava/util/concurrent/LinkedBlockingQueue;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/security/TrpVectorManager;

    .line 24
    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mMonitorAppQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/security/TrpVectorManager;)Lmeizu/security/TrpConfig;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/security/TrpVectorManager;

    .line 24
    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mTrpConfig:Lmeizu/security/TrpConfig;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/security/TrpVectorManager;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/security/TrpVectorManager;

    .line 24
    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mVectorMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/security/TrpVectorManager;Ljava/lang/String;Lcom/android/server/security/TrpVector;I)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/security/TrpVectorManager;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Lcom/android/server/security/TrpVector;
    .param p3, "x3"  # I

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/security/TrpVectorManager;->triggerDetect(Ljava/lang/String;Lcom/android/server/security/TrpVector;I)V

    return-void
.end method

.method public static getInstance(Lcom/android/server/security/TRPEngService;)Lcom/android/server/security/TrpVectorManager;
    .registers 3
    .param p0, "service"  # Lcom/android/server/security/TRPEngService;

    .line 47
    sget-object v0, Lcom/android/server/security/TrpVectorManager;->sInstance:Lcom/android/server/security/TrpVectorManager;

    if-nez v0, :cond_17

    .line 48
    const-class v0, Lcom/android/server/security/TrpVectorManager;

    monitor-enter v0

    .line 49
    :try_start_7
    sget-object v1, Lcom/android/server/security/TrpVectorManager;->sInstance:Lcom/android/server/security/TrpVectorManager;

    if-nez v1, :cond_12

    .line 50
    new-instance v1, Lcom/android/server/security/TrpVectorManager;

    invoke-direct {v1, p0}, Lcom/android/server/security/TrpVectorManager;-><init>(Lcom/android/server/security/TRPEngService;)V

    sput-object v1, Lcom/android/server/security/TrpVectorManager;->sInstance:Lcom/android/server/security/TrpVectorManager;

    .line 52
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 54
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/server/security/TrpVectorManager;->sInstance:Lcom/android/server/security/TrpVectorManager;

    return-object v0
.end method

.method private runTimeTick(J)V
    .registers 12
    .param p1, "time"  # J

    .line 317
    monitor-enter p0

    .line 318
    :try_start_1
    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mVectorMap:Landroid/util/ArrayMap;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mTrpConfig:Lmeizu/security/TrpConfig;

    if-nez v0, :cond_a

    goto :goto_5e

    .line 321
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v0, "pkgNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    iget-object v2, p0, Lcom/android/server/security/TrpVectorManager;->mVectorMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_47

    .line 325
    iget-object v2, p0, Lcom/android/server/security/TrpVectorManager;->mVectorMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/security/TrpVector;

    .line 326
    .local v2, "vector":Lcom/android/server/security/TrpVector;
    if-eqz v2, :cond_44

    .line 327
    invoke-virtual {v2}, Lcom/android/server/security/TrpVector;->getTimeTick()J

    move-result-wide v3

    .line 330
    .local v3, "tick":J
    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_44

    sub-long v5, p1, v3

    iget-object v7, p0, Lcom/android/server/security/TrpVectorManager;->mTrpConfig:Lmeizu/security/TrpConfig;

    invoke-virtual {v7}, Lmeizu/security/TrpConfig;->getDuration()I

    move-result v7

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-ltz v5, :cond_44

    .line 331
    iget-object v5, p0, Lcom/android/server/security/TrpVectorManager;->mVectorMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 332
    .local v5, "pkg":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    .end local v2  # "vector":Lcom/android/server/security/TrpVector;
    .end local v3  # "tick":J
    .end local v5  # "pkg":Ljava/lang/String;
    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 338
    .end local v1  # "i":I
    :cond_47
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 339
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Lcom/android/server/security/TrpVectorManager;->removePackageFromMonitor(Ljava/lang/String;I)V

    .line 340
    .end local v2  # "name":Ljava/lang/String;
    goto :goto_4b

    .line 341
    .end local v0  # "pkgNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5c
    monitor-exit p0

    .line 342
    return-void

    .line 319
    :cond_5e
    :goto_5e
    monitor-exit p0

    return-void

    .line 341
    :catchall_60
    move-exception v0

    monitor-exit p0
    :try_end_62
    .catchall {:try_start_1 .. :try_end_62} :catchall_60

    throw v0
.end method

.method private triggerDetect(Ljava/lang/String;Lcom/android/server/security/TrpVector;I)V
    .registers 13
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "trpVector"  # Lcom/android/server/security/TrpVector;
    .param p3, "triggerReason"  # I

    .line 385
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_65

    if-eqz p2, :cond_65

    .line 386
    invoke-virtual {p2}, Lcom/android/server/security/TrpVector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_65

    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mTrpConfig:Lmeizu/security/TrpConfig;

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mMonitorAppQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-nez v0, :cond_17

    goto :goto_65

    .line 391
    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 393
    .local v0, "current":J
    invoke-virtual {p2}, Lcom/android/server/security/TrpVector;->getLastDetectTime()J

    move-result-wide v2

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/security/TrpVectorManager;->mTrpConfig:Lmeizu/security/TrpConfig;

    invoke-virtual {v4}, Lmeizu/security/TrpConfig;->getFrequency()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_49

    .line 394
    invoke-virtual {p2, v0, v1}, Lcom/android/server/security/TrpVector;->updateLastDetectTime(J)V

    .line 395
    iget-object v3, p0, Lcom/android/server/security/TrpVectorManager;->mTriggerListener:Lcom/android/server/security/TrpVectorManager$OnTriggerListener;

    invoke-virtual {p2}, Lcom/android/server/security/TrpVector;->getDetectVectors()Ljava/util/ArrayList;

    move-result-object v5

    .line 396
    invoke-virtual {p2}, Lcom/android/server/security/TrpVector;->getSessionId()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/android/server/security/TrpVectorManager;->mMonitorAppQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v8

    .line 395
    move-object v4, p1

    move v7, p3

    invoke-interface/range {v3 .. v8}, Lcom/android/server/security/TrpVectorManager$OnTriggerListener;->OnTrigger(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;II)V

    goto :goto_64

    .line 398
    :cond_49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "triggerDetect failed: too frequently, limit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/security/TrpVectorManager;->mTrpConfig:Lmeizu/security/TrpConfig;

    invoke-virtual {v3}, Lmeizu/security/TrpConfig;->getFrequency()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 400
    :goto_64
    return-void

    .line 388
    .end local v0  # "current":J
    :cond_65
    :goto_65
    return-void
.end method


# virtual methods
.method public addAction(Ljava/lang/String;I)I
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "actionId"  # I

    .line 149
    monitor-enter p0

    .line 151
    :try_start_1
    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mMonitorAppQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/server/security/TrpVectorManager;->addPackageToMonitor(Ljava/lang/String;)V

    .line 155
    :cond_c
    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mMonitorAppQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 158
    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mVectorMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/security/TrpVector;

    .line 159
    .local v0, "trpVector":Lcom/android/server/security/TrpVector;
    if-eqz v0, :cond_21

    .line 160
    invoke-virtual {v0, p2}, Lcom/android/server/security/TrpVector;->addAction(I)V

    .line 161
    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAction success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/android/server/security/TrpVectorManager;->mKeyIdList:Ljava/util/HashSet;

    if-eqz v1, :cond_65

    iget-object v1, p0, Lcom/android/server/security/TrpVectorManager;->mKeyIdList:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hit key id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 165
    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/security/TrpVectorManager;->triggerDetect(Ljava/lang/String;Lcom/android/server/security/TrpVector;I)V

    .line 169
    .end local v0  # "trpVector":Lcom/android/server/security/TrpVector;
    :cond_65
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 170
    :catchall_68
    move-exception v0

    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_1 .. :try_end_6a} :catchall_68

    throw v0
.end method

.method public addPackageToMonitor(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;

    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 95
    return-void

    .line 97
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addPackageToMonitor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 98
    monitor-enter p0

    .line 101
    :try_start_1c
    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mMonitorAppQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has been added to monitor."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 103
    monitor-exit p0

    return-void

    .line 107
    :cond_3a
    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mMonitorAppQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->remainingCapacity()I

    move-result v0

    if-nez v0, :cond_56

    .line 108
    const-string/jumbo v0, "list is full. Try to delete the first element."

    invoke-static {v0}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mMonitorAppQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 110
    .local v0, "firstPkgName":Ljava/lang/String;
    if-eqz v0, :cond_56

    .line 111
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/server/security/TrpVectorManager;->removePackageFromMonitor(Ljava/lang/String;I)V

    .line 116
    .end local v0  # "firstPkgName":Ljava/lang/String;
    :cond_56
    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mTrpConfig:Lmeizu/security/TrpConfig;

    if-eqz v0, :cond_7a

    .line 117
    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mMonitorAppQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 118
    new-instance v0, Lcom/android/server/security/TrpVector;

    iget-object v1, p0, Lcom/android/server/security/TrpVectorManager;->mTrpConfig:Lmeizu/security/TrpConfig;

    invoke-virtual {v1}, Lmeizu/security/TrpConfig;->getInputSize()I

    move-result v1

    const/16 v2, 0x14c

    iget-object v3, p0, Lcom/android/server/security/TrpVectorManager;->mTrpConfig:Lmeizu/security/TrpConfig;

    invoke-virtual {v3}, Lmeizu/security/TrpConfig;->getTime()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/security/TrpVector;-><init>(III)V

    .line 119
    .local v0, "trpVector":Lcom/android/server/security/TrpVector;
    iget-object v1, p0, Lcom/android/server/security/TrpVectorManager;->mVectorMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .end local v0  # "trpVector":Lcom/android/server/security/TrpVector;
    :cond_7a
    monitor-exit p0

    .line 123
    return-void

    .line 122
    :catchall_7c
    move-exception v0

    monitor-exit p0
    :try_end_7e
    .catchall {:try_start_1c .. :try_end_7e} :catchall_7c

    throw v0
.end method

.method public initConfig(Lmeizu/security/TrpConfig;)V
    .registers 13
    .param p1, "config"  # Lmeizu/security/TrpConfig;

    .line 63
    if-eqz p1, :cond_64

    invoke-virtual {p1}, Lmeizu/security/TrpConfig;->isValid()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_64

    .line 69
    :cond_9
    monitor-enter p0

    .line 70
    :try_start_a
    iput-object p1, p0, Lcom/android/server/security/TrpVectorManager;->mTrpConfig:Lmeizu/security/TrpConfig;

    .line 71
    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mTrpConfig:Lmeizu/security/TrpConfig;

    invoke-virtual {v0}, Lmeizu/security/TrpConfig;->getIdList()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mKeyIdList:Ljava/util/HashSet;

    .line 73
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v1, p0, Lcom/android/server/security/TrpVectorManager;->mTrpConfig:Lmeizu/security/TrpConfig;

    invoke-virtual {v1}, Lmeizu/security/TrpConfig;->getLimit()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mMonitorAppQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 74
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mVectorMap:Landroid/util/ArrayMap;

    .line 77
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    new-instance v2, Lcom/android/server/security/TrpUtils$RxThreadFactory;

    const-string v3, "TrpScheduledThread-"

    invoke-direct {v2, v3}, Lcom/android/server/security/TrpUtils$RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 79
    iget-object v4, p0, Lcom/android/server/security/TrpVectorManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v5, Lcom/android/server/security/TrpVectorManager$DetectTask;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/android/server/security/TrpVectorManager$DetectTask;-><init>(Lcom/android/server/security/TrpVectorManager;Lcom/android/server/security/TrpVectorManager$1;)V

    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mTrpConfig:Lmeizu/security/TrpConfig;

    .line 80
    invoke-virtual {v0}, Lmeizu/security/TrpConfig;->getTime()I

    move-result v0

    int-to-long v6, v0

    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mTrpConfig:Lmeizu/security/TrpConfig;

    invoke-virtual {v0}, Lmeizu/security/TrpConfig;->getTime()I

    move-result v0

    int-to-long v8, v0

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 79
    invoke-virtual/range {v4 .. v10}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 81
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_a .. :try_end_53} :catchall_61

    .line 84
    new-instance v0, Lcom/android/server/security/TrpUtils$RxThreadFactory;

    const-string v1, "TrpTimeTickThread-"

    invoke-direct {v0, v1}, Lcom/android/server/security/TrpUtils$RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mTimeTickExecutor:Ljava/util/concurrent/ExecutorService;

    .line 86
    return-void

    .line 81
    :catchall_61
    move-exception v0

    :try_start_62
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v0

    .line 65
    :cond_64
    :goto_64
    const-string v0, "Failed to initConfig(): config == null or not valid"

    invoke-static {v0}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public isMonitored(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"  # Ljava/lang/String;

    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mMonitorAppQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_18

    .line 134
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_18

    .line 137
    :cond_11
    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mMonitorAppQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 135
    :cond_18
    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method public onTimeTick(J)V
    .registers 5
    .param p1, "curTime"  # J

    .line 298
    new-instance v0, Lcom/android/server/security/TrpVectorManager$TimeTickRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/security/TrpVectorManager$TimeTickRunnable;-><init>(Lcom/android/server/security/TrpVectorManager;J)V

    .line 299
    .local v0, "timeTickRunnable":Lcom/android/server/security/TrpVectorManager$TimeTickRunnable;
    iget-object v1, p0, Lcom/android/server/security/TrpVectorManager;->mTimeTickExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 300
    return-void
.end method

.method public release()V
    .registers 3

    .line 449
    monitor-enter p0

    .line 450
    :try_start_1
    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mTimeTickExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 451
    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mTimeTickExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 452
    iput-object v1, p0, Lcom/android/server/security/TrpVectorManager;->mTimeTickExecutor:Ljava/util/concurrent/ExecutorService;

    .line 455
    :cond_d
    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_18

    .line 456
    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 457
    iput-object v1, p0, Lcom/android/server/security/TrpVectorManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 460
    :cond_18
    iput-object v1, p0, Lcom/android/server/security/TrpVectorManager;->mTriggerListener:Lcom/android/server/security/TrpVectorManager$OnTriggerListener;

    .line 462
    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mMonitorAppQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_25

    .line 463
    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mMonitorAppQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 464
    iput-object v1, p0, Lcom/android/server/security/TrpVectorManager;->mMonitorAppQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 467
    :cond_25
    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mVectorMap:Landroid/util/ArrayMap;

    if-eqz v0, :cond_30

    .line 468
    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mVectorMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 469
    iput-object v1, p0, Lcom/android/server/security/TrpVectorManager;->mVectorMap:Landroid/util/ArrayMap;

    .line 472
    :cond_30
    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mKeyIdList:Ljava/util/HashSet;

    if-eqz v0, :cond_3b

    .line 473
    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mKeyIdList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 474
    iput-object v1, p0, Lcom/android/server/security/TrpVectorManager;->mKeyIdList:Ljava/util/HashSet;

    .line 477
    :cond_3b
    iput-object v1, p0, Lcom/android/server/security/TrpVectorManager;->mTrpConfig:Lmeizu/security/TrpConfig;

    .line 478
    sput-object v1, Lcom/android/server/security/TrpVectorManager;->sInstance:Lcom/android/server/security/TrpVectorManager;

    .line 479
    iput-object v1, p0, Lcom/android/server/security/TrpVectorManager;->mService:Lcom/android/server/security/TRPEngService;

    .line 480
    monitor-exit p0

    .line 481
    return-void

    .line 480
    :catchall_43
    move-exception v0

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_43

    throw v0
.end method

.method public removePackageFromMonitor(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "triggerReason"  # I

    .line 350
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 351
    return-void

    .line 353
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removePackageFromMonitor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 354
    monitor-enter p0

    .line 356
    :try_start_25
    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mVectorMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 358
    if-eqz p2, :cond_3a

    .line 359
    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mVectorMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/security/TrpVector;

    .line 360
    .local v0, "trpVector":Lcom/android/server/security/TrpVector;
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/security/TrpVectorManager;->triggerDetect(Ljava/lang/String;Lcom/android/server/security/TrpVector;I)V

    .line 363
    .end local v0  # "trpVector":Lcom/android/server/security/TrpVector;
    :cond_3a
    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mVectorMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    :cond_3f
    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mMonitorAppQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 367
    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mMonitorAppQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 369
    :cond_4c
    monitor-exit p0

    .line 370
    return-void

    .line 369
    :catchall_4e
    move-exception v0

    monitor-exit p0
    :try_end_50
    .catchall {:try_start_25 .. :try_end_50} :catchall_4e

    throw v0
.end method

.method public setOnTriggerListener(Lcom/android/server/security/TrpVectorManager$OnTriggerListener;)V
    .registers 2
    .param p1, "listener"  # Lcom/android/server/security/TrpVectorManager$OnTriggerListener;

    .line 374
    iput-object p1, p0, Lcom/android/server/security/TrpVectorManager;->mTriggerListener:Lcom/android/server/security/TrpVectorManager$OnTriggerListener;

    .line 375
    return-void
.end method

.method public updateConfig(Lmeizu/security/TrpConfig;)V
    .registers 13
    .param p1, "config"  # Lmeizu/security/TrpConfig;

    .line 204
    if-eqz p1, :cond_152

    invoke-virtual {p1}, Lmeizu/security/TrpConfig;->isValid()Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_152

    .line 209
    :cond_a
    monitor-enter p0

    .line 212
    :try_start_b
    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 213
    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 214
    iput-object v1, p0, Lcom/android/server/security/TrpVectorManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 218
    :cond_17
    invoke-virtual {p1}, Lmeizu/security/TrpConfig;->getLimit()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/security/TrpVectorManager;->mTrpConfig:Lmeizu/security/TrpConfig;

    invoke-virtual {v2}, Lmeizu/security/TrpConfig;->getLimit()I

    move-result v2

    if-eq v0, v2, :cond_63

    .line 221
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1}, Lmeizu/security/TrpConfig;->getLimit()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 222
    .local v0, "newMonitorAppQueue":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Ljava/lang/String;>;"
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 224
    .local v2, "newVectorMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/security/TrpVector;>;"
    iget-object v3, p0, Lcom/android/server/security/TrpVectorManager;->mMonitorAppQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v3

    .line 225
    .local v3, "currentSize":I
    invoke-virtual {p1}, Lmeizu/security/TrpConfig;->getLimit()I

    move-result v4

    if-ge v4, v3, :cond_55

    .line 226
    invoke-virtual {p1}, Lmeizu/security/TrpConfig;->getLimit()I

    move-result v4

    sub-int v4, v3, v4

    .line 227
    .local v4, "diff":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_44
    if-ge v5, v4, :cond_55

    .line 228
    iget-object v6, p0, Lcom/android/server/security/TrpVectorManager;->mMonitorAppQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 230
    .local v6, "firstPackage":Ljava/lang/String;
    const/4 v7, 0x3

    invoke-virtual {p0, v6, v7}, Lcom/android/server/security/TrpVectorManager;->removePackageFromMonitor(Ljava/lang/String;I)V

    .line 227
    .end local v6  # "firstPackage":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_44

    .line 234
    .end local v4  # "diff":I
    .end local v5  # "i":I
    :cond_55
    iget-object v4, p0, Lcom/android/server/security/TrpVectorManager;->mMonitorAppQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->addAll(Ljava/util/Collection;)Z

    .line 235
    iget-object v4, p0, Lcom/android/server/security/TrpVectorManager;->mVectorMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 237
    iput-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mMonitorAppQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 238
    iput-object v2, p0, Lcom/android/server/security/TrpVectorManager;->mVectorMap:Landroid/util/ArrayMap;

    .line 242
    .end local v0  # "newMonitorAppQueue":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Ljava/lang/String;>;"
    .end local v2  # "newVectorMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/security/TrpVector;>;"
    .end local v3  # "currentSize":I
    :cond_63
    invoke-virtual {p1}, Lmeizu/security/TrpConfig;->getInputSize()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/security/TrpVectorManager;->mTrpConfig:Lmeizu/security/TrpConfig;

    invoke-virtual {v2}, Lmeizu/security/TrpConfig;->getInputSize()I

    move-result v2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_8b

    .line 244
    move v0, v3

    .local v0, "i":I
    :goto_71
    iget-object v2, p0, Lcom/android/server/security/TrpVectorManager;->mVectorMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_8b

    .line 245
    iget-object v2, p0, Lcom/android/server/security/TrpVectorManager;->mVectorMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/security/TrpVector;

    .line 246
    .local v2, "trpVector":Lcom/android/server/security/TrpVector;
    invoke-virtual {p1}, Lmeizu/security/TrpConfig;->getInputSize()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/security/TrpVector;->updateInputSize(I)V

    .line 244
    .end local v2  # "trpVector":Lcom/android/server/security/TrpVector;
    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    .line 251
    .end local v0  # "i":I
    :cond_8b
    invoke-virtual {p1}, Lmeizu/security/TrpConfig;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/security/TrpVectorManager;->mTrpConfig:Lmeizu/security/TrpConfig;

    invoke-virtual {v2}, Lmeizu/security/TrpConfig;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f9

    .line 252
    invoke-virtual {p1}, Lmeizu/security/TrpConfig;->getIdList()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mKeyIdList:Ljava/util/HashSet;

    .line 253
    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mKeyIdList:Ljava/util/HashSet;

    if-eqz v0, :cond_f9

    .line 256
    move v0, v3

    .restart local v0  # "i":I
    :goto_a6
    iget-object v2, p0, Lcom/android/server/security/TrpVectorManager;->mVectorMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_f9

    .line 257
    iget-object v2, p0, Lcom/android/server/security/TrpVectorManager;->mVectorMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/security/TrpVector;

    .line 259
    .restart local v2  # "trpVector":Lcom/android/server/security/TrpVector;
    if-eqz v2, :cond_f6

    .line 260
    iget-object v4, p0, Lcom/android/server/security/TrpVectorManager;->mKeyIdList:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_be
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 261
    .local v5, "keyId":I
    invoke-virtual {v2, v5}, Lcom/android/server/security/TrpVector;->containsActionId(I)Z

    move-result v6

    if-eqz v6, :cond_f5

    .line 262
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Hit new key id "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 263
    iget-object v4, p0, Lcom/android/server/security/TrpVectorManager;->mVectorMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v6, 0x2

    invoke-direct {p0, v4, v2, v6}, Lcom/android/server/security/TrpVectorManager;->triggerDetect(Ljava/lang/String;Lcom/android/server/security/TrpVector;I)V

    .line 264
    goto :goto_f6

    .line 266
    .end local v5  # "keyId":I
    :cond_f5
    goto :goto_be

    .line 256
    .end local v2  # "trpVector":Lcom/android/server/security/TrpVector;
    :cond_f6
    :goto_f6
    add-int/lit8 v0, v0, 0x1

    goto :goto_a6

    .line 273
    .end local v0  # "i":I
    :cond_f9
    invoke-virtual {p1}, Lmeizu/security/TrpConfig;->getTime()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/security/TrpVectorManager;->mTrpConfig:Lmeizu/security/TrpConfig;

    invoke-virtual {v2}, Lmeizu/security/TrpConfig;->getTime()I

    move-result v2

    if-eq v0, v2, :cond_122

    .line 274
    move v0, v3

    .restart local v0  # "i":I
    :goto_106
    iget-object v2, p0, Lcom/android/server/security/TrpVectorManager;->mVectorMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_122

    .line 275
    iget-object v2, p0, Lcom/android/server/security/TrpVectorManager;->mVectorMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/security/TrpVector;

    .line 276
    .restart local v2  # "trpVector":Lcom/android/server/security/TrpVector;
    if-eqz v2, :cond_11f

    .line 277
    invoke-virtual {p1}, Lmeizu/security/TrpConfig;->getTime()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/security/TrpVector;->resetTimeThreshold(I)V

    .line 274
    .end local v2  # "trpVector":Lcom/android/server/security/TrpVector;
    :cond_11f
    add-int/lit8 v0, v0, 0x1

    goto :goto_106

    .line 283
    .end local v0  # "i":I
    :cond_122
    iput-object p1, p0, Lcom/android/server/security/TrpVectorManager;->mTrpConfig:Lmeizu/security/TrpConfig;

    .line 286
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/android/server/security/TrpUtils$RxThreadFactory;

    const-string v3, "TrpScheduledThread-"

    invoke-direct {v2, v3}, Lcom/android/server/security/TrpUtils$RxThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v0, v3, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 288
    iget-object v4, p0, Lcom/android/server/security/TrpVectorManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v5, Lcom/android/server/security/TrpVectorManager$DetectTask;

    invoke-direct {v5, p0, v1}, Lcom/android/server/security/TrpVectorManager$DetectTask;-><init>(Lcom/android/server/security/TrpVectorManager;Lcom/android/server/security/TrpVectorManager$1;)V

    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mTrpConfig:Lmeizu/security/TrpConfig;

    .line 289
    invoke-virtual {v0}, Lmeizu/security/TrpConfig;->getTime()I

    move-result v0

    int-to-long v6, v0

    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager;->mTrpConfig:Lmeizu/security/TrpConfig;

    invoke-virtual {v0}, Lmeizu/security/TrpConfig;->getTime()I

    move-result v0

    int-to-long v8, v0

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 288
    invoke-virtual/range {v4 .. v10}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 290
    monitor-exit p0

    .line 291
    return-void

    .line 290
    :catchall_14f
    move-exception v0

    monitor-exit p0
    :try_end_151
    .catchall {:try_start_b .. :try_end_151} :catchall_14f

    throw v0

    .line 205
    :cond_152
    :goto_152
    const-string/jumbo v0, "updateConfig() failed: invalid config"

    invoke-static {v0}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public updateMonitor(Lcom/android/server/security/NameListManager;I)V
    .registers 7
    .param p1, "manager"  # Lcom/android/server/security/NameListManager;
    .param p2, "curMod"  # I

    .line 181
    monitor-enter p0

    .line 183
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v0, "pkgNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/security/TrpVectorManager;->mMonitorAppQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v1, :cond_26

    .line 185
    iget-object v1, p0, Lcom/android/server/security/TrpVectorManager;->mMonitorAppQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 186
    .local v2, "pkg":Ljava/lang/String;
    invoke-virtual {p1, v2, p2}, Lcom/android/server/security/NameListManager;->isMonitor(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_25

    .line 187
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .end local v2  # "pkg":Ljava/lang/String;
    :cond_25
    goto :goto_10

    .line 191
    :cond_26
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 192
    .restart local v2  # "pkg":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/security/TrpVectorManager;->removePackageFromMonitor(Ljava/lang/String;I)V

    .line 193
    .end local v2  # "pkg":Ljava/lang/String;
    goto :goto_2a

    .line 194
    .end local v0  # "pkgNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3b
    monitor-exit p0

    .line 195
    return-void

    .line 194
    :catchall_3d
    move-exception v0

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_3d

    throw v0
.end method
