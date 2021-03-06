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
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "componentName"  # Landroid/content/ComponentName;
    .param p3, "action"  # Ljava/lang/String;

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
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mIntent:Landroid/content/Intent;

    .line 85
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBgHandler:Landroid/os/Handler;

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
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/InstantAppResolverConnection;

    .line 54
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/pm/InstantAppResolverConnection;Landroid/app/IInstantAppResolver;)Landroid/app/IInstantAppResolver;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/InstantAppResolverConnection;
    .param p1, "x1"  # Landroid/app/IInstantAppResolver;

    .line 54
    iput-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/pm/InstantAppResolverConnection;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/InstantAppResolverConnection;

    .line 54
    iget v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/pm/InstantAppResolverConnection;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/InstantAppResolverConnection;
    .param p1, "x1"  # I

    .line 54
    iput p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/pm/InstantAppResolverConnection;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/pm/InstantAppResolverConnection;

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
    .registers 14
    .param p1, "token"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "doUnbind":Z
    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 172
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    if-eqz v2, :cond_c

    .line 173
    iget-object v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    monitor-exit v1

    return-object v2

    .line 176
    :cond_c
    iget v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3e

    .line 178
    sget-boolean v2, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    if-eqz v2, :cond_30

    .line 179
    const-string v2, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] Previous bind timed out; waiting for connection"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_137

    .line 182
    :cond_30
    :try_start_30
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstantAppResolverConnection;->waitForBindLocked(Ljava/lang/String;)V

    .line 183
    iget-object v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    if-eqz v2, :cond_3b

    .line 184
    iget-object v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;
    :try_end_39
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_30 .. :try_end_39} :catch_3c
    .catchall {:try_start_30 .. :try_end_39} :catchall_137

    :try_start_39
    monitor-exit v1

    return-object v2

    .line 189
    :cond_3b
    goto :goto_3e

    .line 186
    :catch_3c
    move-exception v2

    .line 188
    .local v2, "e":Ljava/util/concurrent/TimeoutException;
    const/4 v0, 0x1

    .line 192
    .end local v2  # "e":Ljava/util/concurrent/TimeoutException;
    :cond_3e
    :goto_3e
    iget v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_73

    .line 195
    sget-boolean v2, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    if-eqz v2, :cond_62

    .line 196
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] Another thread is binding; waiting for connection"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_62
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstantAppResolverConnection;->waitForBindLocked(Ljava/lang/String;)V

    .line 200
    iget-object v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    if-eqz v2, :cond_6d

    .line 201
    iget-object v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    monitor-exit v1

    return-object v2

    .line 203
    :cond_6d
    new-instance v2, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    invoke-direct {v2, v4}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    .end local v0  # "doUnbind":Z
    .end local p0  # "this":Lcom/android/server/pm/InstantAppResolverConnection;
    .end local p1  # "token":Ljava/lang/String;
    throw v2

    .line 205
    .restart local v0  # "doUnbind":Z
    .restart local p0  # "this":Lcom/android/server/pm/InstantAppResolverConnection;
    .restart local p1  # "token":Ljava/lang/String;
    :cond_73
    iput v4, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    .line 206
    monitor-exit v1
    :try_end_76
    .catchall {:try_start_39 .. :try_end_76} :catchall_137

    .line 209
    const/4 v1, 0x0

    .line 210
    .local v1, "wasBound":Z
    const/4 v2, 0x0

    .line 212
    .local v2, "instance":Landroid/app/IInstantAppResolver;
    const/4 v5, 0x0

    if-eqz v0, :cond_a1

    .line 213
    :try_start_7b
    sget-boolean v6, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    if-eqz v6, :cond_9a

    .line 214
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "] Previous connection never established; rebinding"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_9a
    iget-object v6, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v6, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 218
    :cond_a1
    sget-boolean v6, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    if-eqz v6, :cond_c0

    .line 219
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "] Binding to instant app resolver"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_c0
    const v6, 0x4000001

    .line 222
    .local v6, "flags":I
    iget-object v7, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mIntent:Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    const v10, 0x4000001

    sget-object v11, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 223
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v7

    move v1, v7

    .line 224
    if-eqz v1, :cond_f8

    .line 225
    iget-object v4, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_d8
    .catchall {:try_start_7b .. :try_end_d8} :catchall_11e

    .line 226
    :try_start_d8
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstantAppResolverConnection;->waitForBindLocked(Ljava/lang/String;)V

    .line 227
    iget-object v7, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    move-object v2, v7

    .line 228
    monitor-exit v4
    :try_end_df
    .catchall {:try_start_d8 .. :try_end_df} :catchall_f5

    .line 235
    iget-object v7, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 236
    if-eqz v1, :cond_e9

    if-nez v2, :cond_e9

    .line 237
    :try_start_e6
    iput v3, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    goto :goto_eb

    .line 239
    :cond_e9
    iput v5, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    .line 241
    :goto_eb
    iget-object v3, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 242
    monitor-exit v7

    .line 228
    return-object v2

    .line 242
    :catchall_f2
    move-exception v3

    monitor-exit v7
    :try_end_f4
    .catchall {:try_start_e6 .. :try_end_f4} :catchall_f2

    throw v3

    .line 229
    :catchall_f5
    move-exception v7

    :try_start_f6
    monitor-exit v4
    :try_end_f7
    .catchall {:try_start_f6 .. :try_end_f7} :catchall_f5

    .end local v0  # "doUnbind":Z
    .end local v1  # "wasBound":Z
    .end local v2  # "instance":Landroid/app/IInstantAppResolver;
    .end local p0  # "this":Lcom/android/server/pm/InstantAppResolverConnection;
    .end local p1  # "token":Ljava/lang/String;
    :try_start_f7
    throw v7

    .line 231
    .restart local v0  # "doUnbind":Z
    .restart local v1  # "wasBound":Z
    .restart local v2  # "instance":Landroid/app/IInstantAppResolver;
    .restart local p0  # "this":Lcom/android/server/pm/InstantAppResolverConnection;
    .restart local p1  # "token":Ljava/lang/String;
    :cond_f8
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "] Failed to bind to: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mIntent:Landroid/content/Intent;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v7, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    invoke-direct {v7, v4}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    .end local v0  # "doUnbind":Z
    .end local v1  # "wasBound":Z
    .end local v2  # "instance":Landroid/app/IInstantAppResolver;
    .end local p0  # "this":Lcom/android/server/pm/InstantAppResolverConnection;
    .end local p1  # "token":Ljava/lang/String;
    throw v7
    :try_end_11e
    .catchall {:try_start_f7 .. :try_end_11e} :catchall_11e

    .line 235
    .end local v6  # "flags":I
    .restart local v0  # "doUnbind":Z
    .restart local v1  # "wasBound":Z
    .restart local v2  # "instance":Landroid/app/IInstantAppResolver;
    .restart local p0  # "this":Lcom/android/server/pm/InstantAppResolverConnection;
    .restart local p1  # "token":Ljava/lang/String;
    :catchall_11e
    move-exception v4

    move-object v6, v2

    move v2, v1

    .end local v1  # "wasBound":Z
    .local v2, "wasBound":Z
    .local v6, "instance":Landroid/app/IInstantAppResolver;
    iget-object v7, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 236
    if-eqz v2, :cond_12b

    if-nez v6, :cond_12b

    .line 237
    :try_start_128
    iput v3, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    goto :goto_12d

    .line 239
    :cond_12b
    iput v5, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    .line 241
    :goto_12d
    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 242
    monitor-exit v7
    :try_end_133
    .catchall {:try_start_128 .. :try_end_133} :catchall_134

    throw v4

    :catchall_134
    move-exception v1

    :try_start_135
    monitor-exit v7
    :try_end_136
    .catchall {:try_start_135 .. :try_end_136} :catchall_134

    throw v1

    .line 206
    .end local v2  # "wasBound":Z
    .end local v6  # "instance":Landroid/app/IInstantAppResolver;
    :catchall_137
    move-exception v2

    :try_start_138
    monitor-exit v1
    :try_end_139
    .catchall {:try_start_138 .. :try_end_139} :catchall_137

    throw v2
