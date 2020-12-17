.class public Landroidx/leanback/widget/ScaleFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ScaleFrameLayout.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mChildScale:F

.field private mLayoutScaleX:F

.field private mLayoutScaleY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Landroidx/leanback/widget/ScaleFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/ScaleFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x3f800000  # 1.0f

    .line 37
    iput p1, p0, Landroidx/leanback/widget/ScaleFrameLayout;->mLayoutScaleX:F

    .line 38
    iput p1, p0, Landroidx/leanback/widget/ScaleFrameLayout;->mLayoutScaleY:F

    .line 40
    iput p1, p0, Landroidx/leanback/widget/ScaleFrameLayout;->mChildScale:F

    return-void
.end method

.method private static getScaledMeasureSpec(IF)I
    .registers 3

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_7

    goto :goto_19

    .line 183
    :cond_7
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    const/high16 p1, 0x3f000000  # 0.5f

    add-float/2addr v0, p1

    float-to-int p1, v0

    .line 184
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    .line 182
    invoke-static {p1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    :goto_19
    return p0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 81
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget p2, p0, Landroidx/leanback/widget/ScaleFrameLayout;->mChildScale:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 83
    iget p0, p0, Landroidx/leanback/widget/ScaleFrameLayout;->mChildScale:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .registers 5

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 91
    iget p3, p0, Landroidx/leanback/widget/ScaleFrameLayout;->mChildScale:F

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleX(F)V

    .line 92
    iget p0, p0, Landroidx/leanback/widget/ScaleFrameLayout;->mChildScale:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    :cond_10
    return p2
.end method

.method protected onLayout(ZIIII)V
    .registers 22

    move-object/from16 v0, p0

    .line 99
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    .line 102
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    .line 104
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPivotX()F

    move-result v5

    sub-float/2addr v4, v5

    goto :goto_1c

    .line 105
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPivotX()F

    move-result v4

    .line 106
    :goto_1c
    iget v5, v0, Landroidx/leanback/widget/ScaleFrameLayout;->mLayoutScaleX:F

    const/high16 v6, 0x3f800000  # 1.0f

    cmpl-float v5, v5, v6

    const/high16 v7, 0x3f000000  # 0.5f

    if-eqz v5, :cond_40

    .line 107
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v5

    iget v8, v0, Landroidx/leanback/widget/ScaleFrameLayout;->mLayoutScaleX:F

    div-float v9, v4, v8

    sub-float v9, v4, v9

    add-float/2addr v9, v7

    float-to-int v9, v9

    add-int/2addr v5, v9

    sub-int v9, p4, p2

    int-to-float v9, v9

    sub-float/2addr v9, v4

    div-float/2addr v9, v8

    add-float/2addr v9, v4

    add-float/2addr v9, v7

    float-to-int v8, v9

    .line 109
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v9

    goto :goto_4a

    .line 111
    :cond_40
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v5

    sub-int v8, p4, p2

    .line 112
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v9

    :goto_4a
    sub-int/2addr v8, v9

    .line 116
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPivotY()F

    move-result v9

    .line 117
    iget v10, v0, Landroidx/leanback/widget/ScaleFrameLayout;->mLayoutScaleY:F

    cmpl-float v6, v10, v6

    if-eqz v6, :cond_6f

    .line 118
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v6

    iget v10, v0, Landroidx/leanback/widget/ScaleFrameLayout;->mLayoutScaleY:F

    div-float v11, v9, v10

    sub-float v11, v9, v11

    add-float/2addr v11, v7

    float-to-int v11, v11

    add-int/2addr v6, v11

    sub-int v11, p5, p3

    int-to-float v11, v11

    sub-float/2addr v11, v9

    div-float/2addr v11, v10

    add-float/2addr v11, v9

    add-float/2addr v11, v7

    float-to-int v7, v11

    .line 120
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v10

    goto :goto_79

    .line 122
    :cond_6f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v6

    sub-int v7, p5, p3

    .line 123
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v10

    :goto_79
    sub-int/2addr v7, v10

    const/4 v10, 0x0

    :goto_7b
    if-ge v10, v1, :cond_fe

    .line 127
    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 128
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_f7

    .line 129
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 131
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 132
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 137
    iget v15, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v3, -0x1

    if-ne v15, v3, :cond_9f

    const v15, 0x800033

    .line 142
    :cond_9f
    invoke-static {v15, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    and-int/lit8 v15, v15, 0x70

    and-int/lit8 v3, v3, 0x7

    const/4 v0, 0x1

    if-eq v3, v0, :cond_b6

    const/4 v0, 0x5

    if-eq v3, v0, :cond_b1

    .line 155
    iget v0, v12, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v5

    goto :goto_c2

    :cond_b1
    sub-int v0, v8, v13

    .line 151
    iget v3, v12, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_c1

    :cond_b6
    sub-int v0, v8, v5

    sub-int/2addr v0, v13

    .line 147
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v5

    iget v3, v12, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v3

    iget v3, v12, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_c1
    sub-int/2addr v0, v3

    :goto_c2
    const/16 v3, 0x10

    if-eq v15, v3, :cond_da

    const/16 v3, 0x30

    if-eq v15, v3, :cond_d7

    const/16 v3, 0x50

    if-eq v15, v3, :cond_d2

    .line 170
    iget v3, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_d0
    add-int/2addr v3, v6

    goto :goto_e6

    :cond_d2
    sub-int v3, v7, v14

    .line 167
    iget v12, v12, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_e5

    .line 160
    :cond_d7
    iget v3, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_d0

    :cond_da
    sub-int v3, v7, v6

    sub-int/2addr v3, v14

    .line 163
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v6

    iget v15, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v15

    iget v12, v12, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_e5
    sub-int/2addr v3, v12

    :goto_e6
    add-int/2addr v13, v0

    add-int/2addr v14, v3

    .line 173
    invoke-virtual {v11, v0, v3, v13, v14}, Landroid/view/View;->layout(IIII)V

    int-to-float v0, v0

    sub-float v0, v4, v0

    .line 175
    invoke-virtual {v11, v0}, Landroid/view/View;->setPivotX(F)V

    int-to-float v0, v3

    sub-float v0, v9, v0

    .line 176
    invoke-virtual {v11, v0}, Landroid/view/View;->setPivotY(F)V

    :cond_f7
    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_7b

    :cond_fe
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 189
    iget v0, p0, Landroidx/leanback/widget/ScaleFrameLayout;->mLayoutScaleX:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_13

    iget v0, p0, Landroidx/leanback/widget/ScaleFrameLayout;->mLayoutScaleY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_f

    goto :goto_13

    .line 198
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_3b

    .line 190
    :cond_13
    :goto_13
    iget v0, p0, Landroidx/leanback/widget/ScaleFrameLayout;->mLayoutScaleX:F

    .line 191
    invoke-static {p1, v0}, Landroidx/leanback/widget/ScaleFrameLayout;->getScaledMeasureSpec(IF)I

    move-result p1

    .line 192
    iget v0, p0, Landroidx/leanback/widget/ScaleFrameLayout;->mLayoutScaleY:F

    .line 193
    invoke-static {p2, v0}, Landroidx/leanback/widget/ScaleFrameLayout;->getScaledMeasureSpec(IF)I

    move-result p2

    .line 194
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 195
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Landroidx/leanback/widget/ScaleFrameLayout;->mLayoutScaleX:F

    mul-float/2addr p1, p2

    const/high16 p2, 0x3f000000  # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 196
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroidx/leanback/widget/ScaleFrameLayout;->mLayoutScaleY:F

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    float-to-int p2, v0

    .line 195
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    :goto_3b
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 207
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
