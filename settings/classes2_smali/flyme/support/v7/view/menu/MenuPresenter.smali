.class public interface abstract Lflyme/support/v7/view/menu/MenuPresenter;
.super Ljava/lang/Object;
.source "MenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/view/menu/MenuPresenter$Callback;
    }
.end annotation


# virtual methods
.method public abstract collapseItemActionView(Lflyme/support/v7/view/menu/MenuBuilder;Lflyme/support/v7/view/menu/MenuItemImpl;)Z
.end method

.method public abstract expandItemActionView(Lflyme/support/v7/view/menu/MenuBuilder;Lflyme/support/v7/view/menu/MenuItemImpl;)Z
.end method

.method public abstract flagActionItems()Z
.end method

.method public abstract initForMenu(Landroid/content/Context;Lflyme/support/v7/view/menu/MenuBuilder;)V
.end method

.method public abstract onCloseMenu(Lflyme/support/v7/view/menu/MenuBuilder;Z)V
.end method

.method public abstract onSubMenuSelected(Lflyme/support/v7/view/menu/SubMenuBuilder;)Z
.end method

.method public abstract updateMenuView(Z)V
.end method
