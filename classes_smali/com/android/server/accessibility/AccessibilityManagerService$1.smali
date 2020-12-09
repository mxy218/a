.class Lcom/android/server/accessibility/AccessibilityManagerService$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;->registerBroadcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 2

    .line 378
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method static synthetic lambda$onPackageUpdateFinished$0(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 2

    .line 412
    if-eqz p1, :cond_e

    .line 413
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    .line 412
    :goto_f
    return p0
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .registers 15

    .line 457
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 458
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$1;->getChangingUserId()I

    move-result p3

    .line 461
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v0

    const/4 v1, 0x0

    if-eq p3, v0, :cond_16

    .line 462
    monitor-exit p1

    return v1

    .line 464
    :cond_16
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$600(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 465
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 466
    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 467
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 468
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 469
    array-length v5, p2

    move v6, v1

    :goto_34
    if-ge v6, v5, :cond_5e

    aget-object v7, p2, v6

    .line 470
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5b

    .line 471
    if-nez p4, :cond_43

    .line 472
    monitor-exit p1

    const/4 p1, 0x1

    return p1

    .line 474
    :cond_43
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 475
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 476
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string v8, "enabled_accessibility_services"

    iget-object v9, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-virtual {v7, v8, v9, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    .line 479
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v7, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 469
    :cond_5b
    add-int/lit8 v6, v6, 0x1

    goto :goto_34

    .line 482
    :cond_5e
    goto :goto_22

    .line 483
    :cond_5f
    monitor-exit p1

    return v1

    .line 484
    :catchall_61
    move-exception p2

    monitor-exit p1
    :try_end_63
    .catchall {:try_start_7 .. :try_end_63} :catchall_61

    throw p2
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 8

    .line 422
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 423
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$1;->getChangingUserId()I

    move-result v0

    .line 426
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v1

    if-eq v0, v1, :cond_15

    .line 427
    monitor-exit p2

    return-void

    .line 429
    :cond_15
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$600(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 430
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 431
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_61

    .line 432
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 433
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 434
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 435
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 436
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 438
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string v2, "enabled_accessibility_services"

    iget-object v4, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-virtual {p1, v2, v4, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    .line 442
    iget-object p1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {p1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 443
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string/jumbo v2, "touch_exploration_granted_accessibility_services"

    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-virtual {p1, v2, v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    .line 447
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 448
    monitor-exit p2

    return-void

    .line 450
    :cond_60
    goto :goto_21

    .line 451
    :cond_61
    monitor-exit p2

    .line 452
    return-void

    .line 451
    :catchall_63
    move-exception p1

    monitor-exit p2
    :try_end_65
    .catchall {:try_start_7 .. :try_end_65} :catchall_63

    throw p1
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .registers 6

    .line 405
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 406
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$1;->getChangingUserId()I

    move-result v0

    .line 407
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v1

    if-eq v0, v1, :cond_15

    .line 408
    monitor-exit p2

    return-void

    .line 410
    :cond_15
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$600(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 411
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$1$49HMbWlhAK8DBFFzhu5wH_-EQaM;

    invoke-direct {v2, p1}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$1$49HMbWlhAK8DBFFzhu5wH_-EQaM;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p1

    .line 414
    if-eqz p1, :cond_2f

    .line 415
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 417
    :cond_2f
    monitor-exit p2

    .line 418
    return-void

    .line 417
    :catchall_31
    move-exception p1

    monitor-exit p2
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_31

    throw p1
.end method

.method public onSomePackagesChanged()V
    .registers 4

    .line 381
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 384
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$1;->getChangingUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v2

    if-eq v1, v2, :cond_15

    .line 385
    monitor-exit v0

    return-void

    .line 388
    :cond_15
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 392
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 393
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$400(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 394
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 396
    :cond_2d
    monitor-exit v0

    .line 397
    return-void

    .line 396
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_2f

    throw v1
.end method
