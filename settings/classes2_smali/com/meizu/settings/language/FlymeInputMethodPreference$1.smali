.class Lcom/meizu/settings/language/FlymeInputMethodPreference$1;
.super Ljava/lang/Object;
.source "FlymeInputMethodPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/language/FlymeInputMethodPreference;
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

    .line 73
    iput-object p1, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference$1;->this$0:Lcom/meizu/settings/language/FlymeInputMethodPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 76
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference$1;->this$0:Lcom/meizu/settings/language/FlymeInputMethodPreference;

    invoke-static {p0}, Lcom/meizu/settings/language/FlymeInputMethodPreference;->access$000(Lcom/meizu/settings/language/FlymeInputMethodPreference;)Lcom/meizu/settings/SettingsPreferenceFragment;

    move-result-object p1

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/CheckBoxPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    return-void
.end method
