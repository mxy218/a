.class Lcom/android/server/AlarmManagerService$UninstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UninstallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 5
    .param p1, "this$0"  # Lcom/android/server/AlarmManagerService;

    .line 4577
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4578
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4579
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4580
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4581
    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4582
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 4583
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4585
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 4586
    .local v1, "sdFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4587
    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4588
    const-string v2, "android.intent.action.UID_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4589
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4590
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 4594
    const/4 v0, -0x1

    const-string v1, "android.intent.extra.UID"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 4595
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4596
    const/4 v3, 0x0

    .line 4597
    .local v3, "pkgList":[Ljava/lang/String;
    :try_start_d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    sparse-switch v5, :sswitch_data_130

    :cond_1e
    goto :goto_5b

    :sswitch_1f
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    move v4, v7

    goto :goto_5c

    :sswitch_29
    const-string v5, "android.intent.action.USER_STOPPED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    move v4, v9

    goto :goto_5c

    :sswitch_33
    const-string v5, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    move v4, v6

    goto :goto_5c

    :sswitch_3d
    const-string v5, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    move v4, v10

    goto :goto_5c

    :sswitch_47
    const-string v5, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    move v4, v11

    goto :goto_5c

    :sswitch_51
    const-string v5, "android.intent.action.UID_REMOVED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    move v4, v8

    goto :goto_5c

    :goto_5b
    move v4, v0

    :goto_5c
    if-eqz v4, :cond_10e

    if-eq v4, v11, :cond_ad

    if-eq v4, v9, :cond_97

    if-eq v4, v8, :cond_85

    if-eq v4, v7, :cond_69

    if-eq v4, v6, :cond_73

    goto :goto_b5

    .line 4624
    :cond_69
    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 4626
    monitor-exit v2

    return-void

    .line 4630
    :cond_73
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 4631
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_b5

    .line 4632
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 4633
    .local v4, "pkg":Ljava/lang/String;
    if-eqz v4, :cond_b5

    .line 4634
    new-array v5, v11, [Ljava/lang/String;

    aput-object v4, v5, v10

    move-object v3, v5

    goto :goto_b5

    .line 4618
    .end local v0  # "data":Landroid/net/Uri;
    .end local v4  # "pkg":Ljava/lang/String;
    :cond_85
    if-ltz v1, :cond_95

    .line 4619
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 4620
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4622
    :cond_95
    monitor-exit v2

    return-void

    .line 4611
    :cond_97
    const-string v4, "android.intent.extra.user_handle"

    invoke-virtual {p2, v4, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 4612
    .local v0, "userHandle":I
    if-ltz v0, :cond_ab

    .line 4613
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4, v0}, Lcom/android/server/AlarmManagerService;->removeUserLocked(I)V

    .line 4614
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v4, v0}, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->removeForUser(I)V

    .line 4616
    :cond_ab
    monitor-exit v2

    return-void

    .line 4608
    .end local v0  # "userHandle":I
    :cond_ad
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 4609
    nop

    .line 4639
    :cond_b5
    :goto_b5
    if-eqz v3, :cond_10c

    array-length v0, v3

    if-lez v0, :cond_10c

    .line 4640
    array-length v0, v3

    :goto_bb
    if-ge v10, v0, :cond_10c

    aget-object v4, v3, v10

    .line 4641
    .restart local v4  # "pkg":Ljava/lang/String;
    if-ltz v1, :cond_d2

    .line 4643
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v5, v5, Lcom/android/server/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/AlarmManagerService$AppWakeupHistory;

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v5, v4, v6}, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->removeForPackage(Ljava/lang/String;I)V

    .line 4644
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v5, v1}, Lcom/android/server/AlarmManagerService;->removeLocked(I)V

    goto :goto_d7

    .line 4647
    :cond_d2
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/lang/String;)V

    .line 4649
    :goto_d7
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v5, v5, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4650
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v5, v5, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    sub-int/2addr v5, v11

    .local v5, "i":I
    :goto_e7
    if-ltz v5, :cond_109

    .line 4651
    iget-object v6, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 4652
    .local v6, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_106

    .line 4653
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-gtz v7, :cond_106

    .line 4654
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v7, v7, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->removeAt(I)V

    .line 4650
    .end local v6  # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_106
    add-int/lit8 v5, v5, -0x1

    goto :goto_e7

    .line 4640
    .end local v4  # "pkg":Ljava/lang/String;
    .end local v5  # "i":I
    :cond_109
    add-int/lit8 v10, v10, 0x1

    goto :goto_bb

    .line 4660
    .end local v3  # "pkgList":[Ljava/lang/String;
    :cond_10c
    monitor-exit v2

    .line 4661
    return-void

    .line 4599
    .restart local v3  # "pkgList":[Ljava/lang/String;
    :cond_10e
    const-string v4, "android.intent.extra.PACKAGES"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 4600
    array-length v4, v3

    :goto_116
    if-ge v10, v4, :cond_12a

    aget-object v5, v3, v10

    .line 4601
    .local v5, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_127

    .line 4602
    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerService$UninstallReceiver;->setResultCode(I)V

    .line 4603
    monitor-exit v2

    return-void

    .line 4600
    .end local v5  # "packageName":Ljava/lang/String;
    :cond_127
    add-int/lit8 v10, v10, 0x1

    goto :goto_116

    .line 4606
    :cond_12a
    monitor-exit v2

    return-void

    .line 4660
    .end local v3  # "pkgList":[Ljava/lang/String;
    :catchall_12c
    move-exception v0

    monitor-exit v2
    :try_end_12e
    .catchall {:try_start_d .. :try_end_12e} :catchall_12c

    throw v0

    nop

    :sswitch_data_130
    .sparse-switch
        -0x6849e2b4 -> :sswitch_51
        -0x53ae571d -> :sswitch_47
        -0x3ff1ba66 -> :sswitch_3d
        -0x2d2ad030 -> :sswitch_33
        -0x2c3dc982 -> :sswitch_29
        0x1f50b9c2 -> :sswitch_1f
    .end sparse-switch
.end method
