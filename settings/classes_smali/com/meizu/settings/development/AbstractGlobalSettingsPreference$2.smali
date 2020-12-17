.class Lcom/meizu/settings/development/AbstractGlobalSettingsPreference$2;
.super Ljava/lang/Object;
.source "AbstractGlobalSettingsPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->showDialog(Landroidx/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;


# direct methods
.method constructor <init>(Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference$2;->this$0:Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 3

    .line 91
    iget-object p1, p0, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference$2;->this$0:Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;

    invoke-static {p1}, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->access$000(Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 92
    iget-object p1, p0, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference$2;->this$0:Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;

    invoke-static {p1}, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->access$200(Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 94
    iget-object p0, p0, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference$2;->this$0:Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;

    invoke-static {p0}, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->access$000(Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;)Landroid/widget/EditText;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
