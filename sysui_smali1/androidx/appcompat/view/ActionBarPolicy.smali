.class public Landroidx/appcompat/view/ActionBarPolicy;
.super Ljava/lang/Object;
.source "ActionBarPolicy.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroidx/appcompat/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static get(Landroid/content/Context;)Landroidx/appcompat/view/ActionBarPolicy;
    .registers 2

    .line 43
    new-instance v0, Landroidx/appcompat/view/ActionBarPolicy;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/ActionBarPolicy;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public enableHomeButtonByDefault()Z
    .registers 2

    .line 110
    iget-object p0, p0, Landroidx/appcompat/view/ActionBarPolicy;->mContext:Landroid/content/Context;

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

.method public getEmbeddedMenuWidthLimit()I
    .registers 1

    .line 86
    iget-object p0, p0, Landroidx/appcompat/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public getMaxActionButtons()I
    .registers 4

    .line 56
    iget-object p0, p0, Landroidx/appcompat/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 57
    iget v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 58
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 59
    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    if-gt p0, v2, :cond_3e

    if-gt v0, v2, :cond_3e

    const/16 p0, 0x2d0

    const/16 v2, 0x3c0

    if-le v0, v2, :cond_1e

    if-gt v1, p0, :cond_3e

    :cond_1e
    if-le v0, p0, :cond_23

    if-le v1, v2, :cond_23

    goto :goto_3e

    :cond_23
    const/16 p0, 0x1f4

    if-ge v0, p0, :cond_3c

    const/16 p0, 0x1e0

    const/16 v2, 0x280

    if-le v0, v2, :cond_2f

    if-gt v1, p0, :cond_3c

    :cond_2f
    if-le v0, p0, :cond_34

    if-le v1, v2, :cond_34

    goto :goto_3c

    :cond_34
    const/16 p0, 0x168

    if-lt v0, p0, :cond_3a

    const/4 p0, 0x3

    return p0

    :cond_3a
    const/4 p0, 0x2

    return p0

    :cond_3c
    :goto_3c
    const/4 p0, 0x4

    return p0

    :cond_3e
    :goto_3e
    const/4 p0, 0x5

    return p0
.end method

.method public hasEmbeddedTabs()Z
    .registers 2

    .line 90
    iget-object p0, p0, Landroidx/appcompat/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Landroidx/appcompat/R$bool;->abc_action_bar_embed_tabs:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public showsOverflowMenuButton()Z
    .registers 4

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x13

    if-lt v0, v2, :cond_8

    return v1

    .line 81
    :cond_8
    iget-object p0, p0, Landroidx/appcompat/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method
