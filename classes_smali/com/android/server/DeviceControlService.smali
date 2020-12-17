.class public Lcom/android/server/DeviceControlService;
.super Lmeizu/os/IDeviceControlService$Stub;
.source "DeviceControlService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceControlService$SettingsObserver;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field public static final DEVCFG_ACTIVATE_STATS:I = 0x5

.field public static final DEVCFG_FIRST_BOOT_STATE:I = 0xd

.field private static final DEVCFG_MAX_INT_FIELDS:I = 0x7

.field private static final DEVICE_CONTROL_VERIFY:Ljava/lang/String; = "android.permission.ROOT_RECOVERY_STATE"

.field private static final FILE_DC_LIGHT:Ljava/lang/String; = "/sys/class/meizu/lcm/display/DC_Enable"

.field private static final FLYME_DEVICE_CONTROL_VERIFY:Ljava/lang/String; = "flyme.permission.ROOT_RECOVERY_STATE"

.field private static TAG:Ljava/lang/String;

.field private static mMzDisplayAngularArcSurface:Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;

.field private static mMzDisplayDirectCurrentLight:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;


# instance fields
.field private final DEVICE_PROVISIONED_URI:Landroid/net/Uri;

.field private final MEIZU_CTS_STATE_URI:Landroid/net/Uri;

.field private mBlueLightController:Lcom/android/server/display/bluelight/BlueLightController;

.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mHandler:Landroid/os/Handler;

.field private mNightModeTwilightController:Lcom/android/server/display/nightmode/NightModeTwilightController;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSettingsObserver:Lcom/android/server/DeviceControlService$SettingsObserver;

.field private mStepCounterSensor:Landroid/hardware/Sensor;

.field private final mStepCounterSensorListener:Landroid/hardware/SensorEventListener;

.field private mTwilight:Lcom/android/server/twilight/TwilightManager;

.field private final mTwilightListener:Lcom/android/server/twilight/TwilightListener;

