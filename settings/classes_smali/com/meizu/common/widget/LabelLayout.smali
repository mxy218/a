.class public Lcom/meizu/common/widget/LabelLayout;
.super Landroid/view/ViewGroup;
.source "LabelLayout.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/LabelLayout$LayoutParams;,
        Lcom/meizu/common/widget/LabelLayout$ImagePlayer;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGravity:I

.field private mHotWordsHeight:I

.field private mHotWordsLayoutParams:Lcom/meizu/common/widget/LabelLayout$LayoutParams;

.field private mHotWordsTextSize:F

.field private mIconMarginBottom:I

.field private mIconMarginLeft:I

.field private mIconMaxHeight:I

.field private mIconMaxWidth:I

.field private mItemMargin:I

.field private mLabelInnerSpace:I

.field private mLabelLayoutParams:Lcom/meizu/common/widget/LabelLayout$LayoutParams;

.field private mLabelRadiusCorner:I

.field private mLabelTextSize:F

.field private final mLineHeights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLineMargin:I

.field private final mLineMargins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMaxLine:I

.field private mMediumTypeface:Landroid/graphics/Typeface;

.field private mMiniLabelInnerSpace:I

.field private mMiniLabelLayoutParams:Lcom/meizu/common/widget/LabelLayout$LayoutParams;

.field private mMiniLabelTextSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 203
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/LabelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 207
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/LabelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 211
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    invoke-static {}, Lcom/meizu/common/widget/LabelLayout;->isIcs()Z

    move-result v0

    if-eqz v0, :cond_d

    const v0, 0x800003

    goto :goto_e

    :cond_d
    const/4 v0, 0x3

    :goto_e
    or-int/lit8 v0, v0, 0x30

    iput v0, p0, Lcom/meizu/common/widget/LabelLayout;->mGravity:I

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/LabelLayout;->mLines:Ljava/util/List;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/LabelLayout;->mLineHeights:Ljava/util/List;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/LabelLayout;->mLineMargins:Ljava/util/List;

    const/16 v0, 0x64

    .line 132
    iput v0, p0, Lcom/meizu/common/widget/LabelLayout;->mMaxLine:I

    .line 212
    iput-object p1, p0, Lcom/meizu/common/widget/LabelLayout;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string/jumbo v1, "sans-serif-medium"

    .line 213
    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/LabelLayout;->mMediumTypeface:Landroid/graphics/Typeface;

    .line 215
    sget-object v1, Lcom/meizu/common/R$styleable;->LabelLayout:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 216
    sget p2, Lcom/meizu/common/R$styleable;->LabelLayout_labelHeight:I

    .line 217
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/meizu/common/R$dimen;->label_layout_label_height_default:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    .line 216
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    .line 218
    sget p3, Lcom/meizu/common/R$styleable;->LabelLayout_lineMargin:I

    .line 219
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->label_layout_line_margin_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 218
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/meizu/common/widget/LabelLayout;->mLineMargin:I

    .line 220
    sget p3, Lcom/meizu/common/R$styleable;->LabelLayout_itemMargin:I

    .line 221
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->label_layout_item_margin_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 220
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/meizu/common/widget/LabelLayout;->mItemMargin:I

    .line 222
    sget p3, Lcom/meizu/common/R$styleable;->LabelLayout_labelRadiusCorner:I

    .line 223
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->label_layout_label_radius_corner_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 222
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/meizu/common/widget/LabelLayout;->mLabelRadiusCorner:I

    .line 224
    sget p3, Lcom/meizu/common/R$styleable;->LabelLayout_hotWordsHeight:I

    .line 225
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->label_layout_hot_words_height_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 224
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/meizu/common/widget/LabelLayout;->mHotWordsHeight:I

    .line 226
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 228
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/meizu/common/R$dimen;->label_layout_label_inner_space_default:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/LabelLayout;->mLabelInnerSpace:I

    .line 229
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/meizu/common/R$dimen;->label_layout_label_text_size_default:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    .line 230
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p3

    iput p1, p0, Lcom/meizu/common/widget/LabelLayout;->mLabelTextSize:F

    .line 231
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/meizu/common/R$dimen;->label_layout_hot_words_text_size_default:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    .line 232
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p3

    iput p1, p0, Lcom/meizu/common/widget/LabelLayout;->mHotWordsTextSize:F

    .line 233
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/meizu/common/R$dimen;->label_layout_icon_margin_left_right:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/LabelLayout;->mIconMarginLeft:I

    .line 234
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/meizu/common/R$dimen;->label_layout_icon_margin_bottom:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/LabelLayout;->mIconMarginBottom:I

    .line 235
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/meizu/common/R$dimen;->label_layout_icon_max_width:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/LabelLayout;->mIconMaxWidth:I

    .line 236
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/meizu/common/R$dimen;->label_layout_icon_max_height:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/LabelLayout;->mIconMaxHeight:I

    .line 238
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/meizu/common/R$dimen;->label_layout_mini_label_height_default:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 239
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/meizu/common/R$dimen;->label_layout_mini_line_margin_default:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    .line 240
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->label_layout_mini_item_margin_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const/4 v1, -0x2

    .line 241
    invoke-direct {p0, v1, p1, p3, v0}, Lcom/meizu/common/widget/LabelLayout;->createLayoutParams(IIII)Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/LabelLayout;->mMiniLabelLayoutParams:Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    .line 242
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/meizu/common/R$dimen;->label_layout_mini_label_inner_space_default:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/LabelLayout;->mMiniLabelInnerSpace:I

    .line 243
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/meizu/common/R$dimen;->label_layout_mini_label_text_size_default:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    .line 244
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p3

    iput p1, p0, Lcom/meizu/common/widget/LabelLayout;->mMiniLabelTextSize:F

    .line 246
    iget p1, p0, Lcom/meizu/common/widget/LabelLayout;->mLineMargin:I

    iget p3, p0, Lcom/meizu/common/widget/LabelLayout;->mItemMargin:I

    invoke-direct {p0, v1, p2, p1, p3}, Lcom/meizu/common/widget/LabelLayout;->createLayoutParams(IIII)Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/LabelLayout;->mLabelLayoutParams:Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    .line 247
    iget p1, p0, Lcom/meizu/common/widget/LabelLayout;->mHotWordsHeight:I

    iget p2, p0, Lcom/meizu/common/widget/LabelLayout;->mLineMargin:I

    iget p3, p0, Lcom/meizu/common/widget/LabelLayout;->mItemMargin:I

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/meizu/common/widget/LabelLayout;->createLayoutParams(IIII)Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/LabelLayout;->mHotWordsLayoutParams:Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    return-void
.end method

