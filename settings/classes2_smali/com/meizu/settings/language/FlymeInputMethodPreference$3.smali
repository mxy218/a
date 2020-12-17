.class Lcom/meizu/settings/language/FlymeInputMethodPreference$3;
.super Ljava/lang/Object;
.source "FlymeInputMethodPreference.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

.field final synthetic val$imiId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/settings/language/FlymeInputMethodPreference;Ljava/lang/String;)V
    .registers 3

    .line 147
    iput-object p1, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference$3;->this$0:Lcom/meizu/settings/language/FlymeInputMethodPreference;

    iput-object p2, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference$3;->val$imiId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 4

    .line 150
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 151
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference$3;->val$imiId:Ljava/lang/String;

    const-string v1, "input_method_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference$3;->this$0:Lcom/meizu/settings/language/FlymeInputMethodPreference;

    invoke-static {p0}, Lcom/meizu/settings/language/FlymeInputMethodPreference;->access$000(Lcom/meizu/settings/language/FlymeInputMethodPreference;)Lcom/meizu/settings/SettingsPreferenceFragment;

    move-result-object p0

    const-class v0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/meizu/settings/language/FlymeInputMethodPreference;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    const/4 p0, 0x1

    return p0
.end method
