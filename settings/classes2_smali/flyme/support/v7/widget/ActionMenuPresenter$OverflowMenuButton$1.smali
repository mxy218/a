.class Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton$1;
.super Landroidx/appcompat/widget/ForwardingListener;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Lflyme/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

.field final synthetic val$this$0:Lflyme/support/v7/widget/ActionMenuPresenter;


# direct methods
.method constructor <init>(Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;Landroid/view/View;Lflyme/support/v7/widget/ActionMenuPresenter;)V
    .registers 4

    .line 711
    iput-object p1, p0, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    iput-object p3, p0, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton$1;->val$this$0:Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getPopup()Landroidx/appcompat/view/menu/ShowableListMenu;
    .registers 1

    .line 711
    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton$1;->getPopup()Lflyme/support/v7/widget/ListPopupWindow;

    move-result-object p0

    return-object p0
.end method

.method public getPopup()Lflyme/support/v7/widget/ListPopupWindow;
    .registers 2

    .line 714
    iget-object v0, p0, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Lflyme/support/v7/widget/ActionMenuPresenter;->access$300(Lflyme/support/v7/widget/ActionMenuPresenter;)Lflyme/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 718
    :cond_c
    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-static {p0}, Lflyme/support/v7/widget/ActionMenuPresenter;->access$300(Lflyme/support/v7/widget/ActionMenuPresenter;)Lflyme/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    move-result-object p0

    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuPopupHelper;->getPopup()Lflyme/support/v7/widget/ListPopupWindow;

    move-result-object p0

    return-object p0
.end method

.method public onForwardingStarted()Z
    .registers 1

    .line 723
    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    const/4 p0, 0x1

    return p0
.end method

.method public onForwardingStopped()Z
    .registers 2

    .line 732
    iget-object v0, p0, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Lflyme/support/v7/widget/ActionMenuPresenter;->access$400(Lflyme/support/v7/widget/ActionMenuPresenter;)Lflyme/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 736
    :cond_c
    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    const/4 p0, 0x1

    return p0
.end method
