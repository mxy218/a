.class Lcom/meizu/settings/language/FlymeInputMethodPreference$2;
.super Ljava/lang/Object;
.source "FlymeInputMethodPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/language/FlymeInputMethodPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/language/FlymeInputMethodPreference;


# direct methods
.method constructor <init>(Lcom/meizu/settings/language/FlymeInputMethodPreference;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference$2;->this$0:Lcom/meizu/settings/language/FlymeInputMethodPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 132
    :try_start_0
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference$2;->this$0:Lcom/meizu/settings/language/FlymeInputMethodPreference;

    invoke-static {p1}, Lcom/meizu/settings/language/FlymeInputMethodPreference;->access$000(Lcom/meizu/settings/language/FlymeInputMethodPreference;)Lcom/meizu/settings/SettingsPreferenceFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference$2;->this$0:Lcom/meizu/settings/language/FlymeInputMethodPreference;

    invoke-static {v0}, Lcom/meizu/settings/language/FlymeInputMethodPreference;->access$100(Lcom/meizu/settings/language/FlymeInputMethodPreference;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_65

    :catch_10
    move-exception p1

    .line 134
    invoke-static {}, Lcom/meizu/settings/language/FlymeInputMethodPreference;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IME\'s Settings Activity Not Found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference$2;->this$0:Lcom/meizu/settings/language/FlymeInputMethodPreference;

    invoke-static {p1}, Lcom/meizu/settings/language/FlymeInputMethodPreference;->access$000(Lcom/meizu/settings/language/FlymeInputMethodPreference;)Lcom/meizu/settings/SettingsPreferenceFragment;

    move-result-object p1

    const v0, 0x7f12085f

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference$2;->this$0:Lcom/meizu/settings/language/FlymeInputMethodPreference;

    .line 137
    invoke-static {v4}, Lcom/meizu/settings/language/FlymeInputMethodPreference;->access$300(Lcom/meizu/settings/language/FlymeInputMethodPreference;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference$2;->this$0:Lcom/meizu/settings/language/FlymeInputMethodPreference;

    .line 138
    invoke-static {v5}, Lcom/meizu/settings/language/FlymeInputMethodPreference;->access$000(Lcom/meizu/settings/language/FlymeInputMethodPreference;)Lcom/meizu/settings/SettingsPreferenceFragment;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 137
    invoke-virtual {v4, v5}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    .line 135
    invoke-virtual {p1, v0, v2}, Landroid/preference/PreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 139
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference$2;->this$0:Lcom/meizu/settings/language/FlymeInputMethodPreference;

    .line 140
    invoke-static {p0}, Lcom/meizu/settings/language/FlymeInputMethodPreference;->access$000(Lcom/meizu/settings/language/FlymeInputMethodPreference;)Lcom/meizu/settings/SettingsPreferenceFragment;

    move-result-object p0

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    .line 139
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 140
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_65
    return-void
.end method
