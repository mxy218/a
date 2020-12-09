.class final Lcom/android/server/om/OverlayManagerService$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OverlayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .registers 2

    .line 327
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$1;)V
    .registers 3

    .line 327
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    return-void
.end method

.method private onPackageAdded(Ljava/lang/String;[I)V
    .registers 12

    .line 379
    const-wide/32 v0, 0x4000000

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onPackageAdded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 380
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_1a
    if-ge v4, v2, :cond_62

    aget v5, p2, v4

    .line 381
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_67

    .line 382
    :try_start_25
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v7

    invoke-virtual {v7, p1, v5, v3}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 384
    if-eqz v7, :cond_5b

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v8

    if-nez v8, :cond_5b

    .line 385
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v8

    invoke-virtual {v8, p1, v5, v7}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->cachePackageInfo(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)V

    .line 386
    invoke-virtual {v7}, Landroid/content/pm/PackageInfo;->isOverlayPackage()Z

    move-result v7

    if-eqz v7, :cond_52

    .line 387
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v7

    invoke-virtual {v7, p1, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageAdded(Ljava/lang/String;I)V

    goto :goto_5b

    .line 389
    :cond_52
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v7

    invoke-virtual {v7, p1, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->onTargetPackageAdded(Ljava/lang/String;I)V

    .line 392
    :cond_5b
    :goto_5b
    monitor-exit v6

    .line 380
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 392
    :catchall_5f
    move-exception p1

    monitor-exit v6
    :try_end_61
    .catchall {:try_start_25 .. :try_end_61} :catchall_5f

    :try_start_61
    throw p1
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_67

    .line 395
    :cond_62
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 396
    nop

    .line 397
    return-void

    .line 395
    :catchall_67
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method private onPackageChanged(Ljava/lang/String;[I)V
    .registers 12

    .line 402
    const-wide/32 v0, 0x4000000

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onPackageChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 403
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_1a
    if-ge v4, v2, :cond_62

    aget v5, p2, v4

    .line 404
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_67

    .line 405
    :try_start_25
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v7

    invoke-virtual {v7, p1, v5, v3}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 407
    if-eqz v7, :cond_5b

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 408
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v8

    invoke-virtual {v8, p1, v5, v7}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->cachePackageInfo(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)V

    .line 409
    invoke-virtual {v7}, Landroid/content/pm/PackageInfo;->isOverlayPackage()Z

    move-result v7

    if-eqz v7, :cond_52

    .line 410
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v7

    invoke-virtual {v7, p1, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageChanged(Ljava/lang/String;I)V

    goto :goto_5b

    .line 412
    :cond_52
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v7

    invoke-virtual {v7, p1, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->onTargetPackageChanged(Ljava/lang/String;I)V

    .line 415
    :cond_5b
    :goto_5b
    monitor-exit v6

    .line 403
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 415
    :catchall_5f
    move-exception p1

    monitor-exit v6
    :try_end_61
    .catchall {:try_start_25 .. :try_end_61} :catchall_5f

    :try_start_61
    throw p1
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_67

    .line 418
    :cond_62
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 419
    nop

    .line 420
    return-void

    .line 418
    :catchall_67
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method private onPackageRemoved(Ljava/lang/String;[I)V
    .registers 10

    .line 466
    const-wide/32 v0, 0x4000000

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onPackageRemoved "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 467
    array-length v2, p2

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v2, :cond_53

    aget v4, p2, v3

    .line 468
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_58

    .line 469
    :try_start_24
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->forgetPackageInfo(Ljava/lang/String;I)V

    .line 470
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v6

    .line 471
    if-eqz v6, :cond_43

    .line 472
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageRemoved(Ljava/lang/String;I)V

    goto :goto_4c

    .line 474
    :cond_43
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->onTargetPackageRemoved(Ljava/lang/String;I)V

    .line 476
    :goto_4c
    monitor-exit v5

    .line 467
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 476
    :catchall_50
    move-exception p1

    monitor-exit v5
    :try_end_52
    .catchall {:try_start_24 .. :try_end_52} :catchall_50

    :try_start_52
    throw p1
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_58

    .line 479
    :cond_53
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 480
    nop

    .line 481
    return-void

    .line 479
    :catchall_58
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method private onPackageReplaced(Ljava/lang/String;[I)V
    .registers 12

    .line 443
    const-wide/32 v0, 0x4000000

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onPackageReplaced "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 444
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_1a
    if-ge v4, v2, :cond_62

    aget v5, p2, v4

    .line 445
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_67

    .line 446
    :try_start_25
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v7

    invoke-virtual {v7, p1, v5, v3}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 448
    if-eqz v7, :cond_5b

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v8

    if-nez v8, :cond_5b

    .line 449
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v8

    invoke-virtual {v8, p1, v5, v7}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->cachePackageInfo(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)V

    .line 450
    invoke-virtual {v7}, Landroid/content/pm/PackageInfo;->isOverlayPackage()Z

    move-result v7

    if-eqz v7, :cond_52

    .line 451
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v7

    invoke-virtual {v7, p1, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageReplaced(Ljava/lang/String;I)V

    goto :goto_5b

    .line 453
    :cond_52
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v7

    invoke-virtual {v7, p1, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->onTargetPackageReplaced(Ljava/lang/String;I)V

    .line 456
    :cond_5b
    :goto_5b
    monitor-exit v6

    .line 444
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 456
    :catchall_5f
    move-exception p1

    monitor-exit v6
    :try_end_61
    .catchall {:try_start_25 .. :try_end_61} :catchall_5f

    :try_start_61
    throw p1
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_67

    .line 459
    :cond_62
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 460
    nop

    .line 461
    return-void

    .line 459
    :catchall_67
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method private onPackageReplacing(Ljava/lang/String;[I)V
    .registers 10

    .line 425
    const-wide/32 v0, 0x4000000

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onPackageReplacing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 426
    array-length v2, p2

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v2, :cond_49

    aget v4, p2, v3

    .line 427
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_4e

    .line 428
    :try_start_24
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->forgetPackageInfo(Ljava/lang/String;I)V

    .line 429
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v6

    .line 430
    if-eqz v6, :cond_42

    .line 431
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageReplacing(Ljava/lang/String;I)V

    .line 433
    :cond_42
    monitor-exit v5

    .line 426
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 433
    :catchall_46
    move-exception p1

    monitor-exit v5
    :try_end_48
    .catchall {:try_start_24 .. :try_end_48} :catchall_46

    :try_start_48
    throw p1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_4e

    .line 436
    :cond_49
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 437
    nop

    .line 438
    return-void

    .line 436
    :catchall_4e
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    .line 330
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 331
    const-string v0, "OverlayManager"

    if-nez p1, :cond_e

    .line 332
    const-string p1, "Cannot handle package broadcast with null action"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return-void

    .line 335
    :cond_e
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 336
    if-nez v1, :cond_1a

    .line 337
    const-string p1, "Cannot handle package broadcast with null data"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return-void

    .line 340
    :cond_1a
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 342
    const/4 v1, 0x0

    const-string v2, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 345
    const/16 v3, -0x2710

    const-string v4, "android.intent.extra.UID"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 346
    const/4 v4, 0x1

    if-ne p2, v3, :cond_3b

    .line 347
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerService;->access$300(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/pm/UserManagerService;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object p2

    goto :goto_44

    .line 349
    :cond_3b
    new-array v3, v4, [I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    aput p2, v3, v1

    move-object p2, v3

    .line 352
    :goto_44
    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0xa480416

    const/4 v7, 0x2

    if-eq v5, v6, :cond_6d

    const v6, 0x1f50b9c2

    if-eq v5, v6, :cond_63

    const v6, 0x5c1076e2

    if-eq v5, v6, :cond_5a

    :cond_59
    goto :goto_77

    :cond_5a
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_59

    goto :goto_78

    :cond_63
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_59

    move v1, v7

    goto :goto_78

    :cond_6d
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_59

    move v1, v4

    goto :goto_78

    :goto_77
    move v1, v3

    :goto_78
    if-eqz v1, :cond_8d

    if-eq v1, v4, :cond_89

    if-eq v1, v7, :cond_7f

    goto :goto_97

    .line 364
    :cond_7f
    if-eqz v2, :cond_85

    .line 365
    invoke-direct {p0, v0, p2}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageReplacing(Ljava/lang/String;[I)V

    goto :goto_97

    .line 367
    :cond_85
    invoke-direct {p0, v0, p2}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageRemoved(Ljava/lang/String;[I)V

    .line 369
    goto :goto_97

    .line 361
    :cond_89
    invoke-direct {p0, v0, p2}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageChanged(Ljava/lang/String;[I)V

    .line 362
    goto :goto_97

    .line 354
    :cond_8d
    if-eqz v2, :cond_93

    .line 355
    invoke-direct {p0, v0, p2}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageReplaced(Ljava/lang/String;[I)V

    goto :goto_97

    .line 357
    :cond_93
    invoke-direct {p0, v0, p2}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageAdded(Ljava/lang/String;[I)V

    .line 359
    nop

    .line 374
    :goto_97
    return-void
.end method
