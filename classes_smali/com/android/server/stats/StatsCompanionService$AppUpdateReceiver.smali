.class final Lcom/android/server/stats/StatsCompanionService$AppUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StatsCompanionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/stats/StatsCompanionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AppUpdateReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 541
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/stats/StatsCompanionService$1;)V
    .registers 2

    .line 541
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService$AppUpdateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    .line 549
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    .line 550
    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 551
    return-void

    .line 554
    :cond_16
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 555
    :try_start_1b
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$200()Landroid/os/IStatsManager;

    move-result-object v2

    if-nez v2, :cond_2a

    .line 556
    const-string p1, "StatsCompanionService"

    const-string p2, "Could not access statsd to inform it of an app update"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_9c

    return-void

    .line 560
    :cond_2a
    :try_start_2a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 561
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 562
    const-string v3, "android.intent.extra.UID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 563
    const-string v3, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 564
    if-nez v1, :cond_5a

    .line 567
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 568
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 569
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$200()Landroid/os/IStatsManager;

    move-result-object p2

    invoke-interface {p2, p1, v2}, Landroid/os/IStatsManager;->informOnePackageRemoved(Ljava/lang/String;I)V

    .line 571
    :cond_5a
    goto :goto_91

    .line 572
    :cond_5b
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 573
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 574
    const-string v2, "android.intent.extra.UID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 575
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 576
    const/high16 p2, 0x400000

    invoke-virtual {p1, v4, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_77} :catch_92
    .catchall {:try_start_2a .. :try_end_77} :catchall_9c

    .line 579
    :try_start_77
    invoke-virtual {p1, v4}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_7b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_77 .. :try_end_7b} :catch_7c
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7b} :catch_92
    .catchall {:try_start_77 .. :try_end_7b} :catchall_9c

    .line 582
    goto :goto_7f

    .line 580
    :catch_7c
    move-exception p1

    .line 581
    :try_start_7d
    const-string p1, ""

    .line 583
    :goto_7f
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$200()Landroid/os/IStatsManager;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v6

    iget-object v8, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 584
    if-nez p1, :cond_8d

    const-string p1, ""

    :cond_8d
    move-object v9, p1

    .line 583
    invoke-interface/range {v3 .. v9}, Landroid/os/IStatsManager;->informOnePackage(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_91} :catch_92
    .catchall {:try_start_7d .. :try_end_91} :catchall_9c

    .line 588
    :goto_91
    goto :goto_9a

    .line 586
    :catch_92
    move-exception p1

    .line 587
    :try_start_93
    const-string p2, "StatsCompanionService"

    const-string v1, "Failed to inform statsd of an app update"

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 589
    :goto_9a
    monitor-exit v0

    .line 590
    return-void

    .line 589
    :catchall_9c
    move-exception p1

    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_93 .. :try_end_9e} :catchall_9c

    throw p1
.end method
