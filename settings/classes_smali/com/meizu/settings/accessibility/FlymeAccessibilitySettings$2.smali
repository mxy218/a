.class Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings$2;
.super Ljava/lang/Object;
.source "FlymeAccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
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

    .line 473
    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings$2;->this$0:Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    .line 476
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings$2;->this$0:Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;

    invoke-static {p1}, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->access$200(Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;)Lcom/meizu/common/preference/SwitchPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings$2;->this$0:Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;

    invoke-static {p0}, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->access$100(Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;)Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "mz_fast_charge"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    invoke-virtual {p1, v0}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method
