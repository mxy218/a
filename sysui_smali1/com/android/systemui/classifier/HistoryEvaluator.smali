.class public Lcom/android/systemui/classifier/HistoryEvaluator;
.super Ljava/lang/Object;
.source "HistoryEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/classifier/HistoryEvaluator$Data;
    }
.end annotation


# instance fields
.field private final mGestureWeights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/classifier/HistoryEvaluator$Data;",
            ">;"
        }
    .end annotation
.end field

.field private mLastUpdate:J

.field private final mStrokes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/classifier/HistoryEvaluator$Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mStrokes:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mGestureWeights:Ljava/util/ArrayList;

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mLastUpdate:J

    return-void
.end method

.method private decayValue()V
    .registers 7

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 76
    iget-wide v2, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mLastUpdate:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_b

    return-void

    :cond_b
    const-wide v4, 0x3fecccccc0000000L  # 0.8999999761581421

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x42480000  # 50.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    .line 81
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 83
    iget-object v3, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mStrokes:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/classifier/HistoryEvaluator;->decayValue(Ljava/util/ArrayList;F)V

    .line 84
    iget-object v3, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mGestureWeights:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/classifier/HistoryEvaluator;->decayValue(Ljava/util/ArrayList;F)V

    .line 85
    iput-wide v0, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mLastUpdate:J

    return-void
.end method

.method private decayValue(Ljava/util/ArrayList;F)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/classifier/HistoryEvaluator$Data;",
            ">;F)V"
        }
    .end annotation

    .line 89
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_16

    .line 91
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/classifier/HistoryEvaluator$Data;

    iget v4, v3, Lcom/android/systemui/classifier/HistoryEvaluator$Data;->weight:F

    mul-float/2addr v4, p2

    iput v4, v3, Lcom/android/systemui/classifier/HistoryEvaluator$Data;->weight:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 95
    :cond_16
    :goto_16
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2e

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/classifier/HistoryEvaluator$Data;

    iget p2, p2, Lcom/android/systemui/classifier/HistoryEvaluator$Data;->weight:F

    invoke-direct {p0, p2}, Lcom/android/systemui/classifier/HistoryEvaluator;->isZero(F)Z

    move-result p2

    if-eqz p2, :cond_2e

    .line 96
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_16

    :cond_2e
    return-void
.end method

.method private isZero(F)Z
    .registers 2

    const p0, 0x3727c5ac  # 1.0E-5f

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_10

    const p0, -0x48d83a54  # -1.0E-5f

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private weightedAverage(Ljava/util/ArrayList;)F
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/classifier/HistoryEvaluator$Data;",
            ">;)F"
        }
    .end annotation

    .line 59
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v3, v2

    :goto_8
    if-ge v1, p0, :cond_1a

    .line 61
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/classifier/HistoryEvaluator$Data;

    .line 62
    iget v5, v4, Lcom/android/systemui/classifier/HistoryEvaluator$Data;->evaluation:F

    iget v4, v4, Lcom/android/systemui/classifier/HistoryEvaluator$Data;->weight:F

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    add-float/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1a
    cmpl-float p0, v2, v0

    if-nez p0, :cond_1f

    return v0

    :cond_1f
    div-float/2addr v3, v2

    return v3
.end method


# virtual methods
.method public addGesture(F)V
    .registers 3

    .line 45
    invoke-direct {p0}, Lcom/android/systemui/classifier/HistoryEvaluator;->decayValue()V

    .line 46
    iget-object p0, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mGestureWeights:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/classifier/HistoryEvaluator$Data;

    invoke-direct {v0, p1}, Lcom/android/systemui/classifier/HistoryEvaluator$Data;-><init>(F)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addStroke(F)V
    .registers 3

    .line 40
    invoke-direct {p0}, Lcom/android/systemui/classifier/HistoryEvaluator;->decayValue()V

    .line 41
    iget-object p0, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mStrokes:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/classifier/HistoryEvaluator$Data;

    invoke-direct {v0, p1}, Lcom/android/systemui/classifier/HistoryEvaluator$Data;-><init>(F)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getEvaluation()F
    .registers 3

    .line 53
    iget-object v0, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mStrokes:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/HistoryEvaluator;->weightedAverage(Ljava/util/ArrayList;)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mGestureWeights:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/systemui/classifier/HistoryEvaluator;->weightedAverage(Ljava/util/ArrayList;)F

    move-result p0

    add-float/2addr v0, p0

    return v0
.end method
