.class public Lcom/android/systemui/globalactions/ListGridLayout;
.super Landroid/widget/LinearLayout;
.source "ListGridLayout.java"


# instance fields
.field private final mConfigs:[[I

.field private mCurrentCount:I

.field private mExpectedCount:I

.field private mReverseItems:Z

.field private mReverseSublists:Z

.field private mSwapRowsAndColumns:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 45
    iput p1, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mCurrentCount:I

    const/16 p2, 0xa

    new-array p2, p2, [[I

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 51
    fill-array-data v1, :array_5e

    aput-object v1, p2, p1

    new-array p1, v0, [I

    fill-array-data p1, :array_66

    const/4 v1, 0x1

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_6e

    aput-object p1, p2, v0

    new-array p1, v0, [I

    fill-array-data p1, :array_76

    const/4 v1, 0x3

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_7e

    const/4 v1, 0x4

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_86

    const/4 v1, 0x5

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_8e

    const/4 v1, 0x6

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_96

    const/4 v1, 0x7

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_9e

    const/16 v1, 0x8

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_a6

    const/16 v0, 0x9

    aput-object p1, p2, v0

    iput-object p2, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mConfigs:[[I

    return-void

    :array_5e
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_66
    .array-data 4
        0x1
        0x1
    .end array-data

    :array_6e
    .array-data 4
        0x1
        0x2
    .end array-data

    :array_76
    .array-data 4
        0x1
        0x3
    .end array-data

    :array_7e
    .array-data 4
        0x2
        0x2
    .end array-data

    :array_86
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_8e
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_96
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_9e
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_a6
    .array-data 4
        0x3
        0x3
    .end array-data
.end method

.method private getConfig()[I
    .registers 3

    .line 182
    iget v0, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mExpectedCount:I

    if-gez v0, :cond_a

    .line 183
    iget-object p0, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mConfigs:[[I

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0

    .line 185
    :cond_a
    invoke-direct {p0}, Lcom/android/systemui/globalactions/ListGridLayout;->getMaxElementCount()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mExpectedCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 186
    iget-object p0, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mConfigs:[[I

    aget-object p0, p0, v0

    return-object p0
.end method

.method private getMaxElementCount()I
    .registers 1

    .line 178
    iget-object p0, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mConfigs:[[I

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private getParentViewIndex(IZZ)I
    .registers 6

    .line 158
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/ListGridLayout;->getRowCount()I

    move-result v0

    if-eqz p3, :cond_e

    .line 160
    div-int/2addr p1, v0

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    goto :goto_f

    .line 162
    :cond_e
    rem-int/2addr p1, v0

    :goto_f
    if-eqz p2, :cond_15

    .line 165
    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/ListGridLayout;->reverseSublistIndex(I)I

    move-result p1

    :cond_15
    return p1
.end method

.method private reverseSublistIndex(I)I
    .registers 2

    .line 153
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p0

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public addItem(Landroid/view/View;)V
    .registers 5

    .line 116
    iget v0, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mCurrentCount:I

    iget-boolean v1, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mReverseSublists:Z

    iget-boolean v2, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mSwapRowsAndColumns:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/globalactions/ListGridLayout;->getParentView(IZZ)Landroid/view/ViewGroup;

    move-result-object v0

    .line 117
    iget-boolean v1, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mReverseItems:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 118
    invoke-virtual {v0, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_16

    .line 120
    :cond_13
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 122
    :goto_16
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 123
    iget p1, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mCurrentCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mCurrentCount:I

    return-void
.end method

.method protected getParentView(IZZ)Landroid/view/ViewGroup;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/ListGridLayout;->getRowCount()I

    move-result v0

    if-eqz v0, :cond_1c

    if-gez p1, :cond_9

    goto :goto_1c

    .line 142
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/globalactions/ListGridLayout;->getMaxElementCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/globalactions/ListGridLayout;->getParentViewIndex(IZZ)I

    move-result p1

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/ListGridLayout;->getSublist(I)Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0

    :cond_1c
    :goto_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRowCount()I
    .registers 2

    .line 193
    invoke-direct {p0}, Lcom/android/systemui/globalactions/ListGridLayout;->getConfig()[I

    move-result-object p0

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method protected getSublist(I)Landroid/view/ViewGroup;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 149
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method public removeAllItems()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 95
    :goto_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 96
    invoke-virtual {p0, v1}, Lcom/android/systemui/globalactions/ListGridLayout;->getSublist(I)Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 98
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    const/16 v3, 0x8

    .line 99
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 102
    :cond_19
    iput v0, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mCurrentCount:I

    return-void
.end method

.method public setExpectedCount(I)V
    .registers 2

    .line 174
    iput p1, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mExpectedCount:I

    return-void
.end method

.method public setReverseItems(Z)V
    .registers 2

    .line 88
    iput-boolean p1, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mReverseItems:Z

    return-void
.end method

.method public setReverseSublists(Z)V
    .registers 2

    .line 80
    iput-boolean p1, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mReverseSublists:Z

    return-void
.end method

.method public setSwapRowsAndColumns(Z)V
    .registers 2

    .line 73
    iput-boolean p1, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mSwapRowsAndColumns:Z

    return-void
.end method
