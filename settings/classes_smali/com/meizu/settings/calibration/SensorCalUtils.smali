.class public Lcom/meizu/settings/calibration/SensorCalUtils;
.super Ljava/lang/Object;
.source "SensorCalUtils.java"


# direct methods
.method private static calSensorByHidl(II)Ljava/lang/String;
    .registers 6

    const-string v0, "SensorCalUtils"

    .line 90
    :try_start_2
    invoke-static {}, Lvendor/qti/hardware/sensorscalibrate/V1_0/ISensorsCalibrate;->getService()Lvendor/qti/hardware/sensorscalibrate/V1_0/ISensorsCalibrate;

    move-result-object v1

    int-to-byte v2, p1

    .line 91
    invoke-interface {v1, p0, v2}, Lvendor/qti/hardware/sensorscalibrate/V1_0/ISensorsCalibrate;->SensorsCal(IB)Ljava/lang/String;

    move-result-object v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_c

    goto :goto_16

    :catch_c
    move-exception v1

    const-string v2, " RemoteException "

    .line 93
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    .line 96
    :goto_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " calSensorByHidl sensor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " testType "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ret "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static calibrateSensor(II)Ljava/lang/String;
    .registers 4

    const-string v0, "SensorCalUtils"

    const-string v1, "Start to calibrate"

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {}, Lcom/meizu/settings/calibration/SensorCalUtils;->getSCalInstance()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_17

    const-string v1, "Calibrate Sensor by HIDL"

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {p0, p1}, Lcom/meizu/settings/calibration/SensorCalUtils;->calSensorByHidl(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_17
    const-string p0, " :-999"

    return-object p0
.end method

.method private static getSCalInstance()Ljava/lang/Object;
    .registers 7

    const-string v0, "get ISensorsCalibrate Instance failed!"

    const-string v1, "SensorCalUtils"

    const/4 v2, 0x0

    :try_start_5
    const-string/jumbo v3, "vendor.qti.hardware.sensorscalibrate.V1_0.ISensorsCalibrate"

    .line 57
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getService"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    .line 58
    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 59
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "get Sensor Calibrate Instance"

    .line 60
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_25} :catch_48
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_25} :catch_3e
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_25} :catch_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_25} :catch_2e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_25} :catch_26

    goto :goto_51

    :catch_26
    move-exception v3

    .line 79
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_51

    :catch_2e
    move-exception v3

    .line 75
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_51

    :catch_36
    move-exception v3

    .line 71
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_51

    :catch_3e
    move-exception v0

    const-string v3, "NoClassDefFoundError occur for ISensorsCalibrate.getService()!"

    .line 67
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_51

    :catch_48
    move-exception v0

    const-string v3, "NoClassDefFoundError occur for ISensorsCalibrate!"

    .line 63
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_51
    return-object v2
.end method

.method public static isResultSuccess(Ljava/util/HashMap;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2e

    .line 122
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    .line 123
    :cond_c
    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 124
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 125
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2b

    const/16 v3, -0x3e7

    if-ne v2, v3, :cond_c

    :cond_2b
    move v1, v0

    goto :goto_c

    :cond_2d
    return v1

    :cond_2e
    return v0
.end method

.method public static parseCalResult(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "SensorCalUtils"

    if-eqz p0, :cond_4d

    const-string v1, ""

    .line 101
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_4d

    .line 108
    :cond_d
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, ";"

    .line 109
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 110
    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_1b
    if-ge v4, v2, :cond_4c

    aget-object v5, p0, v4

    .line 111
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " list value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, ":"

    .line 112
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 113
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_49

    .line 114
    aget-object v6, v5, v3

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_4c
    return-object v1

    :cond_4d
    :goto_4d
    const-string p0, " result is null "

    .line 103
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
