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
    .registers 4

    .line 4321
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4322
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4323
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4324
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4325
    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4326
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 4327
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4329
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4330
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4331
    const-string v1, "android.intent.action.USER_STOPPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4332
    const-string v1, "android.intent.action.UID_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4333
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4334
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14

    .line 4338
    const/4 p1, -0x1

    const-string v0, "android.intent.extra.UID"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 4339
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4340
    const/4 v2, 0x0

    .line 4341
    :try_start_d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    sparse-switch v4, :sswitch_data_12c

    :cond_1e
    goto :goto_5b

    :sswitch_1f
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    move v3, v6

    goto :goto_5c

    :sswitch_29
    const-string v4, "android.intent.action.USER_STOPPED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    move v3, v8

    goto :goto_5c

    :sswitch_33
    const-string v4, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    move v3, v5

    goto :goto_5c

    :sswitch_3d
    const-string v4, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    move v3, v9

    goto :goto_5c

    :sswitch_47
    const-string v4, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    move v3, v10

    goto :goto_5c

    :sswitch_51
    const-string v4, "android.intent.action.UID_REMOVED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    move v3, v7

    goto :goto_5c

    :goto_5b
    move v3, p1

    :goto_5c
    if-eqz v3, :cond_10c

    if-eq v3, v10, :cond_ac

    if-eq v3, v8, :cond_96

    if-eq v3, v7, :cond_84

    if-eq v3, v6, :cond_69

    if-eq v3, v5, :cond_73

    goto :goto_b3

    .line 4368
    :cond_69
    const-string p1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, p1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_73

    .line 4370
    monitor-exit v1

    return-void

    .line 4374
    :cond_73
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 4375
    if-eqz p1, :cond_b3

    .line 4376
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 4377
    if-eqz p1, :cond_b3

    .line 4378
    new-array v2, v10, [Ljava/lang/String;

    aput-object p1, v2, v9

    goto :goto_b3

    .line 4362
    :cond_84
    if-ltz v0, :cond_94

    .line 4363
    iget-object p1, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseLongArray;->delete(I)V

    .line 4364
    iget-object p1, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4366
    :cond_94
    monitor-exit v1

    return-void

    .line 4355
    :cond_96
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 4356
    if-ltz p1, :cond_aa

    .line 4357
    iget-object p2, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {p2, p1}, Lcom/android/server/AlarmManagerService;->removeUserLocked(I)V

    .line 4358
    iget-object p2, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object p2, p2, Lcom/android/server/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {p2, p1}, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->removeForUser(I)V

    .line 4360
    :cond_aa
    monitor-exit v1

    return-void

    .line 4352
    :cond_ac
    const-string p1, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 4353
    nop

    .line 4383
    :cond_b3
    :goto_b3
    if-eqz v2, :cond_10a

    array-length p1, v2

    if-lez p1, :cond_10a

    .line 4384
    array-length p1, v2

    :goto_b9
    if-ge v9, p1, :cond_10a

    aget-object p2, v2, v9

    .line 4385
    if-ltz v0, :cond_d0

    .line 4387
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/AlarmManagerService$AppWakeupHistory;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v3, p2, v4}, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->removeForPackage(Ljava/lang/String;I)V

    .line 4388
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v3, v0}, Lcom/android/server/AlarmManagerService;->removeLocked(I)V

    goto :goto_d5

    .line 4391
    :cond_d0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v3, p2}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/lang/String;)V

    .line 4393
    :goto_d5
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4394
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v10

    :goto_e5
    if-ltz v3, :cond_107

    .line 4395
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 4396
    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_104

    .line 4397
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-gtz v4, :cond_104

    .line 4398
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 4394
    :cond_104
    add-int/lit8 v3, v3, -0x1

    goto :goto_e5

    .line 4384
    :cond_107
    add-int/lit8 v9, v9, 0x1

    goto :goto_b9

    .line 4404
    :cond_10a
    monitor-exit v1

    .line 4405
    return-void

    .line 4343
    :cond_10c
    const-string v0, "android.intent.extra.PACKAGES"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 4344
    array-length v0, p2

    :goto_113
    if-ge v9, v0, :cond_127

    aget-object v2, p2, v9

    .line 4345
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_124

    .line 4346
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService$UninstallReceiver;->setResultCode(I)V

    .line 4347
    monitor-exit v1

    return-void

    .line 4344
    :cond_124
    add-int/lit8 v9, v9, 0x1

    goto :goto_113

    .line 4350
    :cond_127
    monitor-exit v1

    return-void

    .line 4404
    :catchall_129
    move-exception p1

    monitor-exit v1
    :try_end_12b
    .catchall {:try_start_d .. :try_end_12b} :catchall_129

    throw p1

    :sswitch_data_12c
    .sparse-switch
        -0x6849e2b4 -> :sswitch_51
        -0x53ae571d -> :sswitch_47
        -0x3ff1ba66 -> :sswitch_3d
        -0x2d2ad030 -> :sswitch_33
        -0x2c3dc982 -> :sswitch_29
        0x1f50b9c2 -> :sswitch_1f
    .end sparse-switch
.end method
