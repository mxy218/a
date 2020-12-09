.class public Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;
.super Ljava/lang/Object;
.source "DisplayWhiteBalanceFactory.java"


# static fields
.field private static final BRIGHTNESS_FILTER_TAG:Ljava/lang/String; = "AmbientBrightnessFilter"

.field private static final COLOR_TEMPERATURE_FILTER_TAG:Ljava/lang/String; = "AmbientColorTemperatureFilter"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;
    .registers 20

    .line 59
    move-object/from16 v0, p2

    .line 60
    invoke-static/range {p0 .. p2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->createBrightnessSensor(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    move-result-object v14

    .line 61
    invoke-static/range {p2 .. p2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->createBrightnessFilter(Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientFilter;

    move-result-object v2

    .line 62
    nop

    .line 63
    invoke-static/range {p0 .. p2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->createColorTemperatureSensor(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    move-result-object v15

    .line 64
    invoke-static/range {p2 .. p2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->createColorTemperatureFilter(Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientFilter;

    move-result-object v4

    .line 65
    invoke-static/range {p2 .. p2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->createThrottler(Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    move-result-object v5

    .line 66
    const v1, 0x107003a

    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v6

    .line 69
    const v1, 0x1070039

    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v7

    .line 72
    const v1, 0x10500a2

    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloat(Landroid/content/res/Resources;I)F

    move-result v8

    .line 75
    const v1, 0x1070037

    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v9

    .line 78
    const v1, 0x1070036

    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v10

    .line 81
    const v1, 0x10500a1

    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloat(Landroid/content/res/Resources;I)F

    move-result v11

    .line 84
    const v1, 0x1070030

    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v12

    .line 86
    const v1, 0x1070033

    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v13

    .line 88
    new-instance v3, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    move-object v0, v3

    move-object v1, v14

    move-object/from16 v16, v14

    move-object v14, v3

    move-object v3, v15

    invoke-direct/range {v0 .. v13}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;-><init>(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;Lcom/android/server/display/whitebalance/AmbientFilter;Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;Lcom/android/server/display/whitebalance/AmbientFilter;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;[F[FF[F[FF[F[F)V

    .line 95
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->setCallbacks(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor$Callbacks;)Z

    .line 96
    invoke-virtual {v15, v14}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->setCallbacks(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;)Z

    .line 97
    return-object v14
.end method

.method public static createBrightnessFilter(Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientFilter;
    .registers 4

    .line 119
    const v0, 0x10e0044

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 121
    const v1, 0x105009f

    invoke-static {p0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloat(Landroid/content/res/Resources;I)F

    move-result p0

    .line 123
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 124
    new-instance v1, Lcom/android/server/display/whitebalance/AmbientFilter$WeightedMovingAverageAmbientFilter;

    const-string v2, "AmbientBrightnessFilter"

    invoke-direct {v1, v2, v0, p0}, Lcom/android/server/display/whitebalance/AmbientFilter$WeightedMovingAverageAmbientFilter;-><init>(Ljava/lang/String;IF)V

    return-object v1

    .line 127
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "missing configurations: expected config_displayWhiteBalanceBrightnessFilterIntercept"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createBrightnessSensor(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 109
    const v0, 0x10e0045

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 111
    new-instance v0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;-><init>(Landroid/os/Handler;Landroid/hardware/SensorManager;I)V

    return-object v0
.end method

.method private static createColorTemperatureFilter(Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientFilter;
    .registers 4

    .line 147
    const v0, 0x10e0047

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 150
    const v1, 0x10500a0

    invoke-static {p0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloat(Landroid/content/res/Resources;I)F

    move-result p0

    .line 153
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 154
    new-instance v1, Lcom/android/server/display/whitebalance/AmbientFilter$WeightedMovingAverageAmbientFilter;

    const-string v2, "AmbientColorTemperatureFilter"

    invoke-direct {v1, v2, v0, p0}, Lcom/android/server/display/whitebalance/AmbientFilter$WeightedMovingAverageAmbientFilter;-><init>(Ljava/lang/String;IF)V

    return-object v1

    .line 157
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "missing configurations: expected config_displayWhiteBalanceColorTemperatureFilterIntercept"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createColorTemperatureSensor(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 137
    const v0, 0x1040170

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 140
    const v1, 0x10e004a

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 143
    new-instance v1, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;-><init>(Landroid/os/Handler;Landroid/hardware/SensorManager;Ljava/lang/String;I)V

    return-object v1
.end method

.method private static createThrottler(Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;
    .registers 8

    .line 162
    const v0, 0x10e004b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 164
    const v0, 0x10e004c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 166
    const v0, 0x1070031

    invoke-static {p0, v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v4

    .line 168
    const v0, 0x1070038

    invoke-static {p0, v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v5

    .line 170
    const v0, 0x1070032

    invoke-static {p0, v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v6

    .line 172
    new-instance p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;-><init>(II[F[F[F)V

    return-object p0
.end method

.method private static getFloat(Landroid/content/res/Resources;I)F
    .registers 4

    .line 177
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 178
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 179
    iget p0, v0, Landroid/util/TypedValue;->type:I

    const/4 p1, 0x4

    if-eq p0, p1, :cond_11

    .line 180
    const/high16 p0, 0x7fc00000  # Float.NaN

    return p0

    .line 182
    :cond_11
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    return p0
.end method

.method private static getFloatArray(Landroid/content/res/Resources;I)[F
    .registers 5

    .line 186
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 188
    :try_start_4
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result p1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_37

    const/4 v0, 0x0

    if-nez p1, :cond_10

    .line 189
    nop

    .line 200
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 189
    return-object v0

    .line 191
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result p1

    new-array p1, p1, [F

    .line 192
    const/4 v1, 0x0

    :goto_17
    array-length v2, p1

    if-ge v1, v2, :cond_32

    .line 193
    const/high16 v2, 0x7fc00000  # Float.NaN

    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    aput v2, p1, v1

    .line 194
    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_37

    if-eqz v2, :cond_2f

    .line 195
    nop

    .line 200
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 195
    return-object v0

    .line 192
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 198
    :cond_32
    nop

    .line 200
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 198
    return-object p1

    .line 200
    :catchall_37
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method
