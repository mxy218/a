.class public Lflyme/support/v7/widget/FlymeAlertDialogLayout;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "FlymeAlertDialogLayout.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMaxHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lflyme/support/v7/widget/FlymeAlertDialogLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lflyme/support/v7/widget/FlymeAlertDialogLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7fffffff

    .line 36
    iput p2, p0, Lflyme/support/v7/widget/FlymeAlertDialogLayout;->mMaxHeight:I

    .line 49
    iput-object p1, p0, Lflyme/support/v7/widget/FlymeAlertDialogLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method private forceUniformWidth(II)V
    .registers 13

    .line 158
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, p1, :cond_3a

    .line 161
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 162
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_37

    .line 163
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 164
    iget v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_37

    .line 167
    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 168
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, v0

    move v6, p2

    .line 171
    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 172
    iput v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_3a
    return-void
.end method

.method private tryOnMeasure(II)Z
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v5

    move v5, v4

    :goto_e
    const/16 v7, 0x8

    if-ge v5, v3, :cond_30

    .line 70
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 71
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-ne v9, v7, :cond_1d

    goto :goto_2d

    .line 75
    :cond_1d
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v7

    .line 76
    sget v9, Landroidx/appcompat/R$id;->contentPanel:I

    if-eq v7, v9, :cond_29

    sget v9, Landroidx/appcompat/R$id;->customPanel:I

    if-ne v7, v9, :cond_2d

    :cond_29
    if-eqz v6, :cond_2c

    return v4

    :cond_2c
    move-object v6, v8

    :cond_2d
    :goto_2d
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_30
    if-nez v6, :cond_33

    return v4

    .line 88
    :cond_33
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 89
    iget v8, v0, Lflyme/support/v7/widget/FlymeAlertDialogLayout;->mMaxHeight:I

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 90
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    sub-int v10, v5, v9

    .line 95
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    move v13, v4

    move v12, v9

    move v9, v13

    :goto_53
    const/high16 v15, 0x40000000  # 2.0f

    if-ge v9, v11, :cond_b2

    .line 97
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 98
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v7, :cond_ab

    if-ne v4, v6, :cond_64

    goto :goto_ab

    .line 101
    :cond_64
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    iget v14, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v7, -0x1

    if-ne v14, v7, :cond_75

    .line 102
    invoke-static {v10, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v4, v1, v7}, Landroid/view/View;->measure(II)V

    goto :goto_95

    .line 103
    :cond_75
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v14, -0x2

    if-ne v7, v14, :cond_88

    const/high16 v7, -0x80000000

    .line 104
    invoke-static {v10, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v4, v1, v7}, Landroid/view/View;->measure(II)V

    goto :goto_95

    .line 106
    :cond_88
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v7, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v4, v1, v7}, Landroid/view/View;->measure(II)V

    .line 108
    :goto_95
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v12, v7

    sub-int v7, v5, v12

    .line 110
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    invoke-static {v13, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v4

    const/4 v14, 0x0

    if-gtz v7, :cond_a8

    return v14

    :cond_a8
    move v13, v4

    move v10, v7

    goto :goto_ac

    :cond_ab
    :goto_ab
    const/4 v14, 0x0

    :goto_ac
    add-int/lit8 v9, v9, 0x1

    move v4, v14

    const/16 v7, 0x8

    goto :goto_53

    :cond_b2
    move v14, v4

    const/high16 v4, -0x80000000

    .line 116
    invoke-static {v10, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v6, v1, v4}, Landroid/view/View;->measure(II)V

    .line 117
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-le v4, v10, :cond_c3

    return v14

    .line 120
    :cond_c3
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v12, v4

    .line 121
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    invoke-static {v13, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_d2
    if-ge v5, v3, :cond_eb

    .line 126
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 127
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_e8

    .line 128
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_e8
    add-int/lit8 v5, v5, 0x1

    goto :goto_d2

    .line 131
    :cond_eb
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v7

    add-int/2addr v5, v7

    add-int/2addr v6, v5

    .line 133
    invoke-static {v6, v1, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    const/4 v4, 0x0

    .line 134
    invoke-static {v12, v2, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v4

    .line 135
    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    if-eq v8, v15, :cond_106

    .line 140
    invoke-direct {v0, v3, v2}, Lflyme/support/v7/widget/FlymeAlertDialogLayout;->forceUniformWidth(II)V

    :cond_106
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 4

    .line 59
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/FlymeAlertDialogLayout;->tryOnMeasure(II)Z

    move-result v0

    if-nez v0, :cond_9

    .line 61
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    :cond_9
    return-void
.end method

.method public setMaxHeight(I)V
    .registers 2

    .line 53
    iput p1, p0, Lflyme/support/v7/widget/FlymeAlertDialogLayout;->mMaxHeight:I

    .line 54
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method
