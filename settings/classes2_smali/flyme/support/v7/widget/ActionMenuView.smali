.class public Lflyme/support/v7/widget/ActionMenuView;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "ActionMenuView.java"

# interfaces
.implements Lflyme/support/v7/view/menu/MenuBuilder$ItemInvoker;
.implements Lflyme/support/v7/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/widget/ActionMenuView$LayoutParams;,
        Lflyme/support/v7/widget/ActionMenuView$ActionMenuChildView;,
        Lflyme/support/v7/widget/ActionMenuView$ActionMenuPresenterCallback;,
        Lflyme/support/v7/widget/ActionMenuView$MenuBuilderCallback;,
        Lflyme/support/v7/widget/ActionMenuView$OnMenuItemClickListener;
    }
.end annotation


# instance fields
.field private mActionMenuPresenterCallback:Lflyme/support/v7/view/menu/MenuPresenter$Callback;

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mHasOverflow:Z

.field private mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

.field private mMenuBuilderCallback:Lflyme/support/v7/view/menu/MenuBuilder$Callback;

.field private mMinCellSize:I

.field private mOnMenuItemClickListener:Lflyme/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, v0}, Lflyme/support/v7/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 92
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 93
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->setBaselineAligned(Z)V

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42600000  # 56.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 95
    iput v1, p0, Lflyme/support/v7/widget/ActionMenuView;->mMinCellSize:I

    const/high16 v1, 0x40800000  # 4.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 96
    iput v0, p0, Lflyme/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 97
    iput-object p1, p0, Lflyme/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 98
    iput p2, p0, Lflyme/support/v7/widget/ActionMenuView;->mPopupTheme:I

    .line 100
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    return-void
.end method

.method static synthetic access$200(Lflyme/support/v7/widget/ActionMenuView;)Lflyme/support/v7/widget/ActionMenuView$OnMenuItemClickListener;
    .registers 1

    .line 49
    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuView;->mOnMenuItemClickListener:Lflyme/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lflyme/support/v7/widget/ActionMenuView;)Lflyme/support/v7/view/menu/MenuBuilder$Callback;
    .registers 1

    .line 49
    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuView;->mMenuBuilderCallback:Lflyme/support/v7/view/menu/MenuBuilder$Callback;

    return-object p0
.end method

.method private applyFlymeStyle(Lflyme/support/v7/widget/ActionMenuView$LayoutParams;II)V
    .registers 10

    .line 1100
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lflyme/support/v7/appcompat/R$dimen;->mz_action_overflow_btn_margin_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1101
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lflyme/support/v7/appcompat/R$dimen;->mz_action_menu_item_last_margin_right:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1102
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lflyme/support/v7/appcompat/R$dimen;->mz_action_menu_item_next_overflow_margin_right:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1103
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lflyme/support/v7/appcompat/R$dimen;->mz_action_menu_item_margin_right:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1104
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_3c

    if-nez p2, :cond_3c

    .line 1105
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lflyme/support/v7/appcompat/R$dimen;->mz_action_menu_item_margin_left_lower_version:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1108
    :cond_3c
    iget-boolean v4, p1, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v4, :cond_54

    .line 1109
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x11

    if-lt p2, p3, :cond_51

    .line 1110
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 1111
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    goto :goto_53

    .line 1113
    :cond_51
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_53
    return-void

    .line 1118
    :cond_54
    iget-boolean v0, p0, Lflyme/support/v7/widget/ActionMenuView;->mHasOverflow:Z

    if-eqz v0, :cond_5e

    add-int/lit8 v0, p3, -0x2

    if-ne p2, v0, :cond_5e

    move v1, v2

    goto :goto_68

    .line 1120
    :cond_5e
    iget-boolean v0, p0, Lflyme/support/v7/widget/ActionMenuView;->mHasOverflow:Z

    if-nez v0, :cond_67

    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_67

    goto :goto_68

    :cond_67
    move v1, v3

    .line 1125
    :goto_68
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 1126
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    return-void
.end method

