.class public Lcom/android/server/SensorNotificationService;
.super Lcom/android/server/SystemService;
.source "SensorNotificationService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/location/LocationListener;


# static fields
.field private static final DBG:Z = false

.field private static final KM_IN_M:J = 0x3e8L

.field private static final LOCATION_MIN_DISTANCE:J = 0x186a0L

.field private static final LOCATION_MIN_TIME:J = 0x1b7740L

.field private static final MILLIS_2010_1_1:J = 0x125ea667180L

.field private static final MINUTE_IN_MS:J = 0xea60L

.field private static final PROPERTY_USE_MOCKED_LOCATION:Ljava/lang/String; = "sensor.notification.use_mocked"

.field private static final TAG:Ljava/lang/String; = "SensorNotificationService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLocalGeomagneticFieldUpdateTime:J

.field private mLocationManager:Landroid/location/LocationManager;

.field private mMetaSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 64
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 61
    const-wide/32 v0, -0x1b7740

    iput-wide v0, p0, Lcom/android/server/SensorNotificationService;->mLocalGeomagneticFieldUpdateTime:J

    .line 65
    iput-object p1, p0, Lcom/android/server/SensorNotificationService;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method private broadcastDynamicSensorChanged()V
    .registers 4

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DYNAMIC_SENSOR_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    const/high16 v1, 0x40000000  # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 103
    iget-object v1, p0, Lcom/android/server/SensorNotificationService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 105
    return-void
.end method

.method private useMockedLocation()Z
    .registers 3

    .line 170
    const-string v0, "false"

    const-string/jumbo v1, "sensor.notification.use_mocked"

    invoke-static {v1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .line 161
    return-void
.end method

.method public onBootPhase(I)V
    .registers 8

    .line 73
    const/16 v0, 0x258

    if-ne p1, v0, :cond_26

    .line 74
    iget-object v0, p0, Lcom/android/server/SensorNotificationService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/SensorNotificationService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 75
    iget-object v0, p0, Lcom/android/server/SensorNotificationService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SensorNotificationService;->mMetaSensor:Landroid/hardware/Sensor;

    .line 76
    iget-object v0, p0, Lcom/android/server/SensorNotificationService;->mMetaSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_20

    goto :goto_26

    .line 79
    :cond_20
    iget-object v1, p0, Lcom/android/server/SensorNotificationService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 84
    :cond_26
    :goto_26
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_48

    .line 86
    iget-object p1, p0, Lcom/android/server/SensorNotificationService;->mContext:Landroid/content/Context;

    .line 87
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/android/server/SensorNotificationService;->mLocationManager:Landroid/location/LocationManager;

    .line 88
    iget-object v0, p0, Lcom/android/server/SensorNotificationService;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_3b

    goto :goto_48

    .line 91
    :cond_3b
    const-wide/32 v2, 0x1b7740

    const v4, 0x47c35000  # 100000.0f

    const-string/jumbo v1, "passive"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 98
    :cond_48
    :goto_48
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 11

    .line 123
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_13

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_13

    .line 124
    return-void

    .line 128
    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/SensorNotificationService;->mLocalGeomagneticFieldUpdateTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-gez v0, :cond_22

    .line 129
    return-void

    .line 132
    :cond_22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 135
    invoke-direct {p0}, Lcom/android/server/SensorNotificationService;->useMockedLocation()Z

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v1

    if-eq v0, v1, :cond_8c

    const-wide v0, 0x125ea667180L

    cmp-long v0, v5, v0

    if-gez v0, :cond_3a

    goto :goto_8c

    .line 139
    :cond_3a
    new-instance v0, Landroid/hardware/GeomagneticField;

    .line 140
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v2, v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    double-to-float v3, v3

    .line 141
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v7

    double-to-float v4, v7

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/hardware/GeomagneticField;-><init>(FFFJ)V

    .line 147
    nop

    .line 148
    :try_start_50
    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getFieldStrength()F

    move-result p1

    const/high16 v1, 0x447a0000  # 1000.0f

    div-float/2addr p1, v1

    .line 149
    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getDeclination()F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x400921fb54442d18L  # Math.PI

    mul-double/2addr v1, v3

    const-wide v5, 0x4066800000000000L  # 180.0

    div-double/2addr v1, v5

    double-to-float v1, v1

    .line 150
    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getInclination()F

    move-result v0

    float-to-double v7, v0

    mul-double/2addr v7, v3

    div-double/2addr v7, v5

    double-to-float v0, v7

    .line 147
    invoke-static {p1, v1, v0}, Landroid/hardware/SensorAdditionalInfo;->createLocalGeomagneticField(FFF)Landroid/hardware/SensorAdditionalInfo;

    move-result-object p1

    .line 151
    if-eqz p1, :cond_82

    .line 152
    iget-object v0, p0, Lcom/android/server/SensorNotificationService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/SensorNotificationService;->mLocalGeomagneticFieldUpdateTime:J
    :try_end_82
    .catch Ljava/lang/IllegalArgumentException; {:try_start_50 .. :try_end_82} :catch_83

    .line 157
    :cond_82
    goto :goto_8b

    .line 155
    :catch_83
    move-exception p1

    .line 156
    const-string p1, "SensorNotificationService"

    const-string v0, "Invalid local geomagnetic field, ignore."

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_8b
    return-void

    .line 136
    :cond_8c
    :goto_8c
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    .line 167
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    .line 165
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 3

    .line 109
    iget-object p1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/android/server/SensorNotificationService;->mMetaSensor:Landroid/hardware/Sensor;

    if-ne p1, v0, :cond_9

    .line 110
    invoke-direct {p0}, Lcom/android/server/SensorNotificationService;->broadcastDynamicSensorChanged()V

    .line 112
    :cond_9
    return-void
.end method

.method public onStart()V
    .registers 2

    .line 69
    const-class v0, Lcom/android/server/SensorNotificationService;

    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    .line 163
    return-void
.end method
