.class Lflyme/support/v7/view/menu/MenuWrapperICS;
.super Lflyme/support/v7/view/menu/BaseMenuWrapper;
.source "MenuWrapperICS.java"

# interfaces
.implements Landroid/view/Menu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lflyme/support/v7/view/menu/BaseMenuWrapper<",
        "Landroidx/core/internal/view/SupportMenu;",
        ">;",
        "Landroid/view/Menu;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenu;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/view/menu/BaseMenuWrapper;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .registers 3

    .line 45
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/BaseMenuWrapper;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .registers 6

    .line 55
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/BaseMenuWrapper;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 6

    .line 50
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/BaseMenuWrapper;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    .line 40
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/BaseMenuWrapper;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .registers 21

    move-object v0, p0

    move-object/from16 v1, p8

    if-eqz v1, :cond_9

    .line 84
    array-length v2, v1

    new-array v2, v2, [Landroid/view/MenuItem;

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    .line 87
    :goto_a
    iget-object v3, v0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v3, Landroidx/core/internal/view/SupportMenu;

    move v4, p1

    move v5, p2

    move v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object v11, v2

    .line 88
    invoke-interface/range {v3 .. v11}, Landroid/view/Menu;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    move-result v3

    if-eqz v2, :cond_2f

    const/4 v4, 0x0

    .line 91
    array-length v5, v2

    :goto_22
    if-ge v4, v5, :cond_2f

    .line 92
    aget-object v6, v2, v4

    invoke-virtual {p0, v6}, Lflyme/support/v7/view/menu/BaseMenuWrapper;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v6

    aput-object v6, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_2f
    return v3
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .registers 3

    .line 65
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/BaseMenuWrapper;->getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p0

    return-object p0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .registers 6

    .line 75
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroidx/core/internal/view/SupportMenu;

    .line 76
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/BaseMenuWrapper;->getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p0

    return-object p0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 6

    .line 70
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/BaseMenuWrapper;->getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p0

    return-object p0
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 3

    .line 60
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/BaseMenuWrapper;->getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p0

    return-object p0
.end method

.method public clear()V
    .registers 1

    .line 113
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/BaseMenuWrapper;->internalClear()V

    .line 114
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Landroidx/core/internal/view/SupportMenu;

    invoke-interface {p0}, Landroid/view/Menu;->clear()V

    return-void
.end method

.method public close()V
    .registers 1

    .line 154
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Landroidx/core/internal/view/SupportMenu;

    invoke-interface {p0}, Landroid/view/Menu;->close()V

    return-void
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .registers 3

    .line 139
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/BaseMenuWrapper;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .registers 3

    .line 149
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/BaseMenuWrapper;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public hasVisibleItems()Z
    .registers 1

    .line 134
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Landroidx/core/internal/view/SupportMenu;

    invoke-interface {p0}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result p0

    return p0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .registers 3

    .line 164
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Landroidx/core/internal/view/SupportMenu;

    invoke-interface {p0, p1, p2}, Landroid/view/Menu;->isShortcutKey(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public performIdentifierAction(II)Z
    .registers 3

    .line 169
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Landroidx/core/internal/view/SupportMenu;

    invoke-interface {p0, p1, p2}, Landroid/view/Menu;->performIdentifierAction(II)Z

    move-result p0

    return p0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .registers 4

    .line 159
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Landroidx/core/internal/view/SupportMenu;

    invoke-interface {p0, p1, p2, p3}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p0

    return p0
.end method

.method public removeGroup(I)V
    .registers 2

    .line 107
    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/BaseMenuWrapper;->internalRemoveGroup(I)V

    .line 108
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Landroidx/core/internal/view/SupportMenu;

    invoke-interface {p0, p1}, Landroid/view/Menu;->removeGroup(I)V

    return-void
.end method

.method public removeItem(I)V
    .registers 2

    .line 101
    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/BaseMenuWrapper;->internalRemoveItem(I)V

    .line 102
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Landroidx/core/internal/view/SupportMenu;

    invoke-interface {p0, p1}, Landroid/view/Menu;->removeItem(I)V

    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .registers 4

    .line 119
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Landroidx/core/internal/view/SupportMenu;

    invoke-interface {p0, p1, p2, p3}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    return-void
.end method

.method public setGroupEnabled(IZ)V
    .registers 3

    .line 129
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Landroidx/core/internal/view/SupportMenu;

    invoke-interface {p0, p1, p2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    return-void
.end method

.method public setGroupVisible(IZ)V
    .registers 3

    .line 124
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Landroidx/core/internal/view/SupportMenu;

    invoke-interface {p0, p1, p2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    return-void
.end method

.method public setQwertyMode(Z)V
    .registers 2

    .line 174
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Landroidx/core/internal/view/SupportMenu;

    invoke-interface {p0, p1}, Landroid/view/Menu;->setQwertyMode(Z)V

    return-void
.end method

.method public size()I
    .registers 1

    .line 144
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Landroidx/core/internal/view/SupportMenu;

    invoke-interface {p0}, Landroid/view/Menu;->size()I

    move-result p0

    return p0
.end method
