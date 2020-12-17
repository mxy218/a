.class Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings$5;
.super Landroid/content/BroadcastReceiver;
.source "FlymeAccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;
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

    .line 689
    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings$5;->this$0:Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const-string p1, "AccessibilitySettings"

    const-string v0, "mBatteryInfoReceiver onReceive:"

    .line 693
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_a

    return-void

    .line 697
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 698
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_42

    const-string/jumbo p1, "plugged"

    .line 699
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    const-string/jumbo v1, "status"

    .line 700
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 702
    iget-object v4, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings$5;->this$0:Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;

    invoke-static {v4, p2}, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->access$600(Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;Landroid/content/Intent;)V

    if-ne v2, v1, :cond_37

    const/4 p2, 0x4

    if-ne p2, p1, :cond_37

    .line 704
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings$5;->this$0:Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;

    invoke-static {p1, v0}, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->access$702(Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;Z)Z

    goto :goto_3c

    .line 706
    :cond_37
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings$5;->this$0:Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;

    invoke-static {p1, v3}, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->access$702(Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;Z)Z

    .line 708
    :goto_3c
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings$5;->this$0:Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;

    invoke-static {p0}, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->access$800(Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;)Z

    goto :goto_a4

    :cond_42
    const-string v1, "android.intent.action.BATTERY_REVERSE_CHANGED"

    .line 709
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    const-string/jumbo v0, "stop_reason"

    .line 710
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "reverse_status"

    .line 711
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reverse status is -------"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; stopReason is ----------"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_a4

    .line 714
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings$5;->this$0:Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;

    invoke-static {p1}, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->access$900(Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;)Lcom/meizu/common/preference/SwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_a4

    .line 715
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings$5;->this$0:Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;

    invoke-static {p1}, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->access$900(Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;)Lcom/meizu/common/preference/SwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    if-ne v2, v0, :cond_92

    .line 717
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings$5;->this$0:Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;

    invoke-static {p1}, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->access$900(Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;)Lcom/meizu/common/preference/SwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 720
    :cond_92
    :try_start_92
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings$5;->this$0:Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;

    invoke-static {p0}, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;->access$1000(Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;)Lmeizu/os/IDeviceControlService;

    move-result-object p0

    const-string p1, "/sys/class/meizu/wireless/reverse_chg_enable"

    const-string p2, "0"

    invoke-interface {p0, p1, p2}, Lmeizu/os/IDeviceControlService;->writeNode(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catch Landroid/os/RemoteException; {:try_start_92 .. :try_end_9f} :catch_a0

    goto :goto_a4

    :catch_a0
    move-exception p0

    .line 722
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_a4
    :goto_a4
    return-void
.end method
