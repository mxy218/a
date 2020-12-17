.class Lflyme/support/v7/view/menu/MenuDialogHelper;
.super Ljava/lang/Object;
.source "MenuDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lflyme/support/v7/view/menu/MenuPresenter$Callback;


# instance fields
.field private mDialog:Lflyme/support/v7/app/AlertDialog;

.field private mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

.field mPresenter:Lflyme/support/v7/view/menu/ListMenuPresenter;

.field private mPresenterCallback:Lflyme/support/v7/view/menu/MenuPresenter$Callback;


# direct methods
.method public constructor <init>(Lflyme/support/v7/view/menu/MenuBuilder;)V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lflyme/support/v7/view/menu/MenuDialogHelper;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 1

    .line 136
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuDialogHelper;->mDialog:Lflyme/support/v7/app/AlertDialog;

    if-eqz p0, :cond_7

    .line 137
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_7
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 165
    iget-object p1, p0, Lflyme/support/v7/view/menu/MenuDialogHelper;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuDialogHelper;->mPresenter:Lflyme/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {p0}, Lflyme/support/v7/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/view/menu/MenuItemImpl;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lflyme/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    return-void
.end method

.method public onCloseMenu(Lflyme/support/v7/view/menu/MenuBuilder;Z)V
    .registers 4

    if-nez p2, :cond_6

    .line 148
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuDialogHelper;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_9

    .line 149
    :cond_6
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuDialogHelper;->dismiss()V

    .line 151
    :cond_9
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuDialogHelper;->mPresenterCallback:Lflyme/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz p0, :cond_10

    .line 152
    invoke-interface {p0, p1, p2}, Lflyme/support/v7/view/menu/MenuPresenter$Callback;->onCloseMenu(Lflyme/support/v7/view/menu/MenuBuilder;Z)V

    :cond_10
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 143
    iget-object p1, p0, Lflyme/support/v7/view/menu/MenuDialogHelper;->mPresenter:Lflyme/support/v7/view/menu/ListMenuPresenter;

    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuDialogHelper;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lflyme/support/v7/view/menu/ListMenuPresenter;->onCloseMenu(Lflyme/support/v7/view/menu/MenuBuilder;Z)V

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6

    const/16 v0, 0x52

    if-eq p2, v0, :cond_7

    const/4 v0, 0x4

    if-ne p2, v0, :cond_5b

    .line 92
    :cond_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2c

    .line 93
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2c

    .line 94
    iget-object p1, p0, Lflyme/support/v7/view/menu/MenuDialogHelper;->mDialog:Lflyme/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_5b

    .line 96
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5b

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object p1

    if-eqz p1, :cond_5b

    .line 100
    invoke-virtual {p1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    return v1

    .line 105
    :cond_2c
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_5b

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 106
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuDialogHelper;->mDialog:Lflyme/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 108
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 110
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 111
    invoke-virtual {v0, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 112
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuDialogHelper;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p0, v1}, Lflyme/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 113
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return v1

    .line 122
    :cond_5b
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuDialogHelper;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p1}, Lflyme/support/v7/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p0

    return p0
.end method

.method public onOpenSubMenu(Lflyme/support/v7/view/menu/MenuBuilder;)Z
    .registers 2

    .line 158
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuDialogHelper;->mPresenterCallback:Lflyme/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz p0, :cond_9

    .line 159
    invoke-interface {p0, p1}, Lflyme/support/v7/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lflyme/support/v7/view/menu/MenuBuilder;)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public show(Landroid/os/IBinder;)V
    .registers 7

    .line 52
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuDialogHelper;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    .line 55
    new-instance v1, Lflyme/support/v7/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lflyme/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lflyme/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v2, Lflyme/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {v1}, Lflyme/support/v7/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lflyme/support/v7/appcompat/R$layout;->mz_list_menu_item_layout:I

    invoke-direct {v2, v3, v4}, Lflyme/support/v7/view/menu/ListMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lflyme/support/v7/view/menu/MenuDialogHelper;->mPresenter:Lflyme/support/v7/view/menu/ListMenuPresenter;

    .line 59
    iget-object v2, p0, Lflyme/support/v7/view/menu/MenuDialogHelper;->mPresenter:Lflyme/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {v2, p0}, Lflyme/support/v7/view/menu/ListMenuPresenter;->setCallback(Lflyme/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 60
    iget-object v2, p0, Lflyme/support/v7/view/menu/MenuDialogHelper;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    iget-object v3, p0, Lflyme/support/v7/view/menu/MenuDialogHelper;->mPresenter:Lflyme/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {v2, v3}, Lflyme/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Lflyme/support/v7/view/menu/MenuPresenter;)V

    .line 61
    iget-object v2, p0, Lflyme/support/v7/view/menu/MenuDialogHelper;->mPresenter:Lflyme/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {v2}, Lflyme/support/v7/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lflyme/support/v7/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lflyme/support/v7/app/AlertDialog$Builder;

    .line 64
    invoke-virtual {v0}, Lflyme/support/v7/view/menu/MenuBuilder;->getHeaderView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 67
    invoke-virtual {v1, v2}, Lflyme/support/v7/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Lflyme/support/v7/app/AlertDialog$Builder;

    goto :goto_45

    .line 70
    :cond_37
    invoke-virtual {v0}, Lflyme/support/v7/view/menu/MenuBuilder;->getHeaderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lflyme/support/v7/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lflyme/support/v7/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lflyme/support/v7/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lflyme/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lflyme/support/v7/app/AlertDialog$Builder;

    .line 74
    :goto_45
    invoke-virtual {v1, p0}, Lflyme/support/v7/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lflyme/support/v7/app/AlertDialog$Builder;

    .line 77
    invoke-virtual {v1}, Lflyme/support/v7/app/AlertDialog$Builder;->create()Lflyme/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lflyme/support/v7/view/menu/MenuDialogHelper;->mDialog:Lflyme/support/v7/app/AlertDialog;

    .line 78
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuDialogHelper;->mDialog:Lflyme/support/v7/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 80
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuDialogHelper;->mDialog:Lflyme/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x3eb

    .line 81
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eqz p1, :cond_65

    .line 83
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 85
    :cond_65
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x20000

    or-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 87
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuDialogHelper;->mDialog:Lflyme/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
