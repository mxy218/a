.class public abstract Lcom/android/server/location/RemoteListenerHelper;
.super Ljava/lang/Object;
.source "RemoteListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;,
        Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;,
        Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Listener::Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final RESULT_GPS_LOCATION_DISABLED:I = 0x3

.field protected static final RESULT_INTERNAL_ERROR:I = 0x4

.field protected static final RESULT_NOT_ALLOWED:I = 0x6

.field protected static final RESULT_NOT_AVAILABLE:I = 0x1

.field protected static final RESULT_NOT_SUPPORTED:I = 0x2

.field protected static final RESULT_SUCCESS:I = 0x0

.field protected static final RESULT_UNKNOWN:I = 0x5


# instance fields
.field protected final mAppOps:Landroid/app/AppOpsManager;

.field protected final mContext:Landroid/content/Context;

.field protected final mHandler:Landroid/os/Handler;

.field private mHasIsSupported:Z

.field private volatile mIsRegistered:Z

.field private mIsSupported:Z

.field private mLastReportedResult:I

.field private final mListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/RemoteListenerHelper<",
            "TT",
            "Listener;",
            ">.Identified",
            "Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "handler"  # Landroid/os/Handler;
    .param p3, "name"  # Ljava/lang/String;

    .line 64
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    .line 62
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mLastReportedResult:I

    .line 65
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iput-object p2, p0, Lcom/android/server/location/RemoteListenerHelper;->mHandler:Landroid/os/Handler;

    .line 67
    iput-object p3, p0, Lcom/android/server/location/RemoteListenerHelper;->mTag:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/android/server/location/RemoteListenerHelper;->mContext:Landroid/content/Context;

    .line 69
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 70
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/location/RemoteListenerHelper;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/location/RemoteListenerHelper;

    .line 39
    iget-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/location/RemoteListenerHelper;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/location/RemoteListenerHelper;
    .param p1, "x1"  # Z

    .line 39
    iput-boolean p1, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/location/RemoteListenerHelper;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/location/RemoteListenerHelper;

    .line 39
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/location/RemoteListenerHelper;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/location/RemoteListenerHelper;
    .param p1, "x1"  # Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;

    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/location/RemoteListenerHelper;->foreachUnsafe(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/location/RemoteListenerHelper;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/location/RemoteListenerHelper;

    .line 39
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method private calculateCurrentResultUnsafe()I
    .registers 2

    .line 244
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->isAvailableInPlatform()Z

    move-result v0

    if-nez v0, :cond_8

    .line 245
    const/4 v0, 0x1

    return v0

    .line 247
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mHasIsSupported:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_25

    .line 251
    :cond_15
    iget-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsSupported:Z

    if-nez v0, :cond_1b

    .line 252
    const/4 v0, 0x2

    return v0

    .line 254
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->isGpsEnabled()Z

    move-result v0

    if-nez v0, :cond_23

    .line 255
    const/4 v0, 0x3

    return v0

    .line 257
    :cond_23
    const/4 v0, 0x0

    return v0

    .line 249
    :cond_25
    :goto_25
    const/4 v0, 0x5

    return v0
.end method

.method private foreachUnsafe(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<",
            "TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    .line 198
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p1, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<TTListener;>;"
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;

    .line 199
    .local v1, "identifiedListener":Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.IdentifiedListener;"
    invoke-direct {p0, v1, p1}, Lcom/android/server/location/RemoteListenerHelper;->post(Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 200
    .end local v1  # "identifiedListener":Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.IdentifiedListener;"
    goto :goto_a

    .line 201
    :cond_1a
    return-void
.end method

.method private post(Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/location/RemoteListenerHelper<",
            "TT",
            "Listener;",
            ">.Identified",
            "Listener;",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<",
            "TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    .line 205
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p1, "identifiedListener":Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.IdentifiedListener;"
    .local p2, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<TTListener;>;"
    if-eqz p2, :cond_d

    .line 206
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;-><init>(Lcom/android/server/location/RemoteListenerHelper;Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;Lcom/android/server/location/RemoteListenerHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 208
    :cond_d
    return-void
.end method

.method private tryRegister()V
    .registers 3

    .line 211
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/RemoteListenerHelper$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/RemoteListenerHelper$1;-><init>(Lcom/android/server/location/RemoteListenerHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 229
    return-void
.end method

.method private tryUnregister()V
    .registers 3

    .line 232
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$RemoteListenerHelper$0Rlnad83RE1JdiVK0ULOLm530JM;

    invoke-direct {v1, p0}, Lcom/android/server/location/-$$Lambda$RemoteListenerHelper$0Rlnad83RE1JdiVK0ULOLm530JM;-><init>(Lcom/android/server/location/RemoteListenerHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 240
    return-void
.end method


# virtual methods
.method public addListener(Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;)V
    .registers 8
    .param p2, "callerIdentity"  # Lcom/android/server/location/CallerIdentity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            "Lcom/android/server/location/CallerIdentity;",
            ")V"
        }
    .end annotation

    .line 81
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p1, "listener":Landroid/os/IInterface;, "TTListener;"
    const-string v0, "Attempted to register a \'null\' listener."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 83
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    monitor-enter v1

    .line 84
    :try_start_c
    iget-object v2, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 86
    monitor-exit v1

    return-void

    .line 89
    :cond_16
    new-instance v2, Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;-><init>(Lcom/android/server/location/RemoteListenerHelper;Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;Lcom/android/server/location/RemoteListenerHelper$1;)V

    .line 91
    .local v2, "identifiedListener":Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.IdentifiedListener;"
    iget-object v3, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->isAvailableInPlatform()Z

    move-result v3

    if-nez v3, :cond_29

    .line 96
    const/4 v3, 0x1

    .local v3, "result":I
    goto :goto_47

    .line 97
    .end local v3  # "result":I
    :cond_29
    iget-boolean v3, p0, Lcom/android/server/location/RemoteListenerHelper;->mHasIsSupported:Z

    if-eqz v3, :cond_33

    iget-boolean v3, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsSupported:Z

    if-nez v3, :cond_33

    .line 98
    const/4 v3, 0x2

    .restart local v3  # "result":I
    goto :goto_47

    .line 99
    .end local v3  # "result":I
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->isGpsEnabled()Z

    move-result v3

    if-nez v3, :cond_3b

    .line 102
    const/4 v3, 0x3

    .restart local v3  # "result":I
    goto :goto_47

    .line 103
    .end local v3  # "result":I
    :cond_3b
    iget-boolean v3, p0, Lcom/android/server/location/RemoteListenerHelper;->mHasIsSupported:Z

    if-eqz v3, :cond_50

    iget-boolean v3, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsSupported:Z

    if-eqz v3, :cond_50

    .line 104
    invoke-direct {p0}, Lcom/android/server/location/RemoteListenerHelper;->tryRegister()V

    .line 106
    const/4 v3, 0x0

    .line 112
    .restart local v3  # "result":I
    :goto_47
    invoke-virtual {p0, v3}, Lcom/android/server/location/RemoteListenerHelper;->getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/android/server/location/RemoteListenerHelper;->post(Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 113
    .end local v2  # "identifiedListener":Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.IdentifiedListener;"
    .end local v3  # "result":I
    monitor-exit v1

    .line 114
    return-void

    .line 110
    .restart local v2  # "identifiedListener":Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.IdentifiedListener;"
    :cond_50
    monitor-exit v1

    return-void

    .line 113
    .end local v2  # "identifiedListener":Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.IdentifiedListener;"
    :catchall_52
    move-exception v2

    monitor-exit v1
    :try_end_54
    .catchall {:try_start_c .. :try_end_54} :catchall_52

    throw v2
.end method

.method protected foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<",
            "TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    .line 141
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p1, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<TTListener;>;"
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    monitor-enter v0

    .line 142
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/location/RemoteListenerHelper;->foreachUnsafe(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 143
    monitor-exit v0

    .line 144
    return-void

    .line 143
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method protected abstract getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<",
            "TT",
            "Listener;",
            ">;"
        }
    .end annotation
.end method

.method protected hasPermission(Landroid/content/Context;Lcom/android/server/location/CallerIdentity;)Z
    .registers 8
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "callerIdentity"  # Lcom/android/server/location/CallerIdentity;

    .line 178
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    invoke-static {p1, p2}, Lcom/android/server/location/LocationPermissionUtil;->doesCallerReportToAppOps(Landroid/content/Context;Lcom/android/server/location/CallerIdentity;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    .line 181
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mAppOps:Landroid/app/AppOpsManager;

    iget v3, p2, Lcom/android/server/location/CallerIdentity;->mUid:I

    iget-object v4, p2, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    move v1, v2

    :cond_15
    return v1

    .line 185
    :cond_16
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mAppOps:Landroid/app/AppOpsManager;

    iget v3, p2, Lcom/android/server/location/CallerIdentity;->mUid:I

    iget-object v4, p2, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_23

    move v1, v2

    :cond_23
    return v1
.end method

.method protected abstract isAvailableInPlatform()Z
.end method

.method protected abstract isGpsEnabled()Z
.end method

.method public isRegistered()Z
    .registers 2

    .line 74
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    iget-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z

    return v0
.end method

.method public synthetic lambda$tryUnregister$0$RemoteListenerHelper()V
    .registers 2

    .line 233
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    iget-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z

    if-nez v0, :cond_5

    .line 234
    return-void

    .line 236
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->unregisterFromService()V

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z

    .line 238
    return-void
.end method

.method protected logPermissionDisabledEventNotReported(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "event"  # Ljava/lang/String;

    .line 191
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Location permission disabled. Skipping "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reporting for app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_23
    return-void
.end method

.method protected abstract registerWithService()I
.end method

.method public removeListener(Landroid/os/IInterface;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")V"
        }
    .end annotation

    .line 120
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p1, "listener":Landroid/os/IInterface;, "TTListener;"
    const-string v0, "Attempted to remove a \'null\' listener."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    monitor-enter v0

    .line 122
    :try_start_8
    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 124
    invoke-direct {p0}, Lcom/android/server/location/RemoteListenerHelper;->tryUnregister()V

    .line 126
    :cond_1c
    monitor-exit v0

    .line 127
    return-void

    .line 126
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method protected setSupported(Z)V
    .registers 4
    .param p1, "value"  # Z

    .line 147
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    monitor-enter v0

    .line 148
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/location/RemoteListenerHelper;->mHasIsSupported:Z

    .line 149
    iput-boolean p1, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsSupported:Z

    .line 150
    monitor-exit v0

    .line 151
    return-void

    .line 150
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method protected tryUpdateRegistrationWithService()V
    .registers 3

    .line 154
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    monitor-enter v0

    .line 155
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->isGpsEnabled()Z

    move-result v1

    if-nez v1, :cond_e

    .line 156
    invoke-direct {p0}, Lcom/android/server/location/RemoteListenerHelper;->tryUnregister()V

    .line 157
    monitor-exit v0

    return-void

    .line 159
    :cond_e
    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 160
    monitor-exit v0

    return-void

    .line 162
    :cond_18
    invoke-direct {p0}, Lcom/android/server/location/RemoteListenerHelper;->tryRegister()V

    .line 163
    monitor-exit v0

    .line 164
    return-void

    .line 163
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method protected abstract unregisterFromService()V
.end method

.method protected updateResult()V
    .registers 4

    .line 167
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    monitor-enter v0

    .line 168
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/location/RemoteListenerHelper;->calculateCurrentResultUnsafe()I

    move-result v1

    .line 169
    .local v1, "newResult":I
    iget v2, p0, Lcom/android/server/location/RemoteListenerHelper;->mLastReportedResult:I

    if-ne v2, v1, :cond_d

    .line 170
    monitor-exit v0

    return-void

    .line 172
    :cond_d
    invoke-virtual {p0, v1}, Lcom/android/server/location/RemoteListenerHelper;->getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/location/RemoteListenerHelper;->foreachUnsafe(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 173
    iput v1, p0, Lcom/android/server/location/RemoteListenerHelper;->mLastReportedResult:I

    .line 174
    .end local v1  # "newResult":I
    monitor-exit v0

    .line 175
    return-void

    .line 174
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method
