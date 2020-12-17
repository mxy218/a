.class Lcom/meizu/settings/security/FlymeGuestModeSettings$12;
.super Ljava/lang/Object;
.source "FlymeGuestModeSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeGuestModeSettings;->showEnterGuestModePasswordDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

.field final synthetic val$inputLayout:Lcom/meizu/textinputlayout/TextInputLayout;

.field final synthetic val$positiveButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeGuestModeSettings;Landroid/widget/Button;Lcom/meizu/textinputlayout/TextInputLayout;)V
    .registers 4

    .line 647
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$12;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    iput-object p2, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$12;->val$positiveButton:Landroid/widget/Button;

    iput-object p3, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$12;->val$inputLayout:Lcom/meizu/textinputlayout/TextInputLayout;

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
    .registers 5

    .line 650
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_16

    .line 651
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$12;->val$positiveButton:Landroid/widget/Button;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2e

    .line 653
    :cond_16
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$12;->val$positiveButton:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 654
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$12;->val$inputLayout:Lcom/meizu/textinputlayout/TextInputLayout;

    invoke-virtual {p1}, Lcom/meizu/textinputlayout/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object p1

    .line 655
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2e

    .line 656
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$12;->val$inputLayout:Lcom/meizu/textinputlayout/TextInputLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/meizu/textinputlayout/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_2e
    :goto_2e
    return-void
.end method
