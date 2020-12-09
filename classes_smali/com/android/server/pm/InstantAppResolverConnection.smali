.class final Lcom/android/server/pm/InstantAppResolverConnection;
.super Ljava/lang/Object;
.source "InstantAppResolverConnection.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;,
        Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;,
        Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;,
        Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;
    }
.end annotation


# static fields
.field private static final BIND_SERVICE_TIMEOUT_MS:J

.field private static final CALL_SERVICE_TIMEOUT_MS:J

.field private static final DEBUG_INSTANT:Z

.field private static final STATE_BINDING:I = 0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PENDING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PackageManager"


# instance fields
.field private final mBgHandler:Landroid/os/Handler;

.field private mBindState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mGetInstantAppResolveInfoCaller:Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;

.field private final mIntent:Landroid/content/Intent;

.field private final mLock:Ljava/lang/Object;

.field private mRemoteInstance:Landroid/app/IInstantAppResolver;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 58
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x1f4

    goto :goto_9

    :cond_7
    const-wide/16 v0, 0x12c

    :goto_9
    sput-wide v0, Lcom/android/server/pm/InstantAppResolverConnection;->BIND_SERVICE_TIMEOUT_MS:J

    .line 60
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_12

    const-wide/16 v0, 0xc8

    goto :goto_14

    :cond_12
    const-wide/16 v0, 0x64

    :goto_14
    sput-wide v0, Lcom/android/server/pm/InstantAppResolverConnection;->CALL_SERVICE_TIMEOUT_MS:J

    .line 61
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 6

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    .line 64
    new-instance v0, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;

    invoke-direct {v0}, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mGetInstantAppResolveInfoCaller:Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;

    .line 66
    new-instance v0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;-><init>(Lcom/android/server/pm/InstantAppResolverConnection;Lcom/android/server/pm/InstantAppResolverConnection$1;)V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    .line 83
    iput-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mContext:Landroid/content/Context;

    .line 84
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mIntent:Landroid/content/Intent;

    .line 85
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBgHandler:Landroid/os/Handler;

    .line 86
    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 54
    sget-boolean v0, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/InstantAppResolverConnection;)Ljava/lang/Object;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/server/pm/InstantAppResolverConnection;Landroid/app/IInstantAppResolver;)Landroid/app/IInstantAppResolver;
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/pm/InstantAppResolverConnection;)I
    .registers 1

    .line 54
    iget p0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/server/pm/InstantAppResolverConnection;I)I
    .registers 2

    .line 54
    iput p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/pm/InstantAppResolverConnection;)V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/android/server/pm/InstantAppResolverConnection;->handleBinderDiedLocked()V

    return-void
.end method

.method static synthetic access$600()J
    .registers 2

    .line 54
    sget-wide v0, Lcom/android/server/pm/InstantAppResolverConnection;->CALL_SERVICE_TIMEOUT_MS:J

    return-wide v0
.end method

