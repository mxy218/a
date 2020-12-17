.class Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment$2;
.super Ljava/lang/Object;
.source "FlymeSmartTouchFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment$2;->this$0:Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    .line 106
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment$2;->this$0:Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;

    invoke-static {p1}, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->access$100(Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;)Lcom/meizu/common/preference/SwitchPreference;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 107
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment$2;->this$0:Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;

    invoke-static {p1}, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->access$000(Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;)Landroid/content/ContentResolver;

    move-result-object p1

    .line 109
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "mz_smart_touch_switch"

    .line 107
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 110
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment$2;->this$0:Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;

    invoke-static {p1}, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->access$300(Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;)V

    .line 111
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment$2;->this$0:Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;

    invoke-static {p0}, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->access$200(Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;)V

    const/4 p0, 0x0

    return p0
.end method
