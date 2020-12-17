.class Lflyme/support/v7/view/menu/SubMenuWrapperICS;
.super Lflyme/support/v7/view/menu/MenuWrapperICS;
.source "SubMenuWrapperICS.java"

# interfaces
.implements Landroid/view/SubMenu;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/core/internal/view/SupportSubMenu;)V
    .registers 3

    .line 33
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/view/menu/MenuWrapperICS;-><init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenu;)V

    return-void
.end method


# virtual methods
.method public clearHeader()V
    .registers 1

    .line 73
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroidx/core/internal/view/SupportSubMenu;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/SubMenu;->clearHeader()V

    return-void
.end method

.method public getItem()Landroid/view/MenuItem;
    .registers 2

    .line 90
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroidx/core/internal/view/SupportSubMenu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lflyme/support/v7/view/menu/BaseMenuWrapper;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public getWrappedObject()Landroidx/core/internal/view/SupportSubMenu;
    .registers 1

    .line 38
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Landroidx/core/internal/view/SupportSubMenu;

    return-object p0
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .registers 3

    .line 55
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroidx/core/internal/view/SupportSubMenu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderIcon(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .registers 3

    .line 61
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroidx/core/internal/view/SupportSubMenu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .registers 3

    .line 43
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroidx/core/internal/view/SupportSubMenu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderTitle(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 3

    .line 49
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroidx/core/internal/view/SupportSubMenu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .registers 3

    .line 67
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroidx/core/internal/view/SupportSubMenu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .registers 3

    .line 78
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroidx/core/internal/view/SupportSubMenu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .registers 3

    .line 84
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroidx/core/internal/view/SupportSubMenu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    return-object p0
.end method
