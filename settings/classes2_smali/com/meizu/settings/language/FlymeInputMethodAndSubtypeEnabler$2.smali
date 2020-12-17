.class Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler$2;
.super Ljava/lang/Object;
.source "FlymeInputMethodAndSubtypeEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;

.field final synthetic val$chkPref:Landroid/preference/CheckBoxPreference;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V
    .registers 4

    .line 170
    iput-object p1, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler$2;->this$0:Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;

    iput-object p2, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler$2;->val$chkPref:Landroid/preference/CheckBoxPreference;

    iput-object p3, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler$2;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 173
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler$2;->val$chkPref:Landroid/preference/CheckBoxPreference;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 174
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler$2;->this$0:Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;

    .line 176
    invoke-static {p1}, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->access$000(Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler$2;->val$id:Ljava/lang/String;

    .line 174
    invoke-static {p1, v0, p0, p2}, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeUtil;->setSubtypesPreferenceEnabled(Lcom/meizu/settings/SettingsPreferenceFragment;Ljava/util/List;Ljava/lang/String;Z)V

    return-void
.end method
