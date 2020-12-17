.class public Lcom/android/systemui/statusbar/phone/BiometricUnlockController;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "BiometricUnlockController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/BiometricUnlockController$WakeAndUnlockMode;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field private mFadedAwayAfterWakeAndUnlock:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHasScreenTurnedOnSinceAuthenticating:Z

.field private final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mMode:I

.field private mOnNoMatch:Ljava/lang/Runnable;

.field private mPendingAuthenticatedBioSourceType:Landroid/hardware/biometrics/BiometricSourceType;

.field private mPendingAuthenticatedUserId:I

.field private mPendingShowBouncer:Z

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mReleaseBiometricWakeLockRunnable:Ljava/lang/Runnable;

.field private final mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private final mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

.field private mSystemMode:I

.field private mSystemModeUtils:Lcom/meizu/keyguard/SystemModeUtils;

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeUpDelay:I

.field final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Landroid/os/Handler;Lcom/android/keyguard/KeyguardUpdateMonitor;ILcom/android/systemui/statusbar/phone/KeyguardBypassController;)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 177
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    const/4 v0, -0x1

    .line 145
    iput v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticatedUserId:I

    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticatedBioSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 151
    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 206
    new-instance v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$1;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mReleaseBiometricWakeLockRunnable:Ljava/lang/Runnable;

    .line 558
    new-instance v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$3;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 569
    new-instance v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$4;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    .line 178
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    .line 179
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    .line 180
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 181
    iget-object p8, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p8, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 182
    const-class p8, Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {p8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Lcom/android/systemui/statusbar/NotificationMediaManager;

    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 183
    const-class p8, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {p8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {p8, v0}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 184
    const-class p8, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {p8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {p8, v0}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 185
    const-class p8, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-static {p8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    .line 186
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 187
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 188
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 189
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 190
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 191
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    .line 192
    iput p9, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeUpDelay:I

    .line 193
    iput-object p10, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 194
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->setUnlockController(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    .line 196
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 197
    new-instance p2, Lcom/meizu/keyguard/SystemModeUtils;

    invoke-direct {p2, p1}, Lcom/meizu/keyguard/SystemModeUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mSystemModeUtils:Lcom/meizu/keyguard/SystemModeUtils;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Landroid/os/Handler;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V
    .registers 23

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00be

    .line 164
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v12, p9

    .line 161
    invoke-direct/range {v2 .. v12}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Landroid/os/Handler;Lcom/android/keyguard/KeyguardUpdateMonitor;ILcom/android/systemui/statusbar/phone/KeyguardBypassController;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->releaseBiometricWakeLock()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)Lcom/android/systemui/statusbar/phone/StatusBarWindowController;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)Z
    .registers 1

    .line 54
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingShowBouncer:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->showBouncer()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Z)Z
    .registers 2

    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHasScreenTurnedOnSinceAuthenticating:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    return-object p0
.end method

.method private calculateMode(I)I
    .registers 4

    .line 761
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result p1

    .line 762
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_2a

    .line 763
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-nez v0, :cond_19

    const/4 p0, 0x4

    return p0

    .line 765
    :cond_19
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result p0

    if-eqz p0, :cond_25

    if-eqz p1, :cond_25

    const/4 p0, 0x2

    return p0

    :cond_25
    if-eqz p1, :cond_29

    const/4 p0, 0x1

    return p0

    :cond_29
    return v1

    :cond_2a
    if-eqz p1, :cond_2f

    const/16 p0, 0x8

    return p0

    :cond_2f
    if-eqz p1, :cond_33

    const/4 p0, 0x5

    return p0

    .line 778
    :cond_33
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result p0

    if-nez p0, :cond_3c

    return v1

    :cond_3c
    const/4 p0, 0x0

    return p0
.end method

.method private calculateMode(Landroid/hardware/biometrics/BiometricSourceType;)I
    .registers 3

    .line 414
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-eq p1, v0, :cond_e

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->IRIS:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v0, :cond_9

    goto :goto_e

    .line 418
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->calculateModeForFingerprint()I

    move-result p0

    return p0

    .line 416
    :cond_e
    :goto_e
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->calculateModeForPassiveAuth()I

    move-result p0

    return p0
.end method

.method private calculateModeForFingerprint()I
    .registers 5

    .line 423
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    .line 424
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result v1

    .line 426
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v2

    const/4 v3, 0x3

    if-nez v2, :cond_39

    .line 427
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1f

    const/4 p0, 0x4

    return p0

    .line 429
    :cond_1f
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result v1

    if-eqz v1, :cond_2b

    if-eqz v0, :cond_2b

    const/4 p0, 0x2

    return p0

    :cond_2b
    if-nez v0, :cond_37

    .line 431
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result p0

    if-nez p0, :cond_36

    goto :goto_37

    :cond_36
    return v3

    :cond_37
    :goto_37
    const/4 p0, 0x1

    return p0

    :cond_39
    if-eqz v0, :cond_3f

    if-eqz v1, :cond_3f

    const/4 p0, 0x6

    return p0

    .line 440
    :cond_3f
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 441
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->bouncerIsOrWillBeShowing()Z

    move-result v1

    if-eqz v1, :cond_54

    if-eqz v0, :cond_54

    const/16 p0, 0x8

    return p0

    :cond_54
    if-eqz v0, :cond_58

    const/4 p0, 0x5

    return p0

    .line 445
    :cond_58
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result p0

    if-nez p0, :cond_61

    return v3

    :cond_61
    const/4 p0, 0x0

    return p0
.end method

.method private calculateModeForPassiveAuth()I
    .registers 8

    .line 453
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    .line 454
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result v1

    .line 455
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v2

    .line 457
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-nez v3, :cond_42

    .line 458
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    if-nez v1, :cond_29

    if-eqz v2, :cond_28

    const/4 v5, 0x1

    :cond_28
    return v5

    :cond_29
    if-nez v0, :cond_30

    if-eqz v2, :cond_2e

    goto :goto_2f

    :cond_2e
    move v4, v6

    :goto_2f
    return v4

    .line 462
    :cond_30
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result p0

    const/4 v0, 0x2

    if-eqz p0, :cond_3e

    if-eqz v2, :cond_3c

    goto :goto_3d

    :cond_3c
    move v0, v6

    :goto_3d
    return v0

    :cond_3e
    if-eqz v2, :cond_41

    return v0

    :cond_41
    return v5

    :cond_42
    if-eqz v0, :cond_4a

    if-eqz v1, :cond_4a

    if-eqz v2, :cond_49

    const/4 v5, 0x6

    :cond_49
    return v5

    .line 481
    :cond_4a
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 482
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->bouncerIsOrWillBeShowing()Z

    move-result v1

    const/4 v3, 0x7

    if-eqz v1, :cond_6b

    if-eqz v0, :cond_6b

    if-eqz v2, :cond_68

    .line 483
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->canPlaySubtleWindowAnimations()Z

    move-result p0

    if-eqz p0, :cond_68

    return v3

    :cond_68
    const/16 p0, 0x8

    return p0

    :cond_6b
    if-eqz v0, :cond_72

    if-eqz v2, :cond_70

    goto :goto_71

    :cond_70
    move v3, v6

    :goto_71
    return v3

    :cond_72
    if-eqz v2, :cond_75

    goto :goto_76

    :cond_75
    move v4, v6

    :goto_76
    return v4

    :cond_77
    return v6
.end method

.method private cleanup()V
    .registers 1

    .line 528
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->releaseBiometricWakeLock()V

    return-void
.end method

.method private pulsingOrAod()Z
    .registers 2

    .line 254
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getState()Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object p0

    .line 255
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p0, v0, :cond_11

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p0, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method private releaseBiometricWakeLock()V
    .registers 3

    .line 217
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1a

    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mReleaseBiometricWakeLockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "BiometricUnlockController"

    const-string v1, "releasing biometric wakelock"

    .line 220
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    .line 223
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_1a
    return-void
.end method

.method private resetMode()V
    .registers 3

    const/4 v0, 0x0

    .line 550
    iput v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 551
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setForceDozeBrightness(Z)V

    .line 552
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 553
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWakeAndUnlocking(Z)V

    .line 555
    :cond_19
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyBiometricAuthModeChanged()V

    return-void
.end method

.method private showBouncer()V
    .registers 4

    .line 370
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_b

    .line 371
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer(Z)V

    .line 373
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const v2, 0x3f8ccccd  # 1.1f

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->animateCollapsePanels(F)V

    .line 375
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingShowBouncer:Z

    return-void
.end method

.method private switchSystemModeByFingerPrint(I)V
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_16

    .line 749
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    if-eqz p1, :cond_a

    .line 750
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->removeExitGuestModeMsg()V

    .line 753
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mSystemModeUtils:Lcom/meizu/keyguard/SystemModeUtils;

    invoke-virtual {p1}, Lcom/meizu/keyguard/SystemModeUtils;->enterGuestMode()V

    .line 754
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mSystemModeUtils:Lcom/meizu/keyguard/SystemModeUtils;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/meizu/keyguard/SystemModeUtils;->switchSystemMode(I)V

    goto :goto_1b

    .line 756
    :cond_16
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mSystemModeUtils:Lcom/meizu/keyguard/SystemModeUtils;

    invoke-virtual {p0, p1}, Lcom/meizu/keyguard/SystemModeUtils;->switchSystemMode(I)V

    :goto_1b
    return-void
.end method

.method private toSubtype(Landroid/hardware/biometrics/BiometricSourceType;)I
    .registers 3

    .line 623
    sget-object p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$6;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_14

    const/4 v0, 0x2

    if-eq p0, v0, :cond_13

    const/4 p1, 0x3

    if-eq p0, p1, :cond_12

    return p1

    :cond_12
    return v0

    :cond_13
    return p1

    :cond_14
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 3

    const-string v0, " BiometricUnlockController:"

    .line 582
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "   mMode="

    .line 583
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "   mWakeLock="

    .line 584
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public finishKeyguardFadingAway()V
    .registers 2

    .line 543
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    .line 544
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFadedAwayAfterWakeAndUnlock:Z

    .line 546
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->resetMode()V

    return-void
.end method

.method public getMode()I
    .registers 1

    .line 410
    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    return p0
.end method

.method public hasPendingAuthentication()Z
    .registers 3

    .line 404
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticatedUserId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 405
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-eqz v0, :cond_17

    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticatedUserId:I

    .line 406
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-ne p0, v0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method public isBiometricUnlock()Z
    .registers 2

    .line 609
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v0

    if-nez v0, :cond_11

    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    const/4 v0, 0x5

    if-eq p0, v0, :cond_11

    const/4 v0, 0x7

    if-ne p0, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public isWakeAndUnlock()Z
    .registers 3

    .line 591
    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    const/4 v1, 0x2

    if-eq p0, v1, :cond_d

    const/4 v1, 0x6

    if-ne p0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :cond_d
    :goto_d
    return v0
.end method

.method public synthetic lambda$onFinishedGoingToSleep$1$BiometricUnlockController()V
    .registers 3

    .line 396
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticatedUserId:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mSystemMode:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->onFingerprintAuthenticated(II)V

    return-void
.end method

.method public synthetic lambda$startWakeAndUnlock$0$BiometricUnlockController(ZZ)V
    .registers 7

    if-nez p1, :cond_15

    const-string p1, "BiometricUnlockController"

    const-string v0, "bio wakelock: Authenticated, waking up..."

    .line 303
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x4

    const-string v3, "android.policy:BIOMETRIC"

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    :cond_15
    if-eqz p2, :cond_1c

    .line 309
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onWakeAndUnlocking()V

    :cond_1c
    const-string p1, "release wake-and-unlock"

    .line 311
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 312
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->releaseBiometricWakeLock()V

    .line 313
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onBiometricAcquired(Landroid/hardware/biometrics/BiometricSourceType;)V
    .registers 4

    const-string v0, "BiometricUnlockController#onBiometricAcquired"

    .line 229
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 230
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->releaseBiometricWakeLock()V

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_50

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x2

    .line 234
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v1, :cond_1e

    const/4 v0, 0x6

    .line 237
    :cond_1e
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 239
    :cond_27
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    const/4 v0, 0x1

    const-string/jumbo v1, "wake-and-unlock wakelock"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string p1, "acquiring wake-and-unlock"

    .line 241
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 242
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 243
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string p1, "BiometricUnlockController"

    const-string v0, "biometric acquired, grabbing biometric wakelock"

    .line 245
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mReleaseBiometricWakeLockRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3a98

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 250
    :cond_50
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .registers 5

    .line 499
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x6a1

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/16 v2, 0xb

    .line 500
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->toSubtype(Landroid/hardware/biometrics/BiometricSourceType;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 499
    invoke-virtual {v0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 502
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p1

    if-eqz p1, :cond_28

    const/4 p1, 0x1

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    :goto_29
    if-eqz p1, :cond_30

    .line 504
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mOnNoMatch:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 506
    :cond_30
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->cleanup()V

    return-void
.end method

.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;)V
    .registers 5

    const-string v0, "BiometricUnlockController#onBiometricAuthenticated"

    .line 261
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isGoingToSleep()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 263
    iput p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticatedUserId:I

    .line 264
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticatedBioSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 265
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 268
    :cond_15
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x6a1

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/16 v1, 0xa

    .line 269
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->toSubtype(Landroid/hardware/biometrics/BiometricSourceType;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 268
    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 270
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->onBiometricAuthenticated(Landroid/hardware/biometrics/BiometricSourceType;)Z

    move-result p1

    if-eqz p1, :cond_40

    .line 273
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    .line 274
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->startWakeAndUnlock(Landroid/hardware/biometrics/BiometricSourceType;)V

    goto :goto_47

    :cond_40
    const-string p0, "BiometricUnlockController"

    const-string p1, "onBiometricAuthenticated aborted by bypass controller"

    .line 276
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_47
    return-void
.end method

.method public onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .registers 6

    .line 512
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x6a1

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/16 v1, 0xf

    .line 513
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->toSubtype(Landroid/hardware/biometrics/BiometricSourceType;)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p3

    .line 514
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x6cd

    invoke-virtual {p3, v1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p3

    .line 512
    invoke-virtual {p2, p3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 516
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->canExecuteFingerprintError(I)Z

    move-result p1

    if-nez p1, :cond_2d

    return-void

    .line 519
    :cond_2d
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p1

    if-eqz p1, :cond_3b

    const/4 p1, 0x1

    goto :goto_3c

    :cond_3b
    const/4 p1, 0x0

    :goto_3c
    if-eqz p1, :cond_43

    .line 521
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mOnNoMatch:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 522
    :cond_43
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 524
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->cleanup()V

    return-void
.end method

.method public onFingerprintAuthenticated(II)V
    .registers 10

    .line 645
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    move v0, v2

    :goto_11
    if-nez v0, :cond_14

    return-void

    .line 650
    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isGoingToSleep()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 651
    iput p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticatedUserId:I

    .line 652
    iput p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mSystemMode:I

    return-void

    .line 655
    :cond_21
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 656
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->calculateMode(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 658
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unlock mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",userId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",systemMode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BiometricUnlockController"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    if-ne p1, v3, :cond_5b

    .line 660
    iput v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    :cond_5b
    if-nez v0, :cond_6d

    const-string p1, "fp wakelock: Authenticated, waking up..."

    .line 665
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-string v3, "android.policy:FINGERPRINT"

    invoke-virtual {p1, v5, v6, v3}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 676
    :cond_6d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->releaseBiometricWakeLock()V

    .line 677
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMode == "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", systemMode == "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    const/4 v3, 0x2

    if-eq p1, v1, :cond_bf

    if-eq p1, v3, :cond_bf

    const/4 v1, 0x3

    if-eq p1, v1, :cond_af

    const/4 v1, 0x5

    if-eq p1, v1, :cond_ac

    const/4 v0, 0x7

    if-eq p1, v0, :cond_a3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_a3

    goto :goto_e2

    .line 681
    :cond_a3
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->switchSystemModeByFingerPrint(I)V

    .line 684
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyKeyguardAuthenticated(Z)V

    goto :goto_e2

    .line 693
    :cond_ac
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->switchSystemModeByFingerPrint(I)V

    :cond_af
    if-nez v0, :cond_b6

    .line 696
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyDeviceWakeUpRequested()V

    .line 698
    :cond_b6
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const p2, 0x3fa66666  # 1.3f

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->animateCollapsePanels(F)V

    goto :goto_e2

    .line 707
    :cond_bf
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->switchSystemModeByFingerPrint(I)V

    .line 708
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setStatusBarFocusable(Z)V

    .line 714
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$5;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$5;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 727
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p1

    if-eqz p1, :cond_e2

    .line 728
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWakeAndUnlocking(Z)V

    .line 735
    :cond_e2
    :goto_e2
    iget p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    if-eq p1, v3, :cond_eb

    .line 736
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setForceDozeBrightness(Z)V

    .line 738
    :cond_eb
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyFpAuthModeChanged()V

    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .registers 4

    const-string p1, "BiometricUnlockController#onFinishedGoingToSleep"

    .line 391
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 392
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticatedBioSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 393
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticatedUserId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    if-eqz p1, :cond_18

    .line 396
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$BiometricUnlockController$vO1SpyH7B5eZoPEIHrO5ESmBbaI;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$BiometricUnlockController$vO1SpyH7B5eZoPEIHrO5ESmBbaI;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 398
    :cond_18
    iput v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticatedUserId:I

    const/4 p1, 0x0

    .line 399
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticatedBioSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 400
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .registers 3

    .line 380
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->resetMode()V

    const/4 p1, 0x0

    .line 381
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFadedAwayAfterWakeAndUnlock:Z

    const/4 p1, -0x1

    .line 382
    iput p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticatedUserId:I

    const/4 v0, 0x0

    .line 383
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticatedBioSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 385
    iput p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mSystemMode:I

    return-void
.end method

.method public setOnNotMatchRunnable(Ljava/lang/Runnable;)V
    .registers 2

    .line 743
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mOnNoMatch:Ljava/lang/Runnable;

    return-void
.end method

.method public setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .registers 2

    .line 203
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-void
.end method

.method public startKeyguardFadingAway()V
    .registers 5

    .line 534
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$2;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    const-wide/16 v2, 0x60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startWakeAndUnlock(I)V
    .registers 8

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startWakeAndUnlock("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricUnlockController"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 287
    iput p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    const/4 v1, 0x0

    .line 288
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHasScreenTurnedOnSinceAuthenticating:Z

    .line 289
    iget v2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_38

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->pulsingOrAod()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 294
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setForceDozeBrightness(Z)V

    .line 298
    :cond_38
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v2

    if-ne p1, v4, :cond_4c

    if-eqz v2, :cond_4c

    .line 299
    iget p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeUpDelay:I

    if-lez p1, :cond_4c

    move p1, v4

    goto :goto_4d

    :cond_4c
    move p1, v1

    .line 300
    :goto_4d
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$BiometricUnlockController$eARUOiIHQidy4dPvrf3UVu6gsv0;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$BiometricUnlockController$eARUOiIHQidy4dPvrf3UVu6gsv0;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;ZZ)V

    if-nez p1, :cond_5b

    .line 316
    iget v5, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    if-eqz v5, :cond_5b

    .line 317
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 319
    :cond_5b
    iget v5, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    packed-switch v5, :pswitch_data_d2

    :pswitch_60  #0x4
    goto :goto_c8

    :pswitch_61  #0x7, 0x8
    const-string p1, "MODE_DISMISS_BOUNCER or MODE_UNLOCK_FADING"

    .line 322
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 323
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyKeyguardAuthenticated(Z)V

    .line 325
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_c8

    :pswitch_6f  #0x3, 0x5
    const-string p1, "MODE_UNLOCK_COLLAPSING or MODE_SHOW_BOUNCER"

    .line 329
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    if-nez v0, :cond_79

    .line 331
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingShowBouncer:Z

    goto :goto_7c

    .line 333
    :cond_79
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->showBouncer()V

    .line 335
    :goto_7c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_c8

    :pswitch_80  #0x1, 0x2, 0x6
    if-ne v5, v3, :cond_8d

    const-string v0, "MODE_WAKE_AND_UNLOCK_PULSING"

    .line 341
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/statusbar/NotificationMediaManager;->updateMediaMetaData(ZZ)V

    goto :goto_9f

    :cond_8d
    if-ne v5, v4, :cond_95

    const-string v0, "MODE_WAKE_AND_UNLOCK"

    .line 345
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto :goto_9f

    :cond_95
    const-string v0, "MODE_WAKE_AND_UNLOCK_FROM_DREAM"

    .line 347
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->awakenFromDream()V

    .line 350
    :goto_9f
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setStatusBarFocusable(Z)V

    if-eqz p1, :cond_af

    .line 352
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeUpDelay:I

    int-to-long v0, v0

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b4

    .line 354
    :cond_af
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onWakeAndUnlocking()V

    .line 356
    :goto_b4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p1

    if-eqz p1, :cond_c5

    .line 357
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWakeAndUnlocking(Z)V

    .line 359
    :cond_c5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 365
    :goto_c8
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyBiometricAuthModeChanged()V

    .line 366
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    nop

    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_80  #00000001
        :pswitch_80  #00000002
        :pswitch_6f  #00000003
        :pswitch_60  #00000004
        :pswitch_6f  #00000005
        :pswitch_80  #00000006
        :pswitch_61  #00000007
        :pswitch_61  #00000008
    .end packed-switch
.end method

.method public startWakeAndUnlock(Landroid/hardware/biometrics/BiometricSourceType;)V
    .registers 2

    .line 281
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->calculateMode(Landroid/hardware/biometrics/BiometricSourceType;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->startWakeAndUnlock(I)V

    return-void
.end method

.method public unlockedByWakeAndUnlock()Z
    .registers 2

    .line 601
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v0

    if-nez v0, :cond_d

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFadedAwayAfterWakeAndUnlock:Z

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method
