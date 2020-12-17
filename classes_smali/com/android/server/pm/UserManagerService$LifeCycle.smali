.class public Lcom/android/server/pm/UserManagerService$LifeCycle;
.super Lcom/android/server/SystemService;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LifeCycle"
.end annotation


# instance fields
.field private mUms:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"  # Landroid/content/Context;

    .line 465
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 466
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3
    .param p1, "phase"  # I

    .line 476
    const/16 v0, 0x226

    if-ne p1, v0, :cond_9

    .line 477
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->cleanupPartialUsers()V

    .line 479
    :cond_9
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 470
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    .line 471
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/UserManagerService$LifeCycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 472
    return-void
.end method

.method public onStartUser(I)V
    .registers 6
    .param p1, "userHandle"  # I

    .line 483
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$200(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 484
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->access$300(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 485
    .local v1, "user":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v1, :cond_15

    .line 486
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->startRealtime:J

    .line 488
    .end local v1  # "user":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_15
    monitor-exit v0

    .line 489
    return-void

    .line 488
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public onStopUser(I)V
    .registers 6
    .param p1, "userHandle"  # I

    .line 503
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$200(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 504
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->access$300(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 505
    .local v1, "user":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v1, :cond_15

    .line 506
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->startRealtime:J

    .line 507
    iput-wide v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->unlockRealtime:J

    .line 509
    .end local v1  # "user":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_15
    monitor-exit v0

    .line 510
    return-void

    .line 509
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public onUnlockUser(I)V
    .registers 6
    .param p1, "userHandle"  # I

    .line 493
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$200(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 494
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->access$300(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 495
    .local v1, "user":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v1, :cond_15

    .line 496
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->unlockRealtime:J

    .line 498
    .end local v1  # "user":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_15
    monitor-exit v0

    .line 499
    return-void

    .line 498
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v1
.end method
