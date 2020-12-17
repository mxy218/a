.class public Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;
.super Lflyme/support/v7/app/AlertDialog$Builder;
.source "ShowAtBottomAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/app/ShowAtBottomAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 54
    sget v0, Lflyme/support/v7/appcompat/R$style;->Theme_Flyme_AppCompat_Light_Dialog_Alert_ShowAtBottom:I

    invoke-direct {p0, p1, v0}, Lflyme/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Lflyme/support/v7/app/AlertDialog;
    .registers 1

    .line 51
    invoke-virtual {p0}, Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;->create()Lflyme/support/v7/app/ShowAtBottomAlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public create()Lflyme/support/v7/app/ShowAtBottomAlertDialog;
    .registers 3

    .line 123
    sget v0, Lflyme/support/v7/appcompat/R$string;->mc_cancel:I

    new-instance v1, Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder$1;

    invoke-direct {v1, p0}, Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder$1;-><init>(Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;)V

    invoke-virtual {p0, v0, v1}, Lflyme/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lflyme/support/v7/app/AlertDialog$Builder;

    .line 129
    new-instance v0, Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder$2;

    invoke-direct {v0, p0}, Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder$2;-><init>(Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;)V

    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AlertDialog$Builder;->create(Lflyme/support/v7/app/AlertDialog$Builder$DialogFactory;)Lflyme/support/v7/app/AlertDialog;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/app/ShowAtBottomAlertDialog;

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Z[Landroid/content/res/ColorStateList;)Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;
    .registers 5

    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Lflyme/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Z[Landroid/content/res/ColorStateList;)Lflyme/support/v7/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setNavigationBarColor(I)Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;
    .registers 2
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public bridge synthetic setTitle(Ljava/lang/CharSequence;)Lflyme/support/v7/app/AlertDialog$Builder;
    .registers 2
    .param p1  # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 51
    invoke-virtual {p0, p1}, Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;

    return-object p0
.end method

.method public setTitle(I)Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;
    .registers 2

    .line 75
    invoke-super {p0, p1}, Lflyme/support/v7/app/AlertDialog$Builder;->setTitle(I)Lflyme/support/v7/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;
    .registers 2
    .param p1  # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 81
    invoke-super {p0, p1}, Lflyme/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lflyme/support/v7/app/AlertDialog$Builder;

    return-object p0
.end method
