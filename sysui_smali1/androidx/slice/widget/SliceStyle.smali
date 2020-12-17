.class public Landroidx/slice/widget/SliceStyle;
.super Ljava/lang/Object;
.source "SliceStyle.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mGridAllImagesHeight:I

.field private mGridBigPicMaxHeight:I

.field private mGridBigPicMinHeight:I

.field private mGridBottomPadding:I

.field private mGridImageTextHeight:I

.field private mGridMaxHeight:I

.field private mGridMinHeight:I

.field private mGridSubtitleSize:I

.field private mGridTitleSize:I

.field private mGridTopPadding:I

.field private mHeaderSubtitleSize:I

.field private mHeaderTitleSize:I

.field private mListLargeHeight:I

.field private mListMinScrollHeight:I

.field private mRowMaxHeight:I

.field private mRowMinHeight:I

.field private mRowRangeHeight:I

.field private mRowSelectionHeight:I

.field private mRowSingleTextWithRangeHeight:I

.field private mRowSingleTextWithSelectionHeight:I

.field private mRowStyle:Landroidx/slice/widget/RowStyle;

.field private mRowTextWithRangeHeight:I

.field private mRowTextWithSelectionHeight:I

.field private mSubtitleColor:I

.field private mSubtitleSize:I

.field private mTintColor:I

.field private mTitleColor:I

.field private mTitleSize:I

.field private mVerticalGridTextPadding:I

.field private mVerticalHeaderTextPadding:I

