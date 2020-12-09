.class Lcom/android/server/ExplicitHealthCheckController;
.super Ljava/lang/Object;
.source "ExplicitHealthCheckController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExplicitHealthCheckController"


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mNotifySyncRunnable:Ljava/lang/Runnable;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mPassedConsumer:Ljava/util/function/Consumer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mSupportedConsumer:Ljava/util/function/Consumer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    .line 91
    iput-object p1, p0, Lcom/android/server/ExplicitHealthCheckController;->mContext:Landroid/content/Context;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ExplicitHealthCheckController;Landroid/os/IBinder;)V
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/ExplicitHealthCheckController;->initState(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/ExplicitHealthCheckController;)Ljava/lang/Object;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/server/ExplicitHealthCheckController;Landroid/service/watchdog/IExplicitHealthCheckService;)Landroid/service/watchdog/IExplicitHealthCheckService;
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/ExplicitHealthCheckController;)V
    .registers 1

    .line 57
    invoke-direct {p0}, Lcom/android/server/ExplicitHealthCheckController;->unbindService()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/ExplicitHealthCheckController;)V
    .registers 1

    .line 57
    invoke-direct {p0}, Lcom/android/server/ExplicitHealthCheckController;->bindService()V

    return-void
.end method

.method private actOnDifference(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 183
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 184
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 185
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 186
    invoke-interface {p2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 187
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 189
    :cond_19
    goto :goto_4

    .line 190
    :cond_1a
    return-void
.end method

.method private bindService()V
    .registers 7

    .line 291
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mEnabled:Z

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mConnection:Landroid/content/ServiceConnection;

    if-nez v1, :cond_44

    iget-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    if-eqz v1, :cond_10

    goto :goto_44

    .line 302
    :cond_10
    invoke-direct {p0}, Lcom/android/server/ExplicitHealthCheckController;->getServiceComponentNameLocked()Landroid/content/ComponentName;

    move-result-object v1

    .line 303
    if-nez v1, :cond_1f

    .line 304
    const-string v1, "ExplicitHealthCheckController"

    const-string v2, "Explicit health check service not found"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    monitor-exit v0

    return-void

    .line 308
    :cond_1f
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 309
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 310
    new-instance v1, Lcom/android/server/ExplicitHealthCheckController$1;

    invoke-direct {v1, p0}, Lcom/android/server/ExplicitHealthCheckController$1;-><init>(Lcom/android/server/ExplicitHealthCheckController;)V

    iput-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mConnection:Landroid/content/ServiceConnection;

    .line 344
    iget-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/ExplicitHealthCheckController;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 345
    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    .line 344
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 346
    const-string v1, "ExplicitHealthCheckController"

    const-string v2, "Explicit health check service is bound"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    monitor-exit v0

    .line 348
    return-void

    .line 293
    :cond_44
    :goto_44
    iget-boolean v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mEnabled:Z

    if-nez v1, :cond_50

    .line 294
    const-string v1, "ExplicitHealthCheckController"

    const-string v2, "Not binding to service, service disabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 295
    :cond_50
    iget-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    if-eqz v1, :cond_5c

    .line 296
    const-string v1, "ExplicitHealthCheckController"

    const-string v2, "Not binding to service, service already connected"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 298
    :cond_5c
    const-string v1, "ExplicitHealthCheckController"

    const-string v2, "Not binding to service, service already connecting"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :goto_63
    monitor-exit v0

    return-void

    .line 347
    :catchall_65
    move-exception v1

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_3 .. :try_end_67} :catchall_65

    throw v1
.end method

.method private cancel(Ljava/lang/String;)V
    .registers 7

    .line 218
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 219
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel health check for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ExplicitHealthCheckController;->prepareServiceLocked(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 220
    monitor-exit v0

    return-void

    .line 223
    :cond_1c
    const-string v1, "ExplicitHealthCheckController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cancelling health check for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_51

    .line 225
    :try_start_32
    iget-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    invoke-interface {v1, p1}, Landroid/service/watchdog/IExplicitHealthCheckService;->cancel(Ljava/lang/String;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_37} :catch_38
    .catchall {:try_start_32 .. :try_end_37} :catchall_51

    .line 230
    goto :goto_4f

    .line 226
    :catch_38
    move-exception v1

    .line 229
    :try_start_39
    const-string v2, "ExplicitHealthCheckController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to cancel health check for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    :goto_4f
    monitor-exit v0

    .line 232
    return-void

    .line 231
    :catchall_51
    move-exception p1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_39 .. :try_end_53} :catchall_51

    throw p1
.end method

.method private getRequestedPackages(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_3
    const-string v1, "get health check requested packages"

    invoke-direct {p0, v1}, Lcom/android/server/ExplicitHealthCheckController;->prepareServiceLocked(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 268
    monitor-exit v0

    return-void

    .line 271
    :cond_d
    const-string v1, "ExplicitHealthCheckController"

    const-string v2, "Getting health check requested packages"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_2e

    .line 273
    :try_start_14
    iget-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    new-instance v2, Landroid/os/RemoteCallback;

    new-instance v3, Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$MJhpX-SveTcXQEYQTQa3k6RpjzU;

    invoke-direct {v3, p1}, Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$MJhpX-SveTcXQEYQTQa3k6RpjzU;-><init>(Ljava/util/function/Consumer;)V

    invoke-direct {v2, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {v1, v2}, Landroid/service/watchdog/IExplicitHealthCheckService;->getRequestedPackages(Landroid/os/RemoteCallback;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_23} :catch_24
    .catchall {:try_start_14 .. :try_end_23} :catchall_2e

    .line 282
    goto :goto_2c

    .line 278
    :catch_24
    move-exception p1

    .line 281
    :try_start_25
    const-string v1, "ExplicitHealthCheckController"

    const-string v2, "Failed to get health check requested packages"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    :goto_2c
    monitor-exit v0

    .line 284
    return-void

    .line 283
    :catchall_2e
    move-exception p1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_2e

    throw p1
.end method

.method private getServiceComponentNameLocked()Landroid/content/ComponentName;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 386
    invoke-direct {p0}, Lcom/android/server/ExplicitHealthCheckController;->getServiceInfoLocked()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 387
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 388
    return-object v1

    .line 391
    :cond_8
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 393
    const-string v3, "android.permission.BIND_EXPLICIT_HEALTH_CHECK_SERVICE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not require permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ExplicitHealthCheckController"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    return-object v1

    .line 398
    :cond_39
    return-object v2
.end method

.method private getServiceInfoLocked()Landroid/content/pm/ServiceInfo;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mContext:Landroid/content/Context;

    .line 366
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v0

    .line 367
    const/4 v1, 0x0

    const-string v2, "ExplicitHealthCheckController"

    if-nez v0, :cond_16

    .line 368
    const-string/jumbo v0, "no external services package!"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return-object v1

    .line 372
    :cond_16
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.service.watchdog.ExplicitHealthCheckService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v4, 0x84

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 376
    if-eqz v0, :cond_36

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v3, :cond_33

    goto :goto_36

    .line 380
    :cond_33
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0

    .line 377
    :cond_36
    :goto_36
    const-string v0, "No valid components found."

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return-object v1
.end method

.method private getSupportedPackages(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;",
            ">;>;)V"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_3
    const-string v1, "get health check supported packages"

    invoke-direct {p0, v1}, Lcom/android/server/ExplicitHealthCheckController;->prepareServiceLocked(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 241
    monitor-exit v0

    return-void

    .line 244
    :cond_d
    const-string v1, "ExplicitHealthCheckController"

    const-string v2, "Getting health check supported packages"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_2e

    .line 246
    :try_start_14
    iget-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    new-instance v2, Landroid/os/RemoteCallback;

    new-instance v3, Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$_PgTaUvckhKQczm_86P6Mowec48;

    invoke-direct {v3, p1}, Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$_PgTaUvckhKQczm_86P6Mowec48;-><init>(Ljava/util/function/Consumer;)V

    invoke-direct {v2, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {v1, v2}, Landroid/service/watchdog/IExplicitHealthCheckService;->getSupportedPackages(Landroid/os/RemoteCallback;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_23} :catch_24
    .catchall {:try_start_14 .. :try_end_23} :catchall_2e

    .line 257
    goto :goto_2c

    .line 252
    :catch_24
    move-exception p1

    .line 256
    :try_start_25
    const-string v1, "ExplicitHealthCheckController"

    const-string v2, "Failed to get health check supported packages"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    :goto_2c
    monitor-exit v0

    .line 259
    return-void

    .line 258
    :catchall_2e
    move-exception p1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_2e

    throw p1
.end method

.method private initState(Landroid/os/IBinder;)V
    .registers 5

    .line 402
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 403
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mEnabled:Z

    if-nez v1, :cond_13

    .line 404
    const-string p1, "ExplicitHealthCheckController"

    const-string v1, "Attempting to connect disabled service?? Unbinding..."

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-direct {p0}, Lcom/android/server/ExplicitHealthCheckController;->unbindService()V

    .line 407
    monitor-exit v0

    return-void

    .line 409
    :cond_13
    invoke-static {p1}, Landroid/service/watchdog/IExplicitHealthCheckService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/watchdog/IExplicitHealthCheckService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_3f

    .line 411
    :try_start_19
    iget-object p1, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    new-instance v1, Landroid/os/RemoteCallback;

    new-instance v2, Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$6YGiVtgCnlJ0hMIeX5TzlFUaNrY;

    invoke-direct {v2, p0}, Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$6YGiVtgCnlJ0hMIeX5TzlFUaNrY;-><init>(Lcom/android/server/ExplicitHealthCheckController;)V

    invoke-direct {v1, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {p1, v1}, Landroid/service/watchdog/IExplicitHealthCheckService;->setCallback(Landroid/os/RemoteCallback;)V

    .line 425
    const-string p1, "ExplicitHealthCheckController"

    const-string v1, "Service initialized, syncing requests"

    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_2f} :catch_30
    .catchall {:try_start_19 .. :try_end_2f} :catchall_3f

    .line 428
    goto :goto_38

    .line 426
    :catch_30
    move-exception p1

    .line 427
    :try_start_31
    const-string p1, "ExplicitHealthCheckController"

    const-string v1, "Could not setCallback on explicit health check service"

    invoke-static {p1, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :goto_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_3f

    .line 431
    iget-object p1, p0, Lcom/android/server/ExplicitHealthCheckController;->mNotifySyncRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 432
    return-void

    .line 429
    :catchall_3f
    move-exception p1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw p1
.end method

.method static synthetic lambda$getRequestedPackages$5(Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 4

    .line 274
    const-string v0, "android.service.watchdog.extra.requested_packages"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Explicit health check requested packages "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExplicitHealthCheckController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 277
    return-void
.end method

.method static synthetic lambda$getSupportedPackages$4(Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 4

    .line 247
    nop

    .line 248
    const-string v0, "android.service.watchdog.extra.supported_packages"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Explicit health check supported packages "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExplicitHealthCheckController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 251
    return-void
.end method

.method private prepareServiceLocked(Ljava/lang/String;)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 443
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mEnabled:Z

    if-eqz v0, :cond_a

    .line 444
    const/4 p1, 0x1

    return p1

    .line 446
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service not ready to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    iget-boolean p1, p0, Lcom/android/server/ExplicitHealthCheckController;->mEnabled:Z

    if-eqz p1, :cond_1e

    const-string p1, ". Binding..."

    goto :goto_20

    :cond_1e
    const-string p1, ". Disabled"

    :goto_20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 446
    const-string v0, "ExplicitHealthCheckController"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-boolean p1, p0, Lcom/android/server/ExplicitHealthCheckController;->mEnabled:Z

    if-eqz p1, :cond_33

    .line 449
    invoke-direct {p0}, Lcom/android/server/ExplicitHealthCheckController;->bindService()V

    .line 451
    :cond_33
    const/4 p1, 0x0

    return p1
.end method

.method private request(Ljava/lang/String;)V
    .registers 7

    .line 198
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "request health check for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ExplicitHealthCheckController;->prepareServiceLocked(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 200
    monitor-exit v0

    return-void

    .line 203
    :cond_1d
    const-string v1, "ExplicitHealthCheckController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requesting health check for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_52

    .line 205
    :try_start_33
    iget-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    invoke-interface {v1, p1}, Landroid/service/watchdog/IExplicitHealthCheckService;->request(Ljava/lang/String;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_38} :catch_39
    .catchall {:try_start_33 .. :try_end_38} :catchall_52

    .line 208
    goto :goto_50

    .line 206
    :catch_39
    move-exception v1

    .line 207
    :try_start_3a
    const-string v2, "ExplicitHealthCheckController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to request health check for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    :goto_50
    monitor-exit v0

    .line 210
    return-void

    .line 209
    :catchall_52
    move-exception p1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_3a .. :try_end_54} :catchall_52

    throw p1
.end method

.method private unbindService()V
    .registers 4

    .line 352
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 353
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    if-eqz v1, :cond_13

    .line 354
    iget-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ExplicitHealthCheckController;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 355
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    .line 356
    iput-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mConnection:Landroid/content/ServiceConnection;

    .line 358
    :cond_13
    const-string v1, "ExplicitHealthCheckController"

    const-string v2, "Explicit health check service is unbound"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    monitor-exit v0

    .line 360
    return-void

    .line 359
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method


# virtual methods
.method public synthetic lambda$initState$6$ExplicitHealthCheckController(Landroid/os/Bundle;)V
    .registers 5

    .line 412
    const-string v0, "android.service.watchdog.extra.health_check_passed_package"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 413
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "ExplicitHealthCheckController"

    if-nez v0, :cond_30

    .line 414
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mPassedConsumer:Ljava/util/function/Consumer;

    if-nez v0, :cond_2c

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Health check passed for package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "but no consumer registered."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 419
    :cond_2c
    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_35

    .line 422
    :cond_30
    const-string p1, "Empty package passed explicit health check?"

    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :goto_35
    return-void
.end method

.method public synthetic lambda$syncRequests$0$ExplicitHealthCheckController(Ljava/lang/String;)V
    .registers 2

    .line 166
    invoke-direct {p0, p1}, Lcom/android/server/ExplicitHealthCheckController;->cancel(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$syncRequests$1$ExplicitHealthCheckController(Ljava/lang/String;)V
    .registers 2

    .line 169
    invoke-direct {p0, p1}, Lcom/android/server/ExplicitHealthCheckController;->request(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$syncRequests$2$ExplicitHealthCheckController(Ljava/util/List;Ljava/util/Set;Ljava/util/List;)V
    .registers 7

    .line 153
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_3
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 158
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;

    .line 159
    invoke-virtual {v2}, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    goto :goto_c

    .line 162
    :cond_20
    invoke-interface {p2, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 165
    new-instance p1, Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$fE2pZ6ZhwFEJPuOl0ochqPnSmyI;

    invoke-direct {p1, p0}, Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$fE2pZ6ZhwFEJPuOl0ochqPnSmyI;-><init>(Lcom/android/server/ExplicitHealthCheckController;)V

    invoke-direct {p0, p3, p2, p1}, Lcom/android/server/ExplicitHealthCheckController;->actOnDifference(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/function/Consumer;)V

    .line 168
    new-instance p1, Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$ucIBQc_IW2iYt6j4dngAncLT6nQ;

    invoke-direct {p1, p0}, Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$ucIBQc_IW2iYt6j4dngAncLT6nQ;-><init>(Lcom/android/server/ExplicitHealthCheckController;)V

    invoke-direct {p0, p2, p3, p1}, Lcom/android/server/ExplicitHealthCheckController;->actOnDifference(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/function/Consumer;)V

    .line 171
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_45

    .line 172
    const-string p1, "ExplicitHealthCheckController"

    const-string p2, "No more health check requests, unbinding..."

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-direct {p0}, Lcom/android/server/ExplicitHealthCheckController;->unbindService()V

    .line 174
    monitor-exit v0

    return-void

    .line 176
    :cond_45
    monitor-exit v0

    .line 177
    return-void

    .line 176
    :catchall_47
    move-exception p1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw p1
.end method

.method public synthetic lambda$syncRequests$3$ExplicitHealthCheckController(Ljava/util/Set;Ljava/util/List;)V
    .registers 4

    .line 151
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mSupportedConsumer:Ljava/util/function/Consumer;

    invoke-interface {v0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 152
    new-instance v0, Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$NCzfilqDrFIbp6BuyCJrDsdAk5I;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$NCzfilqDrFIbp6BuyCJrDsdAk5I;-><init>(Lcom/android/server/ExplicitHealthCheckController;Ljava/util/List;Ljava/util/Set;)V

    invoke-direct {p0, v0}, Lcom/android/server/ExplicitHealthCheckController;->getRequestedPackages(Ljava/util/function/Consumer;)V

    .line 178
    return-void
.end method

.method public setCallbacks(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;",
            ">;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mPassedConsumer:Ljava/util/function/Consumer;

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mSupportedConsumer:Ljava/util/function/Consumer;

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mNotifySyncRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_16

    .line 113
    :cond_f
    const-string v1, "ExplicitHealthCheckController"

    const-string v2, "Resetting health check controller callbacks"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_16
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Consumer;

    iput-object p1, p0, Lcom/android/server/ExplicitHealthCheckController;->mPassedConsumer:Ljava/util/function/Consumer;

    .line 117
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Consumer;

    iput-object p1, p0, Lcom/android/server/ExplicitHealthCheckController;->mSupportedConsumer:Ljava/util/function/Consumer;

    .line 118
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/ExplicitHealthCheckController;->mNotifySyncRunnable:Ljava/lang/Runnable;

    .line 119
    monitor-exit v0

    .line 120
    return-void

    .line 119
    :catchall_30
    move-exception p1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public setEnabled(Z)V
    .registers 6

    .line 96
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_3
    const-string v1, "ExplicitHealthCheckController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Explicit health checks "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_14

    const-string v3, "enabled."

    goto :goto_16

    :cond_14
    const-string v3, "disabled."

    :goto_16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iput-boolean p1, p0, Lcom/android/server/ExplicitHealthCheckController;->mEnabled:Z

    .line 99
    monitor-exit v0

    .line 100
    return-void

    .line 99
    :catchall_24
    move-exception p1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p1
.end method

.method public syncRequests(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mEnabled:Z

    .line 140
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_22

    .line 142
    if-nez v1, :cond_19

    .line 143
    const-string p1, "ExplicitHealthCheckController"

    const-string v0, "Health checks disabled, no supported packages"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object p1, p0, Lcom/android/server/ExplicitHealthCheckController;->mSupportedConsumer:Ljava/util/function/Consumer;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 146
    return-void

    .line 149
    :cond_19
    new-instance v0, Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$x4g41SYVR_nHQxV-RQY6VIfh1zs;

    invoke-direct {v0, p0, p1}, Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$x4g41SYVR_nHQxV-RQY6VIfh1zs;-><init>(Lcom/android/server/ExplicitHealthCheckController;Ljava/util/Set;)V

    invoke-direct {p0, v0}, Lcom/android/server/ExplicitHealthCheckController;->getSupportedPackages(Ljava/util/function/Consumer;)V

    .line 179
    return-void

    .line 140
    :catchall_22
    move-exception p1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p1
.end method
