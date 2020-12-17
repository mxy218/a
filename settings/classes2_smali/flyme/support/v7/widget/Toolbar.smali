.class public Lflyme/support/v7/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/widget/Toolbar$VisibilityAnimListener;,
        Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;,
        Lflyme/support/v7/widget/Toolbar$SavedState;,
        Lflyme/support/v7/widget/Toolbar$LayoutParams;,
        Lflyme/support/v7/widget/Toolbar$OnMenuItemClickListener;
    }
.end annotation


# instance fields
.field private mActionMenuPresenterCallback:Lflyme/support/v7/view/menu/MenuPresenter$Callback;

.field private mBottomMenuView:Lflyme/support/v7/widget/ActionMenuView;

.field private mButtonGravity:I

.field private mCollapseButtonView:Landroid/widget/ImageButton;

.field private mCollapseDescription:Ljava/lang/CharSequence;

.field private mCollapseIcon:Landroid/graphics/drawable/Drawable;

.field private mCollapsible:Z

.field private final mContentInsets:Lflyme/support/v7/widget/RtlSpacingHelper;

.field private final mDrawableManager:Landroidx/appcompat/widget/AppCompatDrawableManager;

.field private mEatingHover:Z

.field private mEatingTouch:Z

.field mExpandedActionView:Landroid/view/View;

.field private mExpandedMenuPresenter:Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

.field private mGravity:I

.field private final mHiddenViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLogoView:Landroid/widget/ImageView;

.field private mMaxButtonHeight:I

.field private mMenuBuilderCallback:Lflyme/support/v7/view/menu/MenuBuilder$Callback;

.field private mMenuView:Lflyme/support/v7/widget/ActionMenuView;

.field private final mMenuViewItemClickListener:Lflyme/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

.field protected mMenuViewVisibilityAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

.field private mNavButtonView:Landroid/widget/ImageButton;

.field private mOnMenuItemClickListener:Lflyme/support/v7/widget/Toolbar$OnMenuItemClickListener;

.field private mOuterActionMenuPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mShowBottomMenu:Z

.field private final mShowOverflowMenuRunnable:Ljava/lang/Runnable;

.field protected mSplitActionBar:Z

.field protected mSplitView:Landroid/view/ViewGroup;

.field protected mSplitWhenNarrow:Z

.field private mSubtitleText:Ljava/lang/CharSequence;

.field private mSubtitleTextAppearance:I

.field private mSubtitleTextColor:I

.field private mSubtitleTextView:Landroid/widget/TextView;

