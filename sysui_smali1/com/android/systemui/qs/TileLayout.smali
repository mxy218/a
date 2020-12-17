.class public Lcom/android/systemui/qs/TileLayout;
.super Landroid/view/ViewGroup;
.source "TileLayout.java"

# interfaces
.implements Lcom/android/systemui/qs/QSPanel$QSTileLayout;


# instance fields
.field protected mCellHeight:I

.field protected mCellMarginHorizontal:I

.field private mCellMarginTop:I

.field protected mCellMarginVertical:I

.field protected mCellWidth:I

.field protected mColumns:I

.field private mListening:Z

.field protected mMaxAllowedRows:I

.field protected final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/QSPanel$TileRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected mRows:I

.field protected mSidePadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/TileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 27
    iput p1, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    .line 29
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    const/4 p2, 0x3

    .line 32
    iput p2, p0, Lcom/android/systemui/qs/TileLayout;->mMaxAllowedRows:I

    .line 40
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->updateResources()Z

    return-void
.end method

.method protected static exactly(I)I
    .registers 2

    const/high16 v0, 0x40000000  # 2.0f

    .line 161
    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private getRowTop(I)I
    .registers 4

    .line 193
    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginVertical:I

    add-int/2addr v0, v1

    mul-int/2addr p1, v0

    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginTop:I

    add-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public addTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .registers 4

    .line 59
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-boolean v1, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TileLayout;->addTileView(Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    return-void
.end method

.method protected addTileView(Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .registers 2

    .line 65
    iget-object p1, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected getColumnStart(I)I
    .registers 5

    .line 197
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mSidePadding:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    div-int/lit8 v2, v1, 0x2

    add-int/2addr v0, v2

    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    add-int/2addr p0, v1

    mul-int/2addr p1, p0

    add-int/2addr v0, p1

    return v0
.end method

.method public hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected layoutTileRecords(I)V
    .registers 13

    .line 166
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    .line 171
    :goto_b
    iget v3, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    iget v4, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    mul-int/2addr v3, v4

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    move v3, v1

    move v4, v3

    move v5, v4

    :goto_17
    if-ge v3, p1, :cond_4a

    .line 174
    iget v6, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    if-ne v4, v6, :cond_20

    add-int/lit8 v5, v5, 0x1

    move v4, v1

    .line 179
    :cond_20
    iget-object v6, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 180
    invoke-direct {p0, v5}, Lcom/android/systemui/qs/TileLayout;->getRowTop(I)I

    move-result v7

    if-eqz v0, :cond_33

    .line 181
    iget v8, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    sub-int/2addr v8, v4

    sub-int/2addr v8, v2

    goto :goto_34

    :cond_33
    move v8, v4

    :goto_34
    invoke-virtual {p0, v8}, Lcom/android/systemui/qs/TileLayout;->getColumnStart(I)I

    move-result v8

    .line 182
    iget v9, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    add-int/2addr v9, v8

    .line 183
    iget-object v6, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {v6, v8, v7, v9, v10}, Landroid/view/ViewGroup;->layout(IIII)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_4a
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 189
    iget-object p1, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TileLayout;->layoutTileRecords(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 8

    .line 105
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 106
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 107
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    .line 108
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    if-nez p2, :cond_23

    .line 110
    iget p2, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p2

    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    .line 112
    :cond_23
    iget p2, p0, Lcom/android/systemui/qs/TileLayout;->mSidePadding:I

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr v1, p2

    iget p2, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    mul-int/2addr p2, v0

    sub-int/2addr v1, p2

    div-int/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    .line 117
    iget-object p2, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v0, p0

    :goto_38
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 118
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4f

    goto :goto_38

    .line 119
    :cond_4f
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    iget v3, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    invoke-static {v3}, Lcom/android/systemui/qs/TileLayout;->exactly(I)I

    move-result v3

    iget v4, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    invoke-static {v4}, Lcom/android/systemui/qs/TileLayout;->exactly(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->measure(II)V

    .line 120
    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/plugins/qs/QSTileView;->updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_38

    .line 125
    :cond_67
    iget p2, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginVertical:I

    add-int/2addr p2, v0

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    mul-int/2addr p2, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_77

    .line 126
    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginTop:I

    sub-int v0, v1, v0

    goto :goto_78

    :cond_77
    move v0, v2

    :goto_78
    add-int/2addr p2, v0

    if-gez p2, :cond_7c

    move p2, v2

    .line 129
    :cond_7c
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public removeAllViews()V
    .registers 4

    .line 76
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 77
    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    goto :goto_6

    .line 79
    :cond_19
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 80
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public setListening(Z)V
    .registers 4

    .line 51
    iget-boolean v0, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 52
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    .line 53
    iget-object p1, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 54
    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-boolean v1, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    goto :goto_d

    :cond_21
    return-void
.end method

.method public updateMaxRows(II)Z
    .registers 7

    .line 140
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginTop:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginVertical:I

    add-int/2addr p1, v0

    .line 142
    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    .line 143
    iget v2, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    add-int/2addr v2, v0

    div-int/2addr p1, v2

    iput p1, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    .line 144
    iget p1, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mMaxAllowedRows:I

    const/4 v2, 0x1

    if-lt p1, v0, :cond_1c

    .line 145
    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    goto :goto_20

    :cond_1c
    if-gt p1, v2, :cond_20

    .line 147
    iput v2, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    .line 149
    :cond_20
    :goto_20
    iget p1, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    add-int v3, p2, v0

    sub-int/2addr v3, v2

    div-int/2addr v3, v0

    if-le p1, v3, :cond_2f

    add-int/2addr p2, v0

    sub-int/2addr p2, v2

    .line 150
    div-int/2addr p2, v0

    iput p2, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    .line 152
    :cond_2f
    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    if-eq v1, p0, :cond_34

    goto :goto_35

    :cond_34
    const/4 v2, 0x0

    :goto_35
    return v2
.end method

.method public updateResources()Z
    .registers 6

    .line 84
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 85
    sget v1, Lcom/android/systemui/R$integer;->quick_settings_num_columns:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 86
    iget-object v3, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->qs_tile_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    .line 87
    sget v3, Lcom/android/systemui/R$dimen;->qs_tile_margin_horizontal:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    .line 88
    sget v3, Lcom/android/systemui/R$dimen;->qs_tile_margin_vertical:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginVertical:I

    .line 89
    sget v3, Lcom/android/systemui/R$dimen;->qs_tile_margin_top:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginTop:I

    .line 90
    sget v3, Lcom/android/systemui/R$dimen;->qs_tile_layout_margin_side:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mSidePadding:I

    .line 91
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/systemui/R$integer;->quick_settings_max_rows:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mMaxAllowedRows:I

    .line 92
    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    if-eq v0, v1, :cond_59

    .line 93
    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    .line 94
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return v2

    :cond_59
    const/4 p0, 0x0

    return p0
.end method