.method private getExtraPadding()I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 897
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 898
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lflyme/support/v7/view/menu/ActionMenuItemView;

    if-eqz v2, :cond_22

    .line 899
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/view/menu/ActionMenuItemView;

    invoke-virtual {v2}, Lflyme/support/v7/view/menu/ActionMenuItemView;->getItemData()Lflyme/support/v7/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-virtual {v2}, Lflyme/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_22

    move v1, v0

    goto :goto_26

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_25
    const/4 v1, 0x1

    :goto_26
    if-eqz v1, :cond_29

    goto :goto_35

    .line 905
    :cond_29
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lflyme/support/v7/view/ActionBarPolicy;->get(Landroid/content/Context;)Lflyme/support/v7/view/ActionBarPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lflyme/support/v7/view/ActionBarPolicy;->getSplitActionBarPadding()I

    move-result v0

    :goto_35
    return v0
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .registers 10

    .line 429
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;

    .line 431
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p4

    .line 433
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    .line 434
    invoke-static {v1, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 436
    instance-of p4, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;

    if-eqz p4, :cond_1b

    move-object p4, p0

    check-cast p4, Lflyme/support/v7/view/menu/ActionMenuItemView;

    goto :goto_1c

    :cond_1b
    const/4 p4, 0x0

    :goto_1c
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_28

    .line 438
    invoke-virtual {p4}, Lflyme/support/v7/view/menu/ActionMenuItemView;->hasText()Z

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

    .line 442
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 444
    invoke-virtual {p0, p2, p3}, Landroid/view/View;->measure(II)V

    .line 446
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 447
    div-int v4, p2, p1

    .line 448
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

    .line 452
    :goto_4d
    iget-boolean p2, v0, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez p2, :cond_54

    if-eqz p4, :cond_54

    goto :goto_55

    :cond_54
    move v1, v2

    .line 453
    :goto_55
    iput-boolean v1, v0, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 455
    iput v3, v0, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int/2addr p1, v3

    const/high16 p2, 0x40000000  # 2.0f

    .line 457
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Landroid/view/View;->measure(II)V

    return v3
.end method

.method static measureChildForCellsInSplit(Landroid/view/View;III)I
    .registers 6

    .line 877
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;

    .line 879
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p3

    .line 881
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 882
    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    const/4 p3, 0x1

    .line 884
    iput p3, v0, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    const/high16 v0, 0x40000000  # 2.0f

    .line 886
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->measure(II)V

    return p3
.end method

.method private onMeasureExactFormat(II)V
    .registers 32

    move-object/from16 v0, p0

    .line 197
    iget-object v1, v0, Lflyme/support/v7/widget/ActionMenuView;->mPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Lflyme/support/v7/widget/ActionMenuPresenter;->isSplit()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 198
    invoke-direct/range {p0 .. p2}, Lflyme/support/v7/widget/ActionMenuView;->onMeasureExactFormatInSplit(II)V

    return-void

    .line 203
    :cond_e
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 204
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 205
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 207
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 208
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, -0x2

    move/from16 v7, p2

    .line 210
    invoke-static {v7, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    sub-int/2addr v2, v4

    .line 216
    iget v4, v0, Lflyme/support/v7/widget/ActionMenuView;->mMinCellSize:I

    div-int v7, v2, v4

    .line 217
    rem-int v8, v2, v4

    const/4 v9, 0x0

    if-nez v7, :cond_41

    .line 221
    invoke-virtual {v0, v2, v9}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void

    .line 225
    :cond_41
    div-int/2addr v8, v7

    add-int/2addr v4, v8

    .line 237
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

    :goto_51
    if-ge v7, v8, :cond_d1

    .line 239
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 240
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v9

    move/from16 v19, v3

    const/16 v3, 0x8

    if-ne v9, v3, :cond_63

    goto/16 :goto_cb

    .line 242
    :cond_63
    instance-of v3, v11, Lflyme/support/v7/view/menu/ActionMenuItemView;

    add-int/lit8 v13, v13, 0x1

    if-eqz v3, :cond_72

    .line 248
    iget v9, v0, Lflyme/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v20, v13

    const/4 v13, 0x0

    invoke-virtual {v11, v9, v13, v9, v13}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_75

    :cond_72
    move/from16 v20, v13

    const/4 v13, 0x0

    .line 251
    :goto_75
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;

    .line 252
    iput-boolean v13, v9, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 253
    iput v13, v9, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 254
    iput v13, v9, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 255
    iput-boolean v13, v9, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 256
    iput v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 257
    iput v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eqz v3, :cond_94

    .line 258
    move-object v3, v11

    check-cast v3, Lflyme/support/v7/view/menu/ActionMenuItemView;

    invoke-virtual {v3}, Lflyme/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result v3

    if-eqz v3, :cond_94

    const/4 v3, 0x1

    goto :goto_95

    :cond_94
    const/4 v3, 0x0

    :goto_95
    iput-boolean v3, v9, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 261
    iget-boolean v3, v9, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v3, :cond_9d

    const/4 v3, 0x1

    goto :goto_9e

    :cond_9d
    move v3, v14

    .line 263
    :goto_9e
    invoke-static {v11, v4, v3, v6, v5}, Lflyme/support/v7/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v3

    .line 266
    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 267
    iget-boolean v15, v9, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-eqz v15, :cond_ac

    add-int/lit8 v16, v16, 0x1

    .line 268
    :cond_ac
    iget-boolean v9, v9, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v9, :cond_b1

    const/4 v12, 0x1

    :cond_b1
    sub-int/2addr v14, v3

    .line 271
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/4 v9, 0x1

    if-ne v3, v9, :cond_c7

    shl-int v3, v9, v7

    move v11, v10

    int-to-long v9, v3

    or-long v9, v17, v9

    move-wide/from16 v17, v9

    move v10, v11

    goto :goto_c8

    :cond_c7
    move v11, v10

    :goto_c8
    move v15, v13

    move/from16 v13, v20

    :goto_cb
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v19

    const/4 v9, 0x0

    goto :goto_51

    :cond_d1
    move/from16 v19, v3

    const/4 v3, 0x2

    if-eqz v12, :cond_da

    if-ne v13, v3, :cond_da

    const/4 v5, 0x1

    goto :goto_db

    :cond_da
    const/4 v5, 0x0

    :goto_db
    const/4 v7, 0x0

    :goto_dc
    if-lez v16, :cond_189

    if-lez v14, :cond_189

    const v9, 0x7fffffff

    move v3, v9

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v20, 0x0

    :goto_e8
    if-ge v9, v8, :cond_12b

    .line 288
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 289
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move/from16 v23, v7

    move-object/from16 v7, v22

    check-cast v7, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;

    move/from16 v22, v10

    .line 292
    iget-boolean v10, v7, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-nez v10, :cond_102

    :cond_fe
    move v7, v1

    move/from16 v24, v2

    goto :goto_121

    .line 295
    :cond_102
    iget v7, v7, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ge v7, v3, :cond_112

    const/4 v10, 0x1

    shl-int v3, v10, v9

    int-to-long v10, v3

    move/from16 v24, v2

    move v3, v7

    move-wide/from16 v20, v10

    const/4 v11, 0x1

    move v7, v1

    goto :goto_121

    :cond_112
    if-ne v7, v3, :cond_fe

    const/4 v7, 0x1

    shl-int v10, v7, v9

    move v7, v1

    move/from16 v24, v2

    int-to-long v1, v10

    or-long v1, v20, v1

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v20, v1

    :goto_121
    add-int/lit8 v9, v9, 0x1

    move v1, v7

    move/from16 v10, v22

    move/from16 v7, v23

    move/from16 v2, v24

    goto :goto_e8

    :cond_12b
    move/from16 v24, v2

    move/from16 v23, v7

    move/from16 v22, v10

    move v7, v1

    or-long v17, v17, v20

    if-le v11, v14, :cond_137

    goto :goto_190

    :cond_137
    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x0

    :goto_13a
    if-ge v1, v8, :cond_180

    .line 314
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 315
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;

    const/4 v10, 0x1

    shl-int v11, v10, v1

    int-to-long v10, v11

    and-long v25, v20, v10

    const-wide/16 v27, 0x0

    cmp-long v23, v25, v27

    if-nez v23, :cond_15b

    .line 318
    iget v2, v9, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v2, v3, :cond_158

    or-long v17, v17, v10

    :cond_158
    move/from16 v23, v3

    goto :goto_17b

    :cond_15b
    if-eqz v5, :cond_16f

    .line 322
    iget-boolean v10, v9, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-eqz v10, :cond_16f

    const/4 v10, 0x1

    if-ne v14, v10, :cond_16f

    .line 324
    iget v11, v0, Lflyme/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    add-int v10, v11, v4

    move/from16 v23, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v10, v3, v11, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_171

    :cond_16f
    move/from16 v23, v3

    .line 326
    :goto_171
    iget v2, v9, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v9, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 327
    iput-boolean v3, v9, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    add-int/lit8 v14, v14, -0x1

    :goto_17b
    add-int/lit8 v1, v1, 0x1

    move/from16 v3, v23

    goto :goto_13a

    :cond_180
    move v1, v7

    move/from16 v10, v22

    move/from16 v2, v24

    const/4 v3, 0x2

    const/4 v7, 0x1

    goto/16 :goto_dc

    :cond_189
    move/from16 v24, v2

    move/from16 v23, v7

    move/from16 v22, v10

    move v7, v1

    :goto_190
    const/4 v1, 0x1

    if-nez v12, :cond_197

    if-ne v13, v1, :cond_197

    move v2, v1

    goto :goto_198

    :cond_197
    const/4 v2, 0x0

    :goto_198
    if-lez v14, :cond_250

    const-wide/16 v9, 0x0

    cmp-long v3, v17, v9

    if-eqz v3, :cond_250

    sub-int/2addr v13, v1

    if-lt v14, v13, :cond_1a7

    if-nez v2, :cond_1a7

    if-le v15, v1, :cond_250

    .line 340
    :cond_1a7
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->bitCount(J)I

    move-result v1

    int-to-float v1, v1

    if-nez v2, :cond_1e8

    const-wide/16 v2, 0x1

    and-long v2, v17, v2

    const-wide/16 v9, 0x0

    cmp-long v2, v2, v9

    const/high16 v3, 0x3f000000  # 0.5f

    const/4 v13, 0x0

    if-eqz v2, :cond_1ca

    .line 345
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;

    .line 346
    iget-boolean v2, v2, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v2, :cond_1ca

    sub-float/2addr v1, v3

    :cond_1ca
    add-int/lit8 v2, v8, -0x1

    const/4 v5, 0x1

    shl-int v9, v5, v2

    int-to-long v9, v9

    and-long v9, v17, v9

    const-wide/16 v11, 0x0

    cmp-long v5, v9, v11

    if-eqz v5, :cond_1e9

    .line 349
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;

    .line 350
    iget-boolean v2, v2, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v2, :cond_1e9

    sub-float/2addr v1, v3

    goto :goto_1e9

    :cond_1e8
    const/4 v13, 0x0

    :cond_1e9
    :goto_1e9
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1f3

    mul-int/2addr v14, v4

    int-to-float v2, v14

    div-float/2addr v2, v1

    float-to-int v9, v2

    goto :goto_1f4

    :cond_1f3
    move v9, v13

    :goto_1f4
    move v1, v13

    move/from16 v11, v23

    :goto_1f7
    if-ge v1, v8, :cond_24d

    const/4 v2, 0x1

    shl-int v3, v2, v1

    int-to-long v2, v3

    and-long v2, v17, v2

    const-wide/16 v14, 0x0

    cmp-long v2, v2, v14

    if-nez v2, :cond_208

    const/4 v2, 0x1

    const/4 v5, 0x2

    goto :goto_24a

    .line 360
    :cond_208
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 361
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;

    .line 362
    instance-of v2, v2, Lflyme/support/v7/view/menu/ActionMenuItemView;

    if-eqz v2, :cond_22b

    .line 364
    iput v9, v3, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    const/4 v2, 0x1

    .line 365
    iput-boolean v2, v3, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v1, :cond_227

    .line 366
    iget-boolean v2, v3, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v2, :cond_227

    neg-int v2, v9

    const/4 v5, 0x2

    .line 369
    div-int/2addr v2, v5

    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_228

    :cond_227
    const/4 v5, 0x2

    :goto_228
    const/4 v2, 0x1

    const/4 v11, 0x1

    goto :goto_24a

    :cond_22b
    const/4 v5, 0x2

    .line 372
    iget-boolean v2, v3, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v2, :cond_23b

    .line 373
    iput v9, v3, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    const/4 v2, 0x1

    .line 374
    iput-boolean v2, v3, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    neg-int v10, v9

    .line 375
    div-int/2addr v10, v5

    iput v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v11, v2

    goto :goto_24a

    :cond_23b
    const/4 v2, 0x1

    if-eqz v1, :cond_242

    .line 382
    div-int/lit8 v10, v9, 0x2

    iput v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_242
    add-int/lit8 v10, v8, -0x1

    if-eq v1, v10, :cond_24a

    .line 385
    div-int/lit8 v10, v9, 0x2

    iput v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_24a
    :goto_24a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f7

    :cond_24d
    move/from16 v23, v11

    goto :goto_251

    :cond_250
    const/4 v13, 0x0

    :goto_251
    const/high16 v1, 0x40000000  # 2.0f

    if-eqz v23, :cond_276

    :goto_255
    if-ge v13, v8, :cond_276

    .line 396
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 397
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;

    .line 399
    iget-boolean v5, v3, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v5, :cond_266

    goto :goto_273

    .line 401
    :cond_266
    iget v5, v3, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int/2addr v5, v4

    iget v3, v3, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    add-int/2addr v5, v3

    .line 402
    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v3, v6}, Landroid/view/View;->measure(II)V

    :goto_273
    add-int/lit8 v13, v13, 0x1

    goto :goto_255

    :cond_276
    if-eq v7, v1, :cond_27b

    move/from16 v1, v22

    goto :goto_27d

    :cond_27b
    move/from16 v1, v19

    :goto_27d
    move/from16 v2, v24

    .line 411
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method private onMeasureExactFormatInSplit(II)V
    .registers 15

    .line 913
    invoke-direct {p0}, Lflyme/support/v7/widget/ActionMenuView;->getExtraPadding()I

    move-result v0

    .line 914
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 915
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 916
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 918
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v4, v0

    .line 919
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    add-int/2addr v0, v5

    const/4 v5, -0x2

    .line 921
    invoke-static {p2, v0, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    sub-int/2addr v2, v4

    .line 926
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_36

    .line 930
    invoke-virtual {p0, v2, v5}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void

    .line 934
    :cond_36
    div-int/2addr v2, v4

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_3a
    if-ge v6, v4, :cond_80

    .line 942
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 943
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_49

    goto :goto_7d

    .line 945
    :cond_49
    instance-of v10, v9, Lflyme/support/v7/view/menu/ActionMenuItemView;

    .line 947
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;

    .line 948
    iput-boolean v5, v11, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 949
    iput v5, v11, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 950
    iput v5, v11, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 951
    iput-boolean v5, v11, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 952
    iput v5, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 953
    iput v5, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eqz v10, :cond_6a

    .line 954
    move-object v10, v9

    check-cast v10, Lflyme/support/v7/view/menu/ActionMenuItemView;

    invoke-virtual {v10}, Lflyme/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result v10

    if-eqz v10, :cond_6a

    const/4 v10, 0x1

    goto :goto_6b

    :cond_6a
    move v10, v5

    :goto_6b
    iput-boolean v10, v11, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 956
    invoke-static {v9, v2, p2, v0}, Lflyme/support/v7/widget/ActionMenuView;->measureChildForCellsInSplit(Landroid/view/View;III)I

    move-result v10

    .line 958
    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 961
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    :goto_7d
    add-int/lit8 v6, v6, 0x1

    goto :goto_3a

    :cond_80
    const/high16 p2, 0x40000000  # 2.0f

    if-eq v1, p2, :cond_85

    move v3, v7

    .line 968
    :cond_85
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0, p1, v3}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    if-eqz p1, :cond_8

    .line 639
    instance-of p0, p1, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;

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

    .line 742
    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuView;->mPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    if-eqz p0, :cond_7

    .line 743
    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    :cond_7
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 1

    .line 49
    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Lflyme/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .registers 1

    .line 49
    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Lflyme/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Lflyme/support/v7/widget/ActionMenuView$LayoutParams;
    .registers 2

    .line 612
    new-instance p0, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;-><init>(II)V

    const/16 v0, 0x10

    .line 614
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 49
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lflyme/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 49
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lflyme/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .registers 2

    .line 49
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lflyme/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .registers 2

    .line 49
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lflyme/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lflyme/support/v7/widget/ActionMenuView$LayoutParams;
    .registers 3

    .line 620
    new-instance v0, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lflyme/support/v7/widget/ActionMenuView$LayoutParams;
    .registers 2

    if-eqz p1, :cond_1c

    .line 626
    instance-of p0, p1, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;

    if-eqz p0, :cond_e

    new-instance p0, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;

    check-cast p1, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;

    invoke-direct {p0, p1}, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;-><init>(Lflyme/support/v7/widget/ActionMenuView$LayoutParams;)V

    goto :goto_13

    :cond_e
    new-instance p0, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;

    invoke-direct {p0, p1}, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 629
    :goto_13
    iget p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gtz p1, :cond_1b

    const/16 p1, 0x10

    .line 630
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    :cond_1b
    return-object p0

    .line 634
    :cond_1c
    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Lflyme/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateOverflowButtonLayoutParams()Lflyme/support/v7/widget/ActionMenuView$LayoutParams;
    .registers 2

    .line 644
    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Lflyme/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    const/4 v0, 0x1

    .line 645
    iput-boolean v0, p0, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    return-object p0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 5

    .line 673
    iget-object v0, p0, Lflyme/support/v7/widget/ActionMenuView;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    if-nez v0, :cond_44

    .line 674
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 675
    new-instance v1, Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Lflyme/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lflyme/support/v7/widget/ActionMenuView;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    .line 676
    iget-object v1, p0, Lflyme/support/v7/widget/ActionMenuView;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    new-instance v2, Lflyme/support/v7/widget/ActionMenuView$MenuBuilderCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lflyme/support/v7/widget/ActionMenuView$MenuBuilderCallback;-><init>(Lflyme/support/v7/widget/ActionMenuView;Lflyme/support/v7/widget/ActionMenuView$1;)V

    invoke-virtual {v1, v2}, Lflyme/support/v7/view/menu/MenuBuilder;->setCallback(Lflyme/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 677
    new-instance v1, Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-direct {v1, v0}, Lflyme/support/v7/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lflyme/support/v7/widget/ActionMenuView;->mPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    .line 678
    iget-object v0, p0, Lflyme/support/v7/widget/ActionMenuView;->mPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 679
    iget-object v0, p0, Lflyme/support/v7/widget/ActionMenuView;->mPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    iget-object v1, p0, Lflyme/support/v7/widget/ActionMenuView;->mActionMenuPresenterCallback:Lflyme/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v1, :cond_2e

    goto :goto_33

    :cond_2e
    new-instance v1, Lflyme/support/v7/widget/ActionMenuView$ActionMenuPresenterCallback;

    invoke-direct {v1, p0, v3}, Lflyme/support/v7/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>(Lflyme/support/v7/widget/ActionMenuView;Lflyme/support/v7/widget/ActionMenuView$1;)V

    :goto_33
    invoke-virtual {v0, v1}, Lflyme/support/v7/view/menu/BaseMenuPresenter;->setCallback(Lflyme/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 681
    iget-object v0, p0, Lflyme/support/v7/widget/ActionMenuView;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    iget-object v1, p0, Lflyme/support/v7/widget/ActionMenuView;->mPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    iget-object v2, p0, Lflyme/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lflyme/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Lflyme/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 682
    iget-object v0, p0, Lflyme/support/v7/widget/ActionMenuView;->mPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Lflyme/support/v7/widget/ActionMenuPresenter;->setMenuView(Lflyme/support/v7/widget/ActionMenuView;)V

    .line 685
    :cond_44
    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuView;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    return-object p0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 596
    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 597
    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuView;->mPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionMenuPresenter;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getPopupTheme()I
    .registers 1

    .line 128
    iget p0, p0, Lflyme/support/v7/widget/ActionMenuView;->mPopupTheme:I

    return p0
.end method

.method public getWindowAnimations()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected hasSupportDividerBeforeChildAt(I)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, p1, -0x1

    .line 754
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 755
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 757
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-ge p1, p0, :cond_1f

    instance-of p0, v1, Lflyme/support/v7/widget/ActionMenuView$ActionMenuChildView;

    if-eqz p0, :cond_1f

    .line 758
    check-cast v1, Lflyme/support/v7/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v1}, Lflyme/support/v7/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result p0

    or-int/2addr v0, p0

    :cond_1f
    if-lez p1, :cond_2c

    .line 760
    instance-of p0, v2, Lflyme/support/v7/widget/ActionMenuView$ActionMenuChildView;

    if-eqz p0, :cond_2c

    .line 761
    check-cast v2, Lflyme/support/v7/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v2}, Lflyme/support/v7/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result p0

    or-int/2addr v0, p0

    :cond_2c
    return v0
.end method

.method public hideOverflowMenu()Z
    .registers 1

    .line 720
    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuView;->mPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public initialize(Lflyme/support/v7/view/menu/MenuBuilder;)V
    .registers 2

    .line 661
    iput-object p1, p0, Lflyme/support/v7/widget/ActionMenuView;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    return-void
.end method

.method public invokeItem(Lflyme/support/v7/view/menu/MenuItemImpl;)Z
    .registers 3

    .line 651
    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuView;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lflyme/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result p0

    return p0
.end method

.method public isOverflowMenuShowPending()Z
    .registers 1

    .line 735
    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuView;->mPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isOverflowMenuShowing()Z
    .registers 1

    .line 730
    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuView;->mPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isOverflowReserved()Z
    .registers 1

    .line 602
    iget-boolean p0, p0, Lflyme/support/v7/widget/ActionMenuView;->mReserveOverflow:Z

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_9

    .line 143
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 146
    :cond_9
    iget-object p1, p0, Lflyme/support/v7/widget/ActionMenuView;->mPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    if-eqz p1, :cond_23

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 149
    iget-object p1, p0, Lflyme/support/v7/widget/ActionMenuView;->mPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p1}, Lflyme/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 150
    iget-object p1, p0, Lflyme/support/v7/widget/ActionMenuView;->mPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p1}, Lflyme/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 151
    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuView;->mPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    :cond_23
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .line 575
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 576
    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionMenuView;->dismissPopupMenus()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    .line 464
    iget-boolean v5, v0, Lflyme/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-nez v5, :cond_12

    .line 465
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    return-void

    .line 469
    :cond_12
    iget-object v5, v0, Lflyme/support/v7/widget/ActionMenuView;->mPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v5}, Lflyme/support/v7/widget/ActionMenuPresenter;->isSplit()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 470
    invoke-virtual {v0, v1, v2, v3, v4}, Lflyme/support/v7/widget/ActionMenuView;->onLayoutInSplit(IIII)V

    return-void

    .line 475
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int v2, v4, v2

    .line 476
    div-int/lit8 v2, v2, 0x2

    .line 477
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getDividerWidth()I

    move-result v4

    sub-int v1, v3, v1

    .line 481
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v3, v6

    .line 483
    invoke-static/range {p0 .. p0}, Lflyme/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v6

    move v10, v3

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_3f
    const/16 v11, 0x8

    const/4 v12, 0x1

    if-ge v3, v5, :cond_a3

    .line 485
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 486
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-ne v14, v11, :cond_4f

    goto :goto_a0

    .line 490
    :cond_4f
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;

    .line 491
    iget-boolean v14, v11, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v14, :cond_8f

    .line 492
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 493
    invoke-virtual {v0, v3}, Lflyme/support/v7/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v14

    if-eqz v14, :cond_64

    add-int/2addr v8, v4

    .line 496
    :cond_64
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    if-eqz v6, :cond_74

    .line 500
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v15

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v15, v11

    add-int v11, v15, v8

    goto :goto_84

    .line 503
    :cond_74
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v11, v15, v11

    sub-int v15, v11, v8

    .line 506
    :goto_84
    div-int/lit8 v16, v14, 0x2

    sub-int v7, v2, v16

    add-int/2addr v14, v7

    .line 508
    invoke-virtual {v13, v15, v7, v11, v14}, Landroid/view/View;->layout(IIII)V

    sub-int/2addr v10, v8

    move v8, v12

    goto :goto_a0

    .line 513
    :cond_8f
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v7, v12

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v7, v11

    sub-int/2addr v10, v7

    .line 516
    invoke-virtual {v0, v3}, Lflyme/support/v7/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v7

    add-int/lit8 v9, v9, 0x1

    :goto_a0
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    :cond_a3
    if-ne v5, v12, :cond_c2

    if-nez v8, :cond_c2

    const/4 v3, 0x0

    .line 525
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 526
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 527
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 528
    div-int/lit8 v1, v1, 0x2

    .line 529
    div-int/lit8 v5, v3, 0x2

    sub-int/2addr v1, v5

    .line 530
    div-int/lit8 v5, v4, 0x2

    sub-int/2addr v2, v5

    add-int/2addr v3, v1

    add-int/2addr v4, v2

    .line 531
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_c2
    xor-int/lit8 v1, v8, 0x1

    sub-int/2addr v9, v1

    if-lez v9, :cond_cb

    .line 536
    div-int v7, v10, v9

    const/4 v3, 0x0

    goto :goto_cd

    :cond_cb
    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_cd
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz v6, :cond_110

    .line 539
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    sub-int/2addr v4, v6

    :goto_dc
    if-ge v3, v5, :cond_148

    .line 541
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 542
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;

    .line 543
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_10d

    iget-boolean v8, v7, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v8, :cond_f3

    goto :goto_10d

    .line 547
    :cond_f3
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v4, v8

    .line 548
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 549
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 550
    div-int/lit8 v10, v9, 0x2

    sub-int v10, v2, v10

    sub-int v12, v4, v8

    add-int/2addr v9, v10

    .line 551
    invoke-virtual {v6, v12, v10, v4, v9}, Landroid/view/View;->layout(IIII)V

    .line 552
    iget v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v8, v6

    add-int/2addr v8, v1

    sub-int/2addr v4, v8

    :cond_10d
    :goto_10d
    add-int/lit8 v3, v3, 0x1

    goto :goto_dc

    .line 555
    :cond_110
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    :goto_114
    if-ge v3, v5, :cond_148

    .line 557
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 558
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;

    .line 559
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_145

    iget-boolean v8, v7, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v8, :cond_12b

    goto :goto_145

    .line 563
    :cond_12b
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v8

    .line 564
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 565
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 566
    div-int/lit8 v10, v9, 0x2

    sub-int v10, v2, v10

    add-int v12, v4, v8

    add-int/2addr v9, v10

    .line 567
    invoke-virtual {v6, v4, v10, v12, v9}, Landroid/view/View;->layout(IIII)V

    .line 568
    iget v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v8, v6

    add-int/2addr v8, v1

    add-int/2addr v4, v8

    :cond_145
    :goto_145
    add-int/lit8 v3, v3, 0x1

    goto :goto_114

    :cond_148
    return-void