.end method

.method private getRemoteInstanceLazy(Ljava/lang/String;)Landroid/app/IInstantAppResolver;
    .registers 5
    .param p1, "token"  # Ljava/lang/String;
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
    .local v0, "binderToken":J
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstantAppResolverConnection;->bind(Ljava/lang/String;)Landroid/app/IInstantAppResolver;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 147
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 145
    return-object v2

    .line 147
    :catchall_c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
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
    .registers 11
    .param p1, "token"  # Ljava/lang/String;
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
    .local v0, "startMillis":J
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
    .local v2, "elapsedMillis":J
    sget-wide v4, Lcom/android/server/pm/InstantAppResolverConnection;->BIND_SERVICE_TIMEOUT_MS:J

    sub-long/2addr v4, v2

    .line 160
    .local v4, "remainingMillis":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_21

    .line 163
    iget-object v6, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v6, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 164
    .end local v2  # "elapsedMillis":J
    .end local v4  # "remainingMillis":J
    goto :goto_4

    .line 161
    .restart local v2  # "elapsedMillis":J
    .restart local v4  # "remainingMillis":J
    :cond_21
    new-instance v6, Ljava/util/concurrent/TimeoutException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "] Didn\'t bind to resolver in time!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 165
    .end local v2  # "elapsedMillis":J
    .end local v4  # "remainingMillis":J
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
    .param p1, "sanitizedIntent"  # Landroid/content/Intent;
    .param p2, "hashPrefix"  # [I
    .param p3, "userId"  # I
    .param p4, "token"  # Ljava/lang/String;
    .param p5, "callback"  # Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;
    .param p6, "callbackHandler"  # Landroid/os/Handler;
    .param p7, "startTime"  # J
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

    move-object v5, v6

    .line 129
    .local v5, "remoteCallback":Landroid/os/IRemoteCallback;
    :try_start_b
    invoke-direct {p0, p4}, Lcom/android/server/pm/InstantAppResolverConnection;->getRemoteInstanceLazy(Ljava/lang/String;)Landroid/app/IInstantAppResolver;

    move-result-object v0

    .line 130
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/IInstantAppResolver;->getInstantAppIntentFilterList(Landroid/content/Intent;[IILjava/lang/String;Landroid/os/IRemoteCallback;)V
    :try_end_16
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_b .. :try_end_16} :catch_21
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_16} :catch_19
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_16} :catch_17

    .line 137
    goto :goto_18

    .line 136
    :catch_17
    move-exception v0

    .line 138
    :goto_18
    return-void

    .line 134
    :catch_19
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    throw v1

    .line 132
    .end local v0  # "e":Ljava/lang/InterruptedException;
    :catch_21
    move-exception v0

    .line 133
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v1, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    throw v1
.end method

