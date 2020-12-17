.class Lcom/meizu/settings/applications/ApplicationsState$PackageIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/applications/ApplicationsState;


# direct methods
.method private constructor <init>(Lcom/meizu/settings/applications/ApplicationsState;)V
    .registers 2

    .line 1444
    iput-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/settings/applications/ApplicationsState;Lcom/meizu/settings/applications/ApplicationsState$1;)V
    .registers 3

    .line 1444
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/ApplicationsState$PackageIntentReceiver;-><init>(Lcom/meizu/settings/applications/ApplicationsState;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 1469
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 1470
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    .line 1471
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 1472
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 1473
    :goto_15
    iget-object p2, p0, Lcom/meizu/settings/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object p2, p2, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge v1, p2, :cond_17b

    .line 1474
    iget-object p2, p0, Lcom/meizu/settings/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v0, p2, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/meizu/settings/applications/ApplicationsState;->addPackage(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_2d
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 1476
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 1477
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 1478
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    move p2, v1

    .line 1479
    :goto_3e
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_17b

    .line 1481
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_7c

    .line 1482
    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->mIsUninstalledSystemApp:Z

    if-eqz v0, :cond_7c

    .line 1483
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " onReceive remove uninstalledSystemApp, discard  because it need to show to install "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApplicationsState"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17b

    .line 1486
    :cond_7c
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    invoke-static {v0}, Lcom/meizu/settings/applications/ApplicationsState;->access$900(Lcom/meizu/settings/applications/ApplicationsState;)Ljava/util/List;

    move-result-object v0

    move v2, v1

    .line 1488
    :goto_83
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_d3

    .line 1489
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 1490
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d0

    .line 1491
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " onReceive remove uninstalledSystemApp, add because it need to show to install "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ApplicationsState"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v4, p1, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v4

    .line 1493
    :try_start_b2
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1494
    monitor-exit v4
    :try_end_ba
    .catchall {:try_start_b2 .. :try_end_ba} :catchall_cd

    .line 1495
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState;->mMainHandler:Lcom/meizu/settings/applications/ApplicationsState$MainHandler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_cc

    .line 1496
    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mMainHandler:Lcom/meizu/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_cc
    return-void

    :catchall_cd
    move-exception p0

    .line 1494
    :try_start_ce
    monitor-exit v4
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_cd

    throw p0

    :cond_d0
    add-int/lit8 v2, v2, 0x1

    goto :goto_83

    .line 1503
    :cond_d3
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v2, v0, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/meizu/settings/applications/ApplicationsState;->removePackage(Ljava/lang/String;I)V

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_3e

    :cond_e2
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 1505
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10a

    .line 1506
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 1507
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 1508
    :goto_f2
    iget-object p2, p0, Lcom/meizu/settings/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object p2, p2, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge v1, p2, :cond_17b

    .line 1509
    iget-object p2, p0, Lcom/meizu/settings/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v0, p2, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/meizu/settings/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f2

    :cond_10a
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 1511
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_145

    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 1512
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11b

    goto :goto_145

    :cond_11b
    const-string v0, "android.intent.action.USER_ADDED"

    .line 1532
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, -0x2710

    if-eqz v0, :cond_131

    .line 1533
    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    const-string p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/meizu/settings/applications/ApplicationsState;->access$1000(Lcom/meizu/settings/applications/ApplicationsState;I)V

    goto :goto_17b

    :cond_131
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 1534
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17b

    .line 1535
    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    const-string p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/meizu/settings/applications/ApplicationsState;->access$1100(Lcom/meizu/settings/applications/ApplicationsState;I)V

    goto :goto_17b

    :cond_145
    :goto_145
    const-string v0, "android.intent.extra.changed_package_list"

    .line 1519
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_17b

    .line 1520
    array-length v0, p2

    if-nez v0, :cond_151

    goto :goto_17b

    :cond_151
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 1524
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17b

    .line 1526
    array-length p1, p2

    move v0, v1

    :goto_15b
    if-ge v0, p1, :cond_17b

    aget-object v2, p2, v0

    move v3, v1

    .line 1527
    :goto_160
    iget-object v4, p0, Lcom/meizu/settings/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v4, v4, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_178

    .line 1528
    iget-object v4, p0, Lcom/meizu/settings/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v5, v4, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lcom/meizu/settings/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_160

    :cond_178
    add-int/lit8 v0, v0, 0x1

    goto :goto_15b

    :cond_17b
    :goto_17b
    return-void
.end method

.method registerReceiver()V
    .registers 3

    .line 1446
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 1447
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 1448
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 1449
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1450
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v1, v1, Lcom/meizu/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1452
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 1453
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 1454
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1455
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v1, v1, Lcom/meizu/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1457
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_ADDED"

    .line 1458
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_REMOVED"

    .line 1459
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1460
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v1, v1, Lcom/meizu/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method unregisterReceiver()V
    .registers 2

    .line 1464
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
