.class Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .registers 2

    .line 1489
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method doPackagesChangedLocked(ZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .registers 10

    .line 1587
    nop

    .line 1588
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    const-string v1, "WallpaperManagerService"

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v0, :cond_3c

    .line 1589
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1590
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1589
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v0

    .line 1591
    if-eq v0, v3, :cond_1a

    if-ne v0, v2, :cond_3c

    .line 1593
    :cond_1a
    nop

    .line 1594
    if-eqz p1, :cond_3a

    .line 1595
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Wallpaper uninstalled, removing: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p1, v5, v4, v0, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    .line 1601
    :cond_3a
    move p1, v4

    goto :goto_3d

    :cond_3c
    move p1, v5

    :goto_3d
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_51

    .line 1602
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 1603
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1602
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v0

    .line 1604
    if-eq v0, v3, :cond_4f

    if-ne v0, v2, :cond_51

    .line 1606
    :cond_4f
    iput-object v6, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 1609
    :cond_51
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    const/high16 v2, 0xc0000

    if-eqz v0, :cond_91

    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1610
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 1612
    :try_start_63
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2400(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_72
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_63 .. :try_end_72} :catch_73

    .line 1619
    goto :goto_91

    .line 1615
    :catch_73
    move-exception v0

    .line 1616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wallpaper component gone, removing: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v0, v5, v4, v1, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    .line 1621
    :cond_91
    :goto_91
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_b4

    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 1622
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 1624
    :try_start_a1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2400(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_b0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a1 .. :try_end_b0} :catch_b1

    .line 1629
    goto :goto_b4

    .line 1627
    :catch_b1
    move-exception v0

    .line 1628
    iput-object v6, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 1631
    :cond_b4
    :goto_b4
    return p1
.end method

.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .registers 6

    .line 1559
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$100(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1560
    nop

    .line 1561
    :try_start_8
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2500(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result p2

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->getChangingUserId()I

    move-result p3

    const/4 v0, 0x0

    if-eq p2, p3, :cond_17

    .line 1562
    monitor-exit p1

    return v0

    .line 1564
    :cond_17
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$300(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2500(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1565
    if-eqz p2, :cond_30

    .line 1566
    invoke-virtual {p0, p4, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->doPackagesChangedLocked(ZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result p2

    .line 1567
    or-int/2addr v0, p2

    .line 1569
    :cond_30
    monitor-exit p1

    return v0

    .line 1570
    :catchall_32
    move-exception p2

    monitor-exit p1
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_32

    throw p2
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 5

    .line 1518
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$100(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1519
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2500(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->getChangingUserId()I

    move-result v2

    if-eq v1, v2, :cond_15

    .line 1520
    monitor-exit v0

    return-void

    .line 1522
    :cond_15
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$300(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2500(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1523
    if-eqz v1, :cond_41

    .line 1524
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_3f

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1525
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    goto :goto_3f

    .line 1528
    :cond_3a
    const/4 p1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->doPackagesChangedLocked(ZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    goto :goto_41

    .line 1526
    :cond_3f
    :goto_3f
    monitor-exit v0

    return-void

    .line 1530
    :cond_41
    :goto_41
    monitor-exit v0

    .line 1531
    return-void

    .line 1530
    :catchall_43
    move-exception p1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_7 .. :try_end_45} :catchall_43

    throw p1
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .registers 11

    .line 1492
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$100(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 1493
    :try_start_7
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2500(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->getChangingUserId()I

    move-result v1

    if-eq v0, v1, :cond_15

    .line 1494
    monitor-exit p2

    return-void

    .line 1496
    :cond_15
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$300(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2500(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1497
    if-eqz v0, :cond_8b

    .line 1498
    iget-object v7, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1499
    if-eqz v7, :cond_8b

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8b

    .line 1501
    const-string p1, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wallpaper "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " update has finished"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    .line 1504
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$3000(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1505
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, v7

    move-object v5, v0

    invoke-static/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1000(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v1

    if-nez v1, :cond_8b

    .line 1507
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wallpaper "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " no longer available; reverting to default"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 v2, 0x1

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    .line 1513
    :cond_8b
    monitor-exit p2

    .line 1514
    return-void

    .line 1513
    :catchall_8d
    move-exception p1

    monitor-exit p2
    :try_end_8f
    .catchall {:try_start_7 .. :try_end_8f} :catchall_8d

    throw p1
.end method

.method public onPackageUpdateStarted(Ljava/lang/String;I)V
    .registers 6

    .line 1535
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$100(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 1536
    :try_start_7
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2500(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->getChangingUserId()I

    move-result v1

    if-eq v0, v1, :cond_15

    .line 1537
    monitor-exit p2

    return-void

    .line 1539
    :cond_15
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$300(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2500(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1540
    if-eqz v0, :cond_6a

    .line 1541
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_6a

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1542
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6a

    .line 1544
    const-string p1, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wallpaper service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is updating"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    .line 1548
    iget-object p1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz p1, :cond_6a

    .line 1549
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 1550
    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->access$3100(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Ljava/lang/Runnable;

    move-result-object v0

    .line 1549
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1554
    :cond_6a
    monitor-exit p2

    .line 1555
    return-void

    .line 1554
    :catchall_6c
    move-exception p1

    monitor-exit p2
    :try_end_6e
    .catchall {:try_start_7 .. :try_end_6e} :catchall_6c

    throw p1
.end method

.method public onSomePackagesChanged()V
    .registers 4

    .line 1575
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$100(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1576
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2500(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->getChangingUserId()I

    move-result v2

    if-eq v1, v2, :cond_15

    .line 1577
    monitor-exit v0

    return-void

    .line 1579
    :cond_15
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$300(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2500(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1580
    if-eqz v1, :cond_2d

    .line 1581
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->doPackagesChangedLocked(ZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    .line 1583
    :cond_2d
    monitor-exit v0

    .line 1584
    return-void

    .line 1583
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_2f

    throw v1
.end method
