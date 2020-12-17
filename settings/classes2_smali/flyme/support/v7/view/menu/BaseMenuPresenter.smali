.class public abstract Lflyme/support/v7/view/menu/BaseMenuPresenter;
.super Ljava/lang/Object;
.source "BaseMenuPresenter.java"

# interfaces
.implements Lflyme/support/v7/view/menu/MenuPresenter;


# instance fields
.field private mCallback:Lflyme/support/v7/view/menu/MenuPresenter$Callback;

.field protected mContext:Landroid/content/Context;

.field private mId:I

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mItemLayoutRes:I

.field protected mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

.field private mMenuLayoutRes:I

.field protected mMenuView:Lflyme/support/v7/view/menu/MenuView;

.field protected mSystemContext:Landroid/content/Context;

.field protected mSystemInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 4

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    .line 60
    iput p2, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    .line 61
    iput p3, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    return-void
.end method


# virtual methods
.method protected addItemView(Landroid/view/View;I)V
    .registers 4

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    .line 131
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 133
    :cond_b
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenuView:Lflyme/support/v7/view/menu/MenuView;

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public abstract bindItemView(Lflyme/support/v7/view/menu/MenuItemImpl;Lflyme/support/v7/view/menu/MenuView$ItemView;)V
.end method

.method public collapseItemActionView(Lflyme/support/v7/view/menu/MenuBuilder;Lflyme/support/v7/view/menu/MenuItemImpl;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public createItemView(Landroid/view/ViewGroup;)Lflyme/support/v7/view/menu/MenuView$ItemView;
    .registers 4

    .line 161
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget p0, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/view/menu/MenuView$ItemView;

    return-object p0
.end method

.method public expandItemActionView(Lflyme/support/v7/view/menu/MenuBuilder;Lflyme/support/v7/view/menu/MenuItemImpl;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method protected filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .registers 3

    .line 143
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public getCallback()Lflyme/support/v7/view/menu/MenuPresenter$Callback;
    .registers 1

    .line 152
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mCallback:Lflyme/support/v7/view/menu/MenuPresenter$Callback;

    return-object p0
.end method

.method public getItemView(Lflyme/support/v7/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 177
    instance-of v0, p2, Lflyme/support/v7/view/menu/MenuView$ItemView;

    if-eqz v0, :cond_7

    .line 178
    check-cast p2, Lflyme/support/v7/view/menu/MenuView$ItemView;

    goto :goto_b

    .line 180
    :cond_7
    invoke-virtual {p0, p3}, Lflyme/support/v7/view/menu/BaseMenuPresenter;->createItemView(Landroid/view/ViewGroup;)Lflyme/support/v7/view/menu/MenuView$ItemView;

    move-result-object p2

    .line 182
    :goto_b
    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/view/menu/BaseMenuPresenter;->bindItemView(Lflyme/support/v7/view/menu/MenuItemImpl;Lflyme/support/v7/view/menu/MenuView$ItemView;)V

    .line 183
    check-cast p2, Landroid/view/View;

    return-object p2
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lflyme/support/v7/view/menu/MenuView;
    .registers 5

    .line 73
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenuView:Lflyme/support/v7/view/menu/MenuView;

    if-nez v0, :cond_1c

    .line 74
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lflyme/support/v7/view/menu/MenuView;

    iput-object p1, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenuView:Lflyme/support/v7/view/menu/MenuView;

    .line 75
    iget-object p1, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenuView:Lflyme/support/v7/view/menu/MenuView;

    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-interface {p1, v0}, Lflyme/support/v7/view/menu/MenuView;->initialize(Lflyme/support/v7/view/menu/MenuBuilder;)V

    const/4 p1, 0x1

    .line 76
    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 79
    :cond_1c
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenuView:Lflyme/support/v7/view/menu/MenuView;

    return-object p0
.end method

.method public initForMenu(Landroid/content/Context;Lflyme/support/v7/view/menu/MenuBuilder;)V
    .registers 3

    .line 66
    iput-object p1, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    .line 67
    iget-object p1, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 68
    iput-object p2, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    return-void
.end method

.method public onCloseMenu(Lflyme/support/v7/view/menu/MenuBuilder;Z)V
    .registers 3

    .line 206
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mCallback:Lflyme/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz p0, :cond_7

    .line 207
    invoke-interface {p0, p1, p2}, Lflyme/support/v7/view/menu/MenuPresenter$Callback;->onCloseMenu(Lflyme/support/v7/view/menu/MenuBuilder;Z)V

    :cond_7
    return-void
.end method

.method public onSubMenuSelected(Lflyme/support/v7/view/menu/SubMenuBuilder;)Z
    .registers 2

    .line 212
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mCallback:Lflyme/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz p0, :cond_9

    .line 213
    invoke-interface {p0, p1}, Lflyme/support/v7/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lflyme/support/v7/view/menu/MenuBuilder;)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public setCallback(Lflyme/support/v7/view/menu/MenuPresenter$Callback;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mCallback:Lflyme/support/v7/view/menu/MenuPresenter$Callback;

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 235
    iput p1, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mId:I

    return-void
.end method

.method protected setItemLayoutRes(I)V
    .registers 2

    .line 244
    iput p1, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    return-void
.end method

.method public abstract shouldIncludeItem(ILflyme/support/v7/view/menu/MenuItemImpl;)Z
.end method

.method public updateMenuView(Z)V
    .registers 11

    .line 86
    iget-object p1, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenuView:Lflyme/support/v7/view/menu/MenuView;

    check-cast p1, Landroid/view/ViewGroup;

    if-nez p1, :cond_7

    return-void

    .line 90
    :cond_7
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    if-eqz v0, :cond_51

    .line 91
    invoke-virtual {v0}, Lflyme/support/v7/view/menu/MenuBuilder;->flagActionItems()V

    .line 92
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lflyme/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    move v4, v3

    :goto_1b
    if-ge v3, v2, :cond_50

    .line 95
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lflyme/support/v7/view/menu/MenuItemImpl;

    .line 96
    invoke-virtual {p0, v4, v5}, Lflyme/support/v7/view/menu/BaseMenuPresenter;->shouldIncludeItem(ILflyme/support/v7/view/menu/MenuItemImpl;)Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 97
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 98
    instance-of v7, v6, Lflyme/support/v7/view/menu/MenuView$ItemView;

    if-eqz v7, :cond_39

    move-object v7, v6

    check-cast v7, Lflyme/support/v7/view/menu/MenuView$ItemView;

    .line 99
    invoke-interface {v7}, Lflyme/support/v7/view/menu/MenuView$ItemView;->getItemData()Lflyme/support/v7/view/menu/MenuItemImpl;

    move-result-object v7

    goto :goto_3a

    :cond_39
    const/4 v7, 0x0

    .line 100
    :goto_3a
    invoke-virtual {p0, v5, v6, p1}, Lflyme/support/v7/view/menu/BaseMenuPresenter;->getItemView(Lflyme/support/v7/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    if-eq v5, v7, :cond_46

    .line 103
    invoke-virtual {v8, v1}, Landroid/view/View;->setPressed(Z)V

    .line 104
    invoke-static {v8}, Landroidx/core/view/ViewCompat;->jumpDrawablesToCurrentState(Landroid/view/View;)V

    :cond_46
    if-eq v8, v6, :cond_4b

    .line 107
    invoke-virtual {p0, v8, v4}, Lflyme/support/v7/view/menu/BaseMenuPresenter;->addItemView(Landroid/view/View;I)V

    :cond_4b
    add-int/lit8 v4, v4, 0x1

    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_50
    move v1, v4

    .line 115
    :cond_51
    :goto_51
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_60

    .line 116
    invoke-virtual {p0, p1, v1}, Lflyme/support/v7/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v0

    if-nez v0, :cond_51

    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    :cond_60
    return-void
.end method