.field private final mTempMargins:[I

.field private final mTempViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleMarginBottom:I

.field private mTitleMarginEnd:I

.field private mTitleMarginStart:I

.field private mTitleMarginTop:I

.field private mTitleScrollView:Landroid/widget/HorizontalScrollView;

.field private mTitleText:Ljava/lang/CharSequence;

.field private mTitleTextAppearance:I

.field private mTitleTextAppearanceBack:I

.field private mTitleTextColor:I

.field private mTitleTextView:Landroid/widget/TextView;

.field protected final mVisAnimListener:Lflyme/support/v7/widget/Toolbar$VisibilityAnimListener;

.field private mWrapper:Lflyme/support/v7/widget/ToolbarWidgetWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 218
    invoke-direct {p0, p1, v0}, Lflyme/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 222
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->hasFullDisplay()Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lflyme/support/v7/appcompat/R$attr;->mzToolbarStyleFullScreen:I

    goto :goto_b

    :cond_9
    sget v0, Lflyme/support/v7/appcompat/R$attr;->toolbarStyle:I

    :goto_b
    invoke-direct {p0, p1, p2, v0}, Lflyme/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 226
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 164
    new-instance p1, Lflyme/support/v7/widget/RtlSpacingHelper;

    invoke-direct {p1}, Lflyme/support/v7/widget/RtlSpacingHelper;-><init>()V

    iput-object p1, p0, Lflyme/support/v7/widget/Toolbar;->mContentInsets:Lflyme/support/v7/widget/RtlSpacingHelper;

    const p1, 0x800013

    .line 166
    iput p1, p0, Lflyme/support/v7/widget/Toolbar;->mGravity:I

    .line 178
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lflyme/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    .line 181
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lflyme/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 183
    iput-object p1, p0, Lflyme/support/v7/widget/Toolbar;->mTempMargins:[I

    .line 187
    new-instance p1, Lflyme/support/v7/widget/Toolbar$1;

    invoke-direct {p1, p0}, Lflyme/support/v7/widget/Toolbar$1;-><init>(Lflyme/support/v7/widget/Toolbar;)V

    iput-object p1, p0, Lflyme/support/v7/widget/Toolbar;->mMenuViewItemClickListener:Lflyme/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    .line 206
    new-instance p1, Lflyme/support/v7/widget/Toolbar$2;

    invoke-direct {p1, p0}, Lflyme/support/v7/widget/Toolbar$2;-><init>(Lflyme/support/v7/widget/Toolbar;)V

    iput-object p1, p0, Lflyme/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    .line 2712
    new-instance p1, Lflyme/support/v7/widget/Toolbar$VisibilityAnimListener;

    invoke-direct {p1, p0}, Lflyme/support/v7/widget/Toolbar$VisibilityAnimListener;-><init>(Lflyme/support/v7/widget/Toolbar;)V

    iput-object p1, p0, Lflyme/support/v7/widget/Toolbar;->mVisAnimListener:Lflyme/support/v7/widget/Toolbar$VisibilityAnimListener;

    .line 229
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lflyme/support/v7/appcompat/R$styleable;->Toolbar:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p1

    .line 232
    sget p2, Lflyme/support/v7/appcompat/R$styleable;->Toolbar_titleTextAppearance:I

    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lflyme/support/v7/widget/Toolbar;->mTitleTextAppearance:I

    .line 233
    sget p2, Lflyme/support/v7/appcompat/R$styleable;->Toolbar_mzTitleTextAppearanceBack:I

    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lflyme/support/v7/widget/Toolbar;->mTitleTextAppearanceBack:I

    .line 234
    sget p2, Lflyme/support/v7/appcompat/R$styleable;->Toolbar_subtitleTextAppearance:I

    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lflyme/support/v7/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 235
    sget p2, Lflyme/support/v7/appcompat/R$styleable;->Toolbar_android_gravity:I

    iget p3, p0, Lflyme/support/v7/widget/Toolbar;->mGravity:I

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lflyme/support/v7/widget/Toolbar;->mGravity:I

    .line 238
    sget p2, Lflyme/support/v7/appcompat/R$styleable;->Toolbar_mzButtonGravity:I

    const/16 p3, 0x30

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lflyme/support/v7/widget/Toolbar;->mButtonGravity:I

    .line 240
    sget p2, Lflyme/support/v7/appcompat/R$styleable;->Toolbar_titleMargins:I

    .line 241
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lflyme/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    iput p2, p0, Lflyme/support/v7/widget/Toolbar;->mTitleMarginTop:I

    iput p2, p0, Lflyme/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    iput p2, p0, Lflyme/support/v7/widget/Toolbar;->mTitleMarginStart:I

    .line 243
    sget p2, Lflyme/support/v7/appcompat/R$styleable;->Toolbar_titleMarginStart:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    if-ltz p2, :cond_87

    .line 245
    iput p2, p0, Lflyme/support/v7/widget/Toolbar;->mTitleMarginStart:I

    .line 248
    :cond_87
    sget p2, Lflyme/support/v7/appcompat/R$styleable;->Toolbar_titleMarginEnd:I

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    if-ltz p2, :cond_91

    .line 250
    iput p2, p0, Lflyme/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    .line 253
    :cond_91
    sget p2, Lflyme/support/v7/appcompat/R$styleable;->Toolbar_titleMarginTop:I

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    if-ltz p2, :cond_9b

    .line 255
    iput p2, p0, Lflyme/support/v7/widget/Toolbar;->mTitleMarginTop:I

    .line 258
    :cond_9b
    sget p2, Lflyme/support/v7/appcompat/R$styleable;->Toolbar_titleMarginBottom:I

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    if-ltz p2, :cond_a5

    .line 261
    iput p2, p0, Lflyme/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    .line 264
    :cond_a5
    sget p2, Lflyme/support/v7/appcompat/R$styleable;->Toolbar_maxButtonHeight:I

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lflyme/support/v7/widget/Toolbar;->mMaxButtonHeight:I

    .line 266
    sget p2, Lflyme/support/v7/appcompat/R$styleable;->Toolbar_contentInsetStart:I

    const/high16 v0, -0x80000000

    .line 267
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    .line 269
    sget v2, Lflyme/support/v7/appcompat/R$styleable;->Toolbar_contentInsetEnd:I

    .line 270
    invoke-virtual {p1, v2, v0}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 272
    sget v3, Lflyme/support/v7/appcompat/R$styleable;->Toolbar_contentInsetLeft:I

    .line 273
    invoke-virtual {p1, v3, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 274
    sget v4, Lflyme/support/v7/appcompat/R$styleable;->Toolbar_contentInsetRight:I

    .line 275
    invoke-virtual {p1, v4, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 277
    iget-object v5, p0, Lflyme/support/v7/widget/Toolbar;->mContentInsets:Lflyme/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {v5, v3, v4}, Lflyme/support/v7/widget/RtlSpacingHelper;->setAbsolute(II)V

    if-ne p2, v0, :cond_d0

    if-eq v2, v0, :cond_d5

    .line 281
    :cond_d0
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mContentInsets:Lflyme/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {v0, p2, v2}, Lflyme/support/v7/widget/RtlSpacingHelper;->setRelative(II)V

    .line 284
    :cond_d5
    sget p2, Lflyme/support/v7/appcompat/R$styleable;->Toolbar_collapseIcon:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lflyme/support/v7/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    .line 285
    sget p2, Lflyme/support/v7/appcompat/R$styleable;->Toolbar_collapseContentDescription:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lflyme/support/v7/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    .line 287
    sget p2, Lflyme/support/v7/appcompat/R$styleable;->Toolbar_title:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 288
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f4

    .line 289
    invoke-virtual {p0, p2}, Lflyme/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 292
    :cond_f4
    sget p2, Lflyme/support/v7/appcompat/R$styleable;->Toolbar_subtitle:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 293
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_103

    .line 294
    invoke-virtual {p0, p2}, Lflyme/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 297
    :cond_103
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lflyme/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 298
    sget p2, Lflyme/support/v7/appcompat/R$styleable;->Toolbar_popupTheme:I

    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lflyme/support/v7/widget/Toolbar;->setPopupTheme(I)V

    .line 300
    sget p2, Lflyme/support/v7/appcompat/R$styleable;->Toolbar_navigationIcon:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_11d

    .line 302
    invoke-virtual {p0, p2}, Lflyme/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 304
    :cond_11d
    sget p2, Lflyme/support/v7/appcompat/R$styleable;->Toolbar_navigationContentDescription:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 305
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12c

    .line 306
    invoke-virtual {p0, p2}, Lflyme/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 309
    :cond_12c
    sget p2, Lflyme/support/v7/appcompat/R$styleable;->Toolbar_logo:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_137

    .line 311
    invoke-virtual {p0, p2}, Lflyme/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 314
    :cond_137
    sget p2, Lflyme/support/v7/appcompat/R$styleable;->Toolbar_logoDescription:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 315
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_146

    .line 316
    invoke-virtual {p0, p2}, Lflyme/support/v7/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 319
    :cond_146
    sget p2, Lflyme/support/v7/appcompat/R$styleable;->Toolbar_titleTextColor:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_157

    .line 320
    sget p2, Lflyme/support/v7/appcompat/R$styleable;->Toolbar_titleTextColor:I

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lflyme/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 323
    :cond_157
    sget p2, Lflyme/support/v7/appcompat/R$styleable;->Toolbar_subtitleTextColor:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_168

    .line 324
    sget p2, Lflyme/support/v7/appcompat/R$styleable;->Toolbar_subtitleTextColor:I

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lflyme/support/v7/widget/Toolbar;->setSubtitleTextColor(I)V

    .line 326
    :cond_168
    invoke-virtual {p1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 328
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->get()Landroidx/appcompat/widget/AppCompatDrawableManager;

    move-result-object p1

    iput-object p1, p0, Lflyme/support/v7/widget/Toolbar;->mDrawableManager:Landroidx/appcompat/widget/AppCompatDrawableManager;

    return-void
.end method

.method static synthetic access$000(Lflyme/support/v7/widget/Toolbar;)Lflyme/support/v7/widget/Toolbar$OnMenuItemClickListener;
    .registers 1

    .line 126
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mOnMenuItemClickListener:Lflyme/support/v7/widget/Toolbar$OnMenuItemClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lflyme/support/v7/widget/Toolbar;)V
    .registers 1

    .line 126
    invoke-direct {p0}, Lflyme/support/v7/widget/Toolbar;->ensureCollapseButtonView()V

    return-void
.end method

.method static synthetic access$300(Lflyme/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;
    .registers 1

    .line 126
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$400(Lflyme/support/v7/widget/Toolbar;)I
    .registers 1

    .line 126
    iget p0, p0, Lflyme/support/v7/widget/Toolbar;->mButtonGravity:I

    return p0
.end method

.method static synthetic access$500(Lflyme/support/v7/widget/Toolbar;)Lflyme/support/v7/widget/ActionMenuView;
    .registers 1

    .line 126
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    return-object p0
.end method

.method private addCustomViewsWithGravity(Ljava/util/List;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1840
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    .line 1841
    :goto_b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 1843
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    .line 1842
    invoke-static {p2, v4}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p2

    .line 1845
    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_41

    sub-int/2addr v3, v2

    :goto_1d
    if-ltz v3, :cond_65

    .line 1849
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1850
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/Toolbar$LayoutParams;

    .line 1851
    iget v2, v1, Lflyme/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v2, :cond_3e

    invoke-direct {p0, v0}, Lflyme/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3e

    iget v1, v1, Lflyme/support/v7/app/ActionBar$LayoutParams;->gravity:I

    .line 1852
    invoke-direct {p0, v1}, Lflyme/support/v7/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v1

    if-ne v1, p2, :cond_3e

    .line 1853
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3e
    add-int/lit8 v3, v3, -0x1

    goto :goto_1d

    :cond_41
    :goto_41
    if-ge v1, v3, :cond_65

    .line 1858
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1859
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/Toolbar$LayoutParams;

    .line 1860
    iget v4, v2, Lflyme/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v4, :cond_62

    invoke-direct {p0, v0}, Lflyme/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_62

    iget v2, v2, Lflyme/support/v7/app/ActionBar$LayoutParams;->gravity:I

    .line 1861
    invoke-direct {p0, v2}, Lflyme/support/v7/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v2

    if-ne v2, p2, :cond_62

    .line 1862
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    :cond_65
    return-void
.end method

.method private addSystemView(Landroid/view/View;Z)V
    .registers 5

    .line 1186
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_b

    .line 1189
    invoke-virtual {p0}, Lflyme/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Lflyme/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    goto :goto_18

    .line 1190
    :cond_b
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 1191
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lflyme/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    goto :goto_18

    .line 1193
    :cond_16
    check-cast v0, Lflyme/support/v7/widget/Toolbar$LayoutParams;

    :goto_18
    const/4 v1, 0x1

    .line 1195
    iput v1, v0, Lflyme/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    if-eqz p2, :cond_2a

    .line 1197
    iget-object p2, p0, Lflyme/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    if-eqz p2, :cond_2a

    .line 1198
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1199
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 1201
    :cond_2a
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2d
    return-void
.end method

.method private ensureBottomMenuView()V
    .registers 4

    .line 962
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mBottomMenuView:Lflyme/support/v7/widget/ActionMenuView;

    if-nez v0, :cond_44

    .line 963
    new-instance v0, Lflyme/support/v7/widget/ActionMenuView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lflyme/support/v7/widget/ActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mBottomMenuView:Lflyme/support/v7/widget/ActionMenuView;

    .line 964
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mBottomMenuView:Lflyme/support/v7/widget/ActionMenuView;

    iget v1, p0, Lflyme/support/v7/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/ActionMenuView;->setPopupTheme(I)V

    .line 965
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mBottomMenuView:Lflyme/support/v7/widget/ActionMenuView;

    iget-object v1, p0, Lflyme/support/v7/widget/Toolbar;->mMenuViewItemClickListener:Lflyme/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/ActionMenuView;->setOnMenuItemClickListener(Lflyme/support/v7/widget/ActionMenuView$OnMenuItemClickListener;)V

    .line 966
    invoke-virtual {p0}, Lflyme/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Lflyme/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    const v1, 0x800005

    .line 967
    iget v2, p0, Lflyme/support/v7/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Lflyme/support/v7/app/ActionBar$LayoutParams;->gravity:I

    .line 968
    iget-object v1, p0, Lflyme/support/v7/widget/Toolbar;->mBottomMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 969
    iget-object v1, p0, Lflyme/support/v7/widget/Toolbar;->mBottomMenuView:Lflyme/support/v7/widget/ActionMenuView;

    sget v2, Lflyme/support/v7/appcompat/R$id;->mz_action_bottom_menu_view:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setId(I)V

    .line 970
    iget-object v1, p0, Lflyme/support/v7/widget/Toolbar;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_44

    const/4 v2, -0x1

    .line 971
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 972
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mBottomMenuView:Lflyme/support/v7/widget/ActionMenuView;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_44
    return-void
.end method

.method private ensureCollapseButtonView()V
    .registers 5

    .line 1167
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-nez v0, :cond_40

    .line 1168
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lflyme/support/v7/appcompat/R$attr;->toolbarNavigationButtonStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1170
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v1, p0, Lflyme/support/v7/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1171
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v1, p0, Lflyme/support/v7/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1172
    invoke-virtual {p0}, Lflyme/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Lflyme/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    const v1, 0x800003

    .line 1173
    iget v2, p0, Lflyme/support/v7/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Lflyme/support/v7/app/ActionBar$LayoutParams;->gravity:I

    const/4 v1, 0x2

    .line 1174
    iput v1, v0, Lflyme/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1175
    iget-object v1, p0, Lflyme/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1176
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    new-instance v1, Lflyme/support/v7/widget/Toolbar$4;

    invoke-direct {v1, p0}, Lflyme/support/v7/widget/Toolbar$4;-><init>(Lflyme/support/v7/widget/Toolbar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_40
    return-void
.end method

.method private ensureLogoView()V
    .registers 3

    .line 563
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-nez v0, :cond_f

    .line 564
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    :cond_f
    return-void
.end method

.method private ensureMenu()V
    .registers 4

    .line 926
    invoke-direct {p0}, Lflyme/support/v7/widget/Toolbar;->ensureMenuView()V

    .line 927
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ActionMenuView;->peekMenu()Lflyme/support/v7/view/menu/MenuBuilder;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 929
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/view/menu/MenuBuilder;

    .line 930
    iget-object v1, p0, Lflyme/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_1f

    .line 931
    new-instance v1, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Lflyme/support/v7/widget/Toolbar;Lflyme/support/v7/widget/Toolbar$1;)V

    iput-object v1, p0, Lflyme/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 933
    :cond_1f
    iget-object v1, p0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lflyme/support/v7/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    .line 934
    iget-object v1, p0, Lflyme/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lflyme/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Lflyme/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    :cond_2c
    return-void
.end method

.method private ensureMenuView()V
    .registers 4

    .line 939
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    if-nez v0, :cond_55

    .line 940
    new-instance v0, Lflyme/support/v7/widget/ActionMenuView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lflyme/support/v7/widget/ActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    .line 941
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    iget v1, p0, Lflyme/support/v7/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/ActionMenuView;->setPopupTheme(I)V

    .line 942
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    iget-object v1, p0, Lflyme/support/v7/widget/Toolbar;->mMenuViewItemClickListener:Lflyme/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/ActionMenuView;->setOnMenuItemClickListener(Lflyme/support/v7/widget/ActionMenuView$OnMenuItemClickListener;)V

    .line 943
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    iget-object v1, p0, Lflyme/support/v7/widget/Toolbar;->mActionMenuPresenterCallback:Lflyme/support/v7/view/menu/MenuPresenter$Callback;

    iget-object v2, p0, Lflyme/support/v7/widget/Toolbar;->mMenuBuilderCallback:Lflyme/support/v7/view/menu/MenuBuilder$Callback;

    invoke-virtual {v0, v1, v2}, Lflyme/support/v7/widget/ActionMenuView;->setMenuCallbacks(Lflyme/support/v7/view/menu/MenuPresenter$Callback;Lflyme/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 944
    invoke-virtual {p0}, Lflyme/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Lflyme/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    const v1, 0x800005

    .line 945
    iget v2, p0, Lflyme/support/v7/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Lflyme/support/v7/app/ActionBar$LayoutParams;->gravity:I

    .line 946
    iget-object v1, p0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 949
    iget-object v1, p0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    sget v2, Lflyme/support/v7/appcompat/R$id;->mz_action_menu_view:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setId(I)V

    .line 950
    iget-boolean v1, p0, Lflyme/support/v7/widget/Toolbar;->mSplitActionBar:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_50

    const/4 v1, -0x1

    .line 951
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 952
    iget-object v1, p0, Lflyme/support/v7/widget/Toolbar;->mSplitView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-virtual {v1, p0, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_55

    .line 954
    :cond_50
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-direct {p0, v0, v2}, Lflyme/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    :cond_55
    :goto_55
    return-void
.end method

.method private ensureNavButtonView()V
    .registers 5

    .line 1122
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-nez v0, :cond_36

    .line 1123
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lflyme/support/v7/appcompat/R$attr;->toolbarNavigationButtonStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1125
    invoke-virtual {p0}, Lflyme/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Lflyme/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    const v1, 0x800003

    .line 1126
    iget v2, p0, Lflyme/support/v7/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Lflyme/support/v7/app/ActionBar$LayoutParams;->gravity:I

    .line 1127
    iget-object v1, p0, Lflyme/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1129
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    sget v1, Lflyme/support/v7/appcompat/R$id;->mz_toolbar_nav_button:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setId(I)V

    .line 1136
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    new-instance v1, Lflyme/support/v7/widget/Toolbar$3;

    invoke-direct {v1, p0}, Lflyme/support/v7/widget/Toolbar$3;-><init>(Lflyme/support/v7/widget/Toolbar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_36
    return-void
.end method

.method private getChildHorizontalGravity(I)I
    .registers 5

    .line 1869
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    .line 1870
    invoke-static {p1, p0}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_17

    const/4 v1, 0x3

    if-eq p1, v1, :cond_17

    const/4 v2, 0x5

    if-eq p1, v2, :cond_17

    if-ne p0, v0, :cond_16

    move v1, v2

    :cond_16
    return v1

    :cond_17
    return p1
.end method

.method private getChildTop(Landroid/view/View;I)I
    .registers 8

    .line 1789
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/Toolbar$LayoutParams;

    .line 1790
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_12

    sub-int p2, p1, p2

    .line 1791
    div-int/lit8 p2, p2, 0x2

    goto :goto_13

    :cond_12
    move p2, v1

    .line 1792
    :goto_13
    iget v2, v0, Lflyme/support/v7/app/ActionBar$LayoutParams;->gravity:I

    invoke-direct {p0, v2}, Lflyme/support/v7/widget/Toolbar;->getChildVerticalGravity(I)I

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_58

    const/16 v3, 0x50

    if-eq v2, v3, :cond_49

    .line 1802
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    .line 1803
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    .line 1804
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    sub-int v3, p0, p2

    sub-int/2addr v3, v2

    sub-int/2addr v3, p1

    .line 1806
    div-int/lit8 v3, v3, 0x2

    .line 1807
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ge v3, v4, :cond_39

    move v3, v4

    goto :goto_47

    :cond_39
    sub-int/2addr p0, v2

    sub-int/2addr p0, p1

    sub-int/2addr p0, v3

    sub-int/2addr p0, p2

    .line 1812
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-ge p0, p1, :cond_47

    sub-int/2addr p1, p0

    sub-int/2addr v3, p1

    .line 1813
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_47
    :goto_47
    add-int/2addr p2, v3

    return p2

    .line 1797
    :cond_49
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v1, p0

    sub-int/2addr v1, p1

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v1, p0

    sub-int/2addr v1, p2

    return v1

    .line 1794
    :cond_58
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p0

    sub-int/2addr p0, p2

    return p0
.end method

.method private getChildVerticalGravity(I)I
    .registers 3

    and-int/lit8 p1, p1, 0x70

    const/16 v0, 0x10

    if-eq p1, v0, :cond_13

    const/16 v0, 0x30

    if-eq p1, v0, :cond_13

    const/16 v0, 0x50

    if-eq p1, v0, :cond_13

    .line 1828
    iget p0, p0, Lflyme/support/v7/widget/Toolbar;->mGravity:I

    and-int/lit8 p0, p0, 0x70

    return p0

    :cond_13
    return p1
.end method

.method private getHorizontalMargins(Landroid/view/View;)I
    .registers 2

    .line 1887
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1888
    invoke-static {p0}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result p1

    .line 1889
    invoke-static {p0}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .registers 2

    .line 978
    new-instance v0, Lflyme/support/v7/view/SupportMenuInflater;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lflyme/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getVerticalMargins(Landroid/view/View;)I
    .registers 2

    .line 1893
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1894
    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, p0

    return p1
.end method

.method private getViewListMeasuredWidth(Ljava/util/List;[I)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;[I)I"
        }
    .end annotation

    const/4 p0, 0x0

    .line 1744
    aget v0, p2, p0

    const/4 v1, 0x1

    .line 1745
    aget p2, p2, v1

    .line 1747
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    move v3, p2

    move v2, v0

    move p2, p0

    move v0, p2

    :goto_e
    if-ge p2, v1, :cond_40

    .line 1749
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1750
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lflyme/support/v7/widget/Toolbar$LayoutParams;

    .line 1751
    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v6, v2

    .line 1752
    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v2, v3

    .line 1753
    invoke-static {p0, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1754
    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    neg-int v6, v6

    .line 1755
    invoke-static {p0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    neg-int v2, v2

    .line 1756
    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1757
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    add-int/lit8 p2, p2, 0x1

    move v3, v2

    move v2, v6

    goto :goto_e

    :cond_40
    return v0
.end method

.method private isChildOrHidden(Landroid/view/View;)Z
    .registers 3

    .line 1960
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_11

    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method private layoutChildLeft(Landroid/view/View;I[II)I
    .registers 9

    .line 1764
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/Toolbar$LayoutParams;

    .line 1765
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p3, v2

    sub-int/2addr v1, v3

    .line 1766
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr p2, v3

    neg-int v1, v1

    .line 1767
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p3, v2

    .line 1768
    invoke-direct {p0, p1, p4}, Lflyme/support/v7/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result p0

    .line 1769
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int p4, p2, p3

    .line 1770
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p0

    invoke-virtual {p1, p2, p0, p4, v1}, Landroid/view/View;->layout(IIII)V

    .line 1771
    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p3, p0

    add-int/2addr p2, p3

    return p2
.end method

.method private layoutChildRight(Landroid/view/View;I[II)I
    .registers 10

    .line 1777
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/Toolbar$LayoutParams;

    .line 1778
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v2, 0x1

    aget v3, p3, v2

    sub-int/2addr v1, v3

    const/4 v3, 0x0

    .line 1779
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr p2, v4

    neg-int v1, v1

    .line 1780
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p3, v2

    .line 1781
    invoke-direct {p0, p1, p4}, Lflyme/support/v7/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result p0

    .line 1782
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int p4, p2, p3

    .line 1783
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p0

    invoke-virtual {p1, p4, p0, p2, v1}, Landroid/view/View;->layout(IIII)V

    .line 1784
    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p3, p0

    sub-int/2addr p2, p3

    return p2
.end method

.method private measureChildCollapseMargins(Landroid/view/View;IIII[I)I
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 1325
    invoke-direct/range {v0 .. v7}, Lflyme/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[IZ)I

    move-result p0

    return p0
.end method

.method private measureChildCollapseMargins(Landroid/view/View;IIII[IZ)I
    .registers 15

    .line 1334
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1336
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p6, v2

    sub-int/2addr v1, v3

    .line 1337
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v4, 0x1

    aget v5, p6, v4

    sub-int/2addr v3, v5

    .line 1338
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1339
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v5, v6

    neg-int v1, v1

    .line 1341
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v2

    neg-int v1, v3

    .line 1342
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v4

    .line 1345
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    add-int/2addr p6, v1

    add-int/2addr p6, v5

    add-int/2addr p6, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1344
    invoke-static {p2, p6, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 1347
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    add-int/2addr p3, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, p0

    add-int/2addr p3, p5

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1346
    invoke-static {p4, p3, p0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    if-eqz p7, :cond_64

    .line 1352
    invoke-virtual {p1}, Landroid/view/View;->getMinimumWidth()I

    move-result p3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p4

    if-le p3, p4, :cond_64

    .line 1353
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-static {v2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1358
    :cond_64
    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    .line 1359
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    add-int/2addr p0, v5

    return p0
.end method

.method private measureChildConstrained(Landroid/view/View;IIIII)V
    .registers 10

    .line 1303
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1306
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1305
    invoke-static {p2, v1, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 1309
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    add-int/2addr p3, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, p0

    add-int/2addr p3, p5

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1308
    invoke-static {p4, p3, p0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    .line 1312
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    const/high16 p4, 0x40000000  # 2.0f

    if-eq p3, p4, :cond_4a

    if-ltz p6, :cond_4a

    if-eqz p3, :cond_46

    .line 1315
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    invoke-static {p0, p6}, Ljava/lang/Math;->min(II)I

    move-result p6

    .line 1317
    :cond_46
    invoke-static {p6, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    .line 1319
    :cond_4a
    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private onLayoutForFlyme(ZIIII)V
    .registers 25

    move-object/from16 v0, p0

    .line 2411
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_c

    move v1, v2

    goto :goto_d

    :cond_c
    move v1, v3

    .line 2412
    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    .line 2413
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    .line 2414
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    .line 2415
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v7

    .line 2416
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    .line 2417
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v9

    sub-int v10, v4, v7

    .line 2421
    iget-object v11, v0, Lflyme/support/v7/widget/Toolbar;->mTempMargins:[I

    .line 2422
    aput v3, v11, v2

    aput v3, v11, v3

    .line 2425
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v12

    .line 2427
    iget-object v13, v0, Lflyme/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v13}, Lflyme/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_4b

    if-eqz v1, :cond_44

    .line 2429
    iget-object v13, v0, Lflyme/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v13, v10, v11, v12}, Lflyme/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v13

    move v14, v13

    move v13, v6

    goto :goto_4d

    .line 2432
    :cond_44
    iget-object v13, v0, Lflyme/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v13, v6, v11, v12}, Lflyme/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_4c

    :cond_4b
    move v13, v6

    :goto_4c
    move v14, v10

    .line 2438
    :goto_4d
    iget-object v15, v0, Lflyme/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v15}, Lflyme/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v15

    invoke-direct {v0, v15}, Lflyme/support/v7/widget/Toolbar;->setTitleMarginNavgationButton(Z)V

    .line 2440
    iget-object v15, v0, Lflyme/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v15}, Lflyme/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_6d

    if-eqz v1, :cond_67

    .line 2442
    iget-object v15, v0, Lflyme/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v15, v14, v11, v12}, Lflyme/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v14

    goto :goto_6d

    .line 2445
    :cond_67
    iget-object v15, v0, Lflyme/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v15, v13, v11, v12}, Lflyme/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v13

    .line 2450
    :cond_6d
    :goto_6d
    iget-object v15, v0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-direct {v0, v15}, Lflyme/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_84

    if-eqz v1, :cond_7e

    .line 2452
    iget-object v15, v0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-direct {v0, v15, v13, v11, v12}, Lflyme/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_84

    .line 2455
    :cond_7e
    iget-object v15, v0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-direct {v0, v15, v14, v11, v12}, Lflyme/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v14

    .line 2460
    :cond_84
    :goto_84
    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/Toolbar;->getContentInsetLeft()I

    move-result v15

    sub-int/2addr v15, v13

    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    aput v15, v11, v3

    .line 2461
    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/Toolbar;->getContentInsetRight()I

    move-result v15

    sub-int v16, v10, v14

    sub-int v15, v15, v16

    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    aput v15, v11, v2

    .line 2462
    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/Toolbar;->getContentInsetLeft()I

    move-result v15

    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 2463
    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/Toolbar;->getContentInsetRight()I

    move-result v15

    sub-int/2addr v10, v15

    invoke-static {v14, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 2465
    iget-object v14, v0, Lflyme/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v14}, Lflyme/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_c5

    if-eqz v1, :cond_bf

    .line 2467
    iget-object v14, v0, Lflyme/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v14, v10, v11, v12}, Lflyme/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v10

    goto :goto_c5

    .line 2470
    :cond_bf
    iget-object v14, v0, Lflyme/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v14, v13, v11, v12}, Lflyme/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v13

    .line 2475
    :cond_c5
    :goto_c5
    iget-object v14, v0, Lflyme/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v14}, Lflyme/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_dc

    if-eqz v1, :cond_d6

    .line 2477
    iget-object v14, v0, Lflyme/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v14, v10, v11, v12}, Lflyme/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v10

    goto :goto_dc

    .line 2480
    :cond_d6
    iget-object v14, v0, Lflyme/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v14, v13, v11, v12}, Lflyme/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v13

    .line 2485
    :cond_dc
    :goto_dc
    iget-object v14, v0, Lflyme/support/v7/widget/Toolbar;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    invoke-direct {v0, v14}, Lflyme/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v14

    .line 2486
    iget-object v15, v0, Lflyme/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v0, v15}, Lflyme/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v15

    if-eqz v14, :cond_103

    .line 2489
    iget-object v2, v0, Lflyme/support/v7/widget/Toolbar;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/Toolbar$LayoutParams;

    .line 2490
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 p3, v7

    iget-object v7, v0, Lflyme/support/v7/widget/Toolbar;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v7}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v3, v7

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v2

    const/4 v2, 0x0

    add-int/2addr v3, v2

    goto :goto_106

    :cond_103
    move/from16 p3, v7

    const/4 v3, 0x0

    :goto_106
    if-eqz v15, :cond_120

    .line 2493
    iget-object v2, v0, Lflyme/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/Toolbar$LayoutParams;

    .line 2494
    iget v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 p4, v6

    iget-object v6, v0, Lflyme/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v7, v6

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v7, v2

    add-int/2addr v3, v7

    goto :goto_122

    :cond_120
    move/from16 p4, v6

    :goto_122
    if-nez v14, :cond_12e

    if-eqz v15, :cond_127

    goto :goto_12e

    :cond_127
    move/from16 v16, v4

    move/from16 p5, v12

    :goto_12b
    const/4 v2, 0x0

    goto/16 :goto_2e0

    :cond_12e
    :goto_12e
    if-eqz v14, :cond_133

    .line 2500
    iget-object v2, v0, Lflyme/support/v7/widget/Toolbar;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    goto :goto_135

    :cond_133
    iget-object v2, v0, Lflyme/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    :goto_135
    if-eqz v15, :cond_13a

    .line 2501
    iget-object v6, v0, Lflyme/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    goto :goto_13c

    :cond_13a
    iget-object v6, v0, Lflyme/support/v7/widget/Toolbar;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    .line 2502
    :goto_13c
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/Toolbar$LayoutParams;

    .line 2503
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lflyme/support/v7/widget/Toolbar$LayoutParams;

    if-eqz v14, :cond_152

    .line 2504
    iget-object v7, v0, Lflyme/support/v7/widget/Toolbar;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v7}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v7

    if-gtz v7, :cond_15c

    :cond_152
    if-eqz v15, :cond_160

    iget-object v7, v0, Lflyme/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 2505
    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    if-lez v7, :cond_160

    :cond_15c
    move/from16 p5, v12

    const/4 v7, 0x1

    goto :goto_163

    :cond_160
    move/from16 p5, v12

    const/4 v7, 0x0

    .line 2507
    :goto_163
    iget v12, v0, Lflyme/support/v7/widget/Toolbar;->mGravity:I

    and-int/lit8 v12, v12, 0x70

    move/from16 v16, v4

    const/16 v4, 0x30

    if-eq v12, v4, :cond_1ab

    const/16 v4, 0x50

    if-eq v12, v4, :cond_19d

    sub-int v4, v5, v8

    sub-int/2addr v4, v9

    sub-int/2addr v4, v3

    .line 2514
    div-int/lit8 v4, v4, 0x2

    .line 2515
    iget v12, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v17, v13

    iget v13, v0, Lflyme/support/v7/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v18, v15

    add-int v15, v12, v13

    if-ge v4, v15, :cond_186

    add-int v4, v12, v13

    goto :goto_19b

    :cond_186
    sub-int/2addr v5, v9

    sub-int/2addr v5, v3

    sub-int/2addr v5, v4

    sub-int/2addr v5, v8

    .line 2520
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v3, v0, Lflyme/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    add-int/2addr v2, v3

    if-ge v5, v2, :cond_19b

    .line 2521
    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v5

    sub-int/2addr v4, v2

    const/4 v2, 0x0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_19b
    :goto_19b
    add-int/2addr v8, v4

    goto :goto_1ba

    :cond_19d
    move/from16 v17, v13

    move/from16 v18, v15

    sub-int/2addr v5, v9

    .line 2528
    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v2

    iget v2, v0, Lflyme/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    sub-int/2addr v5, v2

    sub-int v8, v5, v3

    goto :goto_1ba

    :cond_1ab
    move/from16 v17, v13

    move/from16 v18, v15

    .line 2509
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v2

    iget v2, v0, Lflyme/support/v7/widget/Toolbar;->mTitleMarginTop:I

    add-int v8, v3, v2

    :goto_1ba
    if-eqz v1, :cond_22f

    if-eqz v7, :cond_1c2

    .line 2534
    iget v3, v0, Lflyme/support/v7/widget/Toolbar;->mTitleMarginStart:I

    const/4 v1, 0x1

    goto :goto_1c4

    :cond_1c2
    const/4 v1, 0x1

    const/4 v3, 0x0

    :goto_1c4
    aget v2, v11, v1

    sub-int/2addr v3, v2

    const/4 v2, 0x0

    .line 2535
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr v10, v4

    neg-int v3, v3

    .line 2536
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v11, v1

    if-eqz v14, :cond_1fa

    .line 2541
    iget-object v1, v0, Lflyme/support/v7/widget/Toolbar;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/Toolbar$LayoutParams;

    .line 2542
    iget-object v2, v0, Lflyme/support/v7/widget/Toolbar;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v10, v2

    .line 2543
    iget-object v3, v0, Lflyme/support/v7/widget/Toolbar;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v8

    .line 2544
    iget-object v4, v0, Lflyme/support/v7/widget/Toolbar;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4, v2, v8, v10, v3}, Landroid/widget/HorizontalScrollView;->layout(IIII)V

    .line 2545
    iget v4, v0, Lflyme/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    sub-int/2addr v2, v4

    .line 2546
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v8, v3, v1

    goto :goto_1fb

    :cond_1fa
    move v2, v10

    :goto_1fb
    if-eqz v18, :cond_223

    .line 2549
    iget-object v1, v0, Lflyme/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/Toolbar$LayoutParams;

    .line 2550
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v3

    .line 2551
    iget-object v3, v0, Lflyme/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v10, v3

    .line 2552
    iget-object v4, v0, Lflyme/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v8

    .line 2553
    iget-object v5, v0, Lflyme/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3, v8, v10, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 2554
    iget v3, v0, Lflyme/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    sub-int v3, v10, v3

    .line 2555
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_224

    :cond_223
    move v3, v10

    :goto_224
    if-eqz v7, :cond_22b

    .line 2558
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v10, v1

    :cond_22b
    move/from16 v13, v17

    goto/16 :goto_12b

    .line 2567
    :cond_22f
    iget v1, v0, Lflyme/support/v7/widget/Toolbar;->mGravity:I

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x1

    if-eq v1, v2, :cond_259

    if-eqz v7, :cond_23c

    .line 2578
    iget v3, v0, Lflyme/support/v7/widget/Toolbar;->mTitleMarginStart:I

    const/4 v2, 0x0

    goto :goto_23e

    :cond_23c
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_23e
    aget v1, v11, v2

    sub-int/2addr v3, v1

    .line 2579
    aget v1, v11, v2

    if-lez v1, :cond_248

    .line 2580
    iget v1, v0, Lflyme/support/v7/widget/Toolbar;->mTitleMarginStart:I

    goto :goto_24c

    .line 2582
    :cond_248
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_24c
    add-int v13, v17, v1

    neg-int v1, v3

    .line 2584
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v11, v2

    move v3, v13

    move/from16 v17, v3

    goto :goto_277

    :cond_259
    const/4 v2, 0x0

    if-eqz v14, :cond_268

    .line 2571
    iget-object v1, v0, Lflyme/support/v7/widget/Toolbar;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v1

    sub-int v4, v16, v1

    div-int/lit8 v3, v4, 0x2

    move v13, v3

    goto :goto_269

    :cond_268
    move v13, v2

    :goto_269
    if-eqz v18, :cond_276

    .line 2574
    iget-object v1, v0, Lflyme/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    sub-int v4, v16, v1

    div-int/lit8 v3, v4, 0x2

    goto :goto_277

    :cond_276
    move v3, v2

    :goto_277
    if-eqz v14, :cond_29c

    .line 2590
    iget-object v1, v0, Lflyme/support/v7/widget/Toolbar;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/Toolbar$LayoutParams;

    .line 2591
    iget-object v4, v0, Lflyme/support/v7/widget/Toolbar;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v13

    .line 2592
    iget-object v5, v0, Lflyme/support/v7/widget/Toolbar;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v5}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v8

    .line 2593
    iget-object v6, v0, Lflyme/support/v7/widget/Toolbar;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v6, v13, v8, v4, v5}, Landroid/widget/HorizontalScrollView;->layout(IIII)V

    .line 2594
    iget v6, v0, Lflyme/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    add-int v13, v4, v6

    .line 2595
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v8, v5, v1

    :cond_29c
    if-eqz v18, :cond_2bf

    .line 2598
    iget-object v1, v0, Lflyme/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/Toolbar$LayoutParams;

    .line 2599
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v1

    .line 2600
    iget-object v1, v0, Lflyme/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v3

    .line 2601
    iget-object v4, v0, Lflyme/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v8

    .line 2602
    iget-object v5, v0, Lflyme/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3, v8, v1, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 2603
    iget v3, v0, Lflyme/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    add-int/2addr v3, v1

    :cond_2bf
    if-eqz v7, :cond_2c7

    .line 2606
    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v13, v1

    goto :goto_2c9

    :cond_2c7
    move/from16 v13, v17

    .line 2608
    :goto_2c9
    iget v1, v0, Lflyme/support/v7/widget/Toolbar;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v3, 0x11

    if-ne v1, v3, :cond_2e0

    .line 2609
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lflyme/support/v7/appcompat/R$dimen;->mz_toolbar_title_margin_end:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v13, v1

    .line 2617
    :cond_2e0
    :goto_2e0
    iget-object v1, v0, Lflyme/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3}, Lflyme/support/v7/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 2618
    iget-object v1, v0, Lflyme/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_2ed
    if-ge v3, v1, :cond_300

    .line 2620
    iget-object v4, v0, Lflyme/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move/from16 v5, p5

    invoke-direct {v0, v4, v13, v11, v5}, Lflyme/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v13

    add-int/lit8 v3, v3, 0x1

    goto :goto_2ed

    :cond_300
    move/from16 v5, p5

    .line 2624
    iget-object v1, v0, Lflyme/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3}, Lflyme/support/v7/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 2625
    iget-object v1, v0, Lflyme/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_30f
    if-ge v3, v1, :cond_320

    .line 2627
    iget-object v4, v0, Lflyme/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-direct {v0, v4, v10, v11, v5}, Lflyme/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_30f

    .line 2633
    :cond_320
    iget-object v1, v0, Lflyme/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lflyme/support/v7/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 2634
    iget-object v1, v0, Lflyme/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v11}, Lflyme/support/v7/widget/Toolbar;->getViewListMeasuredWidth(Ljava/util/List;[I)I

    move-result v1

    sub-int v4, v16, p4

    sub-int v4, v4, p3

    .line 2635
    div-int/lit8 v4, v4, 0x2

    add-int v6, p4, v4

    .line 2636
    div-int/lit8 v3, v1, 0x2

    sub-int v3, v6, v3

    add-int/2addr v1, v3

    if-ge v3, v13, :cond_33c

    goto :goto_343

    :cond_33c
    if-le v1, v10, :cond_342

    sub-int/2addr v1, v10

    sub-int v13, v3, v1

    goto :goto_343

    :cond_342
    move v13, v3

    .line 2645
    :goto_343
    iget-object v1, v0, Lflyme/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_349
    if-ge v2, v1, :cond_35a

    .line 2647
    iget-object v3, v0, Lflyme/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {v0, v3, v13, v11, v5}, Lflyme/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v13

    add-int/lit8 v2, v2, 0x1

    goto :goto_349

    .line 2651
    :cond_35a
    iget-object v0, v0, Lflyme/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private onMeasureForFlyme(II)V
    .registers 21

    move-object/from16 v8, p0

    .line 2266
    iget-object v9, v8, Lflyme/support/v7/widget/Toolbar;->mTempMargins:[I

    .line 2269
    invoke-static/range {p0 .. p0}, Lflyme/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    const/4 v7, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_f

    move v11, v7

    move v12, v10

    goto :goto_11

    :cond_f
    move v12, v7

    move v11, v10

    .line 2280
    :goto_11
    iget-object v0, v8, Lflyme/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v8, v0}, Lflyme/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 2281
    iget-object v1, v8, Lflyme/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v8, Lflyme/support/v7/widget/Toolbar;->mMaxButtonHeight:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lflyme/support/v7/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 2283
    iget-object v0, v8, Lflyme/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v8, Lflyme/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v8, v1}, Lflyme/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2284
    iget-object v1, v8, Lflyme/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v8, Lflyme/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 2285
    invoke-direct {v8, v2}, Lflyme/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 2284
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2286
    iget-object v2, v8, Lflyme/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 2287
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v2

    .line 2286
    invoke-static {v10, v2}, Lflyme/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v2

    move v13, v1

    move v14, v2

    goto :goto_56

    :cond_53
    move v0, v10

    move v13, v0

    move v14, v13

    .line 2291
    :goto_56
    iget-object v1, v8, Lflyme/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v8, v1}, Lflyme/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v1

    invoke-direct {v8, v1}, Lflyme/support/v7/widget/Toolbar;->setTitleMarginNavgationButton(Z)V

    .line 2293
    iget-object v1, v8, Lflyme/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v8, v1}, Lflyme/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 2294
    iget-object v1, v8, Lflyme/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v8, Lflyme/support/v7/widget/Toolbar;->mMaxButtonHeight:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lflyme/support/v7/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 2296
    iget-object v0, v8, Lflyme/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v8, Lflyme/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 2297
    invoke-direct {v8, v1}, Lflyme/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2298
    iget-object v1, v8, Lflyme/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v8, Lflyme/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 2299
    invoke-direct {v8, v2}, Lflyme/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 2298
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 2300
    iget-object v1, v8, Lflyme/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 2301
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v1

    .line 2300
    invoke-static {v14, v1}, Lflyme/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v14

    .line 2304
    :cond_9e
    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/Toolbar;->getContentInsetStart()I

    move-result v1

    .line 2305
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v15, v10, v2

    sub-int/2addr v1, v0

    .line 2306
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v9, v11

    .line 2309
    iget-object v0, v8, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-direct {v8, v0}, Lflyme/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 2310
    iget-object v1, v8, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    const/4 v5, 0x0

    iget v6, v8, Lflyme/support/v7/widget/Toolbar;->mMaxButtonHeight:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v15

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lflyme/support/v7/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 2312
    iget-object v0, v8, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v8, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-direct {v8, v1}, Lflyme/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2313
    iget-object v1, v8, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v8, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    .line 2314
    invoke-direct {v8, v2}, Lflyme/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 2313
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 2315
    iget-object v1, v8, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    .line 2316
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v1

    .line 2315
    invoke-static {v14, v1}, Lflyme/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v14

    move v11, v0

    goto :goto_f1

    :cond_f0
    move v11, v10

    .line 2319
    :goto_f1
    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/Toolbar;->getContentInsetEnd()I

    move-result v0

    .line 2320
    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v15, v1

    sub-int/2addr v0, v11

    .line 2321
    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v9, v12

    .line 2323
    iget-object v0, v8, Lflyme/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v8, v0}, Lflyme/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_134

    .line 2324
    iget-object v1, v8, Lflyme/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v15

    move/from16 v4, p2

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lflyme/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v15, v0

    .line 2326
    iget-object v0, v8, Lflyme/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v8, Lflyme/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 2327
    invoke-direct {v8, v1}, Lflyme/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2326
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 2328
    iget-object v0, v8, Lflyme/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 2329
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v0

    .line 2328
    invoke-static {v14, v0}, Lflyme/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v14

    .line 2332
    :cond_134
    iget-object v0, v8, Lflyme/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v8, v0}, Lflyme/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_167

    .line 2333
    iget-object v1, v8, Lflyme/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v15

    move/from16 v4, p2

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lflyme/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v15, v0

    .line 2335
    iget-object v0, v8, Lflyme/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v8, Lflyme/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 2336
    invoke-direct {v8, v1}, Lflyme/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2335
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 2337
    iget-object v0, v8, Lflyme/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 2338
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v0

    .line 2337
    invoke-static {v14, v0}, Lflyme/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v14

    .line 2341
    :cond_167
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    move v6, v14

    move v14, v13

    move v13, v10

    :goto_16e
    if-ge v13, v12, :cond_1ba

    .line 2343
    invoke-virtual {v8, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2344
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/Toolbar$LayoutParams;

    .line 2345
    iget v0, v0, Lflyme/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v0, :cond_1b4

    invoke-direct {v8, v5}, Lflyme/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_185

    goto :goto_1b4

    :cond_185
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, p1

    move v3, v15

    move/from16 v4, p2

    move-object/from16 v17, v5

    move/from16 v5, v16

    move v10, v6

    move-object v6, v9

    .line 2350
    invoke-direct/range {v0 .. v6}, Lflyme/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v15, v0

    .line 2352
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    move-object/from16 v1, v17

    invoke-direct {v8, v1}, Lflyme/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2354
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v1

    .line 2353
    invoke-static {v10, v1}, Lflyme/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v1

    move v14, v0

    move v6, v1

    goto :goto_1b6

    :cond_1b4
    :goto_1b4
    move v10, v6

    move v6, v10

    :goto_1b6
    add-int/lit8 v13, v13, 0x1

    const/4 v10, 0x0

    goto :goto_16e

    :cond_1ba
    move v10, v6

    .line 2359
    iget v0, v8, Lflyme/support/v7/widget/Toolbar;->mTitleMarginTop:I

    iget v1, v8, Lflyme/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    add-int v12, v0, v1

    .line 2360
    iget v0, v8, Lflyme/support/v7/widget/Toolbar;->mTitleMarginStart:I

    iget v1, v8, Lflyme/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    add-int v13, v0, v1

    .line 2362
    iget v0, v8, Lflyme/support/v7/widget/Toolbar;->mGravity:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v7, :cond_1cf

    move v11, v15

    goto :goto_1d2

    :cond_1cf
    mul-int/lit8 v0, v11, 0x2

    move v11, v0

    .line 2372
    :goto_1d2
    iget-object v0, v8, Lflyme/support/v7/widget/Toolbar;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    invoke-direct {v8, v0}, Lflyme/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_211

    .line 2373
    iget-object v1, v8, Lflyme/support/v7/widget/Toolbar;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    add-int v3, v11, v13

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move v5, v12

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lflyme/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[IZ)I

    .line 2376
    iget-object v0, v8, Lflyme/support/v7/widget/Toolbar;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v8, Lflyme/support/v7/widget/Toolbar;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    invoke-direct {v8, v1}, Lflyme/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2377
    iget-object v1, v8, Lflyme/support/v7/widget/Toolbar;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v8, Lflyme/support/v7/widget/Toolbar;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    invoke-direct {v8, v2}, Lflyme/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 2378
    iget-object v2, v8, Lflyme/support/v7/widget/Toolbar;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    .line 2379
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v2

    .line 2378
    invoke-static {v10, v2}, Lflyme/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v6

    move v7, v0

    move v10, v1

    goto :goto_214

    :cond_211
    move v6, v10

    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 2381
    :goto_214
    iget-object v0, v8, Lflyme/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v8, v0}, Lflyme/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_24b

    .line 2382
    iget-object v1, v8, Lflyme/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    add-int v3, v11, v13

    add-int v5, v10, v12

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move v11, v6

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lflyme/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2386
    iget-object v0, v8, Lflyme/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v8, Lflyme/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 2387
    invoke-direct {v8, v1}, Lflyme/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v10, v0

    .line 2388
    iget-object v0, v8, Lflyme/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 2389
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v0

    .line 2388
    invoke-static {v11, v0}, Lflyme/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v6

    goto :goto_24c

    :cond_24b
    move v11, v6

    :goto_24c
    add-int/2addr v15, v7

    .line 2393
    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2397
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v15, v1

    .line 2398
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 2401
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, -0x1000000

    and-int/2addr v2, v6

    move/from16 v3, p1

    .line 2400
    invoke-static {v1, v3, v2}, Landroidx/core/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v1

    .line 2404
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    shl-int/lit8 v2, v6, 0x10

    move/from16 v3, p2

    .line 2403
    invoke-static {v0, v3, v2}, Landroidx/core/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v10

    .line 2407
    invoke-direct/range {p0 .. p0}, Lflyme/support/v7/widget/Toolbar;->shouldCollapse()Z

    move-result v0

    if-eqz v0, :cond_28d

    const/4 v10, 0x0

    :cond_28d
    invoke-virtual {v8, v1, v10}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method private postShowOverflowMenu()V
    .registers 2

    .line 1241
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1242
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setTitleMarginNavgationButton(Z)V
    .registers 3

    if-eqz p1, :cond_13

    .line 2657
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lflyme/support/v7/appcompat/R$dimen;->mz_toolbar_title_margin_left_nav_btn:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lflyme/support/v7/widget/Toolbar;->mTitleMarginStart:I

    goto :goto_23

    .line 2659
    :cond_13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lflyme/support/v7/appcompat/R$dimen;->mz_toolbar_title_margin_left:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lflyme/support/v7/widget/Toolbar;->mTitleMarginStart:I

    :goto_23
    return-void
