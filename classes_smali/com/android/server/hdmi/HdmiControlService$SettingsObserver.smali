.class Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "HdmiControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/os/Handler;)V
    .registers 3

    .line 589
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 590
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 591
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 6

    .line 596
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 597
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    move-result p2

    .line 598
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_12e

    :cond_12
    goto :goto_63

    :sswitch_13
    const-string v1, "hdmi_control_auto_device_off_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x2

    goto :goto_64

    :sswitch_1d
    const-string v1, "hdmi_control_auto_wakeup_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move v1, v0

    goto :goto_64

    :sswitch_27
    const-string v1, "mhl_power_charge_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x6

    goto :goto_64

    :sswitch_31
    const-string v1, "mhl_input_switching_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x5

    goto :goto_64

    :sswitch_3b
    const-string v1, "hdmi_system_audio_control_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x3

    goto :goto_64

    :sswitch_45
    const-string v1, "device_name"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x7

    goto :goto_64

    :sswitch_4f
    const-string v1, "hdmi_cec_switch_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x4

    goto :goto_64

    :sswitch_59
    const-string v1, "hdmi_control_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    goto :goto_64

    :goto_63
    const/4 v1, -0x1

    :goto_64
    const-string v2, "HdmiControlService"

    packed-switch v1, :pswitch_data_150

    goto/16 :goto_12d

    .line 647
    :pswitch_6b  #0x7
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->readStringSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 648
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p2, p1}, Lcom/android/server/hdmi/HdmiControlService;->access$1400(Lcom/android/server/hdmi/HdmiControlService;Ljava/lang/String;)V

    goto/16 :goto_12d

    .line 644
    :pswitch_7a  #0x6
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->access$1300(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    move-result-object p1

    const/16 v0, 0x66

    invoke-static {p2}, Lcom/android/server/hdmi/HdmiControlService;->access$1200(Z)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    .line 645
    goto/16 :goto_12d

    .line 641
    :pswitch_8b  #0x5
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->setMhlInputChangeEnabled(Z)V

    .line 642
    goto/16 :goto_12d

    .line 631
    :pswitch_92  #0x4
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->isAudioSystemDevice()Z

    move-result p1

    if-eqz p1, :cond_12d

    .line 632
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object p1

    if-nez p1, :cond_a9

    .line 633
    const-string p1, "Switch device has not registered yet. Can\'t turn routing on."

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    goto/16 :goto_12d

    .line 637
    :cond_a9
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setRoutingControlFeatureEnables(Z)V

    goto/16 :goto_12d

    .line 618
    :pswitch_b4  #0x3
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result p1

    if-eqz p1, :cond_c5

    .line 619
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioControlFeatureEnabled(Z)V

    .line 621
    :cond_c5
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->isAudioSystemDevice()Z

    move-result p1

    if-eqz p1, :cond_12d

    .line 622
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object p1

    if-nez p1, :cond_db

    .line 623
    const-string p1, "Audio System device has not registered yet. Can\'t turn system audio mode on."

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    goto :goto_12d

    .line 627
    :cond_db
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->onSystemAduioControlFeatureSupportChanged(Z)V

    goto :goto_12d

    .line 609
    :pswitch_e5  #0x2
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->access$1000(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_ef
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 610
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$1100(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    .line 611
    if-eqz v0, :cond_10e

    .line 612
    invoke-virtual {v0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setAutoDeviceOff(Z)V

    .line 614
    :cond_10e
    goto :goto_ef

    .line 616
    :cond_10f
    goto :goto_12d

    .line 603
    :pswitch_110  #0x1
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result p1

    if-eqz p1, :cond_121

    .line 604
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setAutoWakeup(Z)V

    .line 606
    :cond_121
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1, v0, p2}, Lcom/android/server/hdmi/HdmiControlService;->setCecOption(IZ)V

    .line 607
    goto :goto_12d

    .line 600
    :pswitch_127  #0x0
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->setControlEnabled(Z)V

    .line 601
    nop

    .line 651
    :cond_12d
    :goto_12d
    return-void

    :sswitch_data_12e
    .sparse-switch
        -0x77ca2448 -> :sswitch_59
        -0x5dc26305 -> :sswitch_4f
        -0x5bf9652c -> :sswitch_45
        -0x58c072d3 -> :sswitch_3b
        -0x4b40ad13 -> :sswitch_31
        -0x34cb9782 -> :sswitch_27
        0x2b4f3cc8 -> :sswitch_1d
        0x610a030f -> :sswitch_13
    .end sparse-switch

    :pswitch_data_150
    .packed-switch 0x0
        :pswitch_127  #00000000
        :pswitch_110  #00000001
        :pswitch_e5  #00000002
        :pswitch_b4  #00000003
        :pswitch_92  #00000004
        :pswitch_8b  #00000005
        :pswitch_7a  #00000006
        :pswitch_6b  #00000007
    .end packed-switch
.end method
