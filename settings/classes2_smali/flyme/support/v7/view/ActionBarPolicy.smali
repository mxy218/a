.class public Lflyme/support/v7/view/ActionBarPolicy;
.super Ljava/lang/Object;
.source "ActionBarPolicy.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lflyme/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static get(Landroid/content/Context;)Lflyme/support/v7/view/ActionBarPolicy;
    .registers 2

    .line 42
    new-instance v0, Lflyme/support/v7/view/ActionBarPolicy;

    invoke-direct {v0, p0}, Lflyme/support/v7/view/ActionBarPolicy;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public enableHomeButtonByDefault()Z
    .registers 2

    .line 105
    iget-object p0, p0, Lflyme/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0xe

    if-ge p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public getActionBarButtonMaxHeight()I
    .registers 6

    .line 116
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->hasFullDisplay()Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lflyme/support/v7/appcompat/R$attr;->mzToolbarStyleFullScreen:I

    goto :goto_b

    :cond_9
    sget v0, Lflyme/support/v7/appcompat/R$attr;->toolbarStyle:I

    .line 117
    :goto_b
    iget-object v1, p0, Lflyme/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Lflyme/support/v7/appcompat/R$styleable;->Toolbar:[I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 119
    sget v1, Lflyme/support/v7/appcompat/R$styleable;->Toolbar_maxButtonHeight:I

    iget-object p0, p0, Lflyme/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lflyme/support/v7/appcompat/R$dimen;->mz_action_button_min_height_appcompat:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p0

    .line 120
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return p0
.end method

.method public getEmbeddedMenuWidthLimit()I
    .registers 1

    .line 65
    iget-object p0, p0, Lflyme/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public getMaxActionButtons()I
    .registers 2

    .line 50
    iget-object p0, p0, Lflyme/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lflyme/support/v7/appcompat/R$integer;->abc_max_action_buttons:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public getSplitActionBarPadding()I
    .registers 2

    .line 127
    iget-object p0, p0, Lflyme/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lflyme/support/v7/appcompat/R$dimen;->mz_action_mode_split_padding:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getStackedTabMaxWidth()I
    .registers 2

    .line 110
    iget-object p0, p0, Lflyme/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lflyme/support/v7/appcompat/R$dimen;->abc_action_bar_stacked_tab_max_width:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getTabContainerHeight()I
    .registers 2

    .line 96
    iget-object p0, p0, Lflyme/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 97
    sget v0, Lflyme/support/v7/appcompat/R$dimen;->mz_action_bar_stacked_max_height:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public hasEmbeddedTabs()Z
    .registers 3

    .line 69
    iget-object v0, p0, Lflyme/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_19

    .line 71
    iget-object p0, p0, Lflyme/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lflyme/support/v7/appcompat/R$bool;->abc_action_bar_embed_tabs:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0

    .line 76
    :cond_19
    iget-object p0, p0, Lflyme/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lflyme/support/v7/appcompat/R$bool;->abc_action_bar_embed_tabs_pre_jb:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public showsOverflowMenuButton()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
