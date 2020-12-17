.class Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$3;
.super Ljava/lang/Object;
.source "FlymeFingerprintManagementFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->showFingerprintNameDialog(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;

.field final synthetic val$inputLayout:Lcom/meizu/textinputlayout/TextInputLayout;


# direct methods
.method constructor <init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;Lcom/meizu/textinputlayout/TextInputLayout;)V
    .registers 3

    .line 835
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$3;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;

    iput-object p2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$3;->val$inputLayout:Lcom/meizu/textinputlayout/TextInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6

    .line 838
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 839
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    const/4 p4, 0x0

    const v0, 0x1020019

    if-lez p3, :cond_80

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_80

    const-string p3, "null"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_80

    .line 840
    iget-object p2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$3;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;

    iget-object p2, p2, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->accept(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 841
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$3;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;

    iget-object p1, p1, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$2400(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Landroid/app/AlertDialog;

    move-result-object p1

    .line 842
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const/4 p2, 0x1

    .line 843
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 844
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$3;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;

    iget-object p1, p1, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$3;->val$inputLayout:Lcom/meizu/textinputlayout/TextInputLayout;

    invoke-static {p1, p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$2600(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;Lcom/meizu/textinputlayout/TextInputLayout;)V

    goto :goto_9a

    .line 846
    :cond_4e
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$3;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;

    iget-object p1, p1, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$2400(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Landroid/app/AlertDialog;

    move-result-object p1

    .line 847
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 848
    invoke-virtual {p1, p4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 849
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$3;->val$inputLayout:Lcom/meizu/textinputlayout/TextInputLayout;

    invoke-virtual {p1}, Lcom/meizu/textinputlayout/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9a

    .line 850
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$3;->val$inputLayout:Lcom/meizu/textinputlayout/TextInputLayout;

    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$3;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;

    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$600(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Landroid/app/Activity;

    move-result-object p0

    const p2, 0x7f121635

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/meizu/textinputlayout/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_9a

    .line 854
    :cond_80
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$3;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;

    iget-object p1, p1, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$2400(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Landroid/app/AlertDialog;

    move-result-object p1

    .line 855
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 856
    invoke-virtual {p1, p4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 857
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$3;->this$1:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;

    iget-object p1, p1, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$FingerprintAdapter$3;->val$inputLayout:Lcom/meizu/textinputlayout/TextInputLayout;

    invoke-static {p1, p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$2600(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;Lcom/meizu/textinputlayout/TextInputLayout;)V

    :cond_9a
    :goto_9a
    return-void
.end method
