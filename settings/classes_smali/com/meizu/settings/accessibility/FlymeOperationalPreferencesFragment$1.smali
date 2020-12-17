.class Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment$1;
.super Ljava/lang/Object;
.source "FlymeOperationalPreferencesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;)V
    .registers 2

    .line 309
    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment$1;->this$0:Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 312
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment$1;->this$0:Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;

    invoke-static {p0}, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->access$000(Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;)Lcom/meizu/common/preference/SwitchPreference;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    return-void
.end method
