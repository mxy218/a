.class Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$13;
.super Ljava/lang/Object;
.source "FlymeConfirmPasswordFragment.java"

# interfaces
.implements Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->resetPasswordView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)V
    .registers 2

    .line 903
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$13;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputShownChanged(Z)V
    .registers 3

    const/16 v0, 0x8

    if-eqz p1, :cond_31

    .line 907
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$13;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$800(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Z

    move-result p1

    if-eqz p1, :cond_84

    .line 908
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$13;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$1900(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Z

    move-result p1

    if-nez p1, :cond_1d

    .line 909
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$13;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$2000(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    move-result-object p1

    invoke-interface {p1}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->endVerify()V

    .line 911
    :cond_1d
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$13;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$2100(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$13;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$1900(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Z

    move-result p0

    if-eqz p0, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_84

    .line 914
    :cond_31
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$13;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$2100(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 915
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$13;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$800(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Z

    move-result p1

    if-eqz p1, :cond_84

    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$13;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$2200(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Z

    move-result p1

    if-nez p1, :cond_84

    .line 916
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$13;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$1800(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_6c

    .line 918
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 919
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6c

    .line 920
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$13;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$1800(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Landroid/widget/EditText;

    move-result-object p1

    const v0, 0x7f121638

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 923
    :cond_6c
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$13;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$1800(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 924
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$13;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$2000(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$13;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$600(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Landroid/os/Handler;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->startVerify(Landroid/os/Handler;)V

    :cond_84
    :goto_84
    return-void
.end method
