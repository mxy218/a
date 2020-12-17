.class public Lflyme/support/v7/widget/ActionBarContextView;
.super Lflyme/support/v7/widget/AbsActionBarView;
.source "ActionBarContextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/widget/ActionBarContextView$SplitViewVisibilityAnimListener;
    }
.end annotation


# static fields
.field private static final MULTI_CHOICE_ANIMATION_INTERPOLATOR_IN:Landroid/view/animation/Interpolator;

.field private static final MULTI_CHOICE_ANIMATION_INTERPOLATOR_OUT:Landroid/view/animation/Interpolator;


# instance fields
.field private mAnimationMode:I

.field private mClose:Landroid/view/View;

.field private mCloseItemLayout:I

.field private mCustomView:Landroid/view/View;

.field private mInMultiChoiceActionMode:Z

.field protected final mSplitViewVisAnimListener:Lflyme/support/v7/widget/ActionBarContextView$SplitViewVisibilityAnimListener;

.field private mSplitVisibilityAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleOptional:Z

.field private mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const v0, 0x3e4ccccd  # 0.2f

    const v1, 0x3ce56042  # 0.028f

    const v2, 0x3dcccccd  # 0.1f

    const/high16 v3, 0x3f800000  # 1.0f

    .line 522
    invoke-static {v0, v1, v2, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lflyme/support/v7/widget/ActionBarContextView;->MULTI_CHOICE_ANIMATION_INTERPOLATOR_IN:Landroid/view/animation/Interpolator;

    .line 523
    sget-object v0, Lflyme/support/v7/widget/ActionBarContextView;->MULTI_CHOICE_ANIMATION_INTERPOLATOR_IN:Landroid/view/animation/Interpolator;

    sput-object v0, Lflyme/support/v7/widget/ActionBarContextView;->MULTI_CHOICE_ANIMATION_INTERPOLATOR_OUT:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, v0}, Lflyme/support/v7/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 87
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->hasFullDisplay()Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lflyme/support/v7/appcompat/R$attr;->mzActionModeStyleFullScreen:I

    goto :goto_b

    :cond_9
    sget v0, Lflyme/support/v7/appcompat/R$attr;->actionModeStyle:I

    :goto_b
    invoke-direct {p0, p1, p2, v0}, Lflyme/support/v7/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lflyme/support/v7/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 582
    new-instance v0, Lflyme/support/v7/widget/ActionBarContextView$SplitViewVisibilityAnimListener;

    invoke-direct {v0, p0}, Lflyme/support/v7/widget/ActionBarContextView$SplitViewVisibilityAnimListener;-><init>(Lflyme/support/v7/widget/ActionBarContextView;)V

    iput-object v0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mSplitViewVisAnimListener:Lflyme/support/v7/widget/ActionBarContextView$SplitViewVisibilityAnimListener;

    .line 93
    sget-object v0, Lflyme/support/v7/appcompat/R$styleable;->ActionMode:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p1

    .line 95
    sget p2, Lflyme/support/v7/appcompat/R$styleable;->ActionMode_background:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    sget p2, Lflyme/support/v7/appcompat/R$styleable;->ActionMode_titleTextStyle:I

    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lflyme/support/v7/widget/ActionBarContextView;->mTitleStyleRes:I

    .line 99
    sget p2, Lflyme/support/v7/appcompat/R$styleable;->ActionMode_subtitleTextStyle:I

    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lflyme/support/v7/widget/ActionBarContextView;->mSubtitleStyleRes:I

    .line 102
    sget p2, Lflyme/support/v7/appcompat/R$styleable;->ActionMode_height:I

    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getLayoutDimension(II)I

    move-result p2

    iput p2, p0, Lflyme/support/v7/widget/AbsActionBarView;->mContentHeight:I

    .line 105
    sget p2, Lflyme/support/v7/appcompat/R$styleable;->ActionMode_closeItemLayout:I

    sget p3, Lflyme/support/v7/appcompat/R$layout;->abc_action_mode_close_item_material:I

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lflyme/support/v7/widget/ActionBarContextView;->mCloseItemLayout:I

    .line 109
    invoke-virtual {p1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lflyme/support/v7/widget/ActionBarContextView;)I
    .registers 1

    .line 53
    iget p0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mAnimationMode:I

    return p0
