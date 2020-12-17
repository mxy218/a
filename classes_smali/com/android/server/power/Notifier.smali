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

.field private static final MSG_DIM_STATE_CHANGED:I = 0x7

.field private static final MSG_PRE_DIM:I = 0x8

.field private static final MSG_PROFILE_TIMED_OUT:I = 0x5

.field private static final MSG_SCREEN_BRIGHTNESS_BOOST_CHANGED:I = 0x4

.field private static final MSG_USER_ACTIVITY:I = 0x1

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

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBroadcastInProgress:Z

.field private mBroadcastStartTime:J

.field private mBroadcastedInteractiveState:I

.field private final mContext:Landroid/content/Context;

.field private final mDimStateChangedIntent:Landroid/content/Intent;

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

.field private final mPreDimIntent:Landroid/content/Intent;

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

    .line 107
    const/16 v0, 0x10

    new-array v1, v0, [J

    fill-array-data v1, :array_2c

    sput-object v1, Lcom/android/server/power/Notifier;->WIRELESS_VIBRATION_TIME:[J

    .line 111
    new-array v0, v0, [I

    fill-array-data v0, :array_70

    sput-object v0, Lcom/android/server/power/Notifier;->WIRELESS_VIBRATION_AMPLITUDE:[I

    .line 115
    sget-object v0, Lcom/android/server/power/Notifier;->WIRELESS_VIBRATION_TIME:[J

    sget-object v1, Lcom/android/server/power/Notifier;->WIRELESS_VIBRATION_AMPLITUDE:[I

    .line 116
    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/Notifier;->WIRELESS_CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    .line 118
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 119
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/Notifier;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 118
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
    .registers 11
    .param p1, "looper"  # Landroid/os/Looper;
    .param p2, "context"  # Landroid/content/Context;
    .param p3, "batteryStats"  # Lcom/android/internal/app/IBatteryStats;
    .param p4, "suspendBlocker"  # Lcom/android/server/power/SuspendBlocker;
    .param p5, "policy"  # Lcom/android/server/policy/WindowManagerPolicy;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    .line 789
    new-instance v1, Lcom/android/server/power/Notifier$6;

    invoke-direct {v1, p0}, Lcom/android/server/power/Notifier$6;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mScreeBrightnessBoostChangedDone:Landroid/content/BroadcastReceiver;

    .line 813
    new-instance v1, Lcom/android/server/power/Notifier$7;

    invoke-direct {v1, p0}, Lcom/android/server/power/Notifier$7;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 839
    new-instance v1, Lcom/android/server/power/Notifier$8;

    invoke-direct {v1, p0}, Lcom/android/server/power/Notifier$8;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 177
    iput-object p2, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    .line 178
    iput-object p3, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 179
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    .line 180
    iput-object p4, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 181
    iput-object p5, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 182
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 183
    const-class v1, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManagerInternal;

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 184
    const-class v1, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 185
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 186
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/trust/TrustManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/TrustManager;

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 187
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/Vibrator;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mVibrator:Landroid/os/Vibrator;

    .line 189
    new-instance v1, Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/Notifier$NotifierHandler;-><init>(Lcom/android/server/power/Notifier;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    .line 190
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    .line 191
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    const/high16 v2, 0x50200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 194
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    .line 195
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 198
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.os.action.SCREEN_BRIGHTNESS_BOOST_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mScreenBrightnessBoostIntent:Landroid/content/Intent;

    .line 200
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenBrightnessBoostIntent:Landroid/content/Intent;

    const/high16 v2, 0x50000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 204
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.flyme.dim.state.changed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mDimStateChangedIntent:Landroid/content/Intent;

    .line 205
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mDimStateChangedIntent:Landroid/content/Intent;

    const/high16 v2, 0x11000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 207
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mDimStateChangedIntent:Landroid/content/Intent;

    const-string v3, "com.meizu.suggestion"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.flyme.pre.dim"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mPreDimIntent:Landroid/content/Intent;

    .line 210
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mPreDimIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 212
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mPreDimIntent:Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11100db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mSuspendWhenScreenOffDueToProximityConfig:Z

    .line 220
    :try_start_e2
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, v0}, Lcom/android/internal/app/IBatteryStats;->noteInteractive(Z)V
    :try_end_e7
    .catch Landroid/os/RemoteException; {:try_start_e2 .. :try_end_e7} :catch_e8

    goto :goto_e9

    .line 221
    :catch_e8
    move-exception v1

    :goto_e9
    nop

    .line 222
    const/16 v1, 0x21

    invoke-static {v1, v0}, Landroid/util/StatsLog;->write(II)I

    .line 224
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/Notifier;)Landroid/app/ActivityManagerInternal;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/Notifier;

    .line 87
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/power/Notifier;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/Notifier;

    .line 87
    iget v0, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeReason:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/Notifier;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/Notifier;
    .param p1, "x1"  # I

    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier;->lockProfile(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/power/Notifier;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/Notifier;
    .param p1, "x1"  # I

    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier;->showWiredChargingStarted(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/power/Notifier;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/Notifier;
    .param p1, "x1"  # I

    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier;->sendDimStateChangedBroadcast(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/power/Notifier;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/Notifier;
    .param p1, "x1"  # I

    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier;->sendPreDimBroadcast(I)V

    return-void
.end method

.method static synthetic access$200(I)I
    .registers 2
    .param p0, "x0"  # I

    .line 87
    invoke-static {p0}, Lcom/android/server/power/Notifier;->translateOnReason(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/power/Notifier;)Lcom/android/server/policy/WindowManagerPolicy;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/Notifier;

    .line 87
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/power/Notifier;)Lcom/android/server/power/SuspendBlocker;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/Notifier;

    .line 87
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/power/Notifier;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/power/Notifier;

    .line 87
    iget-wide v0, p0, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/server/power/Notifier;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/power/Notifier;

    .line 87
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/power/Notifier;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/power/Notifier;

    .line 87
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendUserActivity()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/power/Notifier;II)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/power/Notifier;
    .param p1, "x1"  # I
    .param p2, "x2"  # I

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/Notifier;->showWirelessChargingStarted(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/power/Notifier;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/power/Notifier;

    .line 87
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendBrightnessBoostChangedBroadcast()V

    return-void
.end method

.method private finishPendingBroadcastLocked()V
    .registers 2

    .line 724
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    .line 725
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 726
    return-void
.end method

.method private getBatteryStatsWakeLockMonitorType(I)I
    .registers 6
    .param p1, "flags"  # I

    .line 369
    const v0, 0xffff

    and-int/2addr v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_28

    const/4 v3, 0x6

    if-eq v0, v3, :cond_27

    const/16 v3, 0xa

    if-eq v0, v3, :cond_27

    const/16 v2, 0x20

    const/4 v3, -0x1

    if-eq v0, v2, :cond_21

    const/16 v1, 0x40

    if-eq v0, v1, :cond_20

    const/16 v1, 0x80

    if-eq v0, v1, :cond_1d

    .line 393
    return v3

    .line 384
    :cond_1d
    const/16 v0, 0x12

    return v0

    .line 390
    :cond_20
    return v3

    .line 378
    :cond_21
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mSuspendWhenScreenOffDueToProximityConfig:Z

    if-eqz v0, :cond_26

    .line 379
    return v3

    .line 381
    :cond_26
    return v1

    .line 375
    :cond_27
    return v2

    .line 371
    :cond_28
    return v1
.end method

.method private handleEarlyInteractiveChange()V
    .registers 5

    .line 467
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 468
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    if-eqz v1, :cond_1a

    .line 470
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v2, Lcom/android/server/power/Notifier$2;

    invoke-direct {v2, p0}, Lcom/android/server/power/Notifier$2;-><init>(Lcom/android/server/power/Notifier;)V

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 479
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    .line 480
    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 481
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V

    goto :goto_2a

    .line 485
    :cond_1a
    iget v1, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeReason:I

    invoke-static {v1}, Lcom/android/server/power/Notifier;->translateOffReason(I)I

    move-result v1

    .line 486
    .local v1, "why":I
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v3, Lcom/android/server/power/Notifier$3;

    invoke-direct {v3, p0, v1}, Lcom/android/server/power/Notifier$3;-><init>(Lcom/android/server/power/Notifier;I)V

    invoke-virtual {v2, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 493
    .end local v1  # "why":I
    :goto_2a
    monitor-exit v0

    .line 494
    return-void

    .line 493
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private handleLateInteractiveChange()V
    .registers 7

    .line 502
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 504
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeStartTime:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    .line 505
    .local v1, "interactiveChangeLatency":I
    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    if-eqz v2, :cond_21

    .line 507
    iget v2, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeReason:I

    invoke-static {v2}, Lcom/android/server/power/Notifier;->translateOnReason(I)I

    move-result v2

    .line 508
    .local v2, "why":I
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v4, Lcom/android/server/power/Notifier$4;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/server/power/Notifier$4;-><init>(Lcom/android/server/power/Notifier;II)V

    invoke-virtual {v3, v4}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 522
    nop

    .end local v2  # "why":I
    goto :goto_46

    .line 530
    :cond_21
    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2e

    .line 531
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 532
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v2, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->removeMessages(I)V

    .line 536
    :cond_2e
    iget v2, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeReason:I

    invoke-static {v2}, Lcom/android/server/power/Notifier;->translateOffReason(I)I

    move-result v2

    .line 537
    .restart local v2  # "why":I
    iget-object v4, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v5, Lcom/android/server/power/Notifier$5;

    invoke-direct {v5, p0, v2, v1}, Lcom/android/server/power/Notifier$5;-><init>(Lcom/android/server/power/Notifier;II)V

    invoke-virtual {v4, v5}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 553
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    .line 554
    iput-boolean v3, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 555
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V

    .line 557
    .end local v1  # "interactiveChangeLatency":I
    .end local v2  # "why":I
    :goto_46
    monitor-exit v0

    .line 558
    return-void

    .line 557
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method private isChargingFeedbackEnabled(I)Z
    .registers 7
    .param p1, "userId"  # I

    .line 919
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "charging_sounds_enabled"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v2

    .line 921
    .local v0, "enabled":Z
    :goto_13
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "zen_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_24

    move v3, v1

    goto :goto_25

    :cond_24
    move v3, v2

    .line 924
    .local v3, "dndOff":Z
    :goto_25
    if-eqz v0, :cond_2a

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v1, v2

    :goto_2b
    return v1
.end method

.method private lockProfile(I)V
    .registers 4
    .param p1, "userId"  # I

    .line 893
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mTrustManager:Landroid/app/trust/TrustManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    .line 894
    return-void
.end method

.method private playChargingStartedFeedback(I)V
    .registers 6
    .param p1, "userId"  # I

    .line 864
    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier;->playChargingStartedVibration(I)V

    .line 865
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "plugin_sound"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 867
    .local v0, "soundPath":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier;->isChargingFeedbackEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_3e

    if-eqz v0, :cond_3e

    .line 868
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 869
    .local v1, "soundUri":Landroid/net/Uri;
    if-eqz v1, :cond_3e

    .line 870
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    .line 871
    .local v2, "sfx":Landroid/media/Ringtone;
    if-eqz v2, :cond_3e

    .line 872
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 873
    invoke-virtual {v2}, Landroid/media/Ringtone;->play()V

    .line 877
    .end local v1  # "soundUri":Landroid/net/Uri;
    .end local v2  # "sfx":Landroid/media/Ringtone;
    :cond_3e
    return-void
.end method

.method private playChargingStartedVibration(I)V
    .registers 5
    .param p1, "userId"  # I

    .line 897
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "charging_vibration_enabled"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    move v0, v1

    .line 899
    .local v0, "vibrateEnabled":Z
    if-eqz v0, :cond_17

    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier;->isChargingFeedbackEnabled(I)Z

    .line 916
    :cond_17
    return-void
.end method

.method private sendBrightnessBoostChangedBroadcast()V
    .registers 10

    .line 785
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

    .line 787
    return-void
.end method

.method private sendDimStateChangedBroadcast(I)V
    .registers 4
    .param p1, "state"  # I

    .line 850
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mDimStateChangedIntent:Landroid/content/Intent;

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 851
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mDimStateChangedIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 852
    return-void
.end method

.method private sendGoToSleepBroadcast()V
    .registers 13

    .line 827
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 829
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    iget v1, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeReason:I

    const-string/jumbo v2, "reason"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 831
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v8, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3e

    .line 834
    :cond_24
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

    .line 835
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    .line 837
    :goto_3e
    return-void
.end method

.method private sendNextBroadcast()V
    .registers 6

    .line 740
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 741
    :try_start_3
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_e

    .line 743
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 744
    iput v3, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    goto :goto_40

    .line 745
    :cond_e
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    if-ne v1, v3, :cond_2a

    .line 747
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    const/4 v4, 0x2

    if-nez v1, :cond_25

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_25

    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-ne v1, v4, :cond_20

    goto :goto_25

    .line 752
    :cond_20
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->finishPendingBroadcastLocked()V

    .line 753
    monitor-exit v0

    return-void

    .line 749
    :cond_25
    :goto_25
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 750
    iput v4, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    goto :goto_40

    .line 757
    :cond_2a
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_3c

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_3c

    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-ne v1, v3, :cond_37

    goto :goto_3c

    .line 762
    :cond_37
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->finishPendingBroadcastLocked()V

    .line 763
    monitor-exit v0

    return-void

    .line 759
    :cond_3c
    :goto_3c
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 760
    iput v3, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    .line 767
    :goto_40
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    .line 768
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    .line 769
    .local v1, "powerState":I
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_58

    .line 771
    const/16 v0, 0xaa5

    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 773
    if-ne v1, v3, :cond_54

    .line 774
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendWakeUpBroadcast()V

    goto :goto_57

    .line 776
    :cond_54
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendGoToSleepBroadcast()V

    .line 778
    :goto_57
    return-void

    .line 769
    .end local v1  # "powerState":I
    :catchall_58
    move-exception v1

    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v1
.end method

.method private sendPreDimBroadcast(I)V
    .registers 4
    .param p1, "preTime"  # I

    .line 855
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPreDimIntent:Landroid/content/Intent;

    const-string/jumbo v1, "preTime"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 856
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mPreDimIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 857
    return-void
.end method

.method private sendUserActivity()V
    .registers 3

    .line 729
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 730
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-nez v1, :cond_9

    .line 731
    monitor-exit v0

    return-void

    .line 733
    :cond_9
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 734
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_13

    .line 735
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->userActivity()V

    .line 736
    return-void

    .line 734
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private sendWakeUpBroadcast()V
    .registers 13

    .line 801
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 803
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    iget v1, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeReason:I

    const-string/jumbo v2, "reason"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 805
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v8, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3d

    .line 808
    :cond_24
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

    .line 809
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    .line 811
    :goto_3d
    return-void
.end method

.method private showWiredChargingStarted(I)V
    .registers 3
    .param p1, "userId"  # I

    .line 888
    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier;->playChargingStartedFeedback(I)V

    .line 889
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 890
    return-void
.end method

.method private showWirelessChargingStarted(II)V
    .registers 4
    .param p1, "batteryLevel"  # I
    .param p2, "userId"  # I

    .line 880
    invoke-direct {p0, p2}, Lcom/android/server/power/Notifier;->playChargingStartedFeedback(I)V

    .line 881
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v0, :cond_a

    .line 882
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showChargingAnimation(I)V

    .line 884
    :cond_a
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 885
    return-void
.end method

.method private static translateOffReason(I)I
    .registers 2
    .param p0, "reason"  # I

    .line 561
    const/4 v0, 0x1

    if-eq p0, v0, :cond_9

    const/4 v0, 0x2

    if-eq p0, v0, :cond_7

    .line 568
    return p0

    .line 565
    :cond_7
    const/4 v0, 0x3

    return v0

    .line 563
    :cond_9
    return v0
.end method

.method private static translateOnReason(I)I
    .registers 2
    .param p0, "reason"  # I

    .line 574
    packed-switch p0, :pswitch_data_c

    .line 590
    :pswitch_3  #0x8
    const/4 v0, 0x3

    return v0

    .line 587
    :pswitch_5  #0xa
    const/16 v0, 0xa

    return v0

    .line 584
    :pswitch_8  #0x2
    const/4 v0, 0x2

    return v0

    .line 582
    :pswitch_a  #0x1, 0x3, 0x4, 0x5, 0x6, 0x7, 0x9
    const/4 v0, 0x1

    return v0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_a  #00000001
        :pswitch_8  #00000002
        :pswitch_a  #00000003
        :pswitch_a  #00000004
        :pswitch_a  #00000005
        :pswitch_a  #00000006
        :pswitch_a  #00000007
        :pswitch_3  #00000008
        :pswitch_a  #00000009
        :pswitch_5  #0000000a
    .end packed-switch
.end method

.method private updatePendingBroadcastLocked()V
    .registers 4

    .line 711
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

    .line 715
    :cond_14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    .line 716
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 717
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 718
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 719
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 721
    .end local v1  # "msg":Landroid/os/Message;
    :cond_2b
    return-void
.end method


# virtual methods
.method public onDimStateChanged(I)V
    .registers 4
    .param p1, "state"  # I

    .line 696
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 697
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 698
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 699
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 700
    return-void
.end method

.method public onLongPartialWakeLockFinish(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 12
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "ownerUid"  # I
    .param p3, "workSource"  # Landroid/os/WorkSource;
    .param p4, "historyTag"  # Ljava/lang/String;

    .line 289
    if-eqz p3, :cond_e

    .line 290
    :try_start_2
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p4, p3}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    .line 291
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-static {v0, p3, p1, p4, v1}, Landroid/util/StatsLog;->write(ILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1d

    .line 294
    :cond_e
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p4, p2}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V

    .line 295
    const/16 v1, 0xb

    const/4 v3, 0x0

    const/4 v6, 0x0

    move v2, p2

    move-object v4, p1

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1d} :catch_1e

    .line 301
    :goto_1d
    goto :goto_1f

    .line 299
    :catch_1e
    move-exception v0

    .line 302
    :goto_1f
    return-void
.end method

.method public onLongPartialWakeLockStart(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 12
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "ownerUid"  # I
    .param p3, "workSource"  # Landroid/os/WorkSource;
    .param p4, "historyTag"  # Ljava/lang/String;

    .line 266
    if-eqz p3, :cond_e

    .line 267
    :try_start_2
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p4, p3}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    .line 268
    const/16 v0, 0xb

    const/4 v1, 0x1

    invoke-static {v0, p3, p1, p4, v1}, Landroid/util/StatsLog;->write(ILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1d

    .line 271
    :cond_e
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p4, p2}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V

    .line 272
    const/16 v1, 0xb

    const/4 v3, 0x0

    const/4 v6, 0x1

    move v2, p2

    move-object v4, p1

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1d} :catch_1e

    .line 278
    :goto_1d
    goto :goto_1f

    .line 276
    :catch_1e
    move-exception v0

    .line 279
    :goto_1f
    return-void
.end method

.method public onPreDim(I)V
    .registers 4
    .param p1, "preTime"  # I

    .line 703
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 704
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 705
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 706
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 707
    return-void
.end method

.method public onProfileTimeout(I)V
    .registers 4
    .param p1, "userId"  # I

    .line 657
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 658
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 659
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 660
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 661
    return-void
.end method

.method public onScreenBrightnessBoostChanged()V
    .registers 3

    .line 602
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 603
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 604
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 605
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 606
    return-void
.end method

.method public onUserActivity(II)V
    .registers 6
    .param p1, "event"  # I
    .param p2, "uid"  # I

    .line 617
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p2, p1}, Lcom/android/internal/app/IBatteryStats;->noteUserActivity(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 620
    goto :goto_7

    .line 618
    :catch_6
    move-exception v0

    .line 622
    :goto_7
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 623
    :try_start_a
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-nez v1, :cond_1f

    .line 624
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 625
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 626
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 627
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 629
    .end local v2  # "msg":Landroid/os/Message;
    :cond_1f
    monitor-exit v0

    .line 630
    return-void

    .line 629
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_21

    throw v1
.end method

.method public onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 26
    .param p1, "flags"  # I
    .param p2, "tag"  # Ljava/lang/String;
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "ownerUid"  # I
    .param p5, "ownerPid"  # I
    .param p6, "workSource"  # Landroid/os/WorkSource;
    .param p7, "historyTag"  # Ljava/lang/String;

    .line 238
    move-object/from16 v1, p0

    move/from16 v9, p4

    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v17

    .line 239
    .local v17, "monitorType":I
    if-ltz v17, :cond_4e

    .line 241
    const/16 v0, 0x3e8

    if-ne v9, v0, :cond_16

    const/high16 v0, 0x40000000  # 2.0f

    and-int v0, p1, v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    move/from16 v16, v0

    .line 243
    .local v16, "unimportantForLogging":Z
    if-eqz p6, :cond_2d

    .line 244
    :try_start_1b
    iget-object v10, v1, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v11, p6

    move/from16 v12, p5

    move-object/from16 v13, p2

    move-object/from16 v14, p7

    move/from16 v15, v17

    invoke-interface/range {v10 .. v16}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    move-object/from16 v3, p3

    goto :goto_47

    .line 247
    :cond_2d
    iget-object v2, v1, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p2

    move-object/from16 v6, p7

    move/from16 v7, v17

    move/from16 v8, v16

    invoke-interface/range {v2 .. v8}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V

    .line 250
    iget-object v0, v1, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_40} :catch_4a

    const/16 v2, 0x28

    move-object/from16 v3, p3

    :try_start_44
    invoke-virtual {v0, v2, v9, v3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_47} :catch_48

    .line 254
    .end local v16  # "unimportantForLogging":Z
    :goto_47
    goto :goto_50

    .line 252
    :catch_48
    move-exception v0

    goto :goto_50

    :catch_4a
    move-exception v0

    move-object/from16 v3, p3

    goto :goto_50

    .line 239
    :cond_4e
    move-object/from16 v3, p3

    .line 256
    :goto_50
    return-void
.end method

.method public onWakeLockChanging(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 40
    .param p1, "flags"  # I
    .param p2, "tag"  # Ljava/lang/String;
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "ownerUid"  # I
    .param p5, "ownerPid"  # I
    .param p6, "workSource"  # Landroid/os/WorkSource;
    .param p7, "historyTag"  # Ljava/lang/String;
    .param p8, "newFlags"  # I
    .param p9, "newTag"  # Ljava/lang/String;
    .param p10, "newPackageName"  # Ljava/lang/String;
    .param p11, "newOwnerUid"  # I
    .param p12, "newOwnerPid"  # I
    .param p13, "newWorkSource"  # Landroid/os/WorkSource;
    .param p14, "newHistoryTag"  # Ljava/lang/String;

    .line 312
    move-object/from16 v9, p0

    move/from16 v10, p8

    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v23

    .line 313
    .local v23, "monitorType":I
    invoke-direct {v9, v10}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v24

    .line 314
    .local v24, "newMonitorType":I
    if-eqz p6, :cond_40

    if-eqz p13, :cond_40

    if-ltz v23, :cond_40

    if-ltz v24, :cond_40

    .line 323
    const/16 v0, 0x3e8

    move/from16 v8, p11

    if-ne v8, v0, :cond_21

    const/high16 v0, 0x40000000  # 2.0f

    and-int/2addr v0, v10

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    move/from16 v22, v0

    .line 326
    .local v22, "unimportantForLogging":Z
    :try_start_24
    iget-object v11, v9, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v12, p6

    move/from16 v13, p5

    move-object/from16 v14, p2

    move-object/from16 v15, p7

    move/from16 v16, v23

    move-object/from16 v17, p13

    move/from16 v18, p12

    move-object/from16 v19, p9

    move-object/from16 v20, p14

    move/from16 v21, v24

    invoke-interface/range {v11 .. v22}, Lcom/android/internal/app/IBatteryStats;->noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_3d} :catch_3e

    .line 331
    goto :goto_3f

    .line 329
    :catch_3e
    move-exception v0

    .line 332
    .end local v22  # "unimportantForLogging":Z
    :goto_3f
    goto :goto_58

    .line 314
    :cond_40
    move/from16 v8, p11

    .line 333
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 334
    move-object/from16 v1, p0

    move/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    move/from16 v5, p11

    move/from16 v6, p12

    move-object/from16 v7, p13

    move-object/from16 v8, p14

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 337
    :goto_58
    return-void
.end method

.method public onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 15
    .param p1, "flags"  # I
    .param p2, "tag"  # Ljava/lang/String;
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "ownerUid"  # I
    .param p5, "ownerPid"  # I
    .param p6, "workSource"  # Landroid/os/WorkSource;
    .param p7, "historyTag"  # Ljava/lang/String;

    .line 351
    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v6

    .line 352
    .local v6, "monitorType":I
    if-ltz v6, :cond_26

    .line 354
    if-eqz p6, :cond_13

    .line 355
    :try_start_8
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object v1, p6

    move v2, p5

    move-object v3, p2

    move-object v4, p7

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_24

    .line 358
    :cond_13
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move v1, p4

    move v2, p5

    move-object v3, p2

    move-object v4, p7

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V

    .line 360
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x28

    invoke-virtual {v0, v1, p4, p3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_24} :catch_25

    .line 364
    :goto_24
    goto :goto_26

    .line 362
    :catch_25
    move-exception v0

    .line 366
    :cond_26
    :goto_26
    return-void
.end method

.method public onWakeUp(ILjava/lang/String;ILjava/lang/String;I)V
    .registers 8
    .param p1, "reason"  # I
    .param p2, "details"  # Ljava/lang/String;
    .param p3, "reasonUid"  # I
    .param p4, "opPackageName"  # Ljava/lang/String;
    .param p5, "opUid"  # I

    .line 644
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p2, p3}, Lcom/android/internal/app/IBatteryStats;->noteWakeUp(Ljava/lang/String;I)V

    .line 645
    if-eqz p4, :cond_e

    .line 646
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1, p5, p4}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 650
    :cond_e
    goto :goto_10

    .line 648
    :catch_f
    move-exception v0

    .line 651
    :goto_10
    return-void
.end method

.method public onWakefulnessChangeFinished()V
    .registers 2

    .line 456
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mInteractiveChanging:Z

    if-eqz v0, :cond_a

    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mInteractiveChanging:Z

    .line 458
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->handleLateInteractiveChange()V

    .line 460
    :cond_a
    return-void
.end method

.method public onWakefulnessChangeStarted(IIJ)V
    .registers 9
    .param p1, "wakefulness"  # I
    .param p2, "reason"  # I
    .param p3, "eventTime"  # J

    .line 404
    invoke-static {p1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v0

    .line 412
    .local v0, "interactive":Z
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v2, Lcom/android/server/power/Notifier$1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/power/Notifier$1;-><init>(Lcom/android/server/power/Notifier;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 421
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    if-eq v1, v0, :cond_41

    .line 423
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mInteractiveChanging:Z

    if-eqz v1, :cond_19

    .line 424
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->handleLateInteractiveChange()V

    .line 428
    :cond_19
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v1, v0}, Landroid/hardware/input/InputManagerInternal;->setInteractive(Z)V

    .line 429
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->setInteractive(Z)V

    .line 433
    :try_start_23
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, v0}, Lcom/android/internal/app/IBatteryStats;->noteInteractive(Z)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_28} :catch_29

    goto :goto_2a

    .line 434
    :catch_29
    move-exception v1

    :goto_2a
    nop

    .line 435
    const/16 v1, 0x21

    .line 436
    const/4 v2, 0x1

    if-eqz v0, :cond_32

    move v3, v2

    goto :goto_33

    .line 437
    :cond_32
    const/4 v3, 0x0

    .line 435
    :goto_33
    invoke-static {v1, v3}, Landroid/util/StatsLog;->write(II)I

    .line 440
    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    .line 441
    iput p2, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeReason:I

    .line 442
    iput-wide p3, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeStartTime:J

    .line 443
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mInteractiveChanging:Z

    .line 444
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->handleEarlyInteractiveChange()V

    .line 446
    :cond_41
    return-void
.end method

.method public onWiredChargingStarted(I)V
    .registers 4
    .param p1, "userId"  # I

    .line 687
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 688
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 689
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 690
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 691
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 692
    return-void
.end method

.method public onWirelessChargingStarted(II)V
    .registers 5
    .param p1, "batteryLevel"  # I
    .param p2, "userId"  # I

    .line 671
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 672
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 673
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 674
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 675
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 676
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 677
    return-void
.end method
