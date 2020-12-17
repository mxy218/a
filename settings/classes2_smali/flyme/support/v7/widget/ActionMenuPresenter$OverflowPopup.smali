.class Lflyme/support/v7/widget/ActionMenuPresenter$OverflowPopup;
.super Lflyme/support/v7/view/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowPopup"
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lflyme/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Lflyme/support/v7/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .registers 13

    .line 870
    iput-object p1, p0, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowPopup;->this$0:Lflyme/support/v7/widget/ActionMenuPresenter;

    .line 873
    invoke-virtual {p1}, Lflyme/support/v7/widget/ActionMenuPresenter;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_b

    sget v0, Lflyme/support/v7/appcompat/R$attr;->mzActionOverflowMenuSplitStyle:I

    goto :goto_d

    :cond_b
    sget v0, Lflyme/support/v7/appcompat/R$attr;->actionOverflowMenuStyle:I

    :goto_d
    move v6, v0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lflyme/support/v7/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    const p2, 0x800005

    .line 875
    invoke-virtual {p0, p2}, Lflyme/support/v7/view/menu/MenuPopupHelper;->setGravity(I)V

    .line 876
    iget-object p1, p1, Lflyme/support/v7/widget/ActionMenuPresenter;->mPopupPresenterCallback:Lflyme/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/MenuPopupHelper;->setCallback(Lflyme/support/v7/view/menu/MenuPresenter$Callback;)V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 2

    .line 881
    invoke-super {p0}, Lflyme/support/v7/view/menu/MenuPopupHelper;->onDismiss()V

    .line 882
    iget-object v0, p0, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowPopup;->this$0:Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Lflyme/support/v7/widget/ActionMenuPresenter;->access$600(Lflyme/support/v7/widget/ActionMenuPresenter;)Lflyme/support/v7/view/menu/MenuBuilder;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 883
    iget-object v0, p0, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowPopup;->this$0:Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Lflyme/support/v7/widget/ActionMenuPresenter;->access$700(Lflyme/support/v7/widget/ActionMenuPresenter;)Lflyme/support/v7/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lflyme/support/v7/view/menu/MenuBuilder;->close()V

    .line 885
    :cond_14
    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowPopup;->this$0:Lflyme/support/v7/widget/ActionMenuPresenter;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lflyme/support/v7/widget/ActionMenuPresenter;->access$302(Lflyme/support/v7/widget/ActionMenuPresenter;Lflyme/support/v7/widget/ActionMenuPresenter$OverflowPopup;)Lflyme/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    return-void
.end method
