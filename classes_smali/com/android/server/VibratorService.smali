.class public Lcom/android/server/VibratorService;
.super Landroid/os/IVibratorService$Stub;
.source "VibratorService.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VibratorService$VibratorShellCommand;,
        Lcom/android/server/VibratorService$ExternalVibratorService;,
        Lcom/android/server/VibratorService$VibrateThread;,
        Lcom/android/server/VibratorService$SettingsObserver;,
        Lcom/android/server/VibratorService$ScaleLevel;,
        Lcom/android/server/VibratorService$VibrationInfo;,
        Lcom/android/server/VibratorService$Vibration;
    }
.end annotation


# static fields
.field public static final CMD_GAME_MODE_ENTER:I = 0x1

.field public static final CMD_GAME_MODE_EXIT:I = 0x0

.field private static final DEBUG:Z = true

.field private static final DOUBLE_CLICK_EFFECT_FALLBACK_TIMINGS:[J

.field private static final EXTERNAL_VIBRATOR_SERVICE:Ljava/lang/String; = "external_vibrator_service"

.field private static final MAX_HAPTIC_FEEDBACK_DURATION:J = 0x1388L

.field private static final RAMPING_RINGER_ENABLED:Ljava/lang/String; = "ramping_ringer_enabled"

.field private static final SCALE_HIGH:I = 0x1

.field private static final SCALE_HIGH_GAMMA:F = 0.5f

.field private static final SCALE_LOW:I = -0x1

.field private static final SCALE_LOW_GAMMA:F = 1.5f

.field private static final SCALE_LOW_MAX_AMPLITUDE:I = 0xc0

.field private static final SCALE_MUTE:I = -0x64

.field private static final SCALE_NONE:I = 0x0

.field private static final SCALE_NONE_GAMMA:F = 1.0f

.field private static final SCALE_VERY_HIGH:I = 0x2

.field private static final SCALE_VERY_HIGH_GAMMA:F = 0.25f

.field private static final SCALE_VERY_LOW:I = -0x2

.field private static final SCALE_VERY_LOW_GAMMA:F = 2.0f

.field private static final SCALE_VERY_LOW_MAX_AMPLITUDE:I = 0xa8

.field private static final SYSTEM_UI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "VibratorService"


# instance fields
.field private final mAllowPriorityVibrationsInLowPowerMode:Z

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

.field private final mContext:Landroid/content/Context;

.field private mCurVibUid:I

.field private mCurrentExternalVibration:Landroid/os/ExternalVibration;

.field private mCurrentVibration:Lcom/android/server/VibratorService$Vibration;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mDefaultVibrationAmplitude:I

.field private final mFallbackEffects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation
.end field

.field private mFlymeVibratorHelper:Landroid/os/FlymeVibratorHelper;

.field private mGameModeCallback:Lcom/android/server/policy/gamemode/GameModeController$Callback;

.field private mGameModeController:Lcom/android/server/policy/gamemode/GameModeController;

.field private final mH:Landroid/os/Handler;

.field private mHapticFeedbackIntensity:I

.field private mIm:Landroid/hardware/input/InputManager;

.field private mInputDeviceListenerRegistered:Z

.field private final mInputDeviceVibrators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Vibrator;",
            ">;"
        }
    .end annotation
.end field

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mLock:Ljava/lang/Object;

.field private mLowPowerMode:Z

.field private mNotificationIntensity:I

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mPreviousAlarmVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/VibratorService$VibrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousExternalVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/os/ExternalVibration;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousNotificationVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/VibratorService$VibrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousRingVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/VibratorService$VibrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/VibratorService$VibrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousVibrationsLimit:I

.field private final mProcStatesCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRingIntensity:I

.field private final mScaleLevels:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/VibratorService$ScaleLevel;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

.field private final mSupportsAmplitudeControl:Z

.field private final mSupportsExternalControl:Z

.field private volatile mThread:Lcom/android/server/VibratorService$VibrateThread;

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private final mUidObserver:Landroid/app/IUidObserver;

.field private mVibrateInputDevicesSetting:Z