.method private bind(Ljava/lang/String;)Landroid/app/IInstantAppResolver;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 170
    nop

    .line 171
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    :try_start_4
    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    if-eqz v1, :cond_c

    .line 173
    iget-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    monitor-exit v0

    return-object p1

    .line 176
    :cond_c
    iget v1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_41

    .line 178
    sget-boolean v1, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    if-eqz v1, :cond_32

    .line 179
    const-string v1, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] Previous bind timed out; waiting for connection"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_135

    .line 182
    :cond_32
    :try_start_32
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstantAppResolverConnection;->waitForBindLocked(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    if-eqz v1, :cond_3d

    .line 184
    iget-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;
    :try_end_3b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_32 .. :try_end_3b} :catch_3e
    .catchall {:try_start_32 .. :try_end_3b} :catchall_135

    :try_start_3b
    monitor-exit v0

    return-object p1

    .line 189
    :cond_3d
    goto :goto_41

    .line 186
    :catch_3e
    move-exception v1

    .line 188
    move v1, v4

    goto :goto_42

    .line 192
    :cond_41
    :goto_41
    move v1, v3

    :goto_42
    iget v5, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    if-ne v5, v4, :cond_76

    .line 195
    sget-boolean v1, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    if-eqz v1, :cond_65

    .line 196
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] Another thread is binding; waiting for connection"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_65
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstantAppResolverConnection;->waitForBindLocked(Ljava/lang/String;)V

    .line 200
    iget-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    if-eqz p1, :cond_70

    .line 201
    iget-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    monitor-exit v0

    return-object p1

    .line 203
    :cond_70
    new-instance p1, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    invoke-direct {p1, v4}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    throw p1

    .line 205
    :cond_76
    iput v4, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    .line 206
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_3b .. :try_end_79} :catchall_135

    .line 209
    nop

    .line 210
    const/4 v0, 0x0

    .line 212
    if-eqz v1, :cond_a3

    .line 213
    :try_start_7d
    sget-boolean v1, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    if-eqz v1, :cond_9c

    .line 214
    const-string v1, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] Previous connection never established; rebinding"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_9c
    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 218
    :cond_a3
    sget-boolean v1, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    if-eqz v1, :cond_c2

    .line 219
    const-string v1, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] Binding to instant app resolver"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_c2
    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mIntent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    const v7, 0x4000001

    sget-object v8, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 223
    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1
    :try_end_d1
    .catchall {:try_start_7d .. :try_end_d1} :catchall_11d

    .line 224
    if-eqz v1, :cond_f5

    .line 225
    :try_start_d3
    iget-object v4, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_d6
    .catchall {:try_start_d3 .. :try_end_d6} :catchall_11b

    .line 226
    :try_start_d6
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstantAppResolverConnection;->waitForBindLocked(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    .line 228
    monitor-exit v4
    :try_end_dc
    .catchall {:try_start_d6 .. :try_end_dc} :catchall_f2

    .line 235
    iget-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 236
    if-eqz v1, :cond_e6

    if-nez v0, :cond_e6

    .line 237
    :try_start_e3
    iput v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    goto :goto_e8

    .line 239
    :cond_e6
    iput v3, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    .line 241
    :goto_e8
    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 242
    monitor-exit p1

    .line 228
    return-object v0

    .line 242
    :catchall_ef
    move-exception v0

    monitor-exit p1
    :try_end_f1
    .catchall {:try_start_e3 .. :try_end_f1} :catchall_ef

    throw v0

    .line 229
    :catchall_f2
    move-exception p1

    :try_start_f3
    monitor-exit v4
    :try_end_f4
    .catchall {:try_start_f3 .. :try_end_f4} :catchall_f2

    :try_start_f4
    throw p1

    .line 231
    :cond_f5
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] Failed to bind to: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mIntent:Landroid/content/Intent;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance p1, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    invoke-direct {p1, v4}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    throw p1
    :try_end_11b
    .catchall {:try_start_f4 .. :try_end_11b} :catchall_11b

    .line 235
    :catchall_11b
    move-exception p1

    goto :goto_11f

    :catchall_11d
    move-exception p1

    move v1, v3

    :goto_11f
    iget-object v4, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 236
    if-eqz v1, :cond_129

    if-nez v0, :cond_129

    .line 237
    :try_start_126
    iput v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    goto :goto_12b

    .line 239
    :cond_129
    iput v3, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    .line 241
    :goto_12b
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 242
    monitor-exit v4
    :try_end_131
    .catchall {:try_start_126 .. :try_end_131} :catchall_132

    throw p1

    :catchall_132
    move-exception p1

    :try_start_133
    monitor-exit v4
    :try_end_134
    .catchall {:try_start_133 .. :try_end_134} :catchall_132

    throw p1

    .line 206
    :catchall_135
    move-exception p1

    :try_start_136
    monitor-exit v0
    :try_end_137
    .catchall {:try_start_136 .. :try_end_137} :catchall_135

    throw p1
.end method

.method private getRemoteInstanceLazy(Ljava/lang/String;)Landroid/app/IInstantAppResolver;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 143
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 145
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstantAppResolverConnection;->bind(Ljava/lang/String;)Landroid/app/IInstantAppResolver;

    move-result-object p1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 147
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 145
    return-object p1

    .line 147
    :catchall_c
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private handleBinderDiedLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    if-eqz v0, :cond_e

    .line 280
    :try_start_4
    invoke-interface {v0}, Landroid/app/IInstantAppResolver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_c
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_c} :catch_d

    goto :goto_e

    .line 281
    :catch_d
    move-exception v0

    .line 283
    :cond_e
    :goto_e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    .line 284
    return-void
.end method

.method private throwIfCalledOnMainThread()V
    .registers 3

    .line 247
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_11

    .line 250
    return-void

    .line 248
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot invoke on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private waitForBindLocked(Ljava/lang/String;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 154
    :goto_4
    iget v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    if-eqz v2, :cond_3d

    .line 155
    iget-object v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    if-eqz v2, :cond_d

    .line 156
    goto :goto_3d

    .line 158
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 159
    sget-wide v4, Lcom/android/server/pm/InstantAppResolverConnection;->BIND_SERVICE_TIMEOUT_MS:J

    sub-long/2addr v4, v2

    .line 160
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_21

    .line 163
    iget-object v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 164
    goto :goto_4

    .line 161
    :cond_21
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] Didn\'t bind to resolver in time!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_3d
    :goto_3d
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 267
    sget-boolean v0, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_b

    .line 268
    const-string v0, "PackageManager"

    const-string v1, "Binder to instant app resolver died"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_e
    invoke-direct {p0}, Lcom/android/server/pm/InstantAppResolverConnection;->handleBinderDiedLocked()V

    .line 272
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_16

    .line 273
    invoke-virtual {p0}, Lcom/android/server/pm/InstantAppResolverConnection;->optimisticBind()V

    .line 274
    return-void

    .line 272
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public getInstantAppIntentFilterList(Landroid/content/Intent;[IILjava/lang/String;Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;Landroid/os/Handler;J)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;
        }
    .end annotation

    .line 119
    new-instance v6, Lcom/android/server/pm/InstantAppResolverConnection$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p6

    move-object v3, p5

    move-wide v4, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/InstantAppResolverConnection$1;-><init>(Lcom/android/server/pm/InstantAppResolverConnection;Landroid/os/Handler;Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;J)V

    .line 129
    :try_start_a
    invoke-direct {p0, p4}, Lcom/android/server/pm/InstantAppResolverConnection;->getRemoteInstanceLazy(Ljava/lang/String;)Landroid/app/IInstantAppResolver;

    move-result-object v0

    .line 130
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v6

    invoke-interface/range {v0 .. v5}, Landroid/app/IInstantAppResolver;->getInstantAppIntentFilterList(Landroid/content/Intent;[IILjava/lang/String;Landroid/os/IRemoteCallback;)V
    :try_end_16
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_a .. :try_end_16} :catch_21
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_16} :catch_19
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_17

    .line 137
    goto :goto_18

    .line 136
    :catch_17
    move-exception p1

    .line 138
    :goto_18
    return-void

    .line 134
    :catch_19
    move-exception p1

    .line 135
    new-instance p1, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    throw p1

    .line 132
    :catch_21
    move-exception p1

    .line 133
    new-instance p1, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    throw p1
