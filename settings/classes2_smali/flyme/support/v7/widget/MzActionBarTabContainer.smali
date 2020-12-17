.class public Lflyme/support/v7/widget/MzActionBarTabContainer;
.super Landroid/view/ViewGroup;
.source "MzActionBarTabContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/widget/MzActionBarTabContainer$LayoutParams;
    }
.end annotation


# instance fields
.field private mAllowCollapse:Z

.field private mCollapseButton:Lflyme/support/v7/widget/TabCollapseButton;

.field private mCollapseButtonClickListener:Lflyme/support/v7/widget/TabCollapseButton$OnTabCollapseButtonClickListener;

.field private mCollapseButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mIsCollapse:Z

.field private mIsForceCollapse:Z

.field private mIsPreventEqualWidth:Z

.field private mOnScrollTabsVisibilityChangeListener:Lflyme/support/v7/app/ActionBar$OnScrollTabsVisibilityChangeListener;

.field protected mScollTabsVisibleAnim:Lflyme/support/v7/widget/AnimationUtils$AlphaVisibilityAnimator;

.field private mScrollTabsAnimListener:Landroidx/core/view/ViewPropertyAnimatorListener;

.field private mScrollTabsExpendTitleTextAppearance:I

.field private mScrollTabsExpendTitleTextColor:I

.field private mScrollTabsExpendTitleTextView:Landroid/widget/TextView;

.field private mScrollingTabView:Lflyme/support/v7/widget/ScrollingTabContainerView;

.field private mShowAtToolbar:Z

.field private mTabsGravitySet:Z

.field private mTopDividerColor:I

.field private mTopDividerHeight:I

