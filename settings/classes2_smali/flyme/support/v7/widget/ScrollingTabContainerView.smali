.class public Lflyme/support/v7/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;,
        Lflyme/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;,
        Lflyme/support/v7/widget/ScrollingTabContainerView$TabClickListener;,
        Lflyme/support/v7/widget/ScrollingTabContainerView$TabAdapter;,
        Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;
    }
.end annotation


# static fields
.field private static final INDICATOR_POSITION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final INDICATOR_SHORT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final INDICATOR_STRETCH_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final sAlphaInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private isAtToolbar:Z

.field private mAllowCollapse:Z

.field private mContentHeight:I

.field private mIsAdaptTabWidth:Z

.field private mIsAloneTabContainer:Z

.field private mIsEqualTabWidth:Z

.field mMaxTabWidth:I

.field private mMinTabWidth:I

.field private mMode:I

.field private mNeedCollapse:Z

.field private mSelectedTabIndex:I

.field mStackedTabMaxWidth:I

.field private mTabClickListener:Lflyme/support/v7/widget/ScrollingTabContainerView$TabClickListener;

.field private mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

.field private mTabPadding2:I

.field private mTabPaddingOver5:I

.field mTabSelector:Ljava/lang/Runnable;

.field private mTabSpinner:Landroid/widget/Spinner;

.field private mTabWidth3:I

.field private mTabWidth4:I

.field private mTabWidthNoCollapse5:I

.field private mTabsGravity:I

