.class Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/applications/ApplicationsState;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;)V
    .registers 2

    .line 1416
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settingslib/applications/ApplicationsState$1;)V
    .registers 3

    .line 1416
    invoke-direct {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;-><init>(Lcom/android/settingslib/applications/ApplicationsState;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 1441
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 1442
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    .line 1443
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 1444
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 1445
    :goto_15
    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge v1, p2, :cond_ea

    .line 1446
    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/android/settingslib/applications/ApplicationsState;->addPackage(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_2d
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 1448
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1449
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 1450
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 1451
    :goto_3d
    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge v1, p2, :cond_ea

    .line 1452
    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/android/settingslib/applications/ApplicationsState;->removePackage(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    :cond_55
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 1454
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 1455
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 1456
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 1457
    :goto_65
    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge v1, p2, :cond_ea

    .line 1458
    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/android/settingslib/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    :cond_7d
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 1460
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b6

    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 1461
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    goto :goto_b6

    :cond_8e
    const-string v0, "android.intent.action.USER_ADDED"

    .line 1481
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, -0x2710

    const-string v2, "android.intent.extra.user_handle"

    if-eqz v0, :cond_a4

    .line 1482
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;->access$700(Lcom/android/settingslib/applications/ApplicationsState;I)V

    goto :goto_ea

    :cond_a4
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 1483
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ea

    .line 1484
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;->access$800(Lcom/android/settingslib/applications/ApplicationsState;I)V

    goto :goto_ea

    :cond_b6
    :goto_b6
    const-string v2, "android.intent.extra.changed_package_list"

    .line 1468
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_ea

    .line 1469
    array-length v2, p2

    if-nez v2, :cond_c2

    goto :goto_ea

    .line 1473
    :cond_c2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ea

    .line 1475
    array-length p1, p2

    move v0, v1

    :goto_ca
    if-ge v0, p1, :cond_ea

    aget-object v2, p2, v0

    move v3, v1

    .line 1476
    :goto_cf
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_e7

    .line 1477
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v4, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lcom/android/settingslib/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_cf

    :cond_e7
    add-int/lit8 v0, v0, 0x1

    goto :goto_ca

    :cond_ea
    :goto_ea
    return-void
.end method

.method registerReceiver()V
    .registers 3

    .line 1418
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 1419
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 1420
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 1421
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1422
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1424
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 1425
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 1426
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1427
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1429
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_ADDED"

    .line 1430
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_REMOVED"

    .line 1431
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1432
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method unregisterReceiver()V
    .registers 2

    .line 1436
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