.field private mVerticalTextPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Landroidx/slice/view/R$styleable;->SliceView:[I

    invoke-virtual {v1, p2, v2, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 86
    :try_start_10
    sget p3, Landroidx/slice/view/R$styleable;->SliceView_tintColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    if-eq p3, v0, :cond_19

    goto :goto_1b

    .line 87
    :cond_19
    iget p3, p0, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    :goto_1b
    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    .line 88
    sget p3, Landroidx/slice/view/R$styleable;->SliceView_titleColor:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mTitleColor:I

    .line 89
    sget p3, Landroidx/slice/view/R$styleable;->SliceView_subtitleColor:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mSubtitleColor:I

    .line 91
    sget p3, Landroidx/slice/view/R$styleable;->SliceView_headerTitleSize:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mHeaderTitleSize:I

    .line 93
    sget p3, Landroidx/slice/view/R$styleable;->SliceView_headerSubtitleSize:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mHeaderSubtitleSize:I

    .line 95
    sget p3, Landroidx/slice/view/R$styleable;->SliceView_headerTextVerticalPadding:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mVerticalHeaderTextPadding:I

    .line 98
    sget p3, Landroidx/slice/view/R$styleable;->SliceView_titleSize:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mTitleSize:I

    .line 99
    sget p3, Landroidx/slice/view/R$styleable;->SliceView_subtitleSize:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mSubtitleSize:I

    .line 101
    sget p3, Landroidx/slice/view/R$styleable;->SliceView_textVerticalPadding:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mVerticalTextPadding:I

    .line 104
    sget p3, Landroidx/slice/view/R$styleable;->SliceView_gridTitleSize:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mGridTitleSize:I

    .line 105
    sget p3, Landroidx/slice/view/R$styleable;->SliceView_gridSubtitleSize:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mGridSubtitleSize:I

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_grid_text_inner_padding:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 109
    sget v1, Landroidx/slice/view/R$styleable;->SliceView_gridTextVerticalPadding:I

    int-to-float p3, p3

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mVerticalGridTextPadding:I

    .line 111
    sget p3, Landroidx/slice/view/R$styleable;->SliceView_gridTopPadding:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mGridTopPadding:I

    .line 112
    sget p3, Landroidx/slice/view/R$styleable;->SliceView_gridBottomPadding:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mGridBottomPadding:I

    .line 114
    sget p3, Landroidx/slice/view/R$styleable;->SliceView_rowStyle:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_ac

    .line 116
    new-instance p4, Landroidx/slice/widget/RowStyle;

    invoke-direct {p4, p1, p3}, Landroidx/slice/widget/RowStyle;-><init>(Landroid/content/Context;I)V

    iput-object p4, p0, Landroidx/slice/widget/SliceStyle;->mRowStyle:Landroidx/slice/widget/RowStyle;
    :try_end_ac
    .catchall {:try_start_10 .. :try_end_ac} :catchall_134

    .line 119
    :cond_ac
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 126
    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_row_max_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mRowMaxHeight:I

    .line 127
    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_row_range_multi_text_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mRowTextWithRangeHeight:I

    .line 129
    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_row_range_single_text_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mRowSingleTextWithRangeHeight:I

    .line 131
    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_row_min_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mRowMinHeight:I

    .line 132
    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_row_range_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mRowRangeHeight:I

    .line 133
    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_row_selection_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mRowSelectionHeight:I

    .line 134
    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_row_selection_multi_text_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mRowTextWithSelectionHeight:I

    .line 136
    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_row_selection_single_text_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mRowSingleTextWithSelectionHeight:I

    .line 139
    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_big_pic_min_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mGridBigPicMinHeight:I

    .line 140
    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_big_pic_max_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mGridBigPicMaxHeight:I

    .line 141
    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_grid_image_only_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mGridAllImagesHeight:I

    .line 142
    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_grid_image_text_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mGridImageTextHeight:I

    .line 143
    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_grid_min_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mGridMinHeight:I

    .line 144
    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_grid_max_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mGridMaxHeight:I

    .line 146
    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_row_min_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mListMinScrollHeight:I

    .line 147
    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_large_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/slice/widget/SliceStyle;->mListLargeHeight:I

    return-void

    :catchall_134
    move-exception p0

    .line 119
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method


# virtual methods
.method public getGridBottomPadding()I
    .registers 1

    .line 211
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mGridBottomPadding:I

    return p0
.end method

.method public getGridHeight(Landroidx/slice/widget/GridContent;Landroidx/slice/widget/SliceViewPolicy;)I
    .registers 9

    .line 254
    invoke-virtual {p2}, Landroidx/slice/widget/SliceViewPolicy;->getMode()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_a

    move p2, v1

    goto :goto_b

    :cond_a
    move p2, v0

    .line 255
    :goto_b
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->isValid()Z

    move-result v2

    if-nez v2, :cond_12

    return v0

    .line 258
    :cond_12
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->getLargestImageMode()I

    move-result v2

    .line 260
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->isAllImages()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 261
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->getGridContent()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v1, :cond_2e

    if-eqz p2, :cond_2b

    iget p2, p0, Landroidx/slice/widget/SliceStyle;->mGridBigPicMinHeight:I

    goto :goto_5a

    :cond_2b
    iget p2, p0, Landroidx/slice/widget/SliceStyle;->mGridBigPicMaxHeight:I

    goto :goto_5a

    :cond_2e
    if-nez v2, :cond_33

    iget p2, p0, Landroidx/slice/widget/SliceStyle;->mGridMinHeight:I

    goto :goto_5a

    :cond_33
    iget p2, p0, Landroidx/slice/widget/SliceStyle;->mGridAllImagesHeight:I

    goto :goto_5a

    .line 266
    :cond_36
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->getMaxCellLineCount()I

    move-result v3

    if-le v3, v1, :cond_3e

    move v3, v1

    goto :goto_3f

    :cond_3e
    move v3, v0

    .line 267
    :goto_3f
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->hasImage()Z

    move-result v4

    if-eqz v2, :cond_4a

    const/4 v5, 0x3

    if-ne v2, v5, :cond_49

    goto :goto_4a

    :cond_49
    move v1, v0

    :cond_4a
    :goto_4a
    if-eqz v3, :cond_53

    if-nez p2, :cond_53

    if-eqz v4, :cond_55

    .line 270
    iget p2, p0, Landroidx/slice/widget/SliceStyle;->mGridMaxHeight:I

    goto :goto_5a

    :cond_53
    if-eqz v1, :cond_58

    :cond_55
    iget p2, p0, Landroidx/slice/widget/SliceStyle;->mGridMinHeight:I

    goto :goto_5a

    :cond_58
    iget p2, p0, Landroidx/slice/widget/SliceStyle;->mGridImageTextHeight:I

    .line 274
    :goto_5a
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->isAllImages()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-virtual {p1}, Landroidx/slice/widget/SliceContent;->getRowIndex()I

    move-result v1

    if-nez v1, :cond_69

    iget v1, p0, Landroidx/slice/widget/SliceStyle;->mGridTopPadding:I

    goto :goto_6a

    :cond_69
    move v1, v0

    .line 276
    :goto_6a
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->isAllImages()Z

    move-result v2

    if-eqz v2, :cond_78

    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->getIsLastIndex()Z

    move-result p1

    if-eqz p1, :cond_78

    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mGridBottomPadding:I

    :cond_78
    add-int/2addr p2, v1

    add-int/2addr p2, v0

    return p2
.end method

.method public getGridSubtitleSize()I
    .registers 1

    .line 199
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mGridSubtitleSize:I

    return p0
.end method

.method public getGridTitleSize()I
    .registers 1

    .line 195
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mGridTitleSize:I

    return p0
.end method

.method public getGridTopPadding()I
    .registers 1

    .line 207
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mGridTopPadding:I

    return p0
.end method

.method public getHeaderSubtitleSize()I
    .registers 1

    .line 175
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mHeaderSubtitleSize:I

    return p0
.end method

.method public getHeaderTitleSize()I
    .registers 1

    .line 171
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mHeaderTitleSize:I

    return p0
.end method

.method public getListHeight(Landroidx/slice/widget/ListContent;Landroidx/slice/widget/SliceViewPolicy;)I
    .registers 10

    .line 282
    invoke-virtual {p2}, Landroidx/slice/widget/SliceViewPolicy;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 283
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getHeader()Landroidx/slice/widget/RowContent;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Landroidx/slice/widget/RowContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result p0

    return p0

    .line 285
    :cond_10
    invoke-virtual {p2}, Landroidx/slice/widget/SliceViewPolicy;->getMaxHeight()I

    move-result v0

    .line 286
    invoke-virtual {p2}, Landroidx/slice/widget/SliceViewPolicy;->isScrollable()Z

    move-result v2

    .line 288
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Landroidx/slice/widget/SliceStyle;->getListItemsHeight(Ljava/util/List;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v3

    if-lez v0, :cond_2e

    .line 291
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getHeader()Landroidx/slice/widget/RowContent;

    move-result-object v4

    invoke-virtual {v4, p0, p2}, Landroidx/slice/widget/RowContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v4

    .line 292
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_2e
    if-lez v0, :cond_32

    move v4, v0

    goto :goto_34

    .line 294
    :cond_32
    iget v4, p0, Landroidx/slice/widget/SliceStyle;->mListLargeHeight:I

    :goto_34
    sub-int v5, v3, v4

    .line 298
    iget v6, p0, Landroidx/slice/widget/SliceStyle;->mListMinScrollHeight:I

    if-lt v5, v6, :cond_3b

    goto :goto_3c

    :cond_3b
    const/4 v1, 0x0

    :goto_3c
    if-eqz v1, :cond_40

    move v3, v4

    goto :goto_47

    :cond_40
    if-gtz v0, :cond_43

    goto :goto_47

    .line 303
    :cond_43
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_47
    if-nez v2, :cond_51

    .line 305
    invoke-virtual {p0, p1, v3, p2}, Landroidx/slice/widget/SliceStyle;->getListItemsForNonScrollingList(Landroidx/slice/widget/ListContent;ILandroidx/slice/widget/SliceViewPolicy;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroidx/slice/widget/SliceStyle;->getListItemsHeight(Ljava/util/List;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v3

    :cond_51
    return v3
.end method

.method public getListItemsForNonScrollingList(Landroidx/slice/widget/ListContent;ILandroidx/slice/widget/SliceViewPolicy;)Ljava/util/ArrayList;
    .registers 12
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/widget/ListContent;",
            "I",
            "Landroidx/slice/widget/SliceViewPolicy;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroidx/slice/widget/SliceContent;",
            ">;"
        }
    .end annotation

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 344
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_8c

    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_8c

    .line 347
    :cond_17
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1f

    const/4 v1, 0x2

    goto :goto_20

    :cond_1f
    const/4 v1, 0x1

    .line 350
    :goto_20
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getSeeMoreItem()Landroidx/slice/widget/SliceContent;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_31

    .line 351
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getSeeMoreItem()Landroidx/slice/widget/SliceContent;

    move-result-object v2

    invoke-virtual {v2, p0, p3}, Landroidx/slice/widget/SliceContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v2

    add-int/2addr v2, v3

    goto :goto_32

    :cond_31
    move v2, v3

    .line 353
    :goto_32
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v2

    move v2, v3

    :goto_3c
    if-ge v2, v4, :cond_62

    .line 355
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/slice/widget/SliceContent;

    invoke-virtual {v6, p0, p3}, Landroidx/slice/widget/SliceContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v6

    if-lez p2, :cond_53

    add-int v7, v5, v6

    if-le v7, p2, :cond_53

    goto :goto_62

    :cond_53
    add-int/2addr v5, v6

    .line 360
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 363
    :cond_62
    :goto_62
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getSeeMoreItem()Landroidx/slice/widget/SliceContent;

    move-result-object p0

    if-eqz p0, :cond_7b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lt p0, v1, :cond_7b

    .line 364
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eq p0, v4, :cond_7b

    .line 366
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getSeeMoreItem()Landroidx/slice/widget/SliceContent;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    :cond_7b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_8c

    .line 370
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8c
    :goto_8c
    return-object v0
.end method

.method public getListItemsHeight(Ljava/util/List;Landroidx/slice/widget/SliceViewPolicy;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/widget/SliceContent;",
            ">;",
            "Landroidx/slice/widget/SliceViewPolicy;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    .line 317
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    .line 318
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/widget/SliceContent;

    .line 320
    :cond_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_29

    invoke-virtual {v1}, Landroidx/slice/widget/SliceContent;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v2

    const-string v3, "horizontal"

    invoke-virtual {v2, v3}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 321
    invoke-virtual {v1, p0, p2}, Landroidx/slice/widget/SliceContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result p0

    return p0

    :cond_29
    move v1, v0

    .line 323
    :goto_2a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3e

    .line 324
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/widget/SliceContent;

    invoke-virtual {v2, p0, p2}, Landroidx/slice/widget/SliceContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_3e
    return v1
.end method

.method public getRowHeight(Landroidx/slice/widget/RowContent;Landroidx/slice/widget/SliceViewPolicy;)I
    .registers 5

    .line 227
    invoke-virtual {p2}, Landroidx/slice/widget/SliceViewPolicy;->getMaxSmallHeight()I

    move-result v0

    if-lez v0, :cond_b

    invoke-virtual {p2}, Landroidx/slice/widget/SliceViewPolicy;->getMaxSmallHeight()I

    move-result v0

    goto :goto_d

    :cond_b
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mRowMaxHeight:I

    .line 229
    :goto_d
    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v1

    if-nez v1, :cond_21

    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getSelection()Landroidx/slice/SliceItem;

    move-result-object v1

    if-nez v1, :cond_21

    .line 230
    invoke-virtual {p2}, Landroidx/slice/widget/SliceViewPolicy;->getMode()I

    move-result p2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_21

    return v0

    .line 234
    :cond_21
    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object p2

    const/4 v1, 0x1

    if-eqz p2, :cond_37

    .line 237
    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getLineCount()I

    move-result p1

    if-le p1, v1, :cond_31

    iget p1, p0, Landroidx/slice/widget/SliceStyle;->mRowTextWithRangeHeight:I

    goto :goto_33

    :cond_31
    iget p1, p0, Landroidx/slice/widget/SliceStyle;->mRowSingleTextWithRangeHeight:I

    .line 239
    :goto_33
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mRowRangeHeight:I

    :goto_35
    add-int/2addr p1, p0

    return p1

    .line 242
    :cond_37
    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getSelection()Landroidx/slice/SliceItem;

    move-result-object p2

    if-eqz p2, :cond_4b

    .line 245
    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getLineCount()I

    move-result p1

    if-le p1, v1, :cond_46

    iget p1, p0, Landroidx/slice/widget/SliceStyle;->mRowTextWithSelectionHeight:I

    goto :goto_48

    :cond_46
    iget p1, p0, Landroidx/slice/widget/SliceStyle;->mRowSingleTextWithSelectionHeight:I

    .line 247
    :goto_48
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mRowSelectionHeight:I

    goto :goto_35

    .line 250
    :cond_4b
    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getLineCount()I

    move-result p2

    if-gt p2, v1, :cond_5a

    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getIsHeader()Z

    move-result p1

    if-eqz p1, :cond_58

    goto :goto_5a

    :cond_58
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mRowMinHeight:I

    :cond_5a
    :goto_5a
    return v0
.end method

.method public getRowMaxHeight()I
    .registers 1

    .line 151
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mRowMaxHeight:I

    return p0
.end method

.method public getRowRangeHeight()I
    .registers 1

    .line 219
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mRowRangeHeight:I

    return p0
.end method

.method public getRowSelectionHeight()I
    .registers 1

    .line 223
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mRowSelectionHeight:I

    return p0
.end method

.method public getRowStyle()Landroidx/slice/widget/RowStyle;
    .registers 1

    .line 215
    iget-object p0, p0, Landroidx/slice/widget/SliceStyle;->mRowStyle:Landroidx/slice/widget/RowStyle;

    return-object p0
.end method

.method public getSubtitleColor()I
    .registers 1

    .line 167
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mSubtitleColor:I

    return p0
.end method

.method public getSubtitleSize()I
    .registers 1

    .line 187
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mSubtitleSize:I

    return p0
.end method

.method public getTintColor()I
    .registers 1

    .line 159
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    return p0
.end method

.method public getTitleColor()I
    .registers 1

    .line 163
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mTitleColor:I

    return p0
.end method

.method public getTitleSize()I
    .registers 1

    .line 183
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mTitleSize:I

    return p0
.end method

.method public getVerticalGridTextPadding()I
    .registers 1

    .line 203
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mVerticalGridTextPadding:I

    return p0
.end method

.method public getVerticalHeaderTextPadding()I
    .registers 1

    .line 179
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mVerticalHeaderTextPadding:I

    return p0
.end method

.method public getVerticalTextPadding()I
    .registers 1

    .line 191
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mVerticalTextPadding:I

    return p0
.end method
