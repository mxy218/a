.class public Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitorCallback.java"


# static fields
.field private static final VISIBILITY_CHANGED_COLLAPSE_MS:J = 0x3e8L


# instance fields
.field private mShowing:Z

.field private mVisibilityChangedCalled:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAbsWindowFocusChanged(Z)V
    .registers 2

    return-void
.end method

.method public onAirPlaneModeChanged(Z)V
    .registers 2

    return-void
.end method

.method public onBiometricAcquired(Landroid/hardware/biometrics/BiometricSourceType;)V
    .registers 2

    return-void
.end method

.method public onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .registers 2

    return-void
.end method

.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;)V
    .registers 3

    return-void
.end method

.method public onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .registers 4

    return-void
.end method

.method public onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .registers 4

    return-void
.end method

.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .registers 3

    return-void
.end method

.method public onBiometricsCleared()V
    .registers 1

    return-void
.end method

.method public onBootCompleted()V
    .registers 1

    return-void
.end method

.method public onChangeFingerprintVisibility(Z)V
    .registers 2

    return-void
.end method

.method public onChargingViewMaskChanged(Z)V
    .registers 2

    return-void
.end method

.method public onClockVisibilityChanged()V
    .registers 1

    return-void
.end method

.method public onDevicePolicyManagerStateChanged()V
    .registers 1

    return-void
.end method

.method public onDeviceProvisioned()V
    .registers 1

    return-void
.end method

.method public onDismissFromSubscreen()V
    .registers 1

    return-void
.end method

.method public onDreamingStateChanged(Z)V
    .registers 2

    return-void
.end method

.method public onEasyModeChanged(Z)V
    .registers 2

    return-void
.end method

.method public onEmergencyCallAction()V
    .registers 1

    return-void
.end method

.method public onFaceUnlockStateChanged(ZI)V
    .registers 3

    return-void
.end method

.method public onFingerprintAuthenticated(II)V
    .registers 3

    return-void
.end method

.method public onFingerprintLockoutReset()V
    .registers 1

    return-void
.end method

.method public onFingerprintUsedAsUnlockChanged(Z)V
    .registers 2

    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onHasLockscreenWallpaperChanged(Z)V
    .registers 2

    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .registers 2

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .registers 2

    return-void
.end method

.method public onKeyguardVisibilityChangedRaw(Z)V
    .registers 8

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 89
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mShowing:Z

    if-ne p1, v2, :cond_13

    iget-wide v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mVisibilityChangedCalled:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_13

    return-void

    .line 91
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    .line 92
    iput-wide v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mVisibilityChangedCalled:J

    .line 93
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mShowing:Z

    return-void
.end method

.method public onLockWallpaperColorChanged()V
    .registers 1

    return-void
.end method

.method public onLogoutEnabledChanged()V
    .registers 1

    return-void
.end method

.method public onNotificationPanleBlurColorChanged()V
    .registers 1

    return-void
.end method

.method public onPhoneStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPowerSaveModeChanged(Z)V
    .registers 2

    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .registers 2

    return-void
.end method

.method public onRefreshCarrierInfo()V
    .registers 1

    return-void
.end method

.method public onRingerModeChanged(I)V
    .registers 2

    return-void
.end method

.method public onScreenTurnedOff()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onScreenTurnedOn()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onServiceStateChanged(ILandroid/telephony/ServiceState;)V
    .registers 3

    return-void
.end method

.method public onServiceStateChangedUsingPhoneId(ILandroid/telephony/ServiceState;)V
    .registers 3

    return-void
.end method

.method public onSetBackground(Landroid/graphics/Bitmap;)V
    .registers 2

    return-void
.end method

.method public onShowBouncer()V
    .registers 1

    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .registers 4

    return-void
.end method

.method public onSimStateChangedUsingPhoneId(ILcom/android/internal/telephony/IccCardConstants$State;)V
    .registers 3

    return-void
.end method

.method public onSmartLockStatusChange(Z)V
    .registers 2

    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onStartedWakingUp()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onTelephonyCapable(Z)V
    .registers 2

    return-void
.end method

.method public onThemeChanged()V
    .registers 1

    return-void
.end method

.method public onTimeChanged()V
    .registers 1

    return-void
.end method

.method public onTimeZoneChanged(Ljava/util/TimeZone;)V
    .registers 2

    return-void
.end method

.method public onTrustAgentErrorMessage(Ljava/lang/CharSequence;)V
    .registers 2

    return-void
.end method

.method public onTrustChanged(I)V
    .registers 2

    return-void
.end method

.method public onTrustGrantedWithFlags(II)V
    .registers 3

    return-void
.end method

.method public onTrustManagedChanged(I)V
    .registers 2

    return-void
.end method

.method public onUpdateInputRestricted()V
    .registers 1

    return-void
.end method

.method public onUserInfoChanged(I)V
    .registers 2

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .registers 2

    return-void
.end method

.method public onUserSwitching(I)V
    .registers 2

    return-void
.end method

.method public onUserUnlocked()V
    .registers 1

    return-void
.end method

.method public onWallpaperColorChanged(I)V
    .registers 2

    return-void
.end method

.method public onWallpaperMaskChange(Z)V
    .registers 2

    return-void
.end method

.method public resetDefaultColors()V
    .registers 1

    return-void
.end method
