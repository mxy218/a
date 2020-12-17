.class public Lcom/android/server/backup/transport/TransportClient;
.super Ljava/lang/Object;
.source "TransportClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/transport/TransportClient$TransportConnection;,
        Lcom/android/server/backup/transport/TransportClient$State;,
        Lcom/android/server/backup/transport/TransportClient$Transition;
    }
.end annotation


# static fields
.field private static final LOG_BUFFER_SIZE:I = 0x5

.field static final TAG:Ljava/lang/String; = "TransportClient"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mBindIntent:Landroid/content/Intent;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mCreatorLogString:Ljava/lang/String;

.field private final mIdentifier:Ljava/lang/String;

.field private final mListenerHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStateLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/backup/transport/TransportConnectionListener;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogBuffer:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLogBufferLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogBufferLock:Ljava/lang/Object;

.field private final mPrefixForLog:Ljava/lang/String;

.field private mState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStateLock"
        }
    .end annotation
.end field

.field private final mStateLock:Ljava/lang/Object;

.field private volatile mTransport:Lcom/android/internal/backup/IBackupTransport;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStateLock"
        }
    .end annotation
.end field

.field private final mTransportComponent:Landroid/content/ComponentName;

.field private final mTransportStats:Lcom/android/server/backup/transport/TransportStats;

.field private final mUserId:I


