.class public Lcom/android/server/power/Notifier;
.super Ljava/lang/Object;
.source "Notifier.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/Notifier$NotifierHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INTERACTIVE_STATE_ASLEEP:I = 0x2

.field private static final INTERACTIVE_STATE_AWAKE:I = 0x1

.field private static final INTERACTIVE_STATE_UNKNOWN:I = 0x0

.field private static final MSG_BROADCAST:I = 0x2

.field private static final MSG_PROFILE_TIMED_OUT:I = 0x5

.field private static final MSG_SCREEN_BRIGHTNESS_BOOST_CHANGED:I = 0x4

.field private static final MSG_USER_ACTIVITY:I = 0x1

.field private static final MSG_WIRED_CHARGING_DISCONNECTED:I = 0x7

.field private static final MSG_WIRED_CHARGING_STARTED:I = 0x6

.field private static final MSG_WIRELESS_CHARGING_STARTED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PowerManagerNotifier"

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final WIRELESS_CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

.field private static final WIRELESS_VIBRATION_AMPLITUDE:[I

.field private static final WIRELESS_VIBRATION_TIME:[J


# instance fields
.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBroadcastInProgress:Z

.field private mBroadcastStartTime:J

.field private mBroadcastedInteractiveState:I

.field private final mContext:Landroid/content/Context;

.field private final mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

.field private final mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

.field private final mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field private final mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

.field private mInteractive:Z

.field private mInteractiveChangeReason:I

.field private mInteractiveChangeStartTime:J

.field private mInteractiveChanging:Z

.field private final mLock:Ljava/lang/Object;

.field private mPendingGoToSleepBroadcast:Z

.field private mPendingInteractiveState:I

.field private mPendingWakeUpBroadcast:Z

.field private final mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field private final mScreeBrightnessBoostChangedDone:Landroid/content/BroadcastReceiver;

.field private final mScreenBrightnessBoostIntent:Landroid/content/Intent;

.field private final mScreenOffIntent:Landroid/content/Intent;

.field private final mScreenOnIntent:Landroid/content/Intent;

.field private final mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private final mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private final mSuspendWhenScreenOffDueToProximityConfig:Z

.field private final mTrustManager:Landroid/app/trust/TrustManager;

.field private mUserActivityPending:Z

.field private final mVibrator:Landroid/os/Vibrator;

.field private final mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 101
    const/16 v0, 0x10

    new-array v1, v0, [J

    fill-array-data v1, :array_2c

    sput-object v1, Lcom/android/server/power/Notifier;->WIRELESS_VIBRATION_TIME:[J

    .line 105
    new-array v0, v0, [I

    fill-array-data v0, :array_70

    sput-object v0, Lcom/android/server/power/Notifier;->WIRELESS_VIBRATION_AMPLITUDE:[I

    .line 109
    sget-object v0, Lcom/android/server/power/Notifier;->WIRELESS_VIBRATION_TIME:[J

    sget-object v1, Lcom/android/server/power/Notifier;->WIRELESS_VIBRATION_AMPLITUDE:[I

    .line 110
    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/Notifier;->WIRELESS_CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    .line 112
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 113
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/Notifier;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 112
    return-void

    :array_2c
    .array-data 8
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
    .end array-data

    :array_70
    .array-data 4
        0x1
        0x4
        0xb
        0x19
        0x2c
        0x43
        0x5b
        0x72
        0x7b
        0x67
        0x4f
        0x37
        0x22
        0x11
        0x7
        0x2
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/policy/WindowManagerPolicy;)V
    .registers 8

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    .line 761
    new-instance v1, Lcom/android/server/power/Notifier$6;

    invoke-direct {v1, p0}, Lcom/android/server/power/Notifier$6;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mScreeBrightnessBoostChangedDone:Landroid/content/BroadcastReceiver;

    .line 782
    new-instance v1, Lcom/android/server/power/Notifier$7;

    invoke-direct {v1, p0}, Lcom/android/server/power/Notifier$7;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 805
    new-instance v1, Lcom/android/server/power/Notifier$8;

    invoke-direct {v1, p0}, Lcom/android/server/power/Notifier$8;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 167
    iput-object p2, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    .line 168
    iput-object p3, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 169
    iget-object p3, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/AppOpsManager;

    iput-object p3, p0, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    .line 170
    iput-object p4, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 171
    iput-object p5, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 172
    const-class p3, Landroid/app/ActivityManagerInternal;

    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityManagerInternal;

    iput-object p3, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 173
    const-class p3, Landroid/hardware/input/InputManagerInternal;

    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/input/InputManagerInternal;

    iput-object p3, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 174
    const-class p3, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    iput-object p3, p0, Lcom/android/server/power/Notifier;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 175
    const-class p3, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object p3, p0, Lcom/android/server/power/Notifier;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 176
    iget-object p3, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    const-class p4, Landroid/app/trust/TrustManager;

    invoke-virtual {p3, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/trust/TrustManager;

    iput-object p3, p0, Lcom/android/server/power/Notifier;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 177
    iget-object p3, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    const-class p4, Landroid/os/Vibrator;

    invoke-virtual {p3, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Vibrator;

    iput-object p3, p0, Lcom/android/server/power/Notifier;->mVibrator:Landroid/os/Vibrator;

    .line 178
    iget-object p3, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    const-class p4, Landroid/media/AudioManager;

    invoke-virtual {p3, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/AudioManager;

    iput-object p3, p0, Lcom/android/server/power/Notifier;->mAudioManager:Landroid/media/AudioManager;

    .line 180
    new-instance p3, Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-direct {p3, p0, p1}, Lcom/android/server/power/Notifier$NotifierHandler;-><init>(Lcom/android/server/power/Notifier;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    .line 181
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.intent.action.SCREEN_ON"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    .line 182
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    const/high16 p3, 0x50200000

    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 185
    new-instance p1, Landroid/content/Intent;

    const-string p4, "android.intent.action.SCREEN_OFF"

    invoke-direct {p1, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    .line 186
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 189
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.os.action.SCREEN_BRIGHTNESS_BOOST_CHANGED"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/power/Notifier;->mScreenBrightnessBoostIntent:Landroid/content/Intent;

    .line 191
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mScreenBrightnessBoostIntent:Landroid/content/Intent;

    const/high16 p3, 0x50000000

    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 194
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x11100df

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/power/Notifier;->mSuspendWhenScreenOffDueToProximityConfig:Z

    .line 199
    :try_start_c4
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p1, v0}, Lcom/android/internal/app/IBatteryStats;->noteInteractive(Z)V
    :try_end_c9
    .catch Landroid/os/RemoteException; {:try_start_c4 .. :try_end_c9} :catch_ca

    goto :goto_cb

    .line 200
    :catch_ca
    move-exception p1

    :goto_cb
    nop

    .line 201
    const/16 p1, 0x21

    invoke-static {p1, v0}, Landroid/util/StatsLog;->write(II)I

    .line 203
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/Notifier;)Landroid/app/ActivityManagerInternal;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/power/Notifier;)I
    .registers 1

    .line 84
    iget p0, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeReason:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/server/power/Notifier;I)V
    .registers 2

    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier;->lockProfile(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/power/Notifier;I)V
    .registers 2

    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier;->showWiredChargingStarted(I)V

    return-void
.end method

.method static synthetic access$200(I)I
    .registers 1

    .line 84
    invoke-static {p0}, Lcom/android/server/power/Notifier;->translateOnReason(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/power/Notifier;)Lcom/android/server/policy/WindowManagerPolicy;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/power/Notifier;)Lcom/android/server/power/SuspendBlocker;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/power/Notifier;)J
    .registers 3

    .line 84
    iget-wide v0, p0, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/server/power/Notifier;)V
    .registers 1

    .line 84
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/power/Notifier;)V
    .registers 1

    .line 84
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendUserActivity()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/power/Notifier;II)V
    .registers 3

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/Notifier;->showWirelessChargingStarted(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/power/Notifier;)V
    .registers 1

    .line 84
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendBrightnessBoostChangedBroadcast()V

    return-void
.end method

.method private finishPendingBroadcastLocked()V
    .registers 2

    .line 696
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    .line 697
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 698
    return-void
.end method

.method private getBatteryStatsWakeLockMonitorType(I)I
    .registers 5

    .line 348
    const v0, 0xffff

    and-int/2addr p1, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_28

    const/4 v2, 0x6

    if-eq p1, v2, :cond_27

    const/16 v2, 0xa

    if-eq p1, v2, :cond_27

    const/16 v1, 0x20

    const/4 v2, -0x1

    if-eq p1, v1, :cond_21

    const/16 v0, 0x40

    if-eq p1, v0, :cond_20

    const/16 v0, 0x80

    if-eq p1, v0, :cond_1d

    .line 372
    return v2

    .line 363
    :cond_1d
    const/16 p1, 0x12

    return p1

    .line 369
    :cond_20
    return v2

    .line 357
    :cond_21
    iget-boolean p1, p0, Lcom/android/server/power/Notifier;->mSuspendWhenScreenOffDueToProximityConfig:Z

    if-eqz p1, :cond_26

    .line 358
    return v2

    .line 360
    :cond_26
    return v0

    .line 354
    :cond_27
    return v1

    .line 350
    :cond_28
    return v0
.end method

.method private handleEarlyInteractiveChange()V
    .registers 5

    .line 446
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 447
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    if-eqz v1, :cond_1a

    .line 449
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v2, Lcom/android/server/power/Notifier$2;

    invoke-direct {v2, p0}, Lcom/android/server/power/Notifier$2;-><init>(Lcom/android/server/power/Notifier;)V

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 458
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    .line 459
    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 460
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V

    goto :goto_2a

    .line 464
    :cond_1a
    iget v1, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeReason:I

    invoke-static {v1}, Lcom/android/server/power/Notifier;->translateOffReason(I)I

    move-result v1

    .line 465
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v3, Lcom/android/server/power/Notifier$3;

    invoke-direct {v3, p0, v1}, Lcom/android/server/power/Notifier$3;-><init>(Lcom/android/server/power/Notifier;I)V

    invoke-virtual {v2, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 472
    :goto_2a
    monitor-exit v0

    .line 473
    return-void

    .line 472
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private handleLateInteractiveChange()V
    .registers 7

    .line 481
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 483
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeStartTime:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    .line 484
    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    if-eqz v2, :cond_20

    .line 486
    iget v2, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeReason:I

    invoke-static {v2}, Lcom/android/server/power/Notifier;->translateOnReason(I)I

    move-result v2

    .line 487
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v4, Lcom/android/server/power/Notifier$4;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/server/power/Notifier$4;-><init>(Lcom/android/server/power/Notifier;II)V

    invoke-virtual {v3, v4}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 501
    goto :goto_45

    .line 509
    :cond_20
    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2d

    .line 510
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 511
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v2, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->removeMessages(I)V

    .line 515
    :cond_2d
    iget v2, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeReason:I

    invoke-static {v2}, Lcom/android/server/power/Notifier;->translateOffReason(I)I

    move-result v2

    .line 516
    iget-object v4, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v5, Lcom/android/server/power/Notifier$5;

    invoke-direct {v5, p0, v2, v1}, Lcom/android/server/power/Notifier$5;-><init>(Lcom/android/server/power/Notifier;II)V

    invoke-virtual {v4, v5}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 532
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    .line 533
    iput-boolean v3, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 534
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V

    .line 536
    :goto_45
    monitor-exit v0

    .line 537
    return-void

    .line 536
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw v1
.end method

.method private isChargingFeedbackEnabled(I)Z
    .registers 6

    .line 859
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "charging_sounds_enabled"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    move p1, v1

    goto :goto_13

    :cond_12
    move p1, v0

    .line 861
    :goto_13
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "zen_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_24

    move v2, v1

    goto :goto_25

    :cond_24
    move v2, v0

    .line 864
    :goto_25
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v3

    if-nez v3, :cond_2f

    move v3, v1

    goto :goto_30

    :cond_2f
    move v3, v0

    .line 866
    :goto_30
    if-eqz p1, :cond_37

    if-eqz v2, :cond_37

    if-nez v3, :cond_37

    move v0, v1

    :cond_37
    return v0
.end method

.method private lockProfile(I)V
    .registers 4

    .line 847
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mTrustManager:Landroid/app/trust/TrustManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    .line 848
    return-void
.end method

.method private playChargingStartedFeedback(I)V
    .registers 4

    .line 818
    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier;->playChargingStartedVibration(I)V

    .line 819
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "power_notifications_ringtone"

    invoke-static {v0, v1}, Llineageos/providers/LineageSettings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 821
    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier;->isChargingFeedbackEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_36

    if-eqz v0, :cond_36

    const-string/jumbo p1, "silent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    .line 822
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 823
    if-eqz p1, :cond_36

    .line 824
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p1

    .line 825
    if-eqz p1, :cond_36

    .line 826
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 827
    invoke-virtual {p1}, Landroid/media/Ringtone;->play()V

    .line 831
    :cond_36
    return-void
.end method

.method private playChargingStartedVibration(I)V
    .registers 5

    .line 851
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "power_notifications_vibrate"

    invoke-static {v0, v2, v1}, Llineageos/providers/LineageSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_12

    move v1, v2

    .line 853
    :cond_12
    if-eqz v1, :cond_23

    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier;->isChargingFeedbackEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 854
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mVibrator:Landroid/os/Vibrator;

    sget-object v0, Lcom/android/server/power/Notifier;->WIRELESS_CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    sget-object v1, Lcom/android/server/power/Notifier;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    .line 856
    :cond_23
    return-void
.end method

.method private sendBrightnessBoostChangedBroadcast()V
    .registers 10

    .line 757
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenBrightnessBoostIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/power/Notifier;->mScreeBrightnessBoostChangedDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 759
    return-void
.end method

.method private sendGoToSleepBroadcast()V
    .registers 11

    .line 796
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 797
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_34

    .line 800
    :cond_1a
    const/16 v0, 0xaa7

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 801
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    .line 803
    :goto_34
    return-void
.end method

.method private sendNextBroadcast()V
    .registers 6

    .line 712
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 713
    :try_start_3
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_e

    .line 715
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 716
    iput v3, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    goto :goto_40

    .line 717
    :cond_e
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    if-ne v1, v3, :cond_2a

    .line 719
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    const/4 v4, 0x2

    if-nez v1, :cond_25

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_25

    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-ne v1, v4, :cond_20

    goto :goto_25

    .line 724
    :cond_20
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->finishPendingBroadcastLocked()V

    .line 725
    monitor-exit v0

    return-void

    .line 721
    :cond_25
    :goto_25
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 722
    iput v4, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    goto :goto_40

    .line 729
    :cond_2a
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_3c

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_3c

    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-ne v1, v3, :cond_37

    goto :goto_3c

    .line 734
    :cond_37
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->finishPendingBroadcastLocked()V

    .line 735
    monitor-exit v0

    return-void

    .line 731
    :cond_3c
    :goto_3c
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 732
    iput v3, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    .line 739
    :goto_40
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    .line 740
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    .line 741
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_58

    .line 743
    const/16 v0, 0xaa5

    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 745
    if-ne v1, v3, :cond_54

    .line 746
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendWakeUpBroadcast()V

    goto :goto_57

    .line 748
    :cond_54
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendGoToSleepBroadcast()V

    .line 750
    :goto_57
    return-void

    .line 741
    :catchall_58
    move-exception v1

    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v1
.end method

.method private sendUserActivity()V
    .registers 3

    .line 701
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 702
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-nez v1, :cond_9

    .line 703
    monitor-exit v0

    return-void

    .line 705
    :cond_9
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 706
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_13

    .line 707
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->userActivity()V

    .line 708
    return-void

    .line 706
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private sendWakeUpBroadcast()V
    .registers 11

    .line 773
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 774
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_33

    .line 777
    :cond_1a
    const/16 v0, 0xaa7

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 778
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    .line 780
    :goto_33
    return-void
.end method

.method private showWiredChargingStarted(I)V
    .registers 2

    .line 842
    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier;->playChargingStartedFeedback(I)V

    .line 843
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {p1}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 844
    return-void
.end method

.method private showWirelessChargingStarted(II)V
    .registers 3

    .line 834
    invoke-direct {p0, p2}, Lcom/android/server/power/Notifier;->playChargingStartedFeedback(I)V

    .line 835
    iget-object p2, p0, Lcom/android/server/power/Notifier;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz p2, :cond_a

    .line 836
    invoke-interface {p2, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showChargingAnimation(I)V

    .line 838
    :cond_a
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {p1}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 839
    return-void
.end method

.method private static translateOffReason(I)I
    .registers 2

    .line 540
    const/4 v0, 0x1

    if-eq p0, v0, :cond_9

    const/4 v0, 0x2

    if-eq p0, v0, :cond_7

    .line 546
    return v0

    .line 544
    :cond_7
    const/4 p0, 0x3

    return p0

    .line 542
    :cond_9
    return v0
.end method

.method private static translateOnReason(I)I
    .registers 1

    .line 551
    packed-switch p0, :pswitch_data_a

    .line 563
    :pswitch_3  #0x8
    const/4 p0, 0x3

    return p0

    .line 561
    :pswitch_5  #0x2
    const/4 p0, 0x2

    return p0

    .line 559
    :pswitch_7  #0x1, 0x3, 0x4, 0x5, 0x6, 0x7, 0x9
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7  #00000001
        :pswitch_5  #00000002
        :pswitch_7  #00000003
        :pswitch_7  #00000004
        :pswitch_7  #00000005
        :pswitch_7  #00000006
        :pswitch_7  #00000007
        :pswitch_3  #00000008
        :pswitch_7  #00000009
    .end packed-switch
.end method

.method private updatePendingBroadcastLocked()V
    .registers 4

    .line 683
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    if-nez v0, :cond_2b

    iget v0, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-eqz v0, :cond_2b

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_14

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_14

    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    if-eq v0, v1, :cond_2b

    .line 687
    :cond_14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    .line 688
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 689
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 690
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 691
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 693
    :cond_2b
    return-void
.end method


# virtual methods
.method public onLongPartialWakeLockFinish(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 11

    .line 268
    if-eqz p3, :cond_e

    .line 269
    :try_start_2
    iget-object p2, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p2, p1, p4, p3}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    .line 270
    const/16 p2, 0xb

    const/4 v0, 0x0

    invoke-static {p2, p3, p1, p4, v0}, Landroid/util/StatsLog;->write(ILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1d

    .line 273
    :cond_e
    iget-object p3, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p3, p1, p4, p2}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V

    .line 274
    const/16 v0, 0xb

    const/4 v2, 0x0

    const/4 v5, 0x0

    move v1, p2

    move-object v3, p1

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1d} :catch_1e

    .line 280
    :goto_1d
    goto :goto_1f

    .line 278
    :catch_1e
    move-exception p1

    .line 281
    :goto_1f
    return-void
.end method

.method public onLongPartialWakeLockStart(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 11

    .line 245
    if-eqz p3, :cond_e

    .line 246
    :try_start_2
    iget-object p2, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p2, p1, p4, p3}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    .line 247
    const/16 p2, 0xb

    const/4 v0, 0x1

    invoke-static {p2, p3, p1, p4, v0}, Landroid/util/StatsLog;->write(ILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1d

    .line 250
    :cond_e
    iget-object p3, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p3, p1, p4, p2}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V

    .line 251
    const/16 v0, 0xb

    const/4 v2, 0x0

    const/4 v5, 0x1

    move v1, p2

    move-object v3, p1

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1d} :catch_1e

    .line 257
    :goto_1d
    goto :goto_1f

    .line 255
    :catch_1e
    move-exception p1

    .line 258
    :goto_1f
    return-void
.end method

.method public onProfileTimeout(I)V
    .registers 4

    .line 630
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 631
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 632
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 633
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {p1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 634
    return-void
.end method

.method public onScreenBrightnessBoostChanged()V
    .registers 3

    .line 575
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 576
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 577
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 578
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 579
    return-void
.end method

.method public onUserActivity(II)V
    .registers 4

    .line 590
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p2, p1}, Lcom/android/internal/app/IBatteryStats;->noteUserActivity(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 593
    goto :goto_7

    .line 591
    :catch_6
    move-exception p1

    .line 595
    :goto_7
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 596
    :try_start_a
    iget-boolean p2, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-nez p2, :cond_1f

    .line 597
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 598
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v0, p2}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 599
    invoke-virtual {v0, p2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 600
    iget-object p2, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {p2, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 602
    :cond_1f
    monitor-exit p1

    .line 603
    return-void

    .line 602
    :catchall_21
    move-exception p2

    monitor-exit p1
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_21

    throw p2
.end method

.method public onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 15

    .line 217
    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v5

    .line 218
    if-ltz v5, :cond_31

    .line 220
    const/16 v0, 0x3e8

    if-ne p4, v0, :cond_11

    const/high16 v0, 0x40000000  # 2.0f

    and-int/2addr p1, v0

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    move v6, p1

    .line 222
    if-eqz p6, :cond_1f

    .line 223
    :try_start_15
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object v1, p6

    move v2, p5

    move-object v3, p2

    move-object v4, p7

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_2f

    .line 226
    :cond_1f
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move v1, p4

    move v2, p5

    move-object v3, p2

    move-object v4, p7

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V

    .line 229
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    const/16 p2, 0x28

    invoke-virtual {p1, p2, p4, p3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_2f} :catch_30

    .line 233
    :goto_2f
    goto :goto_31

    .line 231
    :catch_30
    move-exception p1

    .line 235
    :cond_31
    :goto_31
    return-void
.end method

.method public onWakeLockChanging(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 27

    .line 291
    move-object v0, p0

    move/from16 v1, p8

    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v5

    .line 292
    invoke-direct {p0, v1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v10

    .line 293
    if-eqz p6, :cond_39

    if-eqz p13, :cond_39

    if-ltz v5, :cond_39

    if-ltz v10, :cond_39

    .line 302
    const/16 v2, 0x3e8

    move/from16 v3, p11

    if-ne v3, v2, :cond_20

    const/high16 v2, 0x40000000  # 2.0f

    and-int/2addr v1, v2

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    move v11, v1

    .line 305
    :try_start_22
    iget-object v0, v0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v1, p6

    move/from16 v2, p5

    move-object v3, p2

    move-object/from16 v4, p7

    move-object/from16 v6, p13

    move/from16 v7, p12

    move-object/from16 v8, p9

    move-object/from16 v9, p14

    invoke-interface/range {v0 .. v11}, Lcom/android/internal/app/IBatteryStats;->noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_36} :catch_37

    .line 310
    goto :goto_38

    .line 308
    :catch_37
    move-exception v0

    .line 311
    :goto_38
    goto :goto_4f

    .line 293
    :cond_39
    move/from16 v3, p11

    .line 312
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 313
    move/from16 p1, p8

    move-object/from16 p2, p9

    move-object/from16 p3, p10

    move/from16 p4, p11

    move/from16 p5, p12

    move-object/from16 p6, p13

    move-object/from16 p7, p14

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 316
    :goto_4f
    return-void
.end method

.method public onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 14

    .line 330
    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v5

    .line 331
    if-ltz v5, :cond_24

    .line 333
    if-eqz p6, :cond_12

    .line 334
    :try_start_8
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object v1, p6

    move v2, p5

    move-object v3, p2

    move-object v4, p7

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_22

    .line 337
    :cond_12
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move v1, p4

    move v2, p5

    move-object v3, p2

    move-object v4, p7

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V

    .line 339
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    const/16 p2, 0x28

    invoke-virtual {p1, p2, p4, p3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_22} :catch_23

    .line 343
    :goto_22
    goto :goto_24

    .line 341
    :catch_23
    move-exception p1

    .line 345
    :cond_24
    :goto_24
    return-void
.end method

.method public onWakeUp(ILjava/lang/String;ILjava/lang/String;I)V
    .registers 6

    .line 617
    :try_start_0
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p1, p2, p3}, Lcom/android/internal/app/IBatteryStats;->noteWakeUp(Ljava/lang/String;I)V

    .line 618
    if-eqz p4, :cond_e

    .line 619
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    const/16 p2, 0x3d

    invoke-virtual {p1, p2, p5, p4}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 623
    :cond_e
    goto :goto_10

    .line 621
    :catch_f
    move-exception p1

    .line 624
    :goto_10
    return-void
.end method

.method public onWakefulnessChangeFinished()V
    .registers 2

    .line 435
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mInteractiveChanging:Z

    if-eqz v0, :cond_a

    .line 436
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mInteractiveChanging:Z

    .line 437
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->handleLateInteractiveChange()V

    .line 439
    :cond_a
    return-void
.end method

.method public onWakefulnessChangeStarted(IIJ)V
    .registers 8

    .line 383
    invoke-static {p1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v0

    .line 391
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v2, Lcom/android/server/power/Notifier$1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/power/Notifier$1;-><init>(Lcom/android/server/power/Notifier;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 400
    iget-boolean p1, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    if-eq p1, v0, :cond_41

    .line 402
    iget-boolean p1, p0, Lcom/android/server/power/Notifier;->mInteractiveChanging:Z

    if-eqz p1, :cond_19

    .line 403
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->handleLateInteractiveChange()V

    .line 407
    :cond_19
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {p1, v0}, Landroid/hardware/input/InputManagerInternal;->setInteractive(Z)V

    .line 408
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    invoke-virtual {p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->setInteractive(Z)V

    .line 412
    :try_start_23
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p1, v0}, Lcom/android/internal/app/IBatteryStats;->noteInteractive(Z)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_28} :catch_29

    goto :goto_2a

    .line 413
    :catch_29
    move-exception p1

    :goto_2a
    nop

    .line 414
    const/16 p1, 0x21

    .line 415
    const/4 v1, 0x1

    if-eqz v0, :cond_32

    move v2, v1

    goto :goto_33

    .line 416
    :cond_32
    const/4 v2, 0x0

    .line 414
    :goto_33
    invoke-static {p1, v2}, Landroid/util/StatsLog;->write(II)I

    .line 419
    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    .line 420
    iput p2, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeReason:I

    .line 421
    iput-wide p3, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeStartTime:J

    .line 422
    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mInteractiveChanging:Z

    .line 423
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->handleEarlyInteractiveChange()V

    .line 425
    :cond_41
    return-void
.end method

.method public onWiredChargingDisconnected(I)V
    .registers 4

    .line 675
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 676
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 677
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 678
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 679
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {p1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 680
    return-void
.end method

.method public onWiredChargingStarted(I)V
    .registers 4

    .line 660
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 661
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 662
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 663
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 664
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {p1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 665
    return-void
.end method

.method public onWirelessChargingStarted(II)V
    .registers 5

    .line 644
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 645
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 646
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 647
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 648
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 649
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {p1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 650
    return-void
.end method
