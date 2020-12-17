.class public Lcom/android/systemui/classifier/EndPointLengthClassifier;
.super Lcom/android/systemui/classifier/StrokeClassifier;
.source "EndPointLengthClassifier.java"


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/ClassifierData;)V
    .registers 2

    .line 23
    invoke-direct {p0}, Lcom/android/systemui/classifier/StrokeClassifier;-><init>()V

    return-void
.end method


# virtual methods
.method public getFalseTouchEvaluation(ILcom/android/systemui/classifier/Stroke;)F
    .registers 3

    .line 33
    invoke-virtual {p2}, Lcom/android/systemui/classifier/Stroke;->getEndPointLength()F

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/classifier/EndPointLengthEvaluator;->evaluate(F)F

    move-result p0

    return p0
.end method

.method public getTag()Ljava/lang/String;
    .registers 1

    const-string p0, "END_LNGTH"

    return-object p0
.end method