.end method

.method private shouldCollapse()Z
    .registers 6

    .line 1366
    iget-boolean v0, p0, Lflyme/support/v7/widget/Toolbar;->mCollapsible:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1368
    :cond_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_27

    .line 1370
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1371
    invoke-direct {p0, v3}, Lflyme/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_24

    .line 1372
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-lez v3, :cond_24

    return v1

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_27
    const/4 p0, 0x1

    return p0
.end method

.method private shouldLayout(Landroid/view/View;)Z
    .registers 3

    if-eqz p1, :cond_12

    .line 1883
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
.method addChildrenForExpandedActionView()V
    .registers 3

    .line 1951
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1954
    iget-object v1, p0, Lflyme/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1956
    :cond_18
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public canShowOverflowMenu()Z
    .registers 2

    .line 382
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_12

    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionMenuView;->isOverflowReserved()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 1922
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_c

    instance-of p0, p1, Lflyme/support/v7/widget/Toolbar$LayoutParams;

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public collapseActionView()V
    .registers 1

    .line 593
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_8

    :cond_6
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lflyme/support/v7/view/menu/MenuItemImpl;

    :goto_8
    if-eqz p0, :cond_d

    .line 596
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuItemImpl;->collapseActionView()Z

    :cond_d
    return-void
.end method