.field private final mTopDividerPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 52
    sget v0, Lflyme/support/v7/appcompat/R$attr;->mzActionBarTabContainerStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mIsForceCollapse:Z

    .line 36
    iput-boolean v0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mShowAtToolbar:Z

    const/4 v2, 0x1

    .line 37
    iput-boolean v2, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mIsPreventEqualWidth:Z

    .line 479
    new-instance v2, Lflyme/support/v7/widget/MzActionBarTabContainer$1;

    invoke-direct {v2, p0}, Lflyme/support/v7/widget/MzActionBarTabContainer$1;-><init>(Lflyme/support/v7/widget/MzActionBarTabContainer;)V

    iput-object v2, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollTabsAnimListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 53
    sget-object v2, Lflyme/support/v7/appcompat/R$styleable;->MzActionBarTabContainer:[I

    sget v3, Lflyme/support/v7/appcompat/R$attr;->mzActionBarTabContainerStyle:I

    invoke-static {p1, v1, v2, v3, v0}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v2

    .line 55
    sget v3, Lflyme/support/v7/appcompat/R$styleable;->MzActionBarTabContainer_mzAllowCollapse:I

    invoke-virtual {v2, v3, v0}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mAllowCollapse:Z

    .line 56
    invoke-virtual {v2}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 57
    sget-object v2, Lflyme/support/v7/appcompat/R$styleable;->MzActionBarTabScrollView:[I

    sget v3, Lflyme/support/v7/appcompat/R$attr;->mzActionBarTabScrollViewStyle:I

    invoke-static {p1, v1, v2, v3, v0}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v1

    .line 60
    sget v2, Lflyme/support/v7/appcompat/R$styleable;->MzActionBarTabScrollView_mzTopDividerColor:I

    .line 61
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lflyme/support/v7/appcompat/R$color;->mz_action_bar_scrollview_divider_default_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 60
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mTopDividerColor:I

    .line 63
    sget v2, Lflyme/support/v7/appcompat/R$styleable;->MzActionBarTabScrollView_mzTopDividerHeight:I

    .line 64
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lflyme/support/v7/appcompat/R$dimen;->mz_action_bar_tab_scroll_top_divider_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 63
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mTopDividerHeight:I

    .line 66
    sget v2, Lflyme/support/v7/appcompat/R$styleable;->MzActionBarTabScrollView_mzTabScrollViewExpendTitleColor:I

    .line 67
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lflyme/support/v7/appcompat/R$color;->mz_white_action_bar_textcolor:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 66
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollTabsExpendTitleTextColor:I

    .line 68
    sget v2, Lflyme/support/v7/appcompat/R$styleable;->MzActionBarTabScrollView_mzTabScrollViewExpendTitleTextAppearance:I

    sget v3, Lflyme/support/v7/appcompat/R$style;->TextAppearance_Flyme_AppCompat_Widget_ActionBar_TabScrollView_ExpendTitle:I

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollTabsExpendTitleTextAppearance:I

    .line 70
    invoke-virtual {v1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 71
    iput-object p1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mContext:Landroid/content/Context;

    .line 72
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mTopDividerPaint:Landroid/graphics/Paint;

    .line 73
    iget-object p1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mTopDividerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mTopDividerColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lflyme/support/v7/appcompat/R$dimen;->mz_action_tab_bar_margin_left:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 76
    invoke-virtual {p0, p1, v0, p1, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method static synthetic access$000(Lflyme/support/v7/widget/MzActionBarTabContainer;)Lflyme/support/v7/app/ActionBar$OnScrollTabsVisibilityChangeListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mOnScrollTabsVisibilityChangeListener:Lflyme/support/v7/app/ActionBar$OnScrollTabsVisibilityChangeListener;

    return-object p0
.end method

.method private performCollapse()V
    .registers 4

    .line 221
    iget-object v0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mCollapseButton:Lflyme/support/v7/widget/TabCollapseButton;

    if-nez v0, :cond_d

    .line 222
    new-instance v0, Lflyme/support/v7/widget/TabCollapseButton;

    iget-object v1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lflyme/support/v7/widget/TabCollapseButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mCollapseButton:Lflyme/support/v7/widget/TabCollapseButton;

    .line 224
    :cond_d
    iget-object v0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mCollapseButton:Lflyme/support/v7/widget/TabCollapseButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_26

    .line 225
    iget-object v0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mCollapseButton:Lflyme/support/v7/widget/TabCollapseButton;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 226
    iget-object v0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mCollapseButton:Lflyme/support/v7/widget/TabCollapseButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    .line 227
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x1

    .line 228
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 230
    :cond_26
    iget-object v0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mCollapseButton:Lflyme/support/v7/widget/TabCollapseButton;

    iget-object v1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mCollapseButtonClickListener:Lflyme/support/v7/widget/TabCollapseButton$OnTabCollapseButtonClickListener;

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/TabCollapseButton;->setOnTabCollapseButtonClickListener(Lflyme/support/v7/widget/TabCollapseButton$OnTabCollapseButtonClickListener;)V

    .line 231
    iget-object v0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mCollapseButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_36

    .line 232
    iget-object v1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mCollapseButton:Lflyme/support/v7/widget/TabCollapseButton;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    :cond_36
    iget-object v0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mCollapseButton:Lflyme/support/v7/widget/TabCollapseButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    iget-boolean v0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mShowAtToolbar:Z

    if-nez v0, :cond_55

    .line 236
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lflyme/support/v7/appcompat/R$dimen;->mz_action_tab_bar_margin_left:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 237
    invoke-virtual {p0, v0, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 238
    iget-object p0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mCollapseButton:Lflyme/support/v7/widget/TabCollapseButton;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/TabCollapseButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_5c

    .line 240
    :cond_55
    iget-object p0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mCollapseButton:Lflyme/support/v7/widget/TabCollapseButton;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/TabCollapseButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_5c
    return-void
.end method

.method private performNotCollapse()V
    .registers 4

    .line 205
    iget-object v0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mCollapseButton:Lflyme/support/v7/widget/TabCollapseButton;

    const/16 v1, 0x8

    if-eqz v0, :cond_9

    .line 206
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    :cond_9
    iget-object v0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollTabsExpendTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_10

    .line 209
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    :cond_10
    iget-boolean v0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mShowAtToolbar:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 213
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_26

    .line 215
    :cond_19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lflyme/support/v7/appcompat/R$dimen;->mz_action_tab_bar_margin_left:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 216
    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :goto_26
    return-void
.end method

.method private positionStartChild(Landroid/view/View;IZ)V
    .registers 9

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/MzActionBarTabContainer$LayoutParams;

    if-eqz p3, :cond_b

    .line 284
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_d

    :cond_b
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_d
    if-eqz p3, :cond_12

    .line 285
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_14

    :cond_12
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 287
    :goto_14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    .line 288
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v4, p0

    if-eqz p3, :cond_2a

    sub-int/2addr p2, v2

    .line 291
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    sub-int/2addr p2, p0

    goto :goto_2b

    :cond_2a
    add-int/2addr p2, v1

    .line 296
    :goto_2b
    iget p0, v0, Lflyme/support/v7/widget/MzActionBarTabContainer$LayoutParams;->gravity:I

    const/4 p3, -0x1

    if-ne p0, p3, :cond_33

    const p0, 0x800033

    :cond_33
    and-int/lit8 p0, p0, 0x70

    .line 302
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    const/16 v1, 0x30

    if-eq p0, v1, :cond_53

    const/16 v1, 0x50

    if-eq p0, v1, :cond_4d

    sub-int/2addr v4, v3

    sub-int/2addr v4, p3

    .line 307
    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v3, p0

    goto :goto_56

    :cond_4d
    sub-int/2addr v4, p3

    .line 314
    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v3, v4, p0

    goto :goto_56

    .line 311
    :cond_53
    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, p0

    .line 317
    :goto_56
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    add-int/2addr p0, p2

    add-int/2addr p3, v3

    invoke-virtual {p1, p2, v3, p0, p3}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private shouldLayout(Landroid/view/View;)Z
    .registers 3

    if-eqz p1, :cond_12

    .line 554
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_12

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 p1, 0x8

    if-eq p0, p1, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 361
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 363
    iget-boolean v0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mShowAtToolbar:Z

    if-nez v0, :cond_26

    iget v0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mTopDividerHeight:I

    if-lez v0, :cond_26

    .line 364
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lflyme/support/v7/appcompat/R$dimen;->mz_action_tab_bar_divider_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v2, v0

    const/4 v3, 0x0

    .line 367
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v4, v1

    iget v0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mTopDividerHeight:I

    int-to-float v5, v0

    iget-object v6, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mTopDividerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    .line 366
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_26
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 324
    new-instance p0, Lflyme/support/v7/widget/MzActionBarTabContainer$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Lflyme/support/v7/widget/MzActionBarTabContainer$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 329
    new-instance v0, Lflyme/support/v7/widget/MzActionBarTabContainer$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lflyme/support/v7/widget/MzActionBarTabContainer$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getTabView()Lflyme/support/v7/widget/ScrollingTabContainerView;
    .registers 1

    .line 107
    iget-object p0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollingTabView:Lflyme/support/v7/widget/ScrollingTabContainerView;

    return-object p0
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 257
    invoke-static {p0}, Lflyme/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_d

    sub-int/2addr p4, p2

    .line 258
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    goto :goto_11

    :cond_d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p4

    .line 260
    :goto_11
    iget-object p2, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollingTabView:Lflyme/support/v7/widget/ScrollingTabContainerView;

    invoke-direct {p0, p2}, Lflyme/support/v7/widget/MzActionBarTabContainer;->shouldLayout(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 261
    iget-object p2, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollingTabView:Lflyme/support/v7/widget/ScrollingTabContainerView;

    invoke-direct {p0, p2, p4, p1}, Lflyme/support/v7/widget/MzActionBarTabContainer;->positionStartChild(Landroid/view/View;IZ)V

    .line 264
    :cond_1e
    iget-object p2, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollTabsExpendTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lflyme/support/v7/widget/MzActionBarTabContainer;->shouldLayout(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_2b

    .line 265
    iget-object p2, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollTabsExpendTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, p2, p4, p1}, Lflyme/support/v7/widget/MzActionBarTabContainer;->positionStartChild(Landroid/view/View;IZ)V

    .line 267
    :cond_2b
    iget-object p2, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mCollapseButton:Lflyme/support/v7/widget/TabCollapseButton;

    invoke-direct {p0, p2}, Lflyme/support/v7/widget/MzActionBarTabContainer;->shouldLayout(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_73

    .line 268
    iget-object p2, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mCollapseButton:Lflyme/support/v7/widget/TabCollapseButton;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_40

    .line 269
    iget p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_42

    :cond_40
    iget p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_42
    if-eqz p1, :cond_47

    .line 270
    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_49

    :cond_47
    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_49
    if-eqz p1, :cond_51

    .line 273
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    add-int/2addr p1, p3

    goto :goto_62

    .line 275
    :cond_51
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    sub-int/2addr p1, p2

    iget-object p2, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mCollapseButton:Lflyme/support/v7/widget/TabCollapseButton;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p1, p2

    .line 277
    :goto_62
    iget-object p2, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mCollapseButton:Lflyme/support/v7/widget/TabCollapseButton;

    const/4 p3, 0x0

    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p1

    iget-object p0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mCollapseButton:Lflyme/support/v7/widget/TabCollapseButton;

    .line 278
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p0

    .line 277
    invoke-virtual {p2, p1, p3, p4, p0}, Landroid/widget/ImageView;->layout(IIII)V

    :cond_73
    return-void
.end method

.method protected onMeasure(II)V
    .registers 13

    .line 112
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_112

    .line 119
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 121
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 123
    iget-boolean v2, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mShowAtToolbar:Z

    const/4 v3, 0x0

    if-nez v2, :cond_23

    .line 124
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lflyme/support/v7/appcompat/R$dimen;->mz_action_tab_bar_margin_left:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_24

    :cond_23
    move v2, v3

    .line 129
    :goto_24
    iget-boolean v4, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mIsForceCollapse:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_2f

    .line 130
    iget-object v4, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollingTabView:Lflyme/support/v7/widget/ScrollingTabContainerView;

    invoke-virtual {v4, v3}, Lflyme/support/v7/widget/ScrollingTabContainerView;->setEqualTabWidth(Z)V

    goto :goto_38

    .line 132
    :cond_2f
    iget-boolean v4, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mIsPreventEqualWidth:Z

    if-nez v4, :cond_38

    .line 133
    iget-object v4, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollingTabView:Lflyme/support/v7/widget/ScrollingTabContainerView;

    invoke-virtual {v4, v5}, Lflyme/support/v7/widget/ScrollingTabContainerView;->setEqualTabWidth(Z)V

    .line 136
    :cond_38
    :goto_38
    iget-object v4, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollingTabView:Lflyme/support/v7/widget/ScrollingTabContainerView;

    invoke-direct {p0, v4}, Lflyme/support/v7/widget/MzActionBarTabContainer;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 137
    iget-object v4, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollingTabView:Lflyme/support/v7/widget/ScrollingTabContainerView;

    invoke-virtual {v4, v3}, Lflyme/support/v7/widget/ScrollingTabContainerView;->setNeedCollapse(Z)V

    mul-int/lit8 v2, v2, 0x2

    sub-int v4, v0, v2

    .line 140
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 139
    invoke-static {v4, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 141
    iget-object v4, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollingTabView:Lflyme/support/v7/widget/ScrollingTabContainerView;

    invoke-virtual {v4, p1, p2}, Landroid/widget/HorizontalScrollView;->measure(II)V

    .line 143
    iget-boolean p1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mAllowCollapse:Z

    if-eqz p1, :cond_69

    iget-object p1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollingTabView:Lflyme/support/v7/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Lflyme/support/v7/widget/ScrollingTabContainerView;->getTabStripWidth()I

    move-result p1

    add-int/2addr p1, v2

    if-lt v0, p1, :cond_67

    iget-boolean p1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mIsForceCollapse:Z

    if-eqz p1, :cond_69

    :cond_67
    move v3, v5

    goto :goto_6a

    :cond_69
    move v5, v3

    .line 148
    :goto_6a
    iget-object p1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollingTabView:Lflyme/support/v7/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    move-result p1

    goto :goto_73

    :cond_71
    move p1, v3

    move v5, p1

    .line 151
    :goto_73
    iget-boolean p2, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mIsCollapse:Z

    if-eq v3, p2, :cond_82

    if-eqz v3, :cond_7d

    .line 153
    invoke-direct {p0}, Lflyme/support/v7/widget/MzActionBarTabContainer;->performCollapse()V

    goto :goto_80

    .line 155
    :cond_7d
    invoke-direct {p0}, Lflyme/support/v7/widget/MzActionBarTabContainer;->performNotCollapse()V

    .line 157
    :goto_80
    iput-boolean v3, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mIsCollapse:Z

    .line 159
    :cond_82
    iget-boolean p2, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mTabsGravitySet:Z

    if-nez p2, :cond_96

    if-eqz v3, :cond_8f

    .line 161
    iget-object p2, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollingTabView:Lflyme/support/v7/widget/ScrollingTabContainerView;

    const/4 v2, 0x3

    invoke-virtual {p2, v2}, Lflyme/support/v7/widget/ScrollingTabContainerView;->setTabsGravity(I)V

    goto :goto_96

    .line 163
    :cond_8f
    iget-object p2, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollingTabView:Lflyme/support/v7/widget/ScrollingTabContainerView;

    const/16 v2, 0x11

    invoke-virtual {p2, v2}, Lflyme/support/v7/widget/ScrollingTabContainerView;->setTabsGravity(I)V

    :cond_96
    :goto_96
    const/high16 p2, -0x80000000

    .line 168
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 172
    iget-object v4, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mCollapseButton:Lflyme/support/v7/widget/TabCollapseButton;

    invoke-direct {p0, v4}, Lflyme/support/v7/widget/MzActionBarTabContainer;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    const/high16 v6, 0x40000000  # 2.0f

    if-eqz v4, :cond_e3

    .line 173
    iget-object v4, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mCollapseButton:Lflyme/support/v7/widget/TabCollapseButton;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 174
    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 175
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iget v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 174
    invoke-static {v7, v8, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    .line 176
    iget-object v7, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mCollapseButton:Lflyme/support/v7/widget/TabCollapseButton;

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v7, p2, v4}, Landroid/widget/ImageView;->measure(II)V

    .line 178
    iget-object p2, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mCollapseButton:Lflyme/support/v7/widget/TabCollapseButton;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p2

    .line 179
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    add-int/2addr p2, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    add-int/2addr p2, v4

    sub-int p2, v0, p2

    goto :goto_e4

    :cond_e3
    move p2, v0

    .line 181
    :goto_e4
    iget-object v4, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollTabsExpendTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lflyme/support/v7/widget/MzActionBarTabContainer;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_f5

    .line 182
    iget-object v4, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollTabsExpendTitleTextView:Landroid/widget/TextView;

    invoke-static {p2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v4, v7, v2}, Landroid/widget/TextView;->measure(II)V

    :cond_f5
    if-eqz v5, :cond_10d

    .line 186
    iget-object v4, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollingTabView:Lflyme/support/v7/widget/ScrollingTabContainerView;

    invoke-direct {p0, v4}, Lflyme/support/v7/widget/MzActionBarTabContainer;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_10d

    .line 187
    iget-object v4, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollingTabView:Lflyme/support/v7/widget/ScrollingTabContainerView;

    invoke-virtual {v4, v3}, Lflyme/support/v7/widget/ScrollingTabContainerView;->setNeedCollapse(Z)V

    .line 188
    iget-object v3, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollingTabView:Lflyme/support/v7/widget/ScrollingTabContainerView;

    invoke-static {p2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v3, p2, v2}, Landroid/widget/HorizontalScrollView;->measure(II)V

    :cond_10d
    add-int/2addr p1, v1

    .line 192
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void

    .line 114
    :cond_112
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class p2, Lflyme/support/v7/widget/MzActionBarTabContainer;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " can only be used with android:layout_height=\"wrap_content\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAdaptTabWidth(Z)V
    .registers 2

    .line 568
    iget-object p0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollingTabView:Lflyme/support/v7/widget/ScrollingTabContainerView;

    if-eqz p0, :cond_7

    .line 569
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/ScrollingTabContainerView;->setAdaptTabWidthNoScroll(Z)V

    :cond_7
    return-void
.end method

.method public setAllowCollapse(Z)V
    .registers 3

    .line 80
    iget-boolean v0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mAllowCollapse:Z

    if-eq v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_e

    .line 82
    iput-boolean p1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mAllowCollapse:Z

    .line 83
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_e
    return-void
.end method

.method public setCollapseButtonClickListener(Lflyme/support/v7/widget/TabCollapseButton$OnTabCollapseButtonClickListener;)V
    .registers 2

    .line 249
    iput-object p1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mCollapseButtonClickListener:Lflyme/support/v7/widget/TabCollapseButton$OnTabCollapseButtonClickListener;

    .line 250
    iget-object p0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mCollapseButton:Lflyme/support/v7/widget/TabCollapseButton;

    if-eqz p0, :cond_9

    .line 251
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/TabCollapseButton;->setOnTabCollapseButtonClickListener(Lflyme/support/v7/widget/TabCollapseButton$OnTabCollapseButtonClickListener;)V

    :cond_9
    return-void
.end method

.method public setCollapseButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 403
    iput-object p1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mCollapseButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 404
    iget-object p0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mCollapseButton:Lflyme/support/v7/widget/TabCollapseButton;

    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    .line 405
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    return-void
.end method

.method public setIsForceCollapse(Z)V
    .registers 3

    .line 372
    iget-boolean v0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mIsForceCollapse:Z

    if-eq v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_e

    .line 374
    iput-boolean p1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mIsForceCollapse:Z

    .line 375
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_e
    return-void
.end method

.method public setPreventEqualWidth(Z)V
    .registers 2

    .line 559
    iput-boolean p1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mIsPreventEqualWidth:Z

    return-void
.end method

.method public setScrollTabsExpendTitle(Ljava/lang/CharSequence;)V
    .registers 6

    .line 501
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7e

    .line 502
    iget-object v0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollTabsExpendTitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_88

    .line 503
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 504
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollTabsExpendTitleTextView:Landroid/widget/TextView;

    .line 505
    iget-object v1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollTabsExpendTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 506
    iget-object v1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollTabsExpendTitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 508
    iget-object v1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollTabsExpendTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lflyme/support/v7/appcompat/R$dimen;->mz_toolbar_title_max_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 510
    iget v1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollTabsExpendTitleTextAppearance:I

    if-eqz v1, :cond_39

    .line 511
    iget-object v2, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollTabsExpendTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 513
    :cond_39
    iget v0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollTabsExpendTitleTextColor:I

    if-eqz v0, :cond_42

    .line 514
    iget-object v1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollTabsExpendTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 516
    :cond_42
    iget-object v0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollTabsExpendTitleTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 518
    iget-object v0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollTabsExpendTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 519
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lflyme/support/v7/appcompat/R$dimen;->mz_scroll_tabs_expend_title_padding_vertical:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 520
    iget-object v1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollTabsExpendTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lflyme/support/v7/appcompat/R$dimen;->mz_scroll_tabs_expend_title_margin_left:I

    .line 521
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x0

    .line 520
    invoke-virtual {v1, v2, v0, v3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 522
    iget-object v0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollTabsExpendTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/MzActionBarTabContainer$LayoutParams;

    .line 523
    iget-boolean v1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mShowAtToolbar:Z

    if-eqz v1, :cond_79

    const/16 v1, 0x10

    .line 524
    iput v1, v0, Lflyme/support/v7/widget/MzActionBarTabContainer$LayoutParams;->gravity:I

    goto :goto_88

    :cond_79
    const/16 v1, 0x30

    .line 526
    iput v1, v0, Lflyme/support/v7/widget/MzActionBarTabContainer$LayoutParams;->gravity:I

    goto :goto_88

    .line 529
    :cond_7e
    iget-object v0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollTabsExpendTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_88

    .line 530
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 531
    iput-object v0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollTabsExpendTitleTextView:Landroid/widget/TextView;

    .line 533
    :cond_88
    :goto_88
    iget-object p0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollTabsExpendTitleTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_8f

    .line 534
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8f
    return-void
.end method

.method public setScrollTabsExpendTitleTextAppearance(I)V
    .registers 3

    .line 546
    iput p1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollTabsExpendTitleTextAppearance:I

    .line 547
    iget-object v0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollTabsExpendTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    .line 548
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 549
    iget-object p0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollTabsExpendTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_f
    return-void
.end method

.method public setScrollTabsExpendTitleTextColor(I)V
    .registers 2

    .line 539
    iput p1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollTabsExpendTitleTextColor:I

    .line 540
    iget-object p0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollTabsExpendTitleTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_9

    .line 541
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    return-void
.end method

.method public setTabView(Lflyme/support/v7/widget/ScrollingTabContainerView;)V
    .registers 3

    .line 88
    iget-object v0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollingTabView:Lflyme/support/v7/widget/ScrollingTabContainerView;

    if-ne v0, p1, :cond_b

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_b

    return-void

    .line 89
    :cond_b
    iget-object v0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollingTabView:Lflyme/support/v7/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_12

    .line 90
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 95
    :cond_12
    iput-object p1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollingTabView:Lflyme/support/v7/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_1d

    .line 97
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p0, 0x0

    .line 102
    invoke-virtual {p1, p0}, Lflyme/support/v7/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    :cond_1d
    return-void
.end method

.method public setTabsGravity(I)V
    .registers 3

    const/4 v0, 0x1

    .line 574
    iput-boolean v0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mTabsGravitySet:Z

    .line 575
    iget-object p0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollingTabView:Lflyme/support/v7/widget/ScrollingTabContainerView;

    if-eqz p0, :cond_a

    .line 576
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/ScrollingTabContainerView;->setTabsGravity(I)V

    :cond_a
    return-void
.end method

.method public showAtToolbar(Z)V
    .registers 3

    .line 380
    iget-object v0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollingTabView:Lflyme/support/v7/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/ScrollingTabContainerView;->showAtToolbar(Z)V

    .line 381
    iget-boolean v0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mShowAtToolbar:Z

    if-eq v0, p1, :cond_40

    .line 382
    iput-boolean p1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mShowAtToolbar:Z

    .line 383
    iget-boolean p1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mShowAtToolbar:Z

    if-eqz p1, :cond_2a

    const/4 p1, 0x0

    .line 384
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 385
    iget-object p1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollTabsExpendTitleTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_40

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_40

    .line 386
    iget-object p0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollTabsExpendTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/widget/MzActionBarTabContainer$LayoutParams;

    const/16 p1, 0x10

    .line 387
    iput p1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer$LayoutParams;->gravity:I

    goto :goto_40

    .line 390
    :cond_2a
    iget-object p1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollTabsExpendTitleTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_40

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_40

    .line 391
    iget-object p0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScrollTabsExpendTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/widget/MzActionBarTabContainer$LayoutParams;

    const/16 p1, 0x30

    .line 392
    iput p1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer$LayoutParams;->gravity:I

    :cond_40
    :goto_40
    return-void
.end method