# direct methods
.method constructor <init>(ILandroid/content/Context;Lcom/android/server/backup/transport/TransportStats;Landroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .registers 17
    .param p1, "userId"  # I
    .param p2, "context"  # Landroid/content/Context;
    .param p3, "transportStats"  # Lcom/android/server/backup/transport/TransportStats;
    .param p4, "bindIntent"  # Landroid/content/Intent;
    .param p5, "transportComponent"  # Landroid/content/ComponentName;
    .param p6, "identifier"  # Ljava/lang/String;
    .param p7, "caller"  # Ljava/lang/String;

    .line 117
    new-instance v8, Landroid/os/Handler;

    .line 125
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 117
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/backup/transport/TransportClient;-><init>(ILandroid/content/Context;Lcom/android/server/backup/transport/TransportStats;Landroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 126
    return-void
.end method

.method constructor <init>(ILandroid/content/Context;Lcom/android/server/backup/transport/TransportStats;Landroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 12
    .param p1, "userId"  # I
    .param p2, "context"  # Landroid/content/Context;
    .param p3, "transportStats"  # Lcom/android/server/backup/transport/TransportStats;
    .param p4, "bindIntent"  # Landroid/content/Intent;
    .param p5, "transportComponent"  # Landroid/content/ComponentName;
    .param p6, "identifier"  # Ljava/lang/String;
    .param p7, "caller"  # Ljava/lang/String;
    .param p8, "listenerHandler"  # Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mStateLock:Ljava/lang/Object;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mLogBufferLock:Ljava/lang/Object;

    .line 94
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 96
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mLogBuffer:Ljava/util/List;

    .line 99
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mListeners:Ljava/util/Map;

    .line 102
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/backup/transport/TransportClient;->mState:I

    .line 138
    iput p1, p0, Lcom/android/server/backup/transport/TransportClient;->mUserId:I

    .line 139
    iput-object p2, p0, Lcom/android/server/backup/transport/TransportClient;->mContext:Landroid/content/Context;

    .line 140
    iput-object p3, p0, Lcom/android/server/backup/transport/TransportClient;->mTransportStats:Lcom/android/server/backup/transport/TransportStats;

    .line 141
    iput-object p5, p0, Lcom/android/server/backup/transport/TransportClient;->mTransportComponent:Landroid/content/ComponentName;

    .line 142
    iput-object p4, p0, Lcom/android/server/backup/transport/TransportClient;->mBindIntent:Landroid/content/Intent;

    .line 143
    iput-object p6, p0, Lcom/android/server/backup/transport/TransportClient;->mIdentifier:Ljava/lang/String;

    .line 144
    iput-object p7, p0, Lcom/android/server/backup/transport/TransportClient;->mCreatorLogString:Ljava/lang/String;

    .line 145
    iput-object p8, p0, Lcom/android/server/backup/transport/TransportClient;->mListenerHandler:Landroid/os/Handler;

    .line 146
    new-instance v0, Lcom/android/server/backup/transport/TransportClient$TransportConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, v1}, Lcom/android/server/backup/transport/TransportClient$TransportConnection;-><init>(Landroid/content/Context;Lcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/transport/TransportClient$1;)V

    iput-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mConnection:Landroid/content/ServiceConnection;

    .line 149
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mTransportComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".*\\."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "classNameForLog":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/transport/TransportClient;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/transport/TransportClient;->mPrefixForLog:Ljava/lang/String;

    .line 152
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v2, "markAsDisposed"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/backup/transport/TransportClient;Landroid/os/IBinder;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/backup/transport/TransportClient;
    .param p1, "x1"  # Landroid/os/IBinder;

    .line 78
    invoke-direct {p0, p1}, Lcom/android/server/backup/transport/TransportClient;->onServiceConnected(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/backup/transport/TransportClient;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/backup/transport/TransportClient;

    .line 78
    invoke-direct {p0}, Lcom/android/server/backup/transport/TransportClient;->onServiceDisconnected()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/backup/transport/TransportClient;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/backup/transport/TransportClient;

    .line 78
    invoke-direct {p0}, Lcom/android/server/backup/transport/TransportClient;->onBindingDied()V

    return-void
.end method

.method private checkState(ZLjava/lang/String;)V
    .registers 4
    .param p1, "assertion"  # Z
    .param p2, "message"  # Ljava/lang/String;

    .line 580
    if-nez p1, :cond_6

    .line 581
    const/4 v0, 0x6

    invoke-direct {p0, v0, p2}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;)V

    .line 583
    :cond_6
    return-void
.end method

.method private checkStateIntegrityLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStateLock"
        }
    .end annotation

    .line 554
    iget v0, p0, Lcom/android/server/backup/transport/TransportClient;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4a

    if-eq v0, v2, :cond_61

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3f

    const/4 v3, 0x3

    if-eq v0, v3, :cond_29

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/backup/transport/TransportClient;->mState:I

    invoke-direct {p0, v2}, Lcom/android/server/backup/transport/TransportClient;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/transport/TransportClient;->checkState(ZLjava/lang/String;)V

    goto :goto_77

    .line 569
    :cond_29
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-string v3, "Unexpected listeners when state = CONNECTED"

    invoke-direct {p0, v0, v3}, Lcom/android/server/backup/transport/TransportClient;->checkState(ZLjava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    if-eqz v0, :cond_39

    move v1, v2

    :cond_39
    const-string v0, "Transport expected to be non-null when state = CONNECTED"

    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/transport/TransportClient;->checkState(ZLjava/lang/String;)V

    .line 573
    goto :goto_77

    .line 564
    :cond_3f
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    if-nez v0, :cond_44

    move v1, v2

    :cond_44
    const-string v0, "Transport expected to be null when state = BOUND_AND_CONNECTING"

    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/transport/TransportClient;->checkState(ZLjava/lang/String;)V

    .line 567
    goto :goto_77

    .line 556
    :cond_4a
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-string v3, "Unexpected listeners when state = UNUSABLE"

    invoke-direct {p0, v0, v3}, Lcom/android/server/backup/transport/TransportClient;->checkState(ZLjava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    if-nez v0, :cond_5b

    move v0, v2

    goto :goto_5c

    :cond_5b
    move v0, v1

    :goto_5c
    const-string v3, "Transport expected to be null when state = UNUSABLE"

    invoke-direct {p0, v0, v3}, Lcom/android/server/backup/transport/TransportClient;->checkState(ZLjava/lang/String;)V

    .line 560
    :cond_61
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-string v3, "Unexpected listeners when state = IDLE"

    invoke-direct {p0, v0, v3}, Lcom/android/server/backup/transport/TransportClient;->checkState(ZLjava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    if-nez v0, :cond_71

    move v1, v2

    :cond_71
    const-string v0, "Transport expected to be null when state = IDLE"

    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/transport/TransportClient;->checkState(ZLjava/lang/String;)V

    .line 562
    nop

    .line 577
    :goto_77
    return-void
.end method

.method static synthetic lambda$connect$0(Ljava/util/concurrent/CompletableFuture;Lcom/android/internal/backup/IBackupTransport;Lcom/android/server/backup/transport/TransportClient;)V
    .registers 3
    .param p0, "transportFuture"  # Ljava/util/concurrent/CompletableFuture;
    .param p1, "requestedTransport"  # Lcom/android/internal/backup/IBackupTransport;
    .param p2, "transportClient"  # Lcom/android/server/backup/transport/TransportClient;

    .line 334
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method private log(ILjava/lang/String;)V
    .registers 6
    .param p1, "priority"  # I
    .param p2, "message"  # Ljava/lang/String;

    .line 601
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mPrefixForLog:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lcom/android/server/backup/transport/TransportUtils;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "TransportClient"

    invoke-static {p1, v2, v0}, Lcom/android/server/backup/transport/TransportUtils;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 602
    invoke-static {v1, v1, p2}, Lcom/android/server/backup/transport/TransportUtils;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/backup/transport/TransportClient;->saveLogEntry(Ljava/lang/String;)V

    .line 603
    return-void
.end method

.method private log(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "priority"  # I
    .param p2, "caller"  # Ljava/lang/String;
    .param p3, "message"  # Ljava/lang/String;

    .line 606
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mPrefixForLog:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Lcom/android/server/backup/transport/TransportUtils;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransportClient"

    invoke-static {p1, v1, v0}, Lcom/android/server/backup/transport/TransportUtils;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 607
    const/4 v0, 0x0

    invoke-static {v0, p2, p3}, Lcom/android/server/backup/transport/TransportUtils;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/backup/transport/TransportClient;->saveLogEntry(Ljava/lang/String;)V

    .line 608
    return-void
.end method

.method private notifyListener(Lcom/android/server/backup/transport/TransportConnectionListener;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;)V
    .registers 8
    .param p1, "listener"  # Lcom/android/server/backup/transport/TransportConnectionListener;
    .param p2, "transport"  # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "caller"  # Ljava/lang/String;

    .line 495
    if-eqz p2, :cond_5

    const-string v0, "IBackupTransport"

    goto :goto_8

    :cond_5
    const-string/jumbo v0, "null"

    .line 496
    .local v0, "transportString":Ljava/lang/String;
    :goto_8
    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notifying ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] transport = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;)V

    .line 497
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportClient;->mListenerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/backup/transport/-$$Lambda$TransportClient$ciIUj0x0CRg93UETUpy2FB5aqCQ;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/backup/transport/-$$Lambda$TransportClient$ciIUj0x0CRg93UETUpy2FB5aqCQ;-><init>(Lcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/transport/TransportConnectionListener;Lcom/android/internal/backup/IBackupTransport;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 498
    return-void
.end method

.method private notifyListenersAndClearLocked(Lcom/android/internal/backup/IBackupTransport;)V
    .registers 6
    .param p1, "transport"  # Lcom/android/internal/backup/IBackupTransport;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStateLock"
        }
    .end annotation

    .line 502
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 503
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/backup/transport/TransportConnectionListener;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/transport/TransportConnectionListener;

    .line 504
    .local v2, "listener":Lcom/android/server/backup/transport/TransportConnectionListener;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 505
    .local v3, "caller":Ljava/lang/String;
    invoke-direct {p0, v2, p1, v3}, Lcom/android/server/backup/transport/TransportClient;->notifyListener(Lcom/android/server/backup/transport/TransportConnectionListener;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;)V

    .line 506
    .end local v1  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/backup/transport/TransportConnectionListener;Ljava/lang/String;>;"
    .end local v2  # "listener":Lcom/android/server/backup/transport/TransportConnectionListener;
    .end local v3  # "caller":Ljava/lang/String;
    goto :goto_a

    .line 507
    :cond_26
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 508
    return-void
.end method

.method private onBindingDied()V
    .registers 7

    .line 466
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 467
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/backup/transport/TransportClient;->checkStateIntegrityLocked()V

    .line 469
    const-string v1, "Binding died: client UNUSABLE"

    const/4 v2, 0x6

    invoke-direct {p0, v2, v1}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;)V

    .line 471
    iget v1, p0, Lcom/android/server/backup/transport/TransportClient;->mState:I

    if-eqz v1, :cond_3e

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq v1, v3, :cond_35

    const/4 v2, 0x2

    if-eq v1, v2, :cond_27

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1c

    goto :goto_3f

    .line 484
    :cond_1c
    invoke-direct {p0, v4, v5}, Lcom/android/server/backup/transport/TransportClient;->setStateLocked(ILcom/android/internal/backup/IBackupTransport;)V

    .line 485
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/backup/transport/TransportClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_3f

    .line 479
    :cond_27
    invoke-direct {p0, v4, v5}, Lcom/android/server/backup/transport/TransportClient;->setStateLocked(ILcom/android/internal/backup/IBackupTransport;)V

    .line 480
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/backup/transport/TransportClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 481
    invoke-direct {p0, v5}, Lcom/android/server/backup/transport/TransportClient;->notifyListenersAndClearLocked(Lcom/android/internal/backup/IBackupTransport;)V

    .line 482
    goto :goto_3f

    .line 475
    :cond_35
    const-string v1, "Unexpected state transition IDLE => UNUSABLE"

    invoke-direct {p0, v2, v1}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;)V

    .line 476
    invoke-direct {p0, v4, v5}, Lcom/android/server/backup/transport/TransportClient;->setStateLocked(ILcom/android/internal/backup/IBackupTransport;)V

    .line 477
    goto :goto_3f

    .line 473
    :cond_3e
    nop

    .line 488
    :goto_3f
    monitor-exit v0

    .line 489
    return-void

    .line 488
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v1
.end method

.method private onServiceConnected(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "binder"  # Landroid/os/IBinder;

    .line 426
    invoke-static {p1}, Lcom/android/internal/backup/IBackupTransport$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    .line 427
    .local v0, "transport":Lcom/android/internal/backup/IBackupTransport;
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportClient;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 428
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/backup/transport/TransportClient;->checkStateIntegrityLocked()V

    .line 430
    iget v2, p0, Lcom/android/server/backup/transport/TransportClient;->mState:I

    if-eqz v2, :cond_1a

    .line 431
    const-string v2, "Transport connected"

    const/4 v3, 0x3

    invoke-direct {p0, v3, v2}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;)V

    .line 432
    invoke-direct {p0, v3, v0}, Lcom/android/server/backup/transport/TransportClient;->setStateLocked(ILcom/android/internal/backup/IBackupTransport;)V

    .line 433
    invoke-direct {p0, v0}, Lcom/android/server/backup/transport/TransportClient;->notifyListenersAndClearLocked(Lcom/android/internal/backup/IBackupTransport;)V

    .line 435
    :cond_1a
    monitor-exit v1

    .line 436
    return-void

    .line 435
    :catchall_1c
    move-exception v2

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method private onServiceDisconnected()V
    .registers 6

    .line 444
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 445
    const/4 v1, 0x6

    :try_start_4
    const-string v2, "Service disconnected: client UNUSABLE"

    invoke-direct {p0, v1, v2}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;)V

    .line 446
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/backup/transport/TransportClient;->setStateLocked(ILcom/android/internal/backup/IBackupTransport;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_32

    .line 449
    :try_start_e
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/backup/transport/TransportClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_15} :catch_16
    .catchall {:try_start_e .. :try_end_15} :catchall_32

    .line 457
    goto :goto_30

    .line 450
    :catch_16
    move-exception v1

    .line 454
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x5

    :try_start_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception trying to unbind onServiceDisconnected(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 454
    invoke-direct {p0, v2, v3}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;)V

    .line 458
    .end local v1  # "e":Ljava/lang/IllegalArgumentException;
    :goto_30
    monitor-exit v0

    .line 459
    return-void

    .line 458
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_18 .. :try_end_34} :catchall_32

    throw v1