.method public dismissPopupMenus()V
    .registers 1

    .line 462
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    if-eqz p0, :cond_7

    .line 463
    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionMenuView;->dismissPopupMenus()V

    :cond_7
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 1

    .line 126
    invoke-virtual {p0}, Lflyme/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Lflyme/support/v7/widget/Toolbar$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Lflyme/support/v7/widget/Toolbar$LayoutParams;
    .registers 2

    .line 1917
    new-instance p0, Lflyme/support/v7/widget/Toolbar$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Lflyme/support/v7/widget/Toolbar$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 126
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/Toolbar;->generateLayoutParams(Landroid/util/AttributeSet;)Lflyme/support/v7/widget/Toolbar$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 126
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lflyme/support/v7/widget/Toolbar$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lflyme/support/v7/widget/Toolbar$LayoutParams;
    .registers 3

    .line 1899
    new-instance v0, Lflyme/support/v7/widget/Toolbar$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lflyme/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lflyme/support/v7/widget/Toolbar$LayoutParams;
    .registers 2

    .line 1904
    instance-of p0, p1, Lflyme/support/v7/widget/Toolbar$LayoutParams;

    if-eqz p0, :cond_c

    .line 1905
    new-instance p0, Lflyme/support/v7/widget/Toolbar$LayoutParams;

    check-cast p1, Lflyme/support/v7/widget/Toolbar$LayoutParams;

    invoke-direct {p0, p1}, Lflyme/support/v7/widget/Toolbar$LayoutParams;-><init>(Lflyme/support/v7/widget/Toolbar$LayoutParams;)V

    return-object p0

    .line 1906
    :cond_c
    instance-of p0, p1, Lflyme/support/v7/app/ActionBar$LayoutParams;

    if-eqz p0, :cond_18

    .line 1907
    new-instance p0, Lflyme/support/v7/widget/Toolbar$LayoutParams;

    check-cast p1, Lflyme/support/v7/app/ActionBar$LayoutParams;

    invoke-direct {p0, p1}, Lflyme/support/v7/widget/Toolbar$LayoutParams;-><init>(Lflyme/support/v7/app/ActionBar$LayoutParams;)V

    return-object p0

    .line 1908
    :cond_18
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_24

    .line 1909
    new-instance p0, Lflyme/support/v7/widget/Toolbar$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Lflyme/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    .line 1911
    :cond_24
    new-instance p0, Lflyme/support/v7/widget/Toolbar$LayoutParams;

    invoke-direct {p0, p1}, Lflyme/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getContentInsetEnd()I
    .registers 1

    .line 1060
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mContentInsets:Lflyme/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RtlSpacingHelper;->getEnd()I

    move-result p0

    return p0
