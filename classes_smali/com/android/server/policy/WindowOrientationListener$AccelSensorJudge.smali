.class final Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;
.super Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AccelSensorJudge"
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

.field private static final MAX_ACCELERATION_MAGNITUDE:F = 13.80665f

.field private static final MAX_FILTER_DELTA_TIME_NANOS:J = 0x3b9aca00L

.field private static final MAX_TILT:I = 0x50

.field private static final MIN_ACCELERATION_MAGNITUDE:F = 5.80665f

.field private static final NEAR_ZERO_MAGNITUDE:F = 1.0f

.field private static final PROPOSAL_MIN_TIME_SINCE_ACCELERATION_ENDED_NANOS:J = 0x1dcd6500L

.field private static final PROPOSAL_MIN_TIME_SINCE_FLAT_ENDED_NANOS:J = 0x1dcd6500L

.field private static final PROPOSAL_MIN_TIME_SINCE_SWING_ENDED_NANOS:J = 0x11e1a300L

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

.field final synthetic this$0:Lcom/android/server/policy/WindowOrientationListener;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/WindowOrientationListener;Landroid/content/Context;)V
    .registers 13
    .param p1, "this$0"  # Lcom/android/server/policy/WindowOrientationListener;
    .param p2, "context"  # Landroid/content/Context;

    .line 570
    iput-object p1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-direct {p0, p1}, Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;-><init>(Lcom/android/server/policy/WindowOrientationListener;)V

    .line 525
    const/4 v0, 0x4

    new-array v1, v0, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_92

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_9a

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_a2

    aput-object v3, v1, v2

    new-array v2, v2, [I

    fill-array-data v2, :array_aa

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    .line 558
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    .line 566
    const/16 v1, 0xc8

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    .line 567
    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    .line 572
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 574
    .local v1, "tiltTolerance":[I
    array-length v2, v1

    const-string v3, "WindowOrientationListener"

    const/16 v6, 0x8

    if-ne v2, v6, :cond_8b

    .line 575
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4b
    if-ge v2, v0, :cond_8a

    .line 576
    mul-int/lit8 v6, v2, 0x2

    aget v6, v1, v6

    .line 577
    .local v6, "min":I
    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v7, v5

    aget v7, v1, v7

    .line 578
    .local v7, "max":I
    const/16 v8, -0x5a

    if-lt v6, v8, :cond_6b

    if-gt v6, v7, :cond_6b

    const/16 v8, 0x5a

    if-gt v7, v8, :cond_6b

    .line 579
    iget-object v8, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    aget-object v9, v8, v2

    aput v6, v9, v4

    .line 580
    aget-object v8, v8, v2

    aput v7, v8, v5

    goto :goto_87

    .line 582
    :cond_6b
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

    invoke-static {v3, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    .end local v6  # "min":I
    .end local v7  # "max":I
    :goto_87
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .end local v2  # "i":I
    :cond_8a
    goto :goto_90

    .line 587
    :cond_8b
    const-string v0, "config_autoRotationTiltTolerance should have exactly 8 elements"

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :goto_90
    return-void

    nop

    :array_92
    .array-data 4
        -0x19
        0x46
    .end array-data

    :array_9a
    .array-data 4
        -0x19
        0x41
    .end array-data

    :array_a2
    .array-data 4
        -0x19
        0x3c
    .end array-data

    :array_aa
    .array-data 4
        -0x19
        0x41
    .end array-data
.end method

.method private addTiltHistoryEntryLocked(JF)V
    .registers 8
    .param p1, "now"  # J
    .param p3, "tilt"  # F

    .line 985
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    aput p3, v0, v1

    .line 986
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    aput-wide p1, v0, v1

    .line 987
    add-int/lit8 v1, v1, 0x1

    rem-int/lit16 v1, v1, 0xc8

    iput v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    .line 988
    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    const-wide/high16 v2, -0x8000000000000000L

    aput-wide v2, v0, v1

    .line 989
    return-void
.end method

.method private clearPredictedRotationLocked()V
    .registers 3

    .line 963
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    .line 964
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    .line 965
    return-void
.end method

.method private clearTiltHistoryLocked()V
    .registers 5

    .line 980
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    const/4 v1, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    aput-wide v2, v0, v1

    .line 981
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    .line 982
    return-void
.end method

.method private getLastTiltLocked()F
    .registers 3

    .line 1023
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    invoke-direct {p0, v0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->nextTiltHistoryIndexLocked(I)I

    move-result v0

    .line 1024
    .local v0, "index":I
    if-ltz v0, :cond_d

    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

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

    .line 975
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

    .line 992
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    .local v0, "i":I
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->nextTiltHistoryIndexLocked(I)I

    move-result v1

    move v0, v1

    if-ltz v1, :cond_22

    .line 993
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    aget v1, v1, v0

    const/high16 v2, 0x42a00000  # 80.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_14

    .line 994
    goto :goto_22

    .line 996
    :cond_14
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    aget-wide v1, v1, v0

    const-wide/32 v3, 0x3b9aca00

    add-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-gtz v1, :cond_2

    .line 998
    const/4 v1, 0x1

    return v1

    .line 1001
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

    .line 876
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-static {v0}, Lcom/android/server/policy/WindowOrientationListener;->access$200(Lcom/android/server/policy/WindowOrientationListener;)I

    move-result v0

    .line 877
    .local v0, "currentRotation":I
    if-ltz v0, :cond_3d

    .line 882
    const/16 v1, 0x2d

    const/4 v2, 0x0

    if-eq p1, v0, :cond_13

    add-int/lit8 v3, v0, 0x1

    rem-int/lit8 v3, v3, 0x4

    if-ne p1, v3, :cond_26

    .line 884
    :cond_13
    mul-int/lit8 v3, p1, 0x5a

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x16

    .line 886
    .local v3, "lowerBound":I
    if-nez p1, :cond_23

    .line 887
    const/16 v4, 0x13b

    if-lt p2, v4, :cond_26

    add-int/lit16 v4, v3, 0x168

    if-ge p2, v4, :cond_26

    .line 888
    return v2

    .line 891
    :cond_23
    if-ge p2, v3, :cond_26

    .line 892
    return v2

    .line 901
    .end local v3  # "lowerBound":I
    :cond_26
    if-eq p1, v0, :cond_2e

    add-int/lit8 v3, v0, 0x3

    rem-int/lit8 v3, v3, 0x4

    if-ne p1, v3, :cond_3d

    .line 903
    :cond_2e
    mul-int/lit8 v3, p1, 0x5a

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x16

    .line 905
    .local v3, "upperBound":I
    if-nez p1, :cond_3a

    .line 906
    if-gt p2, v1, :cond_3d

    if-le p2, v3, :cond_3d

    .line 907
    return v2

    .line 910
    :cond_3a
    if-le p2, v3, :cond_3d

    .line 911
    return v2

    .line 916
    .end local v3  # "upperBound":I
    :cond_3d
    const/4 v1, 0x1

    return v1
.end method

.method private isPredictedRotationAcceptableLocked(J)Z
    .registers 11
    .param p1, "now"  # J

    .line 925
    iget-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    const-wide/32 v2, 0x2625a00

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_c

    .line 926
    return v1

    .line 930
    :cond_c
    iget-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    const-wide/32 v4, 0x1dcd6500

    add-long/2addr v2, v4

    cmp-long v0, p1, v2

    if-gez v0, :cond_17

    .line 931
    return v1

    .line 936
    :cond_17
    iget-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    const-wide/32 v6, 0x11e1a300

    add-long/2addr v2, v6

    cmp-long v0, p1, v2

    if-gez v0, :cond_22

    .line 937
    return v1

    .line 941
    :cond_22
    iget-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    add-long/2addr v2, v4

    cmp-long v0, p1, v2

    if-gez v0, :cond_2a

    .line 943
    return v1

    .line 947
    :cond_2a
    iget-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    if-nez v0, :cond_47

    iget-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    add-long/2addr v2, v4

    cmp-long v0, p1, v2

    if-gez v0, :cond_36

    goto :goto_47

    .line 953
    :cond_36
    const-class v0, Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/FlymeWindowManagerInternal;->isLockOrientationForSensor()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 954
    return v1

    .line 959
    :cond_45
    const/4 v0, 0x1

    return v0

    .line 949
    :cond_47
    :goto_47
    return v1
.end method

.method private isSwingingLocked(JF)Z
    .registers 9
    .param p1, "now"  # J
    .param p3, "tilt"  # F

    .line 1005
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    .local v0, "i":I
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->nextTiltHistoryIndexLocked(I)I

    move-result v1

    move v0, v1

    if-ltz v1, :cond_23

    .line 1006
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    aget-wide v1, v1, v0

    const-wide/32 v3, 0x11e1a300

    add-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-gez v1, :cond_16

    .line 1007
    goto :goto_23

    .line 1009
    :cond_16
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    aget v1, v1, v0

    const/high16 v2, 0x41a00000  # 20.0f

    add-float/2addr v1, v2

    cmpg-float v1, v1, p3

    if-gtz v1, :cond_2

    .line 1011
    const/4 v1, 0x1

    return v1

    .line 1014
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

    .line 862
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

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

    .line 1018
    if-nez p1, :cond_5

    const/16 v0, 0xc8

    goto :goto_6

    :cond_5
    move v0, p1

    :goto_6
    add-int/lit8 v0, v0, -0x1

    .line 1019
    .end local p1  # "index":I
    .local v0, "index":I
    iget-object p1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

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

    .line 1028
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

    .line 968
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    if-eq v0, p3, :cond_8

    .line 969
    iput p3, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    .line 970
    iput-wide p1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    .line 972
    :cond_8
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 10
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AccelSensorJudge"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mProposedRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mPredictedRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mLastFilteredX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mLastFilteredY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mLastFilteredZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 605
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    sub-long/2addr v0, v2

    .line 606
    .local v0, "delta":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mLastFilteredTimestampNanos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-float v3, v0

    const v4, 0x358637bd  # 1.0E-6f

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms ago)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 608
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mTiltHistory={last: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->getLastTiltLocked()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 609
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mFlat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlat:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 610
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mSwinging="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwinging:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 611
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mAccelerating="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerating:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 612
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mOverhead="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 613
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mTouched="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 614
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mTiltToleranceConfig=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 615
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_195
    const/4 v3, 0x4

    const-string v4, "]"

    if-ge v2, v3, :cond_1c3

    .line 616
    const-string v3, ", "

    if-eqz v2, :cond_1a1

    .line 617
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 619
    :cond_1a1
    const-string v5, "["

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 620
    iget-object v5, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    aget-object v5, v5, v2

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 621
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 622
    iget-object v3, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    aget-object v3, v3, v2

    const/4 v5, 0x1

    aget v3, v3, v5

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 623
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 615
    add-int/lit8 v2, v2, 0x1

    goto :goto_195

    .line 625
    .end local v2  # "i":I
    :cond_1c3
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 626
    return-void
.end method

.method public getProposedRotationLocked()I
    .registers 2

    .line 593
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"  # Landroid/hardware/Sensor;
    .param p2, "accuracy"  # I

    .line 630
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 27
    .param p1, "event"  # Landroid/hardware/SensorEvent;

    .line 637
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-static {v0}, Lcom/android/server/policy/WindowOrientationListener;->access$000(Lcom/android/server/policy/WindowOrientationListener;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 641
    :try_start_b
    iget-object v0, v2, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v0, v0, v4

    .line 642
    .local v0, "x":F
    iget-object v5, v2, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    .line 643
    .local v5, "y":F
    iget-object v7, v2, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    .line 645
    .local v7, "z":F
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 646
    const-string v8, "WindowOrientationListener"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Raw acceleration vector: x="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", y="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", z="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", magnitude="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float v10, v0, v0

    mul-float v11, v5, v5

    add-float/2addr v10, v11

    mul-float v11, v7, v7

    add-float/2addr v10, v11

    float-to-double v10, v10

    .line 648
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 646
    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_5b
    iget-wide v8, v2, Landroid/hardware/SensorEvent;->timestamp:J

    .line 656
    .local v8, "now":J
    iget-wide v10, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    .line 657
    .local v10, "then":J
    sub-long v12, v8, v10

    long-to-float v12, v12

    const v13, 0x358637bd  # 1.0E-6f

    mul-float/2addr v12, v13

    .line 659
    .local v12, "timeDeltaMS":F
    cmp-long v14, v8, v10

    if-ltz v14, :cond_ec

    const-wide/32 v14, 0x3b9aca00

    add-long/2addr v14, v10

    cmp-long v14, v8, v14

    if-gtz v14, :cond_ec

    const/4 v14, 0x0

    cmpl-float v15, v0, v14

    if-nez v15, :cond_80

    cmpl-float v15, v5, v14

    if-nez v15, :cond_80

    cmpl-float v14, v7, v14

    if-nez v14, :cond_80

    goto :goto_ec

    .line 668
    :cond_80
    const/high16 v14, 0x43480000  # 200.0f

    add-float/2addr v14, v12

    div-float v14, v12, v14

    .line 669
    .local v14, "alpha":F
    iget v15, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredX:F

    sub-float v15, v0, v15

    mul-float/2addr v15, v14

    iget v13, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredX:F

    add-float v0, v15, v13

    .line 670
    iget v13, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredY:F

    sub-float v13, v5, v13

    mul-float/2addr v13, v14

    iget v15, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredY:F

    add-float v5, v13, v15

    .line 671
    iget v13, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredZ:F

    sub-float v13, v7, v13

    mul-float/2addr v13, v14

    iget v15, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredZ:F

    add-float v7, v13, v15

    .line 672
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v13

    if-eqz v13, :cond_e6

    .line 673
    const-string v13, "WindowOrientationListener"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Filtered acceleration vector: x="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", y="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", z="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", magnitude="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float v4, v0, v0

    mul-float v18, v5, v5

    add-float v4, v4, v18

    mul-float v18, v7, v7

    add-float v4, v4, v18

    move/from16 v19, v7

    .end local v7  # "z":F
    .local v19, "z":F
    float-to-double v6, v4

    .line 675
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 673
    invoke-static {v13, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e8

    .line 672
    .end local v19  # "z":F
    .restart local v7  # "z":F
    :cond_e6
    move/from16 v19, v7

    .line 677
    .end local v7  # "z":F
    .restart local v19  # "z":F
    :goto_e8
    const/4 v4, 0x0

    move/from16 v7, v19

    .end local v14  # "alpha":F
    .local v4, "skipSample":Z
    goto :goto_fe

    .line 662
    .end local v4  # "skipSample":Z
    .end local v19  # "z":F
    .restart local v7  # "z":F
    :cond_ec
    :goto_ec
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v4

    if-eqz v4, :cond_f9

    .line 663
    const-string v4, "WindowOrientationListener"

    const-string v6, "Resetting orientation listener."

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_f9
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->resetLocked(Z)V

    .line 666
    const/4 v4, 0x1

    .line 679
    .restart local v4  # "skipSample":Z
    :goto_fe
    iput-wide v8, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    .line 680
    iput v0, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredX:F

    .line 681
    iput v5, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredY:F

    .line 682
    iput v7, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredZ:F

    .line 684
    const/4 v6, 0x0

    .line 685
    .local v6, "isAccelerating":Z
    const/4 v13, 0x0

    .line 686
    .local v13, "isFlat":Z
    const/4 v14, 0x0

    .line 687
    .local v14, "isSwinging":Z
    if-nez v4, :cond_28e

    .line 689
    mul-float v15, v0, v0

    mul-float v19, v5, v5

    add-float v15, v15, v19

    mul-float v19, v7, v7

    add-float v15, v15, v19

    move-wide/from16 v19, v10

    .end local v10  # "then":J
    .local v19, "then":J
    float-to-double v10, v15

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    .line 690
    .local v10, "magnitude":F
    const/high16 v11, 0x3f800000  # 1.0f

    cmpg-float v11, v10, v11

    if-gez v11, :cond_13b

    .line 691
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v11

    if-eqz v11, :cond_130

    .line 692
    const-string v11, "WindowOrientationListener"

    const-string v15, "Ignoring sensor data, magnitude too close to zero."

    invoke-static {v11, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_130
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    move/from16 v18, v0

    move/from16 v22, v4

    move v0, v5

    move v15, v7

    goto/16 :goto_296

    .line 698
    :cond_13b
    invoke-direct {v1, v10}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->isAcceleratingLocked(F)Z

    move-result v11

    if-eqz v11, :cond_144

    .line 699
    const/4 v6, 0x1

    .line 700
    iput-wide v8, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    .line 709
    :cond_144
    div-float v11, v7, v10

    move/from16 v21, v6

    move v15, v7

    .end local v6  # "isAccelerating":Z
    .end local v7  # "z":F
    .local v15, "z":F
    .local v21, "isAccelerating":Z
    float-to-double v6, v11

    .line 710
    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    const-wide v22, 0x404ca5dc20000000L  # 57.295780181884766

    mul-double v6, v6, v22

    .line 709
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    .line 711
    .local v6, "tiltAngle":I
    int-to-float v7, v6

    invoke-direct {v1, v8, v9, v7}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->addTiltHistoryEntryLocked(JF)V

    .line 714
    invoke-direct {v1, v8, v9}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->isFlatLocked(J)Z

    move-result v7

    if-eqz v7, :cond_167

    .line 715
    const/4 v13, 0x1

    .line 716
    iput-wide v8, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    .line 718
    :cond_167
    int-to-float v7, v6

    invoke-direct {v1, v8, v9, v7}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->isSwingingLocked(JF)Z

    move-result v7

    if-eqz v7, :cond_171

    .line 719
    const/4 v14, 0x1

    .line 720
    iput-wide v8, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    .line 725
    :cond_171
    const/16 v7, -0x28

    if-gt v6, v7, :cond_179

    .line 726
    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    goto :goto_180

    .line 727
    :cond_179
    const/16 v7, -0xf

    if-lt v6, v7, :cond_180

    .line 728
    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    .line 730
    :cond_180
    :goto_180
    iget-boolean v7, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    if-eqz v7, :cond_1ad

    .line 731
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v7

    if-eqz v7, :cond_1a0

    .line 732
    const-string v7, "WindowOrientationListener"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring sensor data, device is overhead: tiltAngle="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_1a0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    move/from16 v18, v0

    move/from16 v22, v4

    move v0, v5

    move v2, v13

    move/from16 v17, v14

    goto/16 :goto_289

    .line 736
    :cond_1ad
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v7, 0x50

    if-le v2, v7, :cond_1de

    .line 737
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v2

    if-eqz v2, :cond_1d1

    .line 738
    const-string v2, "WindowOrientationListener"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignoring sensor data, tilt angle too high: tiltAngle="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_1d1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    move/from16 v18, v0

    move/from16 v22, v4

    move v0, v5

    move v2, v13

    move/from16 v17, v14

    goto/16 :goto_289

    .line 746
    :cond_1de
    neg-float v2, v0

    move v7, v10

    .end local v10  # "magnitude":F
    .local v7, "magnitude":F
    float-to-double v10, v2

    move v2, v13

    move/from16 v17, v14

    .end local v13  # "isFlat":Z
    .end local v14  # "isSwinging":Z
    .local v2, "isFlat":Z
    .local v17, "isSwinging":Z
    float-to-double v13, v5

    .line 747
    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    neg-double v10, v10

    mul-double v10, v10, v22

    .line 746
    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    .line 748
    .local v10, "orientationAngle":I
    if-gez v10, :cond_1f5

    .line 750
    add-int/lit16 v10, v10, 0x168

    .line 754
    :cond_1f5
    add-int/lit8 v11, v10, 0x2d

    div-int/lit8 v11, v11, 0x5a

    .line 755
    .local v11, "nearestRotation":I
    const/4 v13, 0x4

    if-ne v11, v13, :cond_1fd

    .line 756
    const/4 v11, 0x0

    .line 760
    :cond_1fd
    invoke-direct {v1, v11, v6}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->isTiltAngleAcceptableLocked(II)Z

    move-result v13

    if-eqz v13, :cond_25d

    .line 761
    invoke-direct {v1, v11, v10}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->isOrientationAngleAcceptableLocked(II)Z

    move-result v13

    if-eqz v13, :cond_257

    .line 763
    invoke-direct {v1, v8, v9, v11}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->updatePredictedRotationLocked(JI)V

    .line 764
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v13

    if-eqz v13, :cond_251

    .line 765
    const-string v13, "WindowOrientationListener"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v0

    .end local v0  # "x":F
    .local v18, "x":F
    const-string v0, "Predicted: tiltAngle="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", orientationAngle="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", predictedRotation="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", predictedRotationAgeMS="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v22, v4

    move v0, v5

    .end local v4  # "skipSample":Z
    .end local v5  # "y":F
    .local v0, "y":F
    .local v22, "skipSample":Z
    iget-wide v4, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    sub-long v4, v8, v4

    long-to-float v4, v4

    const v5, 0x358637bd  # 1.0E-6f

    mul-float/2addr v4, v5

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_289

    .line 764
    .end local v18  # "x":F
    .end local v22  # "skipSample":Z
    .local v0, "x":F
    .restart local v4  # "skipSample":Z
    .restart local v5  # "y":F
    :cond_251
    move/from16 v18, v0

    move/from16 v22, v4

    move v0, v5

    .end local v4  # "skipSample":Z
    .end local v5  # "y":F
    .local v0, "y":F
    .restart local v18  # "x":F
    .restart local v22  # "skipSample":Z
    goto :goto_289

    .line 761
    .end local v18  # "x":F
    .end local v22  # "skipSample":Z
    .local v0, "x":F
    .restart local v4  # "skipSample":Z
    .restart local v5  # "y":F
    :cond_257
    move/from16 v18, v0

    move/from16 v22, v4

    move v0, v5

    .end local v4  # "skipSample":Z
    .end local v5  # "y":F
    .local v0, "y":F
    .restart local v18  # "x":F
    .restart local v22  # "skipSample":Z
    goto :goto_262

    .line 760
    .end local v18  # "x":F
    .end local v22  # "skipSample":Z
    .local v0, "x":F
    .restart local v4  # "skipSample":Z
    .restart local v5  # "y":F
    :cond_25d
    move/from16 v18, v0

    move/from16 v22, v4

    move v0, v5

    .line 774
    .end local v4  # "skipSample":Z
    .end local v5  # "y":F
    .local v0, "y":F
    .restart local v18  # "x":F
    .restart local v22  # "skipSample":Z
    :goto_262
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v4

    if-eqz v4, :cond_286

    .line 775
    const-string v4, "WindowOrientationListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Ignoring sensor data, no predicted rotation: tiltAngle="

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", orientationAngle="

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :cond_286
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    .line 784
    .end local v2  # "isFlat":Z
    .end local v6  # "tiltAngle":I
    .end local v7  # "magnitude":F
    .end local v10  # "orientationAngle":I
    .end local v11  # "nearestRotation":I
    .end local v17  # "isSwinging":Z
    .end local v18  # "x":F
    .end local v22  # "skipSample":Z
    .local v0, "x":F
    .restart local v4  # "skipSample":Z
    .restart local v5  # "y":F
    .restart local v13  # "isFlat":Z
    .restart local v14  # "isSwinging":Z
    :goto_289
    move/from16 v14, v17

    move/from16 v6, v21

    .end local v4  # "skipSample":Z
    .end local v5  # "y":F
    .end local v13  # "isFlat":Z
    .end local v14  # "isSwinging":Z
    .local v0, "y":F
    .restart local v2  # "isFlat":Z
    .restart local v17  # "isSwinging":Z
    .restart local v18  # "x":F
    .restart local v22  # "skipSample":Z
    goto :goto_297

    .line 687
    .end local v2  # "isFlat":Z
    .end local v15  # "z":F
    .end local v17  # "isSwinging":Z
    .end local v18  # "x":F
    .end local v19  # "then":J
    .end local v21  # "isAccelerating":Z
    .end local v22  # "skipSample":Z
    .local v0, "x":F
    .restart local v4  # "skipSample":Z
    .restart local v5  # "y":F
    .local v6, "isAccelerating":Z
    .local v7, "z":F
    .local v10, "then":J
    .restart local v13  # "isFlat":Z
    .restart local v14  # "isSwinging":Z
    :cond_28e
    move/from16 v18, v0

    move/from16 v22, v4

    move v0, v5

    move v15, v7

    move-wide/from16 v19, v10

    .line 784
    .end local v4  # "skipSample":Z
    .end local v5  # "y":F
    .end local v7  # "z":F
    .end local v10  # "then":J
    .local v0, "y":F
    .restart local v15  # "z":F
    .restart local v18  # "x":F
    .restart local v19  # "then":J
    .restart local v22  # "skipSample":Z
    :goto_296
    move v2, v13

    .end local v13  # "isFlat":Z
    .restart local v2  # "isFlat":Z
    :goto_297
    iput-boolean v2, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlat:Z

    .line 785
    iput-boolean v14, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwinging:Z

    .line 786
    iput-boolean v6, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerating:Z

    .line 789
    iget v4, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    .line 790
    .local v4, "oldProposedRotation":I
    iget v5, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    if-ltz v5, :cond_2a9

    invoke-direct {v1, v8, v9}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->isPredictedRotationAcceptableLocked(J)Z

    move-result v5

    if-eqz v5, :cond_2ad

    .line 791
    :cond_2a9
    iget v5, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    iput v5, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    .line 793
    :cond_2ad
    iget v5, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    .line 796
    .local v5, "proposedRotation":I
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v7

    if-eqz v7, :cond_372

    .line 797
    const-string v7, "WindowOrientationListener"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Result: currentRotation="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-static {v11}, Lcom/android/server/policy/WindowOrientationListener;->access$200(Lcom/android/server/policy/WindowOrientationListener;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", proposedRotation="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", predictedRotation="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", timeDeltaMS="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", isAccelerating="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", isFlat="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", isSwinging="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", isOverhead="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", isTouched="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", timeUntilSettledMS="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v13, v12

    .end local v12  # "timeDeltaMS":F
    .local v13, "timeDeltaMS":F
    iget-wide v11, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    const-wide/32 v16, 0x2625a00

    add-long v11, v11, v16

    .line 806
    invoke-direct {v1, v8, v9, v11, v12}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", timeUntilAccelerationDelayExpiredMS="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    const-wide/32 v16, 0x1dcd6500

    add-long v11, v11, v16

    .line 808
    invoke-direct {v1, v8, v9, v11, v12}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", timeUntilFlatDelayExpiredMS="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    add-long v11, v11, v16

    .line 810
    invoke-direct {v1, v8, v9, v11, v12}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", timeUntilSwingDelayExpiredMS="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    const-wide/32 v23, 0x11e1a300

    add-long v11, v11, v23

    .line 812
    invoke-direct {v1, v8, v9, v11, v12}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", timeUntilTouchDelayExpiredMS="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    add-long v11, v11, v16

    .line 814
    invoke-direct {v1, v8, v9, v11, v12}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 797
    invoke-static {v7, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_373

    .line 796
    .end local v13  # "timeDeltaMS":F
    .restart local v12  # "timeDeltaMS":F
    :cond_372
    move v13, v12

    .line 817
    .end local v0  # "y":F
    .end local v2  # "isFlat":Z
    .end local v6  # "isAccelerating":Z
    .end local v8  # "now":J
    .end local v12  # "timeDeltaMS":F
    .end local v14  # "isSwinging":Z
    .end local v15  # "z":F
    .end local v18  # "x":F
    .end local v19  # "then":J
    .end local v22  # "skipSample":Z
    :goto_373
    monitor-exit v3
    :try_end_374
    .catchall {:try_start_b .. :try_end_374} :catchall_3a2

    .line 820
    if-eq v5, v4, :cond_3a1

    if-ltz v5, :cond_3a1

    .line 821
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v0

    if-eqz v0, :cond_39c

    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proposed rotation changed!  proposedRotation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", oldProposedRotation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowOrientationListener"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_39c
    iget-object v0, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-virtual {v0, v5}, Lcom/android/server/policy/WindowOrientationListener;->onProposedRotationChanged(I)V

    .line 827
    :cond_3a1
    return-void

    .line 817
    .end local v4  # "oldProposedRotation":I
    .end local v5  # "proposedRotation":I
    :catchall_3a2
    move-exception v0

    :try_start_3a3
    monitor-exit v3
    :try_end_3a4
    .catchall {:try_start_3a3 .. :try_end_3a4} :catchall_3a2

    throw v0
.end method

.method public onTouchEndLocked(J)V
    .registers 4
    .param p1, "whenElapsedNanos"  # J

    .line 836
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    .line 837
    iput-wide p1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    .line 838
    return-void
.end method

.method public onTouchStartLocked()V
    .registers 2

    .line 831
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    .line 832
    return-void
.end method

.method public resetLocked(Z)V
    .registers 5
    .param p1, "clearCurrentRotation"  # Z

    .line 842
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    .line 843
    if-eqz p1, :cond_9

    .line 844
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    .line 846
    :cond_9
    iput-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    .line 847
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlat:Z

    .line 848
    iput-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    .line 849
    iput-boolean v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwinging:Z

    .line 850
    iput-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    .line 851
    iput-boolean v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerating:Z

    .line 852
    iput-boolean v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    .line 853
    invoke-direct {p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    .line 854
    invoke-direct {p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->clearTiltHistoryLocked()V

    .line 855
    return-void
.end method
