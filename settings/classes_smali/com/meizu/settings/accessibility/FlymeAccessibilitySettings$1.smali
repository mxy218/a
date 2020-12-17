.class Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings$1;
.super Ljava/lang/Object;
.source "FlymeAccessibilitySettings.java"

# interfaces
.implements Lcom/meizu/settings/utils/EarphonePlugedListenerHelper$OnEarphoneStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->initEarphonePlugedListenerHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;)V
    .registers 2

    .line 302
    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings$1;->this$0:Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEarphoneStateChanged(Z)V
    .registers 4

    if-eqz p1, :cond_2c

    .line 306
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings$1;->this$0:Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings$1;->this$0:Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;

    invoke-static {v0}, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->access$000(Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;)Lcom/meizu/common/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 307
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings$1;->this$0:Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;

    invoke-static {p1}, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->access$000(Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;)Lcom/meizu/common/preference/SwitchPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings$1;->this$0:Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;

    invoke-static {p0}, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->access$100(Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;)Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "earphone_feedback"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_27

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    invoke-virtual {p1, v0}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_3b

    .line 310
    :cond_2c
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings$1;->this$0:Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings$1;->this$0:Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;

    invoke-static {p0}, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->access$000(Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;)Lcom/meizu/common/preference/SwitchPreference;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_3b
    return-void
.end method
