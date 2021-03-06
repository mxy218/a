.class public Lcom/android/systemui/classifier/SpeedClassifier;
.super Lcom/android/systemui/classifier/StrokeClassifier;
.source "SpeedClassifier.java"


# instance fields
.field private final NANOS_TO_SECONDS:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/ClassifierData;)V
    .registers 2

    .line 26
    invoke-direct {p0}, Lcom/android/systemui/classifier/StrokeClassifier;-><init>()V

    const p1, 0x4e6e6b28  # 1.0E9f

    .line 24
    iput p1, p0, Lcom/android/systemui/classifier/SpeedClassifier;->NANOS_TO_SECONDS:F

    return-void
.end method


# virtual methods
.method public getFalseTouchEvaluation(ILcom/android/systemui/classifier/Stroke;)F
    .registers 4

    .line 36
    invoke-virtual {p2}, Lcom/android/systemui/classifier/Stroke;->getDurationNanos()J

    move-result-wide p0

    long-to-float p0, p0

    const p1, 0x4e6e6b28  # 1.0E9f

    div-float/2addr p0, p1

    const/4 p1, 0x0

    cmpl-float v0, p0, p1

    if-nez v0, :cond_13

    .line 38
    invoke-static {p1}, Lcom/android/systemui/classifier/SpeedEvaluator;->evaluate(F)F

    move-result p0

    return p0

    .line 40
    :cond_13
    invoke-virtual {p2}, Lcom/android/systemui/classifier/Stroke;->getTotalLength()F

    move-result p1

    div-float/2addr p1, p0

    invoke-static {p1}, Lcom/android/systemui/classifier/SpeedEvaluator;->evaluate(F)F

    move-result p0

    return p0
.end method

.method public getTag()Ljava/lang/String;
    .registers 1

    const-string p0, "SPD"

    return-object p0
.end method
