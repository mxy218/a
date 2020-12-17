.class Lflyme/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lflyme/support/v7/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/widget/ActionMenuPresenter;


# direct methods
.method private constructor <init>(Lflyme/support/v7/widget/ActionMenuPresenter;)V
    .registers 2

    .line 929
    iput-object p1, p0, Lflyme/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lflyme/support/v7/widget/ActionMenuPresenter;Lflyme/support/v7/widget/ActionMenuPresenter$1;)V
    .registers 3

    .line 929
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;-><init>(Lflyme/support/v7/widget/ActionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lflyme/support/v7/view/menu/MenuBuilder;Z)V
    .registers 5

    .line 942
    instance-of v0, p1, Lflyme/support/v7/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_c

    .line 943
    invoke-virtual {p1}, Lflyme/support/v7/view/menu/MenuBuilder;->getRootMenu()Lflyme/support/v7/view/menu/MenuBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lflyme/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 945
    :cond_c
    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lflyme/support/v7/view/menu/BaseMenuPresenter;->getCallback()Lflyme/support/v7/view/menu/MenuPresenter$Callback;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 947
    invoke-interface {p0, p1, p2}, Lflyme/support/v7/view/menu/MenuPresenter$Callback;->onCloseMenu(Lflyme/support/v7/view/menu/MenuBuilder;Z)V

    :cond_17
    return-void
.end method

.method public onOpenSubMenu(Lflyme/support/v7/view/menu/MenuBuilder;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 935
    :cond_4
    iget-object v1, p0, Lflyme/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Lflyme/support/v7/widget/ActionMenuPresenter;

    move-object v2, p1

    check-cast v2, Lflyme/support/v7/view/menu/SubMenuBuilder;

    invoke-virtual {v2}, Lflyme/support/v7/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iput v2, v1, Lflyme/support/v7/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 936
    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lflyme/support/v7/view/menu/BaseMenuPresenter;->getCallback()Lflyme/support/v7/view/menu/MenuPresenter$Callback;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 937
    invoke-interface {p0, p1}, Lflyme/support/v7/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lflyme/support/v7/view/menu/MenuBuilder;)Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 v0, 0x1

    :cond_22
    return v0
.end method
