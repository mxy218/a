.class Lflyme/support/v7/app/PermissionDialogBuilder$1;
.super Ljava/lang/Object;
.source "PermissionDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 277
    iput-object p1, p0, Lflyme/support/v7/app/PermissionDialogBuilder$1;->this$0:Lflyme/support/v7/app/PermissionDialogBuilder;

    iput-object p2, p0, Lflyme/support/v7/app/PermissionDialogBuilder$1;->val$customView:Lflyme/support/v7/view/PermissionDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 280
    iget-object p2, p0, Lflyme/support/v7/app/PermissionDialogBuilder$1;->this$0:Lflyme/support/v7/app/PermissionDialogBuilder;

    invoke-static {p2}, Lflyme/support/v7/app/PermissionDialogBuilder;->access$000(Lflyme/support/v7/app/PermissionDialogBuilder;)Lflyme/support/v7/app/PermissionDialogBuilder$OnPermissionClickListener;

    move-result-object p2

    if-eqz p2, :cond_1c

    .line 281
    iget-object p2, p0, Lflyme/support/v7/app/PermissionDialogBuilder$1;->this$0:Lflyme/support/v7/app/PermissionDialogBuilder;

    invoke-static {p2}, Lflyme/support/v7/app/PermissionDialogBuilder;->access$000(Lflyme/support/v7/app/PermissionDialogBuilder;)Lflyme/support/v7/app/PermissionDialogBuilder$OnPermissionClickListener;

    move-result-object p2

    iget-object p0, p0, Lflyme/support/v7/app/PermissionDialogBuilder$1;->val$customView:Lflyme/support/v7/view/PermissionDialogView;

    invoke-virtual {p0}, Lflyme/support/v7/view/PermissionDialogView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    const/4 v0, 0x0

    invoke-interface {p2, p1, p0, v0}, Lflyme/support/v7/app/PermissionDialogBuilder$OnPermissionClickListener;->onPermissionClick(Landroid/content/DialogInterface;ZZ)V

    :cond_1c
    return-void
.end method
