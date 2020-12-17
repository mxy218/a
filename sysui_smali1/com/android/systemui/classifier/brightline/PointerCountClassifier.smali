.class Lcom/android/systemui/classifier/brightline/PointerCountClassifier;
.super Lcom/android/systemui/classifier/brightline/FalsingClassifier;
.source "PointerCountClassifier.java"


# instance fields
.field private mMaxPointerCount:I


# direct methods
.method constructor <init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;-><init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;)V

    return-void
.end method


# virtual methods
.method public isFalseTouch()Z
    .registers 2

    .line 51
    iget p0, p0, Lcom/android/systemui/classifier/brightline/PointerCountClassifier;->mMaxPointerCount:I

    const/4 v0, 0x1

    if-le p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 4

    .line 38
    iget v0, p0, Lcom/android/systemui/classifier/brightline/PointerCountClassifier;->mMaxPointerCount:I

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_f

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/classifier/brightline/PointerCountClassifier;->mMaxPointerCount:I

    goto :goto_1b

    .line 42
    :cond_f
    iget v1, p0, Lcom/android/systemui/classifier/brightline/PointerCountClassifier;->mMaxPointerCount:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/classifier/brightline/PointerCountClassifier;->mMaxPointerCount:I

    .line 44
    :goto_1b
    iget p1, p0, Lcom/android/systemui/classifier/brightline/PointerCountClassifier;->mMaxPointerCount:I

    if-eq v0, p1, :cond_31

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Pointers observed:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/classifier/brightline/PointerCountClassifier;->mMaxPointerCount:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_31
    return-void
.end method
