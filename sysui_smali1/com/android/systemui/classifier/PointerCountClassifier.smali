.class public Lcom/android/systemui/classifier/PointerCountClassifier;
.super Lcom/android/systemui/classifier/GestureClassifier;
.source "PointerCountClassifier.java"


# instance fields
.field private mCount:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/ClassifierData;)V
    .registers 2

    .line 27
    invoke-direct {p0}, Lcom/android/systemui/classifier/GestureClassifier;-><init>()V

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mCount:I

    return-void
.end method


# virtual methods
.method public getFalseTouchEvaluation(I)F
    .registers 2

    .line 51
    iget p0, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mCount:I

    invoke-static {p0}, Lcom/android/systemui/classifier/PointerCountEvaluator;->evaluate(I)F

    move-result p0

    return p0
.end method

.method public getTag()Ljava/lang/String;
    .registers 1

    const-string p0, "PTR_CNT"

    return-object p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 4

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_9

    .line 41
    iput v0, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mCount:I

    :cond_9
    const/4 v1, 0x5

    if-ne p1, v1, :cond_11

    .line 45
    iget p1, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mCount:I

    :cond_11
    return-void
.end method
