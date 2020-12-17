.class public Lcom/android/settings/widget/BottomLabelLayout;
.super Landroid/widget/LinearLayout;
.source "BottomLabelLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private isStacked()Z
    .registers 2

    .line 95
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 8

    .line 48
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 49
    invoke-direct {p0}, Lcom/android/settings/widget/BottomLabelLayout;->isStacked()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1b

    .line 56
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/high16 v4, 0x40000000  # 2.0f

    if-ne v3, v4, :cond_1b

    const/high16 v3, -0x80000000

    .line 57
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    move v3, v2

    goto :goto_1e

    :cond_1b
    const/4 v0, 0x0

    move v3, v0

    move v0, p1

    .line 65
    :goto_1e
    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    if-nez v1, :cond_32

    .line 67
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidthAndState()I

    move-result v0

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_32

    .line 71
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/BottomLabelLayout;->setStacked(Z)V

    goto :goto_33

    :cond_32
    move v2, v3

    :goto_33
    if-eqz v2, :cond_38

    .line 78
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_38
    return-void
.end method

.method setStacked(Z)V
    .registers 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 85
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    if-eqz p1, :cond_9

    const v0, 0x800003

    goto :goto_b

    :cond_9
    const/16 v0, 0x50

    .line 86
    :goto_b
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v0, 0x7f0a06a3

    .line 88
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_20

    if-eqz p1, :cond_1c

    const/16 p1, 0x8

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    .line 90
    :goto_1d
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_20
    return-void
.end method
