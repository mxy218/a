.class Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;
.super Ljava/lang/Object;
.source "RotationHelper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/RotationHelper$AudioOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SensorEventListenerImpl"
.end annotation


# static fields
.field private static final ACCELERATION_TOLERANCE:F = 4.0f

.field private static final ACCELEROMETER_DATA_X:I = 0x0

.field private static final ACCELEROMETER_DATA_Y:I = 0x1

.field private static final ACCELEROMETER_DATA_Z:I = 0x2

.field private static final ADJACENT_ORIENTATION_ANGLE_GAP:I = 0x2d

.field private static final FILTER_TIME_CONSTANT_MS:F = 200.0f

.field private static final FLAT_ANGLE:F = 80.0f

.field private static final FLAT_TIME_NANOS:J = 0x3b9aca00L

.field private static final LOG:Z = false

.field private static final MAX_ACCELERATION_MAGNITUDE:F = 13.80665f

.field private static final MAX_FILTER_DELTA_TIME_NANOS:J = 0x3b9aca00L

.field private static final MAX_TILT:I = 0x50

.field private static final MIN_ACCELERATION_MAGNITUDE:F = 5.80665f

.field private static final NANOS_PER_MS:J = 0xf4240L

.field private static final NEAR_ZERO_MAGNITUDE:F = 1.0f

.field private static final PROPOSAL_MIN_TIME_SINCE_ACCELERATION_ENDED_NANOS:J = 0x1dcd6500L

.field private static final PROPOSAL_MIN_TIME_SINCE_FLAT_ENDED_NANOS:J = 0x1dcd6500L

.field private static final PROPOSAL_MIN_TIME_SINCE_SWING_ENDED_NANOS:J = 0x11e1a300L

.field private static final PROPOSAL_MIN_TIME_SINCE_TOUCH_END_NANOS:J = 0x1dcd6500L

.field private static final PROPOSAL_SETTLE_TIME_NANOS:J = 0x2625a00L

.field private static final RADIANS_TO_DEGREES:F = 57.29578f

.field private static final SWING_AWAY_ANGLE_DELTA:F = 20.0f

.field private static final SWING_TIME_NANOS:J = 0x11e1a300L

.field private static final TILT_HISTORY_SIZE:I = 0xc8

.field private static final TILT_OVERHEAD_ENTER:I = -0x28

.field private static final TILT_OVERHEAD_EXIT:I = -0xf


# instance fields
.field private mAccelerating:Z

.field private mAccelerationTimestampNanos:J

.field private mFlat:Z

.field private mFlatTimestampNanos:J

.field private mLastFilteredTimestampNanos:J

.field private mLastFilteredX:F

.field private mLastFilteredY:F

.field private mLastFilteredZ:F

.field private mOverhead:Z

.field private mPredictedRotation:I

.field private mPredictedRotationTimestampNanos:J

.field private mProposedRotation:I

.field private mSwingTimestampNanos:J

.field private mSwinging:Z

