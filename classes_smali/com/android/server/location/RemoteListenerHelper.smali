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

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    .line 61
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mLastReportedResult:I

    .line 64
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iput-object p2, p0, Lcom/android/server/location/RemoteListenerHelper;->mHandler:Landroid/os/Handler;

    .line 66
    iput-object p3, p0, Lcom/android/server/location/RemoteListenerHelper;->mTag:Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/android/server/location/RemoteListenerHelper;->mContext:Landroid/content/Context;

    .line 68
    const-string p2, "appops"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/location/RemoteListenerHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 69
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/location/RemoteListenerHelper;)Z
    .registers 1

    .line 38
    iget-boolean p0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/server/location/RemoteListenerHelper;Z)Z
    .registers 2

    .line 38
    iput-boolean p1, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/location/RemoteListenerHelper;)Ljava/util/Map;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/location/RemoteListenerHelper;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/location/RemoteListenerHelper;->foreachUnsafe(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/location/RemoteListenerHelper;)Ljava/lang/String;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/android/server/location/RemoteListenerHelper;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method private calculateCurrentResultUnsafe()I
    .registers 2

    .line 243
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->isAvailableInPlatform()Z

    move-result v0

    if-nez v0, :cond_8

    .line 244
    const/4 v0, 0x1

    return v0

    .line 246
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mHasIsSupported:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_25

    .line 250
    :cond_15
    iget-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsSupported:Z

    if-nez v0, :cond_1b

    .line 251
    const/4 v0, 0x2

    return v0

    .line 253
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->isGpsEnabled()Z

    move-result v0

    if-nez v0, :cond_23

    .line 254
    const/4 v0, 0x3

    return v0

    .line 256
    :cond_23
    const/4 v0, 0x0

    return v0

    .line 248
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

    .line 197
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

    .line 198
    invoke-direct {p0, v1, p1}, Lcom/android/server/location/RemoteListenerHelper;->post(Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 199
    goto :goto_a

    .line 200
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

    .line 204
    if-eqz p2, :cond_d

    .line 205
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;-><init>(Lcom/android/server/location/RemoteListenerHelper;Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;Lcom/android/server/location/RemoteListenerHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 207
    :cond_d
    return-void
.end method

.method private tryRegister()V
    .registers 3

    .line 210
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/RemoteListenerHelper$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/RemoteListenerHelper$1;-><init>(Lcom/android/server/location/RemoteListenerHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 228
    return-void
.end method

.method private tryUnregister()V
    .registers 3

    .line 231
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$RemoteListenerHelper$0Rlnad83RE1JdiVK0ULOLm530JM;

    invoke-direct {v1, p0}, Lcom/android/server/location/-$$Lambda$RemoteListenerHelper$0Rlnad83RE1JdiVK0ULOLm530JM;-><init>(Lcom/android/server/location/RemoteListenerHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 239
    return-void
.end method


# virtual methods
.method public addListener(Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            "Lcom/android/server/location/CallerIdentity;",
            ")V"
        }
    .end annotation

    .line 80
    const-string v0, "Attempted to register a \'null\' listener."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    monitor-enter v1

    .line 83
    :try_start_c
    iget-object v2, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 85
    monitor-exit v1

    return-void

    .line 88
    :cond_16
    new-instance v2, Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;-><init>(Lcom/android/server/location/RemoteListenerHelper;Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;Lcom/android/server/location/RemoteListenerHelper$1;)V

    .line 90
    iget-object p1, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->isAvailableInPlatform()Z

    move-result p1

    if-nez p1, :cond_29

    .line 95
    const/4 p1, 0x1

    goto :goto_47

    .line 96
    :cond_29
    iget-boolean p1, p0, Lcom/android/server/location/RemoteListenerHelper;->mHasIsSupported:Z

    if-eqz p1, :cond_33

    iget-boolean p1, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsSupported:Z

    if-nez p1, :cond_33

    .line 97
    const/4 p1, 0x2

    goto :goto_47

    .line 98
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->isGpsEnabled()Z

    move-result p1

    if-nez p1, :cond_3b

    .line 101
    const/4 p1, 0x3

    goto :goto_47

    .line 102
    :cond_3b
    iget-boolean p1, p0, Lcom/android/server/location/RemoteListenerHelper;->mHasIsSupported:Z

    if-eqz p1, :cond_50

    iget-boolean p1, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsSupported:Z

    if-eqz p1, :cond_50

    .line 103
    invoke-direct {p0}, Lcom/android/server/location/RemoteListenerHelper;->tryRegister()V

    .line 105
    const/4 p1, 0x0

    .line 111
    :goto_47
    invoke-virtual {p0, p1}, Lcom/android/server/location/RemoteListenerHelper;->getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/android/server/location/RemoteListenerHelper;->post(Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 112
    monitor-exit v1

    .line 113
    return-void

    .line 109
    :cond_50
    monitor-exit v1

    return-void

    .line 112
    :catchall_52
    move-exception p1

    monitor-exit v1
    :try_end_54
    .catchall {:try_start_c .. :try_end_54} :catchall_52

    throw p1
.end method

.method protected foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<",
            "TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    monitor-enter v0

    .line 141
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/location/RemoteListenerHelper;->foreachUnsafe(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 142
    monitor-exit v0

    .line 143
    return-void

    .line 142
    :catchall_8
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
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
    .registers 6

    .line 177
    invoke-static {p1, p2}, Lcom/android/server/location/LocationPermissionUtil;->doesCallerReportToAppOps(Landroid/content/Context;Lcom/android/server/location/CallerIdentity;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_16

    .line 180
    iget-object p1, p0, Lcom/android/server/location/RemoteListenerHelper;->mAppOps:Landroid/app/AppOpsManager;

    iget v2, p2, Lcom/android/server/location/CallerIdentity;->mUid:I

    iget-object p2, p2, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_15

    move v0, v1

    :cond_15
    return v0

    .line 184
    :cond_16
    iget-object p1, p0, Lcom/android/server/location/RemoteListenerHelper;->mAppOps:Landroid/app/AppOpsManager;

    iget v2, p2, Lcom/android/server/location/CallerIdentity;->mUid:I

    iget-object p2, p2, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, p2}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_23

    move v0, v1

    :cond_23
    return v0
.end method

.method protected abstract isAvailableInPlatform()Z
.end method

.method protected abstract isGpsEnabled()Z
.end method

.method public isRegistered()Z
    .registers 2

    .line 73
    iget-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z

    return v0
.end method

.method public synthetic lambda$tryUnregister$0$RemoteListenerHelper()V
    .registers 2

    .line 232
    iget-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z

    if-nez v0, :cond_5

    .line 233
    return-void

    .line 235
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->unregisterFromService()V

    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z

    .line 237
    return-void
.end method

.method protected logPermissionDisabledEventNotReported(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 190
    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Location permission disabled. Skipping "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " reporting for app: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_23
    return-void
.end method

.method protected abstract registerWithService()I
.end method

.method public removeListener(Landroid/os/IInterface;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")V"
        }
    .end annotation

    .line 119
    const-string v0, "Attempted to remove a \'null\' listener."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    monitor-enter v0

    .line 121
    :try_start_8
    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object p1, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 123
    invoke-direct {p0}, Lcom/android/server/location/RemoteListenerHelper;->tryUnregister()V

    .line 125
    :cond_1c
    monitor-exit v0

    .line 126
    return-void

    .line 125
    :catchall_1e
    move-exception p1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method protected setSupported(Z)V
    .registers 4

    .line 146
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    monitor-enter v0

    .line 147
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/location/RemoteListenerHelper;->mHasIsSupported:Z

    .line 148
    iput-boolean p1, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsSupported:Z

    .line 149
    monitor-exit v0

    .line 150
    return-void

    .line 149
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw p1
.end method

.method protected tryUpdateRegistrationWithService()V
    .registers 3

    .line 153
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    monitor-enter v0

    .line 154
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->isGpsEnabled()Z

    move-result v1

    if-nez v1, :cond_e

    .line 155
    invoke-direct {p0}, Lcom/android/server/location/RemoteListenerHelper;->tryUnregister()V

    .line 156
    monitor-exit v0

    return-void

    .line 158
    :cond_e
    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 159
    monitor-exit v0

    return-void

    .line 161
    :cond_18
    invoke-direct {p0}, Lcom/android/server/location/RemoteListenerHelper;->tryRegister()V

    .line 162
    monitor-exit v0

    .line 163
    return-void

    .line 162
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

    .line 166
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    monitor-enter v0

    .line 167
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/location/RemoteListenerHelper;->calculateCurrentResultUnsafe()I

    move-result v1

    .line 168
    iget v2, p0, Lcom/android/server/location/RemoteListenerHelper;->mLastReportedResult:I

    if-ne v2, v1, :cond_d

    .line 169
    monitor-exit v0

    return-void

    .line 171
    :cond_d
    invoke-virtual {p0, v1}, Lcom/android/server/location/RemoteListenerHelper;->getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/location/RemoteListenerHelper;->foreachUnsafe(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 172
    iput v1, p0, Lcom/android/server/location/RemoteListenerHelper;->mLastReportedResult:I

    .line 173
    monitor-exit v0

    .line 174
    return-void

    .line 173
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method