.method public getInstantAppResolveInfoList(Landroid/content/Intent;[IILjava/lang/String;)Ljava/util/List;
    .registers 12
    .param p1, "sanitizedIntent"  # Landroid/content/Intent;
    .param p2, "hashPrefix"  # [I
    .param p3, "userId"  # I
    .param p4, "token"  # Ljava/lang/String;
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
    const/4 v0, 0x0

    .line 94
    .local v0, "target":Landroid/app/IInstantAppResolver;
    :try_start_4
    invoke-direct {p0, p4}, Lcom/android/server/pm/InstantAppResolverConnection;->getRemoteInstanceLazy(Ljava/lang/String;)Landroid/app/IInstantAppResolver;

    move-result-object v2
    :try_end_8
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_8} :catch_46
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_8} :catch_3e
    .catchall {:try_start_4 .. :try_end_8} :catchall_3c

    .line 99
    .end local v0  # "target":Landroid/app/IInstantAppResolver;
    .local v2, "target":Landroid/app/IInstantAppResolver;
    nop

    .line 101
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mGetInstantAppResolveInfoCaller:Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;

    .line 102
    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;->getInstantAppResolveInfoList(Landroid/app/IInstantAppResolver;Landroid/content/Intent;[IILjava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_13
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_9 .. :try_end_13} :catch_34
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_24
    .catchall {:try_start_9 .. :try_end_13} :catchall_20

    .line 109
    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 110
    :try_start_16
    iget-object v3, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 111
    monitor-exit v1

    .line 101
    return-object v0

    .line 111
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_1d

    throw v0

    .line 109
    :catchall_20
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_4e

    .line 106
    :catch_24
    move-exception v0

    .line 109
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_28
    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 111
    monitor-exit v0

    .line 112
    nop

    .line 113
    const/4 v0, 0x0

    return-object v0

    .line 111
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_31

    throw v1

    .line 104
    :catch_34
    move-exception v0

    .line 105
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    :try_start_35
    new-instance v1, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    .end local v2  # "target":Landroid/app/IInstantAppResolver;
    .end local p0  # "this":Lcom/android/server/pm/InstantAppResolverConnection;
    .end local p1  # "sanitizedIntent":Landroid/content/Intent;
    .end local p2  # "hashPrefix":[I
    .end local p3  # "userId":I
    .end local p4  # "token":Ljava/lang/String;
    throw v1
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_20

    .line 109
    .local v0, "target":Landroid/app/IInstantAppResolver;
    .restart local p0  # "this":Lcom/android/server/pm/InstantAppResolverConnection;
    .restart local p1  # "sanitizedIntent":Landroid/content/Intent;
    .restart local p2  # "hashPrefix":[I
    .restart local p3  # "userId":I
    .restart local p4  # "token":Ljava/lang/String;
    :catchall_3c
    move-exception v1

    goto :goto_4e

    .line 97
    :catch_3e
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3f
    new-instance v2, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    .end local v0  # "target":Landroid/app/IInstantAppResolver;
    .end local p0  # "this":Lcom/android/server/pm/InstantAppResolverConnection;
    .end local p1  # "sanitizedIntent":Landroid/content/Intent;
    .end local p2  # "hashPrefix":[I
    .end local p3  # "userId":I
    .end local p4  # "token":Ljava/lang/String;
    throw v2

    .line 95
    .end local v1  # "e":Ljava/lang/InterruptedException;
    .restart local v0  # "target":Landroid/app/IInstantAppResolver;
    .restart local p0  # "this":Lcom/android/server/pm/InstantAppResolverConnection;
    .restart local p1  # "sanitizedIntent":Landroid/content/Intent;
    .restart local p2  # "hashPrefix":[I
    .restart local p3  # "userId":I
    .restart local p4  # "token":Ljava/lang/String;
    :catch_46
    move-exception v1

    .line 96
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v2, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    .end local v0  # "target":Landroid/app/IInstantAppResolver;
    .end local p0  # "this":Lcom/android/server/pm/InstantAppResolverConnection;
    .end local p1  # "sanitizedIntent":Landroid/content/Intent;
    .end local p2  # "hashPrefix":[I
    .end local p3  # "userId":I
    .end local p4  # "token":Ljava/lang/String;
    throw v2
    :try_end_4e
    .catchall {:try_start_3f .. :try_end_4e} :catchall_3c

    .line 109
    .end local v1  # "e":Ljava/util/concurrent/TimeoutException;
    .restart local v0  # "target":Landroid/app/IInstantAppResolver;
    .restart local p0  # "this":Lcom/android/server/pm/InstantAppResolverConnection;
    .restart local p1  # "sanitizedIntent":Landroid/content/Intent;
    .restart local p2  # "hashPrefix":[I
    .restart local p3  # "userId":I
    .restart local p4  # "token":Ljava/lang/String;
    :goto_4e
    iget-object v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 110
    :try_start_51
    iget-object v3, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 111
    monitor-exit v2
    :try_end_57
    .catchall {:try_start_51 .. :try_end_57} :catchall_58

    throw v1

    :catchall_58
    move-exception v1

    :try_start_59
    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v1
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
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Optimistic bind failed."

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    .end local v1  # "e":Ljava/lang/Exception;
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
