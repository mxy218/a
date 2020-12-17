.class public Lcom/meizu/settings/calibration/GsensorCalibration;
.super Lcom/meizu/settings/calibration/CalibrationPreference;
.source "GsensorCalibration.java"


# instance fields
.field private final mAccSensorListener:Landroid/hardware/SensorEventListener;

.field private mDeviceControlManager:Lmeizu/os/DeviceControlManager;

.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/calibration/GsensorCalibration;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/calibration/CalibrationPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance p2, Lcom/meizu/settings/calibration/GsensorCalibration$1;

    invoke-direct {p2, p0}, Lcom/meizu/settings/calibration/GsensorCalibration$1;-><init>(Lcom/meizu/settings/calibration/GsensorCalibration;)V

    iput-object p2, p0, Lcom/meizu/settings/calibration/GsensorCalibration;->mAccSensorListener:Landroid/hardware/SensorEventListener;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f120936

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/meizu/settings/calibration/CalibrationPreference;->setCalibrationTitle(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f12090f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/meizu/settings/calibration/CalibrationPreference;->setCalibrationTip(Ljava/lang/String;)V

    const-string p2, "device_control"

    .line 33
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmeizu/os/DeviceControlManager;

    iput-object p2, p0, Lcom/meizu/settings/calibration/GsensorCalibration;->mDeviceControlManager:Lmeizu/os/DeviceControlManager;

    const-string/jumbo p2, "sensor"

    .line 34
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/meizu/settings/calibration/GsensorCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    return-void
.end method

.method private startGsensorCalibrate()Z
    .registers 2

    const-string p0, "GsensorCalibration"

    const-string v0, " startGsensorCalibrate  "

    .line 56
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    const/4 v0, 0x2

    .line 57
    invoke-static {p0, v0}, Lcom/meizu/settings/calibration/SensorCalUtils;->calibrateSensor(II)Ljava/lang/String;

    move-result-object p0

    .line 58
    invoke-static {p0}, Lcom/meizu/settings/calibration/SensorCalUtils;->parseCalResult(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    .line 60
    invoke-static {p0}, Lcom/meizu/settings/calibration/SensorCalUtils;->isResultSuccess(Ljava/util/HashMap;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 75
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected startCalibrate()Z
    .registers 1

    .line 39
    invoke-super {p0}, Lcom/meizu/settings/calibration/CalibrationPreference;->startCalibrate()Z

    .line 40
    invoke-direct {p0}, Lcom/meizu/settings/calibration/GsensorCalibration;->startGsensorCalibrate()Z

    move-result p0

    return p0
.end method
