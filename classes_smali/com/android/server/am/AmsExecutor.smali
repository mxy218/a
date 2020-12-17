.class public Lcom/android/server/am/AmsExecutor;
.super Ljava/lang/Object;
.source "AmsExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AmsExecutor$LazyHolder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AmsExecutor"


# instance fields
.field private mAms:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final bringFreezeServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 12
    .param p1, "r"  # Lcom/android/server/am/ServiceRecord;

    .line 297
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    const-string v1, "AmsExecutor"

    if-eqz v0, :cond_2e

    .line 298
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "info":Ljava/lang/String;
    if-eqz v0, :cond_2e

    const-string/jumbo v2, "org.chromium.content.app.SandboxedProcessService"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipped Bring down service:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-void

    .line 307
    .end local v0  # "info":Ljava/lang/String;
    :cond_2e
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v0

    .line 308
    .local v0, "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "conni":I
    :goto_38
    if-ltz v2, :cond_a0

    .line 309
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 310
    .local v4, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_41
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_9d

    .line 311
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ConnectionRecord;

    .line 318
    .local v6, "cr":Lcom/android/server/am/ConnectionRecord;
    :try_start_4d
    iget-object v7, v6, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    iget-object v8, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9, v3}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_55} :catch_56

    .line 323
    goto :goto_9a

    .line 319
    :catch_56
    move-exception v7

    .line 320
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Freeze: Failure disconnecting service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " to connection "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ConnectionRecord;

    iget-object v9, v9, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v9}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " (in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ConnectionRecord;

    iget-object v9, v9, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 320
    invoke-static {v1, v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    .end local v6  # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v7  # "e":Ljava/lang/Exception;
    :goto_9a
    add-int/lit8 v5, v5, 0x1

    goto :goto_41

    .line 308
    .end local v4  # "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v5  # "i":I
    :cond_9d
    add-int/lit8 v2, v2, -0x1

    goto :goto_38

    .line 328
    .end local v2  # "conni":I
    :cond_a0
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_10c

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_10c

    .line 329
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_b1
    if-ltz v2, :cond_10c

    .line 330
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/IntentBindRecord;

    .line 331
    .local v3, "ibr":Lcom/android/server/am/IntentBindRecord;
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v4, :cond_dd

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Freeze: Bringing down binding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": hasBound="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v3, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_dd
    iget-boolean v4, v3, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    if-eqz v4, :cond_109

    .line 335
    const/4 v4, 0x0

    :try_start_e2
    iput-boolean v4, v3, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 336
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v5, v3, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 337
    invoke-virtual {v5}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 336
    invoke-interface {v4, p1, v5}, Landroid/app/IApplicationThread;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_f1} :catch_f2

    .line 341
    goto :goto_109

    .line 338
    :catch_f2
    move-exception v4

    .line 339
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Freeze: Exception when unbinding service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    .end local v3  # "ibr":Lcom/android/server/am/IntentBindRecord;
    .end local v4  # "e":Ljava/lang/Exception;
    :cond_109
    :goto_109
    add-int/lit8 v2, v2, -0x1

    goto :goto_b1

    .line 345
    .end local v2  # "i":I
    :cond_10c
    return-void
.end method