.end method

.method private onStateTransition(II)V
    .registers 13
    .param p1, "oldState"  # I
    .param p2, "newState"  # I

    .line 519
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mTransportComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 520
    .local v0, "transport":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/backup/transport/TransportClient;->transitionThroughState(III)I

    move-result v2

    .line 521
    .local v2, "bound":I
    const/4 v3, 0x3

    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/backup/transport/TransportClient;->transitionThroughState(III)I

    move-result v3

    .line 522
    .local v3, "connected":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_28

    .line 523
    if-ne v2, v5, :cond_18

    move v6, v5

    goto :goto_19

    :cond_18
    move v6, v4

    .line 524
    .local v6, "value":I
    :goto_19
    const/16 v7, 0xb22

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v0, v8, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 526
    .end local v6  # "value":I
    :cond_28
    if-eqz v3, :cond_3e

    .line 527
    if-ne v3, v5, :cond_2e

    move v6, v5

    goto :goto_2f

    :cond_2e
    move v6, v4

    .line 528
    .restart local v6  # "value":I
    :goto_2f
    const/16 v7, 0xb23

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-static {v7, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 530
    .end local v6  # "value":I
    :cond_3e
    return-void
.end method

.method private saveLogEntry(Ljava/lang/String;)V
    .registers 6
    .param p1, "message"  # Ljava/lang/String;

    .line 611
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v2, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 612
    .local v0, "time":Ljava/lang/CharSequence;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 613
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportClient;->mLogBufferLock:Ljava/lang/Object;

    monitor-enter v1

    .line 614
    :try_start_22
    iget-object v2, p0, Lcom/android/server/backup/transport/TransportClient;->mLogBuffer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_38

    .line 615
    iget-object v2, p0, Lcom/android/server/backup/transport/TransportClient;->mLogBuffer:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/backup/transport/TransportClient;->mLogBuffer:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 617
    :cond_38
    iget-object v2, p0, Lcom/android/server/backup/transport/TransportClient;->mLogBuffer:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 618
    monitor-exit v1

    .line 619
    return-void

    .line 618
    :catchall_40
    move-exception v2

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_22 .. :try_end_42} :catchall_40

    throw v2
