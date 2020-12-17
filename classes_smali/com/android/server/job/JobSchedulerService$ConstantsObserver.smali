.class Lcom/android/server/job/JobSchedulerService$ConstantsObserver;
.super Landroid/database/ContentObserver;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConstantsObserver"
.end annotation


# instance fields
.field private mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"  # Landroid/os/Handler;

    .line 280
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 281
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 282
    return-void
.end method

.method private updateConstants()V
    .registers 5

    .line 297
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_5
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "job_scheduler_constants"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/job/JobSchedulerService$Constants;->updateConstantsLocked(Ljava/lang/String;)V

    .line 301
    const/4 v1, 0x0

    .local v1, "controller":I
    :goto_16
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 302
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    .line 303
    .local v2, "sc":Lcom/android/server/job/controllers/StateController;
    invoke-virtual {v2}, Lcom/android/server/job/controllers/StateController;->onConstantsUpdatedLocked()V
    :try_end_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_2d} :catch_33
    .catchall {:try_start_5 .. :try_end_2d} :catchall_31

    .line 301
    .end local v2  # "sc":Lcom/android/server/job/controllers/StateController;
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 309
    .end local v1  # "controller":I
    :cond_30
    goto :goto_3b

    .line 310
    :catchall_31
    move-exception v1

    goto :goto_4a

    .line 305
    :catch_33
    move-exception v1

    .line 308
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_34
    const-string v2, "JobScheduler"

    const-string v3, "Bad jobscheduler settings"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    .end local v1  # "e":Ljava/lang/IllegalArgumentException;
    :goto_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_31

    .line 312
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->USE_HEARTBEATS:Z

    if-eqz v0, :cond_49

    .line 314
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->setNextHeartbeatAlarm()V

    .line 316
    :cond_49
    return-void

    .line 310
    :goto_4a
    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_31

    throw v1
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3
    .param p1, "selfChange"  # Z
    .param p2, "uri"  # Landroid/net/Uri;

    .line 293
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->updateConstants()V

    .line 294
    return-void
.end method

.method public start(Landroid/content/ContentResolver;)V
    .registers 5
    .param p1, "resolver"  # Landroid/content/ContentResolver;

    .line 285
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 286
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "job_scheduler_constants"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 288
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->updateConstants()V

    .line 289
    return-void
.end method
