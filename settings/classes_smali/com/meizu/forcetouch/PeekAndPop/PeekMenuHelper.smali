.class Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;
.super Ljava/lang/Object;
.source "PeekMenuHelper.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroidx/appcompat/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$MenuAdapter;,
        Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$PeekMenuCallback;
    }
.end annotation


# static fields
.field static final ITEM_LAYOUT:I


# instance fields
.field private final mAdapter:Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$MenuAdapter;

.field private final mContext:Landroid/content/Context;

.field private mHasContentWidth:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private mPeekMenuCallback:Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$PeekMenuCallback;

.field private final mPopupMaxWidth:I

.field private mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    sget v0, Lcom/meizu/forcetouch/R$layout;->peek_menu_item_layout:I

    sput v0, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;->ITEM_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .registers 5

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;->mContext:Landroid/content/Context;

    .line 109
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;->mInflater:Landroid/view/LayoutInflater;

    .line 110
    iput-object p2, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 111
    new-instance v0, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$MenuAdapter;

    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-direct {v0, p0, v1}, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$MenuAdapter;-><init>(Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;Landroidx/appcompat/view/menu/MenuBuilder;)V

    iput-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;->mAdapter:Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$MenuAdapter;

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;->mPopupMaxWidth:I

    .line 117
    invoke-virtual {p2, p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;)Landroid/view/LayoutInflater;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;)Landroidx/appcompat/view/menu/MenuBuilder;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object p0
.end method


# virtual methods
.method public collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public expandItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
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
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;->mAdapter:Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$MenuAdapter;

    return-object p0
.end method

.method public getId()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .registers 3

    return-void
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .registers 4

    .line 231
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eq p1, v0, :cond_5

    return-void

    .line 234
    :cond_5
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_c

    .line 235
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    .line 238
    :cond_c
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;->mPeekMenuCallback:Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$PeekMenuCallback;

    if-eqz p0, :cond_13

    .line 239
    invoke-interface {p0}, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$PeekMenuCallback;->onCloseCurMenu()V

    :cond_13
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;->mAdapter:Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$MenuAdapter;

    .line 122
    invoke-virtual {v0, p3}, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$MenuAdapter;->getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v1

    .line 123
    invoke-static {v0}, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$MenuAdapter;->access$000(Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$MenuAdapter;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 124
    invoke-interface {v1}, Landroid/view/MenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    .line 125
    invoke-interface {v1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_30

    if-eqz v0, :cond_24

    const-string v1, "Default"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_30

    .line 128
    :cond_24
    iget-object v4, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;->mPeekMenuCallback:Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$PeekMenuCallback;

    if-eqz v4, :cond_30

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-wide v8, p4

    .line 129
    invoke-interface/range {v4 .. v9}, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$PeekMenuCallback;->onDestructCurMenu(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return v2

    :cond_30
    :goto_30
    return v3
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 137
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_c

    const/16 p0, 0x52

    if-ne p2, p0, :cond_c

    return p1

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .registers 4

    .line 212
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 213
    new-instance v0, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;

    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 214
    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    invoke-virtual {v0, v1}, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;->setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    .line 215
    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;->mPeekMenuCallback:Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$PeekMenuCallback;

    invoke-virtual {v0, v1}, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;->setPeekMenuCallback(Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$PeekMenuCallback;)V

    .line 217
    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v1, :cond_1e

    .line 218
    invoke-interface {v1, p1}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z

    .line 220
    :cond_1e
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;->mPeekMenuCallback:Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$PeekMenuCallback;

    if-eqz p0, :cond_25

    .line 221
    invoke-interface {p0, v0}, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$PeekMenuCallback;->onSubMenuSelected(Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;)V

    :cond_25
    const/4 p0, 0x1

    return p0

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method public setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .registers 2

    .line 199
    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    return-void
.end method

.method public setPeekMenuCallback(Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$PeekMenuCallback;)V
    .registers 2

    .line 203
    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;->mPeekMenuCallback:Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$PeekMenuCallback;

    return-void
.end method

.method public updateMenuView(Z)V
    .registers 2

    const/4 p1, 0x0

    .line 190
    iput-boolean p1, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;->mHasContentWidth:Z

    .line 192
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;->mAdapter:Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$MenuAdapter;

    if-eqz p0, :cond_a

    .line 193
    invoke-virtual {p0}, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$MenuAdapter;->notifyDataSetChanged()V

    :cond_a
    return-void
.end method
