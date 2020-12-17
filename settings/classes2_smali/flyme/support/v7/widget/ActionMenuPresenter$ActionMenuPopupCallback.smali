.class Lflyme/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;
.super Lflyme/support/v7/view/menu/ActionMenuItemView$PopupCallback;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuPopupCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/widget/ActionMenuPresenter;


# direct methods
.method private constructor <init>(Lflyme/support/v7/widget/ActionMenuPresenter;)V
    .registers 2

    .line 969
    iput-object p1, p0, Lflyme/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;->this$0:Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-direct {p0}, Lflyme/support/v7/view/menu/ActionMenuItemView$PopupCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lflyme/support/v7/widget/ActionMenuPresenter;Lflyme/support/v7/widget/ActionMenuPresenter$1;)V
    .registers 3

    .line 969
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;-><init>(Lflyme/support/v7/widget/ActionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getPopup()Landroidx/appcompat/widget/ListPopupWindow;
    .registers 1

    .line 969
    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;->getPopup()Lflyme/support/v7/widget/ListPopupWindow;

    move-result-object p0

    return-object p0
.end method

.method public getPopup()Lflyme/support/v7/widget/ListPopupWindow;
    .registers 2

    .line 972
    iget-object v0, p0, Lflyme/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;->this$0:Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Lflyme/support/v7/widget/ActionMenuPresenter;->access$1000(Lflyme/support/v7/widget/ActionMenuPresenter;)Lflyme/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;->this$0:Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-static {p0}, Lflyme/support/v7/widget/ActionMenuPresenter;->access$1000(Lflyme/support/v7/widget/ActionMenuPresenter;)Lflyme/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    move-result-object p0

    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuPopupHelper;->getPopup()Lflyme/support/v7/widget/ListPopupWindow;

    move-result-object p0

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return-object p0
.end method