.end method

.method private setStateLocked(ILcom/android/internal/backup/IBackupTransport;)V
    .registers 5
    .param p1, "state"  # I
    .param p2, "transport"  # Lcom/android/internal/backup/IBackupTransport;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStateLock"
        }
    .end annotation

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/backup/transport/TransportClient;->mState:I

    invoke-direct {p0, v1}, Lcom/android/server/backup/transport/TransportClient;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/server/backup/transport/TransportClient;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;)V

    .line 513
    iget v0, p0, Lcom/android/server/backup/transport/TransportClient;->mState:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/backup/transport/TransportClient;->onStateTransition(II)V

    .line 514
    iput p1, p0, Lcom/android/server/backup/transport/TransportClient;->mState:I

    .line 515
    iput-object p2, p0, Lcom/android/server/backup/transport/TransportClient;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 516
    return-void
.end method

.method private stateToString(I)Ljava/lang/String;
    .registers 4
    .param p1, "state"  # I

    .line 586
    if-eqz p1, :cond_2b

    const/4 v0, 0x1

    if-eq p1, v0, :cond_28

    const/4 v0, 0x2

    if-eq p1, v0, :cond_25

    const/4 v0, 0x3

    if-eq p1, v0, :cond_22

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<UNKNOWN = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 594
    :cond_22
    const-string v0, "CONNECTED"

    return-object v0

    .line 592
    :cond_25
    const-string v0, "BOUND_AND_CONNECTING"

    return-object v0

    .line 590
    :cond_28
    const-string v0, "IDLE"

    return-object v0

    .line 588
    :cond_2b
    const-string v0, "UNUSABLE"

    return-object v0
