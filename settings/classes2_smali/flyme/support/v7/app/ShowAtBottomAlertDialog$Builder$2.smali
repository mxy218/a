.class Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder$2;
.super Ljava/lang/Object;
.source "ShowAtBottomAlertDialog.java"

# interfaces
.implements Lflyme/support/v7/app/AlertDialog$Builder$DialogFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;->create()Lflyme/support/v7/app/ShowAtBottomAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lflyme/support/v7/app/AlertDialog$Builder$DialogFactory<",
        "Lflyme/support/v7/app/ShowAtBottomAlertDialog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;


# direct methods
.method constructor <init>(Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder$2;->this$0:Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic newDialog(Landroid/content/Context;I)Lflyme/support/v7/app/AlertDialog;
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 129
    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder$2;->newDialog(Landroid/content/Context;I)Lflyme/support/v7/app/ShowAtBottomAlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public newDialog(Landroid/content/Context;I)Lflyme/support/v7/app/ShowAtBottomAlertDialog;
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 132
    new-instance p0, Lflyme/support/v7/app/ShowAtBottomAlertDialog;

    invoke-direct {p0, p1, p2}, Lflyme/support/v7/app/ShowAtBottomAlertDialog;-><init>(Landroid/content/Context;I)V

    return-object p0
.end method
