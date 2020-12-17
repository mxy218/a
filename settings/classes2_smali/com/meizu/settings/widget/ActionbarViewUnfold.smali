.class public Lcom/meizu/settings/widget/ActionbarViewUnfold;
.super Landroid/widget/RelativeLayout;
.source "ActionbarViewUnfold.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/widget/ActionbarViewUnfold$OnMenuItemClickListener;
    }
.end annotation


# instance fields
.field private isShowing:Z

.field private mArrow:Landroid/widget/ImageView;

.field private mCurrentMenuItem:Landroid/view/MenuItem;

.field private mOnMenuItemClickListener:Lcom/meizu/settings/widget/ActionbarViewUnfold$OnMenuItemClickListener;

.field private mOpenAnimation:Landroid/view/animation/RotateAnimation;

.field private mPopupMenu:Lflyme/support/v7/widget/PopupMenu;

.field private mTitle:Landroid/widget/TextView;


# virtual methods
.method public getMenu()Landroid/view/Menu;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/meizu/settings/widget/ActionbarViewUnfold;->mPopupMenu:Lflyme/support/v7/widget/PopupMenu;

    invoke-virtual {p0}, Lflyme/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    const/4 p0, 0x0

    throw p0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 114
    iget-boolean p1, p0, Lcom/meizu/settings/widget/ActionbarViewUnfold;->isShowing:Z

    if-eqz p1, :cond_5

    return-void

    .line 115
    :cond_5
    iget-object p1, p0, Lcom/meizu/settings/widget/ActionbarViewUnfold;->mArrow:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/meizu/settings/widget/ActionbarViewUnfold;->mOpenAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 116
    iget-object p0, p0, Lcom/meizu/settings/widget/ActionbarViewUnfold;->mPopupMenu:Lflyme/support/v7/widget/PopupMenu;

    invoke-virtual {p0}, Lflyme/support/v7/widget/PopupMenu;->show()V

    const/4 p0, 0x0

    throw p0
.end method

.method public setCurrentMenuItem(Landroid/view/MenuItem;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/meizu/settings/widget/ActionbarViewUnfold;->mCurrentMenuItem:Landroid/view/MenuItem;

    return-void
.end method

.method public setOnMenuItemClickListener(Lcom/meizu/settings/widget/ActionbarViewUnfold$OnMenuItemClickListener;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/meizu/settings/widget/ActionbarViewUnfold;->mOnMenuItemClickListener:Lcom/meizu/settings/widget/ActionbarViewUnfold$OnMenuItemClickListener;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .line 104
    iget-object p0, p0, Lcom/meizu/settings/widget/ActionbarViewUnfold;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
