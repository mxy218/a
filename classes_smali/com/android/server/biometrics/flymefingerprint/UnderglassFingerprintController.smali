.class public Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;
.super Ljava/lang/Object;
.source "UnderglassFingerprintController.java"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$LocalService;,
        Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;,
        Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;,
        Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$ShutdownBroadcastReceiver;,
        Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$NotifyHalHandler;,
        Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;,
        Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$GestureCallback;,
        Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$BrightnessChangedCallback;
    }
.end annotation


# static fields
.field private static final DELAY_TIME_DISPLAY_OFF_DRAW_DIMLAYER:I = 0x32

.field private static final FOD_ICON_VISIBILITY_STATE_INVISIBLE:I = 0x0

.field private static final FOD_ICON_VISIBILITY_STATE_UNINITIALIZED:I = -0x1

.field private static final FOD_ICON_VISIBILITY_STATE_VISIBLE:I = 0x1

.field public static final HBM_OFF:I = 0x2

.field public static final HBM_ON:I = 0x1

.field private static final MSG_ENROLL_FINGERPRINT_FINGER_DOWN_TIMEOUT:I = 0x3ea

.field public static final NOTIFY_AUTH_TYPE:I = 0x7

.field public static final NOTIFY_FINGER_DETECTED:I = 0x1

.field public static final NOTIFY_FINGER_REMOVED:I = 0x2

.field public static final NOTIFY_HBM_OFF:I = 0x6

.field public static final NOTIFY_HBM_ON:I = 0x5

.field public static final NOTIFY_SCREEN_OFF:I = 0x4

.field public static final NOTIFY_SCREEN_ON:I = 0x3

.field private static final PACKAGES_USE_PAY_ENVIRONMENT:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYMENT_AUTHENTICATION:I = 0x2

.field private static final PROP_KEY_AOD:Ljava/lang/String; = "persist.sys.meizu.aod"

.field public static final SOFTWARE_APP_AUTHENTICATION:I = 0x1

.field static final TAG:Ljava/lang/String; = "FingerprintService"

.field private static final TIMEOUT_ENROLL_FINGERPRINT_FINGER_DOWN:I = 0x7d0

.field public static final UNLOCK_AUTHENTICATION:I


# instance fields
.field private mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mBrightnessChangedCallback:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$BrightnessChangedCallback;

.field private mClient:Lcom/android/server/biometrics/ClientMonitor;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mFDFUWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mFODIconParamsController:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;

.field private mFingerprintAuthenticateScene:Landroid/scene/Scene;

.field private mFodIconVisibilityState:I

.field private mGestureCallback:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$GestureCallback;

.field private mHBMController:Lcom/android/server/biometrics/flymefingerprint/HBMController;

.field private mIGestureManager:Landroid/view/IGestureManager;

.field private mIGoodixFingerprintDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon;

.field private mIconHandler:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;

.field private mIconThread:Lcom/android/server/ServiceThread;

.field private mIsFingerDown:Z

.field private mIsFingerprintAuthenticating:Z

.field private mIsFingerprintIconExisting:Z

.field private mIsKeyguardClient:Z

.field private mIsM1926:Z

.field private mIsM1928:Z

.field private mIsM1971:Z

.field private mIsM1973:Z

.field private mIsShutdown:Z

.field private mIsSynapticsFingerprintSensor:Z

.field private mIsVerifyInAodMode:Z

.field private mLastTransitionAnimationScale:F

.field private mLastWindowAnimationScale:F

.field private mLightSensor:Landroid/hardware/Sensor;

.field private final mLock:Ljava/lang/Object;

.field private mNeedResetDisplay:Z

.field private mNotifyCaptureFingerprintDelay:I

.field private mNotifyCaptureFingerprintRunnable:Ljava/lang/Runnable;

.field private mNotifyHalHandler:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$NotifyHalHandler;

.field private mNotifyHalThread:Lcom/android/server/ServiceThread;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenBrightness:I

.field private final mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShutdownBroadcastReceiver:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$ShutdownBroadcastReceiver;