.end method

.method public getContentInsetLeft()I
    .registers 1

    .line 1099
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mContentInsets:Lflyme/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RtlSpacingHelper;->getLeft()I

    move-result p0

    return p0
.end method

.method public getContentInsetRight()I
    .registers 1

    .line 1118
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mContentInsets:Lflyme/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RtlSpacingHelper;->getRight()I

    move-result p0

    return p0
.end method

.method public getContentInsetStart()I
    .registers 1

    .line 1041
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mContentInsets:Lflyme/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RtlSpacingHelper;->getStart()I

    move-result p0

    return p0
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 521
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public getLogoDescription()Ljava/lang/CharSequence;
    .registers 1

    .line 559
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 1

    .line 900
    invoke-direct {p0}, Lflyme/support/v7/widget/Toolbar;->ensureMenu()V

    .line 901
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object p0

    return-object p0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 783
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 874
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 921
    invoke-direct {p0}, Lflyme/support/v7/widget/Toolbar;->ensureMenu()V

    .line 922
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getPopupTheme()I
    .registers 1

    .line 355
    iget p0, p0, Lflyme/support/v7/widget/Toolbar;->mPopupTheme:I

    return p0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 1

    .line 680
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 1

    .line 606
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getWrapper()Lflyme/support/v7/widget/DecorToolbar;
    .registers 3

    .line 1931
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mWrapper:Lflyme/support/v7/widget/ToolbarWidgetWrapper;

    if-nez v0, :cond_c

    .line 1932
    new-instance v0, Lflyme/support/v7/widget/ToolbarWidgetWrapper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lflyme/support/v7/widget/ToolbarWidgetWrapper;-><init>(Lflyme/support/v7/widget/Toolbar;Z)V

    iput-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mWrapper:Lflyme/support/v7/widget/ToolbarWidgetWrapper;

    .line 1934
    :cond_c
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mWrapper:Lflyme/support/v7/widget/ToolbarWidgetWrapper;

    return-object p0
