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

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    invoke-virtual {p0}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->reset()V

    .line 464
    return-void
.end method


# virtual methods
.method public accumulate(Lcom/android/server/AnyMotionDetector$Vector3;)V
    .registers 6
    .param p1, "v"  # Lcom/android/server/AnyMotionDetector$Vector3;

    .line 478
    if-nez p1, :cond_3

    .line 480
    return-void

    .line 482
    :cond_3
    iget v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->sampleCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->sampleCount:I

    .line 483
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->runningSum:Lcom/android/server/AnyMotionDetector$Vector3;

    invoke-virtual {v0, p1}, Lcom/android/server/AnyMotionDetector$Vector3;->plus(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->runningSum:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 484
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

    iput-object v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->previousVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 485
    iput-object p1, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 486
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->previousVector:Lcom/android/server/AnyMotionDetector$Vector3;

    if-eqz v0, :cond_37

    .line 487
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

    invoke-virtual {v1, v0}, Lcom/android/server/AnyMotionDetector$Vector3;->minus(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;

    move-result-object v0

    .line 488
    .local v0, "dv":Lcom/android/server/AnyMotionDetector$Vector3;
    iget v1, v0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    iget v2, v0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    mul-float/2addr v1, v2

    iget v2, v0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    iget v3, v0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, v0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    iget v3, v0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 489
    .local v1, "incrementalEnergy":F
    iget v2, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->energy:F

    add-float/2addr v2, v1

    iput v2, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->energy:F

    .line 495
    .end local v0  # "dv":Lcom/android/server/AnyMotionDetector$Vector3;
    .end local v1  # "incrementalEnergy":F
    :cond_37
    return-void
.end method

.method public getEnergy()F
    .registers 2

    .line 505
    iget v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->energy:F

    return v0
.end method

.method public getRunningAverage()Lcom/android/server/AnyMotionDetector$Vector3;
    .registers 4

    .line 498
    iget v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->sampleCount:I

    if-lez v0, :cond_f

    .line 499
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->runningSum:Lcom/android/server/AnyMotionDetector$Vector3;

    const/high16 v2, 0x3f800000  # 1.0f

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/android/server/AnyMotionDetector$Vector3;->times(F)Lcom/android/server/AnyMotionDetector$Vector3;

    move-result-object v0

    return-object v0

    .line 501
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSampleCount()I
    .registers 2

    .line 509
    iget v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->sampleCount:I

    return v0
.end method

.method public reset()V
    .registers 8

    .line 467
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->previousVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 468
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 469
    new-instance v0, Lcom/android/server/AnyMotionDetector$Vector3;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(JFFF)V

    iput-object v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->runningSum:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 470
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->energy:F

    .line 471
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->sampleCount:I

    .line 472
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 514
    const-string v0, ""

    .line 515
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

    const-string/jumbo v2, "null"

    if-nez v1, :cond_b

    .line 516
    move-object v1, v2

    goto :goto_f

    :cond_b
    invoke-virtual {v1}, Lcom/android/server/AnyMotionDetector$Vector3;->toString()Ljava/lang/String;

    move-result-object v1

    .line 517
    .local v1, "currentVectorString":Ljava/lang/String;
    :goto_f
    iget-object v3, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->previousVector:Lcom/android/server/AnyMotionDetector$Vector3;

    if-nez v3, :cond_14

    .line 518
    goto :goto_18

    :cond_14
    invoke-virtual {v3}, Lcom/android/server/AnyMotionDetector$Vector3;->toString()Ljava/lang/String;

    move-result-object v2

    .line 519
    .local v2, "previousVectorString":Ljava/lang/String;
    :goto_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "previousVector = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 520
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", currentVector = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 521
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", sampleCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->sampleCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 522
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", energy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->energy:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 523
    return-object v0
.end method