.end method

.method private transitionThroughState(III)I
    .registers 5
    .param p1, "oldState"  # I
    .param p2, "newState"  # I
    .param p3, "stateReference"  # I

    .line 543
    if-ge p1, p3, :cond_6

    if-gt p3, p2, :cond_6

    .line 544
    const/4 v0, 0x1

    return v0

    .line 546
    :cond_6
    if-lt p1, p3, :cond_c

    if-le p3, p2, :cond_c

    .line 547
    const/4 v0, -0x1

    return v0

    .line 549
    :cond_c
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public connect(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    .registers 16
    .param p1, "caller"  # Ljava/lang/String;

    .line 315
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 314
    const-string v2, "Can\'t call connect() on main thread"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 318
    .local v0, "transport":Lcom/android/internal/backup/IBackupTransport;
    const/4 v2, 0x3

    if-eqz v0, :cond_1a

    .line 319
    const-string v1, "Sync connect: reusing transport"

    invoke-direct {p0, v2, p1, v1}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 320
    return-object v0

    .line 324
    :cond_1a
    iget-object v3, p0, Lcom/android/server/backup/transport/TransportClient;->mStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 325
    :try_start_1d
    iget v4, p0, Lcom/android/server/backup/transport/TransportClient;->mState:I

    const/4 v5, 0x0

    if-nez v4, :cond_2a

    .line 326
    const/4 v1, 0x5

    const-string v2, "Sync connect: UNUSABLE client"

    invoke-direct {p0, v1, p1, v2}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 327
    monitor-exit v3

    return-object v5

    .line 329
    :cond_2a
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_8f

    .line 331
    new-instance v3, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 332
    .local v3, "transportFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Lcom/android/internal/backup/IBackupTransport;>;"
    new-instance v4, Lcom/android/server/backup/transport/-$$Lambda$TransportClient$uc3fygwQjQIS_JT7mlt-yMBfJcE;

    .local v4, "requestListener":Lcom/android/server/backup/transport/TransportConnectionListener;
    invoke-direct {v4, v3}, Lcom/android/server/backup/transport/-$$Lambda$TransportClient$uc3fygwQjQIS_JT7mlt-yMBfJcE;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 336
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 337
    .local v6, "requestTime":J
    const-string v8, "Sync connect: calling async"

    invoke-direct {p0, v2, p1, v8}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0, v4, p1}, Lcom/android/server/backup/transport/TransportClient;->connectAsync(Lcom/android/server/backup/transport/TransportConnectionListener;Ljava/lang/String;)V

    .line 341
    :try_start_41
    invoke-virtual {v3}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/backup/IBackupTransport;

    move-object v0, v8

    .line 342
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    .line 343
    .local v8, "time":J
    iget-object v10, p0, Lcom/android/server/backup/transport/TransportClient;->mTransportStats:Lcom/android/server/backup/transport/TransportStats;

    iget-object v11, p0, Lcom/android/server/backup/transport/TransportClient;->mTransportComponent:Landroid/content/ComponentName;

    invoke-virtual {v10, v11, v8, v9}, Lcom/android/server/backup/transport/TransportStats;->registerConnectionTime(Landroid/content/ComponentName;J)V

    .line 344
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "Connect took %d ms"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v1, v12

    invoke-static {v10, v11, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, p1, v1}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_68} :catch_69
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_41 .. :try_end_68} :catch_69

    .line 345
    return-object v0

    .line 346
    .end local v8  # "time":J
    :catch_69
    move-exception v1

    .line 347
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, "error":Ljava/lang/String;
    const/4 v8, 0x6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " while waiting for transport: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, p1, v9}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 349
    return-object v5

    .line 329
    .end local v1  # "e":Ljava/lang/Exception;
    .end local v2  # "error":Ljava/lang/String;
    .end local v3  # "transportFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Lcom/android/internal/backup/IBackupTransport;>;"
    .end local v4  # "requestListener":Lcom/android/server/backup/transport/TransportConnectionListener;
    .end local v6  # "requestTime":J
    :catchall_8f
    move-exception v1

    :try_start_90
    monitor-exit v3
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    throw v1
.end method