.end method

.method protected onLayoutInSplit(IIII)V
    .registers 23

    move-object/from16 v0, p0

    .line 993
    invoke-direct/range {p0 .. p0}, Lflyme/support/v7/widget/ActionMenuView;->getExtraPadding()I

    move-result v1

    .line 994
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int v3, p4, p2

    .line 995
    div-int/lit8 v3, v3, 0x2

    .line 996
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getDividerWidth()I

    move-result v4

    sub-int v5, p3, p1

    .line 1000
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    sub-int v6, v5, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x2

    sub-int/2addr v6, v7

    .line 1002
    invoke-static/range {p0 .. p0}, Lflyme/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v7

    move v11, v6

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2a
    const/16 v12, 0x8

    if-ge v6, v2, :cond_95

    .line 1004
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1005
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-ne v15, v12, :cond_39

    goto :goto_92

    .line 1009
    :cond_39
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;

    .line 1010
    iget-boolean v15, v12, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v15, :cond_81

    .line 1011
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1012
    invoke-virtual {v0, v6}, Lflyme/support/v7/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v15

    if-eqz v15, :cond_4e

    add-int/2addr v9, v4

    .line 1015
    :cond_4e
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    if-eqz v7, :cond_61

    .line 1019
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v16

    add-int v16, v1, v16

    iget v12, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v16, v16, v12

    add-int v12, v16, v9

    goto :goto_73

    .line 1022
    :cond_61
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v16

    sub-int v16, v16, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v17

    sub-int v16, v16, v17

    iget v12, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v12, v16, v12

    sub-int v16, v12, v9

    :goto_73
    move v8, v12

    move/from16 v12, v16

    .line 1025
    div-int/lit8 v16, v15, 0x2

    sub-int v13, v3, v16

    add-int/2addr v15, v13

    .line 1027
    invoke-virtual {v14, v12, v13, v8, v15}, Landroid/view/View;->layout(IIII)V

    sub-int/2addr v11, v9

    const/4 v9, 0x1

    goto :goto_92

    .line 1032
    :cond_81
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget v13, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v8, v13

    iget v12, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v8, v12

    sub-int/2addr v11, v8

    .line 1035
    invoke-virtual {v0, v6}, Lflyme/support/v7/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v8

    add-int/lit8 v10, v10, 0x1

    :goto_92
    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    :cond_95
    const/4 v6, 0x1

    if-ne v2, v6, :cond_b5

    if-nez v9, :cond_b5

    const/4 v4, 0x0

    .line 1044
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1045
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1046
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 1047
    div-int/lit8 v5, v5, 0x2

    .line 1048
    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v5, v4

    .line 1049
    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v1, v5

    add-int/2addr v2, v3

    .line 1050
    invoke-virtual {v0, v5, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_b5
    const/4 v4, 0x1

    xor-int/2addr v4, v9

    sub-int/2addr v10, v4

    if-lez v10, :cond_be

    .line 1055
    div-int v8, v11, v10

    const/4 v4, 0x0

    goto :goto_c0

    :cond_be
    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_c0
    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-eqz v7, :cond_104

    .line 1058
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr v6, v1

    :goto_d0
    if-ge v4, v2, :cond_13d

    .line 1060
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1061
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;

    .line 1062
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v12, :cond_101

    iget-boolean v8, v7, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v8, :cond_e7

    goto :goto_101

    .line 1066
    :cond_e7
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v6, v8

    .line 1067
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 1068
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 1069
    div-int/lit8 v10, v9, 0x2

    sub-int v10, v3, v10

    sub-int v11, v6, v8

    add-int/2addr v9, v10

    .line 1070
    invoke-virtual {v1, v11, v10, v6, v9}, Landroid/view/View;->layout(IIII)V

    .line 1071
    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v8, v1

    add-int/2addr v8, v5

    sub-int/2addr v6, v8

    :cond_101
    :goto_101
    add-int/lit8 v4, v4, 0x1

    goto :goto_d0

    .line 1074
    :cond_104
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    add-int/2addr v6, v1

    :goto_109
    if-ge v4, v2, :cond_13d

    .line 1076
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1077
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;

    .line 1078
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v12, :cond_13a

    iget-boolean v8, v7, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v8, :cond_120

    goto :goto_13a

    .line 1082
    :cond_120
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v6, v8

    .line 1083
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 1084
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 1085
    div-int/lit8 v10, v9, 0x2

    sub-int v10, v3, v10

    add-int v11, v6, v8

    add-int/2addr v9, v10

    .line 1086
    invoke-virtual {v1, v6, v10, v11, v9}, Landroid/view/View;->layout(IIII)V

    .line 1087
    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v8, v1

    add-int/2addr v8, v5

    add-int/2addr v6, v8

    :cond_13a
    :goto_13a
    add-int/lit8 v4, v4, 0x1

    goto :goto_109

    :cond_13d
    return-void
.end method

.method protected onMeasure(II)V
    .registers 8

    .line 163
    iget-boolean v0, p0, Lflyme/support/v7/widget/ActionMenuView;->mFormatItems:Z

    .line 164
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
    iput-boolean v1, p0, Lflyme/support/v7/widget/ActionMenuView;->mFormatItems:Z

    .line 166
    iget-boolean v1, p0, Lflyme/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-eq v0, v1, :cond_17

    .line 167
    iput v3, p0, Lflyme/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 172
    :cond_17
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 173
    iget-boolean v1, p0, Lflyme/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lflyme/support/v7/widget/ActionMenuView;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    if-eqz v1, :cond_2c

    iget v4, p0, Lflyme/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I

    if-eq v0, v4, :cond_2c

    .line 174
    iput v0, p0, Lflyme/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 175
    invoke-virtual {v1, v2}, Lflyme/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 178
    :cond_2c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 179
    iget-boolean v1, p0, Lflyme/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v1, :cond_3a

    if-lez v0, :cond_3a

    .line 180
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/ActionMenuView;->onMeasureExactFormat(II)V

    goto :goto_54

    :cond_3a
    move v1, v3

    :goto_3b
    if-ge v1, v0, :cond_51

    .line 184
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 185
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;

    .line 186
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 188
    invoke-direct {p0, v2, v1, v0}, Lflyme/support/v7/widget/ActionMenuView;->applyFlymeStyle(Lflyme/support/v7/widget/ActionMenuView$LayoutParams;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 191
    :cond_51
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    :goto_54
    return-void
.end method

.method public peekMenu()Lflyme/support/v7/view/menu/MenuBuilder;
    .registers 1

    .line 702
    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuView;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    return-object p0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .registers 2

    .line 772
    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuView;->mPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    return-void
.end method

.method public setHasOverflow(Z)V
    .registers 2

    .line 1134
    iput-boolean p1, p0, Lflyme/support/v7/widget/ActionMenuView;->mHasOverflow:Z

    return-void
.end method

.method public setMenuCallbacks(Lflyme/support/v7/view/menu/MenuPresenter$Callback;Lflyme/support/v7/view/menu/MenuBuilder$Callback;)V
    .registers 3

    .line 693
    iput-object p1, p0, Lflyme/support/v7/widget/ActionMenuView;->mActionMenuPresenterCallback:Lflyme/support/v7/view/menu/MenuPresenter$Callback;

    .line 694
    iput-object p2, p0, Lflyme/support/v7/widget/ActionMenuView;->mMenuBuilderCallback:Lflyme/support/v7/view/menu/MenuBuilder$Callback;

    return-void
.end method

.method public setOnMenuItemClickListener(Lflyme/support/v7/widget/ActionMenuView$OnMenuItemClickListener;)V
    .registers 2

    .line 157
    iput-object p1, p0, Lflyme/support/v7/widget/ActionMenuView;->mOnMenuItemClickListener:Lflyme/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    return-void
.end method

.method public setOverflowDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1145
    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuView;->mPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/ActionMenuPresenter;->setOverflowDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 585
    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 586
    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuView;->mPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/ActionMenuPresenter;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOverflowReserved(Z)V
    .registers 2

    .line 607
    iput-boolean p1, p0, Lflyme/support/v7/widget/ActionMenuView;->mReserveOverflow:Z

    return-void
.end method

.method public setPopupTheme(I)V
    .registers 4
    .param p1  # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 112
    iget v0, p0, Lflyme/support/v7/widget/ActionMenuView;->mPopupTheme:I

    if-eq v0, p1, :cond_1a

    .line 113
    iput p1, p0, Lflyme/support/v7/widget/ActionMenuView;->mPopupTheme:I

    if-nez p1, :cond_f

    .line 115
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lflyme/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    goto :goto_1a

    .line 117
    :cond_f
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lflyme/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    :cond_1a
    :goto_1a
    return-void
.end method

.method public setPresenter(Lflyme/support/v7/widget/ActionMenuPresenter;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lflyme/support/v7/widget/ActionMenuView;->mPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    .line 137
    iget-object p1, p0, Lflyme/support/v7/widget/ActionMenuView;->mPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Lflyme/support/v7/widget/ActionMenuPresenter;->setMenuView(Lflyme/support/v7/widget/ActionMenuView;)V

    return-void
.end method

.method public showOverflowMenu()Z
    .registers 1

    .line 711
    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuView;->mPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method
