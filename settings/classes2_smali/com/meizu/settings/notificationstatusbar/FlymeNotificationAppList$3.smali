.class Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$3;
.super Ljava/lang/Object;
.source "FlymeNotificationAppList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;


# direct methods
.method constructor <init>(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)V
    .registers 2

    .line 567
    iput-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$3;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 570
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$3;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-static {v0}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$100(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 571
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 573
    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$3;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-static {v1}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$100(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 575
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 576
    iget-object v2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$3;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-static {v2}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$000(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v2

    .line 578
    iget-object v3, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$3;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    .line 579
    invoke-static {v3}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$700(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/content/pm/LauncherApps;

    move-result-object v3

    .line 580
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    const/4 v5, 0x0

    .line 579
    invoke-virtual {v3, v5, v4}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    .line 582
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_39
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LauncherActivityInfo;

    .line 584
    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    iget-object v6, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$3;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    const/4 v7, 0x1

    invoke-static {v6, v4, v7, v2}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$800(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;Landroid/content/pm/ApplicationInfo;ZZ)V

    goto :goto_39

    .line 588
    :cond_59
    iget-object v3, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$3;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    .line 589
    invoke-static {v3}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$900(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {v3}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v3

    .line 591
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_67
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_85

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 594
    iget-object v7, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$3;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 595
    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 594
    invoke-static {v7, v8, v6, v2}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$800(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;Landroid/content/pm/ApplicationInfo;ZZ)V
    :try_end_84
    .catchall {:try_start_7 .. :try_end_84} :catchall_158

    goto :goto_67

    .line 599
    :cond_85
    :try_start_85
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const v6, 0x8200

    .line 604
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    .line 601
    invoke-interface {v4, v6, v7}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 605
    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    .line 606
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9c
    :goto_9c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 607
    iget-object v7, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$3;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-static {v7}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$000(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/meizu/settings/utils/MzUtils;->isSystemPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    .line 608
    iget-object v8, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$3;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-static {v8}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$000(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v9, v7}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->isAppNotificationCanManage(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_ce

    .line 610
    iget-object v7, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$3;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    iget-object v8, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v7, v6, v8, v2}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$800(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;Landroid/content/pm/ApplicationInfo;ZZ)V

    goto :goto_9c

    :cond_ce
    if-nez v7, :cond_9c

    .line 611
    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9c

    .line 612
    iget-object v7, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$3;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    const/4 v8, 0x0

    invoke-static {v7, v6, v8, v2}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$800(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;Landroid/content/pm/ApplicationInfo;ZZ)V
    :try_end_de
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_de} :catch_df
    .catchall {:try_start_85 .. :try_end_de} :catchall_158

    goto :goto_9c

    :catch_df
    move-exception v1

    .line 616
    :try_start_e0
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 620
    :cond_e3
    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$3;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-static {v1}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$900(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$3;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-static {v2}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$100(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V

    .line 622
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 625
    iget-object v2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$3;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-static {v2}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$100(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 626
    invoke-static {}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$1000()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 628
    iget-object v2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$3;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-static {v2}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$1100(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 630
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_118
    :goto_118
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_143

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;

    .line 631
    iget-object v4, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$3;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    iget-object v6, v3, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    invoke-static {v4, v6}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$1200(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Row;->section:Ljava/lang/String;

    .line 632
    iget-object v4, v3, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Row;->section:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_118

    .line 633
    iget-object v3, v3, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Row;->section:Ljava/lang/String;

    .line 634
    iget-object v4, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$3;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-static {v4}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$1100(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, v3

    goto :goto_118

    .line 637
    :cond_143
    iget-object v2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$3;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-static {v2}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$1300(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$RefeshAppsListRunnable;

    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$3;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-direct {v3, p0, v1}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$RefeshAppsListRunnable;-><init>(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 638
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 640
    monitor-exit v0

    return-void

    :catchall_158
    move-exception p0

    monitor-exit v0
    :try_end_15a
    .catchall {:try_start_e0 .. :try_end_15a} :catchall_158

    throw p0
.end method
