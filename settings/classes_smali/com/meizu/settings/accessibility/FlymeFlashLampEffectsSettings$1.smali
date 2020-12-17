.class Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings$1;
.super Landroid/database/ContentObserver;
.source "FlymeFlashLampEffectsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;Landroid/os/Handler;)V
    .registers 3

    .line 77
    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings$1;->this$0:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 7

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onChange selfChange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " uri = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FlymeFlashLampEffectsSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings$1;->this$0:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;

    invoke-static {p1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->access$000(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "flashlamp_effects_switch"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_51

    .line 84
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings$1;->this$0:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;

    invoke-static {p1, v0, v2}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->access$100(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_38

    goto :goto_39

    :cond_38
    move v1, v2

    .line 86
    :goto_39
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings$1;->this$0:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;

    invoke-static {p1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->access$200(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;)Lcom/meizu/common/preference/SwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 87
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings$1;->this$0:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;

    invoke-static {p0}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->access$200(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;)Lcom/meizu/common/preference/SwitchPreference;

    move-result-object p1

    invoke-virtual {p1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->access$300(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;Z)V

    goto/16 :goto_133

    .line 88
    :cond_51
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings$1;->this$0:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;

    invoke-static {p1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->access$400(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_133

    .line 89
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings$1;->this$0:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;

    const-string p2, "flashlamp_effects_incomming_call"

    invoke-static {p1, p2, v2}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->access$100(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_69

    move p1, v1

    goto :goto_6a

    :cond_69
    move p1, v2

    .line 91
    :goto_6a
    iget-object p2, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings$1;->this$0:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;

    invoke-static {p2, v0, v2}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->access$100(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v1, :cond_74

    move p2, v1

    goto :goto_75

    :cond_74
    move p2, v2

    :goto_75
    const-string v3, "flashlamp_effects_incomming_call_check"

    if-nez p2, :cond_101

    if-eqz p1, :cond_101

    .line 95
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings$1;->this$0:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;

    invoke-static {p1, v0, v1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->access$500(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;Ljava/lang/String;I)V

    .line 96
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings$1;->this$0:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;

    invoke-static {p1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->access$200(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;)Lcom/meizu/common/preference/SwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 97
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings$1;->this$0:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;

    invoke-static {p1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->access$200(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;)Lcom/meizu/common/preference/SwitchPreference;

    move-result-object p2

    invoke-virtual {p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->access$300(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;Z)V

    .line 99
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings$1;->this$0:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;

    invoke-static {p1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->access$600(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 100
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings$1;->this$0:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;

    invoke-static {p1, v3, v1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->access$500(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;Ljava/lang/String;I)V

    .line 102
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings$1;->this$0:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;

    invoke-static {p1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->access$700(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 103
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings$1;->this$0:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;

    const-string p2, "flashlamp_effects_alarm"

    invoke-static {p1, p2, v2}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->access$500(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;Ljava/lang/String;I)V

    .line 104
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings$1;->this$0:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;

    const-string p2, "flashlamp_effects_alarm_check"

    invoke-static {p1, p2, v2}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->access$500(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;Ljava/lang/String;I)V

    .line 106
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings$1;->this$0:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;

    invoke-static {p1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->access$800(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 107
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings$1;->this$0:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;

    const-string p2, "flashlamp_effects_send_sms"

    invoke-static {p1, p2, v2}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->access$500(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;Ljava/lang/String;I)V

    .line 108
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings$1;->this$0:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;

    const-string p2, "flashlamp_effects_send_sms_check"

    invoke-static {p1, p2, v2}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->access$500(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;Ljava/lang/String;I)V

    .line 110
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings$1;->this$0:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;

    invoke-static {p1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->access$900(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 111
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings$1;->this$0:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;

    const-string p2, "flashlamp_effects_receive_sms"

    invoke-static {p1, p2, v2}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->access$500(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;Ljava/lang/String;I)V

    .line 112
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings$1;->this$0:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;

    const-string p2, "flashlamp_effects_receive_sms_check"

    invoke-static {p1, p2, v2}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->access$500(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;Ljava/lang/String;I)V

    .line 114
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings$1;->this$0:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;

    invoke-static {p1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->access$1000(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 115
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings$1;->this$0:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;

    const-string p2, "flashlamp_effects_red_envelope"

    invoke-static {p1, p2, v2}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->access$500(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;Ljava/lang/String;I)V

    .line 116
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings$1;->this$0:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;

    const-string p1, "flashlamp_effects_red_envelope_check"

    invoke-static {p0, p1, v2}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->access$500(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;Ljava/lang/String;I)V

    goto :goto_133

    :cond_101
    if-eqz p2, :cond_133

    .line 118
    iget-object p2, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings$1;->this$0:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;

    invoke-static {p2, v3, v2}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->access$100(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v1, :cond_10d

    move p2, v1

    goto :goto_10e

    :cond_10d
    move p2, v2

    :goto_10e
    if-nez p1, :cond_121

    if-eqz p2, :cond_121

    .line 122
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings$1;->this$0:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;

    invoke-static {p1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->access$600(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 123
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings$1;->this$0:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;

    invoke-static {p0, v3, v2}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->access$500(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;Ljava/lang/String;I)V

    goto :goto_133

    :cond_121
    if-eqz p1, :cond_133

    if-nez p2, :cond_133

    .line 125
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings$1;->this$0:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;

    invoke-static {p1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->access$600(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 126
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings$1;->this$0:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;

    invoke-static {p0, v3, v1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->access$500(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;Ljava/lang/String;I)V

    :cond_133
    :goto_133
    return-void
.end method