.end method

.method static synthetic access$002(Lflyme/support/v7/widget/ActionBarContextView;I)I
    .registers 2

    .line 53
    iput p1, p0, Lflyme/support/v7/widget/ActionBarContextView;->mAnimationMode:I

    return p1
.end method

.method static synthetic access$100()Landroid/view/animation/Interpolator;
    .registers 1

    .line 53
    sget-object v0, Lflyme/support/v7/widget/ActionBarContextView;->MULTI_CHOICE_ANIMATION_INTERPOLATOR_IN:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$202(Lflyme/support/v7/widget/ActionBarContextView;Landroidx/core/view/ViewPropertyAnimatorCompat;)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 2

    .line 53
    iput-object p1, p0, Lflyme/support/v7/widget/ActionBarContextView;->mSplitVisibilityAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    return-object p1
.end method

.method private animateToSplitMode(Z)V
    .registers 2

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_6

    :cond_4
    const/16 p1, 0x8

    .line 610
    :goto_6
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/ActionBarContextView;->multiChoiceMenuViewAnimateToVisibility(I)V

    return-void
.end method

.method private initTitle()V
    .registers 7

    .line 191
    iget-object v0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_55

    .line 192
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 196
    sget v1, Lflyme/support/v7/appcompat/R$layout;->mz_action_bar_title_item:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 198
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 199
    iget-object v0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v1, Lflyme/support/v7/appcompat/R$id;->action_bar_title:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 200
    iget-object v0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v1, Lflyme/support/v7/appcompat/R$id;->action_bar_subtitle:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    .line 201
    iget v0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mTitleStyleRes:I

    if-eqz v0, :cond_46

    .line 202
    iget-object v0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lflyme/support/v7/widget/ActionBarContextView;->mTitleStyleRes:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 204
    :cond_46
    iget v0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mSubtitleStyleRes:I

    if-eqz v0, :cond_55

    .line 205
    iget-object v0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lflyme/support/v7/widget/ActionBarContextView;->mSubtitleStyleRes:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 209
    :cond_55
    iget-object v0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lflyme/support/v7/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lflyme/support/v7/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 213
    iget-object v1, p0, Lflyme/support/v7/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 214
    iget-object v2, p0, Lflyme/support/v7/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v1, :cond_7c

    move v5, v3

    goto :goto_7d

    :cond_7c
    move v5, v4

    :goto_7d
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    iget-object v2, p0, Lflyme/support/v7/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_88

    if-eqz v1, :cond_87

    goto :goto_88

    :cond_87
    move v3, v4

    :cond_88
    :goto_88
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_98

    .line 217
    iget-object v0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_98
    return-void
.end method


# virtual methods
.method public animateToMode(ZLflyme/support/v7/app/WindowDecorActionBar$ActionModeImpl;)V
    .registers 6

    if-eqz p1, :cond_a

    const/4 v0, 0x0

    const-wide/16 v1, 0xc8

    .line 588
    invoke-virtual {p0, v0, v1, v2}, Lflyme/support/v7/widget/ActionBarContextView;->setupAnimatorToVisibility(IJ)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    goto :goto_12

    :cond_a
    const/16 v0, 0x8

    const-wide/16 v1, 0x64

    .line 591
    invoke-virtual {p0, v0, v1, v2}, Lflyme/support/v7/widget/ActionBarContextView;->setupAnimatorToVisibility(IJ)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 594
    :goto_12
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 595
    iget-boolean v0, p0, Lflyme/support/v7/widget/AbsActionBarView;->mSplitActionBar:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mInMultiChoiceActionMode:Z

    if-eqz v0, :cond_38

    :cond_1d
    const/4 v0, 0x1

    if-eqz p2, :cond_24

    .line 598
    invoke-virtual {p2}, Lflyme/support/v7/view/ActionMode;->isAnimateToShowMenu()Z

    move-result v0

    :cond_24
    if-eqz v0, :cond_2a

    .line 601
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/ActionBarContextView;->animateToSplitMode(Z)V

    goto :goto_38

    .line 602
    :cond_2a
    iget p2, p0, Lflyme/support/v7/widget/ActionBarContextView;->mAnimationMode:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_38

    iget-object p0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mSplitVisibilityAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    if-eqz p0, :cond_38

    if-eqz p1, :cond_38

    .line 604
    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    :cond_38
    :goto_38
    return-void