.field private final mVibrationEndRunnable:Ljava/lang/Runnable;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVibratorUnderExternalControl:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 91
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/server/VibratorService;->DOUBLE_CLICK_EFFECT_FALLBACK_TIMINGS:[J

    return-void

    nop

    :array_a
    .array-data 8
        0x0
        0x1e
        0x64
        0x1e
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 16
    .param p1, "context"  # Landroid/content/Context;

    .line 372
    invoke-direct {p0}, Landroid/os/IVibratorService$Stub;-><init>()V

    .line 134
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mProcStatesCache:Landroid/util/SparseArray;

    .line 135
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 136
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    .line 137
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    .line 158
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    .line 182
    new-instance v1, Lcom/android/server/VibratorService$1;

    invoke-direct {v1, p0}, Lcom/android/server/VibratorService$1;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v1, p0, Lcom/android/server/VibratorService;->mGameModeCallback:Lcom/android/server/policy/gamemode/GameModeController$Callback;

    .line 193
    new-instance v1, Lcom/android/server/VibratorService$2;

    invoke-direct {v1, p0}, Lcom/android/server/VibratorService$2;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v1, p0, Lcom/android/server/VibratorService;->mUidObserver:Landroid/app/IUidObserver;

    .line 717
    new-instance v1, Lcom/android/server/VibratorService$5;

    invoke-direct {v1, p0}, Lcom/android/server/VibratorService$5;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v1, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    .line 1407
    new-instance v1, Lcom/android/server/VibratorService$6;

    invoke-direct {v1, p0}, Lcom/android/server/VibratorService$6;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v1, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 373
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorInit()V

    .line 376
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    .line 378
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorSupportsAmplitudeControl()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    .line 379
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorSupportsExternalControl()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/VibratorService;->mSupportsExternalControl:Z

    .line 381
    iput-object p1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 382
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 383
    .local v1, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "*vibrator*"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 384
    iget-object v3, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 386
    iget-object v3, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, p0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    .line 387
    const-string v3, "batterystats"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    .line 390
    iget-object v3, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e009b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    .line 393
    iget-object v3, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0040

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    .line 396
    iget-object v3, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/VibratorService;->mAllowPriorityVibrationsInLowPowerMode:Z

    .line 399
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/android/server/VibratorService;->mPreviousRingVibrations:Ljava/util/LinkedList;

    .line 400
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/android/server/VibratorService;->mPreviousNotificationVibrations:Ljava/util/LinkedList;

    .line 401
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/android/server/VibratorService;->mPreviousAlarmVibrations:Ljava/util/LinkedList;

    .line 402
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    .line 403
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/android/server/VibratorService;->mPreviousExternalVibrations:Ljava/util/LinkedList;

    .line 405
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 406
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 407
    iget-object v4, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 409
    const v4, 0x107006e

    invoke-direct {p0, v4}, Lcom/android/server/VibratorService;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v4

    .line 411
    .local v4, "clickEffect":Landroid/os/VibrationEffect;
    sget-object v5, Lcom/android/server/VibratorService;->DOUBLE_CLICK_EFFECT_FALLBACK_TIMINGS:[J

    invoke-static {v5, v0}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v5

    .line 413
    .local v5, "doubleClickEffect":Landroid/os/VibrationEffect;
    const v6, 0x1070044

    invoke-direct {p0, v6}, Lcom/android/server/VibratorService;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v6

    .line 415
    .local v6, "heavyClickEffect":Landroid/os/VibrationEffect;
    const v7, 0x1070020

    invoke-direct {p0, v7}, Lcom/android/server/VibratorService;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v7

    .line 418
    .local v7, "tickEffect":Landroid/os/VibrationEffect;
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    iput-object v8, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    .line 419
    iget-object v8, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 420
    iget-object v8, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    invoke-virtual {v8, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 421
    iget-object v8, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    const/4 v10, 0x2

    invoke-virtual {v8, v10, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 422
    iget-object v8, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    const/4 v11, 0x5

    invoke-virtual {v8, v11, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 424
    iget-object v8, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    .line 425
    invoke-static {v10, v9}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v11

    .line 424
    const/16 v12, 0x15

    invoke-virtual {v8, v12, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 427
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    iput-object v8, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    .line 428
    iget-object v8, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v11, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v12, 0x40000000  # 2.0f

    const/16 v13, 0xa8

    invoke-direct {v11, v12, v13}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(FI)V

    const/4 v12, -0x2

    invoke-virtual {v8, v12, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 430
    iget-object v8, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v11, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v12, 0x3fc00000  # 1.5f

    const/16 v13, 0xc0

    invoke-direct {v11, v12, v13}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(FI)V

    invoke-virtual {v8, v0, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 431
    iget-object v0, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v8, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v11, 0x3f800000  # 1.0f

    invoke-direct {v8, v11}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(F)V

    invoke-virtual {v0, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 432
    iget-object v0, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v8, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v9, 0x3f000000  # 0.5f

    invoke-direct {v8, v9}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(F)V

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 433
    iget-object v0, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v8, 0x3e800000  # 0.25f

    invoke-direct {v2, v8}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(F)V

    invoke-virtual {v0, v10, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 435
    new-instance v0, Lcom/android/server/VibratorService$ExternalVibratorService;

    invoke-direct {v0, p0}, Lcom/android/server/VibratorService$ExternalVibratorService;-><init>(Lcom/android/server/VibratorService;)V

    const-string v2, "external_vibrator_service"

    invoke-static {v2, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 438
    invoke-static {p1}, Landroid/os/FlymeVibratorHelper;->getInstance(Landroid/content/Context;)Landroid/os/FlymeVibratorHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VibratorService;->mFlymeVibratorHelper:Landroid/os/FlymeVibratorHelper;

    .line 440
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/VibratorService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/VibratorService;

    .line 83
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/VibratorService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/VibratorService;

    .line 83
    iget-object v0, p0, Lcom/android/server/VibratorService;->mProcStatesCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/VibratorService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/VibratorService;

    .line 83
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/VibratorService;

    .line 83
    iget-object v0, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/VibratorService;

    .line 83
    iget-object v0, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/VibratorService;JIII)V
    .registers 6
    .param p0, "x0"  # Lcom/android/server/VibratorService;
    .param p1, "x1"  # J
    .param p3, "x2"  # I
    .param p4, "x3"  # I
    .param p5, "x4"  # I

    .line 83
    invoke-direct/range {p0 .. p5}, Lcom/android/server/VibratorService;->doVibratorOn(JIII)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/VibratorService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/VibratorService;
    .param p1, "x1"  # I

    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/VibratorService;

    .line 83
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/VibratorService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/VibratorService;

    .line 83
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mSupportsExternalControl:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/VibratorService;)Landroid/os/ExternalVibration;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/VibratorService;

    .line 83
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/server/VibratorService;Landroid/os/ExternalVibration;)Landroid/os/ExternalVibration;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/VibratorService;
    .param p1, "x1"  # Landroid/os/ExternalVibration;

    .line 83
    iput-object p1, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/VibratorService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/VibratorService;

    .line 83
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/VibratorService;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/VibratorService;
    .param p1, "x1"  # Z

    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->setVibratorUnderExternalControl(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/VibratorService;

    .line 83
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousExternalVibrations:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/VibratorService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/VibratorService;

    .line 83
    iget v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/VibratorService;)Landroid/os/Vibrator;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/VibratorService;

    .line 83
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/VibratorService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/VibratorService;

    .line 83
    iget v0, p0, Lcom/android/server/VibratorService;->mRingIntensity:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/VibratorService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/VibratorService;

    .line 83
    iget v0, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/VibratorService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/VibratorService;

    .line 83
    iget v0, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/VibratorService;

    .line 83
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/VibratorService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/VibratorService;

    .line 83
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    return-void
.end method

.method static synthetic access$500(I)Z
    .registers 2
    .param p0, "x0"  # I

    .line 83
    invoke-static {p0}, Lcom/android/server/VibratorService;->isHapticFeedback(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/VibratorService;)Landroid/os/FlymeVibratorHelper;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/VibratorService;

    .line 83
    iget-object v0, p0, Lcom/android/server/VibratorService;->mFlymeVibratorHelper:Landroid/os/FlymeVibratorHelper;

    return-object v0
.end method

.method static synthetic access$700(I)Z
    .registers 2
    .param p0, "x0"  # I

    .line 83
    invoke-static {p0}, Lcom/android/server/VibratorService;->isNotification(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(I)Z
    .registers 2
    .param p0, "x0"  # I

    .line 83
    invoke-static {p0}, Lcom/android/server/VibratorService;->isRingtone(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(I)Z
    .registers 2
    .param p0, "x0"  # I

    .line 83
    invoke-static {p0}, Lcom/android/server/VibratorService;->isAlarm(I)Z

    move-result v0

    return v0
.end method

.method private addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    .registers 5
    .param p1, "vib"  # Lcom/android/server/VibratorService$Vibration;

    .line 680
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 681
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousRingVibrations:Ljava/util/LinkedList;

    .local v0, "previousVibrations":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/VibratorService$VibrationInfo;>;"
    goto :goto_1d

    .line 682
    .end local v0  # "previousVibrations":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/VibratorService$VibrationInfo;>;"
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isNotification()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 683
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousNotificationVibrations:Ljava/util/LinkedList;

    .restart local v0  # "previousVibrations":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/VibratorService$VibrationInfo;>;"
    goto :goto_1d

    .line 684
    .end local v0  # "previousVibrations":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/VibratorService$VibrationInfo;>;"
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isAlarm()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 685
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousAlarmVibrations:Ljava/util/LinkedList;

    .restart local v0  # "previousVibrations":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/VibratorService$VibrationInfo;>;"
    goto :goto_1d

    .line 687
    .end local v0  # "previousVibrations":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/VibratorService$VibrationInfo;>;"
    :cond_1b
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    .line 690
    .restart local v0  # "previousVibrations":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/VibratorService$VibrationInfo;>;"
    :goto_1d
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    if-le v1, v2, :cond_28

    .line 691
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 693
    :cond_28
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->toInfo()Lcom/android/server/VibratorService$VibrationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 694
    return-void
.end method

.method private applyVibrationIntensityScalingLocked(Lcom/android/server/VibratorService$Vibration;I)V
    .registers 9
    .param p1, "vib"  # Lcom/android/server/VibratorService$Vibration;
    .param p2, "intensity"  # I

    .line 861
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$Prebaked;

    if-eqz v0, :cond_23

    .line 864
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v0, Landroid/os/VibrationEffect$Prebaked;

    .line 866
    .local v0, "prebaked":Landroid/os/VibrationEffect$Prebaked;
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v1

    const v2, 0x1869f

    if-ne v1, v2, :cond_1b

    .line 867
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Prebaked;->getEffectStrength()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/VibrationEffect$Prebaked;->setEffectStrength(I)V

    goto :goto_22

    .line 869
    :cond_1b
    invoke-static {p2}, Lcom/android/server/VibratorService;->intensityToEffectStrength(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/VibrationEffect$Prebaked;->setEffectStrength(I)V

    .line 873
    :goto_22
    return-void

    .line 877
    .end local v0  # "prebaked":Landroid/os/VibrationEffect$Prebaked;
    :cond_23
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 878
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->getDefaultRingVibrationIntensity()I

    move-result v0

    .local v0, "defaultIntensity":I
    goto :goto_51

    .line 879
    .end local v0  # "defaultIntensity":I
    :cond_30
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isNotification()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 880
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->getDefaultNotificationVibrationIntensity()I

    move-result v0

    .restart local v0  # "defaultIntensity":I
    goto :goto_51

    .line 881
    .end local v0  # "defaultIntensity":I
    :cond_3d
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isHapticFeedback()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 882
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->getDefaultHapticFeedbackIntensity()I

    move-result v0

    .restart local v0  # "defaultIntensity":I
    goto :goto_51

    .line 883
    .end local v0  # "defaultIntensity":I
    :cond_4a
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isAlarm()Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 884
    const/4 v0, 0x3

    .line 891
    .restart local v0  # "defaultIntensity":I
    :goto_51
    iget-object v1, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    sub-int v2, p2, v0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VibratorService$ScaleLevel;

    .line 892
    .local v1, "scale":Lcom/android/server/VibratorService$ScaleLevel;
    const-string v2, "VibratorService"

    if-nez v1, :cond_81

    .line 895
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No configured scaling level! (current="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", default= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    return-void

    .line 900
    :cond_81
    const/4 v3, 0x0

    .line 901
    .local v3, "scaledEffect":Landroid/os/VibrationEffect;
    iget-object v4, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v4, v4, Landroid/os/VibrationEffect$OneShot;

    if-eqz v4, :cond_9b

    .line 902
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$OneShot;

    .line 903
    .local v2, "oneShot":Landroid/os/VibrationEffect$OneShot;
    iget v4, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    invoke-virtual {v2, v4}, Landroid/os/VibrationEffect$OneShot;->resolve(I)Landroid/os/VibrationEffect$OneShot;

    move-result-object v2

    .line 904
    iget v4, v1, Lcom/android/server/VibratorService$ScaleLevel;->gamma:F

    iget v5, v1, Lcom/android/server/VibratorService$ScaleLevel;->maxAmplitude:I

    invoke-virtual {v2, v4, v5}, Landroid/os/VibrationEffect$OneShot;->scale(FI)Landroid/os/VibrationEffect$OneShot;

    move-result-object v3

    .line 905
    .end local v2  # "oneShot":Landroid/os/VibrationEffect$OneShot;
    goto :goto_b9

    :cond_9b
    iget-object v4, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v4, v4, Landroid/os/VibrationEffect$Waveform;

    if-eqz v4, :cond_b4

    .line 906
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$Waveform;

    .line 907
    .local v2, "waveform":Landroid/os/VibrationEffect$Waveform;
    iget v4, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    invoke-virtual {v2, v4}, Landroid/os/VibrationEffect$Waveform;->resolve(I)Landroid/os/VibrationEffect$Waveform;

    move-result-object v2

    .line 908
    iget v4, v1, Lcom/android/server/VibratorService$ScaleLevel;->gamma:F

    iget v5, v1, Lcom/android/server/VibratorService$ScaleLevel;->maxAmplitude:I

    invoke-virtual {v2, v4, v5}, Landroid/os/VibrationEffect$Waveform;->scale(FI)Landroid/os/VibrationEffect$Waveform;

    move-result-object v3

    .line 909
    .end local v2  # "waveform":Landroid/os/VibrationEffect$Waveform;
    goto :goto_b9

    .line 910
    :cond_b4
    const-string v4, "Unable to apply intensity scaling, unknown VibrationEffect type"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :goto_b9
    if-eqz v3, :cond_c1

    .line 914
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    iput-object v2, p1, Lcom/android/server/VibratorService$Vibration;->originalEffect:Landroid/os/VibrationEffect;

    .line 915
    iput-object v3, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    .line 917
    :cond_c1
    return-void

    .line 888
    .end local v0  # "defaultIntensity":I
    .end local v1  # "scale":Lcom/android/server/VibratorService$ScaleLevel;
    .end local v3  # "scaledEffect":Landroid/os/VibrationEffect;
    :cond_c2
    return-void
.end method

.method private createEffectFromResource(I)Landroid/os/VibrationEffect;
    .registers 4
    .param p1, "resId"  # I

    .line 443
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/VibratorService;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v0

    .line 444
    .local v0, "timings":[J
    invoke-static {v0}, Lcom/android/server/VibratorService;->createEffectFromTimings([J)Landroid/os/VibrationEffect;

    move-result-object v1

    return-object v1
.end method

.method private static createEffectFromTimings([J)Landroid/os/VibrationEffect;
    .registers 4
    .param p0, "timings"  # [J

    .line 448
    if-eqz p0, :cond_18

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_18

    .line 450
    :cond_6
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_13

    .line 451
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 453
    :cond_13
    invoke-static {p0, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 449
    :cond_18
    :goto_18
    const/4 v0, 0x0

    return-object v0
.end method

.method private doCancelVibrateLocked()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 726
    const/4 v0, 0x0

    const-wide/32 v1, 0x800000

    const-string/jumbo v3, "vibration"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 727
    const-string v3, "doCancelVibrateLocked"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 729
    :try_start_f
    iget-object v3, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 730
    iget-object v3, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    const/4 v4, 0x0

    if-eqz v3, :cond_22

    .line 731
    iget-object v3, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v3}, Lcom/android/server/VibratorService$VibrateThread;->cancel()V

    .line 732
    iput-object v4, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 734
    :cond_22
    iget-object v3, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    if-eqz v3, :cond_30

    .line 735
    iget-object v3, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v3}, Landroid/os/ExternalVibration;->mute()Z

    .line 736
    iput-object v4, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    .line 737
    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->setVibratorUnderExternalControl(Z)V

    .line 739
    :cond_30
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorOff()V

    .line 740
    invoke-direct {p0}, Lcom/android/server/VibratorService;->reportFinishVibrationLocked()V
    :try_end_36
    .catchall {:try_start_f .. :try_end_36} :catchall_3b

    .line 742
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 743
    nop

    .line 744
    return-void

    .line 742
    :catchall_3b
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private doVibratorExists()Z
    .registers 2

    .line 1078
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorExists()Z

    move-result v0

    return v0
.end method

.method private doVibratorOff()V
    .registers 7

    .line 1120
    const-wide/32 v0, 0x800000

    const-string v2, "doVibratorOff"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1122
    :try_start_8
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_3b

    .line 1124
    :try_start_b
    const-string v3, "VibratorService"

    const-string v4, "Turning vibrator off."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    invoke-direct {p0}, Lcom/android/server/VibratorService;->noteVibratorOffLocked()V

    .line 1127
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1128
    .local v3, "vibratorCount":I
    if-eqz v3, :cond_2f

    .line 1129
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1e
    if-ge v4, v3, :cond_2e

    .line 1130
    iget-object v5, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    invoke-virtual {v5}, Landroid/os/Vibrator;->cancel()V

    .line 1129
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .end local v4  # "i":I
    :cond_2e
    goto :goto_32

    .line 1133
    :cond_2f
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    .line 1135
    .end local v3  # "vibratorCount":I
    :goto_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_b .. :try_end_33} :catchall_38

    .line 1137
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1138
    nop

    .line 1139
    return-void

    .line 1135
    :catchall_38
    move-exception v3

    :try_start_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    .end local p0  # "this":Lcom/android/server/VibratorService;
    :try_start_3a
    throw v3
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    .line 1137
    .restart local p0  # "this":Lcom/android/server/VibratorService;
    :catchall_3b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private doVibratorOn(JIII)V
    .registers 13
    .param p1, "millis"  # J
    .param p3, "amplitude"  # I
    .param p4, "uid"  # I
    .param p5, "usageHint"  # I

    .line 1082
    const-wide/32 v0, 0x800000

    const-string v2, "doVibratorOn"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1084
    :try_start_8
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_6d

    .line 1085
    const/4 v3, -0x1

    if-ne p3, v3, :cond_11

    .line 1086
    :try_start_e
    iget v3, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    move p3, v3

    .line 1089
    :cond_11
    const-string v3, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Turning vibrator on for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ms with amplitude "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    invoke-direct {p0, p4, p1, p2}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V

    .line 1093
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1094
    .local v3, "vibratorCount":I
    if-eqz v3, :cond_5e

    .line 1095
    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 1096
    invoke-virtual {v4, p5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    .line 1097
    .local v4, "attributes":Landroid/media/AudioAttributes;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4d
    if-ge v5, v3, :cond_5d

    .line 1098
    iget-object v6, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Vibrator;

    invoke-virtual {v6, p1, p2, v4}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 1097
    add-int/lit8 v5, v5, 0x1

    goto :goto_4d

    .line 1100
    .end local v4  # "attributes":Landroid/media/AudioAttributes;
    .end local v5  # "i":I
    :cond_5d
    goto :goto_64

    .line 1104
    :cond_5e
    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->vibratorOn(J)V

    .line 1105
    invoke-direct {p0, p3}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V

    .line 1107
    .end local v3  # "vibratorCount":I
    :goto_64
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_e .. :try_end_65} :catchall_6a

    .line 1109
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1110
    nop

    .line 1111
    return-void

    .line 1107
    :catchall_6a
    move-exception v3

    :try_start_6b
    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    .end local p0  # "this":Lcom/android/server/VibratorService;
    .end local p1  # "millis":J
    .end local p3  # "amplitude":I
    .end local p4  # "uid":I
    .end local p5  # "usageHint":I
    :try_start_6c
    throw v3
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6d

    .line 1109
    .restart local p0  # "this":Lcom/android/server/VibratorService;
    .restart local p1  # "millis":J
    .restart local p3  # "amplitude":I
    .restart local p4  # "uid":I
    .restart local p5  # "usageHint":I
    :catchall_6d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private doVibratorPrebakedEffectLocked(Lcom/android/server/VibratorService$Vibration;)J
    .registers 22
    .param p1, "vib"  # Lcom/android/server/VibratorService$Vibration;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1143
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    const-wide/32 v12, 0x800000

    const-string v0, "doVibratorPrebakedEffectLocked"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1145
    :try_start_c
    iget-object v0, v11, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v0, Landroid/os/VibrationEffect$Prebaked;

    move-object v14, v0

    .line 1147
    .local v14, "prebaked":Landroid/os/VibrationEffect$Prebaked;
    iget-object v1, v10, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_ac

    .line 1148
    :try_start_14
    iget-object v0, v10, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 1149
    .local v0, "usingInputDeviceVibrators":Z
    :goto_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_a9

    .line 1152
    :try_start_20
    iget-object v1, v10, Lcom/android/server/VibratorService;->mFlymeVibratorHelper:Landroid/os/FlymeVibratorHelper;

    invoke-virtual {v14}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v2

    .line 1153
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->isNotification()Z

    move-result v3

    .line 1152
    invoke-virtual {v1, v2, v3}, Landroid/os/FlymeVibratorHelper;->updateVibratorPrebakedEffectId(IZ)I

    move-result v1

    move v15, v1

    .line 1157
    .local v15, "effectId":I
    const-wide/16 v16, 0x0

    if-nez v0, :cond_4b

    .line 1158
    int-to-long v1, v15

    .line 1159
    invoke-virtual {v14}, Landroid/os/VibrationEffect$Prebaked;->getEffectStrength()I

    move-result v3

    int-to-long v3, v3

    .line 1158
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/VibratorService;->vibratorPerformEffect(JJ)J

    move-result-wide v1

    .line 1160
    .local v1, "timeout":J
    cmp-long v3, v1, v16

    if-lez v3, :cond_4b

    .line 1161
    iget v3, v11, Lcom/android/server/VibratorService$Vibration;->uid:I

    invoke-direct {v10, v3, v1, v2}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V
    :try_end_46
    .catchall {:try_start_20 .. :try_end_46} :catchall_ac

    .line 1162
    nop

    .line 1181
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 1162
    return-wide v1

    .line 1165
    .end local v1  # "timeout":J
    :cond_4b
    :try_start_4b
    invoke-virtual {v14}, Landroid/os/VibrationEffect$Prebaked;->shouldFallback()Z

    move-result v1
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_ac

    if-nez v1, :cond_56

    .line 1166
    nop

    .line 1181
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 1166
    return-wide v16

    .line 1168
    :cond_56
    :try_start_56
    invoke-virtual {v14}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v1

    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->getFallbackEffect(I)Landroid/os/VibrationEffect;

    move-result-object v1

    move-object/from16 v18, v1

    .line 1169
    .local v18, "effect":Landroid/os/VibrationEffect;
    if-nez v18, :cond_6e

    .line 1170
    const-string v1, "VibratorService"

    const-string v2, "Failed to play prebaked effect, no fallback"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catchall {:try_start_56 .. :try_end_69} :catchall_ac

    .line 1171
    nop

    .line 1181
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 1171
    return-wide v16

    .line 1173
    :cond_6e
    :try_start_6e
    new-instance v19, Lcom/android/server/VibratorService$Vibration;

    iget-object v3, v11, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    iget v5, v11, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    iget v6, v11, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v7, v11, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v11, Lcom/android/server/VibratorService$Vibration;->reason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (fallback)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move-object/from16 v4, v18

    invoke-direct/range {v1 .. v9}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;Ljava/lang/String;Lcom/android/server/VibratorService$1;)V

    move-object/from16 v1, v19

    .line 1175
    .local v1, "fallbackVib":Lcom/android/server/VibratorService$Vibration;
    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->getCurrentIntensityLocked(Lcom/android/server/VibratorService$Vibration;)I

    move-result v2

    .line 1176
    .local v2, "intensity":I
    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->linkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 1177
    invoke-direct {v10, v1, v2}, Lcom/android/server/VibratorService;->applyVibrationIntensityScalingLocked(Lcom/android/server/VibratorService$Vibration;I)V

    .line 1178
    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_a4
    .catchall {:try_start_6e .. :try_end_a4} :catchall_ac

    .line 1179
    nop

    .line 1181
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 1179
    return-wide v16

    .line 1149
    .end local v0  # "usingInputDeviceVibrators":Z
    .end local v1  # "fallbackVib":Lcom/android/server/VibratorService$Vibration;
    .end local v2  # "intensity":I
    .end local v15  # "effectId":I
    .end local v18  # "effect":Landroid/os/VibrationEffect;
    :catchall_a9
    move-exception v0

    :try_start_aa
    monitor-exit v1
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a9

    .end local p0  # "this":Lcom/android/server/VibratorService;
    .end local p1  # "vib":Lcom/android/server/VibratorService$Vibration;
    :try_start_ab
    throw v0
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_ac

    .line 1181
    .end local v14  # "prebaked":Landroid/os/VibrationEffect$Prebaked;
    .restart local p0  # "this":Lcom/android/server/VibratorService;
    .restart local p1  # "vib":Lcom/android/server/VibratorService$Vibration;
    :catchall_ac
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private doVibratorSetAmplitude(I)V
    .registers 3
    .param p1, "amplitude"  # I

    .line 1114
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    if-eqz v0, :cond_7

    .line 1115
    invoke-static {p1}, Lcom/android/server/VibratorService;->vibratorSetAmplitude(I)V

    .line 1117
    :cond_7
    return-void
.end method

.method private getAppOpMode(Lcom/android/server/VibratorService$Vibration;)I
    .registers 7
    .param p1, "vib"  # Lcom/android/server/VibratorService$Vibration;

    .line 937
    iget-object v0, p0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    iget v1, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    iget v2, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v3, p1, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AppOpsManager;->checkAudioOpNoThrow(IIILjava/lang/String;)I

    move-result v0

    .line 939
    .local v0, "mode":I
    if-nez v0, :cond_19

    .line 940
    iget-object v1, p0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    iget v2, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v3, p1, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 942
    :cond_19
    return v0
.end method

.method private getCurrentIntensityLocked(Lcom/android/server/VibratorService$Vibration;)I
    .registers 3
    .param p1, "vib"  # Lcom/android/server/VibratorService$Vibration;

    .line 844
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 845
    iget v0, p0, Lcom/android/server/VibratorService;->mRingIntensity:I

    return v0

    .line 846
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isNotification()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 847
    iget v0, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    return v0

    .line 848
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isHapticFeedback()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 849
    iget v0, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    return v0

    .line 850
    :cond_1b
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isAlarm()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 851
    const/4 v0, 0x3

    return v0

    .line 853
    :cond_23
    const/4 v0, 0x2

    return v0
.end method

.method private getFallbackEffect(I)Landroid/os/VibrationEffect;
    .registers 3
    .param p1, "effectId"  # I

    .line 1186
    iget-object v0, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect;

    return-object v0
.end method

.method private static getLongIntArray(Landroid/content/res/Resources;I)[J
    .registers 7
    .param p0, "r"  # Landroid/content/res/Resources;
    .param p1, "resid"  # I

    .line 579
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 580
    .local v0, "ar":[I
    if-nez v0, :cond_8

    .line 581
    const/4 v1, 0x0

    return-object v1

    .line 583
    :cond_8
    array-length v1, v0

    new-array v1, v1, [J

    .line 584
    .local v1, "out":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    array-length v3, v0

    if-ge v2, v3, :cond_17

    .line 585
    aget v3, v0, v2

    int-to-long v3, v3

    aput-wide v3, v1, v2

    .line 584
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 587
    .end local v2  # "i":I
    :cond_17
    return-object v1
.end method

.method private static intensityToEffectStrength(I)I
    .registers 4
    .param p0, "intensity"  # I

    .line 1195
    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v1, 0x2

    if-eq p0, v1, :cond_21

    const/4 v0, 0x3

    if-eq p0, v0, :cond_20

    .line 1203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got unexpected vibration intensity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VibratorService"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    return v1

    .line 1201
    :cond_20
    return v1

    .line 1199
    :cond_21
    return v0

    .line 1197
    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method private static isAlarm(I)Z
    .registers 2
    .param p0, "usageHint"  # I

    .line 1229
    const/4 v0, 0x4

    if-ne p0, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method private isAllowedToVibrateLocked(Lcom/android/server/VibratorService$Vibration;)Z
    .registers 5
    .param p1, "vib"  # Lcom/android/server/VibratorService$Vibration;

    .line 826
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 827
    return v1

    .line 830
    :cond_6
    iget v0, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_c

    .line 831
    return v1

    .line 834
    :cond_c
    iget v0, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1f

    iget v0, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    const/16 v2, 0xb

    if-eq v0, v2, :cond_1f

    iget v0, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1d

    goto :goto_1f

    .line 840
    :cond_1d
    const/4 v0, 0x0

    return v0

    .line 837
    :cond_1f
    :goto_1f
    return v1
.end method

.method private static isHapticFeedback(I)Z
    .registers 2
    .param p0, "usageHint"  # I

    .line 1225
    const/16 v0, 0xd

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static isNotification(I)Z
    .registers 2
    .param p0, "usageHint"  # I

    .line 1209
    const/4 v0, 0x5

    if-eq p0, v0, :cond_10

    const/4 v0, 0x7

    if-eq p0, v0, :cond_10

    const/16 v0, 0x8

    if-eq p0, v0, :cond_10

    const/16 v0, 0x9

    if-eq p0, v0, :cond_10

    .line 1216
    const/4 v0, 0x0

    return v0

    .line 1214
    :cond_10
    const/4 v0, 0x1

    return v0
.end method

.method private static isRepeatingVibration(Landroid/os/VibrationEffect;)Z
    .registers 5
    .param p0, "effect"  # Landroid/os/VibrationEffect;

    .line 675
    invoke-virtual {p0}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private static isRingtone(I)Z
    .registers 2
    .param p0, "usageHint"  # I

    .line 1221
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method private linkVibration(Lcom/android/server/VibratorService$Vibration;)V
    .registers 4
    .param p1, "vib"  # Lcom/android/server/VibratorService$Vibration;

    .line 963
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v0, :cond_f

    .line 965
    :try_start_6
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    .line 968
    goto :goto_f

    .line 966
    :catch_d
    move-exception v0

    .line 967
    .local v0, "e":Landroid/os/RemoteException;
    return-void

    .line 970
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_f
    :goto_f
    return-void
.end method

.method private noteVibratorOffLocked()V
    .registers 5

    .line 1243
    iget v0, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    if-ltz v0, :cond_18

    .line 1245
    :try_start_4
    iget-object v1, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, v0}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOff(I)V

    .line 1246
    const/16 v0, 0x54

    iget v1, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;II)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_13

    goto :goto_14

    .line 1248
    :catch_13
    move-exception v0

    :goto_14
    nop

    .line 1249
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    .line 1251
    :cond_18
    return-void
.end method

.method private noteVibratorOnLocked(IJ)V
    .registers 11
    .param p1, "uid"  # I
    .param p2, "millis"  # J

    .line 1234
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOn(IJ)V

    .line 1235
    const/16 v1, 0x54

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v2, p1

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;IJ)I

    .line 1237
    iput p1, p0, Lcom/android/server/VibratorService;->mCurVibUid:I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    .line 1239
    goto :goto_12

    .line 1238
    :catch_11
    move-exception v0

    .line 1240
    :goto_12
    return-void
.end method

.method private registerGameModeObserver()V
    .registers 3

    .line 1798
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->getInstance(Landroid/content/Context;)Lcom/android/server/policy/gamemode/GameModeController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VibratorService;->mGameModeController:Lcom/android/server/policy/gamemode/GameModeController;

    .line 1799
    iget-object v0, p0, Lcom/android/server/VibratorService;->mGameModeController:Lcom/android/server/policy/gamemode/GameModeController;

    if-eqz v0, :cond_11

    .line 1800
    iget-object v1, p0, Lcom/android/server/VibratorService;->mGameModeCallback:Lcom/android/server/policy/gamemode/GameModeController$Callback;

    invoke-interface {v0, v1}, Lcom/android/server/policy/gamemode/GameModeController;->addCallback(Lcom/android/server/policy/gamemode/GameModeController$Callback;)V

    .line 1802
    :cond_11
    return-void
.end method

.method private reportFinishVibrationLocked()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 947
    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "reportFinishVibrationLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 949
    :try_start_9
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_23

    .line 950
    iget-object v2, p0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget v4, v4, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v5, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v5, v5, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 952
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 953
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_28

    .line 956
    :cond_23
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 957
    nop

    .line 958
    return-void

    .line 956
    :catchall_28
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private setVibratorUnderExternalControl(Z)V
    .registers 4
    .param p1, "externalControl"  # Z

    .line 1255
    const-string v0, "VibratorService"

    if-eqz p1, :cond_a

    .line 1256
    const-string v1, "Vibrator going under external control."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1258
    :cond_a
    const-string v1, "Taking back control of vibrator."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    :goto_f
    iput-boolean p1, p0, Lcom/android/server/VibratorService;->mVibratorUnderExternalControl:Z

    .line 1262
    invoke-static {p1}, Lcom/android/server/VibratorService;->vibratorSetExternalControl(Z)V

    .line 1263
    return-void
.end method

.method private shouldVibrateForRingtone()Z
    .registers 7

    .line 920
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 921
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    .line 923
    .local v1, "ringerMode":I
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 924
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 923
    const/4 v3, 0x0

    const-string/jumbo v4, "vibrate_when_ringing"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_23

    .line 925
    if-eqz v1, :cond_22

    move v3, v4

    :cond_22
    return v3

    .line 926
    :cond_23
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 927
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 926
    const-string v5, "apply_ramping_ringer"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_41

    .line 928
    const-string/jumbo v2, "telephony"

    const-string/jumbo v5, "ramping_ringer_enabled"

    invoke-static {v2, v5, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 930
    if-eqz v1, :cond_40

    move v3, v4

    :cond_40
    return v3

    .line 932
    :cond_41
    if-ne v1, v4, :cond_44

    move v3, v4

    :cond_44
    return v3
.end method

.method private startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V
    .registers 11
    .param p1, "vib"  # Lcom/android/server/VibratorService$Vibration;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 796
    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "startVibrationInnerLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 798
    :try_start_9
    iput-object p1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 799
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$OneShot;
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_7e

    const/4 v3, 0x0

    const-string/jumbo v4, "vibration"

    if-eqz v2, :cond_39

    .line 800
    :try_start_15
    invoke-static {v0, v1, v4, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 801
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$OneShot;

    .line 802
    .local v2, "oneShot":Landroid/os/VibrationEffect$OneShot;
    invoke-virtual {v2}, Landroid/os/VibrationEffect$OneShot;->getDuration()J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v6

    iget v7, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget v8, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/VibratorService;->doVibratorOn(JIII)V

    .line 803
    iget-object v3, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2}, Landroid/os/VibrationEffect$OneShot;->getDuration()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 804
    nop

    .end local v2  # "oneShot":Landroid/os/VibrationEffect$OneShot;
    goto :goto_79

    :cond_39
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$Waveform;

    if-eqz v2, :cond_57

    .line 807
    invoke-static {v0, v1, v4, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 808
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$Waveform;

    .line 809
    .local v2, "waveform":Landroid/os/VibrationEffect$Waveform;
    new-instance v3, Lcom/android/server/VibratorService$VibrateThread;

    iget v4, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget v5, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    invoke-direct {v3, p0, v2, v4, v5}, Lcom/android/server/VibratorService$VibrateThread;-><init>(Lcom/android/server/VibratorService;Landroid/os/VibrationEffect$Waveform;II)V

    iput-object v3, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 810
    iget-object v3, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v3}, Lcom/android/server/VibratorService$VibrateThread;->start()V

    .line 811
    .end local v2  # "waveform":Landroid/os/VibrationEffect$Waveform;
    goto :goto_79

    :cond_57
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$Prebaked;

    if-eqz v2, :cond_72

    .line 812
    invoke-static {v0, v1, v4, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 813
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->doVibratorPrebakedEffectLocked(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v2

    .line 814
    .local v2, "timeout":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_71

    .line 815
    iget-object v4, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 817
    .end local v2  # "timeout":J
    :cond_71
    goto :goto_79

    .line 818
    :cond_72
    const-string v2, "VibratorService"

    const-string v3, "Unknown vibration type, ignoring"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_15 .. :try_end_79} :catchall_7e

    .line 821
    :goto_79
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 822
    nop

    .line 823
    return-void

    .line 821
    :catchall_7e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    .registers 9
    .param p1, "vib"  # Lcom/android/server/VibratorService$Vibration;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 760
    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "startVibrationLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 762
    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->isAllowedToVibrateLocked(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v2
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_62

    if-nez v2, :cond_13

    .line 790
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 763
    return-void

    .line 766
    :cond_13
    :try_start_13
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->getCurrentIntensityLocked(Lcom/android/server/VibratorService$Vibration;)I

    move-result v2
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_62

    .line 767
    .local v2, "intensity":I
    if-nez v2, :cond_1d

    .line 790
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 768
    return-void

    .line 771
    :cond_1d
    :try_start_1d
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v3
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_62

    const-string v4, "VibratorService"

    if-eqz v3, :cond_34

    :try_start_25
    invoke-direct {p0}, Lcom/android/server/VibratorService;->shouldVibrateForRingtone()Z

    move-result v3

    if-nez v3, :cond_34

    .line 773
    const-string v3, "Vibrate ignored, not vibrating for ringtones"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_62

    .line 790
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 775
    return-void

    .line 778
    :cond_34
    :try_start_34
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->getAppOpMode(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    .line 779
    .local v3, "mode":I
    if-eqz v3, :cond_57

    .line 780
    const/4 v5, 0x2

    if-ne v3, v5, :cond_53

    .line 783
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Would be an error: vibrate from uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_34 .. :try_end_53} :catchall_62

    .line 790
    :cond_53
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 785
    return-void

    .line 787
    :cond_57
    :try_start_57
    invoke-direct {p0, p1, v2}, Lcom/android/server/VibratorService;->applyVibrationIntensityScalingLocked(Lcom/android/server/VibratorService$Vibration;I)V

    .line 788
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_5d
    .catchall {:try_start_57 .. :try_end_5d} :catchall_62

    .line 790
    .end local v2  # "intensity":I
    .end local v3  # "mode":I
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 791
    nop

    .line 792
    return-void

    .line 790
    :catchall_62
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    .registers 4
    .param p1, "vib"  # Lcom/android/server/VibratorService$Vibration;

    .line 973
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v0, :cond_c

    .line 974
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 976
    :cond_c
    return-void
.end method

.method private updateInputDeviceVibratorsLocked()Z
    .registers 9

    .line 992
    const/4 v0, 0x0

    .line 993
    .local v0, "changed":Z
    const/4 v1, 0x0

    .line 995
    .local v1, "vibrateInputDevices":Z
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_4
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 996
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "vibrate_input_devices"

    const/4 v6, -0x2

    .line 995
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4
    :try_end_12
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_4 .. :try_end_12} :catch_19

    if-lez v4, :cond_16

    move v4, v3

    goto :goto_17

    :cond_16
    move v4, v2

    :goto_17
    move v1, v4

    .line 999
    goto :goto_1a

    .line 998
    :catch_19
    move-exception v4

    .line 1000
    :goto_1a
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eq v1, v4, :cond_21

    .line 1001
    const/4 v0, 0x1

    .line 1002
    iput-boolean v1, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    .line 1005
    :cond_21
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v4, :cond_33

    .line 1006
    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-nez v2, :cond_3e

    .line 1007
    iput-boolean v3, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    .line 1008
    iget-object v2, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    iget-object v4, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-virtual {v2, p0, v4}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    goto :goto_3e

    .line 1011
    :cond_33
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-eqz v4, :cond_3e

    .line 1012
    iput-boolean v2, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    .line 1013
    iget-object v2, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v2, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 1017
    :cond_3e
    :goto_3e
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1018
    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v2, :cond_6c

    .line 1019
    iget-object v2, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v2}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v2

    .line 1020
    .local v2, "ids":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4e
    array-length v5, v2

    if-ge v4, v5, :cond_6b

    .line 1021
    iget-object v5, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    aget v6, v2, v4

    invoke-virtual {v5, v6}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    .line 1022
    .local v5, "device":Landroid/view/InputDevice;
    invoke-virtual {v5}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v6

    .line 1023
    .local v6, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v7

    if-eqz v7, :cond_68

    .line 1024
    iget-object v7, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1020
    .end local v5  # "device":Landroid/view/InputDevice;
    .end local v6  # "vibrator":Landroid/os/Vibrator;
    :cond_68
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    .line 1027
    .end local v4  # "i":I
    :cond_6b
    return v3

    .line 1029
    .end local v2  # "ids":[I
    :cond_6c
    return v0
.end method

.method private updateLowPowerModeLocked()Z
    .registers 3

    .line 1033
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 1034
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 1035
    .local v0, "lowPowerMode":Z
    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    if-eq v0, v1, :cond_11

    .line 1036
    iput-boolean v0, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    .line 1037
    const/4 v1, 0x1

    return v1

    .line 1039
    :cond_11
    const/4 v1, 0x0

    return v1
.end method

.method private updateVibrationIntensityLocked()V
    .registers 5

    .line 1043
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    .line 1045
    invoke-virtual {v1}, Landroid/os/Vibrator;->getDefaultHapticFeedbackIntensity()I

    move-result v1

    .line 1043
    const/4 v2, -0x2

    const-string v3, "haptic_feedback_intensity"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    .line 1046
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    .line 1048
    invoke-virtual {v1}, Landroid/os/Vibrator;->getDefaultNotificationVibrationIntensity()I

    move-result v1

    .line 1046
    const-string/jumbo v3, "notification_vibration_intensity"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    .line 1049
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    .line 1051
    invoke-virtual {v1}, Landroid/os/Vibrator;->getDefaultRingVibrationIntensity()I

    move-result v1

    .line 1049
    const-string/jumbo v3, "ring_vibration_intensity"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService;->mRingIntensity:I

    .line 1052
    return-void
.end method

.method private updateVibrators()V
    .registers 4

    .line 979
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 980
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibratorsLocked()Z

    move-result v1

    .line 981
    .local v1, "devicesUpdated":Z
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateLowPowerModeLocked()Z

    move-result v2

    .line 982
    .local v2, "lowPowerModeUpdated":Z
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrationIntensityLocked()V

    .line 984
    if-nez v1, :cond_12

    if-eqz v2, :cond_15

    .line 986
    :cond_12
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 988
    .end local v1  # "devicesUpdated":Z
    .end local v2  # "lowPowerModeUpdated":Z
    :cond_15
    monitor-exit v0

    .line 989
    return-void

    .line 988
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private verifyIncomingUid(I)V
    .registers 7
    .param p1, "uid"  # I

    .line 545
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 546
    return-void

    .line 548
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_12

    .line 549
    return-void

    .line 551
    :cond_12
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 552
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    .line 551
    const-string v4, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 553
    return-void
.end method

.method private static verifyVibrationEffect(Landroid/os/VibrationEffect;)Z
    .registers 5
    .param p0, "effect"  # Landroid/os/VibrationEffect;

    .line 564
    const/4 v0, 0x0

    const-string v1, "VibratorService"

    if-nez p0, :cond_b

    .line 566
    const-string v2, "effect must not be null"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    return v0

    .line 570
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Landroid/os/VibrationEffect;->validate()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_11

    .line 574
    nop

    .line 575
    const/4 v0, 0x1

    return v0

    .line 571
    :catch_11
    move-exception v2

    .line 572
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Encountered issue when verifying VibrationEffect."

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 573
    return v0
.end method

.method static native vibratorExists()Z
.end method

.method static native vibratorInit()V
.end method

.method static native vibratorOff()V
.end method

.method static native vibratorOn(J)V
.end method

.method static native vibratorPerformEffect(JJ)J
.end method

.method static native vibratorSetAmplitude(I)V
.end method

.method static native vibratorSetExternalControl(Z)V
.end method

.method static native vibratorSupportsAmplitudeControl()Z
.end method

.method static native vibratorSupportsExternalControl()Z
.end method


# virtual methods
.method public cancelVibrate(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"  # Landroid/os/IBinder;

    .line 698
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    const-string v2, "cancelVibrate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 703
    :try_start_c
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v1, v1, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    if-ne v1, p1, :cond_2d

    .line 705
    const-string v1, "VibratorService"

    const-string v2, "Canceling vibration."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_2f

    .line 709
    .local v1, "ident":J
    :try_start_21
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_28

    .line 711
    :try_start_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 712
    goto :goto_2d

    .line 711
    :catchall_28
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/VibratorService;
    .end local p1  # "token":Landroid/os/IBinder;
    throw v3

    .line 714
    .end local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/VibratorService;
    .restart local p1  # "token":Landroid/os/IBinder;
    :cond_2d
    :goto_2d
    monitor-exit v0

    .line 715
    return-void

    .line 714
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_24 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 1429
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "VibratorService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 1431
    :cond_b
    const-string v0, "Vibrator Service:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1432
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1433
    :try_start_13
    const-string v1, "  mCurrentVibration="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1434
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v1, :cond_2a

    .line 1435
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->toInfo()Lcom/android/server/VibratorService$VibrationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_30

    .line 1437
    :cond_2a
    const-string/jumbo v1, "null"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1439
    :goto_30
    const-string v1, "  mCurrentExternalVibration="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1440
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    if-eqz v1, :cond_43

    .line 1441
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v1}, Landroid/os/ExternalVibration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_49

    .line 1443
    :cond_43
    const-string/jumbo v1, "null"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1445
    :goto_49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mVibratorUnderExternalControl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mVibratorUnderExternalControl:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLowPowerMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHapticFeedbackIntensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNotificationIntensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mRingIntensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/VibratorService;->mRingIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1450
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1451
    const-string v1, "  Previous ring vibrations:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1452
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPreviousRingVibrations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VibratorService$VibrationInfo;

    .line 1453
    .local v2, "info":Lcom/android/server/VibratorService$VibrationInfo;
    const-string v3, "    "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1454
    invoke-virtual {v2}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1455
    .end local v2  # "info":Lcom/android/server/VibratorService$VibrationInfo;
    goto :goto_c7

    .line 1457
    :cond_e0
    const-string v1, "  Previous notification vibrations:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1458
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPreviousNotificationVibrations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_eb
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_104

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VibratorService$VibrationInfo;

    .line 1459
    .restart local v2  # "info":Lcom/android/server/VibratorService$VibrationInfo;
    const-string v3, "    "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1460
    invoke-virtual {v2}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1461
    .end local v2  # "info":Lcom/android/server/VibratorService$VibrationInfo;
    goto :goto_eb

    .line 1463
    :cond_104
    const-string v1, "  Previous alarm vibrations:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1464
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPreviousAlarmVibrations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_128

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VibratorService$VibrationInfo;

    .line 1465
    .restart local v2  # "info":Lcom/android/server/VibratorService$VibrationInfo;
    const-string v3, "    "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1466
    invoke-virtual {v2}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1467
    .end local v2  # "info":Lcom/android/server/VibratorService$VibrationInfo;
    goto :goto_10f

    .line 1469
    :cond_128
    const-string v1, "  Previous vibrations:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1470
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_133
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VibratorService$VibrationInfo;

    .line 1471
    .restart local v2  # "info":Lcom/android/server/VibratorService$VibrationInfo;
    const-string v3, "    "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1472
    invoke-virtual {v2}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1473
    .end local v2  # "info":Lcom/android/server/VibratorService$VibrationInfo;
    goto :goto_133

    .line 1475
    :cond_14c
    const-string v1, "  Previous external vibrations:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1476
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPreviousExternalVibrations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_157
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_170

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ExternalVibration;

    .line 1477
    .local v2, "vib":Landroid/os/ExternalVibration;
    const-string v3, "    "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1478
    invoke-virtual {v2}, Landroid/os/ExternalVibration;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1479
    .end local v2  # "vib":Landroid/os/ExternalVibration;
    goto :goto_157

    .line 1480
    :cond_170
    monitor-exit v0

    .line 1481
    return-void

    .line 1480
    :catchall_172
    move-exception v1

    monitor-exit v0
    :try_end_174
    .catchall {:try_start_13 .. :try_end_174} :catchall_172

    throw v1
.end method

.method public hasAmplitudeControl()Z
    .registers 3

    .line 537
    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v0

    .line 540
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    monitor-exit v0

    return v1

    .line 541
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public hasVibrator()Z
    .registers 2

    .line 532
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorExists()Z

    move-result v0

    return v0
.end method

.method public onInputDeviceAdded(I)V
    .registers 2
    .param p1, "deviceId"  # I

    .line 1056
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    .line 1057
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .registers 2
    .param p1, "deviceId"  # I

    .line 1061
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    .line 1062
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .registers 2
    .param p1, "deviceId"  # I

    .line 1066
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    .line 1067
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"  # Ljava/io/FileDescriptor;
    .param p2, "out"  # Ljava/io/FileDescriptor;
    .param p3, "err"  # Ljava/io/FileDescriptor;
    .param p4, "args"  # [Ljava/lang/String;
    .param p5, "callback"  # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"  # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1487
    new-instance v0, Lcom/android/server/VibratorService$VibratorShellCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/android/server/VibratorService$VibratorShellCommand;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Lcom/android/server/VibratorService$1;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/VibratorService$VibratorShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 1488
    return-void
.end method

.method public onVibrationFinished()V
    .registers 3

    .line 749
    const-string v0, "VibratorService"

    const-string v1, "Vibration finished, cleaning up"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 754
    :try_start_a
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 755
    monitor-exit v0

    .line 756
    return-void

    .line 755
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_f

    throw v1
.end method

.method public systemReady()V
    .registers 9

    .line 458
    const-wide/32 v0, 0x800000

    const-string v2, "VibratorService#systemReady"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 460
    :try_start_8
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/input/InputManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    iput-object v2, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    .line 461
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/Vibrator;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    .line 462
    new-instance v2, Lcom/android/server/VibratorService$SettingsObserver;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/VibratorService$SettingsObserver;-><init>(Lcom/android/server/VibratorService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 464
    const-class v2, Landroid/os/PowerManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManagerInternal;

    iput-object v2, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 465
    iget-object v2, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v3, Lcom/android/server/VibratorService$3;

    invoke-direct {v3, p0}, Lcom/android/server/VibratorService$3;-><init>(Lcom/android/server/VibratorService;)V

    invoke-virtual {v2, v3}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 478
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vibrate_input_devices"

    .line 479
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 478
    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 482
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_intensity"

    .line 483
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 482
    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 486
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "notification_vibration_intensity"

    .line 487
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 486
    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 490
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "ring_vibration_intensity"

    .line 491
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 490
    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 494
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/VibratorService$4;

    invoke-direct {v3, p0}, Lcom/android/server/VibratorService$4;-><init>(Lcom/android/server/VibratorService;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v4, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_9a
    .catchall {:try_start_8 .. :try_end_9a} :catchall_b6

    .line 502
    :try_start_9a
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VibratorService;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v4, 0x3

    invoke-interface {v2, v3, v4, v6, v7}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_a4
    .catch Landroid/os/RemoteException; {:try_start_9a .. :try_end_a4} :catch_a5
    .catchall {:try_start_9a .. :try_end_a4} :catchall_b6

    .line 507
    goto :goto_a6

    .line 505
    :catch_a5
    move-exception v2

    .line 509
    :goto_a6
    :try_start_a6
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    .line 511
    iget-object v2, p0, Lcom/android/server/VibratorService;->mFlymeVibratorHelper:Landroid/os/FlymeVibratorHelper;

    invoke-virtual {v2}, Landroid/os/FlymeVibratorHelper;->systemReady()V

    .line 512
    invoke-direct {p0}, Lcom/android/server/VibratorService;->registerGameModeObserver()V
    :try_end_b1
    .catchall {:try_start_a6 .. :try_end_b1} :catchall_b6

    .line 515
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 516
    nop

    .line 517
    return-void

    .line 515
    :catchall_b6
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;ILjava/lang/String;Landroid/os/IBinder;)V
    .registers 25
    .param p1, "uid"  # I
    .param p2, "opPkg"  # Ljava/lang/String;
    .param p3, "effect"  # Landroid/os/VibrationEffect;
    .param p4, "usageHint"  # I
    .param p5, "reason"  # Ljava/lang/String;
    .param p6, "token"  # Landroid/os/IBinder;

    .line 593
    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vibrate, reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p5

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v14, 0x800000

    invoke-static {v14, v15, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 595
    :try_start_20
    iget-object v0, v10, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_142

    .line 599
    if-nez p6, :cond_38

    .line 600
    const-string v0, "VibratorService"

    const-string/jumbo v1, "token must not be null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_20 .. :try_end_34} :catchall_14a

    .line 670
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 601
    return-void

    .line 603
    :cond_38
    :try_start_38
    invoke-direct/range {p0 .. p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    .line 604
    invoke-static/range {p3 .. p3}, Lcom/android/server/VibratorService;->verifyVibrationEffect(Landroid/os/VibrationEffect;)Z

    move-result v0
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_14a

    if-nez v0, :cond_45

    .line 670
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 605
    return-void

    .line 610
    :cond_45
    :try_start_45
    iget-object v9, v10, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_14a

    .line 611
    :try_start_48
    instance-of v0, v12, Landroid/os/VibrationEffect$OneShot;

    if-eqz v0, :cond_83

    iget-object v0, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_83

    iget-object v0, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v0, v0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$OneShot;

    if-eqz v0, :cond_83

    .line 614
    move-object v0, v12

    check-cast v0, Landroid/os/VibrationEffect$OneShot;

    .line 615
    .local v0, "newOneShot":Landroid/os/VibrationEffect$OneShot;
    iget-object v1, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v1, v1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v1, Landroid/os/VibrationEffect$OneShot;

    .line 617
    .local v1, "currentOneShot":Landroid/os/VibrationEffect$OneShot;
    iget-object v2, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/VibratorService$Vibration;->hasTimeoutLongerThan(J)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 618
    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v2

    invoke-virtual {v1}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v3

    if-ne v2, v3, :cond_83

    .line 620
    const-string v2, "VibratorService"

    const-string v3, "Ignoring incoming vibration in favor of current vibration"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    monitor-exit v9
    :try_end_7f
    .catchall {:try_start_48 .. :try_end_7f} :catchall_13b

    .line 670
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 623
    return-void

    .line 630
    .end local v0  # "newOneShot":Landroid/os/VibrationEffect$OneShot;
    .end local v1  # "currentOneShot":Landroid/os/VibrationEffect$OneShot;
    :cond_83
    :try_start_83
    iget-object v0, v10, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    if-eqz v0, :cond_93

    .line 632
    const-string v0, "VibratorService"

    const-string v1, "Ignoring incoming vibration for current external vibration"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    monitor-exit v9
    :try_end_8f
    .catchall {:try_start_83 .. :try_end_8f} :catchall_13b

    .line 670
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 634
    return-void

    .line 641
    :cond_93
    :try_start_93
    invoke-static/range {p3 .. p3}, Lcom/android/server/VibratorService;->isRepeatingVibration(Landroid/os/VibrationEffect;)Z

    move-result v0

    if-nez v0, :cond_b3

    iget-object v0, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_b3

    iget-object v0, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v0, v0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    .line 643
    invoke-static {v0}, Lcom/android/server/VibratorService;->isRepeatingVibration(Landroid/os/VibrationEffect;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 645
    const-string v0, "VibratorService"

    const-string v1, "Ignoring incoming vibration in favor of alarm vibration"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    monitor-exit v9
    :try_end_af
    .catchall {:try_start_93 .. :try_end_af} :catchall_13b

    .line 670
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 647
    return-void

    .line 650
    :cond_b3
    :try_start_b3
    new-instance v0, Lcom/android/server/VibratorService$Vibration;
    :try_end_b5
    .catchall {:try_start_b3 .. :try_end_b5} :catchall_13b

    const/16 v16, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p6

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p5

    move-object/from16 v17, v9

    move-object/from16 v9, v16

    :try_start_ca
    invoke-direct/range {v1 .. v9}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;Ljava/lang/String;Lcom/android/server/VibratorService$1;)V

    move-object v1, v0

    .line 651
    .local v1, "vib":Lcom/android/server/VibratorService$Vibration;
    iget-object v0, v10, Lcom/android/server/VibratorService;->mProcStatesCache:Landroid/util/SparseArray;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v11, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v2, :cond_11c

    .line 653
    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->isNotification()Z

    move-result v0

    if-nez v0, :cond_11c

    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    if-nez v0, :cond_11c

    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->isAlarm()Z

    move-result v0

    if-nez v0, :cond_11c

    .line 654
    const-string v0, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring incoming vibration as process with uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is background, usage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    .line 656
    invoke-static {v3}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 654
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    monitor-exit v17
    :try_end_118
    .catchall {:try_start_ca .. :try_end_118} :catchall_140

    .line 670
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 657
    return-void

    .line 659
    :cond_11c
    :try_start_11c
    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->linkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 660
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_123
    .catchall {:try_start_11c .. :try_end_123} :catchall_140

    .line 662
    .local v2, "ident":J
    :try_start_123
    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 663
    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 664
    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_12c
    .catchall {:try_start_123 .. :try_end_12c} :catchall_136

    .line 666
    :try_start_12c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 667
    nop

    .line 668
    .end local v1  # "vib":Lcom/android/server/VibratorService$Vibration;
    .end local v2  # "ident":J
    monitor-exit v17
    :try_end_131
    .catchall {:try_start_12c .. :try_end_131} :catchall_140

    .line 670
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 671
    nop

    .line 672
    return-void

    .line 666
    .restart local v1  # "vib":Lcom/android/server/VibratorService$Vibration;
    .restart local v2  # "ident":J
    :catchall_136
    move-exception v0

    :try_start_137
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/VibratorService;
    .end local p1  # "uid":I
    .end local p2  # "opPkg":Ljava/lang/String;
    .end local p3  # "effect":Landroid/os/VibrationEffect;
    .end local p4  # "usageHint":I
    .end local p5  # "reason":Ljava/lang/String;
    .end local p6  # "token":Landroid/os/IBinder;
    throw v0

    .line 668
    .end local v1  # "vib":Lcom/android/server/VibratorService$Vibration;
    .end local v2  # "ident":J
    .restart local p0  # "this":Lcom/android/server/VibratorService;
    .restart local p1  # "uid":I
    .restart local p2  # "opPkg":Ljava/lang/String;
    .restart local p3  # "effect":Landroid/os/VibrationEffect;
    .restart local p4  # "usageHint":I
    .restart local p5  # "reason":Ljava/lang/String;
    .restart local p6  # "token":Landroid/os/IBinder;
    :catchall_13b
    move-exception v0

    move-object/from16 v17, v9

    :goto_13e
    monitor-exit v17
    :try_end_13f
    .catchall {:try_start_137 .. :try_end_13f} :catchall_140

    .end local p0  # "this":Lcom/android/server/VibratorService;
    .end local p1  # "uid":I
    .end local p2  # "opPkg":Ljava/lang/String;
    .end local p3  # "effect":Landroid/os/VibrationEffect;
    .end local p4  # "usageHint":I
    .end local p5  # "reason":Ljava/lang/String;
    .end local p6  # "token":Landroid/os/IBinder;
    :try_start_13f
    throw v0

    .restart local p0  # "this":Lcom/android/server/VibratorService;
    .restart local p1  # "uid":I
    .restart local p2  # "opPkg":Ljava/lang/String;
    .restart local p3  # "effect":Landroid/os/VibrationEffect;
    .restart local p4  # "usageHint":I
    .restart local p5  # "reason":Ljava/lang/String;
    .restart local p6  # "token":Landroid/os/IBinder;
    :catchall_140
    move-exception v0

    goto :goto_13e

    .line 597
    :cond_142
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires VIBRATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/VibratorService;
    .end local p1  # "uid":I
    .end local p2  # "opPkg":Ljava/lang/String;
    .end local p3  # "effect":Landroid/os/VibrationEffect;
    .end local p4  # "usageHint":I
    .end local p5  # "reason":Ljava/lang/String;
    .end local p6  # "token":Landroid/os/IBinder;
    throw v0
    :try_end_14a
    .catchall {:try_start_13f .. :try_end_14a} :catchall_14a

    .line 670
    .restart local p0  # "this":Lcom/android/server/VibratorService;
    .restart local p1  # "uid":I
    .restart local p2  # "opPkg":Ljava/lang/String;
    .restart local p3  # "effect":Landroid/os/VibrationEffect;
    .restart local p4  # "usageHint":I
    .restart local p5  # "reason":Ljava/lang/String;
    .restart local p6  # "token":Landroid/os/IBinder;
    :catchall_14a
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method
