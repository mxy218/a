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

    .line 473
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 474
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3

    .line 484
    const/16 v0, 0x226

    if-ne p1, v0, :cond_1a

    .line 485
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService;->cleanupPartialUsers()V

    .line 487
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    invoke-static {p1}, Lcom/android/server/pm/UserManagerService;->access$200(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 488
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService;->cleanupPreCreatedUsers()V

    .line 491
    :cond_1a
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 478
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    .line 479
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/UserManagerService$LifeCycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 480
    return-void
.end method

.method public onStartUser(I)V
    .registers 5

    .line 495
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$300(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 496
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->access$400(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p1

    .line 497
    if-eqz p1, :cond_15

    .line 498
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/pm/UserManagerService$UserData;->startRealtime:J

    .line 500
    :cond_15
    monitor-exit v0

    .line 501
    return-void

    .line 500
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public onStopUser(I)V
    .registers 5

    .line 515
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$300(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 516
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->access$400(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p1

    .line 517
    if-eqz p1, :cond_15

    .line 518
    const-wide/16 v1, 0x0

    iput-wide v1, p1, Lcom/android/server/pm/UserManagerService$UserData;->startRealtime:J

    .line 519
    iput-wide v1, p1, Lcom/android/server/pm/UserManagerService$UserData;->unlockRealtime:J

    .line 521
    :cond_15
    monitor-exit v0

    .line 522
    return-void

    .line 521
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public onUnlockUser(I)V
    .registers 5

    .line 505
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$300(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 506
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->access$400(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p1

    .line 507
    if-eqz p1, :cond_15

    .line 508
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/pm/UserManagerService$UserData;->unlockRealtime:J

    .line 510
    :cond_15
    monitor-exit v0

    .line 511
    return-void

    .line 510
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw p1
.end method
