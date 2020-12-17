.class public Lcom/android/systemui/classifier/ProximityClassifier;
.super Lcom/android/systemui/classifier/GestureClassifier;
.source "ProximityClassifier.java"


# instance fields
.field private mAverageNear:F

.field private mGestureStartTimeNano:J

.field private mNear:Z

.field private mNearDuration:J

.field private mNearStartTimeNano:J


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/ClassifierData;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Lcom/android/systemui/classifier/GestureClassifier;-><init>()V

    return-void
.end method

.method private update(ZJ)V
    .registers 8

    .line 79
    iget-wide v0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearStartTimeNano:J

    cmp-long v2, p2, v0

    if-lez v2, :cond_15

    .line 82
    iget-boolean v2, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNear:Z

    if-eqz v2, :cond_11

    .line 83
    iget-wide v2, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearDuration:J

    sub-long v0, p2, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearDuration:J

    :cond_11
    if-eqz p1, :cond_15

    .line 88
    iput-wide p2, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearStartTimeNano:J

    .line 91
    :cond_15
    iput-boolean p1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNear:Z

    return-void
.end method


# virtual methods
.method public getFalseTouchEvaluation(I)F
    .registers 2

    .line 96
    iget p0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mAverageNear:F

    invoke-static {p0, p1}, Lcom/android/systemui/classifier/ProximityEvaluator;->evaluate(FI)F

    move-result p0

    return p0
.end method

.method public getTag()Ljava/lang/String;
    .registers 1

    const-string p0, "PROX"

    return-object p0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6

    .line 44
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1f

    .line 45
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/classifier/ProximityClassifier;->update(ZJ)V

    :cond_1f
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 9

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_16

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mGestureStartTimeNano:J

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearStartTimeNano:J

    .line 56
    iput-wide v1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearDuration:J

    :cond_16
    const/4 v3, 0x1

    if-eq v0, v3, :cond_1c

    const/4 v3, 0x3

    if-ne v0, v3, :cond_42

    .line 60
    :cond_1c
    iget-boolean v0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNear:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v3

    invoke-direct {p0, v0, v3, v4}, Lcom/android/systemui/classifier/ProximityClassifier;->update(ZJ)V

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mGestureStartTimeNano:J

    sub-long/2addr v3, v5

    cmp-long p1, v3, v1

    if-nez p1, :cond_3b

    .line 64
    iget-boolean p1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNear:Z

    if-eqz p1, :cond_37

    const/high16 p1, 0x3f800000  # 1.0f

    goto :goto_38

    :cond_37
    const/4 p1, 0x0

    :goto_38
    iput p1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mAverageNear:F

    goto :goto_42

    .line 66
    :cond_3b
    iget-wide v0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearDuration:J

    long-to-float p1, v0

    long-to-float v0, v3

    div-float/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mAverageNear:F

    :cond_42
    :goto_42
    return-void
.end method
