.class Lflyme/support/v7/app/PermissionDialogBuilder$4;
.super Ljava/lang/Object;
.source "PermissionDialogBuilder.java"

# interfaces
.implements Lflyme/support/v7/app/AlertDialog$Builder$DialogFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/app/PermissionDialogBuilder;->create()Lflyme/support/v7/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lflyme/support/v7/app/AlertDialog$Builder$DialogFactory<",
        "Lflyme/support/v7/app/PermissionDialogBuilder$PermissionDialog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/app/PermissionDialogBuilder;


# direct methods
.method constructor <init>(Lflyme/support/v7/app/PermissionDialogBuilder;)V
    .registers 2

    .line 288
    iput-object p1, p0, Lflyme/support/v7/app/PermissionDialogBuilder$4;->this$0:Lflyme/support/v7/app/PermissionDialogBuilder;

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

    .line 288
    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/app/PermissionDialogBuilder$4;->newDialog(Landroid/content/Context;I)Lflyme/support/v7/app/PermissionDialogBuilder$PermissionDialog;

    move-result-object p0

    return-object p0
.end method

.method public newDialog(Landroid/content/Context;I)Lflyme/support/v7/app/PermissionDialogBuilder$PermissionDialog;
    .registers 5
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 291
    new-instance v0, Lflyme/support/v7/app/PermissionDialogBuilder$PermissionDialog;

    iget-object p0, p0, Lflyme/support/v7/app/PermissionDialogBuilder$4;->this$0:Lflyme/support/v7/app/PermissionDialogBuilder;

    invoke-static {p0}, Lflyme/support/v7/app/PermissionDialogBuilder;->access$000(Lflyme/support/v7/app/PermissionDialogBuilder;)Lflyme/support/v7/app/PermissionDialogBuilder$OnPermissionClickListener;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lflyme/support/v7/app/PermissionDialogBuilder$PermissionDialog;-><init>(Landroid/content/Context;ILflyme/support/v7/app/PermissionDialogBuilder$OnPermissionClickListener;Lflyme/support/v7/app/PermissionDialogBuilder$1;)V

    return-object v0
.end method
