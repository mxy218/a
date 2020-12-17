.class public Lcom/android/systemui/classifier/ClassifierData;
.super Ljava/lang/Object;
.source "ClassifierData.java"


# instance fields
.field private mCurrentStrokes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/classifier/Stroke;",
            ">;"
        }
    .end annotation
.end field

.field private final mDpi:F

.field private mEndingStrokes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/classifier/Stroke;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(F)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/classifier/ClassifierData;->mCurrentStrokes:Landroid/util/SparseArray;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/classifier/ClassifierData;->mEndingStrokes:Ljava/util/ArrayList;

    .line 37
    iput p1, p0, Lcom/android/systemui/classifier/ClassifierData;->mDpi:F

    return-void
.end method


# virtual methods
.method public cleanUp(Landroid/view/MotionEvent;)V
    .registers 6

    .line 76
    iget-object v0, p0, Lcom/android/systemui/classifier/ClassifierData;->mEndingStrokes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    .line 78
    :goto_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 79
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_23

    const/4 v3, 0x3

    if-eq v0, v3, :cond_23

    const/4 v3, 0x6

    if-ne v0, v3, :cond_28

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    if-ne v1, v3, :cond_28

    .line 82
    :cond_23
    iget-object v3, p0, Lcom/android/systemui/classifier/ClassifierData;->mCurrentStrokes:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_2b
    return-void
.end method

.method public getEndingStrokes()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/classifier/Stroke;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object p0, p0, Lcom/android/systemui/classifier/ClassifierData;->mEndingStrokes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getStroke(I)Lcom/android/systemui/classifier/Stroke;
    .registers 2

    .line 99
    iget-object p0, p0, Lcom/android/systemui/classifier/ClassifierData;->mCurrentStrokes:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/classifier/Stroke;

    return-object p0
.end method

.method public update(Landroid/view/MotionEvent;)Z
    .registers 11

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_29

    iget-object v0, p0, Lcom/android/systemui/classifier/ClassifierData;->mCurrentStrokes:Landroid/util/SparseArray;

    .line 46
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_29

    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/systemui/classifier/ClassifierData;->mCurrentStrokes:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/classifier/Stroke;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/Stroke;->getLastEventTimeNano()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xd82a8a  # 6.999263E-317

    cmp-long v0, v2, v4

    if-gez v0, :cond_29

    return v1

    .line 52
    :cond_29
    iget-object v0, p0, Lcom/android/systemui/classifier/ClassifierData;->mEndingStrokes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_39

    .line 55
    iget-object v2, p0, Lcom/android/systemui/classifier/ClassifierData;->mCurrentStrokes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 58
    :cond_39
    :goto_39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_8d

    .line 59
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 60
    iget-object v4, p0, Lcom/android/systemui/classifier/ClassifierData;->mCurrentStrokes:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5c

    .line 61
    iget-object v4, p0, Lcom/android/systemui/classifier/ClassifierData;->mCurrentStrokes:Landroid/util/SparseArray;

    new-instance v5, Lcom/android/systemui/classifier/Stroke;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v6

    iget v8, p0, Lcom/android/systemui/classifier/ClassifierData;->mDpi:F

    invoke-direct {v5, v6, v7, v8}, Lcom/android/systemui/classifier/Stroke;-><init>(JF)V

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    :cond_5c
    iget-object v4, p0, Lcom/android/systemui/classifier/ClassifierData;->mCurrentStrokes:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/classifier/Stroke;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v7

    .line 63
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/systemui/classifier/Stroke;->addPoint(FFJ)V

    if-eq v0, v3, :cond_81

    const/4 v3, 0x3

    if-eq v0, v3, :cond_81

    const/4 v3, 0x6

    if-ne v0, v3, :cond_8a

    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    if-ne v1, v3, :cond_8a

    .line 68
    :cond_81
    iget-object v3, p0, Lcom/android/systemui/classifier/ClassifierData;->mEndingStrokes:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/android/systemui/classifier/ClassifierData;->getStroke(I)Lcom/android/systemui/classifier/Stroke;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8a
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    :cond_8d
    return v3
.end method