.end method

.method public closeMode()V
    .registers 2

    .line 273
    iget-object v0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mInMultiChoiceActionMode:Z

    if-nez v0, :cond_b

    .line 274
    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionBarContextView;->killMode()V

    :cond_b
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 321
    new-instance p0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 326
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .registers 1

    .line 53
    invoke-super {p0}, Lflyme/support/v7/widget/AbsActionBarView;->getAnimatedVisibility()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getContentHeight()I
    .registers 1

    .line 53
    invoke-super {p0}, Lflyme/support/v7/widget/AbsActionBarView;->getContentHeight()I

    move-result p0

    return p0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 1

    .line 187
    iget-object p0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 1

    .line 183
    iget-object p0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public initForMode(Lflyme/support/v7/view/ActionMode;)V
    .registers 9

    .line 222
    iget-object v0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v0, :cond_1b

    .line 223
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 224
    iget v1, p0, Lflyme/support/v7/widget/ActionBarContextView;->mCloseItemLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mClose:Landroid/view/View;

    .line 225
    iget-object v0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_26

    .line 226
    :cond_1b
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_26

    .line 227
    iget-object v0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 230
    :cond_26
    :goto_26
    iget-object v0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mClose:Landroid/view/View;

    sget v1, Lflyme/support/v7/appcompat/R$id;->action_mode_close_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 231
    new-instance v1, Lflyme/support/v7/widget/ActionBarContextView$1;

    invoke-direct {v1, p0, p1}, Lflyme/support/v7/widget/ActionBarContextView$1;-><init>(Lflyme/support/v7/widget/ActionBarContextView;Lflyme/support/v7/view/ActionMode;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    invoke-virtual {p1}, Lflyme/support/v7/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object p1

    check-cast p1, Lflyme/support/v7/view/menu/MenuBuilder;

    .line 238
    iget-object v0, p0, Lflyme/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_43

    .line 239
    invoke-virtual {v0}, Lflyme/support/v7/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 241
    :cond_43
    new-instance v0, Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lflyme/support/v7/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lflyme/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    .line 242
    iget-object v0, p0, Lflyme/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 244
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 246
    iget-boolean v4, p0, Lflyme/support/v7/widget/AbsActionBarView;->mSplitActionBar:Z

    if-nez v4, :cond_7c

    .line 247
    iget-object v1, p0, Lflyme/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    iget-object v2, p0, Lflyme/support/v7/widget/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v2}, Lflyme/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Lflyme/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 248
    iget-object p1, p0, Lflyme/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Lflyme/support/v7/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lflyme/support/v7/view/menu/MenuView;

    move-result-object p1

    check-cast p1, Lflyme/support/v7/widget/ActionMenuView;

    iput-object p1, p0, Lflyme/support/v7/widget/AbsActionBarView;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    .line 249
    iget-object p1, p0, Lflyme/support/v7/widget/AbsActionBarView;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    iget-object p1, p0, Lflyme/support/v7/widget/AbsActionBarView;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_d0

    .line 253
    :cond_7c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lflyme/support/v7/view/ActionBarPolicy;->get(Landroid/content/Context;)Lflyme/support/v7/view/ActionBarPolicy;

    move-result-object v4

    invoke-virtual {v4}, Lflyme/support/v7/view/ActionBarPolicy;->getSplitActionBarPadding()I

    move-result v4

    .line 254
    iget-object v5, p0, Lflyme/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    .line 255
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v6, v4

    .line 254
    invoke-virtual {v5, v6, v1}, Lflyme/support/v7/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 257
    iget-object v4, p0, Lflyme/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Lflyme/support/v7/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 258
    iget-object v4, p0, Lflyme/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v4, v1}, Lflyme/support/v7/widget/ActionMenuPresenter;->setIsSplit(Z)V

    .line 260
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 261
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 262
    iget-object v1, p0, Lflyme/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    iget-object v2, p0, Lflyme/support/v7/widget/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v2}, Lflyme/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Lflyme/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 263
    iget-object p1, p0, Lflyme/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Lflyme/support/v7/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lflyme/support/v7/view/menu/MenuView;

    move-result-object p1

    check-cast p1, Lflyme/support/v7/widget/ActionMenuView;

    iput-object p1, p0, Lflyme/support/v7/widget/AbsActionBarView;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    .line 264
    iget-object p1, p0, Lflyme/support/v7/widget/AbsActionBarView;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    sget v1, Lflyme/support/v7/appcompat/R$id;->mz_action_mode_menu_view:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setId(I)V

    .line 265
    iget-object p1, p0, Lflyme/support/v7/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_d0

    .line 266
    iget-object p0, p0, Lflyme/support/v7/widget/AbsActionBarView;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d0
    :goto_d0
    return-void
