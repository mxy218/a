.class Lcom/android/settings/notification/ZenRuleNameDialog$1;
.super Ljava/lang/Object;
.source "ZenRuleNameDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenRuleNameDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenRuleNameDialog;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$isNew:Z

.field final synthetic val$originalRuleName:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenRuleNameDialog;Landroid/widget/EditText;ZLjava/lang/CharSequence;)V
    .registers 5

    .line 91
    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleNameDialog$1;->this$0:Lcom/android/settings/notification/ZenRuleNameDialog;

    iput-object p2, p0, Lcom/android/settings/notification/ZenRuleNameDialog$1;->val$editText:Landroid/widget/EditText;

    iput-boolean p3, p0, Lcom/android/settings/notification/ZenRuleNameDialog$1;->val$isNew:Z

    iput-object p4, p0, Lcom/android/settings/notification/ZenRuleNameDialog$1;->val$originalRuleName:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 94
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleNameDialog$1;->this$0:Lcom/android/settings/notification/ZenRuleNameDialog;

    iget-object p2, p0, Lcom/android/settings/notification/ZenRuleNameDialog$1;->val$editText:Landroid/widget/EditText;

    invoke-static {p1, p2}, Lcom/android/settings/notification/ZenRuleNameDialog;->access$000(Lcom/android/settings/notification/ZenRuleNameDialog;Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_f

    return-void

    .line 98
    :cond_f
    iget-boolean p2, p0, Lcom/android/settings/notification/ZenRuleNameDialog$1;->val$isNew:Z

    if-nez p2, :cond_1e

    iget-object p2, p0, Lcom/android/settings/notification/ZenRuleNameDialog$1;->val$originalRuleName:Ljava/lang/CharSequence;

    if-eqz p2, :cond_1e

    .line 99
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1e

    return-void

    .line 102
    :cond_1e
    sget-object p2, Lcom/android/settings/notification/ZenRuleNameDialog;->mPositiveClickListener:Lcom/android/settings/notification/ZenRuleNameDialog$PositiveClickListener;

    iget-object p0, p0, Lcom/android/settings/notification/ZenRuleNameDialog$1;->this$0:Lcom/android/settings/notification/ZenRuleNameDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lcom/android/settings/notification/ZenRuleNameDialog$PositiveClickListener;->onOk(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    return-void
.end method
