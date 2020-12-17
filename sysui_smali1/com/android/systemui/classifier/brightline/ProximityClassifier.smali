.class Lcom/android/systemui/classifier/brightline/ProximityClassifier;
.super Lcom/android/systemui/classifier/brightline/FalsingClassifier;
.source "ProximityClassifier.java"


# instance fields
.field private final mDistanceClassifier:Lcom/android/systemui/classifier/brightline/DistanceClassifier;

.field private mGestureStartTimeNs:J

.field private mNear:Z

.field private mNearDurationNs:J

.field private final mPercentCoveredThreshold:F

.field private mPercentNear:F

.field private mPrevNearTimeNs:J


# direct methods
.method constructor <init>(Lcom/android/systemui/classifier/brightline/DistanceClassifier;Lcom/android/systemui/classifier/brightline/FalsingDataProvider;)V
    .registers 4

    .line 48
    invoke-direct {p0, p2}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;-><init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;)V

    .line 49
    iput-object p1, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mDistanceClassifier:Lcom/android/systemui/classifier/brightline/DistanceClassifier;

    const-string/jumbo p1, "systemui"

    const-string p2, "brightline_falsing_proximity_percent_covered_threshold"

    const v0, 0x3dcccccd  # 0.1f

    .line 51
    invoke-static {p1, p2, v0}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPercentCoveredThreshold:F

    return-void
.end method

.method private update(ZJ)V
    .registers 8

    .line 128
    iget-wide v0, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPrevNearTimeNs:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_29

    cmp-long v2, p2, v0

    if-lez v2, :cond_29

    iget-boolean v2, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mNear:Z

    if-eqz v2, :cond_29

    .line 129
    iget-wide v2, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mNearDurationNs:J

    sub-long v0, p2, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mNearDurationNs:J

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mNearDurationNs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_29
    if-eqz p1, :cond_3d

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set prevNearTimeNs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    iput-wide p2, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPrevNearTimeNs:J

    .line 138
    :cond_3d
    iput-boolean p1, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mNear:Z

    return-void
.end method


# virtual methods
.method public isFalseTouch()Z
    .registers 4

    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getInteractionType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 114
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Percent of gesture in proximity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPercentNear:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->logInfo(Ljava/lang/String;)V

    .line 116
    iget v0, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPercentNear:F

    iget v2, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPercentCoveredThreshold:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2f

    .line 117
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mDistanceClassifier:Lcom/android/systemui/classifier/brightline/DistanceClassifier;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->isLongSwipe()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_2f
    return v1
.end method

.method public onProximityEvent(Lcom/android/systemui/util/ProximitySensor$ProximityEvent;)V
    .registers 6

    .line 102
    invoke-virtual {p1}, Lcom/android/systemui/util/ProximitySensor$ProximityEvent;->getNear()Z

    move-result v0

    .line 103
    invoke-virtual {p1}, Lcom/android/systemui/util/ProximitySensor$ProximityEvent;->getTimestampNs()J

    move-result-wide v1

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sensor is: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " at time "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->update(ZJ)V

    return-void
.end method

.method onSessionEnded()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 65
    iput-wide v0, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPrevNearTimeNs:J

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPercentNear:F

    return-void
.end method

.method onSessionStarted()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 59
    iput-wide v0, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPrevNearTimeNs:J

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPercentNear:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 9

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_2e

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mGestureStartTimeNs:J

    .line 75
    iget-wide v3, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPrevNearTimeNs:J

    cmp-long v3, v3, v1

    if-lez v3, :cond_1a

    .line 78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPrevNearTimeNs:J

    .line 80
    :cond_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gesture start time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mGestureStartTimeNs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    iput-wide v1, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mNearDurationNs:J

    :cond_2e
    const/4 v3, 0x1

    if-eq v0, v3, :cond_34

    const/4 v3, 0x3

    if-ne v0, v3, :cond_74

    .line 85
    :cond_34
    iget-boolean v0, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mNear:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v3

    invoke-direct {p0, v0, v3, v4}, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->update(ZJ)V

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mGestureStartTimeNs:J

    sub-long/2addr v3, v5

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Gesture duration, Proximity duration: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mNearDurationNs:J

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    cmp-long p1, v3, v1

    if-nez p1, :cond_6d

    .line 91
    iget-boolean p1, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mNear:Z

    if-eqz p1, :cond_69

    const/high16 p1, 0x3f800000  # 1.0f

    goto :goto_6a

    :cond_69
    const/4 p1, 0x0

    :goto_6a
    iput p1, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPercentNear:F

    goto :goto_74

    .line 93
    :cond_6d
    iget-wide v0, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mNearDurationNs:J

    long-to-float p1, v0

    long-to-float v0, v3

    div-float/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPercentNear:F

    :cond_74
    :goto_74
    return-void
.end method
