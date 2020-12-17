.class Lcom/meizu/settings/SimNameEditTextPreference$1;
.super Ljava/lang/Object;
.source "SimNameEditTextPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/SimNameEditTextPreference;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/SimNameEditTextPreference;


# direct methods
.method constructor <init>(Lcom/meizu/settings/SimNameEditTextPreference;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/meizu/settings/SimNameEditTextPreference$1;->this$0:Lcom/meizu/settings/SimNameEditTextPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 51
    iget-object p0, p0, Lcom/meizu/settings/SimNameEditTextPreference$1;->this$0:Lcom/meizu/settings/SimNameEditTextPreference;

    invoke-static {p0}, Lcom/meizu/settings/SimNameEditTextPreference;->access$000(Lcom/meizu/settings/SimNameEditTextPreference;)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3b

    .line 53
    :cond_17
    iget-object v0, p0, Lcom/meizu/settings/SimNameEditTextPreference$1;->this$0:Lcom/meizu/settings/SimNameEditTextPreference;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/meizu/settings/SimNameEditTextPreference;->accept(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 54
    iget-object p0, p0, Lcom/meizu/settings/SimNameEditTextPreference$1;->this$0:Lcom/meizu/settings/SimNameEditTextPreference;

    invoke-static {p0}, Lcom/meizu/settings/SimNameEditTextPreference;->access$000(Lcom/meizu/settings/SimNameEditTextPreference;)Landroid/widget/Button;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3b

    .line 56
    :cond_32
    iget-object p0, p0, Lcom/meizu/settings/SimNameEditTextPreference$1;->this$0:Lcom/meizu/settings/SimNameEditTextPreference;

    invoke-static {p0}, Lcom/meizu/settings/SimNameEditTextPreference;->access$000(Lcom/meizu/settings/SimNameEditTextPreference;)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_3b
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
