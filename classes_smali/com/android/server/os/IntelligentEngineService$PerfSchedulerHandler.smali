.class Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;
.super Landroid/os/Handler;
.source "IntelligentEngineService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/IntelligentEngineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerfSchedulerHandler"
.end annotation


# instance fields
.field private resume_pkg:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/os/IntelligentEngineService;


# direct methods
.method constructor <init>(Lcom/android/server/os/IntelligentEngineService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"  # Landroid/os/Looper;

    .line 432
    iput-object p1, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    .line 433
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 611
    const-string p1, ""

    iput-object p1, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->resume_pkg:Ljava/lang/String;

    .line 434
    return-void
.end method

.method private addScenario(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "boostName"  # Ljava/lang/String;
    .param p2, "timeout"  # Ljava/lang/String;

    .line 811
    invoke-static {p1}, Lcom/android/server/os/ConfigFileUtils;->getBoostValueFromProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 812
    .local v0, "boostValue":Ljava/lang/String;
    if-eqz v0, :cond_34

    .line 813
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service_addScenario : boostName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", timeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 815
    new-instance v1, Lcom/android/server/os/BoostInfo;

    invoke-direct {v1, p1, v0}, Lcom/android/server/os/BoostInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    .local v1, "boostInfo":Lcom/android/server/os/BoostInfo;
    invoke-virtual {v1, p2}, Lcom/android/server/os/BoostInfo;->updateTimeout(Ljava/lang/String;)V

    .line 817
    iget-object v2, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-static {v2}, Lcom/android/server/os/IntelligentEngineService;->access$1100(Lcom/android/server/os/IntelligentEngineService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    .end local v1  # "boostInfo":Lcom/android/server/os/BoostInfo;
    goto :goto_39

    .line 819
    :cond_34
    const-string v1, "boostValue == null"

    invoke-static {v1}, Landroid/perf/LogUtils;->logBoostWarn(Ljava/lang/String;)V

    .line 821
    :goto_39
    return-void
.end method

.method private applyAppBoost(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "config"  # Landroid/os/Bundle;

    .line 473
    const-string v0, "Service_applyAppBoost "

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 474
    if-nez p1, :cond_8

    .line 475
    return-void

    .line 477
    :cond_8
    const-string v0, "boost_info_configration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, "configBoostName":Ljava/lang/String;
    const-string v1, "boost_info_timeout"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 479
    .local v1, "configTimeout":Ljava/lang/String;
    const-string v2, "boost_info_package_Name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 480
    .local v2, "configPackageName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service_applyAppBoost : configBoostName ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " configPackageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " configTimeout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 484
    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->findBoostInfoByPackageName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/os/BoostInfo;

    move-result-object v3

    .line 485
    .local v3, "boostInfo":Lcom/android/server/os/BoostInfo;
    if-eqz v3, :cond_55

    .line 486
    invoke-virtual {v3}, Lcom/android/server/os/BoostInfo;->getFinalBoostConfig()[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    .line 487
    invoke-virtual {v3}, Lcom/android/server/os/BoostInfo;->getBoostName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/os/IntelligentEngineService;->access$100(Lcom/android/server/os/IntelligentEngineService;Ljava/lang/String;)J

    move-result-wide v5

    .line 486
    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->writeBytesToNode([Ljava/lang/String;J)V

    .line 489
    :cond_55
    return-void
.end method

.method private applyGameBoost(Landroid/os/Bundle;)V
    .registers 14
    .param p1, "config"  # Landroid/os/Bundle;

    .line 618
    if-nez p1, :cond_3

    .line 619
    return-void

    .line 621
    :cond_3
    const-string v0, "boost_info_configration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 622
    .local v0, "configBoostName":Ljava/lang/String;
    const-string v1, "boost_info_timeout"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 623
    .local v1, "configTimeout":Ljava/lang/String;
    const-string v2, "boost_info_package_Name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 625
    .local v2, "configPackageName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service_applyGameBoost : configBoostName ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " configTimeout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " configPackageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mIsGameBoosting ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    .line 629
    invoke-static {v4}, Lcom/android/server/os/IntelligentEngineService;->access$700(Lcom/android/server/os/IntelligentEngineService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mGameBoostingPackageName ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    .line 630
    invoke-static {v4}, Lcom/android/server/os/IntelligentEngineService;->access$800(Lcom/android/server/os/IntelligentEngineService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mIsGameMode ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    .line 631
    invoke-static {v4}, Lcom/android/server/os/IntelligentEngineService;->access$900(Lcom/android/server/os/IntelligentEngineService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 625
    invoke-static {v3}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 632
    const-string v3, "AppResume"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 633
    iput-object v2, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->resume_pkg:Ljava/lang/String;

    .line 635
    :cond_6d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "now "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->resume_pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is resuming!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 637
    const-string v4, "GameNormal"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    const-string v6, "0"

    if-eqz v4, :cond_b3

    .line 638
    iget-object v4, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v5

    invoke-static {v4, v7}, Lcom/android/server/os/IntelligentEngineService;->access$902(Lcom/android/server/os/IntelligentEngineService;Z)Z

    .line 639
    iget-object v4, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-static {v4}, Lcom/android/server/os/IntelligentEngineService;->access$900(Lcom/android/server/os/IntelligentEngineService;)Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 640
    const-string/jumbo v4, "srs 1"

    invoke-virtual {p0, v4}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->writeGedNode(Ljava/lang/String;)V

    goto :goto_b3

    .line 642
    :cond_ad
    const-string/jumbo v4, "srs 0"

    invoke-virtual {p0, v4}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->writeGedNode(Ljava/lang/String;)V

    .line 645
    :cond_b3
    :goto_b3
    iget-object v4, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-static {v4}, Lcom/android/server/os/IntelligentEngineService;->access$900(Lcom/android/server/os/IntelligentEngineService;)Z

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez v4, :cond_f1

    .line 647
    iget-object v4, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-static {v4}, Lcom/android/server/os/IntelligentEngineService;->access$700(Lcom/android/server/os/IntelligentEngineService;)Z

    move-result v4

    if-eqz v4, :cond_f1

    .line 648
    iget-object v4, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-static {v4}, Lcom/android/server/os/IntelligentEngineService;->access$800(Lcom/android/server/os/IntelligentEngineService;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v4, v9}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->findBoostInfoByPackageName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/os/BoostInfo;

    move-result-object v4

    .line 649
    .local v4, "gameBoostInfo":Lcom/android/server/os/BoostInfo;
    invoke-virtual {v4, v6}, Lcom/android/server/os/BoostInfo;->updateTimeout(Ljava/lang/String;)V

    .line 650
    invoke-virtual {v4}, Lcom/android/server/os/BoostInfo;->getFinalBoostConfig()[Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-virtual {v4}, Lcom/android/server/os/BoostInfo;->getBoostName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/os/IntelligentEngineService;->access$100(Lcom/android/server/os/IntelligentEngineService;Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->writeBytesToNode([Ljava/lang/String;J)V

    .line 652
    iget-object v9, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-static {v9, v7}, Lcom/android/server/os/IntelligentEngineService;->access$702(Lcom/android/server/os/IntelligentEngineService;Z)Z

    .line 653
    iget-object v9, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-static {v9, v8}, Lcom/android/server/os/IntelligentEngineService;->access$802(Lcom/android/server/os/IntelligentEngineService;Ljava/lang/String;)Ljava/lang/String;

    .line 658
    .end local v4  # "gameBoostInfo":Lcom/android/server/os/BoostInfo;
    :cond_f1
    invoke-static {v2}, Lcom/android/server/os/BoostInfo;->isBenchMarkApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18b

    .line 659
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enter Benchmark , packageName = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " mPrePowerMode = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/os/IntelligentEngineService;->access$1000()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 660
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "cpu_l"

    if-eqz v3, :cond_141

    .line 662
    iget-object v3, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-static {v3}, Lcom/android/server/os/IntelligentEngineService;->access$600(Lcom/android/server/os/IntelligentEngineService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 664
    .local v3, "tmpPrePowerMode":I
    const/4 v5, 0x3

    if-eq v3, v5, :cond_133

    .line 665
    invoke-static {v3}, Lcom/android/server/os/IntelligentEngineService;->access$1002(I)I

    .line 670
    :cond_133
    iget-object v6, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-static {v6}, Lcom/android/server/os/IntelligentEngineService;->access$600(Lcom/android/server/os/IntelligentEngineService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .end local v3  # "tmpPrePowerMode":I
    goto :goto_189

    .line 672
    :cond_141
    const-string v3, "AppPause"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_189

    .line 673
    iget-object v3, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->resume_pkg:Ljava/lang/String;

    if-eqz v3, :cond_177

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_177

    iget-object v3, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->resume_pkg:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/os/BoostInfo;->isBenchMarkApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_177

    .line 674
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Something wrong with the order of activity functions!while "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->resume_pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is resuming,we need not turn off PowermodeBenchmark..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 675
    return-void

    .line 678
    :cond_177
    iget-object v3, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-static {v3}, Lcom/android/server/os/IntelligentEngineService;->access$600(Lcom/android/server/os/IntelligentEngineService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 679
    invoke-static {}, Lcom/android/server/os/IntelligentEngineService;->access$1000()I

    move-result v5

    .line 678
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_18a

    .line 672
    :cond_189
    :goto_189
    nop

    .line 683
    :goto_18a
    return-void

    .line 687
    :cond_18b
    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->findBoostInfoByPackageName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/os/BoostInfo;

    move-result-object v3

    .line 688
    .local v3, "boostInfo":Lcom/android/server/os/BoostInfo;
    if-eqz v3, :cond_1f9

    .line 690
    invoke-virtual {v3}, Lcom/android/server/os/BoostInfo;->getDefaultTimeout()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a8

    .line 691
    invoke-virtual {v3}, Lcom/android/server/os/BoostInfo;->getDefaultTimeout()Ljava/lang/String;

    move-result-object v4

    const-string v9, "-1"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a8

    .line 692
    return-void

    .line 695
    :cond_1a8
    if-eqz v1, :cond_1de

    .line 696
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1cc

    .line 697
    invoke-virtual {v3}, Lcom/android/server/os/BoostInfo;->getFinalBoostConfig()[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    .line 698
    invoke-virtual {v3}, Lcom/android/server/os/BoostInfo;->getBoostName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/os/IntelligentEngineService;->access$100(Lcom/android/server/os/IntelligentEngineService;Ljava/lang/String;)J

    move-result-wide v5

    .line 697
    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->writeBytesToNode([Ljava/lang/String;J)V

    .line 699
    iget-object v4, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-static {v4, v7}, Lcom/android/server/os/IntelligentEngineService;->access$702(Lcom/android/server/os/IntelligentEngineService;Z)Z

    .line 700
    iget-object v4, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-static {v4, v8}, Lcom/android/server/os/IntelligentEngineService;->access$802(Lcom/android/server/os/IntelligentEngineService;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1f9

    .line 702
    :cond_1cc
    invoke-virtual {v3}, Lcom/android/server/os/BoostInfo;->getFinalBoostConfig()[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    .line 703
    invoke-virtual {v3}, Lcom/android/server/os/BoostInfo;->getBoostName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/os/IntelligentEngineService;->access$100(Lcom/android/server/os/IntelligentEngineService;Ljava/lang/String;)J

    move-result-wide v5

    .line 702
    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->writeBytesToNode([Ljava/lang/String;J)V

    goto :goto_1f9

    .line 706
    :cond_1de
    invoke-virtual {v3}, Lcom/android/server/os/BoostInfo;->getFinalBoostConfig()[Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    .line 707
    invoke-virtual {v3}, Lcom/android/server/os/BoostInfo;->getBoostName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/os/IntelligentEngineService;->access$100(Lcom/android/server/os/IntelligentEngineService;Ljava/lang/String;)J

    move-result-wide v6

    .line 706
    invoke-virtual {p0, v4, v6, v7}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->writeBytesToNode([Ljava/lang/String;J)V

    .line 708
    iget-object v4, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-static {v4, v5}, Lcom/android/server/os/IntelligentEngineService;->access$702(Lcom/android/server/os/IntelligentEngineService;Z)Z

    .line 709
    iget-object v4, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-static {v4, v2}, Lcom/android/server/os/IntelligentEngineService;->access$802(Lcom/android/server/os/IntelligentEngineService;Ljava/lang/String;)Ljava/lang/String;

    .line 713
    :cond_1f9
    :goto_1f9
    return-void
.end method

.method private applySceneBoost(Landroid/os/Bundle;)V
    .registers 15
    .param p1, "config"  # Landroid/os/Bundle;

    .line 497
    const-string v0, "Service_applySceneBoost "

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 498
    if-nez p1, :cond_8

    .line 499
    return-void

    .line 501
    :cond_8
    const-string v0, "boost_info_configration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, "configName":Ljava/lang/String;
    const-string v1, "boost_info_timeout"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 503
    .local v1, "configTimeout":Ljava/lang/String;
    const-string v2, "boost_info_package_Name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 505
    .local v2, "configPackageName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service_applySceneBoost : configName ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " configPackageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " configTimeout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 509
    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->findBoostInfoByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/os/BoostInfo;

    move-result-object v3

    .line 510
    .local v3, "boostInfo":Lcom/android/server/os/BoostInfo;
    if-eqz v3, :cond_17a

    .line 511
    const-string v4, "TouchBoost"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-wide/16 v5, 0x64

    const-wide/16 v7, 0x0

    if-eqz v4, :cond_73

    .line 512
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v4, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-static {v4}, Lcom/android/server/os/IntelligentEngineService;->access$200(Lcom/android/server/os/IntelligentEngineService;)J

    move-result-wide v11

    sub-long/2addr v9, v11

    cmp-long v4, v9, v5

    if-gez v4, :cond_6a

    iget-object v4, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    .line 513
    invoke-static {v4}, Lcom/android/server/os/IntelligentEngineService;->access$200(Lcom/android/server/os/IntelligentEngineService;)J

    move-result-wide v9

    cmp-long v4, v9, v7

    if-eqz v4, :cond_6a

    .line 514
    return-void

    .line 516
    :cond_6a
    iget-object v4, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v4, v9, v10}, Lcom/android/server/os/IntelligentEngineService;->access$202(Lcom/android/server/os/IntelligentEngineService;J)J

    .line 520
    :cond_73
    const-string v4, "ListObtainBoost"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 521
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v4, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-static {v4}, Lcom/android/server/os/IntelligentEngineService;->access$300(Lcom/android/server/os/IntelligentEngineService;)J

    move-result-wide v11

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x3e8

    cmp-long v4, v9, v11

    if-gez v4, :cond_97

    iget-object v4, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    .line 522
    invoke-static {v4}, Lcom/android/server/os/IntelligentEngineService;->access$300(Lcom/android/server/os/IntelligentEngineService;)J

    move-result-wide v9

    cmp-long v4, v9, v7

    if-eqz v4, :cond_97

    .line 523
    return-void

    .line 525
    :cond_97
    iget-object v4, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v4, v9, v10}, Lcom/android/server/os/IntelligentEngineService;->access$302(Lcom/android/server/os/IntelligentEngineService;J)J

    .line 529
    :cond_a0
    const-string v4, "TouchDownBoost"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cb

    .line 530
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v4, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-static {v4}, Lcom/android/server/os/IntelligentEngineService;->access$400(Lcom/android/server/os/IntelligentEngineService;)J

    move-result-wide v11

    sub-long/2addr v9, v11

    cmp-long v4, v9, v5

    if-gez v4, :cond_c2

    iget-object v4, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    .line 531
    invoke-static {v4}, Lcom/android/server/os/IntelligentEngineService;->access$400(Lcom/android/server/os/IntelligentEngineService;)J

    move-result-wide v4

    cmp-long v4, v4, v7

    if-eqz v4, :cond_c2

    .line 532
    return-void

    .line 534
    :cond_c2
    iget-object v4, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/server/os/IntelligentEngineService;->access$402(Lcom/android/server/os/IntelligentEngineService;J)J

    .line 538
    :cond_cb
    sget-boolean v4, Landroid/perf/LogUtils;->MIGRATE_BIGCORE:Z

    if-eqz v4, :cond_f7

    const-string v4, "FlingBoost"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f7

    .line 540
    invoke-virtual {v3}, Lcom/android/server/os/BoostInfo;->getTimeout()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e6

    .line 541
    invoke-virtual {v3}, Lcom/android/server/os/BoostInfo;->getTimeout()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .local v4, "flingBoostTimeOut":Ljava/lang/Long;
    goto :goto_ee

    .line 543
    .end local v4  # "flingBoostTimeOut":Ljava/lang/Long;
    :cond_e6
    invoke-virtual {v3}, Lcom/android/server/os/BoostInfo;->getDefaultTimeout()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 545
    .restart local v4  # "flingBoostTimeOut":Ljava/lang/Long;
    :goto_ee
    iget-object v5, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v0, v6, v7}, Lcom/android/server/os/IntelligentEngineService;->migrateToBigCore(Ljava/lang/String;J)V

    .line 549
    .end local v4  # "flingBoostTimeOut":Ljava/lang/Long;
    :cond_f7
    const-string v4, "PowerModeNormal"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "PowerModeBench"

    const-string v7, "PowerModeHigh"

    const-string v8, "PowerModeLow"

    if-nez v5, :cond_117

    .line 550
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_117

    .line 551
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_117

    .line 552
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_169

    .line 553
    :cond_117
    const/4 v5, 0x0

    .line 554
    .local v5, "oldPowerModeInfo":Lcom/android/server/os/BoostInfo;
    invoke-static {}, Lcom/android/server/os/IntelligentEngineService;->access$500()I

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_138

    const/4 v7, 0x1

    if-eq v9, v7, :cond_133

    const/4 v4, 0x2

    if-eq v9, v4, :cond_12e

    const/4 v4, 0x3

    if-eq v9, v4, :cond_129

    goto :goto_13d

    .line 565
    :cond_129
    invoke-direct {p0, v6, v10, v1}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->findBoostInfoByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/os/BoostInfo;

    move-result-object v5

    .line 566
    goto :goto_13d

    .line 562
    :cond_12e
    invoke-direct {p0, v8, v10, v1}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->findBoostInfoByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/os/BoostInfo;

    move-result-object v5

    .line 563
    goto :goto_13d

    .line 559
    :cond_133
    invoke-direct {p0, v4, v10, v1}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->findBoostInfoByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/os/BoostInfo;

    move-result-object v5

    .line 560
    goto :goto_13d

    .line 556
    :cond_138
    invoke-direct {p0, v7, v10, v1}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->findBoostInfoByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/os/BoostInfo;

    move-result-object v5

    .line 557
    nop

    .line 571
    :goto_13d
    if-eqz v5, :cond_155

    .line 572
    const-string v4, "0"

    invoke-virtual {v5, v4}, Lcom/android/server/os/BoostInfo;->updateTimeout(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v5}, Lcom/android/server/os/BoostInfo;->getFinalBoostConfig()[Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    .line 574
    invoke-virtual {v5}, Lcom/android/server/os/BoostInfo;->getBoostName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/os/IntelligentEngineService;->access$100(Lcom/android/server/os/IntelligentEngineService;Ljava/lang/String;)J

    move-result-wide v6

    .line 573
    invoke-virtual {p0, v4, v6, v7}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->writeBytesToNode([Ljava/lang/String;J)V

    .line 577
    :cond_155
    invoke-static {}, Lcom/android/server/os/IntelligentEngineService;->access$500()I

    move-result v4

    invoke-direct {p0, v0}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->getPowerMode(Ljava/lang/String;)I

    move-result v6

    if-ne v4, v6, :cond_162

    .line 578
    invoke-virtual {v3, v1}, Lcom/android/server/os/BoostInfo;->updateTimeout(Ljava/lang/String;)V

    .line 580
    :cond_162
    invoke-direct {p0, v0}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->getPowerMode(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/android/server/os/IntelligentEngineService;->access$502(I)I

    .line 583
    .end local v5  # "oldPowerModeInfo":Lcom/android/server/os/BoostInfo;
    :cond_169
    invoke-virtual {v3}, Lcom/android/server/os/BoostInfo;->getFinalBoostConfig()[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-virtual {v3}, Lcom/android/server/os/BoostInfo;->getBoostName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/os/IntelligentEngineService;->access$100(Lcom/android/server/os/IntelligentEngineService;Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->writeBytesToNode([Ljava/lang/String;J)V

    .line 585
    :cond_17a
    return-void
.end method

.method private findBoostInfoByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/os/BoostInfo;
    .registers 6
    .param p1, "boostName"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "timeout"  # Ljava/lang/String;

    .line 727
    move-object v0, p1

    .line 729
    .local v0, "valueBoostName":Ljava/lang/String;
    if-nez p1, :cond_a

    invoke-static {p2}, Lcom/android/server/os/ConfigFileUtils;->isAppNeedBoost(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 730
    move-object v0, p2

    .line 732
    :cond_a
    iget-object v1, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-static {v1}, Lcom/android/server/os/IntelligentEngineService;->access$1100(Lcom/android/server/os/IntelligentEngineService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 733
    invoke-direct {p0, v0, p3}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->addScenario(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 735
    :cond_1a
    invoke-direct {p0, v0, p3}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->updateScenario(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    :goto_1d
    iget-object v1, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-static {v1}, Lcom/android/server/os/IntelligentEngineService;->access$1100(Lcom/android/server/os/IntelligentEngineService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/os/BoostInfo;

    return-object v1
.end method

.method private findBoostInfoByPackageName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/os/BoostInfo;
    .registers 5
    .param p1, "boostName"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "timeout"  # Ljava/lang/String;

    .line 753
    iget-object v0, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-static {v0}, Lcom/android/server/os/IntelligentEngineService;->access$1100(Lcom/android/server/os/IntelligentEngineService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 755
    invoke-static {p2}, Lcom/android/server/os/ConfigFileUtils;->isAppNeedBoost(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 757
    iget-object v0, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-static {v0}, Lcom/android/server/os/IntelligentEngineService;->access$1100(Lcom/android/server/os/IntelligentEngineService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 758
    invoke-direct {p0, p2, p3}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->addScenario(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    .line 760
    :cond_22
    invoke-direct {p0, p2, p3}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->updateScenario(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    :goto_25
    iget-object v0, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-static {v0}, Lcom/android/server/os/IntelligentEngineService;->access$1100(Lcom/android/server/os/IntelligentEngineService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/os/BoostInfo;

    return-object v0

    .line 765
    :cond_32
    iget-object v0, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-static {v0}, Lcom/android/server/os/IntelligentEngineService;->access$1100(Lcom/android/server/os/IntelligentEngineService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 766
    invoke-direct {p0, p1, p3}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->addScenario(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45

    .line 768
    :cond_42
    invoke-direct {p0, p1, p3}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->updateScenario(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    :goto_45
    iget-object v0, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-static {v0}, Lcom/android/server/os/IntelligentEngineService;->access$1100(Lcom/android/server/os/IntelligentEngineService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/os/BoostInfo;

    return-object v0

    .line 773
    :cond_52
    invoke-direct {p0, p2, p3}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->updateScenario(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    iget-object v0, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-static {v0}, Lcom/android/server/os/IntelligentEngineService;->access$1100(Lcom/android/server/os/IntelligentEngineService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/os/BoostInfo;

    return-object v0
.end method

.method private getCurrentPowerMode()I
    .registers 4

    .line 607
    iget-object v0, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-static {v0}, Lcom/android/server/os/IntelligentEngineService;->access$600(Lcom/android/server/os/IntelligentEngineService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cpu_l"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getPowerMode(Ljava/lang/String;)I
    .registers 7
    .param p1, "configName"  # Ljava/lang/String;

    .line 588
    const/4 v0, 0x1

    .line 589
    .local v0, "valuePowerMode":I
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_48

    :cond_b
    goto :goto_34

    :sswitch_c
    const-string v1, "PowerModeHigh"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v3

    goto :goto_35

    :sswitch_16
    const-string v1, "PowerModeBench"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v2

    goto :goto_35

    :sswitch_20
    const-string v1, "PowerModeNormal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v4

    goto :goto_35

    :sswitch_2a
    const-string v1, "PowerModeLow"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    goto :goto_35

    :goto_34
    const/4 v1, -0x1

    :goto_35
    if-eqz v1, :cond_44

    if-eq v1, v4, :cond_42

    if-eq v1, v3, :cond_40

    if-eq v1, v2, :cond_3e

    goto :goto_46

    .line 600
    :cond_3e
    const/4 v0, 0x3

    goto :goto_46

    .line 597
    :cond_40
    const/4 v0, 0x0

    .line 598
    goto :goto_46

    .line 594
    :cond_42
    const/4 v0, 0x1

    .line 595
    goto :goto_46

    .line 591
    :cond_44
    const/4 v0, 0x2

    .line 592
    nop

    .line 603
    :goto_46
    return v0

    nop

    :sswitch_data_48
    .sparse-switch
        -0xd8f71f4 -> :sswitch_2a
        -0x474c8d1 -> :sswitch_20
        0x17f3aee8 -> :sswitch_16
        0x5b9f49ea -> :sswitch_c
    .end sparse-switch
.end method

.method private updateBoostInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "boostName"  # Ljava/lang/String;
    .param p2, "timeout"  # Ljava/lang/String;

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service_updateBoostInfo : boostName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timeout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 798
    iget-object v0, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-static {v0}, Lcom/android/server/os/IntelligentEngineService;->access$1100(Lcom/android/server/os/IntelligentEngineService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/os/BoostInfo;

    .line 799
    .local v0, "boostInfo":Lcom/android/server/os/BoostInfo;
    invoke-virtual {v0, p2}, Lcom/android/server/os/BoostInfo;->updateTimeout(Ljava/lang/String;)V

    .line 800
    iget-object v1, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-static {v1}, Lcom/android/server/os/IntelligentEngineService;->access$1100(Lcom/android/server/os/IntelligentEngineService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    return-void
.end method

.method private updateScenario(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "boostName"  # Ljava/lang/String;
    .param p2, "timeout"  # Ljava/lang/String;

    .line 785
    iget-object v0, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-static {v0}, Lcom/android/server/os/IntelligentEngineService;->access$1100(Lcom/android/server/os/IntelligentEngineService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/os/BoostInfo;

    .line 786
    .local v0, "valueBoostInfo":Lcom/android/server/os/BoostInfo;
    if-eqz p2, :cond_1e

    if-eqz v0, :cond_1e

    .line 787
    invoke-virtual {v0}, Lcom/android/server/os/BoostInfo;->getTimeout()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 788
    invoke-direct {p0, p1, p2}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->updateBoostInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 790
    :cond_1e
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/android/server/os/BoostInfo;->getTimeout()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 791
    invoke-direct {p0, p1, p2}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->updateBoostInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    :cond_29
    :goto_29
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"  # Landroid/os/Message;

    .line 438
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_48

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2e

    const/4 v1, 0x4

    if-eq v0, v1, :cond_25

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResScheduler: Are you sure U want to post this message with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostWarn(Ljava/lang/String;)V

    goto :goto_55

    .line 456
    :cond_25
    const-string v0, "Service_handleMessage H_CONFIG_MIGRATE_BIGCORE_MSG nativeMigrateFromBigCore"

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 458
    invoke-static {}, Lcom/android/server/os/IntelligentEngineService;->access$000()I

    .line 459
    goto :goto_55

    .line 451
    :cond_2e
    const-string v0, "Service_handleMessage H_CONFIG_APP_BOOST"

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 453
    .local v0, "data":Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->applyAppBoost(Landroid/os/Bundle;)V

    .line 454
    goto :goto_55

    .line 445
    .end local v0  # "data":Landroid/os/Bundle;
    :cond_3b
    const-string v0, "Service_handleMessage H_CONFIG_GAME_BOOST"

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 447
    .restart local v0  # "data":Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->applyGameBoost(Landroid/os/Bundle;)V

    .line 448
    goto :goto_55

    .line 440
    .end local v0  # "data":Landroid/os/Bundle;
    :cond_48
    const-string v0, "Service_handleMessage H_CONFIG_SCENE_BOOST"

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 442
    .restart local v0  # "data":Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->applySceneBoost(Landroid/os/Bundle;)V

    .line 443
    nop

    .line 465
    .end local v0  # "data":Landroid/os/Bundle;
    :goto_55
    return-void
.end method

.method public writeBytes(Ljava/io/OutputStream;[B)V
    .registers 5
    .param p1, "sPerfNodesStream"  # Ljava/io/OutputStream;
    .param p2, "bytes"  # [B

    .line 842
    if-eqz p2, :cond_2a

    if-eqz p1, :cond_2a

    .line 844
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service_writeBytes ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 845
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_21} :catch_22

    goto :goto_29

    .line 846
    :catch_22
    move-exception v0

    .line 847
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "write file node error!"

    invoke-static {v1}, Landroid/perf/LogUtils;->logBoostError(Ljava/lang/String;)V

    .line 848
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_29
    goto :goto_30

    .line 850
    :cond_2a
    const-string/jumbo v0, "write bytes is null"

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostError(Ljava/lang/String;)V

    .line 852
    :goto_30
    return-void
.end method

.method writeBytesToNode([Ljava/lang/String;J)V
    .registers 8
    .param p1, "configString"  # [Ljava/lang/String;
    .param p2, "simpleHashCode"  # J

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service_writeBytesToNode = configString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " simpleHashCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 829
    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 833
    if-eqz p1, :cond_56

    array-length v0, p1

    sget v1, Lcom/android/server/os/ConfigFileUtils;->sCurrentPerfNodeMax:I

    if-lt v0, v1, :cond_56

    .line 834
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_28
    sget v1, Lcom/android/server/os/ConfigFileUtils;->sCurrentPerfNodeMax:I

    if-ge v0, v1, :cond_56

    .line 835
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 836
    .local v1, "temp":Ljava/lang/String;
    sget-object v2, Lcom/android/server/os/ConfigFileUtils;->sPerfNodesStream:[Ljava/io/OutputStream;

    aget-object v2, v2, v0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->writeBytes(Ljava/io/OutputStream;[B)V

    .line 834
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 839
    .end local v0  # "i":I
    .end local v1  # "temp":Ljava/lang/String;
    :cond_56
    return-void
.end method

.method writeGedNode(Ljava/lang/String;)V
    .registers 4
    .param p1, "config"  # Ljava/lang/String;

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service_writeGedNode = config = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 825
    sget-object v0, Lcom/android/server/os/ConfigFileUtils;->gedStreamNode:Ljava/io/OutputStream;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->writeBytes(Ljava/io/OutputStream;[B)V

    .line 826
    return-void
.end method
