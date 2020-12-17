.class public Lcom/meizu/common/widget/LimitedWHLinearLayout;
.super Landroid/widget/LinearLayout;
.source "LimitedWHLinearLayout.java"


# instance fields
.field private mMaxHeight:I

.field private mMaxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const p1, 0x7fffffff

    .line 25
    iput p1, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxHeight:I

    .line 26
    iput p1, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7fffffff

    .line 25
    iput p1, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxHeight:I

    .line 26
    iput p1, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxWidth:I

    return-void
.end method


# virtual methods
.method public getMaxHeight()I
    .registers 1

    .line 85
    iget p0, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxHeight:I

    return p0
.end method

.method public getMaxWidth()I
    .registers 1

    .line 101
    iget p0, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxWidth:I

    return p0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2

    .line 106
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 107
    const-class p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 8

    .line 48
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 50
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    .line 51
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    .line 55
    iget v2, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxHeight:I

    const/4 v3, 0x1

    const/high16 v4, 0x40000000  # 2.0f

    if-le v0, v2, :cond_18

    .line 57
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    move v0, v3

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 61
    :goto_19
    iget v2, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxWidth:I

    if-le v1, v2, :cond_22

    .line 63
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    move v0, v3

    :cond_22
    if-eqz v0, :cond_27

    .line 68
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_27
    return-void
.end method

.method public setMaxHeight(I)V
    .registers 2

    .line 77
    iput p1, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxHeight:I

    return-void
.end method

.method public setMaxWidth(I)V
    .registers 2

    .line 93
    iput p1, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxWidth:I

    return-void
.end method
