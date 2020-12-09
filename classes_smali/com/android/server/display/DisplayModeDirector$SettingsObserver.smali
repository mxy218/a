.class final Lcom/android/server/display/DisplayModeDirector$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultPeakRefreshRate:F

.field private final mLowPowerModeSetting:Landroid/net/Uri;

.field private final mMinRefreshRateSetting:Landroid/net/Uri;

.field private final mPeakRefreshRateSetting:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    .line 568
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    .line 569
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 558
    nop

    .line 559
    const-string/jumbo p1, "peak_refresh_rate"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mPeakRefreshRateSetting:Landroid/net/Uri;

    .line 560
    nop

    .line 561
    const-string p1, "min_refresh_rate"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mMinRefreshRateSetting:Landroid/net/Uri;

    .line 562
    nop

    .line 563
    const-string p1, "low_power"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mLowPowerModeSetting:Landroid/net/Uri;

    .line 570
    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    .line 571
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e003c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    .line 573
    return-void
.end method

.method private updateLowPowerModeSettingLocked()V
    .registers 5

    .line 623
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "low_power"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    .line 626
    :cond_10
    if-eqz v1, :cond_1a

    .line 627
    const/4 v0, 0x0

    const/high16 v2, 0x42700000  # 60.0f

    invoke-static {v0, v2}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v0

    goto :goto_1b

    .line 629
    :cond_1a
    const/4 v0, 0x0

    .line 631
    :goto_1b
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v3, 0x5

    invoke-static {v2, v3, v0}, Lcom/android/server/display/DisplayModeDirector;->access$400(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 632
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$000(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onLowPowerModeEnabledLocked(Z)V

    .line 633
    return-void
.end method

.method private updateRefreshRateSettingLocked()V
    .registers 6

    .line 636
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "min_refresh_rate"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 638
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    const-string/jumbo v4, "peak_refresh_rate"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    .line 641
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    .line 642
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v1, v4}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v1

    .line 641
    const/4 v4, 0x4

    invoke-static {v3, v4, v1}, Lcom/android/server/display/DisplayModeDirector;->access$400(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 643
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    .line 644
    const/high16 v3, 0x7f800000  # Float.POSITIVE_INFINITY

    invoke-static {v0, v3}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v3

    .line 643
    const/4 v4, 0x1

    invoke-static {v1, v4, v3}, Lcom/android/server/display/DisplayModeDirector;->access$400(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 646
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->access$000(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onRefreshRateSettingChangedLocked(FF)V

    .line 647
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 4

    .line 650
    const-string v0, "  SettingsObserver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDefaultPeakRefreshRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 652
    return-void
.end method

.method public observe()V
    .registers 4

    .line 576
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 577
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mPeakRefreshRateSetting:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 579
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mMinRefreshRateSetting:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 581
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mLowPowerModeSetting:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 584
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    .line 585
    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$200(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getDefaultPeakRefreshRate()Ljava/lang/Float;

    move-result-object v0

    .line 586
    if-eqz v0, :cond_28

    .line 587
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    .line 590
    :cond_28
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$300(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 591
    :try_start_2f
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    .line 592
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateLowPowerModeSettingLocked()V

    .line 593
    monitor-exit v0

    .line 594
    return-void

    .line 593
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_37

    throw v1
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .registers 4

    .line 612
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/DisplayModeDirector;->access$300(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 613
    :try_start_7
    iget-object p3, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mPeakRefreshRateSetting:Landroid/net/Uri;

    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_24

    iget-object p3, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mMinRefreshRateSetting:Landroid/net/Uri;

    .line 614
    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_18

    goto :goto_24

    .line 616
    :cond_18
    iget-object p3, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mLowPowerModeSetting:Landroid/net/Uri;

    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_27

    .line 617
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateLowPowerModeSettingLocked()V

    goto :goto_27

    .line 615
    :cond_24
    :goto_24
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    .line 619
    :cond_27
    :goto_27
    monitor-exit p1

    .line 620
    return-void

    .line 619
    :catchall_29
    move-exception p2

    monitor-exit p1
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw p2
.end method

.method public onDeviceConfigDefaultPeakRefreshRateChanged(Ljava/lang/Float;)V
    .registers 4

    .line 597
    if-nez p1, :cond_14

    .line 598
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e003c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 602
    :cond_14
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_33

    .line 603
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$300(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 604
    :try_start_25
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    .line 605
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    .line 606
    monitor-exit v0

    goto :goto_33

    :catchall_30
    move-exception p1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_30

    throw p1

    .line 608
    :cond_33
    :goto_33
    return-void
.end method