.method public connectAsync(Lcom/android/server/backup/transport/TransportConnectionListener;Ljava/lang/String;)V
    .registers 12
    .param p1, "listener"  # Lcom/android/server/backup/transport/TransportConnectionListener;
    .param p2, "caller"  # Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/backup/transport/TransportClient;->checkStateIntegrityLocked()V

    .line 210
    iget v1, p0, Lcom/android/server/backup/transport/TransportClient;->mState:I

    const/4 v2, 0x0

    if-eqz v1, :cond_5c

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-eq v1, v4, :cond_2b

    if-eq v1, v3, :cond_20

    if-eq v1, v5, :cond_15

    goto :goto_66

    .line 244
    :cond_15
    const-string v1, "Async connect: reusing transport"

    invoke-direct {p0, v5, p2, v1}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportClient;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/backup/transport/TransportClient;->notifyListener(Lcom/android/server/backup/transport/TransportConnectionListener;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;)V

    goto :goto_66

    .line 237
    :cond_20
    const-string v1, "Async connect: already connecting, adding listener"

    invoke-direct {p0, v5, p2, v1}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportClient;->mListeners:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    goto :goto_66

    .line 216
    :cond_2b
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportClient;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/backup/transport/TransportClient;->mBindIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/backup/transport/TransportClient;->mConnection:Landroid/content/ServiceConnection;

    iget v8, p0, Lcom/android/server/backup/transport/TransportClient;->mUserId:I

    .line 221
    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    .line 217
    invoke-virtual {v1, v6, v7, v4, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    .line 222
    .local v1, "hasBound":Z
    if-eqz v1, :cond_4b

    .line 226
    const-string v4, "Async connect: service bound, connecting"

    invoke-direct {p0, v5, p2, v4}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-direct {p0, v3, v2}, Lcom/android/server/backup/transport/TransportClient;->setStateLocked(ILcom/android/internal/backup/IBackupTransport;)V

    .line 228
    iget-object v2, p0, Lcom/android/server/backup/transport/TransportClient;->mListeners:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_66

    .line 230
    :cond_4b
    const/4 v3, 0x6

    const-string v4, "Async connect: bindService returned false"

    invoke-direct {p0, v3, v4}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;)V

    .line 232
    iget-object v3, p0, Lcom/android/server/backup/transport/TransportClient;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/backup/transport/TransportClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 233
    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/backup/transport/TransportClient;->notifyListener(Lcom/android/server/backup/transport/TransportConnectionListener;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;)V

    .line 235
    goto :goto_66

    .line 212
    .end local v1  # "hasBound":Z
    :cond_5c
    const/4 v1, 0x5

    const-string v3, "Async connect: UNUSABLE client"

    invoke-direct {p0, v1, p2, v3}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/backup/transport/TransportClient;->notifyListener(Lcom/android/server/backup/transport/TransportConnectionListener;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;)V

    .line 214
    nop

    .line 248
    :goto_66
    monitor-exit v0

    .line 249
    return-void

    .line 248
    :catchall_68
    move-exception v1

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_3 .. :try_end_6a} :catchall_68

    throw v1