.field private mSteller:Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->PACKAGES_USE_PAY_ENVIRONMENT:Ljava/util/ArrayList;

    .line 160
    sget-object v0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->PACKAGES_USE_PAY_ENVIRONMENT:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->PACKAGES_USE_PAY_ENVIRONMENT:Ljava/util/ArrayList;

    const-string v1, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"  # Landroid/content/Context;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsFingerprintIconExisting:Z

    .line 180
    iput-boolean v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsFingerDown:Z

    .line 181
    iput-boolean v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsFingerprintAuthenticating:Z

    .line 182
    iput-boolean v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsShutdown:Z

    .line 196
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mLock:Ljava/lang/Object;

    .line 201
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIGoodixFingerprintDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon;

    .line 203
    new-instance v2, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$GestureCallback;

    invoke-direct {v2, p0, v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$GestureCallback;-><init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$1;)V

    iput-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mGestureCallback:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$GestureCallback;

    .line 216
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mFodIconVisibilityState:I

    .line 246
    new-instance v2, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$BrightnessChangedCallback;

    invoke-direct {v2, p0, v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$BrightnessChangedCallback;-><init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$1;)V

    iput-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mBrightnessChangedCallback:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$BrightnessChangedCallback;

    .line 924
    new-instance v2, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$13;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$13;-><init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)V

    iput-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 997
    new-instance v2, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$14;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$14;-><init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)V

    iput-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 321
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->build(Landroid/content/Context;Z)Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mContext:Landroid/content/Context;

    .line 322
    iget-object v3, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mContentResolver:Landroid/content/ContentResolver;

    .line 323
    const-string v3, "M1882"

    invoke-direct {p0, v3}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->checkFlymeProduct(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5f

    const-string v3, "M1892"

    invoke-direct {p0, v3}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->checkFlymeProduct(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5f

    const-string v3, "M1872"

    invoke-direct {p0, v3}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->checkFlymeProduct(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5d

    goto :goto_5f

    :cond_5d
    move v3, v0

    goto :goto_60

    :cond_5f
    :goto_5f
    move v3, v2

    :goto_60
    iput-boolean v3, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsSynapticsFingerprintSensor:Z

    .line 324
    const-string v3, "M1926"

    invoke-direct {p0, v3}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->checkFlymeProduct(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsM1926:Z

    .line 325
    const-string v3, "M1928"

    invoke-direct {p0, v3}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->checkFlymeProduct(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsM1928:Z

    .line 326
    const-string v3, "M1971"

    invoke-direct {p0, v3}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->checkFlymeProduct(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsM1971:Z

    .line 327
    const-string v3, "M1973"

    invoke-direct {p0, v3}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->checkFlymeProduct(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsM1973:Z

    .line 328
    new-instance v3, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;

    iget-object v4, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;-><init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mFODIconParamsController:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;

    .line 329
    const-string/jumbo v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mPowerManager:Landroid/os/PowerManager;

    .line 330
    const-string/jumbo v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mWindowManager:Landroid/view/WindowManager;

    .line 331
    const-string/jumbo v3, "sensor"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 332
    iget-object v3, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mLightSensor:Landroid/hardware/Sensor;

    .line 333
    const-string v3, "display"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    iput-object v3, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 334
    iget-object v3, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mDisplay:Landroid/view/Display;

    .line 335
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 336
    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->initIGoodixFingerprintDaemon()V

    .line 337
    new-instance v0, Landroid/scene/Scene;

    const v3, 0x100000b

    const-string v4, "FingerFunction"

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/scene/Scene;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mFingerprintAuthenticateScene:Landroid/scene/Scene;

    .line 339
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 341
    new-instance v0, Lcom/android/server/biometrics/flymefingerprint/HBMController;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/flymefingerprint/HBMController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mHBMController:Lcom/android/server/biometrics/flymefingerprint/HBMController;

    .line 342
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mHBMController:Lcom/android/server/biometrics/flymefingerprint/HBMController;

    iget-boolean v3, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsSynapticsFingerprintSensor:Z

    invoke-virtual {v0, v3}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->setIsSynapticsFingerprintSensor(Z)V

    .line 345
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v3, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v4, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIconHandler:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;

    invoke-virtual {v0, v3, v4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 347
    new-instance v0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$ShutdownBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$ShutdownBroadcastReceiver;-><init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$1;)V

    iput-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mShutdownBroadcastReceiver:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$ShutdownBroadcastReceiver;

    .line 348
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 349
    .local v0, "mzIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mShutdownBroadcastReceiver:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$ShutdownBroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 352
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mPowerManager:Landroid/os/PowerManager;

    const-string v3, "FingerprintService"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mFDFUWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 354
    new-instance v1, Lcom/android/server/ServiceThread;

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIconThread:Lcom/android/server/ServiceThread;

    .line 355
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIconThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->start()V

    .line 356
    new-instance v1, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;

    iget-object v5, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIconThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v5}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v1, p0, v5}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;-><init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIconHandler:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;

    .line 358
    new-instance v1, Lcom/android/server/ServiceThread;

    invoke-direct {v1, v3, v4, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mNotifyHalThread:Lcom/android/server/ServiceThread;

    .line 359
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mNotifyHalThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->start()V

    .line 360
    new-instance v1, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$NotifyHalHandler;

    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mNotifyHalThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$NotifyHalHandler;-><init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mNotifyHalHandler:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$NotifyHalHandler;

    .line 362
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mContentResolver:Landroid/content/ContentResolver;

    const/16 v2, 0x29

    const-string v3, "hbmcallback_notify_hal_down"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mNotifyCaptureFingerprintDelay:I

    .line 365
    new-instance v1, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$1;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$1;-><init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)V

    iput-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mNotifyCaptureFingerprintRunnable:Ljava/lang/Runnable;

    .line 372
    new-instance v1, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$2;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$2;-><init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)V

    .line 383
    .local v1, "captureFingerprintListener":Lcom/android/server/biometrics/flymefingerprint/HBMController$CaptureFingerprintListener;
    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mHBMController:Lcom/android/server/biometrics/flymefingerprint/HBMController;

    invoke-virtual {v2, v1}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->setCaptureFingerprintListener(Lcom/android/server/biometrics/flymefingerprint/HBMController$CaptureFingerprintListener;)V

    .line 385
    const-class v2, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintControllerInternal;

    new-instance v3, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$LocalService;

    invoke-direct {v3, p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$LocalService;-><init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)V

    invoke-static {v2, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 386
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 79
    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->notifyCaptureFingerprint()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 79
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mNotifyCaptureFingerprintRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$NotifyHalHandler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 79
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mNotifyHalHandler:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$NotifyHalHandler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 79
    iget v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mNotifyCaptureFingerprintDelay:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 79
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 79
    iget-boolean v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsVerifyInAodMode:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;
    .param p1, "x1"  # Z

    .line 79
    iput-boolean p1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsVerifyInAodMode:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 79
    iget v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mScreenBrightness:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;
    .param p1, "x1"  # I

    .line 79
    iput p1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mScreenBrightness:I

    return p1
.end method

.method static synthetic access$1612(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;I)I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;
    .param p1, "x1"  # I

    .line 79
    iget v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mScreenBrightness:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mScreenBrightness:I

    return v0
.end method

.method static synthetic access$1620(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;I)I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;
    .param p1, "x1"  # I

    .line 79
    iget v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mScreenBrightness:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mScreenBrightness:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;IZ)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;
    .param p1, "x1"  # I
    .param p2, "x2"  # Z

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->drawDimLayer(IZ)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 79
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mFODIconParamsController:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 79
    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->isKeyguardAuthenticatingAtScreenOnState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;
    .param p1, "x1"  # I

    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->handleBrightnessChanged(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 79
    iget-boolean v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsSynapticsFingerprintSensor:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Lcom/android/server/biometrics/flymefingerprint/HBMController;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 79
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mHBMController:Lcom/android/server/biometrics/flymefingerprint/HBMController;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 79
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Lcom/android/server/biometrics/ClientMonitor;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;
    .param p1, "x1"  # Lcom/android/server/biometrics/ClientMonitor;

    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->handleShowIcon(Lcom/android/server/biometrics/ClientMonitor;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 79
    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->handleDismissIcon()V

    return-void
.end method

.method static synthetic access$2502(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;
    .param p1, "x1"  # I

    .line 79
    iput p1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mFodIconVisibilityState:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;
    .param p1, "x1"  # Z

    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->noteFodState(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 79
    iget-boolean v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsFingerprintIconExisting:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Landroid/view/WindowManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 79
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 79
    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->getDisplayState()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;
    .param p1, "x1"  # Z

    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->notifyFingerprintGesture(Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Landroid/view/Display;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 79
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;
    .param p1, "x1"  # Z

    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->setAuthenticatingInAodMode(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 79
    iget-boolean v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsFingerprintAuthenticating:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)F
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 79
    iget v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mLastWindowAnimationScale:F

    return v0
.end method

.method static synthetic access$3302(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;F)F
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;
    .param p1, "x1"  # F

    .line 79
    iput p1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mLastWindowAnimationScale:F

    return p1
.end method

.method static synthetic access$3400(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)F
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 79
    iget v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mLastTransitionAnimationScale:F

    return v0
.end method

.method static synthetic access$3402(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;F)F
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;
    .param p1, "x1"  # F

    .line 79
    iput p1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mLastTransitionAnimationScale:F

    return p1
.end method

.method static synthetic access$3500(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 79
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIconHandler:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;
    .param p1, "x1"  # Z

    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->setSystemAllAnimationEnable(Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Landroid/scene/Scene;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 79
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mFingerprintAuthenticateScene:Landroid/scene/Scene;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;
    .param p1, "x1"  # I

    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->sendNotifyHalMessage(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 79
    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->isInAODMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Lcom/android/server/biometrics/ClientMonitor;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 79
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mClient:Lcom/android/server/biometrics/ClientMonitor;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 79
    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->isAuthenticatingInAodMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Lcom/android/server/biometrics/ClientMonitor;)Lcom/android/server/biometrics/ClientMonitor;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;
    .param p1, "x1"  # Lcom/android/server/biometrics/ClientMonitor;

    .line 79
    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mClient:Lcom/android/server/biometrics/ClientMonitor;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;
    .param p1, "x1"  # Z

    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->enableLSensor(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 79
    iget-boolean v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsM1926:Z

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 79
    iget-boolean v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsM1928:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;
    .param p1, "x1"  # Z

    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->opHBMAndAOD(Z)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Landroid/os/PowerManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 79
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 79
    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->notifyHalWhenAuthenticationDone()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 79
    iget-boolean v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsM1971:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 79
    iget-boolean v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsM1973:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 79
    iget-boolean v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsFingerDown:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;
    .param p1, "x1"  # Z

    .line 79
    iput-boolean p1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsFingerDown:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;II)I
    .registers 4
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;
    .param p1, "x1"  # I
    .param p2, "x2"  # I

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->notifyHal(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;
    .param p1, "x1"  # Z

    .line 79
    iput-boolean p1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsShutdown:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 79
    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->restoreDisplaySettingsIfNeeded()V

    return-void
.end method

.method private static build(Landroid/content/Context;Z)Landroid/content/Context;
    .registers 5
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "keepDpi"  # Z

    .line 311
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 312
    .local v0, "configuration":Landroid/content/res/Configuration;
    if-eqz p1, :cond_21

    .line 313
    const/16 v1, 0x1e0

    const-string/jumbo v2, "ro.sf.lcd_density"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 314
    .local v1, "mDefaultDensity":I
    const-string/jumbo v2, "persist.sys.density"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 316
    .end local v1  # "mDefaultDensity":I
    :cond_21
    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v1

    .line 317
    .local v1, "result":Landroid/content/Context;
    return-object v1
.end method

.method private checkFlymeProduct(Ljava/lang/String;)Z
    .registers 3
    .param p1, "model"  # Ljava/lang/String;

    .line 389
    invoke-static {p1}, Landroid/os/BuildExt;->checkProductModel(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private drawDimLayer(IZ)V
    .registers 5
    .param p1, "screenBrightness"  # I
    .param p2, "forceDrawDimlayer"  # Z

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawDimLayer, screenBrightness:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", forceDrawDimlayer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mClient:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    if-eqz p2, :cond_30

    .line 903
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mHBMController:Lcom/android/server/biometrics/flymefingerprint/HBMController;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->drawDimLayer(I)V

    goto :goto_39

    .line 905
    :cond_30
    iget-boolean v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsFingerprintAuthenticating:Z

    if-nez v0, :cond_39

    .line 906
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mHBMController:Lcom/android/server/biometrics/flymefingerprint/HBMController;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->drawDimLayer(I)V

    .line 909
    :cond_39
    :goto_39
    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .registers 1
    .param p0, "pw"  # Ljava/io/PrintWriter;

    .line 1249
    return-void
.end method

.method private enableLSensor(Z)V
    .registers 8
    .param p1, "enable"  # Z

    .line 1123
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const-string/jumbo v2, "screen_brightness_mode"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    goto :goto_10

    :cond_f
    move v2, v1

    :goto_10
    move v0, v2

    .line 1126
    .local v0, "useAutomaticBrightness":Z
    if-eqz v0, :cond_28

    .line 1127
    if-eqz p1, :cond_21

    .line 1128
    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mLightSensor:Landroid/hardware/Sensor;

    iget-object v5, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIconHandler:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_28

    .line 1131
    :cond_21
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1134
    :cond_28
    :goto_28
    return-void
.end method

.method private getDisplayState()I
    .registers 3

    .line 1009
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    return v0
.end method

.method private getSteller()Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller;
    .registers 3

    .line 1293
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mSteller:Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller;

    if-nez v0, :cond_23

    .line 1295
    :try_start_4
    const-string v0, "default"

    invoke-static {v0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller;->getService(Ljava/lang/String;)Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mSteller:Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller;

    .line 1296
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mSteller:Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller;

    if-nez v0, :cond_23

    .line 1297
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "synaptics steller not available"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_18} :catch_1f
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_18} :catch_1a

    .line 1298
    const/4 v0, 0x0

    return-object v0

    .line 1302
    :catch_1a
    move-exception v0

    .line 1303
    .local v0, "e":Ljava/util/NoSuchElementException;
    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->printStackTrace()V

    goto :goto_23

    .line 1300
    .end local v0  # "e":Ljava/util/NoSuchElementException;
    :catch_1f
    move-exception v0

    .line 1301
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1306
    .end local v0  # "re":Landroid/os/RemoteException;
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mSteller:Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller;

    return-object v0
.end method

.method private handleBrightnessChanged(I)V
    .registers 7
    .param p1, "screenBrightness"  # I

    .line 880
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 881
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->isAuthenticatingInAodMode()Z

    move-result v1

    .line 882
    .local v1, "authenticatingInAodMode":Z
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleBrightnessChanged, screenBrightness:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isAuthenticatingInAodMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iput p1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mScreenBrightness:I

    .line 885
    if-eqz v1, :cond_2b

    .line 886
    monitor-exit v0

    return-void

    .line 890
    :cond_2b
    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eqz v2, :cond_5c

    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mClient:Lcom/android/server/biometrics/ClientMonitor;

    instance-of v2, v2, Lcom/android/server/biometrics/AuthenticationClient;

    if-eqz v2, :cond_5c

    iget-boolean v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsFingerprintAuthenticating:Z

    if-nez v2, :cond_5c

    .line 891
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleBrightnessChanged, screenBrightness = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->getDisplayState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5c

    if-lez p1, :cond_5c

    .line 893
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->drawDimLayer(IZ)V

    .line 896
    .end local v1  # "authenticatingInAodMode":Z
    :cond_5c
    monitor-exit v0

    .line 897
    return-void

    .line 896
    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_3 .. :try_end_60} :catchall_5e

    throw v1
.end method

.method private handleDismissIcon()V
    .registers 9

    .line 722
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 723
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->isKeyguardAuthenticatingAtScreenOnState()Z

    move-result v1

    .line 724
    .local v1, "closeHBMByKeyguard":Z
    iget-boolean v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsFingerprintIconExisting:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_85

    .line 725
    const-string v2, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dimiss fp icon..., closeHBMByKeyguard:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mFODIconParamsController:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;

    invoke-virtual {v2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->getFingerprintView()Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->setRefreshViewEnable(Z)V

    .line 727
    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mFODIconParamsController:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;

    invoke-virtual {v2, v4}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->updateFingerprintView(Z)V

    .line 728
    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->restoreDisplaySettingsIfNeeded()V

    .line 729
    if-nez v1, :cond_39

    .line 730
    invoke-direct {p0, v4, v3}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->drawDimLayer(IZ)V

    .line 732
    :cond_39
    iget-boolean v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsSynapticsFingerprintSensor:Z

    if-eqz v2, :cond_4e

    .line 733
    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mHBMController:Lcom/android/server/biometrics/flymefingerprint/HBMController;

    invoke-virtual {v2, v4}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->setHBM(Z)V

    .line 734
    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIconHandler:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;

    new-instance v5, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$6;

    invoke-direct {v5, p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$6;-><init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v2, v5, v6, v7}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 747
    :cond_4e
    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mFODIconParamsController:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;

    invoke-virtual {v5}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->getFingerprintView()Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 748
    iput-boolean v4, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsFingerprintIconExisting:Z

    .line 750
    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mFODIconParamsController:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;

    invoke-virtual {v2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->getFingerprintView()Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->setVisibility(I)V

    .line 751
    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v2, p0}, Landroid/hardware/display/DisplayManagerInternal;->unregisterDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    .line 753
    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->notifyHalWhenAuthenticationDone()V

    .line 755
    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->isKeyguardClient()Z

    move-result v2

    if-nez v2, :cond_85

    .line 756
    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mFODIconParamsController:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;

    invoke-virtual {v2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->getFingerprintView()Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mFODIconParamsController:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;

    .line 757
    invoke-virtual {v5}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->getFingerprintView()Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->getDefaultIconColor()[I

    move-result-object v5

    .line 756
    invoke-virtual {v2, v5}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->setColors([I)V

    .line 763
    :cond_85
    if-nez v1, :cond_8a

    .line 764
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 767
    :cond_8a
    iget-boolean v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsSynapticsFingerprintSensor:Z

    if-eqz v2, :cond_92

    .line 768
    const/4 v2, 0x2

    invoke-direct {p0, v2, v4}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->notifyHal(II)I

    .line 771
    :cond_92
    invoke-direct {p0, v4}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->noteFodState(Z)V

    .line 773
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mFodIconVisibilityState:I

    .line 774
    iput-boolean v4, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsFingerprintAuthenticating:Z

    .line 775
    iput-boolean v4, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsFingerDown:Z

    .line 776
    iput-boolean v4, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsVerifyInAodMode:Z

    .line 777
    invoke-direct {p0, v3}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->setSystemAllAnimationEnable(Z)V

    .line 778
    invoke-direct {p0, v4}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->setAuthenticatingInAodMode(Z)V

    .line 779
    invoke-direct {p0, v4}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->enableLSensor(Z)V

    .line 780
    .end local v1  # "closeHBMByKeyguard":Z
    monitor-exit v0

    .line 781
    return-void

    .line 780
    :catchall_a9
    move-exception v1

    monitor-exit v0
    :try_end_ab
    .catchall {:try_start_3 .. :try_end_ab} :catchall_a9

    throw v1
.end method

.method private handleShowIcon(Lcom/android/server/biometrics/ClientMonitor;)V
    .registers 10
    .param p1, "client"  # Lcom/android/server/biometrics/ClientMonitor;

    .line 569
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 570
    :try_start_3
    instance-of v1, p1, Lcom/android/server/biometrics/AuthenticationClient;

    if-nez v1, :cond_b

    instance-of v1, p1, Lcom/android/server/biometrics/EnrollClient;

    if-eqz v1, :cond_129

    .line 573
    :cond_b
    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 575
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mClient:Lcom/android/server/biometrics/ClientMonitor;

    instance-of v1, v1, Lcom/android/server/biometrics/AuthenticationClient;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_26

    const-string v1, "com.android.systemui"

    iget-object v4, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-virtual {v4}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 576
    iput-boolean v3, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsKeyguardClient:Z

    goto :goto_2d

    .line 578
    :cond_26
    iput-boolean v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsKeyguardClient:Z

    .line 579
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mFODIconParamsController:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;

    invoke-virtual {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->resetDefaultParams()V

    .line 582
    :goto_2d
    iget-boolean v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsFingerprintIconExisting:Z

    if-nez v1, :cond_129

    .line 583
    iget v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mFodIconVisibilityState:I

    if-eqz v1, :cond_37

    .line 584
    iput v3, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mFodIconVisibilityState:I

    .line 587
    :cond_37
    iget-boolean v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsShutdown:Z

    if-nez v1, :cond_3e

    .line 588
    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->resetDisplaySettingsIfNeeded()V

    .line 590
    :cond_3e
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 592
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "screen_brightness"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mScreenBrightness:I

    .line 593
    const/4 v1, 0x0

    .line 594
    .local v1, "delay":I
    iget-object v4, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mClient:Lcom/android/server/biometrics/ClientMonitor;

    instance-of v4, v4, Lcom/android/server/biometrics/EnrollClient;

    if-eqz v4, :cond_5e

    iget-boolean v4, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsM1926:Z

    if-eqz v4, :cond_5e

    .line 595
    const/16 v1, 0x190

    .line 597
    :cond_5e
    iget-object v4, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIconHandler:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;

    new-instance v5, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$3;

    invoke-direct {v5, p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$3;-><init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)V

    int-to-long v6, v1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 604
    iget-object v4, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mHBMController:Lcom/android/server/biometrics/flymefingerprint/HBMController;

    invoke-virtual {v4, v3}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->setScreenOn(Z)V

    .line 607
    .end local v1  # "delay":I
    :cond_6e
    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->isPackageUsePayEnvironment()Z

    move-result v1

    if-eqz v1, :cond_79

    .line 608
    const/16 v1, 0x649

    invoke-direct {p0, v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->sendNotifyHalMessage(I)V

    .line 611
    :cond_79
    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->isKeyguardClient()Z

    move-result v1

    if-nez v1, :cond_a9

    .line 612
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0xa06000f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 613
    .local v1, "topColor":I
    iget-object v4, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xa06000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 614
    .local v4, "bottomColor":I
    iget-object v5, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mFODIconParamsController:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;

    invoke-virtual {v5}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->getFingerprintView()Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [I

    aput v1, v6, v2

    aput v4, v6, v3

    invoke-virtual {v5, v6}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->setColors([I)V

    .line 617
    .end local v1  # "topColor":I
    .end local v4  # "bottomColor":I
    :cond_a9
    const-string v1, "com.android.systemui"

    invoke-virtual {p1}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v4, 0x3f000000  # 0.5f

    if-eqz v1, :cond_c8

    .line 618
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mFODIconParamsController:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;

    .line 619
    iget-object v5, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v5

    if-eqz v5, :cond_c2

    goto :goto_c4

    :cond_c2
    const/high16 v4, 0x3f800000  # 1.0f

    .line 618
    :goto_c4
    invoke-virtual {v1, v4, v2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->animateImageAlpha(FI)V

    goto :goto_d2

    .line 622
    :cond_c8
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v1, p0}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    .line 624
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mFODIconParamsController:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;

    invoke-virtual {v1, v4, v2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->animateImageAlpha(FI)V

    .line 626
    :goto_d2
    const-string v1, "FingerprintService"

    const-string/jumbo v4, "show fp icon..."

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->updateFODIconPosition()V

    .line 628
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mFODIconParamsController:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;

    invoke-virtual {v4}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->getFingerprintView()Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mFODIconParamsController:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;

    invoke-virtual {v5}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 629
    iput-boolean v3, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsFingerprintIconExisting:Z

    .line 630
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mClient:Lcom/android/server/biometrics/ClientMonitor;

    instance-of v1, v1, Lcom/android/server/biometrics/EnrollClient;

    const/16 v4, 0x8

    if-eqz v1, :cond_10e

    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "can_show_enroll_fod_tips_dlg"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_10e

    .line 631
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mFODIconParamsController:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;

    invoke-virtual {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->getFingerprintView()Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->setVisibility(I)V

    .line 632
    iput v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mFodIconVisibilityState:I

    goto :goto_11f

    .line 634
    :cond_10e
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mFODIconParamsController:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;

    invoke-virtual {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->getFingerprintView()Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;

    move-result-object v1

    .line 635
    invoke-virtual {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->isFingerprintIconVisible()Z

    move-result v5

    if-eqz v5, :cond_11b

    goto :goto_11c

    :cond_11b
    move v2, v4

    .line 634
    :goto_11c
    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->setVisibility(I)V

    .line 637
    :goto_11f
    iget-boolean v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsSynapticsFingerprintSensor:Z

    if-eqz v1, :cond_126

    .line 638
    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->notifyAuthenticationType()V

    .line 641
    :cond_126
    invoke-direct {p0, v3}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->noteFodState(Z)V

    .line 644
    :cond_129
    monitor-exit v0

    .line 645
    return-void

    .line 644
    :catchall_12b
    move-exception v1

    monitor-exit v0
    :try_end_12d
    .catchall {:try_start_3 .. :try_end_12d} :catchall_12b

    throw v1
.end method

.method private initIGoodixFingerprintDaemon()V
    .registers 5

    .line 1252
    const-string v0, "FingerprintService"

    iget-boolean v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsSynapticsFingerprintSensor:Z

    if-nez v1, :cond_3d

    .line 1253
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIGoodixFingerprintDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon;

    if-nez v1, :cond_3d

    .line 1255
    :try_start_a
    invoke-static {}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon;->getService()Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIGoodixFingerprintDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon;
    :try_end_10
    .catch Ljava/util/NoSuchElementException; {:try_start_a .. :try_end_10} :catch_18
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    goto :goto_1e

    .line 1258
    :catch_11
    move-exception v1

    .line 1259
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to get IGoodixFingerprintDaemon"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 1256
    .end local v1  # "e":Landroid/os/RemoteException;
    :catch_18
    move-exception v1

    .line 1257
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string v2, "Can\'t find IGoodixFingerprintDaemon.getService"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    .end local v1  # "e":Ljava/util/NoSuchElementException;
    :goto_1e
    nop

    .line 1262
    :goto_1f
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIGoodixFingerprintDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon;

    if-eqz v1, :cond_3d

    .line 1264
    :try_start_23
    invoke-interface {v1}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v1, p0, v2, v3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 1265
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIGoodixFingerprintDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon;->setNotify(Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonCallback;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_32} :catch_33

    .line 1269
    goto :goto_3d

    .line 1266
    :catch_33
    move-exception v1

    .line 1267
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1268
    const-string/jumbo v2, "mIGoodixFingerprintDaemon is null!!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    .end local v1  # "e":Landroid/os/RemoteException;
    :cond_3d
    :goto_3d
    return-void
.end method

.method private isAodFeatureOn()Z
    .registers 3

    .line 1235
    const-string/jumbo v0, "persist.sys.meizu.aod"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isAuthenticatingInAodMode()Z
    .registers 4

    .line 912
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const-string v2, "fp_authenticate_in_aod_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    move v1, v2

    :cond_d
    return v1
.end method

.method private isInAODMode()Z
    .registers 4

    .line 1013
    invoke-static {}, Lcom/android/server/display/MzDisplayUtils;->isAODOn()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->getDisplayState()I

    move-result v0

    if-ne v0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    move v0, v1

    .line 1014
    .local v0, "isAodMode":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAodMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    return v0
.end method

.method private isKeyguardAuthenticatingAtScreenOnState()Z
    .registers 5

    .line 668
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mClient:Lcom/android/server/biometrics/ClientMonitor;

    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    iget-boolean v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsVerifyInAodMode:Z

    if-nez v2, :cond_3e

    .line 669
    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.systemui"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 670
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "mz_face_management_added_data"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_39

    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mContentResolver:Landroid/content/ContentResolver;

    .line 672
    const-string/jumbo v3, "mz_face_unlock"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_39

    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mContentResolver:Landroid/content/ContentResolver;

    .line 674
    const-string/jumbo v3, "mz_face_unlock_screen_launcher"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_39

    move v0, v2

    goto :goto_3a

    :cond_39
    move v0, v1

    .line 676
    .local v0, "isUsingFaceUnlock":Z
    :goto_3a
    if-eqz v0, :cond_3d

    .line 677
    return v1

    .line 679
    :cond_3d
    return v2

    .line 683
    .end local v0  # "isUsingFaceUnlock":Z
    :cond_3e
    return v1
.end method

.method private isKeyguardClient()Z
    .registers 3

    .line 564
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eqz v0, :cond_16

    instance-of v1, v0, Lcom/android/server/biometrics/AuthenticationClient;

    if-eqz v1, :cond_16

    .line 565
    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 564
    :goto_17
    return v0
.end method

.method private isPackageUsePayEnvironment()Z
    .registers 3

    .line 687
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eqz v0, :cond_16

    instance-of v1, v0, Lcom/android/server/biometrics/AuthenticationClient;

    if-eqz v1, :cond_16

    sget-object v1, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->PACKAGES_USE_PAY_ENVIRONMENT:Ljava/util/ArrayList;

    .line 688
    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 687
    :goto_17
    return v0
.end method

.method private noteFodState(Z)V
    .registers 5
    .param p1, "visible"  # Z

    .line 649
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    if-eqz v0, :cond_e

    .line 650
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    if-eqz p1, :cond_a

    const/4 v1, 0x0

    goto :goto_b

    :cond_a
    const/4 v1, 0x1

    :goto_b
    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFodState(I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 654
    :cond_e
    goto :goto_27

    .line 652
    :catch_f
    move-exception v0

    .line 653
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "noteFodState exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_27
    return-void
.end method

.method private notifyAuthenticationType()V
    .registers 4

    .line 1278
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mClient:Lcom/android/server/biometrics/ClientMonitor;

    instance-of v1, v0, Lcom/android/server/biometrics/AuthenticationClient;

    if-eqz v1, :cond_1f

    .line 1279
    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    .line 1281
    .local v0, "pkg":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->isKeyguardClient()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1282
    const/4 v1, 0x0

    .local v1, "type":I
    goto :goto_1b

    .line 1283
    .end local v1  # "type":I
    :cond_12
    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->isPackageUsePayEnvironment()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1284
    const/4 v1, 0x2

    .restart local v1  # "type":I
    goto :goto_1b

    .line 1286
    .end local v1  # "type":I
    :cond_1a
    const/4 v1, 0x1

    .line 1288
    .restart local v1  # "type":I
    :goto_1b
    const/4 v2, 0x7

    invoke-direct {p0, v2, v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->notifyHal(II)I

    .line 1290
    .end local v0  # "pkg":Ljava/lang/String;
    .end local v1  # "type":I
    :cond_1f
    return-void
.end method

.method private notifyCaptureFingerprint()V
    .registers 6

    .line 415
    iget-boolean v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsFingerDown:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 416
    const/16 v0, 0x600

    invoke-direct {p0, v0, v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->notifyHal(II)I

    .line 417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsFingerprintAuthenticating:Z

    .line 418
    iget-boolean v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsVerifyInAodMode:Z

    if-eqz v1, :cond_27

    .line 419
    invoke-direct {p0, v0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->setAuthenticatingInAodMode(Z)V

    .line 420
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/16 v3, 0xa

    const-string v4, "android.policy:FINGERPRINT"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    goto :goto_27

    .line 425
    :cond_22
    invoke-virtual {p0, v1, v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->setAuthenticated(ZZ)V

    .line 426
    iput-boolean v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsVerifyInAodMode:Z

    .line 428
    :cond_27
    :goto_27
    return-void
.end method

.method private notifyFingerprintGesture(Z)V
    .registers 5
    .param p1, "down"  # Z

    .line 1211
    invoke-virtual {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->isFingerprintIconVisible()Z

    move-result v0

    const-string v1, "FingerprintService"

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsFingerDown:Z

    if-nez v0, :cond_13

    .line 1212
    const-string/jumbo v0, "reject FD/FU when view gone"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    return-void

    .line 1216
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receive FD/FU, finger "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_23

    const-string v2, "down"

    goto :goto_26

    :cond_23
    const-string/jumbo v2, "up"

    :goto_26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    const/4 v0, 0x1

    if-eqz p1, :cond_4b

    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->isInAODMode()Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mFODIconParamsController:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;

    invoke-virtual {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->getCurrentAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_4b

    .line 1222
    invoke-static {}, Landroid/view/SurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object v1

    .line 1221
    invoke-static {v1, v0}, Landroid/view/SurfaceControl;->setDisplayPowerMode(Landroid/os/IBinder;I)V

    .line 1225
    :cond_4b
    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->isInAODMode()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->isAodFeatureOn()Z

    move-result v1

    if-eqz v1, :cond_5d

    if-eqz p1, :cond_5d

    .line 1227
    const/4 v1, -0x2

    invoke-direct {p0, v1, v0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->drawDimLayer(IZ)V

    .line 1229
    :cond_5d
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIconHandler:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;

    new-instance v1, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;-><init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;->post(Ljava/lang/Runnable;)Z

    .line 1230
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mFDFUWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1231
    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->userActivity()V

    .line 1232
    return-void
.end method

.method private notifyHal(II)I
    .registers 7
    .param p1, "status"  # I
    .param p2, "data"  # I

    .line 1310
    iget-boolean v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsSynapticsFingerprintSensor:Z

    const-string v1, "FingerprintService"

    if-eqz v0, :cond_3c

    .line 1311
    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->getSteller()Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mSteller:Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller;

    .line 1312
    const/4 v0, 0x0

    .line 1314
    .local v0, "result":I
    :try_start_d
    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mSteller:Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller;

    if-eqz v2, :cond_36

    .line 1315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyHal status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mSteller:Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v2}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller;->notify(IILvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IStellerClientCallback;)I

    move-result v1
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_35} :catch_37

    move v0, v1

    .line 1321
    :cond_36
    goto :goto_3b

    .line 1319
    :catch_37
    move-exception v1

    .line 1320
    .local v1, "re":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1323
    .end local v1  # "re":Landroid/os/RemoteException;
    :goto_3b
    return v0

    .line 1326
    .end local v0  # "result":I
    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start sendNotifyHalMessage status: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mIGoodixFingerprintDaemon:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIGoodixFingerprintDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->initIGoodixFingerprintDaemon()V

    .line 1328
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIGoodixFingerprintDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon;

    if-eqz v0, :cond_8b

    .line 1330
    :try_start_62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1331
    .local v0, "paramList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIGoodixFingerprintDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon;

    new-instance v3, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$16;

    invoke-direct {v3, p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$16;-><init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)V

    invoke-interface {v2, p1, v0, v3}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon;->sendCommand(ILjava/util/ArrayList;Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon$sendCommandCallback;)V

    .line 1338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end sendNotifyHalMessage status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_85} :catch_87

    .line 1340
    const/4 v1, 0x1

    return v1

    .line 1341
    .end local v0  # "paramList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :catch_87
    move-exception v0

    .line 1342
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1346
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_8b
    const-string/jumbo v0, "mIGoodixFingerprintDaemon is null, notify goodix fingerprint hal failed!"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    const/4 v0, 0x0

    return v0
.end method

.method private notifyHalWhenAuthenticationDone()V
    .registers 2

    .line 713
    const/16 v0, 0x601

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->sendNotifyHalMessage(I)V

    .line 714
    const/16 v0, 0x648

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->sendNotifyHalMessage(I)V

    .line 716
    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->isPackageUsePayEnvironment()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 717
    const/16 v0, 0x64a

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->sendNotifyHalMessage(I)V

    .line 719
    :cond_15
    return-void
.end method

.method private opHBMAndAOD(Z)V
    .registers 5
    .param p1, "hbmon"  # Z

    .line 1019
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1020
    if-eqz p1, :cond_13

    .line 1021
    :try_start_5
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mHBMController:Lcom/android/server/biometrics/flymefingerprint/HBMController;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->opAod(Ljava/lang/String;)V

    .line 1022
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mHBMController:Lcom/android/server/biometrics/flymefingerprint/HBMController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->setHBMImmediately(Z)V

    goto :goto_20

    .line 1024
    :cond_13
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mHBMController:Lcom/android/server/biometrics/flymefingerprint/HBMController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->setHBMImmediately(Z)V

    .line 1025
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mHBMController:Lcom/android/server/biometrics/flymefingerprint/HBMController;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->opAod(Ljava/lang/String;)V

    .line 1027
    :goto_20
    monitor-exit v0

    .line 1028
    return-void

    .line 1027
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_22

    throw v1
.end method

.method private registerGestureListener()V
    .registers 4

    .line 431
    const-string v0, "FingerprintService"

    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIGestureManager:Landroid/view/IGestureManager;

    if-nez v1, :cond_13

    .line 432
    nop

    .line 433
    const-string v1, "gesture_manager"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 432
    invoke-static {v1}, Landroid/view/IGestureManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IGestureManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIGestureManager:Landroid/view/IGestureManager;

    .line 437
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIGestureManager:Landroid/view/IGestureManager;

    if-eqz v1, :cond_1f

    .line 438
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIGestureManager:Landroid/view/IGestureManager;

    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mGestureCallback:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$GestureCallback;

    invoke-interface {v1, v2, v0}, Landroid/view/IGestureManager;->registeCallback(Landroid/view/IGestureCallback;Ljava/lang/String;)V

    goto :goto_24

    .line 440
    :cond_1f
    const-string v1, "can not get gesture service"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_24} :catch_25

    .line 444
    :goto_24
    goto :goto_2b

    .line 442
    :catch_25
    move-exception v1

    .line 443
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "IGestureManager threw RemoteException"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 445
    .end local v1  # "ex":Landroid/os/RemoteException;
    :goto_2b
    return-void
.end method

.method private resetDisplaySettingsIfNeeded()V
    .registers 4

    .line 1033
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const-string v2, "accessibility_display_inversion_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1035
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "accessibility_display_daltonizer_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1038
    invoke-virtual {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->sendResetBroadcast()V

    .line 1039
    return-void
.end method

.method private restoreDisplaySettingsIfNeeded()V
    .registers 1

    .line 1079
    invoke-virtual {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->sendRestoreBroadcast()V

    .line 1080
    return-void
.end method

.method private sendNotifyHalMessage(I)V
    .registers 3
    .param p1, "state"  # I

    .line 1352
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mNotifyHalHandler:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$NotifyHalHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$NotifyHalHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1353
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mNotifyHalHandler:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$NotifyHalHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$NotifyHalHandler;->removeMessages(I)V

    .line 1355
    :cond_d
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mNotifyHalHandler:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$NotifyHalHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$NotifyHalHandler;->sendEmptyMessage(I)Z

    .line 1356
    return-void
.end method

.method private setAuthenticatingInAodMode(Z)V
    .registers 4
    .param p1, "authenticating"  # Z

    .line 918
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mContentResolver:Landroid/content/ContentResolver;

    .line 919
    nop

    .line 918
    const-string v1, "fp_authenticate_in_aod_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 920
    const-class v0, Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/FlymeWindowManagerInternal;

    .line 921
    invoke-virtual {v0, p1}, Lcom/android/server/wm/FlymeWindowManagerInternal;->setFingerprintAuthenticatingInAodMode(Z)V

    .line 922
    return-void
.end method

.method private setSystemAllAnimationEnable(Z)V
    .registers 7
    .param p1, "enable"  # Z

    .line 1042
    iget-boolean v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsKeyguardClient:Z

    if-nez v0, :cond_5

    .line 1043
    return-void

    .line 1046
    :cond_5
    if-nez p1, :cond_28

    .line 1047
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mContentResolver:Landroid/content/ContentResolver;

    const/high16 v1, 0x3f400000  # 0.75f

    const-string/jumbo v2, "window_animation_scale"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 1048
    .local v0, "lastWindowAnimateScale":F
    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_19

    .line 1049
    iput v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mLastWindowAnimationScale:F

    .line 1051
    :cond_19
    iget-object v3, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "transition_animation_scale"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    .line 1052
    .local v1, "lastTransitionAniScale":F
    cmpl-float v2, v1, v2

    if-eqz v2, :cond_28

    .line 1053
    iput v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mLastTransitionAnimationScale:F

    .line 1056
    .end local v0  # "lastWindowAnimateScale":F
    .end local v1  # "lastTransitionAniScale":F
    :cond_28
    if-eqz p1, :cond_2d

    const/16 v0, 0x64

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    .line 1057
    .local v0, "delayTime":I
    :goto_2e
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIconHandler:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;

    new-instance v2, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$15;

    invoke-direct {v2, p0, p1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$15;-><init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Z)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1076
    return-void
.end method

.method private unregisterGestureListener()V
    .registers 4

    .line 449
    const-string v0, "FingerprintService"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIGestureManager:Landroid/view/IGestureManager;

    if-eqz v1, :cond_e

    .line 450
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIGestureManager:Landroid/view/IGestureManager;

    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mGestureCallback:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$GestureCallback;

    invoke-interface {v1, v2}, Landroid/view/IGestureManager;->removeCallback(Landroid/view/IGestureCallback;)V

    goto :goto_13

    .line 452
    :cond_e
    const-string v1, "can not get gesture service"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_14

    .line 456
    :goto_13
    goto :goto_1a

    .line 454
    :catch_14
    move-exception v1

    .line 455
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "IGestureManager threw RemoteException"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    .end local v1  # "ex":Landroid/os/RemoteException;
    :goto_1a
    return-void
.end method

.method private updateFODIconPosition()V
    .registers 10

    .line 970
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 971
    .local v0, "point":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 972
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 973
    .local v1, "width":I
    iget v2, v0, Landroid/graphics/Point;->y:I

    .line 974
    .local v2, "height":I
    iget-object v3, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v3

    .line 975
    .local v3, "displayInfo":Landroid/view/DisplayInfo;
    iget v4, v3, Landroid/view/DisplayInfo;->rotation:I

    const v5, 0xa0703b5

    const v6, 0xa0703b4

    if-eqz v4, :cond_8f

    const/4 v7, 0x1

    if-eq v4, v7, :cond_77

    const/4 v7, 0x2

    const v8, 0xa0703b3

    if-eq v4, v7, :cond_52

    const/4 v7, 0x3

    if-eq v4, v7, :cond_2d

    goto/16 :goto_a7

    .line 990
    :cond_2d
    iget-object v4, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int v4, v1, v4

    iget-object v5, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mContext:Landroid/content/Context;

    .line 991
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mContext:Landroid/content/Context;

    .line 992
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 990
    invoke-virtual {p0, v4, v5}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->updateFODIconPosition(II)V

    goto :goto_a7

    .line 985
    :cond_52
    iget-object v4, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v6, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mContext:Landroid/content/Context;

    .line 986
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int v5, v2, v5

    iget-object v6, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mContext:Landroid/content/Context;

    .line 987
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v5, v6

    .line 985
    invoke-virtual {p0, v4, v5}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->updateFODIconPosition(II)V

    .line 988
    goto :goto_a7

    .line 981
    :cond_77
    iget-object v4, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mContext:Landroid/content/Context;

    .line 982
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 981
    invoke-virtual {p0, v4, v5}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->updateFODIconPosition(II)V

    .line 983
    goto :goto_a7

    .line 977
    :cond_8f
    iget-object v4, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v6, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mContext:Landroid/content/Context;

    .line 978
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 977
    invoke-virtual {p0, v4, v5}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->updateFODIconPosition(II)V

    .line 979
    nop

    .line 995
    :goto_a7
    return-void
.end method

.method private userActivity()V
    .registers 6

    .line 1239
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1240
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 1241
    return-void
.end method


# virtual methods
.method public animateFODIcon(FI)V
    .registers 5
    .param p1, "alpha"  # F
    .param p2, "duration"  # I

    .line 869
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIconHandler:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;

    new-instance v1, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$12;-><init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;FI)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;->post(Ljava/lang/Runnable;)Z

    .line 877
    return-void
.end method

.method public closeHBM()V
    .registers 4

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start close hbm by keyguard, mClient:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 694
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eqz v1, :cond_2a

    .line 695
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIconHandler:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;

    new-instance v2, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$5;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$5;-><init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)V

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;->post(Ljava/lang/Runnable;)Z

    .line 709
    :cond_2a
    monitor-exit v0

    .line 710
    return-void

    .line 709
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_1c .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public dismiss()V
    .registers 4

    .line 795
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mBrightnessChangedCallback:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$BrightnessChangedCallback;

    const-string v2, "FingerprintService"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->unRegisterBrightnessCallback(Landroid/os/IBrightnessChangedCallback;Ljava/lang/String;)V

    .line 796
    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->unregisterGestureListener()V

    .line 797
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIconHandler:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;

    new-instance v1, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$8;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$8;-><init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;->post(Ljava/lang/Runnable;)Z

    .line 803
    return-void
.end method

.method public isFingerprintIconVisible()Z
    .registers 4

    .line 833
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 834
    :try_start_3
    iget v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mFodIconVisibilityState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    monitor-exit v0

    return v2

    .line 835
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public onDisplayTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;

    .line 966
    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->updateFODIconPosition()V

    .line 967
    return-void
.end method

.method public sendResetBroadcast()V
    .registers 7

    .line 1083
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const-string/jumbo v2, "immediately_on_or_off"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    move v0, v2

    goto :goto_10

    :cond_f
    move v0, v1

    .line 1085
    .local v0, "isBluelightEnable":Z
    :goto_10
    const/16 v3, 0x32

    .line 1086
    .local v3, "defaultColorTemperature":I
    iget-object v4, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "current_screen_color_temperature"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v3, :cond_1e

    move v4, v2

    goto :goto_1f

    :cond_1e
    move v4, v1

    .line 1090
    .local v4, "needResetColorTemperature":Z
    :goto_1f
    if-nez v0, :cond_23

    if-eqz v4, :cond_24

    :cond_23
    move v1, v2

    :cond_24
    iput-boolean v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mNeedResetDisplay:Z

    .line 1092
    iget-boolean v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mNeedResetDisplay:Z

    if-eqz v1, :cond_4c

    .line 1093
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1094
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "flyme.intent.action.display_reset"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1095
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1096
    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1097
    const-string v2, "com.android.settings"

    const-string v5, "com.meizu.settings.display.BlueLightReceiver"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1098
    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1100
    .end local v1  # "intent":Landroid/content/Intent;
    :cond_4c
    return-void
.end method

.method public sendRestoreBroadcast()V
    .registers 8

    .line 1103
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const-string/jumbo v2, "immediately_on_or_off"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    move v0, v2

    goto :goto_10

    :cond_f
    move v0, v1

    .line 1105
    .local v0, "isBluelightEnable":Z
    :goto_10
    const/16 v3, 0x32

    .line 1106
    .local v3, "defaultColorTemperature":I
    iget-object v4, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "current_screen_color_temperature"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v3, :cond_1e

    move v4, v2

    goto :goto_1f

    :cond_1e
    move v4, v1

    .line 1109
    .local v4, "needResetColorTemperature":Z
    :goto_1f
    if-nez v0, :cond_25

    if-eqz v4, :cond_24

    goto :goto_25

    :cond_24
    move v2, v1

    :cond_25
    :goto_25
    iput-boolean v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mNeedResetDisplay:Z

    .line 1110
    iget-boolean v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mNeedResetDisplay:Z

    if-eqz v2, :cond_4f

    .line 1111
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1112
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "flyme.intent.action.display_restore"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1113
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1114
    const/high16 v5, 0x1000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1115
    const-string v5, "com.android.settings"

    const-string v6, "com.meizu.settings.display.BlueLightReceiver"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1116
    iget-object v5, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1118
    iput-boolean v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mNeedResetDisplay:Z

    .line 1120
    .end local v2  # "intent":Landroid/content/Intent;
    :cond_4f
    return-void
.end method

.method public serviceDied(J)V
    .registers 3
    .param p1, "cookie"  # J

    .line 1245
    invoke-virtual {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->dismiss()V

    .line 1246
    return-void
.end method

.method public setAuthenticated(ZZ)V
    .registers 7
    .param p1, "success"  # Z
    .param p2, "lockout"  # Z

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAuthenticated, success:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lockout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsFingerprintAuthenticating:Z

    .line 396
    iget-boolean v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIsVerifyInAodMode:Z

    if-nez v1, :cond_2c

    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->isAuthenticatingInAodMode()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 397
    :cond_2c
    if-nez p1, :cond_44

    if-nez p2, :cond_44

    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->isAuthenticatingInAodMode()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 398
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0, v0}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 400
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mHBMController:Lcom/android/server/biometrics/flymefingerprint/HBMController;

    invoke-virtual {v1, p1}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->setAuthenticated(Z)V

    .line 404
    :cond_44
    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->isInAODMode()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 406
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mHBMController:Lcom/android/server/biometrics/flymefingerprint/HBMController;

    invoke-virtual {v1, p1}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->setAuthenticated(Z)V

    .line 407
    if-nez p1, :cond_60

    .line 408
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mFODIconParamsController:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;

    invoke-virtual {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->getFingerprintView()Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->setRefreshViewEnable(Z)V

    .line 409
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mFODIconParamsController:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;

    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->updateFingerprintView(Z)V

    .line 412
    :cond_60
    return-void
.end method

.method public setFODIcon(I)V
    .registers 4
    .param p1, "resid"  # I

    .line 853
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIconHandler:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;

    new-instance v1, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$11;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$11;-><init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;->post(Ljava/lang/Runnable;)Z

    .line 866
    return-void
.end method

.method public setFingerprintIconColor([I)V
    .registers 4
    .param p1, "colors"  # [I

    .line 658
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIconHandler:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;

    new-instance v1, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$4;-><init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;[I)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;->post(Ljava/lang/Runnable;)Z

    .line 665
    return-void
.end method

.method public setFingerprintIconVisible(Z)V
    .registers 4
    .param p1, "visible"  # Z

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFingerprintIconVisible, visible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFingerprintIconVisible():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    invoke-virtual {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->isFingerprintIconVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mClient:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 806
    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eqz v0, :cond_38

    invoke-virtual {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->isFingerprintIconVisible()Z

    move-result v0

    if-ne v0, p1, :cond_38

    .line 810
    return-void

    .line 813
    :cond_38
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIconHandler:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;

    new-instance v1, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$9;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$9;-><init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;->post(Ljava/lang/Runnable;)Z

    .line 830
    return-void
.end method

.method public show(Lcom/android/server/biometrics/ClientMonitor;)V
    .registers 5
    .param p1, "client"  # Lcom/android/server/biometrics/ClientMonitor;

    .line 784
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mBrightnessChangedCallback:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$BrightnessChangedCallback;

    const-string v2, "FingerprintService"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerBrightnessCallback(Landroid/os/IBrightnessChangedCallback;Ljava/lang/String;)V

    .line 785
    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->registerGestureListener()V

    .line 786
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIconHandler:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;

    new-instance v1, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$7;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$7;-><init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Lcom/android/server/biometrics/ClientMonitor;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;->post(Ljava/lang/Runnable;)Z

    .line 792
    return-void
.end method

.method public updateFODIconPosition(II)V
    .registers 5
    .param p1, "x"  # I
    .param p2, "y"  # I

    .line 839
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->mIconHandler:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;

    new-instance v1, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$10;-><init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;->post(Ljava/lang/Runnable;)Z

    .line 850
    return-void
.end method