.field private mTiltHistory:[F

.field private mTiltHistoryIndex:I

.field private mTiltHistoryTimestampNanos:[J

.field private final mTiltToleranceConfig:[[I

.field private mTouchEndedTimestampNanos:J

.field private mTouched:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"  # Landroid/content/Context;

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    const/4 v0, 0x4

    new-array v1, v0, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_90

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_98

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_a0

    aput-object v3, v1, v2

    new-array v2, v2, [I

    fill-array-data v2, :array_a8

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mTiltToleranceConfig:[[I

    .line 315
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mTouchEndedTimestampNanos:J

    .line 319
    const/16 v1, 0xc8

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    .line 320
    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    .line 324
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 326
    .local v1, "tiltTolerance":[I
    array-length v2, v1

    const-string v3, "AudioService.RotationHelper"

    const/16 v6, 0x8

    if-ne v2, v6, :cond_89

    .line 327
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_49
    if-ge v2, v0, :cond_88

    .line 328
    mul-int/lit8 v6, v2, 0x2

    aget v6, v1, v6

    .line 329
    .local v6, "min":I
    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v7, v5

    aget v7, v1, v7

    .line 330
    .local v7, "max":I
    const/16 v8, -0x5a

    if-lt v6, v8, :cond_69

    if-gt v6, v7, :cond_69

    const/16 v8, 0x5a

    if-gt v7, v8, :cond_69

    .line 331
    iget-object v8, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mTiltToleranceConfig:[[I

    aget-object v9, v8, v2

    aput v6, v9, v4

    .line 332
    aget-object v8, v8, v2

    aput v7, v8, v5

    goto :goto_85

    .line 334
    :cond_69
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "config_autoRotationTiltTolerance contains invalid range: min="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", max="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .end local v6  # "min":I
    .end local v7  # "max":I
    :goto_85
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .end local v2  # "i":I
    :cond_88
    goto :goto_8e

    .line 339
    :cond_89
    const-string v0, "config_autoRotationTiltTolerance should have exactly 8 elements"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :goto_8e
    return-void

    nop

    :array_90
    .array-data 4
        -0x19
        0x46
    .end array-data

    :array_98
    .array-data 4
        -0x19
        0x41
    .end array-data

    :array_a0
    .array-data 4
        -0x19
        0x3c
    .end array-data

    :array_a8
    .array-data 4
        -0x19
        0x41
    .end array-data
.end method

.method private addTiltHistoryEntryLocked(JF)V
    .registers 8
    .param p1, "now"  # J
    .param p3, "tilt"  # F

    .line 566
    iget-object v0, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    iget v1, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    aput p3, v0, v1

    .line 567
    iget-object v0, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    aput-wide p1, v0, v1

    .line 568
    add-int/lit8 v1, v1, 0x1

    rem-int/lit16 v1, v1, 0xc8

    iput v1, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    .line 569
    iget v1, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    const-wide/high16 v2, -0x8000000000000000L

    aput-wide v2, v0, v1

    .line 570
    return-void
.end method

.method private clearPredictedRotationLocked()V
    .registers 3

    .line 544
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    .line 545
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    .line 546
    return-void
.end method

.method private clearTiltHistoryLocked()V
    .registers 5

    .line 561
    iget-object v0, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    const/4 v1, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    aput-wide v2, v0, v1

    .line 562
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    .line 563
    return-void
.end method

.method private getLastTiltLocked()F
    .registers 3

    .line 602
    iget v0, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    invoke-direct {p0, v0}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->nextTiltHistoryIndexLocked(I)I

    move-result v0

    .line 603
    .local v0, "index":I
    if-ltz v0, :cond_d

    iget-object v1, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    aget v1, v1, v0

    goto :goto_f

    :cond_d
    const/high16 v1, 0x7fc00000  # Float.NaN

    :goto_f
    return v1
.end method

.method private isAcceleratingLocked(F)Z
    .registers 3
    .param p1, "magnitude"  # F

    .line 556
    const v0, 0x40b9d014

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_11

    const v0, 0x415ce80a

    cmpl-float v0, p1, v0

    if-lez v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method private isFlatLocked(J)Z
    .registers 8
    .param p1, "now"  # J

    .line 573
    iget v0, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    .local v0, "i":I
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->nextTiltHistoryIndexLocked(I)I

    move-result v1

    move v0, v1

    if-ltz v1, :cond_22

    .line 574
    iget-object v1, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    aget v1, v1, v0

    const/high16 v2, 0x42a00000  # 80.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_14

    .line 575
    goto :goto_22

    .line 577
    :cond_14
    iget-object v1, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    aget-wide v1, v1, v0

    const-wide/32 v3, 0x3b9aca00

    add-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-gtz v1, :cond_2

    .line 578
    const/4 v1, 0x1

    return v1

    .line 581
    .end local v0  # "i":I
    :cond_22
    :goto_22
    const/4 v0, 0x0

    return v0
.end method

.method private isOrientationAngleAcceptableLocked(II)Z
    .registers 8
    .param p1, "rotation"  # I
    .param p2, "orientationAngle"  # I

    .line 485
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->access$500()I

    move-result v0

    .line 486
    .local v0, "currentRotation":I
    if-ltz v0, :cond_3b

    .line 487
    const/16 v1, 0x2d

    const/4 v2, 0x0

    if-eq p1, v0, :cond_11

    add-int/lit8 v3, v0, 0x1

    rem-int/lit8 v3, v3, 0x4

    if-ne p1, v3, :cond_24

    .line 489
    :cond_11
    mul-int/lit8 v3, p1, 0x5a

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x16

    .line 491
    .local v3, "lowerBound":I
    if-nez p1, :cond_21

    .line 492
    const/16 v4, 0x13b

    if-lt p2, v4, :cond_24

    add-int/lit16 v4, v3, 0x168

    if-ge p2, v4, :cond_24

    .line 493
    return v2

    .line 496
    :cond_21
    if-ge p2, v3, :cond_24

    .line 497
    return v2

    .line 501
    .end local v3  # "lowerBound":I
    :cond_24
    if-eq p1, v0, :cond_2c

    add-int/lit8 v3, v0, 0x3

    rem-int/lit8 v3, v3, 0x4

    if-ne p1, v3, :cond_3b

    .line 503
    :cond_2c
    mul-int/lit8 v3, p1, 0x5a

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x16

    .line 505
    .local v3, "upperBound":I
    if-nez p1, :cond_38

    .line 506
    if-gt p2, v1, :cond_3b

    if-le p2, v3, :cond_3b

    .line 507
    return v2

    .line 510
    :cond_38
    if-le p2, v3, :cond_3b

    .line 511
    return v2

    .line 516
    .end local v3  # "upperBound":I
    :cond_3b
    const/4 v1, 0x1

    return v1
.end method

.method private isPredictedRotationAcceptableLocked(J)Z
    .registers 11
    .param p1, "now"  # J

    .line 519
    iget-wide v0, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    const-wide/32 v2, 0x2625a00

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_c

    .line 520
    return v1

    .line 523
    :cond_c
    iget-wide v2, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mFlatTimestampNanos:J

    const-wide/32 v4, 0x1dcd6500

    add-long/2addr v2, v4

    cmp-long v0, p1, v2

    if-gez v0, :cond_17

    .line 524
    return v1

    .line 527
    :cond_17
    iget-wide v2, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mSwingTimestampNanos:J

    const-wide/32 v6, 0x11e1a300

    add-long/2addr v2, v6

    cmp-long v0, p1, v2

    if-gez v0, :cond_22

    .line 528
    return v1

    .line 531
    :cond_22
    iget-wide v2, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mAccelerationTimestampNanos:J

    add-long/2addr v2, v4

    cmp-long v0, p1, v2

    if-gez v0, :cond_2a

    .line 533
    return v1

    .line 536
    :cond_2a
    iget-boolean v0, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mTouched:Z

    if-nez v0, :cond_38

    iget-wide v2, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mTouchEndedTimestampNanos:J

    add-long/2addr v2, v4

    cmp-long v0, p1, v2

    if-gez v0, :cond_36

    goto :goto_38

    .line 540
    :cond_36
    const/4 v0, 0x1

    return v0

    .line 538
    :cond_38
    :goto_38
    return v1
.end method

.method private isSwingingLocked(JF)Z
    .registers 9
    .param p1, "now"  # J
    .param p3, "tilt"  # F

    .line 585
    iget v0, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    .local v0, "i":I
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->nextTiltHistoryIndexLocked(I)I

    move-result v1

    move v0, v1

    if-ltz v1, :cond_23

    .line 586
    iget-object v1, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    aget-wide v1, v1, v0

    const-wide/32 v3, 0x11e1a300

    add-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-gez v1, :cond_16

    .line 587
    goto :goto_23

    .line 589
    :cond_16
    iget-object v1, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    aget v1, v1, v0

    const/high16 v2, 0x41a00000  # 20.0f

    add-float/2addr v1, v2

    cmpg-float v1, v1, p3

    if-gtz v1, :cond_2

    .line 590
    const/4 v1, 0x1

    return v1

    .line 593
    .end local v0  # "i":I
    :cond_23
    :goto_23
    const/4 v0, 0x0

    return v0
.end method

.method private isTiltAngleAcceptableLocked(II)Z
    .registers 7
    .param p1, "rotation"  # I
    .param p2, "tiltAngle"  # I

    .line 481
    iget-object v0, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mTiltToleranceConfig:[[I

    aget-object v1, v0, p1

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v3, 0x1

    if-lt p2, v1, :cond_11

    aget-object v0, v0, p1

    aget v0, v0, v3

    if-gt p2, v0, :cond_11

    move v2, v3

    :cond_11
    return v2
.end method

.method private nextTiltHistoryIndexLocked(I)I
    .registers 7
    .param p1, "index"  # I

    .line 597
    if-nez p1, :cond_5

    const/16 v0, 0xc8

    goto :goto_6

    :cond_5
    move v0, p1

    :goto_6
    add-int/lit8 v0, v0, -0x1

    .line 598
    .end local p1  # "index":I
    .local v0, "index":I
    iget-object p1, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    aget-wide v1, p1, v0

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long p1, v1, v3

    if-eqz p1, :cond_14

    move p1, v0

    goto :goto_15

    :cond_14
    const/4 p1, -0x1

    :goto_15
    return p1
.end method

.method private remainingMS(JJ)F
    .registers 7
    .param p1, "now"  # J
    .param p3, "until"  # J

    .line 607
    cmp-long v0, p1, p3

    if-ltz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_d

    :cond_6
    sub-long v0, p3, p1

    long-to-float v0, v0

    const v1, 0x358637bd  # 1.0E-6f

    mul-float/2addr v0, v1

    :goto_d
    return v0
.end method

.method private updatePredictedRotationLocked(JI)V
    .registers 5
    .param p1, "now"  # J
    .param p3, "rotation"  # I

    .line 549
    iget v0, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    if-eq v0, p3, :cond_8

    .line 550
    iput p3, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    .line 551
    iput-wide p1, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    .line 553
    :cond_8
    return-void
.end method


# virtual methods
.method public getProposedRotationLocked()I
    .registers 2

    .line 344
    iget v0, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"  # Landroid/hardware/Sensor;
    .param p2, "accuracy"  # I

    .line 349
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 25
    .param p1, "event"  # Landroid/hardware/SensorEvent;

    .line 356
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->access$800()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 357
    :try_start_9
    iget-object v0, v2, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v0, v0, v4

    .line 358
    .local v0, "x":F
    iget-object v5, v2, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    .line 359
    .local v5, "y":F
    iget-object v7, v2, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    .line 365
    .local v7, "z":F
    iget-wide v8, v2, Landroid/hardware/SensorEvent;->timestamp:J

    .line 366
    .local v8, "now":J
    iget-wide v10, v1, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mLastFilteredTimestampNanos:J

    .line 367
    .local v10, "then":J
    sub-long v12, v8, v10

    long-to-float v12, v12

    const v13, 0x358637bd  # 1.0E-6f

    mul-float/2addr v12, v13

    .line 369
    .local v12, "timeDeltaMS":F
    cmp-long v13, v8, v10

    if-ltz v13, :cond_5f

    const-wide/32 v13, 0x3b9aca00

    add-long/2addr v13, v10

    cmp-long v13, v8, v13

    if-gtz v13, :cond_5f

    const/4 v13, 0x0

    cmpl-float v14, v0, v13

    if-nez v14, :cond_3d

    cmpl-float v14, v5, v13

    if-nez v14, :cond_3d

    cmpl-float v13, v7, v13

    if-nez v13, :cond_3d

    goto :goto_5f

    .line 374
    :cond_3d
    const/high16 v13, 0x43480000  # 200.0f

    add-float/2addr v13, v12

    div-float v13, v12, v13

    .line 375
    .local v13, "alpha":F
    iget v14, v1, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    sub-float v14, v0, v14

    mul-float/2addr v14, v13

    iget v15, v1, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    add-float v0, v14, v15

    .line 376
    iget v14, v1, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    sub-float v14, v5, v14

    mul-float/2addr v14, v13

    iget v15, v1, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    add-float v5, v14, v15

    .line 377
    iget v14, v1, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    sub-float v14, v7, v14

    mul-float/2addr v14, v13

    iget v15, v1, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    add-float v7, v14, v15

    .line 378
    const/4 v13, 0x0

    .local v13, "skipSample":Z
    goto :goto_63

    .line 371
    .end local v13  # "skipSample":Z
    :cond_5f
    :goto_5f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->resetLocked()V

    .line 372
    const/4 v13, 0x1

    .line 380
    .restart local v13  # "skipSample":Z
    :goto_63
    iput-wide v8, v1, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mLastFilteredTimestampNanos:J

    .line 381
    iput v0, v1, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    .line 382
    iput v5, v1, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    .line 383
    iput v7, v1, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    .line 385
    const/4 v14, 0x0

    .line 386
    .local v14, "isAccelerating":Z
    const/4 v15, 0x0

    .line 387
    .local v15, "isFlat":Z
    const/16 v16, 0x0

    .line 388
    .local v16, "isSwinging":Z
    if-nez v13, :cond_126

    .line 389
    mul-float v17, v0, v0

    mul-float v18, v5, v5

    add-float v17, v17, v18

    mul-float v18, v7, v7

    add-float v4, v17, v18

    move/from16 v18, v7

    .end local v7  # "z":F
    .local v18, "z":F
    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v4, v6

    .line 390
    .local v4, "magnitude":F
    const/high16 v6, 0x3f800000  # 1.0f

    cmpg-float v6, v4, v6

    if-gez v6, :cond_92

    .line 391
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->clearPredictedRotationLocked()V

    move-wide/from16 v21, v10

    move v2, v12

    move v7, v13

    goto/16 :goto_12c

    .line 393
    :cond_92
    invoke-direct {v1, v4}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->isAcceleratingLocked(F)Z

    move-result v6

    if-eqz v6, :cond_9b

    .line 394
    const/4 v14, 0x1

    .line 395
    iput-wide v8, v1, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mAccelerationTimestampNanos:J

    .line 397
    :cond_9b
    div-float v7, v18, v4

    float-to-double v6, v7

    .line 398
    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    const-wide v19, 0x404ca5dc20000000L  # 57.295780181884766

    mul-double v6, v6, v19

    .line 397
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    .line 399
    .local v6, "tiltAngle":I
    int-to-float v7, v6

    invoke-direct {v1, v8, v9, v7}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->addTiltHistoryEntryLocked(JF)V

    .line 401
    invoke-direct {v1, v8, v9}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->isFlatLocked(J)Z

    move-result v7

    if-eqz v7, :cond_bb

    .line 402
    const/4 v15, 0x1

    .line 403
    iput-wide v8, v1, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mFlatTimestampNanos:J

    .line 405
    :cond_bb
    int-to-float v7, v6

    invoke-direct {v1, v8, v9, v7}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->isSwingingLocked(JF)Z

    move-result v7

    if-eqz v7, :cond_c6

    .line 406
    const/16 v16, 0x1

    .line 407
    iput-wide v8, v1, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mSwingTimestampNanos:J

    .line 410
    :cond_c6
    const/16 v7, -0x28

    if-gt v6, v7, :cond_ce

    .line 411
    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mOverhead:Z

    goto :goto_d5

    .line 412
    :cond_ce
    const/16 v7, -0xf

    if-lt v6, v7, :cond_d5

    .line 413
    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mOverhead:Z

    .line 415
    :cond_d5
    :goto_d5
    iget-boolean v7, v1, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mOverhead:Z

    if-eqz v7, :cond_e1

    .line 416
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->clearPredictedRotationLocked()V

    move-wide/from16 v21, v10

    move v2, v12

    move v7, v13

    goto :goto_123

    .line 417
    :cond_e1
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/16 v2, 0x50

    if-le v7, v2, :cond_f1

    .line 418
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->clearPredictedRotationLocked()V

    move-wide/from16 v21, v10

    move v2, v12

    move v7, v13

    goto :goto_123

    .line 420
    :cond_f1
    neg-float v2, v0

    move-wide/from16 v21, v10

    .end local v10  # "then":J
    .local v21, "then":J
    float-to-double v10, v2

    move v2, v12

    move v7, v13

    .end local v12  # "timeDeltaMS":F
    .end local v13  # "skipSample":Z
    .local v2, "timeDeltaMS":F
    .local v7, "skipSample":Z
    float-to-double v12, v5

    .line 421
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    neg-double v10, v10

    mul-double v10, v10, v19

    .line 420
    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    .line 422
    .local v10, "orientationAngle":I
    if-gez v10, :cond_108

    .line 423
    add-int/lit16 v10, v10, 0x168

    .line 425
    :cond_108
    add-int/lit8 v11, v10, 0x2d

    div-int/lit8 v11, v11, 0x5a

    .line 426
    .local v11, "nearestRotation":I
    const/4 v12, 0x4

    if-ne v11, v12, :cond_110

    .line 427
    const/4 v11, 0x0

    .line 430
    :cond_110
    invoke-direct {v1, v11, v6}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->isTiltAngleAcceptableLocked(II)Z

    move-result v12

    if-eqz v12, :cond_120

    .line 431
    invoke-direct {v1, v11, v10}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->isOrientationAngleAcceptableLocked(II)Z

    move-result v12

    if-eqz v12, :cond_120

    .line 433
    invoke-direct {v1, v8, v9, v11}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->updatePredictedRotationLocked(JI)V

    goto :goto_123

    .line 435
    :cond_120
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->clearPredictedRotationLocked()V

    .line 440
    .end local v2  # "timeDeltaMS":F
    .end local v4  # "magnitude":F
    .end local v6  # "tiltAngle":I
    .end local v7  # "skipSample":Z
    .end local v11  # "nearestRotation":I
    .end local v21  # "then":J
    .local v10, "then":J
    .restart local v12  # "timeDeltaMS":F
    .restart local v13  # "skipSample":Z
    :goto_123
    move/from16 v4, v16

    .end local v10  # "then":J
    .end local v12  # "timeDeltaMS":F
    .end local v13  # "skipSample":Z
    .restart local v2  # "timeDeltaMS":F
    .restart local v7  # "skipSample":Z
    .restart local v21  # "then":J
    goto :goto_12e

    .line 388
    .end local v2  # "timeDeltaMS":F
    .end local v18  # "z":F
    .end local v21  # "then":J
    .local v7, "z":F
    .restart local v10  # "then":J
    .restart local v12  # "timeDeltaMS":F
    .restart local v13  # "skipSample":Z
    :cond_126
    move/from16 v18, v7

    move-wide/from16 v21, v10

    move v2, v12

    move v7, v13

    .line 440
    .end local v10  # "then":J
    .end local v12  # "timeDeltaMS":F
    .end local v13  # "skipSample":Z
    .restart local v2  # "timeDeltaMS":F
    .local v7, "skipSample":Z
    .restart local v18  # "z":F
    .restart local v21  # "then":J
    :goto_12c
    move/from16 v4, v16

    .end local v16  # "isSwinging":Z
    .local v4, "isSwinging":Z
    :goto_12e
    iput-boolean v15, v1, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mFlat:Z

    .line 441
    iput-boolean v4, v1, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mSwinging:Z

    .line 442
    iput-boolean v14, v1, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mAccelerating:Z

    .line 445
    iget v6, v1, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    .line 446
    .local v6, "oldProposedRotation":I
    iget v10, v1, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    if-ltz v10, :cond_140

    invoke-direct {v1, v8, v9}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->isPredictedRotationAcceptableLocked(J)Z

    move-result v10

    if-eqz v10, :cond_144

    .line 447
    :cond_140
    iget v10, v1, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    iput v10, v1, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    .line 449
    :cond_144
    iget v10, v1, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    move v0, v10

    .line 450
    .end local v2  # "timeDeltaMS":F
    .end local v4  # "isSwinging":Z
    .end local v5  # "y":F
    .end local v7  # "skipSample":Z
    .end local v8  # "now":J
    .end local v14  # "isAccelerating":Z
    .end local v15  # "isFlat":Z
    .end local v18  # "z":F
    .end local v21  # "then":J
    .local v0, "proposedRotation":I
    monitor-exit v3
    :try_end_148
    .catchall {:try_start_9 .. :try_end_148} :catchall_150

    .line 453
    if-eq v0, v6, :cond_14f

    if-ltz v0, :cond_14f

    .line 454
    invoke-static {v0}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->onProposedRotationChanged(I)V

    .line 456
    :cond_14f
    return-void

    .line 450
    .end local v0  # "proposedRotation":I
    .end local v6  # "oldProposedRotation":I
    :catchall_150
    move-exception v0

    :try_start_151
    monitor-exit v3
    :try_end_152
    .catchall {:try_start_151 .. :try_end_152} :catchall_150

    throw v0
.end method

.method public onTouchEndLocked(J)V
    .registers 4
    .param p1, "whenElapsedNanos"  # J

    .line 463
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mTouched:Z

    .line 464
    iput-wide p1, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mTouchEndedTimestampNanos:J

    .line 465
    return-void
.end method

.method public onTouchStartLocked()V
    .registers 2

    .line 459
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mTouched:Z

    .line 460
    return-void
.end method

.method public resetLocked()V
    .registers 4

    .line 468
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mLastFilteredTimestampNanos:J

    .line 469
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    .line 470
    iput-wide v0, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mFlatTimestampNanos:J

    .line 471
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mFlat:Z

    .line 472
    iput-wide v0, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mSwingTimestampNanos:J

    .line 473
    iput-boolean v2, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mSwinging:Z

    .line 474
    iput-wide v0, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mAccelerationTimestampNanos:J

    .line 475
    iput-boolean v2, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mAccelerating:Z

    .line 476
    iput-boolean v2, p0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->mOverhead:Z

    .line 477
    invoke-direct {p0}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->clearPredictedRotationLocked()V

    .line 478
    invoke-direct {p0}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener$SensorEventListenerImpl;->clearTiltHistoryLocked()V

    .line 479
    return-void
.end method
