.class Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings$3;
.super Ljava/lang/Object;
.source "FlymeAccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->createDialogOnCancelListener()Landroid/content/DialogInterface$OnCancelListener;
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

    .line 546
    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings$3;->this$0:Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    .line 550
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings$3;->this$0:Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;

    invoke-static {v0}, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->access$300(Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;)Landroid/content/DialogInterface;

    move-result-object v0

    if-ne p1, v0, :cond_12

    .line 551
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings$3;->this$0:Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;

    invoke-static {p0}, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->access$400(Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;)Lcom/meizu/common/preference/SwitchPreference;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    :cond_12
    return-void
.end method