.end method

.method public hasExpandedActionView()Z
    .registers 1

    .line 579
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz p0, :cond_a

    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lflyme/support/v7/view/menu/MenuItemImpl;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public hideOverflowMenu()Z
    .registers 1

    .line 417
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionMenuView;->hideOverflowMenu()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isOverflowMenuShowPending()Z
    .registers 1

    .line 399
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionMenuView;->isOverflowMenuShowPending()Z

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

    .line 392
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionMenuView;->isOverflowMenuShowing()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 2695
    iget-boolean p1, p0, Lflyme/support/v7/widget/Toolbar;->mSplitWhenNarrow:Z

    if-eqz p1, :cond_15

    .line 2696
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lflyme/support/v7/appcompat/R$bool;->mz_split_action_bar_is_narrow:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/Toolbar;->setSplitToolbar(Z)V

    :cond_15
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 1247
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1248
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1282
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_b

    .line 1284
    iput-boolean v1, p0, Lflyme/support/v7/widget/Toolbar;->mEatingHover:Z

    .line 1287
    :cond_b
    iget-boolean v3, p0, Lflyme/support/v7/widget/Toolbar;->mEatingHover:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1a

    .line 1288
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-ne v0, v2, :cond_1a

    if-nez p1, :cond_1a

    .line 1290
    iput-boolean v4, p0, Lflyme/support/v7/widget/Toolbar;->mEatingHover:Z

    :cond_1a
    const/16 p1, 0xa

    if-eq v0, p1, :cond_21

    const/4 p1, 0x3

    if-ne v0, p1, :cond_23

    .line 1295
    :cond_21
    iput-boolean v1, p0, Lflyme/support/v7/widget/Toolbar;->mEatingHover:Z

    :cond_23
    return v4
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 1525
    invoke-direct/range {p0 .. p5}, Lflyme/support/v7/widget/Toolbar;->onLayoutForFlyme(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 1383
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/Toolbar;->onMeasureForFlyme(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    .line 1219
    instance-of v0, p1, Lflyme/support/v7/widget/Toolbar$SavedState;

    if-nez v0, :cond_8

    .line 1220
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1224
    :cond_8
    check-cast p1, Lflyme/support/v7/widget/Toolbar$SavedState;

    .line 1225
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1227
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lflyme/support/v7/widget/ActionMenuView;->peekMenu()Lflyme/support/v7/view/menu/MenuBuilder;

    move-result-object v0

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 1228
    :goto_1b
    iget v1, p1, Lflyme/support/v7/widget/Toolbar$SavedState;->expandedMenuItemId:I

    if-eqz v1, :cond_2e

    iget-object v2, p0, Lflyme/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_2e

    if-eqz v0, :cond_2e

    .line 1229
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 1231
    invoke-static {v0}, Landroidx/core/view/MenuItemCompat;->expandActionView(Landroid/view/MenuItem;)Z

    .line 1235
    :cond_2e
    iget-boolean p1, p1, Lflyme/support/v7/widget/Toolbar$SavedState;->isOverflowOpen:Z

    if-eqz p1, :cond_35

    .line 1236
    invoke-direct {p0}, Lflyme/support/v7/widget/Toolbar;->postShowOverflowMenu()V

    :cond_35
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 4

    .line 359
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_9

    .line 360
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 362
    :cond_9
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mContentInsets:Lflyme/support/v7/widget/RtlSpacingHelper;

    if-eqz p0, :cond_15

    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 363
    :goto_12
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RtlSpacingHelper;->setDirection(Z)V

    :cond_15
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 1207
    new-instance v0, Lflyme/support/v7/widget/Toolbar$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lflyme/support/v7/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1209
    iget-object v1, p0, Lflyme/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v1, :cond_17

    iget-object v1, v1, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lflyme/support/v7/view/menu/MenuItemImpl;

    if-eqz v1, :cond_17

    .line 1210
    invoke-virtual {v1}, Lflyme/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v1

    iput v1, v0, Lflyme/support/v7/widget/Toolbar$SavedState;->expandedMenuItemId:I

    .line 1213
    :cond_17
    invoke-virtual {p0}, Lflyme/support/v7/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result p0

    iput-boolean p0, v0, Lflyme/support/v7/widget/Toolbar$SavedState;->isOverflowOpen:Z

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 1258
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 1260
    iput-boolean v1, p0, Lflyme/support/v7/widget/Toolbar;->mEatingTouch:Z

    .line 1263
    :cond_9
    iget-boolean v2, p0, Lflyme/support/v7/widget/Toolbar;->mEatingTouch:Z

    const/4 v3, 0x1

    if-nez v2, :cond_18

    .line 1264
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez v0, :cond_18

    if-nez p1, :cond_18

    .line 1266
    iput-boolean v3, p0, Lflyme/support/v7/widget/Toolbar;->mEatingTouch:Z

    :cond_18
    if-eq v0, v3, :cond_1d

    const/4 p1, 0x3

    if-ne v0, p1, :cond_1f

    .line 1271
    :cond_1d
    iput-boolean v1, p0, Lflyme/support/v7/widget/Toolbar;->mEatingTouch:Z

    :cond_1f
    return v3
.end method

.method removeChildrenForExpandedActionView()V
    .registers 5

    .line 1938
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_26

    .line 1941
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1942
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/Toolbar$LayoutParams;

    .line 1943
    iget v2, v2, Lflyme/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_23

    iget-object v2, p0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    if-eq v1, v2, :cond_23

    .line 1944
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1945
    iget-object v2, p0, Lflyme/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_26
    return-void
.end method

.method public setBottomMenu(Lflyme/support/v7/view/menu/MenuBuilder;Lflyme/support/v7/widget/ActionMenuPresenter;)V
    .registers 5

    .line 1989
    invoke-direct {p0}, Lflyme/support/v7/widget/Toolbar;->ensureBottomMenuView()V

    .line 1990
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mBottomMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ActionMenuView;->peekMenu()Lflyme/support/v7/view/menu/MenuBuilder;

    move-result-object v0

    if-ne v0, p1, :cond_c

    return-void

    :cond_c
    if-eqz v0, :cond_13

    .line 1996
    iget-object v1, p0, Lflyme/support/v7/widget/Toolbar;->mOuterActionMenuPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lflyme/support/v7/view/menu/MenuBuilder;->removeMenuPresenter(Lflyme/support/v7/view/menu/MenuPresenter;)V

    :cond_13
    const/4 v0, 0x1

    .line 1999
    invoke-virtual {p2, v0}, Lflyme/support/v7/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    if-eqz p1, :cond_1e

    .line 2001
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, p2, v0}, Lflyme/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Lflyme/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 2003
    :cond_1e
    iget-object p1, p0, Lflyme/support/v7/widget/Toolbar;->mBottomMenuView:Lflyme/support/v7/widget/ActionMenuView;

    iget v0, p0, Lflyme/support/v7/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/ActionMenuView;->setPopupTheme(I)V

    .line 2004
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mBottomMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-virtual {p0, p2}, Lflyme/support/v7/widget/ActionMenuView;->setPresenter(Lflyme/support/v7/widget/ActionMenuPresenter;)V

    return-void
.end method

.method public setCollapsible(Z)V
    .registers 2

    .line 1970
    iput-boolean p1, p0, Lflyme/support/v7/widget/Toolbar;->mCollapsible:Z

    .line 1971
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setContentInsetsRelative(II)V
    .registers 3

    .line 1022
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mContentInsets:Lflyme/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RtlSpacingHelper;->setRelative(II)V

    return-void
.end method

.method public setLogo(I)V
    .registers 4
    .param p1  # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 377
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mDrawableManager:Landroidx/appcompat/widget/AppCompatDrawableManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    if-eqz p1, :cond_14

    .line 500
    invoke-direct {p0}, Lflyme/support/v7/widget/Toolbar;->ensureLogoView()V

    .line 501
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lflyme/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 502
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lflyme/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_2a

    .line 504
    :cond_14
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2a

    invoke-direct {p0, v0}, Lflyme/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 505
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 506
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lflyme/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 508
    :cond_2a
    :goto_2a
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz p0, :cond_31

    .line 509
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_31
    return-void
.end method

.method public setLogoDescription(I)V
    .registers 3
    .param p1  # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 533
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .registers 3

    .line 545
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 546
    invoke-direct {p0}, Lflyme/support/v7/widget/Toolbar;->ensureLogoView()V

    .line 548
    :cond_9
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz p0, :cond_10

    .line 549
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_10
    return-void
.end method

.method public setMenu(Lflyme/support/v7/view/menu/MenuBuilder;Lflyme/support/v7/widget/ActionMenuPresenter;)V
    .registers 6

    if-nez p1, :cond_7

    .line 424
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    if-nez v0, :cond_7

    return-void

    .line 428
    :cond_7
    invoke-direct {p0}, Lflyme/support/v7/widget/Toolbar;->ensureMenuView()V

    .line 429
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ActionMenuView;->peekMenu()Lflyme/support/v7/view/menu/MenuBuilder;

    move-result-object v0

    if-ne v0, p1, :cond_13

    return-void

    :cond_13
    if-eqz v0, :cond_1f

    .line 435
    iget-object v1, p0, Lflyme/support/v7/widget/Toolbar;->mOuterActionMenuPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lflyme/support/v7/view/menu/MenuBuilder;->removeMenuPresenter(Lflyme/support/v7/view/menu/MenuPresenter;)V

    .line 436
    iget-object v1, p0, Lflyme/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v1}, Lflyme/support/v7/view/menu/MenuBuilder;->removeMenuPresenter(Lflyme/support/v7/view/menu/MenuPresenter;)V

    .line 439
    :cond_1f
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    const/4 v1, 0x0

    if-nez v0, :cond_2b

    .line 440
    new-instance v0, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-direct {v0, p0, v1}, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Lflyme/support/v7/widget/Toolbar;Lflyme/support/v7/widget/Toolbar$1;)V

    iput-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    :cond_2b
    const/4 v0, 0x1

    .line 443
    invoke-virtual {p2, v0}, Lflyme/support/v7/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    if-eqz p1, :cond_3e

    .line 445
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, p2, v0}, Lflyme/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Lflyme/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 446
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v1, p0, Lflyme/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lflyme/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Lflyme/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    goto :goto_52

    .line 448
    :cond_3e
    iget-object p1, p0, Lflyme/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p2, p1, v1}, Lflyme/support/v7/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lflyme/support/v7/view/menu/MenuBuilder;)V

    .line 449
    iget-object p1, p0, Lflyme/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Lflyme/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v2, v1}, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lflyme/support/v7/view/menu/MenuBuilder;)V

    .line 450
    invoke-virtual {p2, v0}, Lflyme/support/v7/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 451
    iget-object p1, p0, Lflyme/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    .line 453
    :goto_52
    iget-object p1, p0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    iget v0, p0, Lflyme/support/v7/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/ActionMenuView;->setPopupTheme(I)V

    .line 454
    iget-object p1, p0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-virtual {p1, p2}, Lflyme/support/v7/widget/ActionMenuView;->setPresenter(Lflyme/support/v7/widget/ActionMenuPresenter;)V

    .line 455
    iput-object p2, p0, Lflyme/support/v7/widget/Toolbar;->mOuterActionMenuPresenter:Lflyme/support/v7/widget/ActionMenuPresenter;

    return-void