.field private mTwilightState:Lcom/android/server/twilight/TwilightState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    const-string v0, "DeviceControlService"

    sput-object v0, Lcom/android/server/DeviceControlService;->TAG:Ljava/lang/String;

    .line 49
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/DeviceControlService;->DEBUG:Z

    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/DeviceControlService;->mMzDisplayAngularArcSurface:Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;

    .line 70
    sput-object v0, Lcom/android/server/DeviceControlService;->mMzDisplayDirectCurrentLight:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 170
    invoke-direct {p0}, Lmeizu/os/IDeviceControlService$Stub;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DeviceControlService;->mTwilightState:Lcom/android/server/twilight/TwilightState;

    .line 77
    const-string/jumbo v0, "mz_cts_state"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceControlService;->MEIZU_CTS_STATE_URI:Landroid/net/Uri;

    .line 78
    const-string v0, "device_provisioned"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceControlService;->DEVICE_PROVISIONED_URI:Landroid/net/Uri;

    .line 97
    new-instance v0, Lcom/android/server/DeviceControlService$1;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceControlService$1;-><init>(Lcom/android/server/DeviceControlService;)V

    iput-object v0, p0, Lcom/android/server/DeviceControlService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceControlService;->mHandler:Landroid/os/Handler;

    .line 122
    new-instance v0, Lcom/android/server/DeviceControlService$2;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceControlService$2;-><init>(Lcom/android/server/DeviceControlService;)V

    iput-object v0, p0, Lcom/android/server/DeviceControlService;->mStepCounterSensorListener:Landroid/hardware/SensorEventListener;

    .line 134
    new-instance v0, Lcom/android/server/DeviceControlService$3;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceControlService$3;-><init>(Lcom/android/server/DeviceControlService;)V

    iput-object v0, p0, Lcom/android/server/DeviceControlService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"  # Landroid/content/Context;

    .line 174
    invoke-direct {p0}, Lmeizu/os/IDeviceControlService$Stub;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DeviceControlService;->mTwilightState:Lcom/android/server/twilight/TwilightState;

    .line 77
    const-string/jumbo v0, "mz_cts_state"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceControlService;->MEIZU_CTS_STATE_URI:Landroid/net/Uri;

    .line 78
    const-string v0, "device_provisioned"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceControlService;->DEVICE_PROVISIONED_URI:Landroid/net/Uri;

    .line 97
    new-instance v0, Lcom/android/server/DeviceControlService$1;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceControlService$1;-><init>(Lcom/android/server/DeviceControlService;)V

    iput-object v0, p0, Lcom/android/server/DeviceControlService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceControlService;->mHandler:Landroid/os/Handler;

    .line 122
    new-instance v0, Lcom/android/server/DeviceControlService$2;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceControlService$2;-><init>(Lcom/android/server/DeviceControlService;)V

    iput-object v0, p0, Lcom/android/server/DeviceControlService;->mStepCounterSensorListener:Landroid/hardware/SensorEventListener;

    .line 134
    new-instance v0, Lcom/android/server/DeviceControlService$3;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceControlService$3;-><init>(Lcom/android/server/DeviceControlService;)V

    iput-object v0, p0, Lcom/android/server/DeviceControlService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 175
    invoke-static {}, Lcom/android/server/DeviceControlService;->nativeInit()V

    .line 176
    iput-object p1, p0, Lcom/android/server/DeviceControlService;->mContext:Landroid/content/Context;

    .line 179
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DeviceControlService;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/DeviceControlService;

    .line 47
    iget-object v0, p0, Lcom/android/server/DeviceControlService;->MEIZU_CTS_STATE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/DeviceControlService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/DeviceControlService;

    .line 47
    invoke-direct {p0}, Lcom/android/server/DeviceControlService;->handleCtsStateChangedLocked()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/DeviceControlService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/DeviceControlService;

    .line 47
    invoke-direct {p0}, Lcom/android/server/DeviceControlService;->updateTwilightTime()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/DeviceControlService;)Landroid/hardware/display/DisplayManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/DeviceControlService;

    .line 47
    iget-object v0, p0, Lcom/android/server/DeviceControlService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/DeviceControlService;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/DeviceControlService;

    .line 47
    iget-object v0, p0, Lcom/android/server/DeviceControlService;->DEVICE_PROVISIONED_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/DeviceControlService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/DeviceControlService;

    .line 47
    iget-object v0, p0, Lcom/android/server/DeviceControlService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/DeviceControlService;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/DeviceControlService;
    .param p1, "x1"  # Landroid/content/Context;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/DeviceControlService;->startBootFaceRecognitionService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .line 47
    sget-object v0, Lcom/android/server/DeviceControlService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/DeviceControlService;)Lcom/android/server/twilight/TwilightState;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/DeviceControlService;

    .line 47
    iget-object v0, p0, Lcom/android/server/DeviceControlService;->mTwilightState:Lcom/android/server/twilight/TwilightState;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/DeviceControlService;Lcom/android/server/twilight/TwilightState;)Lcom/android/server/twilight/TwilightState;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/DeviceControlService;
    .param p1, "x1"  # Lcom/android/server/twilight/TwilightState;

    .line 47
    iput-object p1, p0, Lcom/android/server/DeviceControlService;->mTwilightState:Lcom/android/server/twilight/TwilightState;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/DeviceControlService;)Lcom/android/server/twilight/TwilightManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/DeviceControlService;

    .line 47
    iget-object v0, p0, Lcom/android/server/DeviceControlService;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/DeviceControlService;)Lcom/android/server/display/bluelight/BlueLightController;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/DeviceControlService;

    .line 47
    iget-object v0, p0, Lcom/android/server/DeviceControlService;->mBlueLightController:Lcom/android/server/display/bluelight/BlueLightController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/DeviceControlService;)Lcom/android/server/display/nightmode/NightModeTwilightController;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/DeviceControlService;

    .line 47
    iget-object v0, p0, Lcom/android/server/DeviceControlService;->mNightModeTwilightController:Lcom/android/server/display/nightmode/NightModeTwilightController;

    return-object v0
.end method

