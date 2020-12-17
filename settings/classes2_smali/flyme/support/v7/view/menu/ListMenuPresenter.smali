.class public Lflyme/support/v7/view/menu/ListMenuPresenter;
.super Ljava/lang/Object;
.source "ListMenuPresenter.java"

# interfaces
.implements Lflyme/support/v7/view/menu/MenuPresenter;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/view/menu/ListMenuPresenter$MenuAdapter;
    }
.end annotation


# instance fields
.field mAdapter:Lflyme/support/v7/view/menu/ListMenuPresenter$MenuAdapter;

.field private mCallback:Lflyme/support/v7/view/menu/MenuPresenter$Callback;

.field mContext:Landroid/content/Context;

.field mInflater:Landroid/view/LayoutInflater;

.field private mItemIndexOffset:I

.field mItemLayoutRes:I

.field mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

.field mMenuView:Lflyme/support/v7/view/menu/ExpandedMenuView;

.field mThemeRes:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Lflyme/support/v7/view/menu/ListMenuPresenter;->mItemLayoutRes:I

    .line 78
    iput p2, p0, Lflyme/support/v7/view/menu/ListMenuPresenter;->mThemeRes:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p2, v0}, Lflyme/support/v7/view/menu/ListMenuPresenter;-><init>(II)V

    .line 67
    iput-object p1, p0, Lflyme/support/v7/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 68
    iget-object p1, p0, Lflyme/support/v7/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lflyme/support/v7/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lflyme/support/v7/view/menu/ListMenuPresenter;)I
    .registers 1

    .line 39
    iget p0, p0, Lflyme/support/v7/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    return p0
.end method


# virtual methods
.method public collapseItemActionView(Lflyme/support/v7/view/menu/MenuBuilder;Lflyme/support/v7/view/menu/MenuItemImpl;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public expandItemActionView(Lflyme/support/v7/view/menu/MenuBuilder;Lflyme/support/v7/view/menu/MenuItemImpl;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public flagActionItems()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .line 120
    iget-object v0, p0, Lflyme/support/v7/view/menu/ListMenuPresenter;->mAdapter:Lflyme/support/v7/view/menu/ListMenuPresenter$MenuAdapter;

    if-nez v0, :cond_b

    .line 121
    new-instance v0, Lflyme/support/v7/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-direct {v0, p0}, Lflyme/support/v7/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Lflyme/support/v7/view/menu/ListMenuPresenter;)V

    iput-object v0, p0, Lflyme/support/v7/view/menu/ListMenuPresenter;->mAdapter:Lflyme/support/v7/view/menu/ListMenuPresenter$MenuAdapter;

    .line 123
    :cond_b
    iget-object p0, p0, Lflyme/support/v7/view/menu/ListMenuPresenter;->mAdapter:Lflyme/support/v7/view/menu/ListMenuPresenter$MenuAdapter;

    return-object p0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lflyme/support/v7/view/menu/MenuView;
    .registers 5

    .line 100
    iget-object v0, p0, Lflyme/support/v7/view/menu/ListMenuPresenter;->mMenuView:Lflyme/support/v7/view/menu/ExpandedMenuView;

    if-nez v0, :cond_28

    .line 101
    iget-object v0, p0, Lflyme/support/v7/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lflyme/support/v7/appcompat/R$layout;->mz_expanded_menu_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lflyme/support/v7/view/menu/ExpandedMenuView;

    iput-object p1, p0, Lflyme/support/v7/view/menu/ListMenuPresenter;->mMenuView:Lflyme/support/v7/view/menu/ExpandedMenuView;

    .line 103
    iget-object p1, p0, Lflyme/support/v7/view/menu/ListMenuPresenter;->mAdapter:Lflyme/support/v7/view/menu/ListMenuPresenter$MenuAdapter;

    if-nez p1, :cond_1c

    .line 104
    new-instance p1, Lflyme/support/v7/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-direct {p1, p0}, Lflyme/support/v7/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Lflyme/support/v7/view/menu/ListMenuPresenter;)V

    iput-object p1, p0, Lflyme/support/v7/view/menu/ListMenuPresenter;->mAdapter:Lflyme/support/v7/view/menu/ListMenuPresenter$MenuAdapter;

    .line 106
    :cond_1c
    iget-object p1, p0, Lflyme/support/v7/view/menu/ListMenuPresenter;->mMenuView:Lflyme/support/v7/view/menu/ExpandedMenuView;

    iget-object v0, p0, Lflyme/support/v7/view/menu/ListMenuPresenter;->mAdapter:Lflyme/support/v7/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    iget-object p1, p0, Lflyme/support/v7/view/menu/ListMenuPresenter;->mMenuView:Lflyme/support/v7/view/menu/ExpandedMenuView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 109
    :cond_28
    iget-object p0, p0, Lflyme/support/v7/view/menu/ListMenuPresenter;->mMenuView:Lflyme/support/v7/view/menu/ExpandedMenuView;

    return-object p0
