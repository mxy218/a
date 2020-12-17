.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$7;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .registers 2

    .line 654
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 657
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 658
    invoke-static {}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneStatusBarPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_20
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_128

    goto/16 :goto_cf

    :sswitch_2c
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_cf

    move p1, v3

    goto/16 :goto_d0

    :sswitch_37
    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_cf

    const/16 p1, 0x9

    goto/16 :goto_d0

    :sswitch_43
    const-string v0, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_cf

    const/4 p1, 0x6

    goto/16 :goto_d0

    :sswitch_4e
    const-string v0, "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_cf

    const/4 p1, 0x3

    goto/16 :goto_d0

    :sswitch_59
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_cf

    const/16 p1, 0xd

    goto/16 :goto_d0

    :sswitch_65
    const-string v0, "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_cf

    const/16 p1, 0xb

    goto/16 :goto_d0

    :sswitch_71
    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_cf

    const/16 p1, 0xc

    goto :goto_d0

    :sswitch_7c
    const-string v0, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_cf

    move p1, v1

    goto :goto_d0

    :sswitch_86
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_cf

    const/4 p1, 0x2

    goto :goto_d0

    :sswitch_90
    const-string v0, "flyme.intent.action.ICON_SWITCH_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_cf

    const/16 p1, 0xe

    goto :goto_d0

    :sswitch_9b
    const-string v0, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_cf

    const/4 p1, 0x4

    goto :goto_d0

    :sswitch_a5
    const-string v0, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_cf

    const/4 p1, 0x5

    goto :goto_d0

    :sswitch_af
    const-string v0, "android.btopp.intent.action.BT_OPP_DATA_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_cf

    const/16 p1, 0xa

    goto :goto_d0

    :sswitch_ba
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_cf

    const/16 p1, 0x8

    goto :goto_d0

    :sswitch_c5
    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_cf

    const/4 p1, 0x7

    goto :goto_d0

    :cond_cf
    :goto_cf
    move p1, v2

    :goto_d0
    packed-switch p1, :pswitch_data_166

    goto :goto_126

    .line 702
    :pswitch_d4  #0xe
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {p0, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$1900(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_126

    .line 697
    :pswitch_da  #0xd
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    const-string p1, "android.intent.extra.user_handle"

    .line 698
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 699
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$1800(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;IZ)V

    goto :goto_126

    .line 694
    :pswitch_eb  #0x8, 0x9, 0xa, 0xb, 0xc
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {p0, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$1700(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_126

    .line 685
    :pswitch_f1  #0x7
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$1600(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$1502(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;I)I

    .line 687
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {p0, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_126

    .line 679
    :pswitch_100  #0x4, 0x5, 0x6
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    goto :goto_126

    .line 673
    :pswitch_106  #0x3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    const-string p1, "android.telecom.intent.extra.CURRENT_TTY_MODE"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$1400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;I)V

    goto :goto_126

    :pswitch_112  #0x2
    const-string p1, "rebroadcastOnUnlock"

    .line 666
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_11b

    goto :goto_126

    .line 670
    :cond_11b
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {p0, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$1300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_126

    .line 662
    :pswitch_121  #0x0, 0x1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$1200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    :goto_126
    return-void

    nop

    :sswitch_data_128
    .sparse-switch
        -0x63ecb970 -> :sswitch_c5
        -0x5b36f014 -> :sswitch_ba
        -0x56ff44c2 -> :sswitch_af
        -0x49d08e2b -> :sswitch_a5
        -0x33813a72 -> :sswitch_9b
        -0x26efbb48 -> :sswitch_90
        -0xdb21ee7 -> :sswitch_86
        0x60418f4 -> :sswitch_7c
        0x2083ec2d -> :sswitch_71
        0x2287d448 -> :sswitch_65
        0x392cb822 -> :sswitch_59
        0x3eaa3ea6 -> :sswitch_4e
        0x3eac4465 -> :sswitch_43
        0x42f3be3f -> :sswitch_37
        0x7b621251 -> :sswitch_2c
    .end sparse-switch

    :pswitch_data_166
    .packed-switch 0x0
        :pswitch_121  #00000000
        :pswitch_121  #00000001
        :pswitch_112  #00000002
        :pswitch_106  #00000003
        :pswitch_100  #00000004
        :pswitch_100  #00000005
        :pswitch_100  #00000006
        :pswitch_f1  #00000007
        :pswitch_eb  #00000008
        :pswitch_eb  #00000009
        :pswitch_eb  #0000000a
        :pswitch_eb  #0000000b
        :pswitch_eb  #0000000c
        :pswitch_da  #0000000d
        :pswitch_d4  #0000000e
    .end packed-switch
.end method