.method private createLayoutParams(IIII)Lcom/meizu/common/widget/LabelLayout$LayoutParams;
    .registers 5

    .line 251
    new-instance p0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/LabelLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 252
    invoke-virtual {p0, p1, p1, p1, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 253
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    const/16 p1, 0x50

    .line 254
    iput p1, p0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->gravity:I

    return-object p0
.end method

.method private static isIcs()Z
    .registers 2

    .line 679
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 1

    .line 48
    invoke-virtual {p0}, Lcom/meizu/common/widget/LabelLayout;->generateDefaultLayoutParams()Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Lcom/meizu/common/widget/LabelLayout$LayoutParams;
    .registers 2

    .line 538
    new-instance p0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Lcom/meizu/common/widget/LabelLayout$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 48
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/LabelLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 48
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/LabelLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/meizu/common/widget/LabelLayout$LayoutParams;
    .registers 3

    .line 530
    new-instance v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/meizu/common/widget/LabelLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/meizu/common/widget/LabelLayout$LayoutParams;
    .registers 2

    .line 522
    new-instance p0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/meizu/common/widget/LabelLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getGravity()I
    .registers 1

    .line 558
    iget p0, p0, Lcom/meizu/common/widget/LabelLayout;->mGravity:I

    return p0
.end method

.method protected onLayout(ZIIII)V
    .registers 28

    move-object/from16 v0, p0

    .line 353
    iget-object v1, v0, Lcom/meizu/common/widget/LabelLayout;->mLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 354
    iget-object v1, v0, Lcom/meizu/common/widget/LabelLayout;->mLineHeights:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 355
    iget-object v1, v0, Lcom/meizu/common/widget/LabelLayout;->mLineMargins:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 357
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 358
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    .line 360
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    .line 364
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 367
    iget v5, v0, Lcom/meizu/common/widget/LabelLayout;->mGravity:I

    and-int/lit8 v5, v5, 0x7

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3b

    const/4 v7, 0x5

    if-eq v5, v7, :cond_38

    const/4 v5, 0x0

    goto :goto_3d

    :cond_38
    const/high16 v5, 0x3f800000  # 1.0f

    goto :goto_3d

    :cond_3b
    const/high16 v5, 0x3f000000  # 0.5f

    :goto_3d
    move v10, v3

    move-object v8, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 380
    :goto_42
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    const/16 v12, 0x8

    if-ge v3, v11, :cond_a7

    .line 382
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 384
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-ne v13, v12, :cond_55

    goto :goto_a4

    .line 388
    :cond_55
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    .line 390
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    iget v14, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v13, v14

    iget v14, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v13, v14

    .line 391
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    iget v15, v12, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v14, v15

    iget v12, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v14, v12

    add-int v12, v9, v13

    if-le v12, v1, :cond_9c

    .line 394
    iget-object v12, v0, Lcom/meizu/common/widget/LabelLayout;->mLineHeights:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    iget-object v12, v0, Lcom/meizu/common/widget/LabelLayout;->mLines:Ljava/util/List;

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    iget-object v8, v0, Lcom/meizu/common/widget/LabelLayout;->mLineMargins:Ljava/util/List;

    sub-int v9, v1, v9

    int-to-float v9, v9

    mul-float/2addr v9, v5

    float-to-int v9, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v12

    add-int/2addr v9, v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v10, v4

    .line 402
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v9, 0x0

    :cond_9c
    add-int/2addr v9, v13

    .line 406
    invoke-static {v4, v14}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 407
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a4
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 410
    :cond_a7
    iget-object v3, v0, Lcom/meizu/common/widget/LabelLayout;->mLineHeights:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    iget-object v3, v0, Lcom/meizu/common/widget/LabelLayout;->mLines:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    iget-object v3, v0, Lcom/meizu/common/widget/LabelLayout;->mLineMargins:Ljava/util/List;

    sub-int/2addr v1, v9

    int-to-float v1, v1

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    add-int/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v10, v4

    .line 417
    iget v1, v0, Lcom/meizu/common/widget/LabelLayout;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v3, 0x50

    const/16 v4, 0x10

    if-eq v1, v4, :cond_d9

    if-eq v1, v3, :cond_d6

    const/4 v1, 0x0

    goto :goto_dc

    :cond_d6
    sub-int v1, v2, v10

    goto :goto_dc

    :cond_d9
    sub-int/2addr v2, v10

    .line 422
    div-int/lit8 v1, v2, 0x2

    .line 429
    :goto_dc
    iget-object v2, v0, Lcom/meizu/common/widget/LabelLayout;->mLines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 432
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    .line 433
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v8

    if-ne v8, v6, :cond_ed

    goto :goto_ee

    :cond_ed
    const/4 v6, 0x0

    :goto_ee
    move v8, v5

    const/4 v5, 0x0

    :goto_f0
    if-ge v5, v2, :cond_234

    .line 437
    iget-object v10, v0, Lcom/meizu/common/widget/LabelLayout;->mLineHeights:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 438
    iget-object v11, v0, Lcom/meizu/common/widget/LabelLayout;->mLines:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 439
    iget-object v13, v0, Lcom/meizu/common/widget/LabelLayout;->mLineMargins:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eqz v6, :cond_119

    .line 442
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v14

    goto :goto_11a

    :cond_119
    const/4 v14, 0x0

    .line 445
    :goto_11a
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15

    move v7, v14

    move v14, v13

    const/4 v13, 0x0

    :goto_121
    if-ge v13, v15, :cond_216

    .line 449
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Landroid/view/View;

    .line 450
    iget v4, v0, Lcom/meizu/common/widget/LabelLayout;->mMaxLine:I

    if-lt v5, v4, :cond_133

    .line 451
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_139

    .line 454
    :cond_133
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v12, :cond_147

    :goto_139
    move/from16 p5, v2

    move/from16 v18, v6

    move/from16 v17, v9

    move/from16 v21, v10

    move-object/from16 v16, v11

    move/from16 v19, v15

    goto/16 :goto_200

    .line 458
    :cond_147
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    .line 461
    iget v12, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 p5, v2

    const/4 v2, -0x1

    if-ne v12, v2, :cond_181

    .line 465
    iget v12, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v17, v9

    const/high16 v9, 0x40000000  # 2.0f

    if-ne v12, v2, :cond_160

    move v12, v9

    move/from16 v2, v17

    goto :goto_16c

    .line 467
    :cond_160
    iget v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ltz v2, :cond_168

    .line 469
    iget v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move v12, v9

    goto :goto_16c

    :cond_168
    move/from16 v2, v17

    const/high16 v12, -0x80000000

    .line 472
    :goto_16c
    invoke-static {v2, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v12, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v12, v10, v12

    move-object/from16 v16, v11

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v12, v11

    .line 473
    invoke-static {v12, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 472
    invoke-virtual {v3, v2, v9}, Landroid/view/View;->measure(II)V

    goto :goto_185

    :cond_181
    move/from16 v17, v9

    move-object/from16 v16, v11

    .line 476
    :goto_185
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 477
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 481
    iget v11, v4, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->gravity:I

    invoke-static {v11}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v11

    if-eqz v11, :cond_1b8

    .line 482
    iget v11, v4, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->gravity:I

    const/16 v12, 0x10

    if-eq v11, v12, :cond_1ad

    const/16 v12, 0x11

    if-eq v11, v12, :cond_1ad

    const/16 v12, 0x50

    if-eq v11, v12, :cond_1a4

    goto :goto_1b8

    :cond_1a4
    sub-int v11, v10, v9

    .line 491
    iget v12, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v11, v12

    iget v12, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v11, v12

    goto :goto_1b9

    :cond_1ad
    sub-int v11, v10, v9

    .line 488
    iget v12, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v11, v12

    iget v12, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    goto :goto_1b9

    :cond_1b8
    :goto_1b8
    const/4 v11, 0x0

    :goto_1b9
    if-nez v6, :cond_1e0

    .line 497
    iget v12, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v18, v6

    add-int v6, v14, v12

    move/from16 v19, v15

    iget v15, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v20, v8, v15

    add-int v20, v20, v11

    move/from16 v21, v10

    add-int v10, v20, v1

    add-int v20, v14, v2

    add-int v12, v20, v12

    add-int/2addr v9, v8

    add-int/2addr v9, v15

    add-int/2addr v9, v11

    add-int/2addr v9, v1

    invoke-virtual {v3, v6, v10, v12, v9}, Landroid/view/View;->layout(IIII)V

    .line 502
    iget v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    add-int/2addr v14, v2

    goto :goto_200

    :cond_1e0
    move/from16 v18, v6

    move/from16 v21, v10

    move/from16 v19, v15

    sub-int v6, v7, v2

    .line 504
    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v12, v8, v10

    add-int/2addr v12, v11

    add-int/2addr v12, v1

    add-int/2addr v9, v8

    add-int/2addr v9, v10

    add-int/2addr v9, v11

    add-int/2addr v9, v1

    invoke-virtual {v3, v6, v12, v7, v9}, Landroid/view/View;->layout(IIII)V

    .line 509
    invoke-virtual {v4}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v4}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v7, v2

    :goto_200
    add-int/lit8 v13, v13, 0x1

    move/from16 v2, p5

    move-object/from16 v11, v16

    move/from16 v9, v17

    move/from16 v6, v18

    move/from16 v15, v19

    move/from16 v10, v21

    const/16 v3, 0x50

    const/16 v4, 0x10

    const/16 v12, 0x8

    goto/16 :goto_121

    :cond_216
    move/from16 p5, v2

    move/from16 v18, v6

    move/from16 v17, v9

    move/from16 v21, v10

    .line 513
    iget v2, v0, Lcom/meizu/common/widget/LabelLayout;->mMaxLine:I

    if-ge v5, v2, :cond_224

    add-int v8, v8, v21

    :cond_224
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, p5

    move/from16 v9, v17

    move/from16 v6, v18

    const/16 v3, 0x50

    const/16 v4, 0x10

    const/16 v12, 0x8

    goto/16 :goto_f0

    :cond_234
    return-void
.end method

.method protected onMeasure(II)V
    .registers 22

    move-object/from16 v6, p0

    .line 263
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 265
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 266
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 268
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 269
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 272
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 277
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    move v15, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_27
    const/high16 v3, 0x40000000  # 2.0f

    if-ge v13, v11, :cond_ef

    .line 281
    invoke-virtual {v6, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    add-int/lit8 v0, v11, -0x1

    if-ne v13, v0, :cond_37

    const/4 v0, 0x1

    move/from16 v16, v0

    goto :goto_39

    :cond_37
    const/16 v16, 0x0

    .line 284
    :goto_39
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4d

    if-eqz v16, :cond_49

    .line 286
    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v15, v4

    move v14, v0

    :cond_49
    move/from16 v18, v8

    goto/16 :goto_e9

    :cond_4d
    move-object/from16 v0, p0

    move-object v1, v2

    move-object/from16 v17, v2

    move/from16 v2, p1

    move v12, v3

    move v3, v5

    move v12, v4

    move/from16 v4, p2

    move/from16 v18, v8

    move v8, v5

    move v5, v15

    .line 292
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 294
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    .line 297
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int v1, v7, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 302
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v3, -0x1

    const/high16 v4, -0x80000000

    if-ne v2, v3, :cond_82

    .line 304
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    :goto_7e
    move v2, v1

    const/high16 v1, 0x40000000  # 2.0f

    goto :goto_8b

    .line 305
    :cond_82
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ltz v2, :cond_89

    .line 307
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_7e

    :cond_89
    move v2, v1

    move v1, v4

    .line 310
    :goto_8b
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ltz v3, :cond_94

    .line 312
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/high16 v4, 0x40000000  # 2.0f

    goto :goto_9b

    :cond_94
    if-nez v10, :cond_99

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_9b

    :cond_99
    move/from16 v3, v18

    .line 318
    :goto_9b
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move-object/from16 v3, v17

    invoke-virtual {v3, v1, v2}, Landroid/view/View;->measure(II)V

    .line 320
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int v5, v8, v1

    .line 322
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int v2, v7, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    sub-int/2addr v2, v4

    if-le v5, v2, :cond_d2

    .line 324
    invoke-static {v14, v8}, Ljava/lang/Math;->max(II)I

    move-result v14

    add-int/2addr v15, v12

    .line 328
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v0

    move v5, v1

    goto :goto_e0

    .line 332
    :cond_d2
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_e0
    if-eqz v16, :cond_e8

    .line 336
    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v15, v2

    move v14, v0

    :cond_e8
    move v4, v2

    :goto_e9
    add-int/lit8 v13, v13, 0x1

    move/from16 v8, v18

    goto/16 :goto_27

    :cond_ef
    move/from16 v18, v8

    .line 342
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v14

    const/high16 v1, 0x40000000  # 2.0f

    if-ne v9, v1, :cond_100

    move v0, v7

    :cond_100
    if-ne v10, v1, :cond_104

    move/from16 v15, v18

    .line 344
    :cond_104
    invoke-virtual {v6, v0, v15}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public setGravity(I)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 543
    iget v0, p0, Lcom/meizu/common/widget/LabelLayout;->mGravity:I

    if-eq v0, p1, :cond_21

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_16

    .line 545
    invoke-static {}, Lcom/meizu/common/widget/LabelLayout;->isIcs()Z

    move-result v0

    if-eqz v0, :cond_14

    const v0, 0x800003

    goto :goto_15

    :cond_14
    const/4 v0, 0x3

    :goto_15
    or-int/2addr p1, v0

    :cond_16
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1c

    or-int/lit8 p1, p1, 0x30

    .line 552
    :cond_1c
    iput p1, p0, Lcom/meizu/common/widget/LabelLayout;->mGravity:I

    .line 553
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_21
    return-void
.end method

.method public setMaxLine(I)V
    .registers 2

    .line 562
    iput p1, p0, Lcom/meizu/common/widget/LabelLayout;->mMaxLine:I

    return-void
.end method
