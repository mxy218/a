.class public Landroid/support/v7/widget/ActionMenuView;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "ActionMenuView.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;
.implements Landroid/support/v7/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ActionMenuView$LayoutParams;,
        Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;,
        Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;
    }
.end annotation


# instance fields
.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field private mMinCellSize:I

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 81
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->setBaselineAligned(Z)V

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42600000  # 56.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 83
    iput v1, p0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    const/high16 v1, 0x40800000  # 4.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 84
    iput v0, p0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 85
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 86
    iput p2, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    return-void
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .registers 10

    .line 404
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 406
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p4

    .line 408
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    .line 409
    invoke-static {v1, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 411
    instance-of p4, p0, Landroid/support/v7/view/menu/ActionMenuItemView;

    if-eqz p4, :cond_1b

    move-object p4, p0

    check-cast p4, Landroid/support/v7/view/menu/ActionMenuItemView;

    goto :goto_1c

    :cond_1b
    const/4 p4, 0x0

    :goto_1c
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_28

    .line 413
    invoke-virtual {p4}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result p4

    if-eqz p4, :cond_28

    move p4, v1

    goto :goto_29

    :cond_28
    move p4, v2

    :goto_29
    const/4 v3, 0x2

    if-lez p2, :cond_4c

    if-eqz p4, :cond_30

    if-lt p2, v3, :cond_4c

    :cond_30
    mul-int/2addr p2, p1

    const/high16 v4, -0x80000000

    .line 417
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 419
    invoke-virtual {p0, p2, p3}, Landroid/view/View;->measure(II)V

    .line 421
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 422
    div-int v4, p2, p1

    .line 423
    rem-int/2addr p2, p1

    if-eqz p2, :cond_45

    add-int/lit8 v4, v4, 0x1

    :cond_45
    if-eqz p4, :cond_4a

    if-ge v4, v3, :cond_4a

    goto :goto_4d

    :cond_4a
    move v3, v4

    goto :goto_4d

    :cond_4c
    move v3, v2

    .line 427
    :goto_4d
    iget-boolean p2, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez p2, :cond_54

    if-eqz p4, :cond_54

    goto :goto_55

    :cond_54
    move v1, v2

    .line 428
    :goto_55
    iput-boolean v1, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 430
    iput v3, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int/2addr p1, v3

    const/high16 p2, 0x40000000  # 2.0f

    .line 432
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Landroid/view/View;->measure(II)V

    return v3
.end method

.method private onMeasureExactFormat(II)V
    .registers 32

    move-object/from16 v0, p0

    .line 178
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 179
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 180
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 182
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 183
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, -0x2

    move/from16 v7, p2

    .line 185
    invoke-static {v7, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    sub-int/2addr v2, v4

    .line 191
    iget v4, v0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    div-int v7, v2, v4

    .line 192
    rem-int v8, v2, v4

    const/4 v9, 0x0

    if-nez v7, :cond_35

    .line 196
    invoke-virtual {v0, v2, v9}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void

    .line 200
    :cond_35
    div-int/2addr v8, v7

    add-int/2addr v4, v8

    .line 212
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    move v14, v7

    move v7, v9

    move v10, v7

    move v12, v10

    move v13, v12

    move v15, v13

    move/from16 v16, v15

    const-wide/16 v17, 0x0

    :goto_45
    if-ge v7, v8, :cond_c5

    .line 214
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 215
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v9

    move/from16 v19, v3

    const/16 v3, 0x8

    if-ne v9, v3, :cond_57

    goto/16 :goto_bf

    .line 217
    :cond_57
    instance-of v3, v11, Landroid/support/v7/view/menu/ActionMenuItemView;

    add-int/lit8 v13, v13, 0x1

    if-eqz v3, :cond_66

    .line 223
    iget v9, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v20, v13

    const/4 v13, 0x0

    invoke-virtual {v11, v9, v13, v9, v13}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_69

    :cond_66
    move/from16 v20, v13

    const/4 v13, 0x0

    .line 226
    :goto_69
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 227
    iput-boolean v13, v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 228
    iput v13, v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 229
    iput v13, v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 230
    iput-boolean v13, v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 231
    iput v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 232
    iput v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eqz v3, :cond_88

    .line 233
    move-object v3, v11

    check-cast v3, Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result v3

    if-eqz v3, :cond_88

    const/4 v3, 0x1

    goto :goto_89

    :cond_88
    const/4 v3, 0x0

    :goto_89
    iput-boolean v3, v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 236
    iget-boolean v3, v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v3, :cond_91

    const/4 v3, 0x1

    goto :goto_92

    :cond_91
    move v3, v14

    .line 238
    :goto_92
    invoke-static {v11, v4, v3, v6, v5}, Landroid/support/v7/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v3

    .line 241
    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 242
    iget-boolean v15, v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-eqz v15, :cond_a0

    add-int/lit8 v16, v16, 0x1

    .line 243
    :cond_a0
    iget-boolean v9, v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v9, :cond_a5

    const/4 v12, 0x1

    :cond_a5
    sub-int/2addr v14, v3

    .line 246
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/4 v9, 0x1

    if-ne v3, v9, :cond_bb

    shl-int v3, v9, v7

    move v11, v10

    int-to-long v9, v3

    or-long v9, v17, v9

    move-wide/from16 v17, v9

    move v10, v11

    goto :goto_bc

    :cond_bb
    move v11, v10

    :goto_bc
    move v15, v13

    move/from16 v13, v20

    :goto_bf
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v19

    const/4 v9, 0x0

    goto :goto_45

    :cond_c5
    move/from16 v19, v3

    const/4 v3, 0x2

    if-eqz v12, :cond_ce

    if-ne v13, v3, :cond_ce

    const/4 v5, 0x1

    goto :goto_cf

    :cond_ce
    const/4 v5, 0x0

    :goto_cf
    const/4 v7, 0x0

    :goto_d0
    const-wide/16 v20, 0x1

    if-lez v16, :cond_170

    if-lez v14, :cond_170

    const v9, 0x7fffffff

    move v3, v9

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v22, 0x0

    :goto_de
    if-ge v9, v8, :cond_10f

    .line 263
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 264
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    move/from16 v25, v7

    move-object/from16 v7, v24

    check-cast v7, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move/from16 v24, v10

    .line 267
    iget-boolean v10, v7, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-nez v10, :cond_f5

    goto :goto_108

    .line 270
    :cond_f5
    iget v7, v7, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ge v7, v3, :cond_100

    shl-long v10, v20, v9

    move v3, v7

    move-wide/from16 v22, v10

    const/4 v11, 0x1

    goto :goto_108

    :cond_100
    if-ne v7, v3, :cond_108

    shl-long v26, v20, v9

    or-long v22, v22, v26

    add-int/lit8 v11, v11, 0x1

    :cond_108
    :goto_108
    add-int/lit8 v9, v9, 0x1

    move/from16 v10, v24

    move/from16 v7, v25

    goto :goto_de

    :cond_10f
    move/from16 v25, v7

    move/from16 v24, v10

    or-long v17, v17, v22

    if-le v11, v14, :cond_11b

    move v11, v1

    move/from16 v26, v2

    goto :goto_177

    :cond_11b
    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x0

    :goto_11e
    if-ge v7, v8, :cond_16a

    .line 289
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 290
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move/from16 v26, v2

    const/4 v11, 0x1

    shl-int v2, v11, v7

    move v11, v1

    int-to-long v1, v2

    and-long v20, v22, v1

    const-wide/16 v27, 0x0

    cmp-long v20, v20, v27

    if-nez v20, :cond_142

    .line 293
    iget v9, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v9, v3, :cond_13f

    or-long v17, v17, v1

    :cond_13f
    move/from16 v20, v3

    goto :goto_162

    :cond_142
    if-eqz v5, :cond_156

    .line 297
    iget-boolean v1, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-eqz v1, :cond_156

    const/4 v1, 0x1

    if-ne v14, v1, :cond_156

    .line 299
    iget v2, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    add-int v1, v2, v4

    move/from16 v20, v3

    const/4 v3, 0x0

    invoke-virtual {v9, v1, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_158

    :cond_156
    move/from16 v20, v3

    .line 301
    :goto_158
    iget v1, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 302
    iput-boolean v2, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    add-int/lit8 v14, v14, -0x1

    :goto_162
    add-int/lit8 v7, v7, 0x1

    move v1, v11

    move/from16 v3, v20

    move/from16 v2, v26

    goto :goto_11e

    :cond_16a
    move/from16 v10, v24

    const/4 v3, 0x2

    const/4 v7, 0x1

    goto/16 :goto_d0

    :cond_170
    move v11, v1

    move/from16 v26, v2

    move/from16 v25, v7

    move/from16 v24, v10

    :goto_177
    const/4 v1, 0x1

    if-nez v12, :cond_17e

    if-ne v13, v1, :cond_17e

    move v2, v1

    goto :goto_17f

    :cond_17e
    const/4 v2, 0x0

    :goto_17f
    if-lez v14, :cond_232

    const-wide/16 v9, 0x0

    cmp-long v3, v17, v9

    if-eqz v3, :cond_232

    sub-int/2addr v13, v1

    if-lt v14, v13, :cond_18e

    if-nez v2, :cond_18e

    if-le v15, v1, :cond_232

    .line 315
    :cond_18e
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->bitCount(J)I

    move-result v1

    int-to-float v1, v1

    if-nez v2, :cond_1cd

    and-long v2, v17, v20

    const-wide/16 v9, 0x0

    cmp-long v2, v2, v9

    const/high16 v3, 0x3f000000  # 0.5f

    const/4 v13, 0x0

    if-eqz v2, :cond_1af

    .line 320
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 321
    iget-boolean v2, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v2, :cond_1af

    sub-float/2addr v1, v3

    :cond_1af
    add-int/lit8 v2, v8, -0x1

    const/4 v5, 0x1

    shl-int v7, v5, v2

    int-to-long v9, v7

    and-long v9, v17, v9

    const-wide/16 v15, 0x0

    cmp-long v5, v9, v15

    if-eqz v5, :cond_1ce

    .line 324
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 325
    iget-boolean v2, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v2, :cond_1ce

    sub-float/2addr v1, v3

    goto :goto_1ce

    :cond_1cd
    const/4 v13, 0x0

    :cond_1ce
    :goto_1ce
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1d8

    mul-int/2addr v14, v4

    int-to-float v2, v14

    div-float/2addr v2, v1

    float-to-int v9, v2

    goto :goto_1d9

    :cond_1d8
    move v9, v13

    :goto_1d9
    move v1, v13

    :goto_1da
    if-ge v1, v8, :cond_233

    const/4 v2, 0x1

    shl-int v3, v2, v1

    int-to-long v2, v3

    and-long v2, v17, v2

    const-wide/16 v14, 0x0

    cmp-long v2, v2, v14

    if-nez v2, :cond_1eb

    const/4 v2, 0x1

    const/4 v5, 0x2

    goto :goto_22f

    .line 335
    :cond_1eb
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 336
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 337
    instance-of v2, v2, Landroid/support/v7/view/menu/ActionMenuItemView;

    if-eqz v2, :cond_20f

    .line 339
    iput v9, v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    const/4 v2, 0x1

    .line 340
    iput-boolean v2, v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v1, :cond_20a

    .line 341
    iget-boolean v2, v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v2, :cond_20a

    neg-int v2, v9

    const/4 v5, 0x2

    .line 344
    div-int/2addr v2, v5

    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_20b

    :cond_20a
    const/4 v5, 0x2

    :goto_20b
    const/4 v2, 0x1

    const/16 v25, 0x1

    goto :goto_22f

    :cond_20f
    const/4 v5, 0x2

    .line 347
    iget-boolean v2, v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v2, :cond_220

    .line 348
    iput v9, v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    const/4 v2, 0x1

    .line 349
    iput-boolean v2, v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    neg-int v7, v9

    .line 350
    div-int/2addr v7, v5

    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v25, v2

    goto :goto_22f

    :cond_220
    const/4 v2, 0x1

    if-eqz v1, :cond_227

    .line 357
    div-int/lit8 v7, v9, 0x2

    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_227
    add-int/lit8 v7, v8, -0x1

    if-eq v1, v7, :cond_22f

    .line 360
    div-int/lit8 v7, v9, 0x2

    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_22f
    :goto_22f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1da

    :cond_232
    const/4 v13, 0x0

    :cond_233
    const/high16 v1, 0x40000000  # 2.0f

    if-eqz v25, :cond_258

    :goto_237
    if-ge v13, v8, :cond_258

    .line 371
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 372
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 374
    iget-boolean v5, v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v5, :cond_248

    goto :goto_255

    .line 376
    :cond_248
    iget v5, v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int/2addr v5, v4

    iget v3, v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    add-int/2addr v5, v3

    .line 377
    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v3, v6}, Landroid/view/View;->measure(II)V

    :goto_255
    add-int/lit8 v13, v13, 0x1

    goto :goto_237

    :cond_258
    if-eq v11, v1, :cond_25d

    move/from16 v1, v24

    goto :goto_25f

    :cond_25d
    move/from16 v1, v19

    :goto_25f
    move/from16 v2, v26

    .line 386
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    if-eqz p1, :cond_8

    .line 610
    instance-of p0, p1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public dismissPopupMenus()V
    .registers 1

    .line 723
    iget-object p0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-nez p0, :cond_5

    return-void

    .line 724
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    const/4 p0, 0x0

    throw p0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .registers 2

    .line 583
    new-instance p0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(II)V

    const/16 v0, 0x10

    .line 585
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    return-object p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .registers 1

    .line 48
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 1

    .line 48
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .registers 3

    .line 591
    new-instance v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .registers 2

    if-eqz p1, :cond_1c

    .line 597
    instance-of p0, p1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    if-eqz p0, :cond_e

    new-instance p0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    check-cast p1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(Landroid/support/v7/widget/ActionMenuView$LayoutParams;)V

    goto :goto_13

    :cond_e
    new-instance p0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 600
    :goto_13
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gtz p1, :cond_1b

    const/16 p1, 0x10

    .line 601
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    :cond_1b
    return-object p0

    .line 605
    :cond_1c
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .registers 2

    .line 48
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .registers 2

    .line 48
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 48
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 48
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected hasSupportDividerBeforeChildAt(I)Z
    .registers 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, p1, -0x1

    .line 736
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 737
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 739
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-ge p1, p0, :cond_1f

    instance-of p0, v1, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    if-eqz p0, :cond_1f

    .line 740
    check-cast v1, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v1}, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result p0

    or-int/2addr v0, p0

    :cond_1f
    if-lez p1, :cond_2c

    .line 742
    instance-of p0, v2, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    if-eqz p0, :cond_2c

    .line 743
    check-cast v2, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v2}, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result p0

    or-int/2addr v0, p0

    :cond_2c
    return v0
