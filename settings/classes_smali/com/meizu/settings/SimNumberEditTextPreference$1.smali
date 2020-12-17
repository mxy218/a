.class Lcom/meizu/settings/SimNumberEditTextPreference$1;
.super Ljava/lang/Object;
.source "SimNumberEditTextPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/SimNumberEditTextPreference;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/SimNumberEditTextPreference;


# direct methods
.method constructor <init>(Lcom/meizu/settings/SimNumberEditTextPreference;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/meizu/settings/SimNumberEditTextPreference$1;->this$0:Lcom/meizu/settings/SimNumberEditTextPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 51
    iget-object p0, p0, Lcom/meizu/settings/SimNumberEditTextPreference$1;->this$0:Lcom/meizu/settings/SimNumberEditTextPreference;

    invoke-static {p0}, Lcom/meizu/settings/SimNumberEditTextPreference;->access$000(Lcom/meizu/settings/SimNumberEditTextPreference;)Landroid/widget/Button;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_21

    .line 53
    :cond_17
    iget-object p0, p0, Lcom/meizu/settings/SimNumberEditTextPreference$1;->this$0:Lcom/meizu/settings/SimNumberEditTextPreference;

    invoke-static {p0}, Lcom/meizu/settings/SimNumberEditTextPreference;->access$000(Lcom/meizu/settings/SimNumberEditTextPreference;)Landroid/widget/Button;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_21
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
