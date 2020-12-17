.class public abstract Lflyme/support/v7/app/ActionBar;
.super Ljava/lang/Object;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/app/ActionBar$OnScrollTabsVisibilityChangeListener;,
        Lflyme/support/v7/app/ActionBar$DropDownCallback;,
        Lflyme/support/v7/app/ActionBar$ControlButton;,
        Lflyme/support/v7/app/ActionBar$ControlTitleBarCallback;,
        Lflyme/support/v7/app/ActionBar$TabListenerSDK;,
        Lflyme/support/v7/app/ActionBar$LayoutParams;,
        Lflyme/support/v7/app/ActionBar$TabListener;,
        Lflyme/support/v7/app/ActionBar$Tab;,
        Lflyme/support/v7/app/ActionBar$OnMenuVisibilityListener;,
        Lflyme/support/v7/app/ActionBar$DisplayOptions;,
        Lflyme/support/v7/app/ActionBar$NavigationMode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract collapseActionView()Z
.end method

.method public abstract dispatchMenuVisibilityChanged(Z)V
.end method

.method public abstract getDisplayOptions()I
.end method

.method public abstract getSubDecorView()Landroid/view/ViewGroup;
.end method

.method public abstract getTabAt(I)Lflyme/support/v7/app/ActionBar$Tab;
.end method

.method public abstract getThemedContext()Landroid/content/Context;
.end method

.method public abstract hide()V
.end method

.method public abstract hide(I)V
.end method

.method public invalidateOptionsMenu()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method onDestroy()V
    .registers 1

    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public abstract selectTab(Lflyme/support/v7/app/ActionBar$Tab;)V
.end method

.method public abstract setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setCustomView(Landroid/view/View;)V
.end method

.method public abstract setCustomView(Landroid/view/View;Lflyme/support/v7/app/ActionBar$LayoutParams;)V
.end method

.method public abstract setDefaultDisplayHomeAsUpEnabled(Z)V
.end method

.method public abstract setDisplayHomeAsUpEnabled(Z)V
.end method

.method public abstract setDisplayShowControlTitleBar(ZLflyme/support/v7/app/ActionBar$ControlTitleBarCallback;)V
.end method

.method public abstract setDisplayShowCustomEnabled(Z)V
.end method

.method public abstract setDisplayShowTitleEnabled(Z)V
.end method

.method public abstract setHomeAsUpIndicator(I)V
    .param p1  # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
.end method

.method public abstract setHomeButtonEnabled(Z)V
.end method

.method public abstract setShowHideAnimationEnabled(Z)V
.end method

.method public abstract setStackedTabsCanBeEmbedded(Z)V
.end method

.method public abstract setTabScrolled(IFI)V
.end method

.method public abstract setTitle(I)V
    .param p1  # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract setUiOptions(I)V
.end method

.method public abstract setWindowTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract show(I)V
.end method

.method public abstract startActionMode(Lflyme/support/v7/view/ActionMode$Callback;)Lflyme/support/v7/view/ActionMode;
.end method

.method public abstract startMultiChoiceActionMode(Lflyme/support/v7/view/ActionMode$Callback;)Lflyme/support/v7/view/ActionMode;
.end method