.end method

.method public invokeItem(Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .registers 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 625
    iget-object p0, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    const/4 p0, 0x0

    throw p0
.end method

.method public isOverflowMenuShowing()Z
    .registers 1

    .line 710
    iget-object p0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    const/4 p0, 0x0

    throw p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 128
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 130
    iget-object p0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-nez p0, :cond_8

    return-void

    :cond_8
    const/4 p1, 0x0

    .line 131
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuPresenter;->updateMenuView(Z)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .line 544
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 545
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->dismissPopupMenus()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 23

    move-object/from16 v0, p0

    .line 439
    iget-boolean v1, v0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-nez v1, :cond_a

    .line 440
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    return-void

    .line 444
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int v2, p5, p3

    .line 445
    div-int/lit8 v2, v2, 0x2

    .line 446
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getDividerWidth()I

    move-result v3

    sub-int v4, p4, p2

    .line 450
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int v5, v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    .line 452
    invoke-static/range {p0 .. p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v6

    move v10, v5

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2b
    const/16 v11, 0x8

    const/4 v12, 0x1

    if-ge v5, v1, :cond_8f

    .line 454
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 455
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-ne v14, v11, :cond_3b

    goto :goto_8c

    .line 459
    :cond_3b
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 460
    iget-boolean v14, v11, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v14, :cond_7b

    .line 461
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 462
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v14

    if-eqz v14, :cond_50

    add-int/2addr v8, v3

    .line 465
    :cond_50
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    if-eqz v6, :cond_60

    .line 469
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v15

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v15, v11

    add-int v11, v15, v8

    goto :goto_70

    .line 472
    :cond_60
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v11, v15, v11

    sub-int v15, v11, v8

    .line 475
    :goto_70
    div-int/lit8 v16, v14, 0x2

    sub-int v7, v2, v16

    add-int/2addr v14, v7

    .line 477
    invoke-virtual {v13, v15, v7, v11, v14}, Landroid/view/View;->layout(IIII)V

    sub-int/2addr v10, v8

    move v8, v12

    goto :goto_8c

    .line 482
    :cond_7b
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v7, v12

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v7, v11

    sub-int/2addr v10, v7

    .line 485
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v7

    add-int/lit8 v9, v9, 0x1

    :goto_8c
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    :cond_8f
    if-ne v1, v12, :cond_ae

    if-nez v8, :cond_ae

    const/4 v3, 0x0

    .line 494
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 495
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 496
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 497
    div-int/lit8 v4, v4, 0x2

    .line 498
    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    .line 499
    div-int/lit8 v5, v3, 0x2

    sub-int/2addr v2, v5

    add-int/2addr v1, v4

    add-int/2addr v3, v2

    .line 500
    invoke-virtual {v0, v4, v2, v1, v3}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_ae
    xor-int/lit8 v3, v8, 0x1

    sub-int/2addr v9, v3

    if-lez v9, :cond_b7

    .line 505
    div-int v7, v10, v9

    const/4 v3, 0x0

    goto :goto_b9

    :cond_b7
    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_b9
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-eqz v6, :cond_fc

    .line 508
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    :goto_c8
    if-ge v3, v1, :cond_134

    .line 510
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 511
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 512
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_f9

    iget-boolean v8, v7, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v8, :cond_df

    goto :goto_f9

    .line 516
    :cond_df
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v5, v8

    .line 517
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 518
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 519
    div-int/lit8 v10, v9, 0x2

    sub-int v10, v2, v10

    sub-int v12, v5, v8

    add-int/2addr v9, v10

    .line 520
    invoke-virtual {v6, v12, v10, v5, v9}, Landroid/view/View;->layout(IIII)V

    .line 521
    iget v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v8, v6

    add-int/2addr v8, v4

    sub-int/2addr v5, v8

    :cond_f9
    :goto_f9
    add-int/lit8 v3, v3, 0x1

    goto :goto_c8

    .line 524
    :cond_fc
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    :goto_100
    if-ge v3, v1, :cond_134

    .line 526
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 527
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 528
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_131

    iget-boolean v8, v7, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v8, :cond_117

    goto :goto_131

    .line 532
    :cond_117
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v8

    .line 533
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 534
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 535
    div-int/lit8 v10, v9, 0x2

    sub-int v10, v2, v10

    add-int v12, v5, v8

    add-int/2addr v9, v10

    .line 536
    invoke-virtual {v6, v5, v10, v12, v9}, Landroid/view/View;->layout(IIII)V

    .line 537
    iget v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v8, v6

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    :cond_131
    :goto_131
    add-int/lit8 v3, v3, 0x1

    goto :goto_100

    :cond_134
    return-void
.end method

.method protected onMeasure(II)V
    .registers 8

    .line 147
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    .line 148
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x40000000  # 2.0f

    if-ne v1, v4, :cond_e

    move v1, v2

    goto :goto_f

    :cond_e
    move v1, v3

    :goto_f
    iput-boolean v1, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    .line 150
    iget-boolean v1, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-eq v0, v1, :cond_17

    .line 151
    iput v3, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 156
    :cond_17
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 157
    iget-boolean v1, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v1, :cond_2f

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v1, :cond_2f

    iget v4, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I

    if-ne v0, v4, :cond_28

    goto :goto_2f

    .line 158
    :cond_28
    iput v0, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 159
    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    const/4 p0, 0x0

    throw p0

    .line 162
    :cond_2f
    :goto_2f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 163
    iget-boolean v1, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v1, :cond_3d

    if-lez v0, :cond_3d

    .line 164
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/ActionMenuView;->onMeasureExactFormat(II)V

    goto :goto_54

    :cond_3d
    move v1, v3

    :goto_3e
    if-ge v1, v0, :cond_51

    .line 168
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 169
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 170
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 172
    :cond_51
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    :goto_54
    return-void
.end method

.method public peekMenu()Landroid/support/v7/view/menu/MenuBuilder;
    .registers 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 682
    iget-object p0, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object p0
.end method

.method public showOverflowMenu()Z
    .registers 1

    .line 691
    iget-object p0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    const/4 p0, 0x0

    throw p0
.end method