.end method

.method public connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    .registers 5
    .param p1, "caller"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotAvailableException;
        }
    .end annotation

    .line 366
    invoke-virtual {p0, p1}, Lcom/android/server/backup/transport/TransportClient;->connect(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    .line 367
    .local v0, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v0, :cond_7

    .line 371
    return-object v0

    .line 368
    :cond_7
    const/4 v1, 0x6

    const-string v2, "Transport connection failed"

    invoke-direct {p0, v1, p1, v2}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 369
    new-instance v1, Lcom/android/server/backup/transport/TransportNotAvailableException;

    invoke-direct {v1}, Lcom/android/server/backup/transport/TransportNotAvailableException;-><init>()V

    throw v1
.end method

.method protected finalize()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 405
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 406
    iget v1, p0, Lcom/android/server/backup/transport/TransportClient;->mState:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_30

    .line 407
    const-string v1, "TransportClient.finalize()"

    .line 408
    .local v1, "callerLogString":Ljava/lang/String;
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dangling TransportClient created in ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/backup/transport/TransportClient;->mCreatorLogString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] being GC\'ed. Left bound, unbinding..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v1, v3}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_32

    .line 414
    :try_start_2b
    invoke-virtual {p0, v1}, Lcom/android/server/backup/transport/TransportClient;->unbind(Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/IllegalStateException; {:try_start_2b .. :try_end_2e} :catch_2f
    .catchall {:try_start_2b .. :try_end_2e} :catchall_32

    .line 420
    goto :goto_30

    .line 415
    :catch_2f
    move-exception v2

    .line 422
    .end local v1  # "callerLogString":Ljava/lang/String;
    :cond_30
    :goto_30
    :try_start_30
    monitor-exit v0

    .line 423
    return-void

    .line 422
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public getConnectedTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    .registers 5
    .param p1, "caller"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotAvailableException;
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 386
    .local v0, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v0, :cond_5

    .line 390
    return-object v0

    .line 387
    :cond_5
    const/4 v1, 0x6

    const-string v2, "Transport not connected"

    invoke-direct {p0, v1, p1, v2}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 388
    new-instance v1, Lcom/android/server/backup/transport/TransportNotAvailableException;

    invoke-direct {v1}, Lcom/android/server/backup/transport/TransportNotAvailableException;-><init>()V

    throw v1
.end method

.method getLogBuffer()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 622
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mLogBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 623
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportClient;->mLogBuffer:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 624
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getTransportComponent()Landroid/content/ComponentName;
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mTransportComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public synthetic lambda$notifyListener$1$TransportClient(Lcom/android/server/backup/transport/TransportConnectionListener;Lcom/android/internal/backup/IBackupTransport;)V
    .registers 3
    .param p1, "listener"  # Lcom/android/server/backup/transport/TransportConnectionListener;
    .param p2, "transport"  # Lcom/android/internal/backup/IBackupTransport;

    .line 497
    invoke-interface {p1, p2, p0}, Lcom/android/server/backup/transport/TransportConnectionListener;->onTransportConnectionResult(Lcom/android/internal/backup/IBackupTransport;Lcom/android/server/backup/transport/TransportClient;)V

    return-void
.end method

.method public markAsDisposed()V
    .registers 4

    .line 282
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_3
    iget v1, p0, Lcom/android/server/backup/transport/TransportClient;->mState:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    const-string v2, "Can\'t mark as disposed if still bound"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 285
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 286
    monitor-exit v0

    .line 287
    return-void

    .line 286
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransportClient{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/backup/transport/TransportClient;->mTransportComponent:Landroid/content/ComponentName;

    .line 396
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/backup/transport/TransportClient;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 395
    return-object v0
.end method

.method public unbind(Ljava/lang/String;)V
    .registers 8
    .param p1, "caller"  # Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/backup/transport/TransportClient;->checkStateIntegrityLocked()V

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unbind requested (was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/backup/transport/TransportClient;->mState:I

    invoke-direct {p0, v2}, Lcom/android/server/backup/transport/TransportClient;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {p0, v2, p1, v1}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 262
    iget v1, p0, Lcom/android/server/backup/transport/TransportClient;->mState:I

    if-eqz v1, :cond_4d

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4d

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v1, v4, :cond_3f

    if-eq v1, v2, :cond_34

    goto :goto_4e

    .line 273
    :cond_34
    invoke-direct {p0, v3, v5}, Lcom/android/server/backup/transport/TransportClient;->setStateLocked(ILcom/android/internal/backup/IBackupTransport;)V

    .line 274
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/backup/transport/TransportClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_4e

    .line 267
    :cond_3f
    invoke-direct {p0, v3, v5}, Lcom/android/server/backup/transport/TransportClient;->setStateLocked(ILcom/android/internal/backup/IBackupTransport;)V

    .line 269
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/backup/transport/TransportClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 270
    invoke-direct {p0, v5}, Lcom/android/server/backup/transport/TransportClient;->notifyListenersAndClearLocked(Lcom/android/internal/backup/IBackupTransport;)V

    .line 271
    goto :goto_4e

    .line 265
    :cond_4d
    nop

    .line 277
    :goto_4e
    monitor-exit v0

    .line 278
    return-void

    .line 277
    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_50

    throw v1
.end method
