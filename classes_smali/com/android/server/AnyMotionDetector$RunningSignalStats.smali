.class Lcom/android/server/AnyMotionDetector$RunningSignalStats;
.super Ljava/lang/Object;
.source "AnyMotionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AnyMotionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RunningSignalStats"
.end annotation


# instance fields
.field currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

.field energy:F

.field previousVector:Lcom/android/server/AnyMotionDetector$Vector3;

.field runningSum:Lcom/android/server/AnyMotionDetector$Vector3;

.field sampleCount:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    invoke-virtual {p0}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->reset()V

    .line 458
    return-void
.end method


# virtual methods
.method public accumulate(Lcom/android/server/AnyMotionDetector$Vector3;)V
    .registers 5

    .line 472
    if-nez p1, :cond_3

    .line 474
    return-void

    .line 476
    :cond_3
    iget v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->sampleCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->sampleCount:I

    .line 477
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->runningSum:Lcom/android/server/AnyMotionDetector$Vector3;

    invoke-virtual {v0, p1}, Lcom/android/server/AnyMotionDetector$Vector3;->plus(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->runningSum:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 478
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

    iput-object v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->previousVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 479
    iput-object p1, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 480
    iget-object p1, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->previousVector:Lcom/android/server/AnyMotionDetector$Vector3;

    if-eqz p1, :cond_37

    .line 481
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

    invoke-virtual {v0, p1}, Lcom/android/server/AnyMotionDetector$Vector3;->minus(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;

    move-result-object p1

    .line 482
    iget v0, p1, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    iget v1, p1, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    iget v2, p1, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    iget p1, p1, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 483
    iget p1, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->energy:F

    add-float/2addr p1, v0

    iput p1, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->energy:F

    .line 489
    :cond_37
    return-void
.end method

.method public getEnergy()F
    .registers 2

    .line 499
    iget v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->energy:F

    return v0
.end method

.method public getRunningAverage()Lcom/android/server/AnyMotionDetector$Vector3;
    .registers 4

    .line 492
    iget v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->sampleCount:I

    if-lez v0, :cond_f

    .line 493
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->runningSum:Lcom/android/server/AnyMotionDetector$Vector3;

    const/high16 v2, 0x3f800000  # 1.0f

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/android/server/AnyMotionDetector$Vector3;->times(F)Lcom/android/server/AnyMotionDetector$Vector3;

    move-result-object v0

    return-object v0

    .line 495
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSampleCount()I
    .registers 2

    .line 503
    iget v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->sampleCount:I

    return v0
.end method

.method public reset()V
    .registers 8

    .line 461
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->previousVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 462
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 463
    new-instance v0, Lcom/android/server/AnyMotionDetector$Vector3;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(JFFF)V

    iput-object v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->runningSum:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 464
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->energy:F

    .line 465
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->sampleCount:I

    .line 466
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 508
    nop

    .line 509
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

    const-string/jumbo v1, "null"

    if-nez v0, :cond_a

    .line 510
    move-object v0, v1

    goto :goto_e

    :cond_a
    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector$Vector3;->toString()Ljava/lang/String;

    move-result-object v0

    .line 511
    :goto_e
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->previousVector:Lcom/android/server/AnyMotionDetector$Vector3;

    if-nez v2, :cond_13

    .line 512
    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Lcom/android/server/AnyMotionDetector$Vector3;->toString()Ljava/lang/String;

    move-result-object v1

    .line 513
    :goto_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "previousVector = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", currentVector = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", sampleCount = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->sampleCount:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", energy = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->energy:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 517
    return-object v0
.end method
