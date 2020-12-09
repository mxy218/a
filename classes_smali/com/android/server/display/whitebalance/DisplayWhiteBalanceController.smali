.class public Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;
.super Ljava/lang/Object;
.source "DisplayWhiteBalanceController.java"

# interfaces
.implements Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor$Callbacks;
.implements Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;
    }
.end annotation


# static fields
.field private static final HISTORY_SIZE:I = 0x32

.field protected static final TAG:Ljava/lang/String; = "DisplayWhiteBalanceController"


# instance fields
.field private mAmbientColorTemperature:F

.field private mAmbientColorTemperatureHistory:Lcom/android/server/display/utils/History;

.field private mAmbientColorTemperatureOverride:F

.field private mAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;

.field mBrightnessFilter:Lcom/android/server/display/whitebalance/AmbientFilter;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

.field private mCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

.field private mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

.field mColorTemperatureFilter:Lcom/android/server/display/whitebalance/AmbientFilter;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

.field private mEnabled:Z

.field private mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

.field private final mHighLightAmbientColorTemperature:F

.field private mLastAmbientColorTemperature:F

.field private mLatestAmbientBrightness:F

.field private mLatestAmbientColorTemperature:F

.field private mLatestHighLightBias:F

.field private mLatestLowLightBias:F

.field protected mLoggingEnabled:Z

.field private mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

.field private final mLowLightAmbientColorTemperature:F

.field mPendingAmbientColorTemperature:F
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;


