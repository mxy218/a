.class public Lflyme/support/v7/app/AlertDialog;
.super Lflyme/support/v7/app/AppCompatDialog;
.source "AlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/app/AlertDialog$Builder;
    }
.end annotation


# instance fields
.field final mAlert:Lflyme/support/v7/app/AlertController;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 81
    invoke-static {p1, p2}, Lflyme/support/v7/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lflyme/support/v7/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 82
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lflyme/support/v7/app/AlertDialog;->create(Landroid/content/Context;Lflyme/support/v7/app/AppCompatDialog;Landroid/view/Window;)Lflyme/support/v7/app/AlertController;

    move-result-object p1

    iput-object p1, p0, Lflyme/support/v7/app/AlertDialog;->mAlert:Lflyme/support/v7/app/AlertController;

    return-void
.end method

.method public static final create(Landroid/content/Context;Lflyme/support/v7/app/AppCompatDialog;Landroid/view/Window;)Lflyme/support/v7/app/AlertController;
    .registers 7

    .line 87
    sget-object v0, Lflyme/support/v7/appcompat/R$styleable;->AlertDialog:[I

    sget v1, Lflyme/support/v7/appcompat/R$attr;->alertDialogStyle:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 88
    sget v1, Lflyme/support/v7/appcompat/R$styleable;->AlertDialog_controllerType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 89
    sget v3, Lflyme/support/v7/appcompat/R$styleable;->AlertDialog_android_layout:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 90
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    sget v0, Lflyme/support/v7/appcompat/R$layout;->mz_alert_dialog_appcompat:I

    const/4 v3, 0x1

    if-ne v2, v0, :cond_1f

    move v1, v3

    :cond_1f
    if-eq v1, v3, :cond_27

    .line 100
    new-instance v0, Lflyme/support/v7/app/AlertController;

    invoke-direct {v0, p0, p1, p2}, Lflyme/support/v7/app/AlertController;-><init>(Landroid/content/Context;Lflyme/support/v7/app/AppCompatDialog;Landroid/view/Window;)V

    return-object v0

    .line 97
    :cond_27
    new-instance v0, Lflyme/support/v7/app/FlymeAlertController;

    invoke-direct {v0, p0, p1, p2}, Lflyme/support/v7/app/FlymeAlertController;-><init>(Landroid/content/Context;Lflyme/support/v7/app/AppCompatDialog;Landroid/view/Window;)V

    return-object v0
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .registers 4
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-lt v0, v1, :cond_8

    return p1

    .line 115
    :cond_8
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v0, Lflyme/support/v7/appcompat/R$attr;->alertDialogTheme:I

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 117
    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .registers 2

    .line 132
    iget-object p0, p0, Lflyme/support/v7/app/AlertDialog;->mAlert:Lflyme/support/v7/app/AlertController;

    invoke-virtual {p0, p1}, Lflyme/support/v7/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 279
    invoke-super {p0, p1}, Lflyme/support/v7/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    .line 280
    iget-object p0, p0, Lflyme/support/v7/app/AlertDialog;->mAlert:Lflyme/support/v7/app/AlertController;

    invoke-virtual {p0}, Lflyme/support/v7/app/AlertController;->installContent()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 285
    iget-object v0, p0, Lflyme/support/v7/app/AlertDialog;->mAlert:Lflyme/support/v7/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lflyme/support/v7/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 288
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 293
    iget-object v0, p0, Lflyme/support/v7/app/AlertDialog;->mAlert:Lflyme/support/v7/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lflyme/support/v7/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 296
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public setCustomPaddingRule(IIII)V
    .registers 5

    .line 1088
    iget-object p0, p0, Lflyme/support/v7/app/AlertDialog;->mAlert:Lflyme/support/v7/app/AlertController;

    invoke-virtual {p0, p1, p2, p3, p4}, Lflyme/support/v7/app/AlertController;->setCustomPaddingRule(IIII)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 146
    invoke-super {p0, p1}, Lflyme/support/v7/app/AppCompatDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 147
    iget-object p0, p0, Lflyme/support/v7/app/AlertDialog;->mAlert:Lflyme/support/v7/app/AlertController;

    invoke-virtual {p0, p1}, Lflyme/support/v7/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