.method private enforceCheckPermission(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;

    .line 309
    const-string v0, "android.permission.ROOT_RECOVERY_STATE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_13

    .line 310
    const-string v0, "flyme.permission.ROOT_RECOVERY_STATE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 311
    .local v0, "isAllow":Z
    :goto_14
    if-eqz v0, :cond_17

    .line 314
    return-void

    .line 312
    :cond_17
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Permission denied : flyme.permission.ROOT_RECOVERY_STATE"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private ensureDouble(I)Ljava/lang/String;
    .registers 5
    .param p1, "number"  # I

    .line 270
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "strNumber":Ljava/lang/String;
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    goto :goto_27

    .line 274
    :cond_d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_26

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 277
    :cond_26
    return-object v0

    .line 272
    :cond_27
    :goto_27
    const/4 v1, 0x0

    return-object v1
.end method

.method private handleCtsStateChangedLocked()V
    .registers 4

    .line 317
    iget-object v0, p0, Lcom/android/server/DeviceControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mz_cts_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 318
    .local v0, "mz_cts_state":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 319
    sget-object v1, Lcom/android/server/DeviceControlService;->mMzDisplayAngularArcSurface:Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;

    if-eqz v1, :cond_20

    .line 320
    invoke-virtual {v1}, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;->hideDisplayAngularArcView()V

    goto :goto_20

    .line 323
    :cond_19
    sget-object v1, Lcom/android/server/DeviceControlService;->mMzDisplayAngularArcSurface:Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;

    if-eqz v1, :cond_20

    .line 324
    invoke-virtual {v1}, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;->showDisplayAngularArcView()V

    .line 327
    :cond_20
    :goto_20
    return-void
.end method

.method private isDeviceProvisionedInSettingsDb(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"  # Landroid/content/Context;

    .line 265
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method

.method private static native naitve_read_UsbChargeTemperature()I
.end method

.method private static native nativeInit()V
.end method

.method private static native native_count_as_restart(Ljava/lang/String;)I
.end method

.method private static native native_get_charge_mode()I
.end method

.method private static native native_read_cfgparam(I[I)I
.end method

.method private static native native_read_node(Ljava/lang/String;)I
.end method

.method private static native native_set_charge_mode(I)I
.end method

.method private static native native_set_display_lut_mode(I)I
.end method

.method private static native native_write_cfgparam(I[I)I
.end method

.method private static native native_write_node(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static setSkipInScreenshotAndScreenrecord(Z)V
    .registers 2
    .param p0, "skip"  # Z

    .line 330
    sget-object v0, Lcom/android/server/DeviceControlService;->mMzDisplayAngularArcSurface:Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;

    if-eqz v0, :cond_7

    .line 331
    invoke-static {p0}, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;->setSkipInScreenshotAndScreenrecord(Z)V

    .line 333
    :cond_7
    sget-object v0, Lcom/android/server/DeviceControlService;->mMzDisplayDirectCurrentLight:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    if-eqz v0, :cond_e

    .line 334
    invoke-static {p0}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->setSkipInScreenshotAndScreenrecord(Z)V

    .line 336
    :cond_e
    return-void
.end method

.method private startBootFaceRecognitionService(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;

    .line 251
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/DeviceControlService;->isDeviceProvisionedInSettingsDb(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 252
    sget-object v0, Lcom/android/server/DeviceControlService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startFaceBootReceiverService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 254
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.meizu.facerecognition"

    const-string v3, "com.meizu.facerecognition.server.BootFaceRecognitionService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 256
    const-string/jumbo v1, "start_app"

    const-string v2, "SystemServer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_2d

    .line 261
    .end local v0  # "intent":Landroid/content/Intent;
    :cond_2c
    goto :goto_48

    .line 259
    :catchall_2d
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/android/server/DeviceControlService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BootFaceRecognitionService Warning :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_48
    return-void
.end method

.method private updateTwilightTime()V
    .registers 12

    .line 281
    iget-object v0, p0, Lcom/android/server/DeviceControlService;->mTwilightState:Lcom/android/server/twilight/TwilightState;

    if-eqz v0, :cond_7c

    .line 282
    invoke-virtual {v0}, Lcom/android/server/twilight/TwilightState;->sunriseTimeMillis()J

    move-result-wide v0

    .line 283
    .local v0, "mTodaySunrise":J
    iget-object v2, p0, Lcom/android/server/DeviceControlService;->mTwilightState:Lcom/android/server/twilight/TwilightState;

    invoke-virtual {v2}, Lcom/android/server/twilight/TwilightState;->sunsetTimeMillis()J

    move-result-wide v2

    .line 285
    .local v2, "mTodaySunset":J
    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4}, Ljava/util/GregorianCalendar;-><init>()V

    .line 286
    .local v4, "mSunriseDate":Ljava/util/GregorianCalendar;
    invoke-virtual {v4, v0, v1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 288
    new-instance v5, Ljava/util/GregorianCalendar;

    invoke-direct {v5}, Ljava/util/GregorianCalendar;-><init>()V

    .line 289
    .local v5, "mSunsetDate":Ljava/util/GregorianCalendar;
    invoke-virtual {v5, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 291
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 292
    .local v6, "mSunriseTime":Ljava/lang/StringBuffer;
    const/16 v7, 0xb

    invoke-virtual {v4, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/server/DeviceControlService;->ensureDouble(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    const/16 v8, 0x3a

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 294
    const/16 v9, 0xc

    invoke-virtual {v4, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/server/DeviceControlService;->ensureDouble(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 297
    .local v10, "mSunsetTime":Ljava/lang/StringBuffer;
    invoke-virtual {v5, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/DeviceControlService;->ensureDouble(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 299
    invoke-virtual {v5, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/DeviceControlService;->ensureDouble(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 300
    iget-object v7, p0, Lcom/android/server/DeviceControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 301
    .local v7, "resolver":Landroid/content/ContentResolver;
    nop

    .line 302
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 301
    const-string/jumbo v9, "sunrise_time"

    invoke-static {v7, v9, v8}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 303
    nop

    .line 304
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 303
    const-string/jumbo v9, "sunset_time"

    invoke-static {v7, v9, v8}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 306
    .end local v0  # "mTodaySunrise":J
    .end local v2  # "mTodaySunset":J
    .end local v4  # "mSunriseDate":Ljava/util/GregorianCalendar;
    .end local v5  # "mSunsetDate":Ljava/util/GregorianCalendar;
    .end local v6  # "mSunriseTime":Ljava/lang/StringBuffer;
    .end local v7  # "resolver":Landroid/content/ContentResolver;
    .end local v10  # "mSunsetTime":Ljava/lang/StringBuffer;
    :cond_7c
    return-void
.end method


# virtual methods
.method public countAsRestart(I)I
    .registers 7
    .param p1, "type"  # I

    .line 387
    const/4 v0, 0x0

    .line 388
    .local v0, "ret":I
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 389
    .local v1, "typeStr":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "reboot_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 391
    sget-boolean v2, Lcom/android/server/DeviceControlService;->DEBUG:Z

    if-eqz v2, :cond_33

    .line 392
    sget-object v2, Lcom/android/server/DeviceControlService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "countAsRestart type is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", typeStr is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/DeviceControlService;->native_count_as_restart(Ljava/lang/String;)I

    move-result v0

    .line 395
    return v0
.end method

.method public getActivateStats()I
    .registers 4

    .line 408
    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 410
    .local v0, "data":[I
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/android/server/DeviceControlService;->readCfgParam(I[I)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_e

    .line 411
    aget v1, v0, v2

    return v1

    .line 413
    :cond_e
    return v2
.end method

.method public getChargeMode()I
    .registers 2

    .line 473
    invoke-static {}, Lcom/android/server/DeviceControlService;->native_get_charge_mode()I

    move-result v0

    return v0
.end method

.method public getFirstBootState()I
    .registers 3

    .line 433
    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 435
    .local v0, "data":[I
    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lcom/android/server/DeviceControlService;->readCfgParam(I[I)I

    move-result v1

    if-lez v1, :cond_f

    .line 436
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1

    .line 438
    :cond_f
    const/4 v1, -0x1

    return v1
.end method

.method public getUSBChargeTemperature()I
    .registers 2

    .line 459
    invoke-static {}, Lcom/android/server/DeviceControlService;->naitve_read_UsbChargeTemperature()I

    move-result v0

    return v0
.end method

.method public isSensorFastest()Z
    .registers 6

    .line 493
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 494
    .local v0, "uid":I
    invoke-static {}, Lcom/meizu/pps/observer/PPSServer;->getInstance()Lcom/meizu/pps/observer/PPSServer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/meizu/pps/observer/PPSServer;->isSensorFastest(I)Z

    move-result v1

    .line 495
    .local v1, "result":Z
    sget-object v2, Lcom/android/server/DeviceControlService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sensor Fastest :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2a} :catch_2b

    .line 496
    return v1

    .line 497
    .end local v0  # "uid":I
    .end local v1  # "result":Z
    :catch_2b
    move-exception v0

    .line 498
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 499
    const/4 v1, 0x1

    return v1
.end method

.method public readCfgParam(I[I)I
    .registers 8
    .param p1, "dev"  # I
    .param p2, "info"  # [I

    .line 368
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 369
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_9

    .line 370
    invoke-direct {p0, v0}, Lcom/android/server/DeviceControlService;->enforceCheckPermission(Landroid/content/Context;)V

    .line 373
    :cond_9
    sget-boolean v1, Lcom/android/server/DeviceControlService;->DEBUG:Z

    if-eqz v1, :cond_24

    .line 374
    sget-object v1, Lcom/android/server/DeviceControlService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readCfgParam dev:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_24
    invoke-static {p1, p2}, Lcom/android/server/DeviceControlService;->native_read_cfgparam(I[I)I

    move-result v1

    .line 377
    .local v1, "ret":I
    sget-boolean v2, Lcom/android/server/DeviceControlService;->DEBUG:Z

    if-eqz v2, :cond_43

    .line 378
    sget-object v2, Lcom/android/server/DeviceControlService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readCfgParam dev over:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_43
    return v1
.end method

.method public readNode(Ljava/lang/String;)I
    .registers 3
    .param p1, "path"  # Ljava/lang/String;

    .line 486
    invoke-static {p1}, Lcom/android/server/DeviceControlService;->native_read_node(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setActivateStats(I)I
    .registers 5
    .param p1, "state"  # I

    .line 420
    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 422
    .local v0, "data":[I
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 423
    const/4 v2, 0x5

    invoke-virtual {p0, v2, v0}, Lcom/android/server/DeviceControlService;->writeCfgParam(I[I)I

    move-result v2

    if-lez v2, :cond_f

    .line 424
    const/4 v1, 0x1

    return v1

    .line 426
    :cond_f
    return v1
.end method

.method public setChargeMode(I)I
    .registers 3
    .param p1, "value"  # I

    .line 467
    invoke-static {p1}, Lcom/android/server/DeviceControlService;->native_set_charge_mode(I)I

    move-result v0

    return v0
.end method

.method public setDisplayLutMode(I)I
    .registers 3
    .param p1, "value"  # I

    .line 402
    invoke-static {p1}, Lcom/android/server/DeviceControlService;->native_set_display_lut_mode(I)I

    move-result v0

    return v0
.end method

.method public setFirstBootState(I)I
    .registers 5
    .param p1, "state"  # I

    .line 445
    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 447
    .local v0, "data":[I
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 448
    const/16 v2, 0xd

    invoke-virtual {p0, v2, v0}, Lcom/android/server/DeviceControlService;->writeCfgParam(I[I)I

    move-result v2

    if-ltz v2, :cond_10

    .line 449
    const/4 v1, 0x1

    return v1

    .line 451
    :cond_10
    return v1
.end method

.method public systemReady()V
    .registers 6

    .line 183
    sget-object v0, Lcom/android/server/DeviceControlService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/android/server/DeviceControlService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/DeviceControlService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 202
    const-string/jumbo v0, "persist.sys.enable.stepcounter"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 204
    iget-object v0, p0, Lcom/android/server/DeviceControlService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceControlService;->mStepCounterSensor:Landroid/hardware/Sensor;

    .line 205
    iget-object v0, p0, Lcom/android/server/DeviceControlService;->mStepCounterSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_3b

    .line 206
    iget-object v2, p0, Lcom/android/server/DeviceControlService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/DeviceControlService;->mStepCounterSensorListener:Landroid/hardware/SensorEventListener;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 211
    :cond_3b
    new-instance v0, Lcom/android/server/DeviceControlService$SettingsObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v2}, Lcom/android/server/DeviceControlService$SettingsObserver;-><init>(Lcom/android/server/DeviceControlService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/DeviceControlService;->mSettingsObserver:Lcom/android/server/DeviceControlService$SettingsObserver;

    .line 214
    iget-object v0, p0, Lcom/android/server/DeviceControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/DeviceControlService;->MEIZU_CTS_STATE_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/DeviceControlService;->mSettingsObserver:Lcom/android/server/DeviceControlService$SettingsObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 216
    iget-object v0, p0, Lcom/android/server/DeviceControlService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;->getInstance(Landroid/content/Context;)Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;

    move-result-object v0

    sput-object v0, Lcom/android/server/DeviceControlService;->mMzDisplayAngularArcSurface:Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;

    .line 217
    sget-object v0, Lcom/android/server/DeviceControlService;->mMzDisplayAngularArcSurface:Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;

    invoke-virtual {v0}, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;->showDisplayAngularArcView()V

    .line 227
    iget-object v0, p0, Lcom/android/server/DeviceControlService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/display/bluelight/BlueLightController;->getInstance(Landroid/content/Context;)Lcom/android/server/display/bluelight/BlueLightController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceControlService;->mBlueLightController:Lcom/android/server/display/bluelight/BlueLightController;

    .line 228
    iget-object v0, p0, Lcom/android/server/DeviceControlService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/display/nightmode/NightModeTwilightController;->getInstance(Landroid/content/Context;)Lcom/android/server/display/nightmode/NightModeTwilightController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceControlService;->mNightModeTwilightController:Lcom/android/server/display/nightmode/NightModeTwilightController;

    .line 230
    const-class v0, Lcom/android/server/twilight/TwilightManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/twilight/TwilightManager;

    iput-object v0, p0, Lcom/android/server/DeviceControlService;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    .line 231
    iget-object v0, p0, Lcom/android/server/DeviceControlService;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    iget-object v2, p0, Lcom/android/server/DeviceControlService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-interface {v0, v2, v3}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    .line 233
    iget-object v0, p0, Lcom/android/server/DeviceControlService;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/DeviceControlService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 234
    iget-object v0, p0, Lcom/android/server/DeviceControlService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceControlService;->mDisplay:Landroid/view/Display;

    .line 238
    iget-object v0, p0, Lcom/android/server/DeviceControlService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/display/freshrate/FreshRateController;->sendBroadcastFor120HzReboot(Landroid/content/Context;)V

    .line 240
    iget-object v0, p0, Lcom/android/server/DeviceControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceControlService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 241
    iget-object v0, p0, Lcom/android/server/DeviceControlService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/DeviceControlService;->isDeviceProvisionedInSettingsDb(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_ca

    iget-object v0, p0, Lcom/android/server/DeviceControlService;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_ca

    .line 243
    const-string v2, "flyme.face.facerecognition"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 244
    iget-object v0, p0, Lcom/android/server/DeviceControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/DeviceControlService;->DEVICE_PROVISIONED_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/DeviceControlService;->mSettingsObserver:Lcom/android/server/DeviceControlService$SettingsObserver;

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 247
    :cond_ca
    return-void
.end method

.method public writeCfgParam(I[I)I
    .registers 7
    .param p1, "dev"  # I
    .param p2, "info"  # [I

    .line 347
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 348
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_9

    .line 349
    invoke-direct {p0, v0}, Lcom/android/server/DeviceControlService;->enforceCheckPermission(Landroid/content/Context;)V

    .line 352
    :cond_9
    sget-boolean v1, Lcom/android/server/DeviceControlService;->DEBUG:Z

    if-eqz v1, :cond_24

    .line 353
    sget-object v1, Lcom/android/server/DeviceControlService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeCfgParam dev:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_24
    invoke-static {p1, p2}, Lcom/android/server/DeviceControlService;->native_write_cfgparam(I[I)I

    move-result v1

    return v1
.end method

.method public writeNode(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "path"  # Ljava/lang/String;
    .param p2, "value"  # Ljava/lang/String;

    .line 480
    invoke-static {p1, p2}, Lcom/android/server/DeviceControlService;->native_write_node(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