.method public static getInstance()Lcom/android/server/am/AmsExecutor;
    .registers 1

    .line 53
    invoke-static {}, Lcom/android/server/am/AmsExecutor$LazyHolder;->access$000()Lcom/android/server/am/AmsExecutor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checkCallingPermission(Ljava/lang/String;)I
    .registers 5
    .param p1, "permission"  # Ljava/lang/String;

    .line 289
    iget-object v0, p0, Lcom/android/server/am/AmsExecutor;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 290
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 291
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 289
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public checkFreezeRefAndUpdateStatusLocked(ILjava/lang/String;)Z
    .registers 14
    .param p1, "pid"  # I
    .param p2, "pkg"  # Ljava/lang/String;

    .line 213
    iget-object v0, p0, Lcom/android/server/am/AmsExecutor;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 214
    const/4 v1, 0x0

    if-nez p2, :cond_e

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_ba

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 215
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/android/server/am/AmsExecutor;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    .line 216
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    const/4 v3, 0x1

    if-eqz v2, :cond_b5

    .line 217
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 218
    .local v5, "s":Lcom/android/server/am/ServiceRecord;
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_35
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/IntentBindRecord;

    .line 219
    .local v7, "i":Lcom/android/server/am/IntentBindRecord;
    iget-object v8, v7, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    .line 220
    .local v9, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v10, :cond_6a

    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6a

    .line 221
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_e .. :try_end_66} :catchall_ba

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 223
    .end local v9  # "r":Lcom/android/server/am/ProcessRecord;
    :cond_6a
    goto :goto_4b

    .line 224
    .end local v7  # "i":Lcom/android/server/am/IntentBindRecord;
    :cond_6b
    goto :goto_35

    .line 225
    .end local v5  # "s":Lcom/android/server/am/ServiceRecord;
    :cond_6c
    goto :goto_1f

    .line 226
    :cond_6d
    :try_start_6d
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_77
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ContentProviderRecord;

    .line 227
    .local v5, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v6, v5, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_89
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ContentProviderConnection;

    .line 228
    .local v7, "conn":Lcom/android/server/am/ContentProviderConnection;
    iget-object v8, v7, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_b0

    iget-object v8, v7, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_b0

    iget-object v8, v7, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b0

    .line 229
    monitor-exit v0
    :try_end_ac
    .catchall {:try_start_6d .. :try_end_ac} :catchall_ba

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 231
    .end local v7  # "conn":Lcom/android/server/am/ContentProviderConnection;
    :cond_b0
    goto :goto_89

    .line 232
    .end local v5  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_b1
    goto :goto_77

    .line 233
    :cond_b2
    :try_start_b2
    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessRecord;->setFrozen(Z)V

    .line 235
    :cond_b5
    monitor-exit v0
    :try_end_b6
    .catchall {:try_start_b2 .. :try_end_b6} :catchall_ba

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 236
    .end local v2  # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_ba
    move-exception v1

    :try_start_bb
    monitor-exit v0
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_ba

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getNativeMemInfo()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List;",
            ">;"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v0, "nativeInfo":Ljava/util/List;, "Ljava/util/List<Ljava/util/List;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v1, "procs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v2, "procNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/am/AmsExecutor;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v3

    .line 155
    :try_start_14
    iget-object v4, p0, Lcom/android/server/am/AmsExecutor;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v4}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v4

    .line 156
    .local v4, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1d
    if-ge v5, v4, :cond_44

    .line 157
    iget-object v6, p0, Lcom/android/server/am/AmsExecutor;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v6, v5}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v6

    .line 158
    .local v6, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget-wide v7, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_41

    iget v7, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    if-lez v7, :cond_41

    .line 159
    iget v7, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v7, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    .end local v6  # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_41
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 163
    .end local v4  # "N":I
    .end local v5  # "i":I
    :cond_44
    monitor-exit v3
    :try_end_45
    .catchall {:try_start_14 .. :try_end_45} :catchall_4c

    .line 164
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    return-object v0

    .line 163
    :catchall_4c
    move-exception v4

    :try_start_4d
    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v4
.end method

