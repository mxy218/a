.class public Lcom/meizu/settings/calibration/ProximityCalibraton;
.super Lcom/meizu/settings/calibration/CalibrationPreference;
.source "ProximityCalibraton.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceControlManager:Lmeizu/os/DeviceControlManager;

.field private final mProximityListener:Landroid/hardware/SensorEventListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/calibration/ProximityCalibraton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/calibration/CalibrationPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance p2, Lcom/meizu/settings/calibration/ProximityCalibraton$1;

    invoke-direct {p2, p0}, Lcom/meizu/settings/calibration/ProximityCalibraton$1;-><init>(Lcom/meizu/settings/calibration/ProximityCalibraton;)V

    iput-object p2, p0, Lcom/meizu/settings/calibration/ProximityCalibraton;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 34
    iput-object p1, p0, Lcom/meizu/settings/calibration/ProximityCalibraton;->mContext:Landroid/content/Context;

    .line 35
    iget-object p2, p0, Lcom/meizu/settings/calibration/ProximityCalibraton;->mContext:Landroid/content/Context;

    const-string v0, "device_control"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmeizu/os/DeviceControlManager;

    iput-object p2, p0, Lcom/meizu/settings/calibration/ProximityCalibraton;->mDeviceControlManager:Lmeizu/os/DeviceControlManager;

    const-string/jumbo p2, "sensor"

    .line 36
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/meizu/settings/calibration/ProximityCalibraton;->mSensorManager:Landroid/hardware/SensorManager;

    return-void
.end method

.method private startProximityCalibrate()Z
    .registers 2

    const-string p0, "ProximityCalibraton"

    const-string v0, " startProximityCalibrate  "

    .line 57
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x8

    const/4 v0, 0x2

    .line 58
    invoke-static {p0, v0}, Lcom/meizu/settings/calibration/SensorCalUtils;->calibrateSensor(II)Ljava/lang/String;

    move-result-object p0

    .line 59
    invoke-static {p0}, Lcom/meizu/settings/calibration/SensorCalUtils;->parseCalResult(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    .line 61
    invoke-static {p0}, Lcom/meizu/settings/calibration/SensorCalUtils;->isResultSuccess(Ljava/util/HashMap;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 76
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected startCalibrate()Z
    .registers 1

    .line 40
    invoke-super {p0}, Lcom/meizu/settings/calibration/CalibrationPreference;->startCalibrate()Z

    .line 41
    invoke-direct {p0}, Lcom/meizu/settings/calibration/ProximityCalibraton;->startProximityCalibrate()Z

    move-result p0

    return p0
.end method
