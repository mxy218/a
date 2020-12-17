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
    .param p1, "this$0"  # Lcom/android/server/audio/BtHelper;

    .line 757
    iput-object p1, p0, Lcom/android/server/audio/BtHelper$1;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 6
    .param p1, "profile"  # I
    .param p2, "proxy"  # Landroid/bluetooth/BluetoothProfile;

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In onServiceConnected(), profile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", proxy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.BtHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const/4 v0, 0x1

    if-eq p1, v0, :cond_75

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5c

    const/16 v0, 0xb

    if-eq p1, v0, :cond_46

    const/16 v0, 0x15

    if-eq p1, v0, :cond_2d

    goto :goto_8e

    .line 783
    :cond_2d
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string v2, "BT profile service: connecting HEARING_AID profile"

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 785
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$1;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$000(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postBtHearingAidProfileConnected(Landroid/bluetooth/BluetoothHearingAid;)V

    .line 787
    goto :goto_8e

    .line 771
    :cond_46
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string v2, "BT profile service: connecting A2DP_SINK profile"

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 773
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$1;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$000(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->postBtA2dpSinkProfileConnected(Landroid/bluetooth/BluetoothProfile;)V

    .line 774
    goto :goto_8e

    .line 765
    :cond_5c
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string v2, "BT profile service: connecting A2DP profile"

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 767
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$1;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$000(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postBtA2dpProfileConnected(Landroid/bluetooth/BluetoothA2dp;)V

    .line 768
    goto :goto_8e

    .line 777
    :cond_75
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string v2, "BT profile service: connecting HEADSET profile"

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 779
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$1;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$000(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postBtHeasetProfileConnected(Landroid/bluetooth/BluetoothHeadset;)V

    .line 780
    nop

    .line 791
    :goto_8e
    return-void
.end method

.method public onServiceDisconnected(I)V
    .registers 3
    .param p1, "profile"  # I

    .line 794
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_23

    const/16 v0, 0xb

    if-eq p1, v0, :cond_19

    const/16 v0, 0x15

    if-eq p1, v0, :cond_f

    goto :goto_37

    .line 808
    :cond_f
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$1;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$000(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->postDisconnectHearingAid()V

    .line 809
    goto :goto_37

    .line 800
    :cond_19
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$1;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$000(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->postDisconnectA2dpSink()V

    .line 801
    goto :goto_37

    .line 796
    :cond_23
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$1;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$000(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->postDisconnectA2dp()V

    .line 797
    goto :goto_37

    .line 804
    :cond_2d
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$1;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$000(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->postDisconnectHeadset()V

    .line 805
    nop

    .line 814
    :goto_37
    return-void
.end method
