.class Lflyme/support/v7/app/PermissionDialogBuilder$3;
.super Ljava/lang/Object;
.source "PermissionDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/app/PermissionDialogBuilder;->create()Lflyme/support/v7/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/app/PermissionDialogBuilder;

.field final synthetic val$customView:Lflyme/support/v7/view/PermissionDialogView;


# direct methods
.method constructor <init>(Lflyme/support/v7/app/PermissionDialogBuilder;Lflyme/support/v7/view/PermissionDialogView;)V
    .registers 3

    .line 261
    iput-object p1, p0, Lflyme/support/v7/app/PermissionDialogBuilder$3;->this$0:Lflyme/support/v7/app/PermissionDialogBuilder;

    iput-object p2, p0, Lflyme/support/v7/app/PermissionDialogBuilder$3;->val$customView:Lflyme/support/v7/view/PermissionDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    .line 264
    iget-object v0, p0, Lflyme/support/v7/app/PermissionDialogBuilder$3;->this$0:Lflyme/support/v7/app/PermissionDialogBuilder;

    invoke-static {v0}, Lflyme/support/v7/app/PermissionDialogBuilder;->access$000(Lflyme/support/v7/app/PermissionDialogBuilder;)Lflyme/support/v7/app/PermissionDialogBuilder$OnPermissionClickListener;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 265
    iget-object v0, p0, Lflyme/support/v7/app/PermissionDialogBuilder$3;->this$0:Lflyme/support/v7/app/PermissionDialogBuilder;

    invoke-static {v0}, Lflyme/support/v7/app/PermissionDialogBuilder;->access$000(Lflyme/support/v7/app/PermissionDialogBuilder;)Lflyme/support/v7/app/PermissionDialogBuilder$OnPermissionClickListener;

    move-result-object v0

    iget-object p0, p0, Lflyme/support/v7/app/PermissionDialogBuilder$3;->val$customView:Lflyme/support/v7/view/PermissionDialogView;

    invoke-virtual {p0}, Lflyme/support/v7/view/PermissionDialogView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p0, v1}, Lflyme/support/v7/app/PermissionDialogBuilder$OnPermissionClickListener;->onPermissionClick(Landroid/content/DialogInterface;ZZ)V

    :cond_1c
    return-void
.end method