# direct methods
.method public constructor <init>(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;Lcom/android/server/display/whitebalance/AmbientFilter;Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;Lcom/android/server/display/whitebalance/AmbientFilter;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;[F[FF[F[FF[F[F)V
    .registers 25

    .line 157
    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p9

    const-string v4, "DisplayWhiteBalanceController"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    invoke-direct/range {p0 .. p5}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->validateArguments(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;Lcom/android/server/display/whitebalance/AmbientFilter;Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;Lcom/android/server/display/whitebalance/AmbientFilter;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;)V

    .line 160
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    .line 161
    iput-boolean v5, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    .line 162
    const/4 v6, 0x0

    iput-object v6, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    .line 163
    move-object v0, p1

    iput-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    .line 164
    move-object v0, p2

    iput-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

    .line 165
    move-object v0, p3

    iput-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    .line 166
    move-object v0, p4

    iput-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

    .line 167
    move-object/from16 v0, p5

    iput-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    .line 168
    move/from16 v0, p8

    iput v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientColorTemperature:F

    .line 169
    move/from16 v0, p11

    iput v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientColorTemperature:F

    .line 170
    const/high16 v0, -0x40800000  # -1.0f

    iput v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    .line 171
    iput v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    .line 172
    iput v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLastAmbientColorTemperature:F

    .line 173
    new-instance v7, Lcom/android/server/display/utils/History;

    const/16 v8, 0x32

    invoke-direct {v7, v8}, Lcom/android/server/display/utils/History;-><init>(I)V

    iput-object v7, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureHistory:Lcom/android/server/display/utils/History;

    .line 174
    iput v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    .line 177
    :try_start_40
    new-instance v0, Landroid/util/Spline$LinearSpline;

    move-object/from16 v7, p7

    invoke-direct {v0, v2, v7}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    iput-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_49} :catch_4a

    .line 182
    goto :goto_52

    .line 179
    :catch_4a
    move-exception v0

    .line 180
    const-string v7, "failed to create low light ambient brightness to bias spline."

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    iput-object v6, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 183
    :goto_52
    iget-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    const/high16 v7, 0x3f800000  # 1.0f

    const/high16 v8, 0x7f800000  # Float.POSITIVE_INFINITY

    const/4 v9, 0x0

    if-eqz v0, :cond_74

    .line 184
    invoke-virtual {v0, v9}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result v0

    cmpl-float v0, v0, v9

    if-nez v0, :cond_6d

    iget-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 185
    invoke-virtual {v0, v8}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result v0

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_74

    .line 187
    :cond_6d
    const-string v0, "invalid low light ambient brightness to bias spline, bias must begin at 0.0 and end at 1.0."

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iput-object v6, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 194
    :cond_74
    :try_start_74
    new-instance v0, Landroid/util/Spline$LinearSpline;

    move-object/from16 v10, p10

    invoke-direct {v0, v3, v10}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    iput-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_7d} :catch_7e

    .line 199
    goto :goto_86

    .line 196
    :catch_7e
    move-exception v0

    .line 197
    const-string v10, "failed to create high light ambient brightness to bias spline."

    invoke-static {v4, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    iput-object v6, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 200
    :goto_86
    iget-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    if-eqz v0, :cond_a3

    .line 201
    invoke-virtual {v0, v9}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result v0

    cmpl-float v0, v0, v9

    if-nez v0, :cond_9c

    iget-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 202
    invoke-virtual {v0, v8}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result v0

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_a3

    .line 204
    :cond_9c
    const-string v0, "invalid high light ambient brightness to bias spline, bias must begin at 0.0 and end at 1.0."

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iput-object v6, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 210
    :cond_a3
    iget-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    if-eqz v0, :cond_bf

    iget-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    if-eqz v0, :cond_bf

    .line 212
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    aget v0, v2, v0

    aget v2, v3, v5

    cmpl-float v0, v0, v2

    if-lez v0, :cond_bf

    .line 214
    const-string v0, "invalid low light and high light ambient brightness to bias spline combination, defined domains must not intersect."

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iput-object v6, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 217
    iput-object v6, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 222
    :cond_bf
    :try_start_bf
    new-instance v0, Landroid/util/Spline$LinearSpline;

    move-object/from16 v2, p12

    move-object/from16 v3, p13

    invoke-direct {v0, v2, v3}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    iput-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_ca} :catch_cb

    .line 227
    goto :goto_d3

    .line 224
    :catch_cb
    move-exception v0

    .line 225
    const-string v2, "failed to create ambient to display color temperature spline."

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    iput-object v6, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;

    .line 229
    :goto_d3
    const-class v0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    iput-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 230
    return-void
.end method

.method private disable()Z
    .registers 4

    .line 492
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 493
    return v1

    .line 495
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    if-eqz v0, :cond_11

    .line 496
    const-string v0, "DisplayWhiteBalanceController"

    const-string v2, "disabling"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_11
    iput-boolean v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    .line 499
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    invoke-virtual {v0, v1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->setEnabled(Z)Z

    .line 500
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

    invoke-virtual {v0}, Lcom/android/server/display/whitebalance/AmbientFilter;->clear()V

    .line 501
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    invoke-virtual {v0, v1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->setEnabled(Z)Z

    .line 502
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

    invoke-virtual {v0}, Lcom/android/server/display/whitebalance/AmbientFilter;->clear()V

    .line 503
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    invoke-virtual {v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->clear()V

    .line 504
    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    .line 505
    iput v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    .line 506
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->resetDisplayWhiteBalanceColorTemperature()Z

    .line 507
    const/4 v0, 0x1

    return v0
.end method

.method private enable()Z
    .registers 3

    .line 479
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    if-eqz v0, :cond_6

    .line 480
    const/4 v0, 0x0

    return v0

    .line 482
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    if-eqz v0, :cond_11

    .line 483
    const-string v0, "DisplayWhiteBalanceController"

    const-string v1, "enabling"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    .line 486
    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    invoke-virtual {v1, v0}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->setEnabled(Z)Z

    .line 487
    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    invoke-virtual {v1, v0}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->setEnabled(Z)Z

    .line 488
    return v0
.end method

.method private validateArguments(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;Lcom/android/server/display/whitebalance/AmbientFilter;Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;Lcom/android/server/display/whitebalance/AmbientFilter;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;)V
    .registers 7

    .line 469
    const-string v0, "brightnessSensor must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    const-string p1, "brightnessFilter must not be null"

    invoke-static {p2, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    const-string p1, "colorTemperatureSensor must not be null"

    invoke-static {p3, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    const-string p1, "colorTemperatureFilter must not be null"

    invoke-static {p4, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    const-string/jumbo p1, "throttler cannot be null"

    invoke-static {p5, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 312
    const-string v0, "DisplayWhiteBalanceController"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLoggingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCallbacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->dump(Ljava/io/PrintWriter;)V

    .line 317
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientFilter;->dump(Ljava/io/PrintWriter;)V

    .line 318
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->dump(Ljava/io/PrintWriter;)V

    .line 319
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientFilter;->dump(Ljava/io/PrintWriter;)V

    .line 320
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->dump(Ljava/io/PrintWriter;)V

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLowLightAmbientColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHighLightAmbientColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingAmbientColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastAmbientColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLastAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientColorTemperatureHistory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureHistory:Lcom/android/server/display/utils/History;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientColorTemperatureOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientToDisplayColorTemperatureSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLowLightAmbientBrightnessToBiasSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHighLightAmbientBrightnessToBiasSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public onAmbientBrightnessChanged(F)V
    .registers 5

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 339
    iget-object v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/server/display/whitebalance/AmbientFilter;->addValue(JF)Z

    .line 340
    invoke-virtual {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->updateAmbientColorTemperature()V

    .line 341
    return-void
.end method

.method public onAmbientColorTemperatureChanged(F)V
    .registers 5

    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 346
    iget-object v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/server/display/whitebalance/AmbientFilter;->addValue(JF)Z

    .line 347
    invoke-virtual {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->updateAmbientColorTemperature()V

    .line 348
    return-void
.end method

.method public setAmbientColorTemperatureOverride(F)Z
    .registers 3

    .line 298
    iget v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_8

    .line 299
    const/4 p1, 0x0

    return p1

    .line 301
    :cond_8
    iput p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    .line 302
    const/4 p1, 0x1

    return p1
.end method

.method public setCallbacks(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;)Z
    .registers 3

    .line 257
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    if-ne v0, p1, :cond_6

    .line 258
    const/4 p1, 0x0

    return p1

    .line 260
    :cond_6
    iput-object p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    .line 261
    const/4 p1, 0x1

    return p1
.end method

.method public setEnabled(Z)Z
    .registers 2

    .line 241
    if-eqz p1, :cond_7

    .line 242
    invoke-direct {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->enable()Z

    move-result p1

    return p1

    .line 244
    :cond_7
    invoke-direct {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->disable()Z

    move-result p1

    return p1
.end method

.method public setLoggingEnabled(Z)Z
    .registers 3

    .line 273
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_6

    .line 274
    const/4 p1, 0x0

    return p1

    .line 276
    :cond_6
    iput-boolean p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    .line 277
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->setLoggingEnabled(Z)Z

    .line 278
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientFilter;->setLoggingEnabled(Z)Z

    .line 279
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->setLoggingEnabled(Z)Z

    .line 280
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientFilter;->setLoggingEnabled(Z)Z

    .line 281
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->setLoggingEnabled(Z)Z

    .line 282
    const/4 p1, 0x1

    return p1
.end method

.method public updateAmbientColorTemperature()V
    .registers 8

    .line 354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 355
    iget-object v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/display/whitebalance/AmbientFilter;->getEstimate(J)F

    move-result v2

    .line 356
    iput v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestAmbientColorTemperature:F

    .line 358
    iget-object v3, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;

    const/high16 v4, -0x40800000  # -1.0f

    if-eqz v3, :cond_1b

    cmpl-float v5, v2, v4

    if-eqz v5, :cond_1b

    .line 359
    nop

    .line 360
    invoke-virtual {v3, v2}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result v2

    .line 363
    :cond_1b
    iget-object v3, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/display/whitebalance/AmbientFilter;->getEstimate(J)F

    move-result v0

    .line 364
    iput v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestAmbientBrightness:F

    .line 366
    cmpl-float v1, v2, v4

    const/high16 v3, 0x3f800000  # 1.0f

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    if-eqz v1, :cond_3a

    .line 368
    invoke-virtual {v1, v0}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result v1

    .line 369
    mul-float/2addr v2, v1

    sub-float v5, v3, v1

    iget v6, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientColorTemperature:F

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    .line 372
    iput v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestLowLightBias:F

    .line 374
    :cond_3a
    cmpl-float v1, v2, v4

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    if-eqz v1, :cond_4f

    .line 376
    invoke-virtual {v1, v0}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result v0

    .line 377
    sub-float/2addr v3, v0

    mul-float/2addr v3, v2

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientColorTemperature:F

    mul-float/2addr v1, v0

    add-float v2, v3, v1

    .line 380
    iput v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestHighLightBias:F

    .line 383
    :cond_4f
    iget v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    cmpl-float v0, v0, v4

    const-string v1, "DisplayWhiteBalanceController"

    if-eqz v0, :cond_7c

    .line 384
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    if-eqz v0, :cond_7a

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "override ambient color temperature: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " => "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_7a
    iget v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    .line 395
    :cond_7c
    cmpl-float v0, v2, v4

    if-eqz v0, :cond_ac

    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    invoke-virtual {v0, v2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->throttle(F)Z

    move-result v0

    if-eqz v0, :cond_89

    goto :goto_ac

    .line 399
    :cond_89
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    if-eqz v0, :cond_a2

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pending ambient color temperature: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_a2
    iput v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    .line 403
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    if-eqz v0, :cond_ab

    .line 404
    invoke-interface {v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;->updateWhiteBalance()V

    .line 406
    :cond_ab
    return-void

    .line 396
    :cond_ac
    :goto_ac
    return-void
.end method

.method public updateDisplayColorTemperature()V
    .registers 5

    .line 412
    nop

    .line 417
    iget v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    const/high16 v1, -0x40800000  # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_12

    iget v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_12

    .line 418
    iget v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLastAmbientColorTemperature:F

    goto :goto_13

    .line 423
    :cond_12
    move v0, v1

    :goto_13
    iget v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    cmpl-float v3, v2, v1

    if-eqz v3, :cond_20

    iget v3, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_20

    .line 425
    move v0, v2

    .line 428
    :cond_20
    cmpl-float v2, v0, v1

    if-nez v2, :cond_25

    .line 429
    return-void

    .line 432
    :cond_25
    iput v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    .line 433
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    const-string v2, "DisplayWhiteBalanceController"

    if-eqz v0, :cond_43

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ambient color temperature: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_43
    iput v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    .line 437
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureHistory:Lcom/android/server/display/utils/History;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Lcom/android/server/display/utils/History;->add(F)V

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display cct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " Latest ambient cct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " Latest ambient lux: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestAmbientBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " Latest low light bias: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestLowLightBias:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " Latest high light bias: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestHighLightBias:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->setDisplayWhiteBalanceColorTemperature(I)Z

    .line 445
    iget v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    iput v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLastAmbientColorTemperature:F

    .line 446
    return-void
.end method
