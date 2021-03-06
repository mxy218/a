.class public Lcom/android/settings/fuelgauge/FakeUid;
.super Landroid/os/BatteryStats$Uid;
.source "FakeUid.java"


# instance fields
.field private final mUid:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 34
    invoke-direct {p0}, Landroid/os/BatteryStats$Uid;-><init>()V

    .line 35
    iput p1, p0, Lcom/android/settings/fuelgauge/FakeUid;->mUid:I

    return-void
.end method


# virtual methods
.method public getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCpuActiveTime()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCpuClusterTimes()[J
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCpuFreqTimes(I)[J
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCpuFreqTimes(II)[J
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeferredJobsCheckinLineLocked(Ljava/lang/StringBuilder;I)V
    .registers 3

    return-void
.end method

.method public getDeferredJobsLineLocked(Ljava/lang/StringBuilder;I)V
    .registers 3

    return-void
.end method

.method public getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFullWifiLockTime(JI)J
    .registers 4

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getJobCompletionStats()Landroid/util/ArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getJobStats()Landroid/util/ArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMobileRadioActiveCount(I)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getMobileRadioActiveTime(I)J
    .registers 2

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getMobileRadioApWakeupCount(I)J
    .registers 2

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNetworkActivityBytes(II)J
    .registers 3

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getNetworkActivityPackets(II)J
    .registers 3

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getPackageStats()Landroid/util/ArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Pkg;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPidStats()Landroid/util/SparseArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/BatteryStats$Uid$Pid;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getProcessStateTime(IJI)J
    .registers 5

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getProcessStats()Landroid/util/ArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Proc;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getScreenOffCpuFreqTimes(I)[J
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getScreenOffCpuFreqTimes(II)[J
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSensorStats()Landroid/util/SparseArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/BatteryStats$Uid$Sensor;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSyncStats()Landroid/util/ArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSystemCpuTimeUs(I)J
    .registers 2

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getTimeAtCpuSpeed(III)J
    .registers 4

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getUid()I
    .registers 1

    .line 40
    iget p0, p0, Lcom/android/settings/fuelgauge/FakeUid;->mUid:I

    return p0
.end method

.method public getUserActivityCount(II)I
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public getUserCpuTimeUs(I)J
    .registers 2

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getVibratorOnTimer()Landroid/os/BatteryStats$Timer;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWakelockStats()Landroid/util/ArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Wakelock;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWifiBatchedScanCount(II)I
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public getWifiBatchedScanTime(IJI)J
    .registers 5

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWifiMulticastTime(JI)J
    .registers 4

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getWifiRadioApWakeupCount(I)J
    .registers 2

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getWifiRunningTime(JI)J
    .registers 4

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getWifiScanActualTime(J)J
    .registers 3

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getWifiScanBackgroundCount(I)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getWifiScanBackgroundTime(J)J
    .registers 3

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getWifiScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWifiScanCount(I)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getWifiScanTime(JI)J
    .registers 4

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getWifiScanTimer()Landroid/os/BatteryStats$Timer;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasNetworkActivity()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public hasUserActivity()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public noteActivityPausedLocked(J)V
    .registers 3

    return-void
.end method

.method public noteActivityResumedLocked(J)V
    .registers 3

    return-void
.end method

.method public noteFullWifiLockAcquiredLocked(J)V
    .registers 3

    return-void
.end method

.method public noteFullWifiLockReleasedLocked(J)V
    .registers 3

    return-void
.end method

.method public noteUserActivityLocked(I)V
    .registers 2

    return-void
.end method

.method public noteWifiBatchedScanStartedLocked(IJ)V
    .registers 4

    return-void
.end method

.method public noteWifiBatchedScanStoppedLocked(J)V
    .registers 3

    return-void
.end method

.method public noteWifiMulticastDisabledLocked(J)V
    .registers 3

    return-void
.end method

.method public noteWifiMulticastEnabledLocked(J)V
    .registers 3

    return-void
.end method

.method public noteWifiRunningLocked(J)V
    .registers 3

    return-void
.end method

.method public noteWifiScanStartedLocked(J)V
    .registers 3

    return-void
.end method

.method public noteWifiScanStoppedLocked(J)V
    .registers 3

    return-void
.end method

.method public noteWifiStoppedLocked(J)V
    .registers 3

    return-void
.end method
