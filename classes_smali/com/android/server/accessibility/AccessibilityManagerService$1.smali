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
    .param p1, "this$0"  # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 380
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method static synthetic lambda$onPackageUpdateFinished$0(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 3
    .param p0, "packageName"  # Ljava/lang/String;
    .param p1, "component"  # Landroid/content/ComponentName;

    .line 414
    if-eqz p1, :cond_e

    .line 415
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 414
    :goto_f
    return v0
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .registers 20
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "packages"  # [Ljava/lang/String;
    .param p3, "uid"  # I
    .param p4, "doit"  # Z

    .line 459
    move-object v1, p0

    move-object/from16 v2, p2

    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 460
    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$1;->getChangingUserId()I

    move-result v0

    .line 463
    .local v0, "userId":I
    iget-object v4, v1, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v4

    const/4 v5, 0x0

    if-eq v0, v4, :cond_19

    .line 464
    monitor-exit v3

    return v5

    .line 466
    :cond_19
    iget-object v4, v1, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$600(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v4

    .line 467
    .local v4, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v6, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 468
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :goto_25
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_62

    .line 469
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 470
    .local v7, "comp":Landroid/content/ComponentName;
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 471
    .local v8, "compPkg":Ljava/lang/String;
    array-length v9, v2

    move v10, v5

    :goto_37
    if-ge v10, v9, :cond_61

    aget-object v11, v2, v10

    .line 472
    .local v11, "pkg":Ljava/lang/String;
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5e

    .line 473
    if-nez p4, :cond_46

    .line 474
    monitor-exit v3

    const/4 v3, 0x1

    return v3

    .line 476
    :cond_46
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 477
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 478
    iget-object v12, v1, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string v13, "enabled_accessibility_services"

    iget-object v14, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-virtual {v12, v13, v14, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    .line 481
    iget-object v12, v1, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v12, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 471
    .end local v11  # "pkg":Ljava/lang/String;
    :cond_5e
    add-int/lit8 v10, v10, 0x1

    goto :goto_37

    .line 484
    .end local v7  # "comp":Landroid/content/ComponentName;
    .end local v8  # "compPkg":Ljava/lang/String;
    :cond_61
    goto :goto_25

    .line 485
    :cond_62
    monitor-exit v3

    return v5

    .line 486
    .end local v0  # "userId":I
    .end local v4  # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .end local v6  # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :catchall_64
    move-exception v0

    monitor-exit v3
    :try_end_66
    .catchall {:try_start_a .. :try_end_66} :catchall_64

    throw v0
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 12
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 424
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 425
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$1;->getChangingUserId()I

    move-result v1

    .line 428
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v2

    if-eq v1, v2, :cond_15

    .line 429
    monitor-exit v0

    return-void

    .line 431
    :cond_15
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$600(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    .line 432
    .local v2, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 433
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_61

    .line 434
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 435
    .local v4, "comp":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 436
    .local v5, "compPkg":Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60

    .line 437
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 438
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 440
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string v7, "enabled_accessibility_services"

    iget-object v8, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-virtual {v6, v7, v8, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    .line 444
    iget-object v6, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 445
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string/jumbo v7, "touch_exploration_granted_accessibility_services"

    iget-object v8, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-virtual {v6, v7, v8, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    .line 449
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 450
    monitor-exit v0

    return-void

    .line 452
    .end local v4  # "comp":Landroid/content/ComponentName;
    .end local v5  # "compPkg":Ljava/lang/String;
    :cond_60
    goto :goto_21

    .line 453
    .end local v1  # "userId":I
    .end local v2  # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .end local v3  # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :cond_61
    monitor-exit v0

    .line 454
    return-void

    .line 453
    :catchall_63
    move-exception v1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_7 .. :try_end_65} :catchall_63

    throw v1
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 407
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 408
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$1;->getChangingUserId()I

    move-result v1

    .line 409
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v2

    if-eq v1, v2, :cond_15

    .line 410
    monitor-exit v0

    return-void

    .line 412
    :cond_15
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$600(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    .line 413
    .local v2, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Ljava/util/Set;

    move-result-object v3

    new-instance v4, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$1$49HMbWlhAK8DBFFzhu5wH_-EQaM;

    invoke-direct {v4, p1}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$1$49HMbWlhAK8DBFFzhu5wH_-EQaM;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v3

    .line 416
    .local v3, "reboundAService":Z
    if-eqz v3, :cond_2f

    .line 417
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 419
    .end local v1  # "userId":I
    .end local v2  # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .end local v3  # "reboundAService":Z
    :cond_2f
    monitor-exit v0

    .line 420
    return-void

    .line 419
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public onSomePackagesChanged()V
    .registers 4

    .line 383
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 386
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$1;->getChangingUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v2

    if-eq v1, v2, :cond_15

    .line 387
    monitor-exit v0

    return-void

    .line 390
    :cond_15
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 394
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 395
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$400(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 396
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 398
    .end local v1  # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_2d
    monitor-exit v0

    .line 399
    return-void

    .line 398
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_2f

    throw v1
.end method
