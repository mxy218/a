.class Lflyme/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
.super Landroidx/appcompat/widget/ForwardingListener;
.source "ActionMenuItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/view/menu/ActionMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuItemForwardingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/view/menu/ActionMenuItemView;


# direct methods
.method public constructor <init>(Lflyme/support/v7/view/menu/ActionMenuItemView;)V
    .registers 2

    .line 366
    iput-object p1, p0, Lflyme/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lflyme/support/v7/view/menu/ActionMenuItemView;

    .line 367
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getPopup()Landroidx/appcompat/view/menu/ShowableListMenu;
    .registers 1

    .line 365
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->getPopup()Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object p0

    return-object p0
.end method

.method public getPopup()Landroidx/appcompat/widget/ListPopupWindow;
    .registers 2

    .line 372
    iget-object v0, p0, Lflyme/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lflyme/support/v7/view/menu/ActionMenuItemView;

    invoke-static {v0}, Lflyme/support/v7/view/menu/ActionMenuItemView;->access$000(Lflyme/support/v7/view/menu/ActionMenuItemView;)Lflyme/support/v7/view/menu/ActionMenuItemView$PopupCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 373
    iget-object p0, p0, Lflyme/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lflyme/support/v7/view/menu/ActionMenuItemView;

    invoke-static {p0}, Lflyme/support/v7/view/menu/ActionMenuItemView;->access$000(Lflyme/support/v7/view/menu/ActionMenuItemView;)Lflyme/support/v7/view/menu/ActionMenuItemView$PopupCallback;

    move-result-object p0

    invoke-virtual {p0}, Lflyme/support/v7/view/menu/ActionMenuItemView$PopupCallback;->getPopup()Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method protected onForwardingStarted()Z
    .registers 4

    .line 381
    iget-object v0, p0, Lflyme/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lflyme/support/v7/view/menu/ActionMenuItemView;

    invoke-static {v0}, Lflyme/support/v7/view/menu/ActionMenuItemView;->access$100(Lflyme/support/v7/view/menu/ActionMenuItemView;)Lflyme/support/v7/view/menu/MenuBuilder$ItemInvoker;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lflyme/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lflyme/support/v7/view/menu/ActionMenuItemView;

    invoke-static {v0}, Lflyme/support/v7/view/menu/ActionMenuItemView;->access$100(Lflyme/support/v7/view/menu/ActionMenuItemView;)Lflyme/support/v7/view/menu/MenuBuilder$ItemInvoker;

    move-result-object v0

    iget-object v2, p0, Lflyme/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lflyme/support/v7/view/menu/ActionMenuItemView;

    invoke-static {v2}, Lflyme/support/v7/view/menu/ActionMenuItemView;->access$200(Lflyme/support/v7/view/menu/ActionMenuItemView;)Lflyme/support/v7/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-interface {v0, v2}, Lflyme/support/v7/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lflyme/support/v7/view/menu/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 382
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->getPopup()Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object p0

    if-eqz p0, :cond_28

    .line 383
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_28

    const/4 v1, 0x1

    :cond_28
    return v1
.end method