.end method

.method public initForMultiChoiceMode(Lflyme/support/v7/view/ActionMode;)V
    .registers 9

    const/4 v0, 0x1

    .line 485
    iput-boolean v0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mInMultiChoiceActionMode:Z

    .line 486
    invoke-virtual {p1}, Lflyme/support/v7/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object p1

    check-cast p1, Lflyme/support/v7/view/menu/MenuBuilder;

    .line 487
    iget-object v1, p0, Lflyme/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    if-eqz v1, :cond_10

    .line 488
    invoke-virtual {v1}, Lflyme/support/v7/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 490
    :cond_10
    new-instance v1, Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lflyme/support/v7/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lflyme/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    .line 491
    iget-object v1, p0, Lflyme/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1, v0}, Lflyme/support/v7/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 493
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 495
    iget-object v4, p0, Lflyme/support/v7/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-nez v4, :cond_48

    .line 496
    iget-object v0, p0, Lflyme/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    iget-object v2, p0, Lflyme/support/v7/widget/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v2}, Lflyme/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Lflyme/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 497
    iget-object p1, p0, Lflyme/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Lflyme/support/v7/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lflyme/support/v7/view/menu/MenuView;

    move-result-object p1

    check-cast p1, Lflyme/support/v7/widget/ActionMenuView;

    iput-object p1, p0, Lflyme/support/v7/widget/AbsActionBarView;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    .line 498
    iget-object p1, p0, Lflyme/support/v7/widget/AbsActionBarView;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 499
    iget-object p1, p0, Lflyme/support/v7/widget/AbsActionBarView;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9a

    .line 502
    :cond_48
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lflyme/support/v7/view/ActionBarPolicy;->get(Landroid/content/Context;)Lflyme/support/v7/view/ActionBarPolicy;

    move-result-object v4

    invoke-virtual {v4}, Lflyme/support/v7/view/ActionBarPolicy;->getSplitActionBarPadding()I

    move-result v4

    .line 503
    iget-object v5, p0, Lflyme/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    .line 504
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v6, v4

    .line 503
    invoke-virtual {v5, v6, v0}, Lflyme/support/v7/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 506
    iget-object v4, p0, Lflyme/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Lflyme/support/v7/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 507
    iget-object v4, p0, Lflyme/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v4, v0}, Lflyme/support/v7/widget/ActionMenuPresenter;->setIsSplit(Z)V

    .line 509
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 510
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 511
    iget-object v0, p0, Lflyme/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    iget-object v2, p0, Lflyme/support/v7/widget/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v2}, Lflyme/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Lflyme/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 512
    iget-object p1, p0, Lflyme/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Lflyme/support/v7/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lflyme/support/v7/view/menu/MenuView;

    move-result-object p1

    check-cast p1, Lflyme/support/v7/widget/ActionMenuView;

    iput-object p1, p0, Lflyme/support/v7/widget/AbsActionBarView;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    .line 513
    iget-object p1, p0, Lflyme/support/v7/widget/AbsActionBarView;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    sget v0, Lflyme/support/v7/appcompat/R$id;->mz_action_mode_menu_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setId(I)V

    .line 514
    iget-object p1, p0, Lflyme/support/v7/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lflyme/support/v7/widget/AbsActionBarView;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-virtual {p1, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_9a
    return-void
.end method

.method public isInMultiChoiceActionMode()Z
    .registers 1

    .line 577
    iget-boolean p0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mInMultiChoiceActionMode:Z

    return p0
.end method

.method public isTitleOptional()Z
    .registers 1

    .line 472
    iget-boolean p0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mTitleOptional:Z

    return p0
.end method

.method public killMode()V
    .registers 3

    .line 280
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 281
    iget-object v0, p0, Lflyme/support/v7/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_c

    .line 282
    iget-object v1, p0, Lflyme/support/v7/widget/AbsActionBarView;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_c
    const/4 v0, 0x0

    .line 284
    iput-object v0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 285
    iput-object v0, p0, Lflyme/support/v7/widget/AbsActionBarView;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    const/4 v1, 0x0

    .line 288
    iput-boolean v1, p0, Lflyme/support/v7/widget/ActionBarContextView;->mInMultiChoiceActionMode:Z

    .line 289
    iput-object v0, p0, Lflyme/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    return-void
.end method

.method public multiChoiceMenuViewAnimateToVisibility(I)V
    .registers 5

    .line 526
    iget-object v0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mSplitVisibilityAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_7

    .line 527
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    :cond_7
    if-nez p1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x2

    .line 529
    :goto_c
    iput v0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mAnimationMode:I

    .line 535
    iget-object v0, p0, Lflyme/support/v7/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 536
    :goto_1b
    iget-object v2, p0, Lflyme/support/v7/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-nez v2, :cond_22

    iget-object v0, p0, Lflyme/support/v7/widget/AbsActionBarView;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    goto :goto_33

    :cond_22
    if-eqz v0, :cond_31

    .line 537
    iget-object v2, p0, Lflyme/support/v7/widget/AbsActionBarView;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    if-eq v0, v2, :cond_31

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_31

    iget-object v0, p0, Lflyme/support/v7/widget/AbsActionBarView;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    goto :goto_33

    .line 538
    :cond_31
    iget-object v0, p0, Lflyme/support/v7/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    :goto_33
    if-nez v0, :cond_38

    .line 540
    iput v1, p0, Lflyme/support/v7/widget/ActionBarContextView;->mAnimationMode:I

    return-void

    :cond_38
    if-nez p1, :cond_49

    .line 544
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eqz v1, :cond_6a

    .line 546
    new-instance v2, Lflyme/support/v7/widget/ActionBarContextView$2;

    invoke-direct {v2, p0, v0, p1}, Lflyme/support/v7/widget/ActionBarContextView$2;-><init>(Lflyme/support/v7/widget/ActionBarContextView;Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_6a

    .line 567
    :cond_49
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 568
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    const-wide/16 v1, 0x104

    .line 569
    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 570
    iget-object p0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mSplitViewVisAnimListener:Lflyme/support/v7/widget/ActionBarContextView$SplitViewVisibilityAnimListener;

    invoke-virtual {p0, v0, p1}, Lflyme/support/v7/widget/ActionBarContextView$SplitViewVisibilityAnimListener;->withFinalVisibility(Landroidx/core/view/ViewPropertyAnimatorCompat;I)Lflyme/support/v7/widget/ActionBarContextView$SplitViewVisibilityAnimListener;

    invoke-virtual {v0, p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 571
    sget-object p0, Lflyme/support/v7/widget/ActionBarContextView;->MULTI_CHOICE_ANIMATION_INTERPOLATOR_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 572
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    :cond_6a
    :goto_6a
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 477
    iget-boolean p1, p0, Lflyme/support/v7/widget/AbsActionBarView;->mSplitWhenNarrow:Z

    if-eqz p1, :cond_15

    .line 478
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lflyme/support/v7/appcompat/R$bool;->mz_split_action_bar_is_narrow:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/ActionBarContextView;->setSplitToolbar(Z)V

    :cond_15
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 114
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 115
    iget-object v0, p0, Lflyme/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_f

    .line 116
    invoke-virtual {v0}, Lflyme/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 117
    iget-object p0, p0, Lflyme/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionMenuPresenter;->hideSubMenus()Z

    :cond_f
    return-void
.end method

.method public bridge synthetic onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lflyme/support/v7/widget/AbsActionBarView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 451
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2e

    .line 452
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2b

    .line 454
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 455
    const-class v0, Lflyme/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 456
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 457
    iget-object p0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2e

    .line 459
    :cond_2b
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 15

    .line 411
    invoke-static {p0}, Lflyme/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_e

    sub-int v0, p4, p2

    .line 412
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_12

    :cond_e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    .line 413
    :goto_12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    sub-int/2addr p5, p3

    .line 414
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p3

    sub-int p3, p5, p3

    .line 416
    iget-object p5, p0, Lflyme/support/v7/widget/ActionBarContextView;->mClose:Landroid/view/View;

    const/16 v7, 0x8

    if-eqz p5, :cond_59

    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result p5

    if-eq p5, v7, :cond_59

    .line 417
    iget-object p5, p0, Lflyme/support/v7/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_3b

    .line 418
    iget v1, p5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_3d

    :cond_3b
    iget v1, p5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_3d
    if-eqz p1, :cond_42

    .line 419
    iget p5, p5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_44

    :cond_42
    iget p5, p5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 420
    :goto_44
    invoke-static {v0, v1, p1}, Lflyme/support/v7/widget/AbsActionBarView;->next(IIZ)I

    move-result v8

    .line 421
    iget-object v1, p0, Lflyme/support/v7/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object v0, p0

    move v2, v8

    move v3, v6

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lflyme/support/v7/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v8, v0

    .line 422
    invoke-static {v8, p5, p1}, Lflyme/support/v7/widget/AbsActionBarView;->next(IIZ)I

    move-result p5

    goto :goto_5a

    :cond_59
    move p5, v0

    .line 425
    :goto_5a
    iget-object v0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_74

    iget-object v1, p0, Lflyme/support/v7/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-nez v1, :cond_74

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v7, :cond_74

    .line 426
    iget-object v1, p0, Lflyme/support/v7/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object v0, p0

    move v2, p5

    move v3, v6

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lflyme/support/v7/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr p5, v0

    :cond_74
    move v2, p5

    .line 429
    iget-object v1, p0, Lflyme/support/v7/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_80

    move-object v0, p0

    move v3, v6

    move v4, p3

    move v5, p1

    .line 430
    invoke-virtual/range {v0 .. v5}, Lflyme/support/v7/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    :cond_80
    if-eqz p1, :cond_88

    .line 433
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    move v3, p2

    goto :goto_8f

    :cond_88
    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    move v3, p4

    .line 438
    :goto_8f
    iget-object p2, p0, Lflyme/support/v7/widget/AbsActionBarView;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    if-eqz p2, :cond_a4

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-ne p2, p0, :cond_a4

    .line 440
    iget-object v2, p0, Lflyme/support/v7/widget/AbsActionBarView;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    xor-int/lit8 p1, p1, 0x1

    move-object v1, p0

    move v4, v6

    move v5, p3

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Lflyme/support/v7/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    :cond_a4
    return-void
.end method

.method protected onMeasure(II)V
    .registers 13

    .line 331
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    if-ne v0, v1, :cond_103

    .line 337
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_e6

    .line 343
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 345
    iget v0, p0, Lflyme/support/v7/widget/AbsActionBarView;->mContentHeight:I

    if-lez v0, :cond_17

    goto :goto_1b

    .line 346
    :cond_17
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 348
    :goto_1b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    add-int/2addr p2, v2

    .line 349
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v3, v0, p2

    const/high16 v4, -0x80000000

    .line 351
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 353
    iget-object v6, p0, Lflyme/support/v7/widget/ActionBarContextView;->mClose:Landroid/view/View;

    const/4 v7, 0x0

    if-eqz v6, :cond_4e

    .line 354
    invoke-virtual {p0, v6, v2, v5, v7}, Lflyme/support/v7/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v2

    .line 355
    iget-object v6, p0, Lflyme/support/v7/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 356
    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v8, v6

    sub-int/2addr v2, v8

    .line 359
    :cond_4e
    iget-object v6, p0, Lflyme/support/v7/widget/AbsActionBarView;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    if-eqz v6, :cond_5e

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-ne v6, p0, :cond_5e

    .line 360
    iget-object v6, p0, Lflyme/support/v7/widget/AbsActionBarView;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-virtual {p0, v6, v2, v5, v7}, Lflyme/support/v7/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v2

    .line 364
    :cond_5e
    iget-object v6, p0, Lflyme/support/v7/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_91

    iget-object v8, p0, Lflyme/support/v7/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-nez v8, :cond_91

    .line 365
    iget-boolean v8, p0, Lflyme/support/v7/widget/ActionBarContextView;->mTitleOptional:Z

    if-eqz v8, :cond_8d

    .line 366
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 367
    iget-object v8, p0, Lflyme/support/v7/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6, v5}, Landroid/widget/LinearLayout;->measure(II)V

    .line 368
    iget-object v5, p0, Lflyme/support/v7/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    if-gt v5, v2, :cond_7d

    const/4 v6, 0x1

    goto :goto_7e

    :cond_7d
    move v6, v7

    :goto_7e
    if-eqz v6, :cond_81

    sub-int/2addr v2, v5

    .line 373
    :cond_81
    iget-object v5, p0, Lflyme/support/v7/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_87

    move v6, v7

    goto :goto_89

    :cond_87
    const/16 v6, 0x8

    :goto_89
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_91

    .line 375
    :cond_8d
    invoke-virtual {p0, v6, v2, v5, v7}, Lflyme/support/v7/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v2

    .line 379
    :cond_91
    :goto_91
    iget-object v5, p0, Lflyme/support/v7/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v5, :cond_c4

    .line 380
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 381
    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v8, -0x2

    if-eq v6, v8, :cond_a0

    move v6, v1

    goto :goto_a1

    :cond_a0
    move v6, v4

    .line 383
    :goto_a1
    iget v9, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v9, :cond_a9

    .line 384
    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 385
    :cond_a9
    iget v9, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v9, v8, :cond_ae

    goto :goto_af

    :cond_ae
    move v1, v4

    .line 387
    :goto_af
    iget v4, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v4, :cond_b7

    .line 388
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 389
    :cond_b7
    iget-object v4, p0, Lflyme/support/v7/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 390
    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 389
    invoke-virtual {v4, v2, v1}, Landroid/view/View;->measure(II)V

    .line 393
    :cond_c4
    iget v1, p0, Lflyme/support/v7/widget/AbsActionBarView;->mContentHeight:I

    if-gtz v1, :cond_e2

    .line 395
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v1, v7

    :goto_cd
    if-ge v7, v0, :cond_de

    .line 397
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 398
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p2

    if-le v2, v1, :cond_db

    move v1, v2

    :cond_db
    add-int/lit8 v7, v7, 0x1

    goto :goto_cd

    .line 403
    :cond_de
    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    goto :goto_e5

    .line 405
    :cond_e2
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    :goto_e5
    return-void

    .line 339
    :cond_e6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class p2, Lflyme/support/v7/widget/ActionBarContextView;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " can only be used with android:layout_height=\"wrap_content\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 333
    :cond_103
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class p2, Lflyme/support/v7/widget/ActionBarContextView;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " can only be used with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lflyme/support/v7/widget/AbsActionBarView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setContentHeight(I)V
    .registers 2

    .line 154
    iput p1, p0, Lflyme/support/v7/widget/AbsActionBarView;->mContentHeight:I

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 3

    .line 158
    iget-object v0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 159
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 161
    :cond_7
    iput-object p1, p0, Lflyme/support/v7/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz p1, :cond_15

    .line 162
    iget-object v0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_15

    .line 163
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    :cond_15
    if-eqz p1, :cond_1a

    .line 167
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 169
    :cond_1a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setSplitToolbar(Z)V
    .registers 7

    .line 123
    iget-boolean v0, p0, Lflyme/support/v7/widget/AbsActionBarView;->mSplitActionBar:Z

    if-eq v0, p1, :cond_7f

    .line 124
    iget-object v0, p0, Lflyme/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_7c

    .line 126
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    if-nez p1, :cond_36

    .line 129
    iget-object v1, p0, Lflyme/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Lflyme/support/v7/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lflyme/support/v7/view/menu/MenuView;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/ActionMenuView;

    iput-object v1, p0, Lflyme/support/v7/widget/AbsActionBarView;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    .line 130
    iget-object v1, p0, Lflyme/support/v7/widget/AbsActionBarView;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    iget-object v1, p0, Lflyme/support/v7/widget/AbsActionBarView;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_30

    .line 132
    iget-object v2, p0, Lflyme/support/v7/widget/AbsActionBarView;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 133
    :cond_30
    iget-object v1, p0, Lflyme/support/v7/widget/AbsActionBarView;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7c

    .line 134
    :cond_36
    iget-object v1, p0, Lflyme/support/v7/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_7c

    .line 136
    iget-object v1, p0, Lflyme/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    .line 137
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v4, 0x1

    .line 136
    invoke-virtual {v1, v3, v4}, Lflyme/support/v7/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 139
    iget-object v1, p0, Lflyme/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    const v3, 0x7fffffff

    invoke-virtual {v1, v3}, Lflyme/support/v7/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 141
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 142
    iget v1, p0, Lflyme/support/v7/widget/AbsActionBarView;->mContentHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 143
    iget-object v1, p0, Lflyme/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Lflyme/support/v7/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lflyme/support/v7/view/menu/MenuView;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/ActionMenuView;

    iput-object v1, p0, Lflyme/support/v7/widget/AbsActionBarView;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    .line 144
    iget-object v1, p0, Lflyme/support/v7/widget/AbsActionBarView;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_75

    .line 145
    iget-object v2, p0, Lflyme/support/v7/widget/AbsActionBarView;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 146
    :cond_75
    iget-object v1, p0, Lflyme/support/v7/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lflyme/support/v7/widget/AbsActionBarView;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    :cond_7c
    :goto_7c
    invoke-super {p0, p1}, Lflyme/support/v7/widget/AbsActionBarView;->setSplitToolbar(Z)V

    :cond_7f
    return-void
.end method

.method public bridge synthetic setSplitView(Landroid/view/ViewGroup;)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lflyme/support/v7/widget/AbsActionBarView;->setSplitView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public bridge synthetic setSplitWhenNarrow(Z)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lflyme/support/v7/widget/AbsActionBarView;->setSplitWhenNarrow(Z)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 178
    iput-object p1, p0, Lflyme/support/v7/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    .line 179
    invoke-direct {p0}, Lflyme/support/v7/widget/ActionBarContextView;->initTitle()V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 173
    iput-object p1, p0, Lflyme/support/v7/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 174
    invoke-direct {p0}, Lflyme/support/v7/widget/ActionBarContextView;->initTitle()V

    return-void
.end method

.method public setTitleOptional(Z)V
    .registers 3

    .line 465
    iget-boolean v0, p0, Lflyme/support/v7/widget/ActionBarContextView;->mTitleOptional:Z

    if-eq p1, v0, :cond_7

    .line 466
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 468
    :cond_7
    iput-boolean p1, p0, Lflyme/support/v7/widget/ActionBarContextView;->mTitleOptional:Z

    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lflyme/support/v7/widget/AbsActionBarView;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic setupAnimatorToVisibility(IJ)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 4

    .line 53
    invoke-super {p0, p1, p2, p3}, Lflyme/support/v7/widget/AbsActionBarView;->setupAnimatorToVisibility(IJ)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    return-object p0
.end method

.method public shouldDelayChildPressedState()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public showOverflowMenu()Z
    .registers 1

    .line 295
    iget-object p0, p0, Lflyme/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    if-eqz p0, :cond_9

    .line 296
    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method