.end method

.method public initForMenu(Landroid/content/Context;Lflyme/support/v7/view/menu/MenuBuilder;)V
    .registers 5

    .line 83
    iget v0, p0, Lflyme/support/v7/view/menu/ListMenuPresenter;->mThemeRes:I

    if-eqz v0, :cond_14

    .line 84
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lflyme/support/v7/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 85
    iget-object p1, p0, Lflyme/support/v7/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lflyme/support/v7/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    goto :goto_26

    .line 86
    :cond_14
    iget-object v0, p0, Lflyme/support/v7/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_26

    .line 87
    iput-object p1, p0, Lflyme/support/v7/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 88
    iget-object p1, p0, Lflyme/support/v7/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    if-nez p1, :cond_26

    .line 89
    iget-object p1, p0, Lflyme/support/v7/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lflyme/support/v7/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 92
    :cond_26
    :goto_26
    iput-object p2, p0, Lflyme/support/v7/view/menu/ListMenuPresenter;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    .line 93
    iget-object p0, p0, Lflyme/support/v7/view/menu/ListMenuPresenter;->mAdapter:Lflyme/support/v7/view/menu/ListMenuPresenter$MenuAdapter;

    if-eqz p0, :cond_2f

    .line 94
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    :cond_2f
    return-void
.end method

.method public onCloseMenu(Lflyme/support/v7/view/menu/MenuBuilder;Z)V
    .registers 3

    .line 150
    iget-object p0, p0, Lflyme/support/v7/view/menu/ListMenuPresenter;->mCallback:Lflyme/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz p0, :cond_7

    .line 151
    invoke-interface {p0, p1, p2}, Lflyme/support/v7/view/menu/MenuPresenter$Callback;->onCloseMenu(Lflyme/support/v7/view/menu/MenuBuilder;Z)V

    :cond_7
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 168
    iget-object p1, p0, Lflyme/support/v7/view/menu/ListMenuPresenter;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    iget-object p2, p0, Lflyme/support/v7/view/menu/ListMenuPresenter;->mAdapter:Lflyme/support/v7/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {p2, p3}, Lflyme/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lflyme/support/v7/view/menu/MenuItemImpl;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Lflyme/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Lflyme/support/v7/view/menu/MenuPresenter;I)Z

    return-void
.end method

.method public onSubMenuSelected(Lflyme/support/v7/view/menu/SubMenuBuilder;)Z
    .registers 4

    .line 138
    invoke-virtual {p1}, Lflyme/support/v7/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 141
    :cond_8
    new-instance v0, Lflyme/support/v7/view/menu/MenuDialogHelper;

    invoke-direct {v0, p1}, Lflyme/support/v7/view/menu/MenuDialogHelper;-><init>(Lflyme/support/v7/view/menu/MenuBuilder;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lflyme/support/v7/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    .line 142
    iget-object p0, p0, Lflyme/support/v7/view/menu/ListMenuPresenter;->mCallback:Lflyme/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz p0, :cond_18

    .line 143
    invoke-interface {p0, p1}, Lflyme/support/v7/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lflyme/support/v7/view/menu/MenuBuilder;)Z

    :cond_18
    const/4 p0, 0x1

    return p0
.end method

.method public setCallback(Lflyme/support/v7/view/menu/MenuPresenter$Callback;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lflyme/support/v7/view/menu/ListMenuPresenter;->mCallback:Lflyme/support/v7/view/menu/MenuPresenter$Callback;

    return-void
.end method

.method public updateMenuView(Z)V
    .registers 2

    .line 128
    iget-object p0, p0, Lflyme/support/v7/view/menu/ListMenuPresenter;->mAdapter:Lflyme/support/v7/view/menu/ListMenuPresenter$MenuAdapter;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lflyme/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    :cond_7
    return-void
.end method
