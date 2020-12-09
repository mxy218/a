.class Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
.super Ljava/lang/Object;
.source "BatterySaverPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/batterysaver/BatterySaverPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Policy"
.end annotation


# instance fields
.field public final adjustBrightnessFactor:F

.field public final advertiseIsEnabled:Z

.field public final deferFullBackup:Z

.field public final deferKeyValueBackup:Z

.field public final disableAnimation:Z

.field public final disableAod:Z

.field public final disableLaunchBoost:Z

.field public final disableOptionalSensors:Z

.field public final disableSoundTrigger:Z

.field public final disableVibration:Z

.field public final enableAdjustBrightness:Z

.field public final enableDataSaver:Z

.field public final enableFirewall:Z

.field public final enableNightMode:Z

.field public final enableQuickDoze:Z

.field public final filesForInteractive:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final filesForNoninteractive:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final forceAllAppsStandby:Z

.field public final forceBackgroundCheck:Z

.field public final locationMode:I

.field private final mHashCode:I


# direct methods
.method constructor <init>(FZZZZZZZZZZZZZZLandroid/util/ArrayMap;Landroid/util/ArrayMap;ZZI)V
    .registers 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FZZZZZZZZZZZZZZ",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZI)V"
        }
    .end annotation

    .line 595
    move-object/from16 v0, p0

    move-object/from16 v1, p16

    move-object/from16 v2, p17

    move/from16 v3, p20

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 597
    const/4 v4, 0x0

    move/from16 v5, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v6, 0x3f800000  # 1.0f

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->adjustBrightnessFactor:F

    .line 598
    move/from16 v4, p2

    iput-boolean v4, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    .line 599
    move/from16 v6, p3

    iput-boolean v6, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferFullBackup:Z

    .line 600
    move/from16 v7, p4

    iput-boolean v7, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferKeyValueBackup:Z

    .line 601
    move/from16 v8, p5

    iput-boolean v8, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAnimation:Z

    .line 602
    move/from16 v9, p6

    iput-boolean v9, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAod:Z

    .line 603
    move/from16 v10, p7

    iput-boolean v10, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableLaunchBoost:Z

    .line 604
    move/from16 v11, p8

    iput-boolean v11, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableOptionalSensors:Z

    .line 605
    move/from16 v12, p9

    iput-boolean v12, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableSoundTrigger:Z

    .line 606
    move/from16 v13, p10

    iput-boolean v13, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableVibration:Z

    .line 607
    move/from16 v14, p11

    iput-boolean v14, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableAdjustBrightness:Z

    .line 608
    move/from16 v15, p12

    iput-boolean v15, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableDataSaver:Z

    .line 609
    move/from16 v4, p13

    iput-boolean v4, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableFirewall:Z

    .line 610
    move/from16 v4, p14

    iput-boolean v4, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableNightMode:Z

    .line 611
    move/from16 v4, p15

    iput-boolean v4, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableQuickDoze:Z

    .line 612
    iput-object v1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->filesForInteractive:Landroid/util/ArrayMap;

    .line 613
    iput-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->filesForNoninteractive:Landroid/util/ArrayMap;

    .line 614
    move/from16 v4, p18

    iput-boolean v4, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceAllAppsStandby:Z

    .line 615
    move/from16 v4, p19

    iput-boolean v4, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceBackgroundCheck:Z

    .line 617
    if-ltz v3, :cond_68

    const/4 v4, 0x4

    if-ge v4, v3, :cond_64

    goto :goto_68

    .line 622
    :cond_64
    iput v3, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    const/4 v4, 0x0

    goto :goto_81

    .line 619
    :cond_68
    :goto_68
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid location mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BatterySaverPolicy"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const/4 v4, 0x0

    iput v4, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    .line 625
    :goto_81
    const/16 v5, 0x14

    new-array v5, v5, [Ljava/lang/Object;

    .line 626
    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v5, v4

    const/4 v4, 0x1

    .line 627
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v5, v4

    const/4 v4, 0x2

    .line 628
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, 0x3

    .line 629
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    .line 630
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v6, 0x4

    aput-object v4, v5, v6

    const/4 v4, 0x5

    .line 631
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, 0x6

    .line 632
    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, 0x7

    .line 633
    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    const/16 v4, 0x8

    .line 634
    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    const/16 v4, 0x9

    .line 635
    invoke-static/range {p10 .. p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    const/16 v4, 0xa

    .line 636
    invoke-static/range {p11 .. p11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    const/16 v4, 0xb

    .line 637
    invoke-static/range {p12 .. p12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    const/16 v4, 0xc

    .line 638
    invoke-static/range {p13 .. p13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    const/16 v4, 0xd

    .line 639
    invoke-static/range {p14 .. p14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    const/16 v4, 0xe

    .line 640
    invoke-static/range {p15 .. p15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    const/16 v4, 0xf

    aput-object v1, v5, v4

    const/16 v1, 0x10

    aput-object v2, v5, v1

    const/16 v1, 0x11

    .line 643
    invoke-static/range {p18 .. p18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x12

    .line 644
    invoke-static/range {p19 .. p19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x13

    .line 645
    invoke-static/range {p20 .. p20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    .line 625
    invoke-static {v5}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->mHashCode:I

    .line 646
    return-void
.end method

.method static fromConfig(Landroid/os/BatterySaverPolicyConfig;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
    .registers 26

    .line 649
    if-nez p0, :cond_c

    .line 650
    const-string v0, "BatterySaverPolicy"

    const-string v1, "Null config passed down to BatterySaverPolicy"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    sget-object v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->OFF_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    return-object v0

    .line 655
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDeviceSpecificSettings()Ljava/util/Map;

    move-result-object v0

    .line 656
    nop

    .line 657
    const-string v1, ""

    const-string v2, "cpufreq-i"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 658
    nop

    .line 659
    const-string v3, "cpufreq-n"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 661
    new-instance v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-object v3, v1

    .line 662
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getAdjustBrightnessFactor()F

    move-result v4

    .line 663
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getAdvertiseIsEnabled()Z

    move-result v5

    .line 664
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDeferFullBackup()Z

    move-result v6

    .line 665
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDeferKeyValueBackup()Z

    move-result v7

    .line 666
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDisableAnimation()Z

    move-result v8

    .line 667
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDisableAod()Z

    move-result v9

    .line 668
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDisableLaunchBoost()Z

    move-result v10

    .line 669
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDisableOptionalSensors()Z

    move-result v11

    .line 670
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDisableSoundTrigger()Z

    move-result v12

    .line 671
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDisableVibration()Z

    move-result v13

    .line 672
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getEnableAdjustBrightness()Z

    move-result v14

    .line 673
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getEnableDataSaver()Z

    move-result v15

    .line 674
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getEnableFirewall()Z

    move-result v16

    .line 675
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getEnableNightMode()Z

    move-result v17

    .line 676
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getEnableQuickDoze()Z

    move-result v18

    move-object/from16 v24, v1

    new-instance v1, Lcom/android/server/power/batterysaver/CpuFrequencies;

    invoke-direct {v1}, Lcom/android/server/power/batterysaver/CpuFrequencies;-><init>()V

    .line 678
    invoke-virtual {v1, v2}, Lcom/android/server/power/batterysaver/CpuFrequencies;->parseString(Ljava/lang/String;)Lcom/android/server/power/batterysaver/CpuFrequencies;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/CpuFrequencies;->toSysFileMap()Landroid/util/ArrayMap;

    move-result-object v19

    new-instance v1, Lcom/android/server/power/batterysaver/CpuFrequencies;

    invoke-direct {v1}, Lcom/android/server/power/batterysaver/CpuFrequencies;-><init>()V

    .line 680
    invoke-virtual {v1, v0}, Lcom/android/server/power/batterysaver/CpuFrequencies;->parseString(Ljava/lang/String;)Lcom/android/server/power/batterysaver/CpuFrequencies;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/CpuFrequencies;->toSysFileMap()Landroid/util/ArrayMap;

    move-result-object v20

    .line 681
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getForceAllAppsStandby()Z

    move-result v21

    .line 682
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getForceBackgroundCheck()Z

    move-result v22

    .line 683
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getLocationMode()I

    move-result v23

    invoke-direct/range {v3 .. v23}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;-><init>(FZZZZZZZZZZZZZZLandroid/util/ArrayMap;Landroid/util/ArrayMap;ZZI)V

    .line 661
    return-object v24
.end method

.method static fromSettings(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
    .registers 3

    .line 688
    sget-object v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->OFF_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-static {p0, p1, v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->fromSettings(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object p0

    return-object p0
.end method

.method static fromSettings(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
    .registers 32

    .line 693
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    new-instance v4, Landroid/util/KeyValueListParser;

    const/16 v0, 0x2c

    invoke-direct {v4, v0}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 697
    const-string v5, "BatterySaverPolicy"

    const-string v6, ""

    if-nez v2, :cond_15

    move-object v0, v6

    goto :goto_16

    :cond_15
    move-object v0, v2

    :goto_16
    :try_start_16
    invoke-virtual {v4, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_19} :catch_1a

    .line 701
    goto :goto_2f

    .line 698
    :catch_1a
    move-exception v0

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad device specific battery saver constants: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :goto_2f
    const-string v0, "cpufreq-i"

    invoke-virtual {v4, v0, v6}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 704
    const-string v0, "cpufreq-n"

    invoke-virtual {v4, v0, v6}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 708
    if-nez v1, :cond_3e

    goto :goto_3f

    :cond_3e
    move-object v6, v1

    :goto_3f
    :try_start_3f
    invoke-virtual {v4, v6}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3f .. :try_end_42} :catch_43

    .line 711
    goto :goto_58

    .line 709
    :catch_43
    move-exception v0

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad battery saver constants: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :goto_58
    iget v0, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->adjustBrightnessFactor:F

    const-string v1, "adjust_brightness_factor"

    invoke-virtual {v4, v1, v0}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v9

    .line 715
    iget-boolean v0, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    const-string v1, "advertise_is_enabled"

    invoke-virtual {v4, v1, v0}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 717
    iget-boolean v0, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferFullBackup:Z

    const-string v1, "fullbackup_deferred"

    invoke-virtual {v4, v1, v0}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 719
    iget-boolean v0, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferKeyValueBackup:Z

    const-string v1, "keyvaluebackup_deferred"

    invoke-virtual {v4, v1, v0}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 721
    iget-boolean v0, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAnimation:Z

    const-string v1, "animation_disabled"

    invoke-virtual {v4, v1, v0}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 723
    iget-boolean v0, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAod:Z

    const-string v1, "aod_disabled"

    invoke-virtual {v4, v1, v0}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 724
    iget-boolean v0, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableLaunchBoost:Z

    const-string v1, "launch_boost_disabled"

    invoke-virtual {v4, v1, v0}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 726
    iget-boolean v0, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableOptionalSensors:Z

    const-string/jumbo v1, "optional_sensors_disabled"

    invoke-virtual {v4, v1, v0}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 728
    iget-boolean v0, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableSoundTrigger:Z

    const-string/jumbo v1, "soundtrigger_disabled"

    invoke-virtual {v4, v1, v0}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 730
    iget-boolean v0, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableVibration:Z

    const-string/jumbo v1, "vibration_disabled"

    invoke-virtual {v4, v1, v0}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 732
    iget-boolean v0, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableAdjustBrightness:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "adjust_brightness_disabled"

    invoke-virtual {v4, v1, v0}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 734
    xor-int/lit8 v19, v0, 0x1

    iget-boolean v0, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableDataSaver:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "datasaver_disabled"

    invoke-virtual {v4, v1, v0}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 736
    xor-int/lit8 v20, v0, 0x1

    iget-boolean v0, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableFirewall:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "firewall_disabled"

    invoke-virtual {v4, v1, v0}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 738
    xor-int/lit8 v21, v0, 0x1

    iget-boolean v0, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableNightMode:Z

    const-string v1, "enable_night_mode"

    invoke-virtual {v4, v1, v0}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .line 740
    iget-boolean v0, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableQuickDoze:Z

    const-string/jumbo v1, "quick_doze_enabled"

    invoke-virtual {v4, v1, v0}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    .line 742
    iget-boolean v0, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceAllAppsStandby:Z

    const-string v1, "force_all_apps_standby"

    invoke-virtual {v4, v1, v0}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v26

    .line 744
    iget-boolean v0, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceBackgroundCheck:Z

    const-string v1, "force_background_check"

    invoke-virtual {v4, v1, v0}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    .line 746
    iget v0, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    const-string v1, "gps_mode"

    invoke-virtual {v4, v1, v0}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v28

    .line 748
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-object v8, v0

    new-instance v1, Lcom/android/server/power/batterysaver/CpuFrequencies;

    invoke-direct {v1}, Lcom/android/server/power/batterysaver/CpuFrequencies;-><init>()V

    .line 766
    invoke-virtual {v1, v2}, Lcom/android/server/power/batterysaver/CpuFrequencies;->parseString(Ljava/lang/String;)Lcom/android/server/power/batterysaver/CpuFrequencies;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/CpuFrequencies;->toSysFileMap()Landroid/util/ArrayMap;

    move-result-object v24

    new-instance v1, Lcom/android/server/power/batterysaver/CpuFrequencies;

    invoke-direct {v1}, Lcom/android/server/power/batterysaver/CpuFrequencies;-><init>()V

    .line 768
    invoke-virtual {v1, v7}, Lcom/android/server/power/batterysaver/CpuFrequencies;->parseString(Ljava/lang/String;)Lcom/android/server/power/batterysaver/CpuFrequencies;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/CpuFrequencies;->toSysFileMap()Landroid/util/ArrayMap;

    move-result-object v25

    invoke-direct/range {v8 .. v28}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;-><init>(FZZZZZZZZZZZZZZLandroid/util/ArrayMap;Landroid/util/ArrayMap;ZZI)V

    .line 748
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 777
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 778
    :cond_4
    instance-of v1, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 779
    :cond_a
    check-cast p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 780
    iget v1, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->adjustBrightnessFactor:F

    iget v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->adjustBrightnessFactor:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_91

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    if-ne v1, v3, :cond_91

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferFullBackup:Z

    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferFullBackup:Z

    if-ne v1, v3, :cond_91

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferKeyValueBackup:Z

    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferKeyValueBackup:Z

    if-ne v1, v3, :cond_91

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAnimation:Z

    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAnimation:Z

    if-ne v1, v3, :cond_91

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAod:Z

    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAod:Z

    if-ne v1, v3, :cond_91

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableLaunchBoost:Z

    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableLaunchBoost:Z

    if-ne v1, v3, :cond_91

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableOptionalSensors:Z

    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableOptionalSensors:Z

    if-ne v1, v3, :cond_91

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableSoundTrigger:Z

    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableSoundTrigger:Z

    if-ne v1, v3, :cond_91

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableVibration:Z

    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableVibration:Z

    if-ne v1, v3, :cond_91

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableAdjustBrightness:Z

    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableAdjustBrightness:Z

    if-ne v1, v3, :cond_91

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableDataSaver:Z

    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableDataSaver:Z

    if-ne v1, v3, :cond_91

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableFirewall:Z

    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableFirewall:Z

    if-ne v1, v3, :cond_91

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableNightMode:Z

    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableNightMode:Z

    if-ne v1, v3, :cond_91

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableQuickDoze:Z

    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableQuickDoze:Z

    if-ne v1, v3, :cond_91

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceAllAppsStandby:Z

    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceAllAppsStandby:Z

    if-ne v1, v3, :cond_91

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceBackgroundCheck:Z

    iget-boolean v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceBackgroundCheck:Z

    if-ne v1, v3, :cond_91

    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    iget v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    if-ne v1, v3, :cond_91

    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->filesForInteractive:Landroid/util/ArrayMap;

    iget-object v3, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->filesForInteractive:Landroid/util/ArrayMap;

    .line 798
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->filesForNoninteractive:Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->filesForNoninteractive:Landroid/util/ArrayMap;

    .line 799
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_91

    goto :goto_92

    :cond_91
    move v0, v2

    .line 780
    :goto_92
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 804
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->mHashCode:I

    return v0
.end method
