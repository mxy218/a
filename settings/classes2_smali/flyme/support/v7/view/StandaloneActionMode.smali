.class public Lflyme/support/v7/view/StandaloneActionMode;
.super Lflyme/support/v7/view/ActionMode;
.source "StandaloneActionMode.java"

# interfaces
.implements Lflyme/support/v7/view/menu/MenuBuilder$Callback;


# instance fields
.field private mCallback:Lflyme/support/v7/view/ActionMode$Callback;

.field private mContext:Landroid/content/Context;

.field private mContextView:Lflyme/support/v7/widget/ActionBarContextView;

.field private mCustomView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFinished:Z

.field private mFocusable:Z

.field private mMenu:Lflyme/support/v7/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lflyme/support/v7/widget/ActionBarContextView;Lflyme/support/v7/view/ActionMode$Callback;Z)V
    .registers 5

    .line 47
    invoke-direct {p0}, Lflyme/support/v7/view/ActionMode;-><init>()V

    .line 48
    iput-object p1, p0, Lflyme/support/v7/view/StandaloneActionMode;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lflyme/support/v7/view/StandaloneActionMode;->mContextView:Lflyme/support/v7/widget/ActionBarContextView;

    .line 50
    iput-object p3, p0, Lflyme/support/v7/view/StandaloneActionMode;->mCallback:Lflyme/support/v7/view/ActionMode$Callback;

    .line 52
    new-instance p1, Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lflyme/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lflyme/support/v7/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Lflyme/support/v7/view/menu/MenuBuilder;

    iput-object p1, p0, Lflyme/support/v7/view/StandaloneActionMode;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    .line 54
    iget-object p1, p0, Lflyme/support/v7/view/StandaloneActionMode;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Lflyme/support/v7/view/menu/MenuBuilder;->setCallback(Lflyme/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 55
    iput-boolean p4, p0, Lflyme/support/v7/view/StandaloneActionMode;->mFocusable:Z

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 3

    .line 102
    iget-boolean v0, p0, Lflyme/support/v7/view/StandaloneActionMode;->mFinished:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lflyme/support/v7/view/StandaloneActionMode;->mFinished:Z

    .line 107
    iget-object v0, p0, Lflyme/support/v7/view/StandaloneActionMode;->mContextView:Lflyme/support/v7/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 108
    iget-object v0, p0, Lflyme/support/v7/view/StandaloneActionMode;->mCallback:Lflyme/support/v7/view/ActionMode$Callback;

    invoke-interface {v0, p0}, Lflyme/support/v7/view/ActionMode$Callback;->onDestroyActionMode(Lflyme/support/v7/view/ActionMode;)V

    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .registers 1

    .line 128
    iget-object p0, p0, Lflyme/support/v7/view/StandaloneActionMode;->mCustomView:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 1

    .line 113
    iget-object p0, p0, Lflyme/support/v7/view/StandaloneActionMode;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    return-object p0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 2

    .line 133
    new-instance v0, Lflyme/support/v7/view/SupportMenuInflater;

    iget-object p0, p0, Lflyme/support/v7/view/StandaloneActionMode;->mContextView:Lflyme/support/v7/widget/ActionBarContextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lflyme/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 1

    .line 123
    iget-object p0, p0, Lflyme/support/v7/view/StandaloneActionMode;->mContextView:Lflyme/support/v7/widget/ActionBarContextView;

    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 1

    .line 118
    iget-object p0, p0, Lflyme/support/v7/view/StandaloneActionMode;->mContextView:Lflyme/support/v7/widget/ActionBarContextView;

    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public invalidate()V
    .registers 3

    .line 97
    iget-object v0, p0, Lflyme/support/v7/view/StandaloneActionMode;->mCallback:Lflyme/support/v7/view/ActionMode$Callback;

    iget-object v1, p0, Lflyme/support/v7/view/StandaloneActionMode;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Lflyme/support/v7/view/ActionMode$Callback;->onPrepareActionMode(Lflyme/support/v7/view/ActionMode;Landroid/view/Menu;)Z

    return-void
.end method

.method public isTitleOptional()Z
    .registers 1

    .line 86
    iget-object p0, p0, Lflyme/support/v7/view/StandaloneActionMode;->mContextView:Lflyme/support/v7/widget/ActionBarContextView;

    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionBarContextView;->isTitleOptional()Z

    move-result p0

    return p0
.end method

.method public onMenuItemSelected(Lflyme/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 3

    .line 137
    iget-object p1, p0, Lflyme/support/v7/view/StandaloneActionMode;->mCallback:Lflyme/support/v7/view/ActionMode$Callback;

    invoke-interface {p1, p0, p2}, Lflyme/support/v7/view/ActionMode$Callback;->onActionItemClicked(Lflyme/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onMenuModeChange(Lflyme/support/v7/view/menu/MenuBuilder;)V
    .registers 2

    .line 156
    invoke-virtual {p0}, Lflyme/support/v7/view/StandaloneActionMode;->invalidate()V

    .line 157
    iget-object p0, p0, Lflyme/support/v7/view/StandaloneActionMode;->mContextView:Lflyme/support/v7/widget/ActionBarContextView;

    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionBarContextView;->showOverflowMenu()Z

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 3

    .line 91
    iget-object v0, p0, Lflyme/support/v7/view/StandaloneActionMode;->mContextView:Lflyme/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    if-eqz p1, :cond_d

    .line 92
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput-object v0, p0, Lflyme/support/v7/view/StandaloneActionMode;->mCustomView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setSubtitle(I)V
    .registers 3

    .line 75
    iget-object v0, p0, Lflyme/support/v7/view/StandaloneActionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lflyme/support/v7/view/StandaloneActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 65
    iget-object p0, p0, Lflyme/support/v7/view/StandaloneActionMode;->mContextView:Lflyme/support/v7/widget/ActionBarContextView;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(I)V
    .registers 3

    .line 70
    iget-object v0, p0, Lflyme/support/v7/view/StandaloneActionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lflyme/support/v7/view/StandaloneActionMode;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 60
    iget-object p0, p0, Lflyme/support/v7/view/StandaloneActionMode;->mContextView:Lflyme/support/v7/widget/ActionBarContextView;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .registers 2

    .line 80
    invoke-super {p0, p1}, Lflyme/support/v7/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 81
    iget-object p0, p0, Lflyme/support/v7/view/StandaloneActionMode;->mContextView:Lflyme/support/v7/widget/ActionBarContextView;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method
