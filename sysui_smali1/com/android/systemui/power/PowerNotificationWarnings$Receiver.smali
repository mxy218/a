.class final Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerNotificationWarnings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerNotificationWarnings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerNotificationWarnings;


# direct methods
.method private constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .registers 2

    .line 711
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;Lcom/android/systemui/power/PowerNotificationWarnings$1;)V
    .registers 3

    .line 711
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    return-void
.end method


# virtual methods
.method public init()V
    .registers 7

    .line 714
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "PNW.batterySettings"

    .line 715
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "PNW.startSaver"

    .line 716
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "PNW.dismissedWarning"

    .line 717
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "PNW.clickedTempWarning"

    .line 718
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "PNW.dismissedTempWarning"

    .line 719
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "PNW.clickedThermalShutdownWarning"

    .line 720
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "PNW.dismissedThermalShutdownWarning"

    .line 721
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "PNW.startSaverConfirmation"

    .line 722
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "PNW.autoSaverSuggestion"

    .line 723
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "PNW.enableAutoSaver"

    .line 724
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "PNW.autoSaverNoThanks"

    .line 725
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "PNW.dismissAutoSaverSuggestion"

    .line 726
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$200(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 728
    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$300(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/os/Handler;

    move-result-object v5

    const-string v4, "android.permission.DEVICE_POWER"

    move-object v1, p0

    .line 727
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 733
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PowerUI.Notification"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "PNW.batterySettings"

    .line 735
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 736
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$400(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    .line 737
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$200(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$500(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Intent;

    move-result-object p0

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_f7

    :cond_3a
    const-string v1, "PNW.startSaver"

    .line 738
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 741
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$600(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    .line 743
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$400(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    goto/16 :goto_f7

    :cond_4e
    const-string v1, "PNW.startSaverConfirmation"

    .line 744
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 745
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$400(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    .line 746
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$700(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/os/Bundle;)V

    goto/16 :goto_f7

    :cond_66
    const-string p2, "PNW.dismissedWarning"

    .line 747
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_75

    .line 748
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryWarning()V

    goto/16 :goto_f7

    :cond_75
    const-string p2, "PNW.clickedTempWarning"

    .line 749
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_89

    .line 750
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$800(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    .line 751
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$900(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    goto/16 :goto_f7

    :cond_89
    const-string p2, "PNW.dismissedTempWarning"

    .line 752
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_97

    .line 753
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$800(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    goto :goto_f7

    :cond_97
    const-string p2, "PNW.clickedThermalShutdownWarning"

    .line 754
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_aa

    .line 755
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-virtual {p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissThermalShutdownWarning()V

    .line 756
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$1000(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    goto :goto_f7

    :cond_aa
    const-string p2, "PNW.dismissedThermalShutdownWarning"

    .line 757
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b8

    .line 758
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissThermalShutdownWarning()V

    goto :goto_f7

    :cond_b8
    const-string p2, "PNW.autoSaverSuggestion"

    .line 759
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c6

    .line 760
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$1100(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    goto :goto_f7

    :cond_c6
    const-string p2, "PNW.dismissAutoSaverSuggestion"

    .line 761
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d4

    .line 762
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$1200(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    goto :goto_f7

    :cond_d4
    const-string p2, "PNW.enableAutoSaver"

    .line 763
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e7

    .line 764
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$1200(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    .line 765
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$1300(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    goto :goto_f7

    :cond_e7
    const-string p2, "PNW.autoSaverNoThanks"

    .line 766
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f7

    .line 767
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$1200(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    .line 768
    invoke-static {p1}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->suppressAutoBatterySaver(Landroid/content/Context;)V

    :cond_f7
    :goto_f7
    return-void
.end method
