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
.field private static final DEBUG:Z = false

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

    .line 85
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
    .registers 9

    .line 342
    invoke-direct {p0}, Landroid/os/IVibratorService$Stub;-><init>()V

    .line 128
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mProcStatesCache:Landroid/util/SparseArray;

    .line 129
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 130
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    .line 170
    new-instance v1, Lcom/android/server/VibratorService$1;

    invoke-direct {v1, p0}, Lcom/android/server/VibratorService$1;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v1, p0, Lcom/android/server/VibratorService;->mUidObserver:Landroid/app/IUidObserver;

    .line 699
    new-instance v1, Lcom/android/server/VibratorService$4;

    invoke-direct {v1, p0}, Lcom/android/server/VibratorService$4;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v1, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    .line 1388
    new-instance v1, Lcom/android/server/VibratorService$5;

    invoke-direct {v1, p0}, Lcom/android/server/VibratorService$5;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v1, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 343
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorInit()V

    .line 346
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    .line 348
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorSupportsAmplitudeControl()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    .line 349
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorSupportsExternalControl()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/VibratorService;->mSupportsExternalControl:Z

    .line 351
    iput-object p1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 352
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 353
    const/4 v2, 0x1

    const-string v3, "*vibrator*"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 354
    iget-object v1, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 356
    iget-object v1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    .line 357
    const-string v1, "batterystats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    .line 360
    iget-object v1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10e009d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    .line 363
    iget-object v1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10e0041

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    .line 366
    iget-object v1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1110012

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/VibratorService;->mAllowPriorityVibrationsInLowPowerMode:Z

    .line 369
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/VibratorService;->mPreviousRingVibrations:Ljava/util/LinkedList;

    .line 370
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/VibratorService;->mPreviousNotificationVibrations:Ljava/util/LinkedList;

    .line 371
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/VibratorService;->mPreviousAlarmVibrations:Ljava/util/LinkedList;

    .line 372
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    .line 373
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/VibratorService;->mPreviousExternalVibrations:Ljava/util/LinkedList;

    .line 375
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 376
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 377
    iget-object v3, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 379
    const p1, 0x1070079

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object p1

    .line 381
    sget-object v1, Lcom/android/server/VibratorService;->DOUBLE_CLICK_EFFECT_FALLBACK_TIMINGS:[J

    invoke-static {v1, v0}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v1

    .line 383
    const v3, 0x107004f

    invoke-direct {p0, v3}, Lcom/android/server/VibratorService;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v3

    .line 385
    const v4, 0x1070022

    invoke-direct {p0, v4}, Lcom/android/server/VibratorService;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v4

    .line 388
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    .line 389
    iget-object v5, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 390
    iget-object p1, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 391
    iget-object p1, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 392
    iget-object p1, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    const/4 v4, 0x5

    invoke-virtual {p1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 394
    iget-object p1, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    .line 395
    invoke-static {v1, v6}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v3

    .line 394
    const/16 v4, 0x15

    invoke-virtual {p1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 397
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    .line 398
    iget-object p1, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v4, 0x40000000  # 2.0f

    const/16 v5, 0xa8

    invoke-direct {v3, v4, v5}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(FI)V

    const/4 v4, -0x2

    invoke-virtual {p1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 400
    iget-object p1, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v4, 0x3fc00000  # 1.5f

    const/16 v5, 0xc0

    invoke-direct {v3, v4, v5}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(FI)V

    invoke-virtual {p1, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 401
    iget-object p1, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {v0, v3}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(F)V

    invoke-virtual {p1, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 402
    iget-object p1, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v3, 0x3f000000  # 0.5f

    invoke-direct {v0, v3}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(F)V

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 403
    iget-object p1, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v2, 0x3e800000  # 0.25f

    invoke-direct {v0, v2}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(F)V

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 405
    new-instance p1, Lcom/android/server/VibratorService$ExternalVibratorService;

    invoke-direct {p1, p0}, Lcom/android/server/VibratorService$ExternalVibratorService;-><init>(Lcom/android/server/VibratorService;)V

    const-string v0, "external_vibrator_service"

    invoke-static {v0, p1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 406
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/VibratorService;)Landroid/util/SparseArray;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/android/server/VibratorService;->mProcStatesCache:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/VibratorService;)Ljava/lang/Object;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/server/VibratorService;JIILandroid/media/AudioAttributes;)V
    .registers 6

    .line 77
    invoke-direct/range {p0 .. p5}, Lcom/android/server/VibratorService;->doVibratorOn(JIILandroid/media/AudioAttributes;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/VibratorService;I)V
    .registers 2

    .line 77
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/server/VibratorService;)Z
    .registers 1

    .line 77
    iget-boolean p0, p0, Lcom/android/server/VibratorService;->mSupportsExternalControl:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/android/server/VibratorService;)Landroid/os/ExternalVibration;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/android/server/VibratorService;Landroid/os/ExternalVibration;)Landroid/os/ExternalVibration;
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/server/VibratorService;Z)V
    .registers 2

    .line 77
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->setVibratorUnderExternalControl(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/android/server/VibratorService;->mPreviousExternalVibrations:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/server/VibratorService;)I
    .registers 1

    .line 77
    iget p0, p0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    return p0
.end method

.method static synthetic access$2200(Lcom/android/server/VibratorService;)Landroid/os/Vibrator;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/server/VibratorService;)I
    .registers 1

    .line 77
    iget p0, p0, Lcom/android/server/VibratorService;->mRingIntensity:I

    return p0
.end method

.method static synthetic access$2400(Lcom/android/server/VibratorService;)I
    .registers 1

    .line 77
    iget p0, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    return p0
.end method

.method static synthetic access$2500(Lcom/android/server/VibratorService;)I
    .registers 1

    .line 77
    iget p0, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    return p0
.end method

.method static synthetic access$2600(Lcom/android/server/VibratorService;)Landroid/content/Context;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/VibratorService;)V
    .registers 1

    .line 77
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    return-void
.end method