.end method

.method public setMenuViewAnimateToVisibility(IJ)V
    .registers 6

    .line 2715
    iget-boolean v0, p0, Lflyme/support/v7/widget/Toolbar;->mSplitActionBar:Z

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    if-nez v0, :cond_9

    goto :goto_3e

    :cond_9
    const/4 v1, 0x0

    if-nez p1, :cond_29

    .line 2717
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 2718
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 2719
    invoke-virtual {v0, p2, p3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 2720
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mVisAnimListener:Lflyme/support/v7/widget/Toolbar$VisibilityAnimListener;

    invoke-virtual {p0, v0, p1}, Lflyme/support/v7/widget/Toolbar$VisibilityAnimListener;->withFinalVisibility(Landroidx/core/view/ViewPropertyAnimatorCompat;I)Lflyme/support/v7/widget/Toolbar$VisibilityAnimListener;

    invoke-virtual {v0, p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 2721
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_3e

    .line 2723
    :cond_29
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 2724
    invoke-virtual {v0, p2, p3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 2725
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mVisAnimListener:Lflyme/support/v7/widget/Toolbar$VisibilityAnimListener;

    invoke-virtual {p0, v0, p1}, Lflyme/support/v7/widget/Toolbar$VisibilityAnimListener;->withFinalVisibility(Landroidx/core/view/ViewPropertyAnimatorCompat;I)Lflyme/support/v7/widget/Toolbar$VisibilityAnimListener;

    invoke-virtual {v0, p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 2726
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public setMenuVisibility(I)V
    .registers 3

    .line 2704
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_b

    iget-boolean p0, p0, Lflyme/support/v7/widget/Toolbar;->mSplitActionBar:Z

    if-eqz p0, :cond_b

    .line 2705
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .registers 3
    .param p1  # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    if-eqz p1, :cond_b

    .line 795
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1  # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 807
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 808
    invoke-direct {p0}, Lflyme/support/v7/widget/Toolbar;->ensureNavButtonView()V

    .line 810
    :cond_9
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz p0, :cond_10

    .line 811
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_10
    return-void
.end method

.method public setNavigationIcon(I)V
    .registers 4
    .param p1  # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 828
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mDrawableManager:Landroidx/appcompat/widget/AppCompatDrawableManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_25

    .line 845
    invoke-direct {p0}, Lflyme/support/v7/widget/Toolbar;->ensureNavButtonView()V

    .line 846
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lflyme/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 847
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lflyme/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 849
    :cond_13
    iget v0, p0, Lflyme/support/v7/widget/Toolbar;->mTitleTextAppearanceBack:I

    if-eqz v0, :cond_50

    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_50

    .line 850
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lflyme/support/v7/widget/Toolbar;->mTitleTextAppearanceBack:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_50

    .line 852
    :cond_25
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_50

    invoke-direct {p0, v0}, Lflyme/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 853
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 854
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lflyme/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 856
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 858
    iget v0, p0, Lflyme/support/v7/widget/Toolbar;->mTitleTextAppearance:I

    if-eqz v0, :cond_50

    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_50

    .line 859
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lflyme/support/v7/widget/Toolbar;->mTitleTextAppearance:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 862
    :cond_50
    :goto_50
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz p0, :cond_57

    .line 863
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_57
    return-void
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 887
    invoke-direct {p0}, Lflyme/support/v7/widget/Toolbar;->ensureNavButtonView()V

    .line 888
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnMenuItemClickListener(Lflyme/support/v7/widget/Toolbar$OnMenuItemClickListener;)V
    .registers 2

    .line 1002
    iput-object p1, p0, Lflyme/support/v7/widget/Toolbar;->mOnMenuItemClickListener:Lflyme/support/v7/widget/Toolbar$OnMenuItemClickListener;

    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 910
    invoke-direct {p0}, Lflyme/support/v7/widget/Toolbar;->ensureMenu()V

    .line 911
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPopupTheme(I)V
    .registers 4
    .param p1  # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 339
    iget v0, p0, Lflyme/support/v7/widget/Toolbar;->mPopupTheme:I

    if-eq v0, p1, :cond_1a

    .line 340
    iput p1, p0, Lflyme/support/v7/widget/Toolbar;->mPopupTheme:I

    if-nez p1, :cond_f

    .line 342
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lflyme/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    goto :goto_1a

    .line 344
    :cond_f
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    :cond_1a
    :goto_1a
    return-void
.end method

.method public setShowBottomMenu(Z)V
    .registers 3

    .line 2008
    iget-boolean v0, p0, Lflyme/support/v7/widget/Toolbar;->mShowBottomMenu:Z

    if-eq v0, p1, :cond_32

    .line 2009
    iput-boolean p1, p0, Lflyme/support/v7/widget/Toolbar;->mShowBottomMenu:Z

    .line 2010
    iget-object p1, p0, Lflyme/support/v7/widget/Toolbar;->mBottomMenuView:Lflyme/support/v7/widget/ActionMenuView;

    if-eqz p1, :cond_32

    .line 2011
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_17

    .line 2013
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mBottomMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2015
    :cond_17
    iget-boolean p1, p0, Lflyme/support/v7/widget/Toolbar;->mShowBottomMenu:Z

    if-eqz p1, :cond_2d

    .line 2016
    iget-object p1, p0, Lflyme/support/v7/widget/Toolbar;->mSplitView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_24

    .line 2017
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mBottomMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2019
    :cond_24
    iget-object p1, p0, Lflyme/support/v7/widget/Toolbar;->mBottomMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2021
    :cond_2d
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mBottomMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_32
    return-void
.end method

.method public setSplitToolbar(Z)V
    .registers 4

    .line 2669
    iget-boolean v0, p0, Lflyme/support/v7/widget/Toolbar;->mSplitActionBar:Z

    if-eq v0, p1, :cond_40

    .line 2670
    iput-boolean p1, p0, Lflyme/support/v7/widget/Toolbar;->mSplitActionBar:Z

    .line 2671
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_40

    .line 2672
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_17

    .line 2674
    iget-object v1, p0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_17
    if-eqz p1, :cond_2c

    .line 2677
    iget-object p1, p0, Lflyme/support/v7/widget/Toolbar;->mSplitView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_22

    .line 2678
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2680
    :cond_22
    iget-object p1, p0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_3b

    .line 2682
    :cond_2c
    iget-object p1, p0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lflyme/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 2683
    iget-object p1, p0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2685
    :goto_3b
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_40
    return-void
.end method

.method public setSplitView(Landroid/view/ViewGroup;)V
    .registers 2

    .line 2691
    iput-object p1, p0, Lflyme/support/v7/widget/Toolbar;->mSplitView:Landroid/view/ViewGroup;

    return-void
.end method

.method public setSubtitle(I)V
    .registers 3
    .param p1  # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 691
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 5

    .line 702
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 703
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_33

    .line 704
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 705
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lflyme/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 706
    iget-object v1, p0, Lflyme/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 707
    iget-object v1, p0, Lflyme/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 708
    iget v1, p0, Lflyme/support/v7/widget/Toolbar;->mSubtitleTextAppearance:I

    if-eqz v1, :cond_2a

    .line 709
    iget-object v2, p0, Lflyme/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 711
    :cond_2a
    iget v0, p0, Lflyme/support/v7/widget/Toolbar;->mSubtitleTextColor:I

    if-eqz v0, :cond_33

    .line 712
    iget-object v1, p0, Lflyme/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 715
    :cond_33
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lflyme/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 716
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lflyme/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_58

    .line 718
    :cond_42
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_58

    invoke-direct {p0, v0}, Lflyme/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 719
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 720
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lflyme/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 722
    :cond_58
    :goto_58
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_5f

    .line 723
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    :cond_5f
    iput-object p1, p0, Lflyme/support/v7/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setSubtitleTextAppearance(Landroid/content/Context;I)V
    .registers 3
    .param p2  # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 744
    iput p2, p0, Lflyme/support/v7/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 745
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_9

    .line 746
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_9
    return-void
.end method

.method public setSubtitleTextColor(I)V
    .registers 2
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 768
    iput p1, p0, Lflyme/support/v7/widget/Toolbar;->mSubtitleTextColor:I

    .line 769
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_9

    .line 770
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    return-void
.end method

.method public setTitle(I)V
    .registers 3
    .param p1  # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 618
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 6

    .line 630
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_98

    .line 631
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v1, 0x1

    if-nez v0, :cond_3a

    .line 632
    new-instance v0, Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    .line 633
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 634
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 635
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 636
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lflyme/support/v7/appcompat/R$dimen;->mz_toolbar_title_min_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setMinimumWidth(I)V

    .line 639
    :cond_3a
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_4e

    .line 640
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 641
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lflyme/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 642
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 648
    :cond_4e
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lflyme/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_66

    iget v0, p0, Lflyme/support/v7/widget/Toolbar;->mTitleTextAppearanceBack:I

    if-eqz v0, :cond_66

    .line 649
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lflyme/support/v7/widget/Toolbar;->mTitleTextAppearanceBack:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_75

    .line 650
    :cond_66
    iget v0, p0, Lflyme/support/v7/widget/Toolbar;->mTitleTextAppearance:I

    if-eqz v0, :cond_75

    .line 651
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lflyme/support/v7/widget/Toolbar;->mTitleTextAppearance:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 654
    :cond_75
    :goto_75
    iget v0, p0, Lflyme/support/v7/widget/Toolbar;->mTitleTextColor:I

    if-eqz v0, :cond_7e

    .line 655
    iget-object v2, p0, Lflyme/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 658
    :cond_7e
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->removeAllViews()V

    .line 659
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lflyme/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 661
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    invoke-direct {p0, v0}, Lflyme/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_ae

    .line 662
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    invoke-direct {p0, v0, v1}, Lflyme/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_ae

    .line 664
    :cond_98
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_ae

    invoke-direct {p0, v0}, Lflyme/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 665
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 666
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lflyme/support/v7/widget/Toolbar;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 668
    :cond_ae
    :goto_ae
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_b5

    .line 669
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 671
    :cond_b5
    iput-object p1, p0, Lflyme/support/v7/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTitleTextAppearance(Landroid/content/Context;I)V
    .registers 3
    .param p2  # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 733
    iput p2, p0, Lflyme/support/v7/widget/Toolbar;->mTitleTextAppearance:I

    .line 734
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_9

    .line 735
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_9
    return-void
.end method

.method public setTitleTextColor(I)V
    .registers 2
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 756
    iput p1, p0, Lflyme/support/v7/widget/Toolbar;->mTitleTextColor:I

    .line 757
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_9

    .line 758
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    return-void
.end method

.method public showOverflowMenu()Z
    .registers 1

    .line 408
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mMenuView:Lflyme/support/v7/widget/ActionMenuView;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionMenuView;->showOverflowMenu()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method
