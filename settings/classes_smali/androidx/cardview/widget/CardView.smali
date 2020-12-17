.class public Landroidx/cardview/widget/CardView;
.super Landroid/widget/FrameLayout;
.source "CardView.java"


# static fields
.field private static final COLOR_BACKGROUND_ATTR:[I

.field private static final IMPL:Landroidx/cardview/widget/CardViewImpl;


# instance fields
.field private final mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

.field private mCompatPadding:Z

.field final mContentPadding:Landroid/graphics/Rect;

.field private mPreventCornerOverlap:Z

.field final mShadowBounds:Landroid/graphics/Rect;

.field mUserSetMinHeight:I

.field mUserSetMinWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010031

    aput v2, v0, v1

    .line 81
    sput-object v0, Landroidx/cardview/widget/CardView;->COLOR_BACKGROUND_ATTR:[I

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_19

    .line 86
    new-instance v0, Landroidx/cardview/widget/CardViewApi21Impl;

    invoke-direct {v0}, Landroidx/cardview/widget/CardViewApi21Impl;-><init>()V

    sput-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    goto :goto_2c

    :cond_19
    const/16 v1, 0x11

    if-lt v0, v1, :cond_25

    .line 88
    new-instance v0, Landroidx/cardview/widget/CardViewApi17Impl;

    invoke-direct {v0}, Landroidx/cardview/widget/CardViewApi17Impl;-><init>()V

    sput-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    goto :goto_2c

    .line 90
    :cond_25
    new-instance v0, Landroidx/cardview/widget/CardViewBaseImpl;

    invoke-direct {v0}, Landroidx/cardview/widget/CardViewBaseImpl;-><init>()V

    sput-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    .line 92
    :goto_2c
    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    invoke-interface {v0}, Landroidx/cardview/widget/CardViewImpl;->initStatic()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, v0}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 117
    sget v0, Landroidx/cardview/R$attr;->cardViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/cardview/widget/CardView;->mShadowBounds:Landroid/graphics/Rect;

    .line 451
    new-instance v0, Landroidx/cardview/widget/CardView$1;

    invoke-direct {v0, p0}, Landroidx/cardview/widget/CardView$1;-><init>(Landroidx/cardview/widget/CardView;)V

    iput-object v0, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    .line 123
    sget-object v0, Landroidx/cardview/R$styleable;->CardView:[I

    sget v1, Landroidx/cardview/R$style;->CardView:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 125
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_32

    .line 126
    sget-object v4, Landroidx/cardview/R$styleable;->CardView:[I

    sget v8, Landroidx/cardview/R$style;->CardView:I

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, v0

    move v7, p3

    invoke-virtual/range {v2 .. v8}, Landroid/widget/FrameLayout;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 130
    :cond_32
    sget p2, Landroidx/cardview/R$styleable;->CardView_cardBackgroundColor:I

    invoke-virtual {v0, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_43

    .line 131
    sget p2, Landroidx/cardview/R$styleable;->CardView_cardBackgroundColor:I

    invoke-virtual {v0, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    :goto_41
    move-object v4, p2

    goto :goto_7d

    .line 134
    :cond_43
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object v1, Landroidx/cardview/widget/CardView;->COLOR_BACKGROUND_ATTR:[I

    invoke-virtual {p2, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 135
    invoke-virtual {p2, p3, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 136
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p2, 0x3

    new-array p2, p2, [F

    .line 140
    invoke-static {v1, p2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v1, 0x2

    .line 141
    aget p2, p2, v1

    const/high16 v1, 0x3f000000  # 0.5f

    cmpl-float p2, p2, v1

    if-lez p2, :cond_6e

    .line 142
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Landroidx/cardview/R$color;->cardview_light_background:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    goto :goto_78

    .line 143
    :cond_6e
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Landroidx/cardview/R$color;->cardview_dark_background:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    .line 141
    :goto_78
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    goto :goto_41

    .line 145
    :goto_7d
    sget p2, Landroidx/cardview/R$styleable;->CardView_cardCornerRadius:I

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 146
    sget p2, Landroidx/cardview/R$styleable;->CardView_cardElevation:I

    invoke-virtual {v0, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    .line 147
    sget p2, Landroidx/cardview/R$styleable;->CardView_cardMaxElevation:I

    invoke-virtual {v0, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    .line 148
    sget v1, Landroidx/cardview/R$styleable;->CardView_cardUseCompatPadding:I

    invoke-virtual {v0, v1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/cardview/widget/CardView;->mCompatPadding:Z

    .line 149
    sget v1, Landroidx/cardview/R$styleable;->CardView_cardPreventCornerOverlap:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/cardview/widget/CardView;->mPreventCornerOverlap:Z

    .line 150
    sget v1, Landroidx/cardview/R$styleable;->CardView_contentPadding:I

    invoke-virtual {v0, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 151
    iget-object v2, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    sget v3, Landroidx/cardview/R$styleable;->CardView_contentPaddingLeft:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 153
    iget-object v2, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    sget v3, Landroidx/cardview/R$styleable;->CardView_contentPaddingTop:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 155
    iget-object v2, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    sget v3, Landroidx/cardview/R$styleable;->CardView_contentPaddingRight:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 157
    iget-object v2, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    sget v3, Landroidx/cardview/R$styleable;->CardView_contentPaddingBottom:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    cmpl-float v1, v6, p2

    if-lez v1, :cond_d5

    move v7, v6

    goto :goto_d6

    :cond_d5
    move v7, p2

    .line 162
    :goto_d6
    sget p2, Landroidx/cardview/R$styleable;->CardView_android_minWidth:I

    invoke-virtual {v0, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroidx/cardview/widget/CardView;->mUserSetMinWidth:I

    .line 163
    sget p2, Landroidx/cardview/R$styleable;->CardView_android_minHeight:I

    invoke-virtual {v0, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroidx/cardview/widget/CardView;->mUserSetMinHeight:I

    .line 164
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 166
    sget-object v1, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    iget-object v2, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    move-object v3, p1

    invoke-interface/range {v1 .. v7}, Landroidx/cardview/widget/CardViewImpl;->initialize(Landroidx/cardview/widget/CardViewDelegate;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V

    return-void
.end method

.method static synthetic access$001(Landroidx/cardview/widget/CardView;IIII)V
    .registers 5

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method static synthetic access$101(Landroidx/cardview/widget/CardView;I)V
    .registers 2

    .line 79
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    return-void
.end method

.method static synthetic access$201(Landroidx/cardview/widget/CardView;I)V
    .registers 2

    .line 79
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    return-void
.end method


# virtual methods
.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 307
    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v0, p0}, Landroidx/cardview/widget/CardViewImpl;->getBackgroundColor(Landroidx/cardview/widget/CardViewDelegate;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getCardElevation()F
    .registers 2

    .line 391
    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v0, p0}, Landroidx/cardview/widget/CardViewImpl;->getElevation(Landroidx/cardview/widget/CardViewDelegate;)F

    move-result p0

    return p0
.end method

.method public getContentPaddingBottom()I
    .registers 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 347
    iget-object p0, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    return p0
.end method

.method public getContentPaddingLeft()I
    .registers 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 317
    iget-object p0, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    return p0
.end method

.method public getContentPaddingRight()I
    .registers 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 327
    iget-object p0, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    return p0
.end method

.method public getContentPaddingTop()I
    .registers 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 337
    iget-object p0, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method public getMaxCardElevation()F
    .registers 2

    .line 417
    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v0, p0}, Landroidx/cardview/widget/CardViewImpl;->getMaxElevation(Landroidx/cardview/widget/CardViewDelegate;)F

    move-result p0

    return p0
.end method

.method public getPreventCornerOverlap()Z
    .registers 1

    .line 428
    iget-boolean p0, p0, Landroidx/cardview/widget/CardView;->mPreventCornerOverlap:Z

    return p0
.end method

.method public getRadius()F
    .registers 2

    .line 368
    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v0, p0}, Landroidx/cardview/widget/CardViewImpl;->getRadius(Landroidx/cardview/widget/CardViewDelegate;)F

    move-result p0

    return p0
.end method

.method public getUseCompatPadding()Z
    .registers 1

    .line 187
    iget-boolean p0, p0, Landroidx/cardview/widget/CardView;->mCompatPadding:Z

    return p0
.end method

.method protected onMeasure(II)V
    .registers 8

    .line 236
    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    instance-of v0, v0, Landroidx/cardview/widget/CardViewApi21Impl;

    if-nez v0, :cond_54

    .line 237
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_13

    if-eq v0, v1, :cond_13

    goto :goto_2d

    .line 241
    :cond_13
    sget-object v3, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    iget-object v4, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v3, v4}, Landroidx/cardview/widget/CardViewImpl;->getMinWidth(Landroidx/cardview/widget/CardViewDelegate;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 243
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 242
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 250
    :goto_2d
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v2, :cond_36

    if-eq v0, v1, :cond_36

    goto :goto_50

    .line 254
    :cond_36
    sget-object v1, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    iget-object v2, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v1, v2}, Landroidx/cardview/widget/CardViewImpl;->getMinHeight(Landroidx/cardview/widget/CardViewDelegate;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 256
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 255
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 262
    :goto_50
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_57

    .line 264
    :cond_54
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_57
    return-void
.end method

.method public setCardBackgroundColor(I)V
    .registers 3
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 287
    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroidx/cardview/widget/CardViewImpl;->setBackgroundColor(Landroidx/cardview/widget/CardViewDelegate;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1  # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 297
    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v0, p0, p1}, Landroidx/cardview/widget/CardViewImpl;->setBackgroundColor(Landroidx/cardview/widget/CardViewDelegate;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardElevation(F)V
    .registers 3

    .line 380
    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v0, p0, p1}, Landroidx/cardview/widget/CardViewImpl;->setElevation(Landroidx/cardview/widget/CardViewDelegate;F)V

    return-void
.end method

.method public setContentPadding(IIII)V
    .registers 6
    .param p1  # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2  # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p3  # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p4  # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 230
    iget-object v0, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 231
    sget-object p1, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    invoke-interface {p1, p0}, Landroidx/cardview/widget/CardViewImpl;->updatePadding(Landroidx/cardview/widget/CardViewDelegate;)V

    return-void
.end method

.method public setMaxCardElevation(F)V
    .registers 3

    .line 406
    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v0, p0, p1}, Landroidx/cardview/widget/CardViewImpl;->setMaxElevation(Landroidx/cardview/widget/CardViewDelegate;F)V

    return-void
.end method

.method public setMinimumHeight(I)V
    .registers 2

    .line 276
    iput p1, p0, Landroidx/cardview/widget/CardView;->mUserSetMinHeight:I

    .line 277
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    return-void
.end method

.method public setMinimumWidth(I)V
    .registers 2

    .line 270
    iput p1, p0, Landroidx/cardview/widget/CardView;->mUserSetMinWidth:I

    .line 271
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    return-void
.end method

.method public setPadding(IIII)V
    .registers 5

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .registers 5

    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .registers 3

    .line 445
    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->mPreventCornerOverlap:Z

    if-eq p1, v0, :cond_d

    .line 446
    iput-boolean p1, p0, Landroidx/cardview/widget/CardView;->mPreventCornerOverlap:Z

    .line 447
    sget-object p1, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    invoke-interface {p1, p0}, Landroidx/cardview/widget/CardViewImpl;->onPreventCornerOverlapChanged(Landroidx/cardview/widget/CardViewDelegate;)V

    :cond_d
    return-void
.end method

.method public setRadius(F)V
    .registers 3

    .line 358
    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v0, p0, p1}, Landroidx/cardview/widget/CardViewImpl;->setRadius(Landroidx/cardview/widget/CardViewDelegate;F)V

    return-void
.end method

.method public setUseCompatPadding(Z)V
    .registers 3

    .line 207
    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->mCompatPadding:Z

    if-eq v0, p1, :cond_d

    .line 208
    iput-boolean p1, p0, Landroidx/cardview/widget/CardView;->mCompatPadding:Z

    .line 209
    sget-object p1, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    invoke-interface {p1, p0}, Landroidx/cardview/widget/CardViewImpl;->onCompatPaddingChanged(Landroidx/cardview/widget/CardViewDelegate;)V

    :cond_d
    return-void
.end method
