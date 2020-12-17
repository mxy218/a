.class final Lcom/android/server/uri/UriGrantsManagerService$LocalService;
.super Ljava/lang/Object;
.source "UriGrantsManagerService.java"

# interfaces
.implements Lcom/android/server/uri/UriGrantsManagerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/uri/UriGrantsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/uri/UriGrantsManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/uri/UriGrantsManagerService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/uri/UriGrantsManagerService;

    .line 1304
    iput-object p1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkAuthorityGrants(ILandroid/content/pm/ProviderInfo;IZ)Z
    .registers 7
    .param p1, "callingUid"  # I
    .param p2, "cpi"  # Landroid/content/pm/ProviderInfo;
    .param p3, "userId"  # I
    .param p4, "checkUser"  # Z

    .line 1444
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->access$300(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1445
    :try_start_7
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->checkAuthorityGrants(ILandroid/content/pm/ProviderInfo;IZ)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1447
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I
    .registers 13
    .param p1, "callingUid"  # I
    .param p2, "targetPkg"  # Ljava/lang/String;
    .param p3, "uri"  # Landroid/net/Uri;
    .param p4, "modeFlags"  # I
    .param p5, "userId"  # I

    .line 1350
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    const-string v1, "checkGrantUriPermission"

    invoke-static {v0, v1}, Lcom/android/server/uri/UriGrantsManagerService;->access$500(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;)V

    .line 1351
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->access$300(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1352
    :try_start_e
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1354
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public checkGrantUriPermission(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I
    .registers 13
    .param p1, "callingUid"  # I
    .param p2, "targetPkg"  # Ljava/lang/String;
    .param p3, "uri"  # Lcom/android/server/uri/GrantUri;
    .param p4, "modeFlags"  # I
    .param p5, "userId"  # I

    .line 1341
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->access$300(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1342
    :try_start_7
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermission(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1344
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public checkGrantUriPermissionFromIntent(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;
    .registers 15
    .param p1, "callingUid"  # I
    .param p2, "targetPkg"  # Ljava/lang/String;
    .param p3, "intent"  # Landroid/content/Intent;
    .param p4, "mode"  # I
    .param p5, "needed"  # Lcom/android/server/uri/NeededUriGrants;
    .param p6, "targetUserId"  # I

    .line 1360
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->access$300(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1361
    :try_start_7
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionFromIntent(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1363
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public checkUriPermission(Lcom/android/server/uri/GrantUri;II)Z
    .registers 6
    .param p1, "grantUri"  # Lcom/android/server/uri/GrantUri;
    .param p2, "uid"  # I
    .param p3, "modeFlags"  # I

    .line 1333
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->access$300(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1334
    :try_start_7
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUriPermission(Lcom/android/server/uri/GrantUri;II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1335
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;ZLjava/lang/String;)V
    .registers 15
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "dumpAll"  # Z
    .param p3, "dumpPackage"  # Ljava/lang/String;

    .line 1452
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->access$300(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1453
    const/4 v1, 0x0

    .line 1454
    .local v1, "needSep":Z
    const/4 v2, 0x0

    .line 1455
    .local v2, "printedAnything":Z
    :try_start_9
    iget-object v3, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v3}, Lcom/android/server/uri/UriGrantsManagerService;->access$600(Lcom/android/server/uri/UriGrantsManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_a7

    if-lez v3, :cond_9e

    .line 1456
    const/4 v3, 0x0

    .line 1457
    .local v3, "printed":Z
    const/4 v4, -0x2

    .line 1458
    .local v4, "dumpUid":I
    const/4 v5, 0x0

    if-eqz p3, :cond_2e

    .line 1460
    :try_start_1a
    iget-object v6, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v6}, Lcom/android/server/uri/UriGrantsManagerService;->access$700(Lcom/android/server/uri/UriGrantsManagerService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/high16 v7, 0x400000

    invoke-virtual {v6, p3, v7, v5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v6
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a .. :try_end_2a} :catch_2c
    .catchall {:try_start_1a .. :try_end_2a} :catchall_a7

    move v4, v6

    .line 1464
    goto :goto_2e

    .line 1462
    :catch_2c
    move-exception v6

    .line 1463
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v4, -0x1

    .line 1466
    .end local v6  # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2e
    :goto_2e
    nop

    .local v5, "i":I
    :goto_2f
    :try_start_2f
    iget-object v6, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v6}, Lcom/android/server/uri/UriGrantsManagerService;->access$600(Lcom/android/server/uri/UriGrantsManagerService;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_9e

    .line 1467
    iget-object v6, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v6}, Lcom/android/server/uri/UriGrantsManagerService;->access$600(Lcom/android/server/uri/UriGrantsManagerService;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 1468
    .local v6, "uid":I
    const/4 v7, -0x1

    if-lt v4, v7, :cond_4f

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    if-eq v7, v4, :cond_4f

    .line 1469
    goto :goto_9b

    .line 1471
    :cond_4f
    iget-object v7, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    .line 1472
    invoke-static {v7}, Lcom/android/server/uri/UriGrantsManagerService;->access$600(Lcom/android/server/uri/UriGrantsManagerService;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    .line 1473
    .local v7, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-nez v3, :cond_6a

    .line 1474
    if-eqz v1, :cond_62

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1475
    :cond_62
    const/4 v1, 0x1

    .line 1476
    const-string v8, "  Granted Uri Permissions:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1477
    const/4 v3, 0x1

    .line 1478
    const/4 v2, 0x1

    .line 1480
    :cond_6a
    const-string v8, "  * UID "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, " holds:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1481
    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/uri/UriPermission;

    .line 1482
    .local v9, "perm":Lcom/android/server/uri/UriPermission;
    const-string v10, "    "

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1483
    if-eqz p2, :cond_9a

    .line 1484
    const-string v10, "      "

    invoke-virtual {v9, p1, v10}, Lcom/android/server/uri/UriPermission;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1486
    .end local v9  # "perm":Lcom/android/server/uri/UriPermission;
    :cond_9a
    goto :goto_7f

    .line 1466
    .end local v6  # "uid":I
    .end local v7  # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    :cond_9b
    :goto_9b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 1490
    .end local v3  # "printed":Z
    .end local v4  # "dumpUid":I
    .end local v5  # "i":I
    :cond_9e
    if-nez v2, :cond_a5

    .line 1491
    const-string v3, "  (nothing)"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1493
    .end local v1  # "needSep":Z
    .end local v2  # "printedAnything":Z
    :cond_a5
    monitor-exit v0

    .line 1494
    return-void

    .line 1493
    :catchall_a7
    move-exception v1

    monitor-exit v0
    :try_end_a9
    .catchall {:try_start_2f .. :try_end_a9} :catchall_a7

    throw v1
.end method

.method public grantUriPermission(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;I)V
    .registers 15
    .param p1, "callingUid"  # I
    .param p2, "targetPkg"  # Ljava/lang/String;
    .param p3, "grantUri"  # Lcom/android/server/uri/GrantUri;
    .param p4, "modeFlags"  # I
    .param p5, "owner"  # Lcom/android/server/uri/UriPermissionOwner;
    .param p6, "targetUserId"  # I

    .line 1316
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->access$300(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1317
    :try_start_7
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermission(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;I)V

    .line 1319
    monitor-exit v0

    .line 1320
    return-void

    .line 1319
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public grantUriPermissionFromIntent(ILjava/lang/String;Landroid/content/Intent;I)V
    .registers 12
    .param p1, "callingUid"  # I
    .param p2, "targetPkg"  # Ljava/lang/String;
    .param p3, "intent"  # Landroid/content/Intent;
    .param p4, "targetUserId"  # I

    .line 1369
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->access$300(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1370
    :try_start_7
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    const/4 v5, 0x0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionFromIntent(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/uri/UriPermissionOwner;I)V

    .line 1372
    monitor-exit v0

    .line 1373
    return-void

    .line 1372
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public grantUriPermissionFromIntent(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/uri/UriPermissionOwner;I)V
    .registers 13
    .param p1, "callingUid"  # I
    .param p2, "targetPkg"  # Ljava/lang/String;
    .param p3, "intent"  # Landroid/content/Intent;
    .param p4, "owner"  # Lcom/android/server/uri/UriPermissionOwner;
    .param p5, "targetUserId"  # I

    .line 1378
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->access$300(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1379
    :try_start_7
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionFromIntent(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/uri/UriPermissionOwner;I)V

    .line 1381
    monitor-exit v0

    .line 1382
    return-void

    .line 1381
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V
    .registers 5
    .param p1, "needed"  # Lcom/android/server/uri/NeededUriGrants;
    .param p2, "owner"  # Lcom/android/server/uri/UriPermissionOwner;

    .line 1387
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->access$300(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1388
    :try_start_7
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    .line 1389
    monitor-exit v0

    .line 1390
    return-void

    .line 1389
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 5
    .param p1, "name"  # Ljava/lang/String;

    .line 1408
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    const-string/jumbo v1, "newUriPermissionOwner"

    invoke-static {v0, v1}, Lcom/android/server/uri/UriGrantsManagerService;->access$500(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;)V

    .line 1409
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->access$300(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1410
    :try_start_f
    new-instance v1, Lcom/android/server/uri/UriPermissionOwner;

    invoke-direct {v1, p0, p1}, Lcom/android/server/uri/UriPermissionOwner;-><init>(Lcom/android/server/uri/UriGrantsManagerInternal;Ljava/lang/Object;)V

    .line 1411
    .local v1, "owner":Lcom/android/server/uri/UriPermissionOwner;
    invoke-virtual {v1}, Lcom/android/server/uri/UriPermissionOwner;->getExternalToken()Landroid/os/Binder;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1412
    .end local v1  # "owner":Lcom/android/server/uri/UriPermissionOwner;
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public onActivityManagerInternalAdded()V
    .registers 3

    .line 1401
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->access$300(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1402
    :try_start_7
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-virtual {v1}, Lcom/android/server/uri/UriGrantsManagerService;->onActivityManagerInternalAdded()V

    .line 1403
    monitor-exit v0

    .line 1404
    return-void

    .line 1403
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public onSystemReady()V
    .registers 3

    .line 1394
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->access$300(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1395
    :try_start_7
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-virtual {v1}, Lcom/android/server/uri/UriGrantsManagerService;->readGrantedUriPermissions()V

    .line 1396
    monitor-exit v0

    .line 1397
    return-void

    .line 1396
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public removeUriPermissionIfNeeded(Lcom/android/server/uri/UriPermission;)V
    .registers 4
    .param p1, "perm"  # Lcom/android/server/uri/UriPermission;

    .line 1308
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->access$300(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1309
    :try_start_7
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v1, p1}, Lcom/android/server/uri/UriGrantsManagerService;->access$400(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/UriPermission;)V

    .line 1310
    monitor-exit v0

    .line 1311
    return-void

    .line 1310
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public removeUriPermissionsForPackage(Ljava/lang/String;IZZ)V
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userHandle"  # I
    .param p3, "persistable"  # Z
    .param p4, "targetOnly"  # Z

    .line 1418
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->access$300(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1419
    :try_start_7
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionsForPackage(Ljava/lang/String;IZZ)V

    .line 1421
    monitor-exit v0

    .line 1422
    return-void

    .line 1421
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public revokeUriPermission(Ljava/lang/String;ILcom/android/server/uri/GrantUri;I)V
    .registers 7
    .param p1, "targetPackage"  # Ljava/lang/String;
    .param p2, "callingUid"  # I
    .param p3, "grantUri"  # Lcom/android/server/uri/GrantUri;
    .param p4, "modeFlags"  # I

    .line 1325
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->access$300(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1326
    :try_start_7
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->revokeUriPermission(Ljava/lang/String;ILcom/android/server/uri/GrantUri;I)V

    .line 1328
    monitor-exit v0

    .line 1329
    return-void

    .line 1328
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    .registers 10
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "uri"  # Landroid/net/Uri;
    .param p3, "mode"  # I
    .param p4, "userId"  # I

    .line 1426
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->access$300(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1427
    :try_start_7
    invoke-static {p1}, Lcom/android/server/uri/UriPermissionOwner;->fromExternalToken(Landroid/os/IBinder;)Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v1

    .line 1428
    .local v1, "owner":Lcom/android/server/uri/UriPermissionOwner;
    if-eqz v1, :cond_24

    .line 1432
    if-nez p2, :cond_13

    .line 1433
    invoke-virtual {v1, p3}, Lcom/android/server/uri/UriPermissionOwner;->removeUriPermissions(I)V

    goto :goto_22

    .line 1435
    :cond_13
    and-int/lit16 v2, p3, 0x80

    if-eqz v2, :cond_19

    const/4 v2, 0x1

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    .line 1436
    .local v2, "prefix":Z
    :goto_1a
    new-instance v3, Lcom/android/server/uri/GrantUri;

    invoke-direct {v3, p4, p2, v2}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;Z)V

    invoke-virtual {v1, v3, p3}, Lcom/android/server/uri/UriPermissionOwner;->removeUriPermission(Lcom/android/server/uri/GrantUri;I)V

    .line 1438
    .end local v1  # "owner":Lcom/android/server/uri/UriPermissionOwner;
    .end local v2  # "prefix":Z
    :goto_22
    monitor-exit v0

    .line 1439
    return-void

    .line 1429
    .restart local v1  # "owner":Lcom/android/server/uri/UriPermissionOwner;
    :cond_24
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown owner: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/uri/UriGrantsManagerService$LocalService;
    .end local p1  # "token":Landroid/os/IBinder;
    .end local p2  # "uri":Landroid/net/Uri;
    .end local p3  # "mode":I
    .end local p4  # "userId":I
    throw v2

    .line 1438
    .end local v1  # "owner":Lcom/android/server/uri/UriPermissionOwner;
    .restart local p0  # "this":Lcom/android/server/uri/UriGrantsManagerService$LocalService;
    .restart local p1  # "token":Landroid/os/IBinder;
    .restart local p2  # "uri":Landroid/net/Uri;
    .restart local p3  # "mode":I
    .restart local p4  # "userId":I
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_7 .. :try_end_3d} :catchall_3b

    throw v1
.end method
