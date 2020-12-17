.class public Lflyme/support/v7/widget/AloneTabContainer;
.super Landroid/widget/LinearLayout;
.source "AloneTabContainer.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field mScrollingTabView:Lflyme/support/v7/widget/ScrollingTabContainerView;

.field private mTabMinWidth:I

.field private mTabPaddingEnd:I

.field private mTabPaddingStart:I

.field private mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lflyme/support/v7/widget/AloneTabContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lflyme/support/v7/widget/AloneTabContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lflyme/support/v7/widget/AloneTabContainer;->mTabs:Ljava/util/ArrayList;

    const/4 p2, -0x1

    .line 26
    iput p2, p0, Lflyme/support/v7/widget/AloneTabContainer;->mTabPaddingStart:I

    .line 27
    iput p2, p0, Lflyme/support/v7/widget/AloneTabContainer;->mTabPaddingEnd:I

    .line 28
    iput p2, p0, Lflyme/support/v7/widget/AloneTabContainer;->mTabMinWidth:I

    .line 41
    iput-object p1, p0, Lflyme/support/v7/widget/AloneTabContainer;->mContext:Landroid/content/Context;

    .line 43
    new-instance p2, Lflyme/support/v7/widget/ScrollingTabContainerView;

    invoke-direct {p2, p1}, Lflyme/support/v7/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lflyme/support/v7/widget/AloneTabContainer;->setTabView(Lflyme/support/v7/widget/ScrollingTabContainerView;)V

    .line 44
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lflyme/support/v7/appcompat/R$dimen;->mz_action_tab_bar_margin_left:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 p2, 0x0

    .line 45
    invoke-virtual {p0, p1, p2, p1, p2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method private setTabView(Lflyme/support/v7/widget/ScrollingTabContainerView;)V
    .registers 4

    .line 161
    iget-object v0, p0, Lflyme/support/v7/widget/AloneTabContainer;->mScrollingTabView:Lflyme/support/v7/widget/ScrollingTabContainerView;

    if-ne v0, p1, :cond_b

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_b

    return-void

    .line 162
    :cond_b
    iget-object v0, p0, Lflyme/support/v7/widget/AloneTabContainer;->mScrollingTabView:Lflyme/support/v7/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_12

    .line 163
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 165
    :cond_12
    iput-object p1, p0, Lflyme/support/v7/widget/AloneTabContainer;->mScrollingTabView:Lflyme/support/v7/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_25

    .line 167
    iget-object v0, p0, Lflyme/support/v7/widget/AloneTabContainer;->mScrollingTabView:Lflyme/support/v7/widget/ScrollingTabContainerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/ScrollingTabContainerView;->setIsAloneTabContainer(Z)V

    .line 168
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 169
    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_25
    return-void
.end method

.method private setupTabStyle(Lflyme/support/v7/app/ActionBar$Tab;)V
    .registers 3

    .line 193
    iget v0, p0, Lflyme/support/v7/widget/AloneTabContainer;->mTabMinWidth:I

    invoke-virtual {p1, v0}, Lflyme/support/v7/app/ActionBar$Tab;->setMinWidth(I)V

    .line 194
    iget v0, p0, Lflyme/support/v7/widget/AloneTabContainer;->mTabPaddingStart:I

    iget p0, p0, Lflyme/support/v7/widget/AloneTabContainer;->mTabPaddingEnd:I

    invoke-virtual {p1, v0, p0}, Lflyme/support/v7/app/ActionBar$Tab;->setPadding(II)V

    return-void
.end method


# virtual methods
.method public setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 115
    iget-object p0, p0, Lflyme/support/v7/widget/AloneTabContainer;->mScrollingTabView:Lflyme/support/v7/widget/ScrollingTabContainerView;

    if-eqz p0, :cond_7

    .line 116
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/ScrollingTabContainerView;->setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    return-void
.end method

.method public setIsEmbeddedTabs(Z)V
    .registers 2

    .line 442
    iget-object p0, p0, Lflyme/support/v7/widget/AloneTabContainer;->mScrollingTabView:Lflyme/support/v7/widget/ScrollingTabContainerView;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/ScrollingTabContainerView;->showAtToolbar(Z)V

    return-void
.end method
