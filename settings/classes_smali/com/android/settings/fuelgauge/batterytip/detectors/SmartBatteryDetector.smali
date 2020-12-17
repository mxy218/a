.class public Lcom/android/settings/fuelgauge/batterytip/detectors/SmartBatteryDetector;
.super Ljava/lang/Object;
.source "SmartBatteryDetector.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/batterytip/detectors/BatteryTipDetector;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;


# direct methods
.method public constructor <init>(Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;Landroid/content/ContentResolver;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/SmartBatteryDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    .line 35
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/SmartBatteryDetector;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public detect()Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
    .registers 4

    .line 41
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/SmartBatteryDetector;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x1

    const-string v2, "adaptive_battery_management_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/SmartBatteryDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->testSmartBatteryTip:Z

    if-eqz p0, :cond_13

    goto :goto_14

    :cond_13
    move v1, v2

    :cond_14
    :goto_14
    if-eqz v1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v2, 0x2

    .line 46
    :goto_18
    new-instance p0, Lcom/android/settings/fuelgauge/batterytip/tips/SmartBatteryTip;

    invoke-direct {p0, v2}, Lcom/android/settings/fuelgauge/batterytip/tips/SmartBatteryTip;-><init>(I)V

    return-object p0
.end method
