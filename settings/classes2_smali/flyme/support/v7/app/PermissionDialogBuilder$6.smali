.class Lflyme/support/v7/app/PermissionDialogBuilder$6;
.super Ljava/lang/Object;
.source "PermissionDialogBuilder.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

.field final synthetic val$dialog:Lflyme/support/v7/app/PermissionDialogBuilder$PermissionDialog;


# direct methods
.method constructor <init>(Lflyme/support/v7/app/PermissionDialogBuilder;Lflyme/support/v7/app/PermissionDialogBuilder$PermissionDialog;)V
    .registers 3

    .line 305
    iput-object p1, p0, Lflyme/support/v7/app/PermissionDialogBuilder$6;->this$0:Lflyme/support/v7/app/PermissionDialogBuilder;

    iput-object p2, p0, Lflyme/support/v7/app/PermissionDialogBuilder$6;->val$dialog:Lflyme/support/v7/app/PermissionDialogBuilder$PermissionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 308
    iget-object p0, p0, Lflyme/support/v7/app/PermissionDialogBuilder$6;->val$dialog:Lflyme/support/v7/app/PermissionDialogBuilder$PermissionDialog;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lflyme/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
