.class Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Lflyme/support/v7/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field mCurrentExpandedItem:Lflyme/support/v7/view/menu/MenuItemImpl;

.field mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

.field final synthetic this$0:Lflyme/support/v7/widget/Toolbar;


# direct methods
.method private constructor <init>(Lflyme/support/v7/widget/Toolbar;)V
    .registers 2

    .line 2138
    iput-object p1, p0, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lflyme/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lflyme/support/v7/widget/Toolbar;Lflyme/support/v7/widget/Toolbar$1;)V
    .registers 3

    .line 2138
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Lflyme/support/v7/widget/Toolbar;)V

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lflyme/support/v7/view/menu/MenuBuilder;Lflyme/support/v7/view/menu/MenuItemImpl;)Z
    .registers 4

    .line 2229
    iget-object p1, p0, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lflyme/support/v7/widget/Toolbar;

    iget-object p1, p1, Lflyme/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    instance-of v0, p1, Landroidx/appcompat/view/CollapsibleActionView;

    if-eqz v0, :cond_d

    .line 2230
    check-cast p1, Landroidx/appcompat/view/CollapsibleActionView;

    invoke-interface {p1}, Landroidx/appcompat/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 2233
    :cond_d
    iget-object p1, p0, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lflyme/support/v7/widget/Toolbar;

    iget-object v0, p1, Lflyme/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2234
    iget-object p1, p0, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lflyme/support/v7/widget/Toolbar;

    invoke-static {p1}, Lflyme/support/v7/widget/Toolbar;->access$300(Lflyme/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2235
    iget-object p1, p0, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lflyme/support/v7/widget/Toolbar;

    const/4 v0, 0x0

    iput-object v0, p1, Lflyme/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 2237
    invoke-virtual {p1}, Lflyme/support/v7/widget/Toolbar;->addChildrenForExpandedActionView()V

    .line 2238
    iput-object v0, p0, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lflyme/support/v7/view/menu/MenuItemImpl;

    .line 2239
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lflyme/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 p0, 0x0

    .line 2240
    invoke-virtual {p2, p0}, Lflyme/support/v7/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public expandItemActionView(Lflyme/support/v7/view/menu/MenuBuilder;Lflyme/support/v7/view/menu/MenuItemImpl;)Z
    .registers 5

    .line 2200
    iget-object p1, p0, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lflyme/support/v7/widget/Toolbar;

    invoke-static {p1}, Lflyme/support/v7/widget/Toolbar;->access$200(Lflyme/support/v7/widget/Toolbar;)V

    .line 2201
    iget-object p1, p0, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lflyme/support/v7/widget/Toolbar;

    invoke-static {p1}, Lflyme/support/v7/widget/Toolbar;->access$300(Lflyme/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lflyme/support/v7/widget/Toolbar;

    if-eq p1, v0, :cond_1a

    .line 2202
    invoke-static {v0}, Lflyme/support/v7/widget/Toolbar;->access$300(Lflyme/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2204
    :cond_1a
    iget-object p1, p0, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lflyme/support/v7/widget/Toolbar;

    invoke-virtual {p2}, Lflyme/support/v7/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lflyme/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 2205
    iput-object p2, p0, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lflyme/support/v7/view/menu/MenuItemImpl;

    .line 2206
    iget-object p1, p0, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lflyme/support/v7/widget/Toolbar;

    iget-object p1, p1, Lflyme/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lflyme/support/v7/widget/Toolbar;

    if-eq p1, v0, :cond_53

    .line 2207
    invoke-virtual {v0}, Lflyme/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Lflyme/support/v7/widget/Toolbar$LayoutParams;

    move-result-object p1

    const v0, 0x800003

    .line 2208
    iget-object v1, p0, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lflyme/support/v7/widget/Toolbar;

    invoke-static {v1}, Lflyme/support/v7/widget/Toolbar;->access$400(Lflyme/support/v7/widget/Toolbar;)I

    move-result v1

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    iput v0, p1, Lflyme/support/v7/app/ActionBar$LayoutParams;->gravity:I

    const/4 v0, 0x2

    .line 2209
    iput v0, p1, Lflyme/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2210
    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lflyme/support/v7/widget/Toolbar;

    iget-object v0, v0, Lflyme/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2211
    iget-object p1, p0, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lflyme/support/v7/widget/Toolbar;

    iget-object v0, p1, Lflyme/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2214
    :cond_53
    iget-object p1, p0, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lflyme/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Lflyme/support/v7/widget/Toolbar;->removeChildrenForExpandedActionView()V

    .line 2215
    iget-object p1, p0, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lflyme/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 p1, 0x1

    .line 2216
    invoke-virtual {p2, p1}, Lflyme/support/v7/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 2218
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lflyme/support/v7/widget/Toolbar;

    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    instance-of p2, p0, Landroidx/appcompat/view/CollapsibleActionView;

    if-eqz p2, :cond_6e

    .line 2219
    check-cast p0, Landroidx/appcompat/view/CollapsibleActionView;

    invoke-interface {p0}, Landroidx/appcompat/view/CollapsibleActionView;->onActionViewExpanded()V

    :cond_6e
    return p1
.end method

.method public flagActionItems()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public initForMenu(Landroid/content/Context;Lflyme/support/v7/view/menu/MenuBuilder;)V
    .registers 4

    .line 2145
    iget-object p1, p0, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    if-eqz p1, :cond_b

    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lflyme/support/v7/view/menu/MenuItemImpl;

    if-eqz v0, :cond_b

    .line 2146
    invoke-virtual {p1, v0}, Lflyme/support/v7/view/menu/MenuBuilder;->collapseItemActionView(Lflyme/support/v7/view/menu/MenuItemImpl;)Z

    .line 2148
    :cond_b
    iput-object p2, p0, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    return-void
.end method

.method public onCloseMenu(Lflyme/support/v7/view/menu/MenuBuilder;Z)V
    .registers 3

    return-void
.end method

.method public onSubMenuSelected(Lflyme/support/v7/view/menu/SubMenuBuilder;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public updateMenuView(Z)V
    .registers 6

    .line 2159
    iget-object p1, p0, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lflyme/support/v7/view/menu/MenuItemImpl;

    if-eqz p1, :cond_28

    .line 2162
    iget-object p1, p0, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    .line 2163
    invoke-virtual {p1}, Lflyme/support/v7/view/menu/MenuBuilder;->size()I

    move-result p1

    move v1, v0

    :goto_e
    if-ge v1, p1, :cond_1f

    .line 2165
    iget-object v2, p0, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Lflyme/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 2166
    iget-object v3, p0, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lflyme/support/v7/view/menu/MenuItemImpl;

    if-ne v2, v3, :cond_1c

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1f
    :goto_1f
    if-nez v0, :cond_28

    .line 2175
    iget-object p1, p0, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    iget-object v0, p0, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lflyme/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {p0, p1, v0}, Lflyme/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->collapseItemActionView(Lflyme/support/v7/view/menu/MenuBuilder;Lflyme/support/v7/view/menu/MenuItemImpl;)Z

    :cond_28
    return-void
.end method
