.class Lcom/android/server/audio/BtHelper$1;
.super Ljava/lang/Object;
.source "BtHelper.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/BtHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/BtHelper;


# direct methods
.method constructor <init>(Lcom/android/server/audio/BtHelper;)V
    .registers 2

    .line 618
    iput-object p1, p0, Lcom/android/server/audio/BtHelper$1;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 5

    .line 620
    const/4 v0, 0x1

    if-eq p1, v0, :cond_55

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3d

    const/16 v0, 0xb

    if-eq p1, v0, :cond_27

    const/16 v0, 0x15

    if-eq p1, v0, :cond_f

    goto :goto_6d

    .line 640
    :cond_f
    sget-object p1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v0, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string v1, "BT profile service: connecting HEARING_AID profile"

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 642
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$1;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->access$000(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object p1

    check-cast p2, Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->postBtHearingAidProfileConnected(Landroid/bluetooth/BluetoothHearingAid;)V

    .line 644
    goto :goto_6d

    .line 628
    :cond_27
    sget-object p1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v0, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string v1, "BT profile service: connecting A2DP_SINK profile"

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 630
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$1;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->access$000(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->postBtA2dpSinkProfileConnected(Landroid/bluetooth/BluetoothProfile;)V

    .line 631
    goto :goto_6d

    .line 622
    :cond_3d
    sget-object p1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v0, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string v1, "BT profile service: connecting A2DP profile"

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 624
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$1;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->access$000(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object p1

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->postBtA2dpProfileConnected(Landroid/bluetooth/BluetoothA2dp;)V

    .line 625
    goto :goto_6d

    .line 634
    :cond_55
    sget-object p1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v0, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string v1, "BT profile service: connecting HEADSET profile"

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 636
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$1;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->access$000(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object p1

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->postBtHeasetProfileConnected(Landroid/bluetooth/BluetoothHeadset;)V

    .line 637
    nop

    .line 648
    :goto_6d
    return-void
.end method

.method public onServiceDisconnected(I)V
    .registers 3

    .line 651
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_23

    const/16 v0, 0xb

    if-eq p1, v0, :cond_19

    const/16 v0, 0x15

    if-eq p1, v0, :cond_f

    goto :goto_37

    .line 665
    :cond_f
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$1;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->access$000(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker;->postDisconnectHearingAid()V

    .line 666
    goto :goto_37

    .line 657
    :cond_19
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$1;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->access$000(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker;->postDisconnectA2dpSink()V

    .line 658
    goto :goto_37

    .line 653
    :cond_23
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$1;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->access$000(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker;->postDisconnectA2dp()V

    .line 654
    goto :goto_37

    .line 661
    :cond_2d
    iget-object p1, p0, Lcom/android/server/audio/BtHelper$1;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->access$000(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker;->postDisconnectHeadset()V

    .line 662
    nop

    .line 671
    :goto_37
    return-void
.end method