.method public handleFreezeServiceLocked([ILjava/lang/String;)V
    .registers 14
    .param p1, "pids"  # [I
    .param p2, "pkg"  # Ljava/lang/String;

    .line 240
    iget-object v0, p0, Lcom/android/server/am/AmsExecutor;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 241
    if-eqz p1, :cond_87

    array-length v1, p1

    if-nez v1, :cond_d

    goto/16 :goto_87

    .line 242
    :cond_d
    const/4 v1, 0x0

    .line 243
    .local v1, "isExport":Z
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_f
    array-length v3, p1

    if-ge v2, v3, :cond_82

    .line 244
    iget-object v3, p0, Lcom/android/server/am/AmsExecutor;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    aget v4, p1, v2

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 245
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v3, :cond_7f

    .line 246
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessRecord;->setFrozen(Z)V

    .line 247
    if-eqz p2, :cond_7f

    .line 248
    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    if-eqz v5, :cond_7f

    .line 249
    const/4 v1, 0x0

    .line 250
    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    sub-int/2addr v5, v4

    .local v5, "s":I
    :goto_30
    if-ltz v5, :cond_7f

    .line 251
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 252
    .local v4, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_44
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_77

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/IntentBindRecord;

    .line 253
    .local v7, "i":Lcom/android/server/am/IntentBindRecord;
    iget-object v8, v7, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_76

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    .line 254
    .local v9, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v10, :cond_75

    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_75

    .line 255
    goto :goto_5a

    .line 257
    :cond_75
    const/4 v1, 0x1

    .line 261
    .end local v7  # "i":Lcom/android/server/am/IntentBindRecord;
    .end local v9  # "r":Lcom/android/server/am/ProcessRecord;
    :cond_76
    goto :goto_44

    .line 263
    :cond_77
    if-eqz v1, :cond_7c

    .line 264
    invoke-direct {p0, v4}, Lcom/android/server/am/AmsExecutor;->bringFreezeServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 250
    .end local v4  # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_7c
    add-int/lit8 v5, v5, -0x1

    goto :goto_30

    .line 243
    .end local v3  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v5  # "s":I
    :cond_7f
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 273
    .end local v1  # "isExport":Z
    .end local v2  # "index":I
    :cond_82
    monitor-exit v0
    :try_end_83
    .catchall {:try_start_3 .. :try_end_83} :catchall_8c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 274
    return-void

    .line 241
    :cond_87
    :goto_87
    :try_start_87
    monitor-exit v0
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_8c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 273
    :catchall_8c
    move-exception v1

    :try_start_8d
    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public handleFrozenPendingIntentRecordLocked(ILjava/lang/String;)V
    .registers 10
    .param p1, "uid"  # I
    .param p2, "packageName"  # Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/android/server/am/AmsExecutor;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/AmsExecutor;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_60

    .line 174
    iget-object v1, p0, Lcom/android/server/am/AmsExecutor;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    .line 175
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 176
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;>;"
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 177
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 178
    .local v2, "wpir":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    if-nez v2, :cond_33

    .line 179
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 180
    goto :goto_21

    .line 182
    :cond_33
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/PendingIntentRecord;

    .line 183
    .local v3, "pir":Lcom/android/server/am/PendingIntentRecord;
    if-nez v3, :cond_3f

    .line 184
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 185
    goto :goto_21

    .line 188
    :cond_3f
    iget v4, v3, Lcom/android/server/am/PendingIntentRecord;->uid:I

    if-eq v4, p1, :cond_44

    .line 190
    goto :goto_21

    .line 192
    :cond_44
    iget-object v4, v3, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 194
    goto :goto_21

    .line 197
    :cond_4f
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 199
    invoke-static {}, Lcom/android/server/wm/WmsExecutor;->getInstance()Lcom/android/server/wm/WmsExecutor;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    iget-object v6, v3, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WmsExecutor;->removePendingResult(Landroid/os/IBinder;Ljava/lang/ref/WeakReference;)V

    .line 200
    .end local v2  # "wpir":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v3  # "pir":Lcom/android/server/am/PendingIntentRecord;
    goto :goto_21

    .line 202
    .end local v1  # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;>;"
    :cond_60
    monitor-exit v0

    .line 203
    return-void

    .line 202
    :catchall_62
    move-exception v1

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_7 .. :try_end_64} :catchall_62

    throw v1
.end method