.end method

.method public getInstantAppResolveInfoList(Landroid/content/Intent;[IILjava/lang/String;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "[II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lcom/android/server/pm/InstantAppResolverConnection;->throwIfCalledOnMainThread()V

    .line 91
    nop

    .line 94
    :try_start_4
    invoke-direct {p0, p4}, Lcom/android/server/pm/InstantAppResolverConnection;->getRemoteInstanceLazy(Ljava/lang/String;)Landroid/app/IInstantAppResolver;

    move-result-object v1
    :try_end_8
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_8} :catch_42
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_8} :catch_3a
    .catchall {:try_start_4 .. :try_end_8} :catchall_38

    .line 99
    nop

    .line 101
    :try_start_9
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mGetInstantAppResolveInfoCaller:Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;

    .line 102
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;->getInstantAppResolveInfoList(Landroid/app/IInstantAppResolver;Landroid/content/Intent;[IILjava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_13
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_9 .. :try_end_13} :catch_30
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_20
    .catchall {:try_start_9 .. :try_end_13} :catchall_38

    .line 109
    iget-object p2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 110
    :try_start_16
    iget-object p3, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->notifyAll()V

    .line 111
    monitor-exit p2

    .line 101
    return-object p1

    .line 111
    :catchall_1d
    move-exception p1

    monitor-exit p2
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_1d

    throw p1

    .line 106
    :catch_20
    move-exception p1

    .line 109
    iget-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 110
    :try_start_24
    iget-object p2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 111
    monitor-exit p1

    .line 112
    nop

    .line 113
    const/4 p1, 0x0

    return-object p1

    .line 111
    :catchall_2d
    move-exception p2

    monitor-exit p1
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_2d

    throw p2

    .line 104
    :catch_30
    move-exception p1

    .line 105
    :try_start_31
    new-instance p1, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    throw p1

    .line 109
    :catchall_38
    move-exception p1

    goto :goto_4a

    .line 97
    :catch_3a
    move-exception p1

    .line 98
    new-instance p1, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    throw p1

    .line 95
    :catch_42
    move-exception p1

    .line 96
    new-instance p1, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    throw p1
    :try_end_4a
    .catchall {:try_start_31 .. :try_end_4a} :catchall_38

    .line 109
    :goto_4a
    iget-object p2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 110
    :try_start_4d
    iget-object p3, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->notifyAll()V

    .line 111
    monitor-exit p2
    :try_end_53
    .catchall {:try_start_4d .. :try_end_53} :catchall_54

    throw p1

    :catchall_54
    move-exception p1

    :try_start_55
    monitor-exit p2
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw p1
.end method

.method public synthetic lambda$optimisticBind$0$InstantAppResolverConnection()V
    .registers 4

    .line 256
    const-string v0, "PackageManager"

    :try_start_2
    const-string v1, "Optimistic Bind"

    invoke-direct {p0, v1}, Lcom/android/server/pm/InstantAppResolverConnection;->bind(Ljava/lang/String;)Landroid/app/IInstantAppResolver;

    move-result-object v1

    if-eqz v1, :cond_13

    sget-boolean v1, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    if-eqz v1, :cond_13

    .line 257
    const-string v1, "Optimistic bind succeeded."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_2 .. :try_end_13} :catch_14
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_13} :catch_14
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_13} :catch_14

    .line 261
    :cond_13
    goto :goto_1a

    .line 259
    :catch_14
    move-exception v1

    .line 260
    const-string v2, "Optimistic bind failed."

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    :goto_1a
    return-void
.end method

.method optimisticBind()V
    .registers 3

    .line 254
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$InstantAppResolverConnection$D-JKXi4qrYjnPQMOwj8UtfZenps;

    invoke-direct {v1, p0}, Lcom/android/server/pm/-$$Lambda$InstantAppResolverConnection$D-JKXi4qrYjnPQMOwj8UtfZenps;-><init>(Lcom/android/server/pm/InstantAppResolverConnection;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 263
    return-void
.end method
