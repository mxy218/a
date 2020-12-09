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
    .registers 11

    .line 567
    iput-object p1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-direct {p0, p1}, Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;-><init>(Lcom/android/server/policy/WindowOrientationListener;)V

    .line 522
    const/4 p1, 0x4

    new-array v0, p1, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_8e

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_96

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_9e

    aput-object v2, v0, v1

    new-array v1, v1, [I

    fill-array-data v1, :array_a6

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    .line 555
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    .line 563
    const/16 v0, 0xc8

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    .line 564
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    .line 569
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x1070017

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p2

    .line 571
    array-length v0, p2

    const-string v1, "WindowOrientationListener"

    const/16 v2, 0x8

    if-ne v0, v2, :cond_88

    .line 572
    move v0, v3

    :goto_4b
    if-ge v0, p1, :cond_8d

    .line 573
    mul-int/lit8 v2, v0, 0x2

    aget v5, p2, v2

    .line 574
    add-int/2addr v2, v4

    aget v2, p2, v2

    .line 575
    const/16 v6, -0x5a

    if-lt v5, v6, :cond_69

    if-gt v5, v2, :cond_69

    const/16 v6, 0x5a

    if-gt v2, v6, :cond_69

    .line 576
    iget-object v6, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    aget-object v7, v6, v0

    aput v5, v7, v3

    .line 577
    aget-object v5, v6, v0

    aput v2, v5, v4

    goto :goto_85

    .line 579
    :cond_69
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "config_autoRotationTiltTolerance contains invalid range: min="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", max="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :goto_85
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    .line 584
    :cond_88
    const-string p1, "config_autoRotationTiltTolerance should have exactly 8 elements"

    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_8d
    return-void

    :array_8e
    .array-data 4
        -0x19
        0x46
    .end array-data

    :array_96
    .array-data 4
        -0x19
        0x41
    .end array-data

    :array_9e
    .array-data 4
        -0x19
        0x3c
    .end array-data

    :array_a6
    .array-data 4
        -0x19
        0x41
    .end array-data
.end method

.method private addTiltHistoryEntryLocked(JF)V
    .registers 6

    .line 977
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    aput p3, v0, v1

    .line 978
    iget-object p3, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    aput-wide p1, p3, v1

    .line 979
    add-int/lit8 v1, v1, 0x1

    rem-int/lit16 v1, v1, 0xc8

    iput v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    .line 980
    iget p1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    const-wide/high16 v0, -0x8000000000000000L

    aput-wide v0, p3, p1

    .line 981
    return-void
.end method

.method private clearPredictedRotationLocked()V
    .registers 3

    .line 955
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    .line 956
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    .line 957
    return-void
.end method

.method private clearTiltHistoryLocked()V
    .registers 5

    .line 972
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    const/4 v1, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    aput-wide v2, v0, v1

    .line 973
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    .line 974
    return-void
.end method

.method private getLastTiltLocked()F
    .registers 3

    .line 1015
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    invoke-direct {p0, v0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->nextTiltHistoryIndexLocked(I)I

    move-result v0

    .line 1016
    if-ltz v0, :cond_d

    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    aget v0, v1, v0

    goto :goto_f

    :cond_d
    const/high16 v0, 0x7fc00000  # Float.NaN

    :goto_f
    return v0
.end method

.method private isAcceleratingLocked(F)Z
    .registers 3

    .line 967
    const v0, 0x40b9d014

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_11

    const v0, 0x415ce80a

    cmpl-float p1, p1, v0

    if-lez p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p1, 0x1

    :goto_12
    return p1
.end method

.method private isFlatLocked(J)Z
    .registers 8

    .line 984
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->nextTiltHistoryIndexLocked(I)I

    move-result v0

    if-ltz v0, :cond_21

    .line 985
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    aget v1, v1, v0

    const/high16 v2, 0x42a00000  # 80.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_13

    .line 986
    goto :goto_21

    .line 988
    :cond_13
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    aget-wide v1, v1, v0

    const-wide/32 v3, 0x3b9aca00

    add-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-gtz v1, :cond_2

    .line 990
    const/4 p1, 0x1

    return p1

    .line 993
    :cond_21
    :goto_21
    const/4 p1, 0x0

    return p1
.end method

.method private isOrientationAngleAcceptableLocked(II)Z
    .registers 8

    .line 874
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-static {v0}, Lcom/android/server/policy/WindowOrientationListener;->access$300(Lcom/android/server/policy/WindowOrientationListener;)I

    move-result v0

    .line 875
    if-ltz v0, :cond_3d

    .line 880
    const/16 v1, 0x2d

    const/4 v2, 0x0

    if-eq p1, v0, :cond_13

    add-int/lit8 v3, v0, 0x1

    rem-int/lit8 v3, v3, 0x4

    if-ne p1, v3, :cond_26

    .line 882
    :cond_13
    mul-int/lit8 v3, p1, 0x5a

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x16

    .line 884
    if-nez p1, :cond_23

    .line 885
    const/16 v4, 0x13b

    if-lt p2, v4, :cond_26

    add-int/lit16 v3, v3, 0x168

    if-ge p2, v3, :cond_26

    .line 886
    return v2

    .line 889
    :cond_23
    if-ge p2, v3, :cond_26

    .line 890
    return v2

    .line 899
    :cond_26
    if-eq p1, v0, :cond_2e

    add-int/lit8 v0, v0, 0x3

    rem-int/lit8 v0, v0, 0x4

    if-ne p1, v0, :cond_3d

    .line 901
    :cond_2e
    mul-int/lit8 v0, p1, 0x5a

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x16

    .line 903
    if-nez p1, :cond_3a

    .line 904
    if-gt p2, v1, :cond_3d

    if-le p2, v0, :cond_3d

    .line 905
    return v2

    .line 908
    :cond_3a
    if-le p2, v0, :cond_3d

    .line 909
    return v2

    .line 914
    :cond_3d
    const/4 p1, 0x1

    return p1
.end method

.method private isPredictedRotationAcceptableLocked(J)Z
    .registers 11

    .line 923
    iget-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    const-wide/32 v2, 0x2625a00

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_c

    .line 924
    return v1

    .line 928
    :cond_c
    iget-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    const-wide/32 v4, 0x1dcd6500

    add-long/2addr v2, v4

    cmp-long v0, p1, v2

    if-gez v0, :cond_17

    .line 929
    return v1

    .line 934
    :cond_17
    iget-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    const-wide/32 v6, 0x11e1a300

    add-long/2addr v2, v6

    cmp-long v0, p1, v2

    if-gez v0, :cond_22

    .line 935
    return v1

    .line 939
    :cond_22
    iget-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    add-long/2addr v2, v4

    cmp-long v0, p1, v2

    if-gez v0, :cond_2a

    .line 941
    return v1

    .line 945
    :cond_2a
    iget-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    if-nez v0, :cond_38

    iget-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    add-long/2addr v2, v4

    cmp-long p1, p1, v2

    if-gez p1, :cond_36

    goto :goto_38

    .line 951
    :cond_36
    const/4 p1, 0x1

    return p1

    .line 947
    :cond_38
    :goto_38
    return v1
.end method

.method private isSwingingLocked(JF)Z
    .registers 9

    .line 997
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->nextTiltHistoryIndexLocked(I)I

    move-result v0

    if-ltz v0, :cond_22

    .line 998
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    aget-wide v1, v1, v0

    const-wide/32 v3, 0x11e1a300

    add-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-gez v1, :cond_15

    .line 999
    goto :goto_22

    .line 1001
    :cond_15
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    aget v1, v1, v0

    const/high16 v2, 0x41a00000  # 20.0f

    add-float/2addr v1, v2

    cmpg-float v1, v1, p3

    if-gtz v1, :cond_2

    .line 1003
    const/4 p1, 0x1

    return p1

    .line 1006
    :cond_22
    :goto_22
    const/4 p1, 0x0

    return p1
.end method

.method private isTiltAngleAcceptableLocked(II)Z
    .registers 7

    .line 860
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    aget-object v1, v0, p1

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v3, 0x1

    if-lt p2, v1, :cond_11

    aget-object p1, v0, p1

    aget p1, p1, v3

    if-gt p2, p1, :cond_11

    move v2, v3

    :cond_11
    return v2
.end method

.method private nextTiltHistoryIndexLocked(I)I
    .registers 6

    .line 1010
    if-nez p1, :cond_4

    const/16 p1, 0xc8

    :cond_4
    add-int/lit8 p1, p1, -0x1

    .line 1011
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    aget-wide v0, v0, p1

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 p1, -0x1

    :goto_12
    return p1
.end method

.method private remainingMS(JJ)F
    .registers 6

    .line 1020
    cmp-long v0, p1, p3

    if-ltz v0, :cond_6

    const/4 p1, 0x0

    goto :goto_c

    :cond_6
    sub-long/2addr p3, p1

    long-to-float p1, p3

    const p2, 0x358637bd  # 1.0E-6f

    mul-float/2addr p1, p2

    :goto_c
    return p1
.end method

.method private updatePredictedRotationLocked(JI)V
    .registers 5

    .line 960
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    if-eq v0, p3, :cond_8

    .line 961
    iput p3, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    .line 962
    iput-wide p1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    .line 964
    :cond_8
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AccelSensorJudge"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mProposedRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mPredictedRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLastFilteredX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLastFilteredY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLastFilteredZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 602
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    sub-long/2addr v0, v2

    .line 603
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mLastFilteredTimestampNanos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-float v0, v0

    const v1, 0x358637bd  # 1.0E-6f

    mul-float/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms ago)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mTiltHistory={last: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->getLastTiltLocked()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mFlat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mSwinging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwinging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAccelerating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mOverhead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mTouched="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mTiltToleranceConfig=["

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 612
    const/4 p2, 0x0

    move v0, p2

    :goto_189
    const/4 v1, 0x4

    const-string v2, "]"

    if-ge v0, v1, :cond_1b6

    .line 613
    const-string v1, ", "

    if-eqz v0, :cond_195

    .line 614
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 616
    :cond_195
    const-string v3, "["

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 617
    iget-object v3, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    aget-object v3, v3, v0

    aget v3, v3, p2

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 618
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 619
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    aget-object v1, v1, v0

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 620
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 612
    add-int/lit8 v0, v0, 0x1

    goto :goto_189

    .line 622
    :cond_1b6
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 623
    return-void
.end method

.method public getProposedRotationLocked()I
    .registers 2

    .line 590
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .line 627
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 19

    .line 634
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-static {v2}, Lcom/android/server/policy/WindowOrientationListener;->access$000(Lcom/android/server/policy/WindowOrientationListener;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 638
    :try_start_b
    iget-object v3, v1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    .line 639
    iget-object v5, v1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    .line 640
    iget-object v7, v1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    .line 642
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 643
    const-string v8, "WindowOrientationListener"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Raw acceleration vector: x="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", y="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", z="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", magnitude="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float v10, v3, v3

    mul-float v11, v5, v5

    add-float/2addr v10, v11

    mul-float v11, v7, v7

    add-float/2addr v10, v11

    float-to-double v10, v10

    .line 645
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 643
    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_5b
    iget-object v8, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-static {v8}, Lcom/android/server/policy/WindowOrientationListener;->access$200(Lcom/android/server/policy/WindowOrientationListener;)Z

    move-result v8

    if-eqz v8, :cond_68

    .line 653
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    goto :goto_6a

    :cond_68
    iget-wide v8, v1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 654
    :goto_6a
    iget-wide v10, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    .line 655
    sub-long v12, v8, v10

    long-to-float v1, v12

    const v12, 0x358637bd  # 1.0E-6f

    mul-float/2addr v1, v12

    .line 657
    cmp-long v13, v8, v10

    if-ltz v13, :cond_ea

    const-wide/32 v13, 0x3b9aca00

    add-long/2addr v10, v13

    cmp-long v10, v8, v10

    if-gtz v10, :cond_ea

    const/4 v10, 0x0

    cmpl-float v11, v3, v10

    if-nez v11, :cond_8d

    cmpl-float v11, v5, v10

    if-nez v11, :cond_8d

    cmpl-float v10, v7, v10

    if-nez v10, :cond_8d

    goto :goto_ea

    .line 666
    :cond_8d
    const/high16 v10, 0x43480000  # 200.0f

    add-float/2addr v10, v1

    div-float v10, v1, v10

    .line 667
    iget v11, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredX:F

    sub-float/2addr v3, v11

    mul-float/2addr v3, v10

    iget v11, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredX:F

    add-float/2addr v3, v11

    .line 668
    iget v11, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredY:F

    sub-float/2addr v5, v11

    mul-float/2addr v5, v10

    iget v11, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredY:F

    add-float/2addr v5, v11

    .line 669
    iget v11, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredZ:F

    sub-float/2addr v7, v11

    mul-float/2addr v10, v7

    iget v7, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredZ:F

    add-float/2addr v7, v10

    .line 670
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v10

    if-eqz v10, :cond_e8

    .line 671
    const-string v10, "WindowOrientationListener"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Filtered acceleration vector: x="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ", y="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ", z="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ", magnitude="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float v13, v3, v3

    mul-float v14, v5, v5

    add-float/2addr v13, v14

    mul-float v14, v7, v7

    add-float/2addr v13, v14

    float-to-double v13, v13

    .line 673
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 671
    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_e8
    move v10, v4

    goto :goto_fb

    .line 660
    :cond_ea
    :goto_ea
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v10

    if-eqz v10, :cond_f7

    .line 661
    const-string v10, "WindowOrientationListener"

    const-string v11, "Resetting orientation listener."

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_f7
    invoke-virtual {v0, v6}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->resetLocked(Z)V

    .line 664
    move v10, v6

    .line 677
    :goto_fb
    iput-wide v8, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    .line 678
    iput v3, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredX:F

    .line 679
    iput v5, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredY:F

    .line 680
    iput v7, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredZ:F

    .line 682
    nop

    .line 683
    nop

    .line 684
    nop

    .line 685
    if-nez v10, :cond_25d

    .line 687
    mul-float v10, v3, v3

    mul-float v11, v5, v5

    add-float/2addr v10, v11

    mul-float v11, v7, v7

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    .line 688
    const/high16 v11, 0x3f800000  # 1.0f

    cmpg-float v11, v10, v11

    if-gez v11, :cond_12e

    .line 689
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v3

    if-eqz v3, :cond_129

    .line 690
    const-string v3, "WindowOrientationListener"

    const-string v5, "Ignoring sensor data, magnitude too close to zero."

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_129
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    goto/16 :goto_25d

    .line 696
    :cond_12e
    invoke-direct {v0, v10}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->isAcceleratingLocked(F)Z

    move-result v11

    if-eqz v11, :cond_139

    .line 697
    nop

    .line 698
    iput-wide v8, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    move v11, v6

    goto :goto_13a

    .line 696
    :cond_139
    move v11, v4

    .line 707
    :goto_13a
    div-float/2addr v7, v10

    float-to-double v13, v7

    .line 708
    invoke-static {v13, v14}, Ljava/lang/Math;->asin(D)D

    move-result-wide v13

    const-wide v15, 0x404ca5dc20000000L  # 57.295780181884766

    mul-double/2addr v13, v15

    .line 707
    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    long-to-int v7, v13

    .line 709
    int-to-float v10, v7

    invoke-direct {v0, v8, v9, v10}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->addTiltHistoryEntryLocked(JF)V

    .line 712
    invoke-direct {v0, v8, v9}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->isFlatLocked(J)Z

    move-result v13

    if-eqz v13, :cond_15a

    .line 713
    nop

    .line 714
    iput-wide v8, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    move v13, v6

    goto :goto_15b

    .line 712
    :cond_15a
    move v13, v4

    .line 716
    :goto_15b
    invoke-direct {v0, v8, v9, v10}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->isSwingingLocked(JF)Z

    move-result v10

    if-eqz v10, :cond_166

    .line 717
    nop

    .line 718
    iput-wide v8, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    move v10, v6

    goto :goto_167

    .line 716
    :cond_166
    move v10, v4

    .line 723
    :goto_167
    const/16 v14, -0x28

    if-gt v7, v14, :cond_16e

    .line 724
    iput-boolean v6, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    goto :goto_174

    .line 725
    :cond_16e
    const/16 v6, -0xf

    if-lt v7, v6, :cond_174

    .line 726
    iput-boolean v4, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    .line 728
    :cond_174
    :goto_174
    iget-boolean v6, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    if-eqz v6, :cond_19b

    .line 729
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v3

    if-eqz v3, :cond_194

    .line 730
    const-string v3, "WindowOrientationListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring sensor data, device is overhead: tiltAngle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_194
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    move/from16 p1, v13

    goto/16 :goto_25a

    .line 734
    :cond_19b
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v14, 0x50

    if-le v6, v14, :cond_1c6

    .line 735
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v3

    if-eqz v3, :cond_1bf

    .line 736
    const-string v3, "WindowOrientationListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring sensor data, tilt angle too high: tiltAngle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_1bf
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    move/from16 p1, v13

    goto/16 :goto_25a

    .line 744
    :cond_1c6
    neg-float v3, v3

    move/from16 p1, v13

    float-to-double v12, v3

    float-to-double v4, v5

    .line 745
    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    neg-double v4, v4

    mul-double/2addr v4, v15

    .line 744
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    .line 746
    if-gez v4, :cond_1da

    .line 748
    add-int/lit16 v4, v4, 0x168

    .line 752
    :cond_1da
    add-int/lit8 v5, v4, 0x2d

    div-int/lit8 v5, v5, 0x5a

    .line 753
    const/4 v12, 0x4

    if-ne v5, v12, :cond_1e3

    .line 754
    const/4 v3, 0x0

    goto :goto_1e4

    .line 753
    :cond_1e3
    move v3, v5

    .line 758
    :goto_1e4
    invoke-direct {v0, v3, v7}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->isTiltAngleAcceptableLocked(II)Z

    move-result v5

    if-eqz v5, :cond_233

    .line 759
    invoke-direct {v0, v3, v4}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->isOrientationAngleAcceptableLocked(II)Z

    move-result v5

    if-eqz v5, :cond_233

    .line 761
    invoke-direct {v0, v8, v9, v3}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->updatePredictedRotationLocked(JI)V

    .line 762
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v3

    if-eqz v3, :cond_25a

    .line 763
    const-string v3, "WindowOrientationListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Predicted: tiltAngle="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", orientationAngle="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", predictedRotation="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", predictedRotationAgeMS="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    sub-long v12, v8, v12

    long-to-float v4, v12

    const v6, 0x358637bd  # 1.0E-6f

    mul-float/2addr v4, v6

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25a

    .line 772
    :cond_233
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v3

    if-eqz v3, :cond_257

    .line 773
    const-string v3, "WindowOrientationListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring sensor data, no predicted rotation: tiltAngle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", orientationAngle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_257
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    .line 782
    :cond_25a
    :goto_25a
    move/from16 v3, p1

    goto :goto_260

    :cond_25d
    :goto_25d
    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_260
    iput-boolean v3, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlat:Z

    .line 783
    iput-boolean v10, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwinging:Z

    .line 784
    iput-boolean v11, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerating:Z

    .line 787
    iget v4, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    .line 788
    iget v5, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    if-ltz v5, :cond_272

    invoke-direct {v0, v8, v9}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->isPredictedRotationAcceptableLocked(J)Z

    move-result v5

    if-eqz v5, :cond_276

    .line 789
    :cond_272
    iget v5, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    iput v5, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    .line 791
    :cond_276
    iget v5, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    .line 794
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v6

    if-eqz v6, :cond_334

    .line 795
    const-string v6, "WindowOrientationListener"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Result: currentRotation="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-static {v12}, Lcom/android/server/policy/WindowOrientationListener;->access$300(Lcom/android/server/policy/WindowOrientationListener;)I

    move-result v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", proposedRotation="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", predictedRotation="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", timeDeltaMS="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", isAccelerating="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFlat="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSwinging="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isOverhead="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isTouched="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", timeUntilSettledMS="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    const-wide/32 v12, 0x2625a00

    add-long/2addr v10, v12

    .line 804
    invoke-direct {v0, v8, v9, v10, v11}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", timeUntilAccelerationDelayExpiredMS="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    const-wide/32 v12, 0x1dcd6500

    add-long/2addr v10, v12

    .line 806
    invoke-direct {v0, v8, v9, v10, v11}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", timeUntilFlatDelayExpiredMS="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    add-long/2addr v10, v12

    .line 808
    invoke-direct {v0, v8, v9, v10, v11}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", timeUntilSwingDelayExpiredMS="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    const-wide/32 v14, 0x11e1a300

    add-long/2addr v10, v14

    .line 810
    invoke-direct {v0, v8, v9, v10, v11}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", timeUntilTouchDelayExpiredMS="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    add-long/2addr v10, v12

    .line 812
    invoke-direct {v0, v8, v9, v10, v11}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 795
    invoke-static {v6, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :cond_334
    monitor-exit v2
    :try_end_335
    .catchall {:try_start_b .. :try_end_335} :catchall_363

    .line 818
    if-eq v5, v4, :cond_362

    if-ltz v5, :cond_362

    .line 819
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v1

    if-eqz v1, :cond_35d

    .line 820
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proposed rotation changed!  proposedRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", oldProposedRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowOrientationListener"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_35d
    iget-object v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-virtual {v0, v5}, Lcom/android/server/policy/WindowOrientationListener;->onProposedRotationChanged(I)V

    .line 825
    :cond_362
    return-void

    .line 815
    :catchall_363
    move-exception v0

    :try_start_364
    monitor-exit v2
    :try_end_365
    .catchall {:try_start_364 .. :try_end_365} :catchall_363

    throw v0
.end method

.method public onTouchEndLocked(J)V
    .registers 4

    .line 834
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    .line 835
    iput-wide p1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    .line 836
    return-void
.end method

.method public onTouchStartLocked()V
    .registers 2

    .line 829
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    .line 830
    return-void
.end method

.method public resetLocked(Z)V
    .registers 4

    .line 840
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    .line 841
    if-eqz p1, :cond_9

    .line 842
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    .line 844
    :cond_9
    iput-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    .line 845
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlat:Z

    .line 846
    iput-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    .line 847
    iput-boolean p1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwinging:Z

    .line 848
    iput-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    .line 849
    iput-boolean p1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerating:Z

    .line 850
    iput-boolean p1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    .line 851
    invoke-direct {p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    .line 852
    invoke-direct {p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->clearTiltHistoryLocked()V

    .line 853
    return-void
.end method
