.class public Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;
.super Landroid/widget/LinearLayout;
.source "ReverseLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;,
        Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$Reversable;
    }
.end annotation


# instance fields
.field private mIsAlternativeOrder:Z

.field private mIsLayoutReverse:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Landroid/view/ViewGroup;Z)V
    .registers 2

    .line 32
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->reverseGroup(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method private static reverseGroup(Landroid/view/ViewGroup;Z)V
    .registers 5

    const/4 v0, 0x0

    .line 159
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 160
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 161
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2, v1, p1}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->reverseParams(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;Z)V

    .line 164
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1b

    .line 165
    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->reverseGroup(Landroid/view/ViewGroup;Z)V

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1e
    return-void
.end method

.method private static reverseParams(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;Z)V
    .registers 6

    .line 107
    instance-of v0, p1, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$Reversable;

    if-eqz v0, :cond_a

    .line 108
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$Reversable;

    invoke-interface {v0, p2}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$Reversable;->reverse(Z)V

    .line 110
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    if-ne p2, v0, :cond_31

    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    if-ne p2, v0, :cond_31

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 112
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_31
    if-nez p0, :cond_34

    return-void

    .line 118
    :cond_34
    iget p1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 119
    iget p2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 120
    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method private updateOrder()V
    .registers 7

    .line 86
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    .line 87
    :goto_b
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->mIsAlternativeOrder:Z

    xor-int/2addr v0, v3

    .line 89
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->mIsLayoutReverse:Z

    if-eq v3, v0, :cond_3b

    .line 91
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 92
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1b
    if-ge v1, v3, :cond_27

    .line 94
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 96
    :cond_27
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    sub-int/2addr v3, v2

    :goto_2b
    if-ltz v3, :cond_39

    .line 98
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 99
    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_2b

    .line 101
    :cond_39
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->mIsLayoutReverse:Z

    :cond_3b
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 4

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->mIsLayoutReverse:Z

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->reverseParams(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;Z)V

    .line 53
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->mIsLayoutReverse:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    .line 54
    invoke-super {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_15

    .line 56
    :cond_12
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_15
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 62
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->mIsLayoutReverse:Z

    invoke-static {p2, p1, v0}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->reverseParams(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;Z)V

    .line 63
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->mIsLayoutReverse:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 64
    invoke-super {p0, p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_11

    .line 66
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_11
    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    .line 46
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 47
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->updateOrder()V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 2

    .line 72
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 73
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->updateOrder()V

    return-void
.end method

.method public setAlternativeOrder(Z)V
    .registers 2

    .line 77
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->mIsAlternativeOrder:Z

    .line 78
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->updateOrder()V

    return-void
.end method
