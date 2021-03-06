.class public Lcom/android/systemui/classifier/EndPointRatioClassifier;
.super Lcom/android/systemui/classifier/StrokeClassifier;
.source "EndPointRatioClassifier.java"


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/ClassifierData;)V
    .registers 2

    .line 24
    invoke-direct {p0}, Lcom/android/systemui/classifier/StrokeClassifier;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/systemui/classifier/Classifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    return-void
.end method


# virtual methods
.method public getFalseTouchEvaluation(ILcom/android/systemui/classifier/Stroke;)F
    .registers 3

    .line 36
    invoke-virtual {p2}, Lcom/android/systemui/classifier/Stroke;->getTotalLength()F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-nez p0, :cond_c

    const/high16 p0, 0x3f800000  # 1.0f

    goto :goto_15

    .line 39
    :cond_c
    invoke-virtual {p2}, Lcom/android/systemui/classifier/Stroke;->getEndPointLength()F

    move-result p0

    invoke-virtual {p2}, Lcom/android/systemui/classifier/Stroke;->getTotalLength()F

    move-result p1

    div-float/2addr p0, p1

    .line 41
    :goto_15
    invoke-static {p0}, Lcom/android/systemui/classifier/EndPointRatioEvaluator;->evaluate(F)F

    move-result p0

    return p0
.end method

.method public getTag()Ljava/lang/String;
    .registers 1

    const-string p0, "END_RTIO"

    return-object p0
.end method
