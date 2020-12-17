.class public Lflyme/support/v7/view/menu/MenuItemWrapperICS;
.super Lflyme/support/v7/view/menu/BaseMenuWrapper;
.source "MenuItemWrapperICS.java"

# interfaces
.implements Landroid/view/MenuItem;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;,
        Lflyme/support/v7/view/menu/MenuItemWrapperICS$ActionProviderWrapper;,
        Lflyme/support/v7/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;,
        Lflyme/support/v7/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lflyme/support/v7/view/menu/BaseMenuWrapper<",
        "Landroidx/core/internal/view/SupportMenuItem;",
        ">;",
        "Landroid/view/MenuItem;"
    }
.end annotation


# instance fields
.field private mSetExclusiveCheckableMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenuItem;)V
    .registers 3

    .line 53
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/view/menu/BaseMenuWrapper;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .registers 1

    .line 285
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {p0}, Landroidx/core/internal/view/SupportMenuItem;->collapseActionView()Z

    move-result p0

    return p0
.end method

.method createActionProviderWrapper(Landroid/view/ActionProvider;)Lflyme/support/v7/view/menu/MenuItemWrapperICS$ActionProviderWrapper;
    .registers 4

    .line 313
    new-instance v0, Lflyme/support/v7/view/menu/MenuItemWrapperICS$ActionProviderWrapper;

    iget-object v1, p0, Lflyme/support/v7/view/menu/BaseMenuWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lflyme/support/v7/view/menu/MenuItemWrapperICS$ActionProviderWrapper;-><init>(Lflyme/support/v7/view/menu/MenuItemWrapperICS;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-object v0
.end method

.method public expandActionView()Z
    .registers 1

    .line 280
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {p0}, Landroidx/core/internal/view/SupportMenuItem;->expandActionView()Z

    move-result p0

    return p0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .registers 2

    .line 271
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {p0}, Landroidx/core/internal/view/SupportMenuItem;->getSupportActionProvider()Landroidx/core/view/ActionProvider;

    move-result-object p0

    .line 272
    instance-of v0, p0, Lflyme/support/v7/view/menu/MenuItemWrapperICS$ActionProviderWrapper;

    if-eqz v0, :cond_11

    .line 273
    check-cast p0, Lflyme/support/v7/view/menu/MenuItemWrapperICS$ActionProviderWrapper;

    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Landroid/view/ActionProvider;

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public getActionView()Landroid/view/View;
    .registers 2

    .line 255
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {p0}, Landroidx/core/internal/view/SupportMenuItem;->getActionView()Landroid/view/View;

    move-result-object p0

    .line 256
    instance-of v0, p0, Lflyme/support/v7/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;

    if-eqz v0, :cond_12

    .line 257
    check-cast p0, Lflyme/support/v7/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;

    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;->getWrappedView()Landroid/view/View;

    move-result-object p0

    :cond_12
    return-object p0
.end method

.method public getAlphabeticShortcut()C
    .registers 1

    .line 152
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {p0}, Landroid/view/MenuItem;->getAlphabeticShortcut()C

    move-result p0

    return p0
.end method

.method public getGroupId()I
    .registers 1

    .line 63
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {p0}, Landroid/view/MenuItem;->getGroupId()I

    move-result p0

    return p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 113
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {p0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 1

    .line 124
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {p0}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getItemId()I
    .registers 1

    .line 58
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {p0}, Landroid/view/MenuItem;->getItemId()I

    move-result p0

    return p0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 1

    .line 217
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {p0}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object p0

    return-object p0
.end method

.method public getNumericShortcut()C
    .registers 1

    .line 141
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {p0}, Landroid/view/MenuItem;->getNumericShortcut()C

    move-result p0

    return p0
.end method

.method public getOrder()I
    .registers 1

    .line 68
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {p0}, Landroid/view/MenuItem;->getOrder()I

    move-result p0

    return p0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .registers 2

    .line 205
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    invoke-virtual {p0, v0}, Lflyme/support/v7/view/menu/BaseMenuWrapper;->getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 1

    .line 85
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {p0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .registers 1

    .line 96
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {p0}, Landroid/view/MenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public hasSubMenu()Z
    .registers 1

    .line 200
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {p0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result p0

    return p0
.end method

.method public isActionViewExpanded()Z
    .registers 1

    .line 290
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {p0}, Landroidx/core/internal/view/SupportMenuItem;->isActionViewExpanded()Z

    move-result p0

    return p0
.end method

.method public isCheckable()Z
    .registers 1

    .line 163
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {p0}, Landroid/view/MenuItem;->isCheckable()Z

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .registers 1

    .line 174
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {p0}, Landroid/view/MenuItem;->isChecked()Z

    move-result p0

    return p0
.end method

.method public isEnabled()Z
    .registers 1

    .line 195
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {p0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public isVisible()Z
    .registers 1

    .line 184
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {p0}, Landroid/view/MenuItem;->isVisible()Z

    move-result p0

    return p0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 3

    .line 264
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroidx/core/internal/view/SupportMenuItem;

    if-eqz p1, :cond_b

    .line 265
    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/MenuItemWrapperICS;->createActionProviderWrapper(Landroid/view/ActionProvider;)Lflyme/support/v7/view/menu/MenuItemWrapperICS$ActionProviderWrapper;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 264
    :goto_c
    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportMenuItem;->setSupportActionProvider(Landroidx/core/view/ActionProvider;)Landroidx/core/internal/view/SupportMenuItem;

    return-object p0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .registers 4

    .line 243
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportMenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 245
    iget-object p1, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p1, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {p1}, Landroidx/core/internal/view/SupportMenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    .line 246
    instance-of v0, p1, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_1f

    .line 248
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroidx/core/internal/view/SupportMenuItem;

    new-instance v1, Lflyme/support/v7/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;

    invoke-direct {v1, p1}, Lflyme/support/v7/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;-><init>(Landroid/view/View;)V

    invoke-interface {v0, v1}, Landroidx/core/internal/view/SupportMenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    :cond_1f
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .registers 3

    .line 233
    instance-of v0, p1, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_a

    .line 234
    new-instance v0, Lflyme/support/v7/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;

    invoke-direct {v0, p1}, Lflyme/support/v7/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;-><init>(Landroid/view/View;)V

    move-object p1, v0

    .line 236
    :cond_a
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportMenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .registers 3

    .line 146
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .registers 3

    .line 157
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .registers 3

    .line 168
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .registers 3

    .line 189
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setExclusiveCheckable(Z)V
    .registers 8

    .line 302
    :try_start_0
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuItemWrapperICS;->mSetExclusiveCheckableMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1c

    .line 303
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "setExclusiveCheckable"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    .line 304
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lflyme/support/v7/view/menu/MenuItemWrapperICS;->mSetExclusiveCheckableMethod:Ljava/lang/reflect/Method;

    .line 306
    :cond_1c
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuItemWrapperICS;->mSetExclusiveCheckableMethod:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_34

    :catch_2c
    move-exception p0

    const-string p1, "MenuItemWrapper"

    const-string v0, "Error while calling setExclusiveCheckable"

    .line 308
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_34
    return-void
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .registers 3

    .line 107
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .registers 3

    .line 101
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .registers 3

    .line 118
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .registers 3

    .line 135
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 4

    .line 295
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroidx/core/internal/view/SupportMenuItem;

    if-eqz p1, :cond_c

    new-instance v1, Lflyme/support/v7/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;

    invoke-direct {v1, p0, p1}, Lflyme/support/v7/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;-><init>(Lflyme/support/v7/view/menu/MenuItemWrapperICS;Landroid/view/MenuItem$OnActionExpandListener;)V

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .registers 4

    .line 210
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroidx/core/internal/view/SupportMenuItem;

    if-eqz p1, :cond_c

    new-instance v1, Lflyme/support/v7/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;

    invoke-direct {v1, p0, p1}, Lflyme/support/v7/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;-><init>(Lflyme/support/v7/view/menu/MenuItemWrapperICS;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .registers 4

    .line 129
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1, p2}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setShowAsAction(I)V
    .registers 2

    .line 222
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {p0, p1}, Landroidx/core/internal/view/SupportMenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .registers 3

    .line 227
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportMenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .registers 3

    .line 79
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    .line 73
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    .line 90
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .registers 2

    .line 179
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method
