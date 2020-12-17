.class public Lcom/android/systemui/qs/PseudoGridView;
.super Landroid/view/ViewGroup;
.source "PseudoGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;
    }
.end annotation


# instance fields
.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    .line 38
    iput v0, p0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    .line 45
    sget-object v1, Lcom/android/systemui/R$styleable;->PseudoGridView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v1, 0x0

    move v2, v1

    :goto_12
    if-ge v2, p2, :cond_3b

    .line 49
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 50
    sget v4, Lcom/android/systemui/R$styleable;->PseudoGridView_numColumns:I

    if-ne v3, v4, :cond_23

    .line 51
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    goto :goto_38

    .line 52
    :cond_23
    sget v4, Lcom/android/systemui/R$styleable;->PseudoGridView_verticalSpacing:I

    if-ne v3, v4, :cond_2e

    .line 53
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/PseudoGridView;->mVerticalSpacing:I

    goto :goto_38

    .line 54
    :cond_2e
    sget v4, Lcom/android/systemui/R$styleable;->PseudoGridView_horizontalSpacing:I

    if-ne v3, v4, :cond_38

    .line 55
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    :cond_38
    :goto_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 59
    :cond_3b
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 16

    .line 102
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result p1

    .line 103
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    .line 104
    iget p3, p0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    add-int p4, p2, p3

    add-int/lit8 p4, p4, -0x1

    div-int/2addr p4, p3

    const/4 p3, 0x0

    move p5, p3

    move v0, p5

    :goto_12
    if-ge p5, p4, :cond_59

    if-eqz p1, :cond_1b

    .line 107
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    goto :goto_1c

    :cond_1b
    move v1, p3

    .line 109
    :goto_1c
    iget v2, p0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    mul-int v3, p5, v2

    add-int/2addr v2, v3

    .line 110
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v4, v1

    move v1, p3

    :goto_27
    if-ge v3, v2, :cond_50

    .line 112
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 113
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 114
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    if-eqz p1, :cond_38

    sub-int/2addr v4, v6

    :cond_38
    add-int v8, v4, v6

    add-int v9, v0, v7

    .line 118
    invoke-virtual {v5, v4, v0, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 119
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz p1, :cond_49

    .line 121
    iget v5, p0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    sub-int/2addr v4, v5

    goto :goto_4d

    .line 123
    :cond_49
    iget v5, p0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    add-int/2addr v6, v5

    add-int/2addr v4, v6

    :goto_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_50
    add-int/2addr v0, v1

    if-lez p5, :cond_56

    .line 128
    iget v1, p0, Lcom/android/systemui/qs/PseudoGridView;->mVerticalSpacing:I

    add-int/2addr v0, v1

    :cond_56
    add-int/lit8 p5, p5, 0x1

    goto :goto_12

    :cond_59
    return-void
.end method

.method protected onMeasure(II)V
    .registers 16

    .line 64
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_70

    .line 67
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 69
    iget v0, p0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    add-int/lit8 v1, v0, -0x1

    iget v2, p0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    mul-int/2addr v1, v2

    sub-int v1, p1, v1

    div-int/2addr v1, v0

    const/high16 v0, 0x40000000  # 2.0f

    .line 70
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 73
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 74
    iget v3, p0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    add-int v4, v2, v3

    add-int/lit8 v4, v4, -0x1

    div-int/2addr v4, v3

    const/4 v3, 0x0

    move v5, v3

    move v6, v5

    :goto_28
    if-ge v5, v4, :cond_68

    .line 76
    iget v7, p0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    mul-int v8, v5, v7

    add-int/2addr v7, v8

    .line 77
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v10, v3

    move v9, v8

    :goto_35
    if-ge v9, v7, :cond_49

    .line 80
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 81
    invoke-virtual {v11, v1, v3}, Landroid/view/View;->measure(II)V

    .line 82
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_35

    .line 84
    :cond_49
    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    :goto_4d
    if-ge v8, v7, :cond_5f

    .line 86
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 87
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    if-eq v12, v10, :cond_5c

    .line 88
    invoke-virtual {v11, v1, v9}, Landroid/view/View;->measure(II)V

    :cond_5c
    add-int/lit8 v8, v8, 0x1

    goto :goto_4d

    :cond_5f
    add-int/2addr v6, v10

    if-lez v5, :cond_65

    .line 93
    iget v7, p0, Lcom/android/systemui/qs/PseudoGridView;->mVerticalSpacing:I

    add-int/2addr v6, v7

    :cond_65
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 97
    :cond_68
    invoke-static {v6, p2, v3}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void

    .line 65
    :cond_70
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Needs a maximum width"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