.method public handleUnfreezeRecordsLocked([I)V
    .registers 7
    .param p1, "pids"  # [I

    .line 277
    iget-object v0, p0, Lcom/android/server/am/AmsExecutor;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 278
    if-eqz p1, :cond_28

    array-length v1, p1

    if-nez v1, :cond_c

    goto :goto_28

    .line 279
    :cond_c
    const/4 v1, 0x0

    move v2, v1

    .local v2, "index":I
    :goto_e
    array-length v3, p1

    if-ge v2, v3, :cond_23

    .line 280
    iget-object v3, p0, Lcom/android/server/am/AmsExecutor;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    aget v4, p1, v2

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 281
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v3, :cond_20

    .line 282
    invoke-virtual {v3, v1}, Lcom/android/server/am/ProcessRecord;->setFrozen(Z)V

    .line 279
    .end local v3  # "app":Lcom/android/server/am/ProcessRecord;
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 285
    .end local v2  # "index":I
    :cond_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_2d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 286
    return-void

    .line 278
    :cond_28
    :goto_28
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_2d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 285
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public initialize(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .param p1, "ams"  # Lcom/android/server/am/ActivityManagerService;

    .line 57
    iput-object p1, p0, Lcom/android/server/am/AmsExecutor;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 58
    return-void
.end method

.method public isTopPackage(ILjava/lang/String;)Z
    .registers 6
    .param p1, "uid"  # I
    .param p2, "pkg"  # Ljava/lang/String;

    .line 206
    if-nez p2, :cond_4

    const/4 v0, 0x0

    return v0

    .line 207
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/AmsExecutor;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 208
    invoke-static {}, Lcom/android/server/wm/WmsExecutor;->getInstance()Lcom/android/server/wm/WmsExecutor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AmsExecutor;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/wm/WmsExecutor;->isTopPackage(Lcom/android/server/wm/RootActivityContainer;ILjava/lang/String;)Z

    move-result v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 209
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public killProcess(II)V
    .registers 6
    .param p1, "uid"  # I
    .param p2, "pid"  # I

    .line 135
    invoke-static {p2}, Landroid/os/Process;->getUidForPid(I)I

    move-result v0

    if-eq v0, p1, :cond_1c

    .line 136
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 137
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 136
    const-string v1, "%d may be dead but sAms is not received bindDied event."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AmsExecutor"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void

    .line 140
    :cond_1c
    iget-object v0, p0, Lcom/android/server/am/AmsExecutor;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    .line 141
    :try_start_21
    invoke-static {p2}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 142
    iget-object v1, p0, Lcom/android/server/am/AmsExecutor;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-static {p1, p2}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    .line 143
    monitor-exit v0

    .line 144
    return-void

    .line 143
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public loadFavoriteApps(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 61
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/server/am/AmsExecutor;->startProcess(Ljava/util/List;)V

    .line 64
    :cond_b
    return-void
.end method

.method public scheduleTrimMemory(IIZ)Z
    .registers 9
    .param p1, "pid"  # I
    .param p2, "level"  # I
    .param p3, "critical"  # Z

    .line 107
    iget-object v0, p0, Lcom/android/server/am/AmsExecutor;->mAms:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 108
    :cond_6
    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 109
    const/4 v2, 0x0

    .line 110
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v3, p0, Lcom/android/server/am/AmsExecutor;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v3
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_33

    .line 111
    :try_start_10
    iget-object v4, p0, Lcom/android/server/am/AmsExecutor;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    move-object v2, v4

    .line 112
    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_30

    .line 114
    if-nez v2, :cond_21

    .line 115
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_33

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 118
    :cond_21
    :try_start_21
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_2b

    .line 128
    const/4 v1, 0x1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_33

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 130
    .end local v2  # "app":Lcom/android/server/am/ProcessRecord;
    :cond_2b
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_33

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 131
    return v1

    .line 112
    .restart local v2  # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_30
    move-exception v1

    :try_start_31
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    .end local p0  # "this":Lcom/android/server/am/AmsExecutor;
    .end local p1  # "pid":I
    .end local p2  # "level":I
    .end local p3  # "critical":Z
    :try_start_32
    throw v1

    .line 130
    .end local v2  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p0  # "this":Lcom/android/server/am/AmsExecutor;
    .restart local p1  # "pid":I
    .restart local p2  # "level":I
    .restart local p3  # "critical":Z
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public startProcess(Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 67
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/am/AmsExecutor;->mAms:Lcom/android/server/am/ActivityManagerService;

    if-nez v0, :cond_5

    return-void

    .line 68
    :cond_5
    monitor-enter v0

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 70
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 71
    .local v2, "pkg":Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 74
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 71
    const/4 v5, 0x0

    invoke-interface {v3, v2, v5, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 75
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_b9

    .line 76
    iget-object v4, p0, Lcom/android/server/am/AmsExecutor;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v7, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v8, 0x1

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    .line 77
    .local v4, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v4, :cond_3a

    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v6, :cond_3a

    goto :goto_d

    .line 78
    :cond_3a
    const/4 v12, 0x0

    if-nez v4, :cond_72

    .line 79
    iget-object v6, p0, Lcom/android/server/am/AmsExecutor;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-instance v11, Lcom/android/server/am/HostingRecord;

    const-string/jumbo v7, "restart"

    invoke-direct {v11, v7}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;)V

    move-object v7, v3

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ProcessList;->newProcessRecordLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZILcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object v6

    move-object v4, v6

    .line 80
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-ge v6, v7, :cond_65

    .line 81
    iget-object v6, p0, Lcom/android/server/am/AmsExecutor;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getProcessNames()Lcom/android/internal/app/ProcessMap;

    move-result-object v6

    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v8, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v6, v7, v8, v4}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_65
    iget-object v6, p0, Lcom/android/server/am/AmsExecutor;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v4, v5, v12}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 84
    iget-object v6, p0, Lcom/android/server/am/AmsExecutor;->mAms:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v7, "updateOomAdj_processBegin"

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Ljava/lang/String;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_72} :catch_be
    .catchall {:try_start_6 .. :try_end_72} :catchall_bc

    .line 89
    :cond_72
    :try_start_72
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v8, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 90
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 89
    invoke-interface {v6, v7, v5, v8}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_81} :catch_a4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_72 .. :try_end_81} :catch_82
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_81} :catch_be
    .catchall {:try_start_72 .. :try_end_81} :catchall_bc

    goto :goto_a5

    .line 92
    :catch_82
    move-exception v5

    .line 93
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    :try_start_83
    const-string v6, "AmsExecutor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed trying to unstop package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a6

    .line 91
    .end local v5  # "e":Ljava/lang/IllegalArgumentException;
    :catch_a4
    move-exception v5

    .line 94
    :goto_a5
    nop

    .line 95
    :goto_a6
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v5, :cond_b9

    .line 96
    iget-object v5, p0, Lcom/android/server/am/AmsExecutor;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v6, Lcom/android/server/am/HostingRecord;

    const-string/jumbo v7, "restart"

    invoke-direct {v6, v7}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4, v6, v12}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;Ljava/lang/String;)Z
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_b9} :catch_be
    .catchall {:try_start_83 .. :try_end_b9} :catchall_bc

    .line 99
    .end local v2  # "pkg":Ljava/lang/String;
    .end local v3  # "info":Landroid/content/pm/ApplicationInfo;
    .end local v4  # "app":Lcom/android/server/am/ProcessRecord;
    :cond_b9
    goto/16 :goto_d

    .line 102
    :cond_bb
    goto :goto_d6

    .line 103
    :catchall_bc
    move-exception v1

    goto :goto_db

    .line 100
    :catch_be
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/Exception;
    :try_start_bf
    const-string v2, "AmsExecutor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadProcesses : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_d6
    monitor-exit v0
    :try_end_d7
    .catchall {:try_start_bf .. :try_end_d7} :catchall_bc

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 104
    return-void

    .line 103
    :goto_db
    :try_start_db
    monitor-exit v0
    :try_end_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_bc

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public stopPackage(Ljava/lang/String;I)V
    .registers 4
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 147
    iget-object v0, p0, Lcom/android/server/am/AmsExecutor;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 148
    return-void
.end method