.method static synthetic access$400(I)Z
    .registers 1

    .line 77
    invoke-static {p0}, Lcom/android/server/VibratorService;->isHapticFeedback(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(I)Z
    .registers 1

    .line 77
    invoke-static {p0}, Lcom/android/server/VibratorService;->isNotification(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(I)Z
    .registers 1

    .line 77
    invoke-static {p0}, Lcom/android/server/VibratorService;->isRingtone(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(I)Z
    .registers 1

    .line 77
    invoke-static {p0}, Lcom/android/server/VibratorService;->isAlarm(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/server/VibratorService;)V
    .registers 1

    .line 77
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    return-void
.end method

.method private addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    .registers 5

    .line 662
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 663
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousRingVibrations:Ljava/util/LinkedList;

    goto :goto_1d

    .line 664
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isNotification()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 665
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousNotificationVibrations:Ljava/util/LinkedList;

    goto :goto_1d

    .line 666
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isAlarm()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 667
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousAlarmVibrations:Ljava/util/LinkedList;

    goto :goto_1d

    .line 669
    :cond_1b
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    .line 672
    :goto_1d
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    if-le v1, v2, :cond_28

    .line 673
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 675
    :cond_28
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->toInfo()Lcom/android/server/VibratorService$VibrationInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 676
    return-void
.end method

.method private applyVibrationIntensityScalingLocked(Lcom/android/server/VibratorService$Vibration;I)V
    .registers 6

    .line 844
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$Prebaked;

    if-eqz v0, :cond_12

    .line 847
    iget-object p1, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast p1, Landroid/os/VibrationEffect$Prebaked;

    .line 848
    invoke-static {p2}, Lcom/android/server/VibratorService;->intensityToEffectStrength(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/VibrationEffect$Prebaked;->setEffectStrength(I)V

    .line 849
    return-void

    .line 853
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 854
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->getDefaultRingVibrationIntensity()I

    move-result v0

    goto :goto_40

    .line 855
    :cond_1f
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isNotification()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 856
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->getDefaultNotificationVibrationIntensity()I

    move-result v0

    goto :goto_40

    .line 857
    :cond_2c
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isHapticFeedback()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 858
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->getDefaultHapticFeedbackIntensity()I

    move-result v0

    goto :goto_40

    .line 859
    :cond_39
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isAlarm()Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 860
    const/4 v0, 0x3

    .line 867
    :goto_40
    iget-object v1, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    sub-int v2, p2, v0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VibratorService$ScaleLevel;

    .line 868
    const-string v2, "VibratorService"

    if-nez v1, :cond_70

    .line 871
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No configured scaling level! (current="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", default= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    return-void

    .line 876
    :cond_70
    const/4 p2, 0x0

    .line 877
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$OneShot;

    if-eqz v0, :cond_8a

    .line 878
    iget-object p2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast p2, Landroid/os/VibrationEffect$OneShot;

    .line 879
    iget v0, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    invoke-virtual {p2, v0}, Landroid/os/VibrationEffect$OneShot;->resolve(I)Landroid/os/VibrationEffect$OneShot;

    move-result-object p2

    .line 880
    iget v0, v1, Lcom/android/server/VibratorService$ScaleLevel;->gamma:F

    iget v1, v1, Lcom/android/server/VibratorService$ScaleLevel;->maxAmplitude:I

    invoke-virtual {p2, v0, v1}, Landroid/os/VibrationEffect$OneShot;->scale(FI)Landroid/os/VibrationEffect$OneShot;

    move-result-object p2

    .line 881
    goto :goto_a8

    :cond_8a
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v0, :cond_a3

    .line 882
    iget-object p2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast p2, Landroid/os/VibrationEffect$Waveform;

    .line 883
    iget v0, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    invoke-virtual {p2, v0}, Landroid/os/VibrationEffect$Waveform;->resolve(I)Landroid/os/VibrationEffect$Waveform;

    move-result-object p2

    .line 884
    iget v0, v1, Lcom/android/server/VibratorService$ScaleLevel;->gamma:F

    iget v1, v1, Lcom/android/server/VibratorService$ScaleLevel;->maxAmplitude:I

    invoke-virtual {p2, v0, v1}, Landroid/os/VibrationEffect$Waveform;->scale(FI)Landroid/os/VibrationEffect$Waveform;

    move-result-object p2

    .line 885
    goto :goto_a8

    .line 886
    :cond_a3
    const-string v0, "Unable to apply intensity scaling, unknown VibrationEffect type"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :goto_a8
    if-eqz p2, :cond_b0

    .line 890
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    iput-object v0, p1, Lcom/android/server/VibratorService$Vibration;->originalEffect:Landroid/os/VibrationEffect;

    .line 891
    iput-object p2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    .line 893
    :cond_b0
    return-void

    .line 864
    :cond_b1
    return-void
.end method

.method private createEffectFromResource(I)Landroid/os/VibrationEffect;
    .registers 3

    .line 409
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/VibratorService;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object p1

    .line 410
    invoke-static {p1}, Lcom/android/server/VibratorService;->createEffectFromTimings([J)Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1
.end method

.method private static createEffectFromTimings([J)Landroid/os/VibrationEffect;
    .registers 4

    .line 414
    if-eqz p0, :cond_18

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_18

    .line 416
    :cond_6
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_13

    .line 417
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 419
    :cond_13
    invoke-static {p0, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 415
    :cond_18
    :goto_18
    const/4 p0, 0x0

    return-object p0
.end method

.method private doCancelVibrateLocked()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 708
    const/4 v0, 0x0

    const-wide/32 v1, 0x800000

    const-string/jumbo v3, "vibration"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 709
    const-string v3, "doCancelVibrateLocked"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 711
    :try_start_f
    iget-object v3, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 712
    iget-object v3, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    const/4 v4, 0x0

    if-eqz v3, :cond_22

    .line 713
    iget-object v3, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v3}, Lcom/android/server/VibratorService$VibrateThread;->cancel()V

    .line 714
    iput-object v4, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 716
    :cond_22
    iget-object v3, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    if-eqz v3, :cond_30

    .line 717
    iget-object v3, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v3}, Landroid/os/ExternalVibration;->mute()Z

    .line 718
    iput-object v4, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    .line 719
    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->setVibratorUnderExternalControl(Z)V

    .line 721
    :cond_30
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorOff()V

    .line 722
    invoke-direct {p0}, Lcom/android/server/VibratorService;->reportFinishVibrationLocked()V
    :try_end_36
    .catchall {:try_start_f .. :try_end_36} :catchall_3b

    .line 724
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 725
    nop

    .line 726
    return-void

    .line 724
    :catchall_3b
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private doVibratorExists()Z
    .registers 2

    .line 1066
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorExists()Z

    move-result v0

    return v0
.end method

.method private doVibratorOff()V
    .registers 7

    .line 1106
    const-wide/32 v0, 0x800000

    const-string v2, "doVibratorOff"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1108
    :try_start_8
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_33

    .line 1112
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/VibratorService;->noteVibratorOffLocked()V

    .line 1113
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1114
    if-eqz v3, :cond_27

    .line 1115
    const/4 v4, 0x0

    :goto_17
    if-ge v4, v3, :cond_2a

    .line 1116
    iget-object v5, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    invoke-virtual {v5}, Landroid/os/Vibrator;->cancel()V

    .line 1115
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 1119
    :cond_27
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    .line 1121
    :cond_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_30

    .line 1123
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1124
    nop

    .line 1125
    return-void

    .line 1121
    :catchall_30
    move-exception v3

    :try_start_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    :try_start_32
    throw v3
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    .line 1123
    :catchall_33
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private doVibratorOn(JIILandroid/media/AudioAttributes;)V
    .registers 10

    .line 1070
    const-wide/32 v0, 0x800000

    const-string v2, "doVibratorOn"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1072
    :try_start_8
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_3b

    .line 1073
    const/4 v3, -0x1

    if-ne p3, v3, :cond_10

    .line 1074
    :try_start_e
    iget p3, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    .line 1080
    :cond_10
    invoke-direct {p0, p4, p1, p2}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V

    .line 1081
    iget-object p4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 1082
    if-eqz p4, :cond_2c

    .line 1083
    const/4 p3, 0x0

    :goto_1c
    if-ge p3, p4, :cond_32

    .line 1084
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    invoke-virtual {v3, p1, p2, p5}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 1083
    add-int/lit8 p3, p3, 0x1

    goto :goto_1c

    .line 1090
    :cond_2c
    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->vibratorOn(J)V

    .line 1091
    invoke-direct {p0, p3}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V

    .line 1093
    :cond_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_e .. :try_end_33} :catchall_38

    .line 1095
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1096
    nop

    .line 1097
    return-void

    .line 1093
    :catchall_38
    move-exception p1

    :try_start_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    :try_start_3a
    throw p1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    .line 1095
    :catchall_3b
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method private doVibratorPrebakedEffectLocked(Lcom/android/server/VibratorService$Vibration;)J
    .registers 17
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1129
    move-object v0, p0

    move-object/from16 v1, p1

    const-wide/32 v10, 0x800000

    const-string v2, "doVibratorPrebakedEffectLocked"

    invoke-static {v10, v11, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1131
    :try_start_b
    iget-object v2, v1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$Prebaked;

    .line 1133
    iget-object v3, v0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_97

    .line 1134
    :try_start_12
    iget-object v4, v0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1c

    const/4 v4, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v4, 0x0

    .line 1135
    :goto_1d
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_94

    .line 1137
    const-wide/16 v12, 0x0

    if-nez v4, :cond_3e

    .line 1138
    :try_start_22
    invoke-virtual {v2}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v3

    int-to-long v3, v3

    .line 1139
    invoke-virtual {v2}, Landroid/os/VibrationEffect$Prebaked;->getEffectStrength()I

    move-result v5

    int-to-long v5, v5

    .line 1138
    invoke-static {v3, v4, v5, v6}, Lcom/android/server/VibratorService;->vibratorPerformEffect(JJ)J

    move-result-wide v3

    .line 1140
    cmp-long v5, v3, v12

    if-lez v5, :cond_3e

    .line 1141
    iget v1, v1, Lcom/android/server/VibratorService$Vibration;->uid:I

    invoke-direct {p0, v1, v3, v4}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V
    :try_end_39
    .catchall {:try_start_22 .. :try_end_39} :catchall_97

    .line 1142
    nop

    .line 1161
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1142
    return-wide v3

    .line 1145
    :cond_3e
    :try_start_3e
    invoke-virtual {v2}, Landroid/os/VibrationEffect$Prebaked;->shouldFallback()Z

    move-result v3
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_97

    if-nez v3, :cond_49

    .line 1146
    nop

    .line 1161
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1146
    return-wide v12

    .line 1148
    :cond_49
    :try_start_49
    invoke-virtual {v2}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->getFallbackEffect(I)Landroid/os/VibrationEffect;

    move-result-object v4

    .line 1149
    if-nez v4, :cond_5f

    .line 1150
    const-string v0, "VibratorService"

    const-string v1, "Failed to play prebaked effect, no fallback"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_49 .. :try_end_5a} :catchall_97

    .line 1151
    nop

    .line 1161
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1151
    return-wide v12

    .line 1153
    :cond_5f
    :try_start_5f
    new-instance v14, Lcom/android/server/VibratorService$Vibration;

    iget-object v3, v1, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    iget-object v5, v1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/media/AudioAttributes;

    iget v6, v1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v7, v1, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lcom/android/server/VibratorService$Vibration;->reason:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (fallback)"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v1, v14

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/VibratorService$1;)V

    .line 1155
    invoke-direct {p0, v14}, Lcom/android/server/VibratorService;->getCurrentIntensityLocked(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    .line 1156
    invoke-direct {p0, v14}, Lcom/android/server/VibratorService;->linkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 1157
    invoke-direct {p0, v14, v1}, Lcom/android/server/VibratorService;->applyVibrationIntensityScalingLocked(Lcom/android/server/VibratorService$Vibration;I)V

    .line 1158
    invoke-direct {p0, v14}, Lcom/android/server/VibratorService;->startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_8f
    .catchall {:try_start_5f .. :try_end_8f} :catchall_97

    .line 1159
    nop

    .line 1161
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1159
    return-wide v12

    .line 1135
    :catchall_94
    move-exception v0

    :try_start_95
    monitor-exit v3
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    :try_start_96
    throw v0
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_97

    .line 1161
    :catchall_97
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private doVibratorSetAmplitude(I)V
    .registers 3

    .line 1100
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    if-eqz v0, :cond_7

    .line 1101
    invoke-static {p1}, Lcom/android/server/VibratorService;->vibratorSetAmplitude(I)V

    .line 1103
    :cond_7
    return-void
.end method

.method private getAppOpMode(Lcom/android/server/VibratorService$Vibration;)I
    .registers 7

    .line 917
    iget-object v0, p0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v1, p1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/media/AudioAttributes;

    .line 918
    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    iget v2, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v3, p1, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    .line 917
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AppOpsManager;->checkAudioOpNoThrow(IIILjava/lang/String;)I

    move-result v0

    .line 919
    if-nez v0, :cond_1d

    .line 920
    iget-object v0, p0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    iget v1, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 923
    :cond_1d
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3f

    iget-object v1, p1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/media/AudioAttributes;

    invoke-static {v1}, Lcom/android/server/VibratorService;->shouldBypassDnd(Landroid/media/AudioAttributes;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bypassing DND for vibration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VibratorService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    const/4 v0, 0x0

    .line 930
    :cond_3f
    return v0
.end method

.method private getCurrentIntensityLocked(Lcom/android/server/VibratorService$Vibration;)I
    .registers 3

    .line 827
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 828
    iget p1, p0, Lcom/android/server/VibratorService;->mRingIntensity:I

    return p1

    .line 829
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isNotification()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 830
    iget p1, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    return p1

    .line 831
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isHapticFeedback()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 832
    iget p1, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    return p1

    .line 833
    :cond_1b
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isAlarm()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 834
    const/4 p1, 0x3

    return p1

    .line 836
    :cond_23
    const/4 p1, 0x2

    return p1
.end method

.method private getFallbackEffect(I)Landroid/os/VibrationEffect;
    .registers 3

    .line 1166
    iget-object v0, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/VibrationEffect;

    return-object p1
.end method

.method private static getLongIntArray(Landroid/content/res/Resources;I)[J
    .registers 5

    .line 541
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    .line 542
    if-nez p0, :cond_8

    .line 543
    const/4 p0, 0x0

    return-object p0

    .line 545
    :cond_8
    array-length p1, p0

    new-array p1, p1, [J

    .line 546
    const/4 v0, 0x0

    :goto_c
    array-length v1, p0

    if-ge v0, v1, :cond_17

    .line 547
    aget v1, p0, v0

    int-to-long v1, v1

    aput-wide v1, p1, v0

    .line 546
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 549
    :cond_17
    return-object p1
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .registers 3

    .line 652
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method private static intensityToEffectStrength(I)I
    .registers 4

    .line 1175
    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v1, 0x2

    if-eq p0, v1, :cond_21

    const/4 v0, 0x3

    if-eq p0, v0, :cond_20

    .line 1183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got unexpected vibration intensity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VibratorService"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    return v1

    .line 1181
    :cond_20
    return v1

    .line 1179
    :cond_21
    return v0

    .line 1177
    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method private static isAlarm(I)Z
    .registers 2

    .line 1210
    const/4 v0, 0x4

    if-ne p0, v0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method private isAllowedToVibrateLocked(Lcom/android/server/VibratorService$Vibration;)Z
    .registers 5

    .line 808
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 809
    return v1

    .line 812
    :cond_6
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_10

    .line 813
    return v1

    .line 816
    :cond_10
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2f

    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/media/AudioAttributes;

    .line 817
    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    const/16 v2, 0xb

    if-eq v0, v2, :cond_2f

    iget-object p1, p1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/media/AudioAttributes;

    .line 818
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_2d

    goto :goto_2f

    .line 823
    :cond_2d
    const/4 p1, 0x0

    return p1

    .line 820
    :cond_2f
    :goto_2f
    return v1
.end method

.method private static isHapticFeedback(I)Z
    .registers 2

    .line 1206
    const/16 v0, 0xd

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private static isNotification(I)Z
    .registers 1

    .line 1189
    packed-switch p0, :pswitch_data_8

    .line 1197
    :pswitch_3  #0x6
    const/4 p0, 0x0

    return p0

    .line 1195
    :pswitch_5  #0x5, 0x7, 0x8, 0x9, 0xa
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_8
    .packed-switch 0x5
        :pswitch_5  #00000005
        :pswitch_3  #00000006
        :pswitch_5  #00000007
        :pswitch_5  #00000008
        :pswitch_5  #00000009
        :pswitch_5  #0000000a
    .end packed-switch
.end method

.method private static isRepeatingVibration(Landroid/os/VibrationEffect;)Z
    .registers 5

    .line 657
    invoke-virtual {p0}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p0, v0, v2

    if-nez p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method private static isRingtone(I)Z
    .registers 2

    .line 1202
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method private linkVibration(Lcom/android/server/VibratorService$Vibration;)V
    .registers 4

    .line 951
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v0, :cond_f

    .line 953
    :try_start_6
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    .line 956
    goto :goto_f

    .line 954
    :catch_d
    move-exception p1

    .line 955
    return-void

    .line 958
    :cond_f
    :goto_f
    return-void
.end method

.method private noteVibratorOffLocked()V
    .registers 5

    .line 1224
    iget v0, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    if-ltz v0, :cond_18

    .line 1226
    :try_start_4
    iget-object v1, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, v0}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOff(I)V

    .line 1227
    const/16 v0, 0x54

    iget v1, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;II)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_13

    goto :goto_14

    .line 1229
    :catch_13
    move-exception v0

    :goto_14
    nop

    .line 1230
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    .line 1232
    :cond_18
    return-void
.end method

.method private noteVibratorOnLocked(IJ)V
    .registers 11

    .line 1215
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOn(IJ)V

    .line 1216
    const/16 v1, 0x54

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v2, p1

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;IJ)I

    .line 1218
    iput p1, p0, Lcom/android/server/VibratorService;->mCurVibUid:I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    .line 1220
    goto :goto_12

    .line 1219
    :catch_11
    move-exception p1

    .line 1221
    :goto_12
    return-void
.end method

.method private reportFinishVibrationLocked()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 935
    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "reportFinishVibrationLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 937
    :try_start_9
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_23

    .line 938
    iget-object v2, p0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget v4, v4, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v5, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v5, v5, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 940
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 941
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_28

    .line 944
    :cond_23
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 945
    nop

    .line 946
    return-void

    .line 944
    :catchall_28
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private setVibratorUnderExternalControl(Z)V
    .registers 2

    .line 1242
    iput-boolean p1, p0, Lcom/android/server/VibratorService;->mVibratorUnderExternalControl:Z

    .line 1243
    invoke-static {p1}, Lcom/android/server/VibratorService;->vibratorSetExternalControl(Z)V

    .line 1244
    return-void
.end method

.method private static shouldBypassDnd(Landroid/media/AudioAttributes;)Z
    .registers 1

    .line 913
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private shouldVibrateForRingtone()Z
    .registers 6

    .line 896
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 897
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    .line 899
    iget-object v1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 900
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 899
    const/4 v2, 0x0

    const-string/jumbo v3, "vibrate_when_ringing"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_23

    .line 901
    if-eqz v0, :cond_22

    move v2, v3

    :cond_22
    return v2

    .line 902
    :cond_23
    iget-object v1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 903
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 902
    const-string v4, "apply_ramping_ringer"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_41

    .line 904
    const-string/jumbo v1, "telephony"

    const-string/jumbo v4, "ramping_ringer_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 906
    if-eqz v0, :cond_40

    move v2, v3

    :cond_40
    return v2

    .line 908
    :cond_41
    if-ne v0, v3, :cond_44

    move v2, v3

    :cond_44
    return v2
.end method

.method private startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 778
    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "startVibrationInnerLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 780
    :try_start_9
    iput-object p1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 781
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$OneShot;
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_7d

    const/4 v3, 0x0

    const-string/jumbo v4, "vibration"

    if-eqz v2, :cond_38

    .line 782
    :try_start_15
    invoke-static {v0, v1, v4, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 783
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$OneShot;

    .line 784
    invoke-virtual {v2}, Landroid/os/VibrationEffect$OneShot;->getDuration()J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v6

    iget v7, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v8, p1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/media/AudioAttributes;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/VibratorService;->doVibratorOn(JIILandroid/media/AudioAttributes;)V

    .line 785
    iget-object p1, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2}, Landroid/os/VibrationEffect$OneShot;->getDuration()J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 786
    goto :goto_78

    :cond_38
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$Waveform;

    if-eqz v2, :cond_56

    .line 789
    invoke-static {v0, v1, v4, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 790
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$Waveform;

    .line 791
    new-instance v3, Lcom/android/server/VibratorService$VibrateThread;

    iget v4, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object p1, p1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/media/AudioAttributes;

    invoke-direct {v3, p0, v2, v4, p1}, Lcom/android/server/VibratorService$VibrateThread;-><init>(Lcom/android/server/VibratorService;Landroid/os/VibrationEffect$Waveform;ILandroid/media/AudioAttributes;)V

    iput-object v3, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 792
    iget-object p1, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {p1}, Lcom/android/server/VibratorService$VibrateThread;->start()V

    .line 793
    goto :goto_78

    :cond_56
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$Prebaked;

    if-eqz v2, :cond_71

    .line 794
    invoke-static {v0, v1, v4, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 795
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->doVibratorPrebakedEffectLocked(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v2

    .line 796
    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_70

    .line 797
    iget-object p1, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 799
    :cond_70
    goto :goto_78

    .line 800
    :cond_71
    const-string p1, "VibratorService"

    const-string v2, "Unknown vibration type, ignoring"

    invoke-static {p1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catchall {:try_start_15 .. :try_end_78} :catchall_7d

    .line 803
    :goto_78
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 804
    nop

    .line 805
    return-void

    .line 803
    :catchall_7d
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method private startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 742
    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "startVibrationLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 744
    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->isAllowedToVibrateLocked(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v2
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_5d

    if-nez v2, :cond_13

    .line 772
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 745
    return-void

    .line 748
    :cond_13
    :try_start_13
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->getCurrentIntensityLocked(Lcom/android/server/VibratorService$Vibration;)I

    move-result v2
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_5d

    .line 749
    if-nez v2, :cond_1d

    .line 772
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 750
    return-void

    .line 753
    :cond_1d
    :try_start_1d
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-direct {p0}, Lcom/android/server/VibratorService;->shouldVibrateForRingtone()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_5d

    if-nez v3, :cond_2d

    .line 772
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 757
    return-void

    .line 760
    :cond_2d
    :try_start_2d
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->getAppOpMode(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    .line 761
    if-eqz v3, :cond_52

    .line 762
    const/4 v2, 0x2

    if-ne v3, v2, :cond_4e

    .line 765
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Would be an error: vibrate from uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_2d .. :try_end_4e} :catchall_5d

    .line 772
    :cond_4e
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 767
    return-void

    .line 769
    :cond_52
    :try_start_52
    invoke-direct {p0, p1, v2}, Lcom/android/server/VibratorService;->applyVibrationIntensityScalingLocked(Lcom/android/server/VibratorService$Vibration;I)V

    .line 770
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_58
    .catchall {:try_start_52 .. :try_end_58} :catchall_5d

    .line 772
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 773
    nop

    .line 774
    return-void

    .line 772
    :catchall_5d
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method private unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    .registers 4

    .line 961
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v0, :cond_c

    .line 962
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 964
    :cond_c
    return-void
.end method

.method private updateInputDeviceVibratorsLocked()Z
    .registers 6

    .line 980
    nop

    .line 981
    nop

    .line 983
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 984
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vibrate_input_devices"

    const/4 v4, -0x2

    .line 983
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2
    :try_end_12
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_4 .. :try_end_12} :catch_18

    if-lez v2, :cond_16

    move v2, v0

    goto :goto_17

    :cond_16
    move v2, v1

    .line 987
    :goto_17
    goto :goto_1a

    .line 986
    :catch_18
    move-exception v2

    move v2, v1

    .line 988
    :goto_1a
    iget-boolean v3, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eq v2, v3, :cond_23

    .line 989
    nop

    .line 990
    iput-boolean v2, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    move v2, v0

    goto :goto_24

    .line 988
    :cond_23
    move v2, v1

    .line 993
    :goto_24
    iget-boolean v3, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v3, :cond_36

    .line 994
    iget-boolean v3, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-nez v3, :cond_41

    .line 995
    iput-boolean v0, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    .line 996
    iget-object v3, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    iget-object v4, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-virtual {v3, p0, v4}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    goto :goto_41

    .line 999
    :cond_36
    iget-boolean v3, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-eqz v3, :cond_41

    .line 1000
    iput-boolean v1, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    .line 1001
    iget-object v3, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v3, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 1005
    :cond_41
    :goto_41
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1006
    iget-boolean v3, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v3, :cond_6f

    .line 1007
    iget-object v2, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v2}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v2

    .line 1008
    nop

    :goto_51
    array-length v3, v2

    if-ge v1, v3, :cond_6e

    .line 1009
    iget-object v3, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    aget v4, v2, v1

    invoke-virtual {v3, v4}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    .line 1010
    invoke-virtual {v3}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v3

    .line 1011
    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 1012
    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1008
    :cond_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 1015
    :cond_6e
    return v0

    .line 1017
    :cond_6f
    return v2
.end method

.method private updateLowPowerModeLocked()Z
    .registers 3

    .line 1021
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 1022
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 1023
    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    if-eq v0, v1, :cond_11

    .line 1024
    iput-boolean v0, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    .line 1025
    const/4 v0, 0x1

    return v0

    .line 1027
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method private updateVibrationIntensityLocked()V
    .registers 5

    .line 1031
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    .line 1033
    invoke-virtual {v1}, Landroid/os/Vibrator;->getDefaultHapticFeedbackIntensity()I

    move-result v1

    .line 1031
    const/4 v2, -0x2

    const-string v3, "haptic_feedback_intensity"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    .line 1034
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    .line 1036
    invoke-virtual {v1}, Landroid/os/Vibrator;->getDefaultNotificationVibrationIntensity()I

    move-result v1

    .line 1034
    const-string/jumbo v3, "notification_vibration_intensity"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    .line 1037
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    .line 1039
    invoke-virtual {v1}, Landroid/os/Vibrator;->getDefaultRingVibrationIntensity()I

    move-result v1

    .line 1037
    const-string/jumbo v3, "ring_vibration_intensity"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService;->mRingIntensity:I

    .line 1040
    return-void
.end method

.method private updateVibrators()V
    .registers 4

    .line 967
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 968
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibratorsLocked()Z

    move-result v1

    .line 969
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateLowPowerModeLocked()Z

    move-result v2

    .line 970
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrationIntensityLocked()V

    .line 972
    if-nez v1, :cond_12

    if-eqz v2, :cond_15

    .line 974
    :cond_12
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 976
    :cond_15
    monitor-exit v0

    .line 977
    return-void

    .line 976
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private verifyIncomingUid(I)V
    .registers 6

    .line 507
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 508
    return-void

    .line 510
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_12

    .line 511
    return-void

    .line 513
    :cond_12
    iget-object p1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 514
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, 0x0

    .line 513
    const-string v3, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 515
    return-void
.end method

.method private static verifyVibrationEffect(Landroid/os/VibrationEffect;)Z
    .registers 4

    .line 526
    const/4 v0, 0x0

    const-string v1, "VibratorService"

    if-nez p0, :cond_b

    .line 528
    const-string p0, "effect must not be null"

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    return v0

    .line 532
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Landroid/os/VibrationEffect;->validate()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_11

    .line 536
    nop

    .line 537
    const/4 p0, 0x1

    return p0

    .line 533
    :catch_11
    move-exception p0

    .line 534
    const-string v2, "Encountered issue when verifying VibrationEffect."

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 535
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
    .registers 5

    .line 680
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    const-string v2, "cancelVibrate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 685
    :try_start_c
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v1, v1, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    if-ne v1, p1, :cond_26

    .line 689
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_28

    .line 691
    :try_start_1a
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_21

    .line 693
    :try_start_1d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 694
    goto :goto_26

    .line 693
    :catchall_21
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 696
    :cond_26
    :goto_26
    monitor-exit v0

    .line 697
    return-void

    .line 696
    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_28

    throw p1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 1410
    iget-object p1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string p3, "VibratorService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 1412
    :cond_b
    const-string p1, "Vibrator Service:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1413
    iget-object p1, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1414
    :try_start_13
    const-string p3, "  mCurrentVibration="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1415
    iget-object p3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz p3, :cond_2a

    .line 1416
    iget-object p3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {p3}, Lcom/android/server/VibratorService$Vibration;->toInfo()Lcom/android/server/VibratorService$VibrationInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_30

    .line 1418
    :cond_2a
    const-string/jumbo p3, "null"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1420
    :goto_30
    const-string p3, "  mCurrentExternalVibration="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1421
    iget-object p3, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    if-eqz p3, :cond_43

    .line 1422
    iget-object p3, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {p3}, Landroid/os/ExternalVibration;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_49

    .line 1424
    :cond_43
    const-string/jumbo p3, "null"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1426
    :goto_49
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mVibratorUnderExternalControl="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mVibratorUnderExternalControl:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1427
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mLowPowerMode="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1428
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mHapticFeedbackIntensity="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1429
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mNotificationIntensity="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1430
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mRingIntensity="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/VibratorService;->mRingIntensity:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1431
    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1432
    const-string p3, "  Previous ring vibrations:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1433
    iget-object p3, p0, Lcom/android/server/VibratorService;->mPreviousRingVibrations:Ljava/util/LinkedList;

    invoke-virtual {p3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_c7
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VibratorService$VibrationInfo;

    .line 1434
    const-string v1, "    "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1435
    invoke-virtual {v0}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1436
    goto :goto_c7

    .line 1438
    :cond_e0
    const-string p3, "  Previous notification vibrations:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1439
    iget-object p3, p0, Lcom/android/server/VibratorService;->mPreviousNotificationVibrations:Ljava/util/LinkedList;

    invoke-virtual {p3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_eb
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_104

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VibratorService$VibrationInfo;

    .line 1440
    const-string v1, "    "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1441
    invoke-virtual {v0}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1442
    goto :goto_eb

    .line 1444
    :cond_104
    const-string p3, "  Previous alarm vibrations:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1445
    iget-object p3, p0, Lcom/android/server/VibratorService;->mPreviousAlarmVibrations:Ljava/util/LinkedList;

    invoke-virtual {p3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_10f
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_128

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VibratorService$VibrationInfo;

    .line 1446
    const-string v1, "    "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1447
    invoke-virtual {v0}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1448
    goto :goto_10f

    .line 1450
    :cond_128
    const-string p3, "  Previous vibrations:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1451
    iget-object p3, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {p3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_133
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14c

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VibratorService$VibrationInfo;

    .line 1452
    const-string v1, "    "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1453
    invoke-virtual {v0}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1454
    goto :goto_133

    .line 1456
    :cond_14c
    const-string p3, "  Previous external vibrations:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1457
    iget-object p3, p0, Lcom/android/server/VibratorService;->mPreviousExternalVibrations:Ljava/util/LinkedList;

    invoke-virtual {p3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_157
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_170

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ExternalVibration;

    .line 1458
    const-string v1, "    "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1459
    invoke-virtual {v0}, Landroid/os/ExternalVibration;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1460
    goto :goto_157

    .line 1461
    :cond_170
    monitor-exit p1

    .line 1462
    return-void

    .line 1461
    :catchall_172
    move-exception p2

    monitor-exit p1
    :try_end_174
    .catchall {:try_start_13 .. :try_end_174} :catchall_172

    throw p2
.end method

.method public hasAmplitudeControl()Z
    .registers 3

    .line 499
    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v0

    .line 502
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

    .line 503
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public hasVibrator()Z
    .registers 2

    .line 494
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorExists()Z

    move-result v0

    return v0
.end method

.method public onInputDeviceAdded(I)V
    .registers 2

    .line 1044
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    .line 1045
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .registers 2

    .line 1049
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    .line 1050
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .registers 2

    .line 1054
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    .line 1055
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1468
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

    .line 1469
    return-void
.end method

.method public onVibrationFinished()V
    .registers 3

    .line 733
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 736
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 737
    monitor-exit v0

    .line 738
    return-void

    .line 737
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public systemReady()V
    .registers 9

    .line 424
    const-wide/32 v0, 0x800000

    const-string v2, "VibratorService#systemReady"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 426
    :try_start_8
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/input/InputManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    iput-object v2, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    .line 427
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/Vibrator;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    .line 428
    new-instance v2, Lcom/android/server/VibratorService$SettingsObserver;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/VibratorService$SettingsObserver;-><init>(Lcom/android/server/VibratorService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 430
    const-class v2, Landroid/os/PowerManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManagerInternal;

    iput-object v2, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 431
    iget-object v2, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v3, Lcom/android/server/VibratorService$2;

    invoke-direct {v3, p0}, Lcom/android/server/VibratorService$2;-><init>(Lcom/android/server/VibratorService;)V

    invoke-virtual {v2, v3}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 444
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vibrate_input_devices"

    .line 445
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 444
    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 448
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_intensity"

    .line 449
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 448
    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 452
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "notification_vibration_intensity"

    .line 453
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 452
    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 456
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "ring_vibration_intensity"

    .line 457
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 456
    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 460
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/VibratorService$3;

    invoke-direct {v3, p0}, Lcom/android/server/VibratorService$3;-><init>(Lcom/android/server/VibratorService;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v4, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_9a
    .catchall {:try_start_8 .. :try_end_9a} :catchall_ae

    .line 468
    :try_start_9a
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VibratorService;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v4, 0x3

    invoke-interface {v2, v3, v4, v6, v7}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_a4
    .catch Landroid/os/RemoteException; {:try_start_9a .. :try_end_a4} :catch_a5
    .catchall {:try_start_9a .. :try_end_a4} :catchall_ae

    .line 473
    goto :goto_a6

    .line 471
    :catch_a5
    move-exception v2

    .line 475
    :goto_a6
    :try_start_a6
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_ae

    .line 477
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 478
    nop

    .line 479
    return-void

    .line 477
    :catchall_ae
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 22

    .line 555
    move-object v0, p0

    move/from16 v10, p1

    move-object/from16 v4, p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vibrate, reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p5

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v11, 0x800000

    invoke-static {v11, v12, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 557
    :try_start_1f
    const-string v1, "android.permission.VIBRATE"

    invoke-direct {p0, v1}, Lcom/android/server/VibratorService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_160

    .line 560
    if-nez p6, :cond_35

    .line 561
    const-string v0, "VibratorService"

    const-string/jumbo v1, "token must not be null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_1f .. :try_end_31} :catchall_168

    .line 647
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 562
    return-void

    .line 564
    :cond_35
    :try_start_35
    invoke-direct/range {p0 .. p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    .line 565
    invoke-static/range {p3 .. p3}, Lcom/android/server/VibratorService;->verifyVibrationEffect(Landroid/os/VibrationEffect;)Z

    move-result v1
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_168

    if-nez v1, :cond_42

    .line 647
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 566
    return-void

    .line 569
    :cond_42
    if-nez p4, :cond_53

    .line 570
    :try_start_44
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x0

    .line 571
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 572
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    goto :goto_55

    .line 569
    :cond_53
    move-object/from16 v1, p4

    .line 575
    :goto_55
    invoke-static {v1}, Lcom/android/server/VibratorService;->shouldBypassDnd(Landroid/media/AudioAttributes;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 576
    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_88

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    .line 577
    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_88

    const-string v2, "android.permission.MODIFY_AUDIO_ROUTING"

    .line 578
    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_88

    .line 579
    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v2

    and-int/lit8 v2, v2, -0x41

    .line 581
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3, v1}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    invoke-virtual {v3, v2}, Landroid/media/AudioAttributes$Builder;->replaceFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    move-object v5, v1

    goto :goto_89

    .line 587
    :cond_88
    move-object v5, v1

    :goto_89
    iget-object v13, v0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_8c
    .catchall {:try_start_44 .. :try_end_8c} :catchall_168

    .line 588
    :try_start_8c
    instance-of v1, v4, Landroid/os/VibrationEffect$OneShot;

    if-eqz v1, :cond_c0

    iget-object v1, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v1, :cond_c0

    iget-object v1, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v1, v1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v1, v1, Landroid/os/VibrationEffect$OneShot;

    if-eqz v1, :cond_c0

    .line 591
    move-object v1, v4

    check-cast v1, Landroid/os/VibrationEffect$OneShot;

    .line 592
    iget-object v2, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v2, v2, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$OneShot;

    .line 594
    iget-object v3, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v1}, Landroid/os/VibrationEffect$OneShot;->getDuration()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/android/server/VibratorService$Vibration;->hasTimeoutLongerThan(J)Z

    move-result v3

    if-eqz v3, :cond_c0

    .line 595
    invoke-virtual {v1}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v2

    if-ne v1, v2, :cond_c0

    .line 600
    monitor-exit v13
    :try_end_bc
    .catchall {:try_start_8c .. :try_end_bc} :catchall_15d

    .line 647
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 600
    return-void

    .line 607
    :cond_c0
    :try_start_c0
    iget-object v1, v0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    if-eqz v1, :cond_c9

    .line 611
    monitor-exit v13
    :try_end_c5
    .catchall {:try_start_c0 .. :try_end_c5} :catchall_15d

    .line 647
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 611
    return-void

    .line 618
    :cond_c9
    :try_start_c9
    invoke-static/range {p3 .. p3}, Lcom/android/server/VibratorService;->isRepeatingVibration(Landroid/os/VibrationEffect;)Z

    move-result v1

    if-nez v1, :cond_e2

    iget-object v1, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v1, :cond_e2

    iget-object v1, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v1, v1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    .line 620
    invoke-static {v1}, Lcom/android/server/VibratorService;->isRepeatingVibration(Landroid/os/VibrationEffect;)Z

    move-result v1

    if-eqz v1, :cond_e2

    .line 624
    monitor-exit v13
    :try_end_de
    .catchall {:try_start_c9 .. :try_end_de} :catchall_15d

    .line 647
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 624
    return-void

    .line 627
    :cond_e2
    :try_start_e2
    new-instance v14, Lcom/android/server/VibratorService$Vibration;

    const/4 v9, 0x0

    move-object v1, v14

    move-object v2, p0

    move-object/from16 v3, p6

    move-object/from16 v4, p3

    move/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/VibratorService$1;)V

    .line 628
    iget-object v1, v0, Lcom/android/server/VibratorService;->mProcStatesCache:Landroid/util/SparseArray;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v10, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v2, :cond_13e

    .line 630
    invoke-virtual {v14}, Lcom/android/server/VibratorService$Vibration;->isNotification()Z

    move-result v1

    if-nez v1, :cond_13e

    invoke-virtual {v14}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v1

    if-nez v1, :cond_13e

    invoke-virtual {v14}, Lcom/android/server/VibratorService$Vibration;->isAlarm()Z

    move-result v1

    if-nez v1, :cond_13e

    .line 631
    const-string v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring incoming vibration as process with uid= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is background, attrs= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/media/AudioAttributes;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    monitor-exit v13
    :try_end_13a
    .catchall {:try_start_e2 .. :try_end_13a} :catchall_15d

    .line 647
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 634
    return-void

    .line 636
    :cond_13e
    :try_start_13e
    invoke-direct {p0, v14}, Lcom/android/server/VibratorService;->linkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 637
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_145
    .catchall {:try_start_13e .. :try_end_145} :catchall_15d

    .line 639
    :try_start_145
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 640
    invoke-direct {p0, v14}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 641
    invoke-direct {p0, v14}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_14e
    .catchall {:try_start_145 .. :try_end_14e} :catchall_158

    .line 643
    :try_start_14e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 644
    nop

    .line 645
    monitor-exit v13
    :try_end_153
    .catchall {:try_start_14e .. :try_end_153} :catchall_15d

    .line 647
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 648
    nop

    .line 649
    return-void

    .line 643
    :catchall_158
    move-exception v0

    :try_start_159
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 645
    :catchall_15d
    move-exception v0

    monitor-exit v13
    :try_end_15f
    .catchall {:try_start_159 .. :try_end_15f} :catchall_15d

    :try_start_15f
    throw v0

    .line 558
    :cond_160
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires VIBRATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_168
    .catchall {:try_start_15f .. :try_end_168} :catchall_168

    .line 647
    :catchall_168
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method