.field protected final mVisAnimListener:Lflyme/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/high16 v0, 0x3f800000  # 1.0f

    const v1, 0x3e4ccccd  # 0.2f

    const v2, 0x3e2e147b  # 0.17f

    .line 89
    invoke-static {v2, v2, v1, v0}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v3

    sput-object v3, Lflyme/support/v7/widget/ScrollingTabContainerView;->INDICATOR_POSITION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const v3, 0x3f547ae1  # 0.83f

    const v4, 0x3ea8f5c3  # 0.33f

    const/4 v5, 0x0

    .line 91
    invoke-static {v4, v5, v3, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v3

    sput-object v3, Lflyme/support/v7/widget/ScrollingTabContainerView;->INDICATOR_STRETCH_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 92
    invoke-static {v2, v2, v1, v0}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lflyme/support/v7/widget/ScrollingTabContainerView;->INDICATOR_SHORT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 116
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lflyme/support/v7/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, p1, v0}, Lflyme/support/v7/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 146
    sget v0, Lflyme/support/v7/appcompat/R$attr;->mzActionBarTabScrollViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lflyme/support/v7/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 150
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    new-instance v0, Lflyme/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-direct {v0, p0}, Lflyme/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;-><init>(Lflyme/support/v7/widget/ScrollingTabContainerView;)V

    iput-object v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mVisAnimListener:Lflyme/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;

    const/4 v0, 0x0

    .line 120
    iput v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mMode:I

    .line 121
    iput-boolean v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mIsEqualTabWidth:Z

    const/16 v1, 0x11

    .line 122
    iput v1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabsGravity:I

    .line 135
    iput-boolean v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mIsAdaptTabWidth:Z

    .line 1505
    iput-boolean v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mIsAloneTabContainer:Z

    const/4 v1, 0x2

    .line 151
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    const/4 v1, 0x1

    .line 152
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 153
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lflyme/support/v7/appcompat/R$dimen;->mz_action_bar_tab_scroll_fading_edge_length:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setFadingEdgeLength(I)V

    .line 156
    invoke-static {p1}, Lflyme/support/v7/view/ActionBarPolicy;->get(Landroid/content/Context;)Lflyme/support/v7/view/ActionBarPolicy;

    move-result-object v1

    .line 158
    invoke-virtual {v1}, Lflyme/support/v7/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v2

    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 160
    invoke-virtual {v1}, Lflyme/support/v7/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v1

    iput v1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 162
    sget-object v1, Lflyme/support/v7/appcompat/R$styleable;->MzActionBarTabScrollView:[I

    invoke-static {p1, p2, v1, p3, v0}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p1

    .line 165
    sget p2, Lflyme/support/v7/appcompat/R$styleable;->MzActionBarTabScrollView_mzTabScrollView2TabsPadding:I

    .line 166
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lflyme/support/v7/appcompat/R$dimen;->mz_action_bar_tab_view_2_tabs_padding:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 165
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabPadding2:I

    .line 168
    sget p2, Lflyme/support/v7/appcompat/R$styleable;->MzActionBarTabScrollView_mzTabScrollViewOver5TabsPadding:I

    .line 169
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lflyme/support/v7/appcompat/R$dimen;->mz_action_bar_tab_view_over_5_tabs_padding:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 168
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabPaddingOver5:I

    .line 171
    sget p2, Lflyme/support/v7/appcompat/R$styleable;->MzActionBarTabScrollView_mzTabScrollView3TabsWidth:I

    .line 172
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lflyme/support/v7/appcompat/R$dimen;->mz_action_bar_tab_view_3_tabs_width:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 171
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabWidth3:I

    .line 174
    sget p2, Lflyme/support/v7/appcompat/R$styleable;->MzActionBarTabScrollView_mzTabScrollView4TabsWidth:I

    .line 175
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lflyme/support/v7/appcompat/R$dimen;->mz_action_bar_tab_view_4_tabs_width:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 174
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabWidth4:I

    .line 177
    sget p2, Lflyme/support/v7/appcompat/R$styleable;->MzActionBarTabScrollView_mzTabScrollViewNoCollapse5TabsWidth:I

    .line 178
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lflyme/support/v7/appcompat/R$dimen;->mz_action_bar_tab_view_5_tabs_nocollapse_width:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 177
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabWidthNoCollapse5:I

    .line 180
    invoke-virtual {p1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 182
    invoke-direct {p0}, Lflyme/support/v7/widget/ScrollingTabContainerView;->createTabLayout()Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    move-result-object p1

    iput-object p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    .line 183
    iget-object p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x2

    const/4 v0, -0x1

    invoke-direct {p2, p3, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$100(Lflyme/support/v7/widget/ScrollingTabContainerView;)Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;
    .registers 1

    .line 76
    iget-object p0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    return-object p0
.end method

.method static synthetic access$1000(Lflyme/support/v7/widget/ScrollingTabContainerView;I)I
    .registers 2

    .line 76
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/ScrollingTabContainerView;->dpToPx(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1100()Landroid/view/animation/Interpolator;
    .registers 1

    .line 76
    sget-object v0, Lflyme/support/v7/widget/ScrollingTabContainerView;->INDICATOR_STRETCH_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1200()Landroid/view/animation/Interpolator;
    .registers 1

    .line 76
    sget-object v0, Lflyme/support/v7/widget/ScrollingTabContainerView;->INDICATOR_SHORT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1300()Landroid/view/animation/Interpolator;
    .registers 1

    .line 76
    sget-object v0, Lflyme/support/v7/widget/ScrollingTabContainerView;->INDICATOR_POSITION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$300(Lflyme/support/v7/widget/ScrollingTabContainerView;)Z
    .registers 1

    .line 76
    iget-boolean p0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->isAtToolbar:Z

    return p0
.end method

.method static synthetic access$400(Lflyme/support/v7/widget/ScrollingTabContainerView;)I
    .registers 1

    .line 76
    iget p0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mMinTabWidth:I

    return p0
.end method

.method static synthetic access$500(Lflyme/support/v7/widget/ScrollingTabContainerView;)Z
    .registers 1

    .line 76
    iget-boolean p0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mIsAdaptTabWidth:Z

    return p0
.end method

.method static synthetic access$600(Lflyme/support/v7/widget/ScrollingTabContainerView;)Z
    .registers 1

    .line 76
    iget-boolean p0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mIsAloneTabContainer:Z

    return p0
.end method

.method static synthetic access$700(Lflyme/support/v7/widget/ScrollingTabContainerView;Lflyme/support/v7/app/ActionBar$Tab;Z)Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;
    .registers 3

    .line 76
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/ScrollingTabContainerView;->createTabView(Lflyme/support/v7/app/ActionBar$Tab;Z)Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Landroid/view/animation/Animation;)Z
    .registers 1

    .line 76
    invoke-static {p0}, Lflyme/support/v7/widget/ScrollingTabContainerView;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lflyme/support/v7/widget/ScrollingTabContainerView;)I
    .registers 1

    .line 76
    iget p0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mMode:I

    return p0
.end method

.method private calculateScrollXForTab(IF)I
    .registers 8

    .line 959
    iget v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mMode:I

    const/4 v1, 0x0

    if-nez v0, :cond_5e

    .line 960
    iget-object v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    .line 961
    iget-object v2, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_1c

    iget-object v2, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    .line 962
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    if-eqz v0, :cond_24

    .line 964
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_25

    :cond_24
    move v2, v1

    :goto_25
    if-eqz p1, :cond_2c

    .line 965
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_2d

    :cond_2c
    move p1, v1

    .line 967
    :goto_2d
    iget-object v3, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->getShowDividers()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_40

    .line 970
    iget-object v1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getDividerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 972
    :cond_40
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    add-int/2addr v2, p1

    mul-int/2addr v1, v4

    add-int/2addr v2, v1

    int-to-float p1, v2

    mul-float/2addr p1, p2

    const/high16 p2, 0x3f000000  # 0.5f

    mul-float/2addr p1, p2

    add-float/2addr v3, p1

    .line 974
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    add-float/2addr v3, p1

    .line 975
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p2

    sub-float/2addr v3, p0

    float-to-int p0, v3

    return p0

    :cond_5e
    return v1
.end method

.method private createSpinner()Landroid/widget/Spinner;
    .registers 5

    .line 380
    new-instance v0, Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lflyme/support/v7/appcompat/R$attr;->actionDropDownStyle:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 382
    new-instance v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-object v0
.end method

.method private createTabLayout()Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;
    .registers 5

    .line 370
    new-instance v0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lflyme/support/v7/appcompat/R$attr;->actionBarTabBarStyle:I

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;-><init>(Lflyme/support/v7/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 373
    iget p0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabsGravity:I

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setGravity(I)V

    .line 374
    new-instance p0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private createTabView(Lflyme/support/v7/app/ActionBar$Tab;Z)Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;
    .registers 5

    .line 467
    new-instance v0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;-><init>(Lflyme/support/v7/widget/ScrollingTabContainerView;Landroid/content/Context;Lflyme/support/v7/app/ActionBar$Tab;Z)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1b

    .line 469
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 470
    new-instance p1, Landroid/widget/AbsListView$LayoutParams;

    const/4 p2, -0x1

    iget p0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-direct {p1, p2, p0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2f

    :cond_1b
    const/4 p2, 0x1

    .line 473
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 475
    iget-object p2, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabClickListener:Lflyme/support/v7/widget/ScrollingTabContainerView$TabClickListener;

    if-nez p2, :cond_2a

    .line 476
    new-instance p2, Lflyme/support/v7/widget/ScrollingTabContainerView$TabClickListener;

    invoke-direct {p2, p0, p1}, Lflyme/support/v7/widget/ScrollingTabContainerView$TabClickListener;-><init>(Lflyme/support/v7/widget/ScrollingTabContainerView;Lflyme/support/v7/widget/ScrollingTabContainerView$1;)V

    iput-object p2, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabClickListener:Lflyme/support/v7/widget/ScrollingTabContainerView$TabClickListener;

    .line 478
    :cond_2a
    iget-object p0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabClickListener:Lflyme/support/v7/widget/ScrollingTabContainerView$TabClickListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2f
    return-object v0
.end method

.method private dpToPx(I)I
    .registers 2

    .line 1456
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private static isAnimationRunning(Landroid/view/animation/Animation;)Z
    .registers 2

    if-eqz p0, :cond_10

    .line 1460
    invoke-virtual {p0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private isCollapsed()Z
    .registers 2

    .line 295
    iget-object v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private performCollapse()V
    .registers 5

    .line 307
    invoke-direct {p0}, Lflyme/support/v7/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 309
    :cond_7
    iget-object v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_11

    .line 310
    invoke-direct {p0}, Lflyme/support/v7/widget/ScrollingTabContainerView;->createSpinner()Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    .line 312
    :cond_11
    iget-object v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeView(Landroid/view/View;)V

    .line 313
    iget-object v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    iget-object v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_35

    .line 316
    iget-object v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v2, Lflyme/support/v7/widget/ScrollingTabContainerView$TabAdapter;

    invoke-direct {v2, p0, v1}, Lflyme/support/v7/widget/ScrollingTabContainerView$TabAdapter;-><init>(Lflyme/support/v7/widget/ScrollingTabContainerView;Lflyme/support/v7/widget/ScrollingTabContainerView$1;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 318
    :cond_35
    iget-object v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_3e

    .line 319
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 320
    iput-object v1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 322
    :cond_3e
    iget-object v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    iget p0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method private performExpand()Z
    .registers 6

    .line 326
    invoke-direct {p0}, Lflyme/support/v7/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 328
    :cond_8
    iget-object v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeView(Landroid/view/View;)V

    .line 329
    iget-object v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    iget-object v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/ScrollingTabContainerView;->setTabSelected(I)V

    return v1
.end method

.method private setSelectedTabView(I)V
    .registers 7

    .line 932
    iget-object v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1b

    .line 934
    iget-object v3, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_14

    const/4 v4, 0x1

    goto :goto_15

    :cond_14
    move v4, v1

    .line 935
    :goto_15
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1b
    return-void
.end method

.method private setTabsGravityInner(I)V
    .registers 2

    .line 611
    iget-object p0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    if-eqz p0, :cond_7

    .line 612
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setGravity(I)V

    :cond_7
    return-void
.end method


# virtual methods
.method public addTab(Lflyme/support/v7/app/ActionBar$Tab;Z)V
    .registers 7

    const/4 v0, 0x0

    .line 484
    invoke-direct {p0, p1, v0}, Lflyme/support/v7/widget/ScrollingTabContainerView;->createTabView(Lflyme/support/v7/app/ActionBar$Tab;Z)Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;

    move-result-object p1

    .line 489
    iget-object v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    new-instance v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 492
    iget-object v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_1e

    .line 493
    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1e
    if-eqz p2, :cond_2f

    const/4 p2, 0x1

    .line 496
    invoke-virtual {p1, p2}, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 498
    iget-object p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, p2

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->setIndicatorPositionFromTabPosition(IF)V

    .line 501
    :cond_2f
    iget-boolean p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz p1, :cond_36

    .line 502
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    :cond_36
    return-void
.end method

.method public animateToTab(I)V
    .registers 4

    .line 432
    iget-object v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 433
    iget-object v1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_d

    .line 434
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 436
    :cond_d
    new-instance v1, Lflyme/support/v7/widget/ScrollingTabContainerView$1;

    invoke-direct {v1, p0, v0, p1}, Lflyme/support/v7/widget/ScrollingTabContainerView$1;-><init>(Lflyme/support/v7/widget/ScrollingTabContainerView;Landroid/view/View;I)V

    iput-object v1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 446
    iget-object p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getTabStripWidth()I
    .registers 1

    .line 1476
    iget-object p0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p0

    return p0
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 451
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 452
    iget-object v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    .line 454
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_a
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 390
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_9

    .line 391
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 394
    :cond_9
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lflyme/support/v7/view/ActionBarPolicy;->get(Landroid/content/Context;)Lflyme/support/v7/view/ActionBarPolicy;

    move-result-object p1

    .line 399
    iget-boolean v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->isAtToolbar:Z

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Lflyme/support/v7/view/ActionBarPolicy;->getActionBarButtonMaxHeight()I

    move-result v0

    goto :goto_1e

    :cond_1a
    invoke-virtual {p1}, Lflyme/support/v7/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v0

    .line 400
    :goto_1e
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 403
    invoke-virtual {p1}, Lflyme/support/v7/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result p1

    iput p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 460
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 461
    iget-object v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    .line 462
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_a
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 560
    check-cast p2, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;

    .line 561
    invoke-virtual {p2}, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->getTab()Lflyme/support/v7/app/ActionBar$Tab;

    move-result-object p0

    invoke-virtual {p0}, Lflyme/support/v7/app/ActionBar$Tab;->select()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 1483
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 13
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 190
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_c

    move v4, v2

    goto :goto_d

    :cond_c
    move v4, v3

    .line 192
    :goto_d
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 193
    iget v5, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabsGravity:I

    invoke-virtual {p0, v5}, Lflyme/support/v7/widget/ScrollingTabContainerView;->setTabsGravity(I)V

    .line 195
    iget-object v5, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 196
    iget-object v6, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v6, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->setShowDividers(I)V

    if-le v5, v2, :cond_f9

    if-eq v0, v1, :cond_28

    const/high16 v6, -0x80000000

    if-ne v0, v6, :cond_f9

    :cond_28
    const/4 v0, 0x2

    if-le v5, v0, :cond_38

    .line 200
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3ecccccd  # 0.4f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_3f

    .line 202
    :cond_38
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    div-int/2addr v6, v0

    iput v6, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 204
    :goto_3f
    iget v6, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    iget v7, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 206
    iget-boolean v6, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->isAtToolbar:Z

    if-nez v6, :cond_fc

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_fc

    .line 207
    iput v3, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mMinTabWidth:I

    const/4 v6, 0x5

    if-le v5, v0, :cond_67

    if-ge v5, v6, :cond_67

    .line 208
    iget-boolean v7, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mIsEqualTabWidth:Z

    if-eqz v7, :cond_67

    .line 209
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    div-int/2addr p2, v5

    iput p2, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mMinTabWidth:I

    goto/16 :goto_fc

    :cond_67
    if-lt v5, v6, :cond_85

    .line 210
    iget-boolean v7, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mNeedCollapse:Z

    if-eqz v7, :cond_85

    move p2, v3

    :goto_6e
    if-ge p2, v5, :cond_7e

    .line 212
    iget-object v6, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v6, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 213
    iget v7, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabPaddingOver5:I

    invoke-virtual {v6, v7, v3, v7, v3}, Landroid/view/View;->setPadding(IIII)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_6e

    .line 215
    :cond_7e
    iget-object p2, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setShowDividers(I)V

    goto/16 :goto_fc

    .line 216
    :cond_85
    iget-boolean v7, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mIsAdaptTabWidth:Z

    if-eqz v7, :cond_c6

    .line 217
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    move v6, v3

    move v7, v6

    :goto_8f
    if-ge v6, v5, :cond_a2

    .line 220
    iget-object v8, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 221
    invoke-virtual {v8, v0, p2}, Landroid/view/View;->measure(II)V

    .line 222
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_8f

    .line 225
    :cond_a2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    move v0, v3

    :goto_a7
    if-ge v0, v5, :cond_fc

    .line 227
    iget-object v6, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 228
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 229
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    mul-int/2addr v6, p2

    int-to-float v6, v6

    int-to-float v9, v7

    div-float/2addr v6, v9

    float-to-int v6, v6

    .line 230
    iput v6, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v6, 0x0

    .line 231
    iput v6, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_a7

    :cond_c6
    if-eq v5, v0, :cond_e8

    const/4 p2, 0x3

    const/16 v0, 0x11

    if-eq v5, p2, :cond_e0

    const/4 p2, 0x4

    if-eq v5, p2, :cond_db

    if-eq v5, v6, :cond_d3

    goto :goto_fc

    .line 247
    :cond_d3
    iget p2, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabWidthNoCollapse5:I

    iput p2, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mMinTabWidth:I

    .line 248
    invoke-direct {p0, v0}, Lflyme/support/v7/widget/ScrollingTabContainerView;->setTabsGravityInner(I)V

    goto :goto_fc

    .line 251
    :cond_db
    iget p2, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabWidth4:I

    iput p2, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mMinTabWidth:I

    goto :goto_fc

    .line 243
    :cond_e0
    iget p2, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabWidth3:I

    iput p2, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mMinTabWidth:I

    .line 244
    invoke-direct {p0, v0}, Lflyme/support/v7/widget/ScrollingTabContainerView;->setTabsGravityInner(I)V

    goto :goto_fc

    :cond_e8
    move p2, v3

    :goto_e9
    if-ge p2, v5, :cond_fc

    .line 237
    iget-object v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 238
    iget v6, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabPadding2:I

    invoke-virtual {v0, v6, v3, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_e9

    :cond_f9
    const/4 p2, -0x1

    .line 259
    iput p2, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 263
    :cond_fc
    :goto_fc
    iget p2, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    if-nez v4, :cond_109

    .line 265
    iget-boolean v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_109

    goto :goto_10a

    :cond_109
    move v2, v3

    :goto_10a
    if-eqz v2, :cond_125

    .line 269
    iget-object v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v0, v3, p2}, Landroid/view/ViewGroup;->measure(II)V

    .line 270
    iget-object v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-le v0, v1, :cond_121

    .line 271
    invoke-direct {p0}, Lflyme/support/v7/widget/ScrollingTabContainerView;->performCollapse()V

    goto :goto_128

    .line 273
    :cond_121
    invoke-direct {p0}, Lflyme/support/v7/widget/ScrollingTabContainerView;->performExpand()Z

    goto :goto_128

    .line 276
    :cond_125
    invoke-direct {p0}, Lflyme/support/v7/widget/ScrollingTabContainerView;->performExpand()Z

    .line 279
    :goto_128
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    .line 280
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 281
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public setAdaptTabWidthNoScroll(Z)V
    .registers 3

    .line 1515
    iget-boolean v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mIsAdaptTabWidth:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 1516
    :cond_5
    iput-boolean p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mIsAdaptTabWidth:Z

    .line 1517
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-void
.end method

.method public setAllowCollapse(Z)V
    .registers 2

    .line 299
    iput-boolean p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    return-void
.end method

.method public setContentHeight(I)V
    .registers 2

    .line 360
    iput p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mContentHeight:I

    .line 361
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-void
.end method

.method public setEqualTabWidth(Z)V
    .registers 2

    .line 1499
    iput-boolean p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mIsEqualTabWidth:Z

    return-void
.end method

.method public setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1465
    iget-object p0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIsAloneTabContainer(Z)V
    .registers 2

    .line 1507
    iput-boolean p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mIsAloneTabContainer:Z

    return-void
.end method

.method public setNeedCollapse(Z)V
    .registers 2

    .line 303
    iput-boolean p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mNeedCollapse:Z

    return-void
.end method

.method public setScrollPosition(IFZ)V
    .registers 6

    .line 940
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-static {v0}, Lflyme/support/v7/widget/ScrollingTabContainerView;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    if-ltz p1, :cond_2e

    .line 943
    iget-object v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_16

    goto :goto_2e

    .line 948
    :cond_16
    iget-object v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v0, p1, p2}, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->setIndicatorPositionFromTabPosition(IF)V

    .line 949
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/ScrollingTabContainerView;->calculateScrollXForTab(IF)I

    move-result v0

    const/4 v1, 0x0

    .line 950
    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    if-eqz p3, :cond_2e

    int-to-float p1, p1

    add-float/2addr p1, p2

    .line 954
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p0, p1}, Lflyme/support/v7/widget/ScrollingTabContainerView;->setSelectedTabView(I)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public setTabSelected(I)V
    .registers 3

    const/4 v0, 0x0

    .line 336
    invoke-virtual {p0, p1, v0}, Lflyme/support/v7/widget/ScrollingTabContainerView;->setTabSelected(IZ)V

    return-void
.end method

.method public setTabSelected(IZ)V
    .registers 8

    .line 340
    iput p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    .line 341
    iget-object v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_2a

    .line 343
    iget-object v3, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_16

    const/4 v4, 0x1

    goto :goto_17

    :cond_16
    move v4, v1

    .line 345
    :goto_17
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    if-eqz v4, :cond_27

    if-eqz p2, :cond_22

    .line 348
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/ScrollingTabContainerView;->animateToTab(I)V

    goto :goto_27

    .line 350
    :cond_22
    iget-object v3, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v3, p1, v1}, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->animateIndicatorToPosition(II)V

    :cond_27
    :goto_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 354
    :cond_2a
    iget-object p0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz p0, :cond_33

    if-ltz p1, :cond_33

    .line 355
    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_33
    return-void
.end method

.method public setTabsGravity(I)V
    .registers 2

    .line 604
    iput p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabsGravity:I

    .line 605
    iget-object p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    if-eqz p1, :cond_b

    .line 606
    iget p0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabsGravity:I

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setGravity(I)V

    :cond_b
    return-void
.end method

.method public showAtToolbar(Z)V
    .registers 9

    .line 573
    iget-boolean v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->isAtToolbar:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    if-eqz v0, :cond_87

    .line 575
    iput-boolean p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->isAtToolbar:Z

    .line 576
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lflyme/support/v7/view/ActionBarPolicy;->get(Landroid/content/Context;)Lflyme/support/v7/view/ActionBarPolicy;

    move-result-object p1

    .line 578
    iget-boolean v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->isAtToolbar:Z

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Lflyme/support/v7/view/ActionBarPolicy;->getActionBarButtonMaxHeight()I

    move-result p1

    goto :goto_22

    :cond_1e
    invoke-virtual {p1}, Lflyme/support/v7/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result p1

    .line 579
    :goto_22
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 580
    iget-object p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    if-eqz p1, :cond_2e

    .line 581
    iget-boolean v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->isAtToolbar:Z

    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->setAtToolbar(Z)V

    .line 583
    :cond_2e
    iget-object p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    if-eqz p1, :cond_87

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_87

    .line 584
    iget-object p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 585
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 586
    iget v3, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    move v4, v3

    move v3, v2

    :goto_47
    if-ge v3, p1, :cond_62

    .line 588
    iget-object v5, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;

    .line 589
    invoke-virtual {v5}, Landroid/view/ViewGroup;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_58

    move v4, v3

    .line 590
    :cond_58
    invoke-virtual {v5}, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->getTab()Lflyme/support/v7/app/ActionBar$Tab;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    .line 592
    :cond_62
    iget-object p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 594
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/app/ActionBar$Tab;

    .line 595
    invoke-virtual {v0}, Lflyme/support/v7/app/ActionBar$Tab;->getPosition()I

    move-result v3

    if-ne v3, v4, :cond_7f

    move v3, v1

    goto :goto_80

    :cond_7f
    move v3, v2

    .line 596
    :goto_80
    invoke-virtual {p0, v0, v3}, Lflyme/support/v7/widget/ScrollingTabContainerView;->addTab(Lflyme/support/v7/app/ActionBar$Tab;Z)V

    goto :goto_6b

    .line 598
    :cond_84
    invoke-virtual {p0, v4}, Lflyme/support/v7/widget/ScrollingTabContainerView;->setTabSelected(I)V

    :cond_87
    return-void
.end method

.method public updateTab(I)V
    .registers 3

    .line 529
    iget-object v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p1}, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->update()V

    .line 530
    iget-object p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz p1, :cond_18

    .line 531
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p1

    check-cast p1, Lflyme/support/v7/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 533
    :cond_18
    iget-boolean p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz p1, :cond_1f

    .line 534
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    :cond_1f
    return-void
.end method
