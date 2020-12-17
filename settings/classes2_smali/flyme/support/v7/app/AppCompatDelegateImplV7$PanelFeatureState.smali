.class final Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/app/AppCompatDelegateImplV7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PanelFeatureState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;
    }
.end annotation


# instance fields
.field background:I

.field private bottomMenu:Lflyme/support/v7/view/menu/MenuBuilder;

.field createdPanelView:Landroid/view/View;

.field decorView:Landroid/view/ViewGroup;

.field featureId:I

.field frozenActionViewState:Landroid/os/Bundle;

.field gravity:I

.field isHandled:Z

.field isOpen:Z

.field isPrepared:Z

.field listMenuPresenter:Lflyme/support/v7/view/menu/ListMenuPresenter;

.field listPresenterContext:Landroid/content/Context;

.field menu:Lflyme/support/v7/view/menu/MenuBuilder;

.field public qwertyMode:Z

.field refreshDecorView:Z

.field refreshMenuContent:Z

.field shownPanelView:Landroid/view/View;

.field windowAnimations:I

.field x:I

.field y:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 1978
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1979
    iput p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    const/4 p1, 0x0

    .line 1981
    iput-boolean p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->refreshDecorView:Z

    return-void
.end method

.method static synthetic access$1600(Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;)Lflyme/support/v7/view/menu/MenuBuilder;
    .registers 1

    .line 1912
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->bottomMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    return-object p0
.end method


# virtual methods
.method getListMenuView(Lflyme/support/v7/view/menu/MenuPresenter$Callback;)Lflyme/support/v7/view/menu/MenuView;
    .registers 5

    .line 2054
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lflyme/support/v7/view/menu/MenuBuilder;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 2056
    :cond_6
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->listMenuPresenter:Lflyme/support/v7/view/menu/ListMenuPresenter;

    if-nez v0, :cond_21

    .line 2057
    new-instance v0, Lflyme/support/v7/view/menu/ListMenuPresenter;

    iget-object v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->listPresenterContext:Landroid/content/Context;

    sget v2, Lflyme/support/v7/appcompat/R$layout;->mz_list_menu_item_layout:I

    invoke-direct {v0, v1, v2}, Lflyme/support/v7/view/menu/ListMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->listMenuPresenter:Lflyme/support/v7/view/menu/ListMenuPresenter;

    .line 2059
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->listMenuPresenter:Lflyme/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {v0, p1}, Lflyme/support/v7/view/menu/ListMenuPresenter;->setCallback(Lflyme/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 2060
    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lflyme/support/v7/view/menu/MenuBuilder;

    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->listMenuPresenter:Lflyme/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {p1, v0}, Lflyme/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Lflyme/support/v7/view/menu/MenuPresenter;)V

    .line 2063
    :cond_21
    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->listMenuPresenter:Lflyme/support/v7/view/menu/ListMenuPresenter;

    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Lflyme/support/v7/view/menu/ListMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lflyme/support/v7/view/menu/MenuView;

    move-result-object p0

    return-object p0
.end method

.method public hasPanelItems()Z
    .registers 4

    .line 1985
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->shownPanelView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1986
    :cond_6
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->createdPanelView:Landroid/view/View;

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    return v2

    .line 1988
    :cond_c
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->listMenuPresenter:Lflyme/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {p0}, Lflyme/support/v7/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result p0

    if-lez p0, :cond_19

    move v1, v2

    :cond_19
    return v1
.end method

.method setBottomMenu(Lflyme/support/v7/view/menu/MenuBuilder;)V
    .registers 3

    .line 2046
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->bottomMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_5

    return-void

    .line 2050
    :cond_5
    iput-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->bottomMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    return-void
.end method

.method setMenu(Lflyme/support/v7/view/menu/MenuBuilder;)V
    .registers 4

    .line 2034
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lflyme/support/v7/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    if-eqz v0, :cond_c

    .line 2037
    iget-object v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->listMenuPresenter:Lflyme/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {v0, v1}, Lflyme/support/v7/view/menu/MenuBuilder;->removeMenuPresenter(Lflyme/support/v7/view/menu/MenuPresenter;)V

    .line 2039
    :cond_c
    iput-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lflyme/support/v7/view/menu/MenuBuilder;

    if-eqz p1, :cond_17

    .line 2041
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->listMenuPresenter:Lflyme/support/v7/view/menu/ListMenuPresenter;

    if-eqz p0, :cond_17

    invoke-virtual {p1, p0}, Lflyme/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Lflyme/support/v7/view/menu/MenuPresenter;)V

    :cond_17
    return-void
.end method

.method setStyle(Landroid/content/Context;)V
    .registers 6

    .line 2002
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2003
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 2004
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 2007
    sget v2, Lflyme/support/v7/appcompat/R$attr;->actionBarPopupTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2008
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_21

    .line 2009
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 2013
    :cond_21
    sget v2, Lflyme/support/v7/appcompat/R$attr;->panelMenuListTheme:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2014
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_2e

    .line 2015
    invoke-virtual {v1, v0, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_33

    .line 2017
    :cond_2e
    sget v0, Lflyme/support/v7/appcompat/R$style;->Theme_AppCompat_CompactMenu:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 2020
    :goto_33
    new-instance v0, Landroidx/appcompat/view/ContextThemeWrapper;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 2021
    invoke-virtual {v0}, Landroidx/appcompat/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 2023
    iput-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->listPresenterContext:Landroid/content/Context;

    .line 2025
    sget-object p1, Lflyme/support/v7/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2026
    sget v0, Lflyme/support/v7/appcompat/R$styleable;->AppCompatTheme_panelBackground:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->background:I

    .line 2028
    sget v0, Lflyme/support/v7/appcompat/R$styleable;->AppCompatTheme_android_windowAnimationStyle:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->windowAnimations:I

    .line 2030
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
