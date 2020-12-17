.class public Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;
.super Ljava/lang/Object;
.source "HighUsageDataParser.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;


# instance fields
.field private mBatteryDrain:I

.field private mEndBatteryLevel:B

.field private mEndTimeMs:J

.field private mLastPeriodBatteryLevel:B

.field private mThreshold:I

.field private final mTimePeriodMs:J


# direct methods
.method public constructor <init>(JI)V
    .registers 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;->mTimePeriodMs:J

    .line 44
    iput p3, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;->mThreshold:I

    return-void
.end method


# virtual methods
.method public isDeviceHeavilyUsed()Z
    .registers 2

    .line 76
    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;->mBatteryDrain:I

    iget p0, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;->mThreshold:I

    if-le v0, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public onDataGap()V
    .registers 1

    return-void
.end method

.method public onDataPoint(JLandroid/os/BatteryStats$HistoryItem;)V
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_11

    .line 54
    iget-wide p1, p3, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;->mEndTimeMs:J

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;->mTimePeriodMs:J

    sub-long/2addr v0, v2

    cmp-long p1, p1, v0

    if-gtz p1, :cond_15

    .line 57
    :cond_11
    iget-byte p1, p3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput-byte p1, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;->mLastPeriodBatteryLevel:B

    .line 59
    :cond_15
    iget-byte p1, p3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput-byte p1, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;->mEndBatteryLevel:B

    return-void
.end method

.method public onParsingDone()V
    .registers 3

    .line 69
    iget-byte v0, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;->mLastPeriodBatteryLevel:B

    iget-byte v1, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;->mEndBatteryLevel:B

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;->mBatteryDrain:I

    return-void
.end method

.method public onParsingStarted(JJ)V
    .registers 5

    .line 49
    iput-wide p3, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;->mEndTimeMs:J

    return-void
.end method
