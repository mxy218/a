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
    .param p1, "x0"  # Lcom/android/server/om/OverlayManagerService;
    .param p2, "x1"  # Lcom/android/server/om/OverlayManagerService$1;

    .line 327
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    return-void
.end method

.method private onPackageAdded(Ljava/lang/String;[I)V
    .registers 12
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userIds"  # [I

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
    .local v5, "userId":I
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
    .local v7, "pi":Landroid/content/pm/PackageInfo;
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

    move-result v8

    if-eqz v8, :cond_52

    .line 387
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v8

    invoke-virtual {v8, p1, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageAdded(Ljava/lang/String;I)V

    goto :goto_5b

    .line 389
    :cond_52
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v8

    invoke-virtual {v8, p1, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->onTargetPackageAdded(Ljava/lang/String;I)V

    .line 392
    .end local v7  # "pi":Landroid/content/pm/PackageInfo;
    :cond_5b
    :goto_5b
    monitor-exit v6

    .line 380
    .end local v5  # "userId":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 392
    .restart local v5  # "userId":I
    :catchall_5f
    move-exception v2

    monitor-exit v6
    :try_end_61
    .catchall {:try_start_25 .. :try_end_61} :catchall_5f

    .end local p0  # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .end local p1  # "packageName":Ljava/lang/String;
    .end local p2  # "userIds":[I
    :try_start_61
    throw v2
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_67

    .line 395
    .end local v5  # "userId":I
    .restart local p0  # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .restart local p1  # "packageName":Ljava/lang/String;
    .restart local p2  # "userIds":[I
    :cond_62
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 396
    nop

    .line 397
    return-void

    .line 395
    :catchall_67
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private onPackageChanged(Ljava/lang/String;[I)V
    .registers 12
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userIds"  # [I

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
    .local v5, "userId":I
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
    .local v7, "pi":Landroid/content/pm/PackageInfo;
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

    move-result v8

    if-eqz v8, :cond_52

    .line 410
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v8

    invoke-virtual {v8, p1, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageChanged(Ljava/lang/String;I)V

    goto :goto_5b

    .line 412
    :cond_52
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v8

    invoke-virtual {v8, p1, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->onTargetPackageChanged(Ljava/lang/String;I)V

    .line 415
    .end local v7  # "pi":Landroid/content/pm/PackageInfo;
    :cond_5b
    :goto_5b
    monitor-exit v6

    .line 403
    .end local v5  # "userId":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 415
    .restart local v5  # "userId":I
    :catchall_5f
    move-exception v2

    monitor-exit v6
    :try_end_61
    .catchall {:try_start_25 .. :try_end_61} :catchall_5f

    .end local p0  # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .end local p1  # "packageName":Ljava/lang/String;
    .end local p2  # "userIds":[I
    :try_start_61
    throw v2
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_67

    .line 418
    .end local v5  # "userId":I
    .restart local p0  # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .restart local p1  # "packageName":Ljava/lang/String;
    .restart local p2  # "userIds":[I
    :cond_62
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 419
    nop

    .line 420
    return-void

    .line 418
    :catchall_67
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private onPackageRemoved(Ljava/lang/String;[I)V
    .registers 11
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userIds"  # [I

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
    .local v4, "userId":I
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
    .local v6, "oi":Landroid/content/om/OverlayInfo;
    if-eqz v6, :cond_43

    .line 472
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v7

    invoke-virtual {v7, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageRemoved(Ljava/lang/String;I)V

    goto :goto_4c

    .line 474
    :cond_43
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v7

    invoke-virtual {v7, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->onTargetPackageRemoved(Ljava/lang/String;I)V

    .line 476
    .end local v6  # "oi":Landroid/content/om/OverlayInfo;
    :goto_4c
    monitor-exit v5

    .line 467
    .end local v4  # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 476
    .restart local v4  # "userId":I
    :catchall_50
    move-exception v2

    monitor-exit v5
    :try_end_52
    .catchall {:try_start_24 .. :try_end_52} :catchall_50

    .end local p0  # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .end local p1  # "packageName":Ljava/lang/String;
    .end local p2  # "userIds":[I
    :try_start_52
    throw v2
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_58

    .line 479
    .end local v4  # "userId":I
    .restart local p0  # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .restart local p1  # "packageName":Ljava/lang/String;
    .restart local p2  # "userIds":[I
    :cond_53
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 480
    nop

    .line 481
    return-void

    .line 479
    :catchall_58
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private onPackageReplaced(Ljava/lang/String;[I)V
    .registers 12
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userIds"  # [I

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
    .local v5, "userId":I
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
    .local v7, "pi":Landroid/content/pm/PackageInfo;
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

    move-result v8

    if-eqz v8, :cond_52

    .line 451
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v8

    invoke-virtual {v8, p1, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageReplaced(Ljava/lang/String;I)V

    goto :goto_5b

    .line 453
    :cond_52
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v8

    invoke-virtual {v8, p1, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->onTargetPackageReplaced(Ljava/lang/String;I)V

    .line 456
    .end local v7  # "pi":Landroid/content/pm/PackageInfo;
    :cond_5b
    :goto_5b
    monitor-exit v6

    .line 444
    .end local v5  # "userId":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 456
    .restart local v5  # "userId":I
    :catchall_5f
    move-exception v2

    monitor-exit v6
    :try_end_61
    .catchall {:try_start_25 .. :try_end_61} :catchall_5f

    .end local p0  # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .end local p1  # "packageName":Ljava/lang/String;
    .end local p2  # "userIds":[I
    :try_start_61
    throw v2
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_67

    .line 459
    .end local v5  # "userId":I
    .restart local p0  # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .restart local p1  # "packageName":Ljava/lang/String;
    .restart local p2  # "userIds":[I
    :cond_62
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 460
    nop

    .line 461
    return-void

    .line 459
    :catchall_67
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private onPackageReplacing(Ljava/lang/String;[I)V
    .registers 11
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userIds"  # [I

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
    .local v4, "userId":I
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
    .local v6, "oi":Landroid/content/om/OverlayInfo;
    if-eqz v6, :cond_42

    .line 431
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v7

    invoke-virtual {v7, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageReplacing(Ljava/lang/String;I)V

    .line 433
    .end local v6  # "oi":Landroid/content/om/OverlayInfo;
    :cond_42
    monitor-exit v5

    .line 426
    .end local v4  # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 433
    .restart local v4  # "userId":I
    :catchall_46
    move-exception v2

    monitor-exit v5
    :try_end_48
    .catchall {:try_start_24 .. :try_end_48} :catchall_46

    .end local p0  # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .end local p1  # "packageName":Ljava/lang/String;
    .end local p2  # "userIds":[I
    :try_start_48
    throw v2
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_4e

    .line 436
    .end local v4  # "userId":I
    .restart local p0  # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .restart local p1  # "packageName":Ljava/lang/String;
    .restart local p2  # "userIds":[I
    :cond_49
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 437
    nop

    .line 438
    return-void

    .line 436
    :catchall_4e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 330
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "action":Ljava/lang/String;
    const-string v1, "OverlayManager"

    if-nez v0, :cond_e

    .line 332
    const-string v2, "Cannot handle package broadcast with null action"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return-void

    .line 335
    :cond_e
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 336
    .local v2, "data":Landroid/net/Uri;
    if-nez v2, :cond_1a

    .line 337
    const-string v3, "Cannot handle package broadcast with null data"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return-void

    .line 340
    :cond_1a
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "packageName":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 345
    .local v4, "replacing":Z
    const/16 v5, -0x2710

    const-string v6, "android.intent.extra.UID"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 346
    .local v6, "extraUid":I
    const/4 v7, 0x1

    if-ne v6, v5, :cond_3b

    .line 347
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$300(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v5

    .local v5, "userIds":[I
    goto :goto_43

    .line 349
    .end local v5  # "userIds":[I
    :cond_3b
    new-array v5, v7, [I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    aput v8, v5, v3

    .line 352
    .restart local v5  # "userIds":[I
    :goto_43
    const/4 v8, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, 0xa480416

    const/4 v11, 0x2

    if-eq v9, v10, :cond_6c

    const v10, 0x1f50b9c2

    if-eq v9, v10, :cond_62

    const v10, 0x5c1076e2

    if-eq v9, v10, :cond_59

    :cond_58
    goto :goto_76

    :cond_59
    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_58

    goto :goto_77

    :cond_62
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    move v3, v11

    goto :goto_77

    :cond_6c
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    move v3, v7

    goto :goto_77

    :goto_76
    move v3, v8

    :goto_77
    if-eqz v3, :cond_8c

    if-eq v3, v7, :cond_88

    if-eq v3, v11, :cond_7e

    goto :goto_96

    .line 364
    :cond_7e
    if-eqz v4, :cond_84

    .line 365
    invoke-direct {p0, v1, v5}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageReplacing(Ljava/lang/String;[I)V

    goto :goto_96

    .line 367
    :cond_84
    invoke-direct {p0, v1, v5}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageRemoved(Ljava/lang/String;[I)V

    .line 369
    goto :goto_96

    .line 361
    :cond_88
    invoke-direct {p0, v1, v5}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageChanged(Ljava/lang/String;[I)V

    .line 362
    goto :goto_96

    .line 354
    :cond_8c
    if-eqz v4, :cond_92

    .line 355
    invoke-direct {p0, v1, v5}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageReplaced(Ljava/lang/String;[I)V

    goto :goto_96

    .line 357
    :cond_92
    invoke-direct {p0, v1, v5}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageAdded(Ljava/lang/String;[I)V

    .line 359
    nop

    .line 374
    :goto_96
    return-void
.end method
